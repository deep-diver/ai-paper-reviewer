---
title: "Video Depth Anything: Consistent Depth Estimation for Super-Long Videos"
summary: "Video Depth Anything achieves consistent depth estimation for super-long videos by enhancing Depth Anything V2 with a spatial-temporal head and a novel temporal consistency loss, setting a new state-o..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 ByteDance",]
showSummary: true
date: 2025-01-21
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.12375 {{< /keyword >}}
{{< keyword icon="writer" >}} Sili Chen et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-22 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.12375" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.12375" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.12375/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing monocular depth estimation models struggle with temporal inconsistency when processing videos, limiting their use in applications requiring consistent depth across video frames.  This inconsistency is especially problematic for long videos.  Researchers have tried to solve this using video generation models or optical flow and camera pose data; however, these methods are inefficient or only work on short videos.



This research introduces "Video Depth Anything," which uses Depth Anything V2 as a base and adds a new spatial-temporal head and a temporal consistency loss. This solves the temporal inconsistency problem while maintaining efficiency.  The key-frame-based inference strategy allows processing of very long videos.  Extensive testing demonstrates state-of-the-art performance in both accuracy and consistency, setting a new standard for video depth estimation.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A novel method, Video Depth Anything, achieves high-quality, consistent depth estimation in super-long videos. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method uses a lightweight spatial-temporal head and a novel temporal consistency loss, surpassing existing methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The approach is efficient, enabling real-time performance and scalability to arbitrarily long videos. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because **it addresses a critical limitation of existing monocular depth estimation models: temporal inconsistency in videos.**  This significantly expands the applicability of depth estimation to various fields like robotics and AR/VR, opening **new avenues for research in high-quality, efficient video processing**. The proposed approach's success in handling super-long videos is a notable advancement and could inspire further work in efficient and consistent video analysis.

------
#### Visual Insights



![](https://arxiv.org/html/2501.12375/x2.png)

> 🔼 Figure 1 demonstrates the model's capabilities in two aspects. The left panel showcases the model's ability to generate consistent depth maps for a long video (196 seconds, 4690 frames) depicting pair figure skating.  This highlights the model's performance on complex, real-world actions within extended video sequences. The right panel presents a quantitative comparison against several baseline methods, using three key metrics: accuracy (δ1), consistency (measured as the difference between the maximum Temporal Alignment Error (TAE) across all models and the individual model's TAE), and inference speed (latency) on an Nvidia A100 GPU.  Circle size in the chart represents latency.  The results show that the proposed model outperforms the baselines across all three metrics, indicating superior performance in both accuracy and temporal consistency for long-form video depth estimation.
> <details>
> <summary>read the caption</summary>
> Figure 1: Left: Our model can generate consistent depth predictions for long videos with rich actions. The demo video shows a 196-second (4690 frames) long take of pair skating, as sourced from [14]. Right: Comparison to baselines in terms of accuracy (δ1subscript𝛿1\delta_{1}italic_δ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT), consistency, and latency on the Nvidia A100 GPU (denoted with circle size). Consistency is defined as the maximum Temporal Alignment Error (TAE) among all models minus the TAE of each individual model. Our model achieves the best performance in all aspects.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.6.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.1.1.1.2" rowspan="2"><span class="ltx_text" id="S4.T1.1.1.1.2.1">Method / Metrics</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T1.1.1.1.3">KITTI <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12375v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T1.1.1.1.4">Scannet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12375v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T1.1.1.1.5">Bonn <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12375v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T1.1.1.1.6">NYUv2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12375v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T1.1.1.1.7">Sintel <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12375v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a>]</cite>(<span class="ltx_text" id="S4.T1.1.1.1.7.1" style="position:relative; bottom:2.2pt;">~</span>50 frames)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.8">Scannet (170 frames<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12375v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a>]</cite>)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1" rowspan="2"><span class="ltx_text" id="S4.T1.1.1.1.1.1"><math alttext="\delta_{1}" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.1.m1.1a"><msub id="S4.T1.1.1.1.1.1.m1.1.1" xref="S4.T1.1.1.1.1.1.m1.1.1.cmml"><mi id="S4.T1.1.1.1.1.1.m1.1.1.2" xref="S4.T1.1.1.1.1.1.m1.1.1.2.cmml">δ</mi><mn id="S4.T1.1.1.1.1.1.m1.1.1.3" xref="S4.T1.1.1.1.1.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.1.m1.1b"><apply id="S4.T1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.1.1.1.1.1.m1.1.1.1.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S4.T1.1.1.1.1.1.m1.1.1.2.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1.2">𝛿</ci><cn id="S4.T1.1.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T1.1.1.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.1.m1.1c">\delta_{1}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.1.m1.1d">italic_δ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math> Rank</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.6.6.6.6">AbsRel (↓)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.2.2.2.1">
<math alttext="\delta_{1}" class="ltx_Math" display="inline" id="S4.T1.2.2.2.1.m1.1"><semantics id="S4.T1.2.2.2.1.m1.1a"><msub id="S4.T1.2.2.2.1.m1.1.1" xref="S4.T1.2.2.2.1.m1.1.1.cmml"><mi id="S4.T1.2.2.2.1.m1.1.1.2" xref="S4.T1.2.2.2.1.m1.1.1.2.cmml">δ</mi><mn id="S4.T1.2.2.2.1.m1.1.1.3" xref="S4.T1.2.2.2.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.1.m1.1b"><apply id="S4.T1.2.2.2.1.m1.1.1.cmml" xref="S4.T1.2.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.2.2.2.1.m1.1.1.1.cmml" xref="S4.T1.2.2.2.1.m1.1.1">subscript</csymbol><ci id="S4.T1.2.2.2.1.m1.1.1.2.cmml" xref="S4.T1.2.2.2.1.m1.1.1.2">𝛿</ci><cn id="S4.T1.2.2.2.1.m1.1.1.3.cmml" type="integer" xref="S4.T1.2.2.2.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.1.m1.1c">\delta_{1}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.1.m1.1d">italic_δ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math> (↑)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.6.6.6.7">AbsRel (↓)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.3.3.3.2">
<math alttext="\delta_{1}" class="ltx_Math" display="inline" id="S4.T1.3.3.3.2.m1.1"><semantics id="S4.T1.3.3.3.2.m1.1a"><msub id="S4.T1.3.3.3.2.m1.1.1" xref="S4.T1.3.3.3.2.m1.1.1.cmml"><mi id="S4.T1.3.3.3.2.m1.1.1.2" xref="S4.T1.3.3.3.2.m1.1.1.2.cmml">δ</mi><mn id="S4.T1.3.3.3.2.m1.1.1.3" xref="S4.T1.3.3.3.2.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.2.m1.1b"><apply id="S4.T1.3.3.3.2.m1.1.1.cmml" xref="S4.T1.3.3.3.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.3.3.3.2.m1.1.1.1.cmml" xref="S4.T1.3.3.3.2.m1.1.1">subscript</csymbol><ci id="S4.T1.3.3.3.2.m1.1.1.2.cmml" xref="S4.T1.3.3.3.2.m1.1.1.2">𝛿</ci><cn id="S4.T1.3.3.3.2.m1.1.1.3.cmml" type="integer" xref="S4.T1.3.3.3.2.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.2.m1.1c">\delta_{1}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.2.m1.1d">italic_δ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math>  (↑)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.6.6.6.8">AbsRel (↓)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.4.4.4.3">
<math alttext="\delta_{1}" class="ltx_Math" display="inline" id="S4.T1.4.4.4.3.m1.1"><semantics id="S4.T1.4.4.4.3.m1.1a"><msub id="S4.T1.4.4.4.3.m1.1.1" xref="S4.T1.4.4.4.3.m1.1.1.cmml"><mi id="S4.T1.4.4.4.3.m1.1.1.2" xref="S4.T1.4.4.4.3.m1.1.1.2.cmml">δ</mi><mn id="S4.T1.4.4.4.3.m1.1.1.3" xref="S4.T1.4.4.4.3.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.3.m1.1b"><apply id="S4.T1.4.4.4.3.m1.1.1.cmml" xref="S4.T1.4.4.4.3.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.4.4.4.3.m1.1.1.1.cmml" xref="S4.T1.4.4.4.3.m1.1.1">subscript</csymbol><ci id="S4.T1.4.4.4.3.m1.1.1.2.cmml" xref="S4.T1.4.4.4.3.m1.1.1.2">𝛿</ci><cn id="S4.T1.4.4.4.3.m1.1.1.3.cmml" type="integer" xref="S4.T1.4.4.4.3.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.3.m1.1c">\delta_{1}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.3.m1.1d">italic_δ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math>  (↑)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.6.6.6.9">AbsRel (↓)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.5.5.5.4">
<math alttext="\delta_{1}" class="ltx_Math" display="inline" id="S4.T1.5.5.5.4.m1.1"><semantics id="S4.T1.5.5.5.4.m1.1a"><msub id="S4.T1.5.5.5.4.m1.1.1" xref="S4.T1.5.5.5.4.m1.1.1.cmml"><mi id="S4.T1.5.5.5.4.m1.1.1.2" xref="S4.T1.5.5.5.4.m1.1.1.2.cmml">δ</mi><mn id="S4.T1.5.5.5.4.m1.1.1.3" xref="S4.T1.5.5.5.4.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.4.m1.1b"><apply id="S4.T1.5.5.5.4.m1.1.1.cmml" xref="S4.T1.5.5.5.4.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.5.5.5.4.m1.1.1.1.cmml" xref="S4.T1.5.5.5.4.m1.1.1">subscript</csymbol><ci id="S4.T1.5.5.5.4.m1.1.1.2.cmml" xref="S4.T1.5.5.5.4.m1.1.1.2">𝛿</ci><cn id="S4.T1.5.5.5.4.m1.1.1.3.cmml" type="integer" xref="S4.T1.5.5.5.4.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.4.m1.1c">\delta_{1}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.4.m1.1d">italic_δ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math>  (↑)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.6.6.6.10">AbsRel (↓)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.6.6.6.5">
<math alttext="\delta_{1}" class="ltx_Math" display="inline" id="S4.T1.6.6.6.5.m1.1"><semantics id="S4.T1.6.6.6.5.m1.1a"><msub id="S4.T1.6.6.6.5.m1.1.1" xref="S4.T1.6.6.6.5.m1.1.1.cmml"><mi id="S4.T1.6.6.6.5.m1.1.1.2" xref="S4.T1.6.6.6.5.m1.1.1.2.cmml">δ</mi><mn id="S4.T1.6.6.6.5.m1.1.1.3" xref="S4.T1.6.6.6.5.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.5.m1.1b"><apply id="S4.T1.6.6.6.5.m1.1.1.cmml" xref="S4.T1.6.6.6.5.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.6.6.6.5.m1.1.1.1.cmml" xref="S4.T1.6.6.6.5.m1.1.1">subscript</csymbol><ci id="S4.T1.6.6.6.5.m1.1.1.2.cmml" xref="S4.T1.6.6.6.5.m1.1.1.2">𝛿</ci><cn id="S4.T1.6.6.6.5.m1.1.1.3.cmml" type="integer" xref="S4.T1.6.6.6.5.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.5.m1.1c">\delta_{1}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.5.m1.1d">italic_δ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math>  (↑)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.6.6.6.11">TAE (↓)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.6.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.6.6.7.1.1">DAv2-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12375v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.7.1.2">0.137</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.7.1.3">0.815</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.7.1.4">0.150</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.7.1.5">0.768</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.7.1.6">0.127</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.7.1.7">0.864</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.7.1.8">0.094</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.7.1.9">0.928</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.7.1.10">0.390</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.7.1.11">0.541</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.7.1.12">1.140</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.7.1.13">3.6</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.8.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.6.8.2.1">NVDS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12375v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.8.2.2">0.233</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.8.2.3">0.614</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.8.2.4">0.207</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.8.2.5">0.628</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.8.2.6">0.199</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.8.2.7">0.674</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.8.2.8">0.217</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.8.2.9">0.598</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.8.2.10">0.408</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.8.2.11">0.464</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.8.2.12">2.176</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.8.2.13">6.8</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.9.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.6.9.3.1">NVDS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12375v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite> + DAv2-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12375v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.9.3.2">0.227</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.9.3.3">0.617</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.9.3.4">0.194</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.9.3.5">0.658</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.9.3.6">0.191</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.9.3.7">0.700</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.9.3.8">0.184</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.9.3.9">0.679</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.9.3.10">0.449</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.9.3.11">0.503</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.9.3.12">2.536</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.9.3.13">5.8</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.10.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.6.10.4.1">ChoronDepth <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12375v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.10.4.2">0.243</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.10.4.3">0.576</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.10.4.4">0.199</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.10.4.5">0.665</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.10.4.6">0.199</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.10.4.7">0.665</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.10.4.8">0.173</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.10.4.9">0.771</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.10.4.10"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.10.4.10.1">0.192</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.10.4.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.6.10.4.11.1">0.673</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.10.4.12">1.022</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.10.4.13">5.2</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.11.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.6.11.5.1">DepthCrafter <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12375v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.11.5.2">0.164</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.11.5.3">0.753</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.11.5.4">0.169</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.11.5.5">0.730</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.11.5.6">0.153</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.11.5.7">0.803</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.11.5.8">0.141</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.11.5.9">0.822</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.11.5.10">0.299</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.11.5.11"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.11.5.11.1">0.695</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.11.5.12"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.6.11.5.12.1">0.639</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.11.5.13">3.4</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.12.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.6.12.6.1">DepthAnyVideo <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12375v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.12.6.2">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.12.6.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.12.6.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.12.6.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.12.6.6">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.12.6.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.12.6.8">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.12.6.9">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.12.6.10">0.405</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.12.6.11">0.659</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.12.6.12">0.967</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.12.6.13">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.13.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.6.13.7.1">VDA-S (Ours)</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.13.7.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.6.13.7.2.1">0.086</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.13.7.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.6.13.7.3.1">0.942</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.13.7.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.6.13.7.4.1">0.110</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.13.7.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.6.13.7.5.1">0.876</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.13.7.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.6.13.7.6.1">0.083</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.13.7.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.6.13.7.7.1">0.950</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.13.7.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.6.13.7.8.1">0.077</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.13.7.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.6.13.7.9.1">0.959</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.13.7.10">0.339</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.13.7.11">0.584</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.13.7.12">0.703</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.13.7.13"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.6.13.7.13.1">2.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.14.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.6.6.14.8.1">VDA-L (Ours)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.6.14.8.2"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.14.8.2.1">0.083</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.6.14.8.3"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.14.8.3.1">0.944</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.6.14.8.4"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.14.8.4.1">0.089</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.6.14.8.5"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.14.8.5.1">0.926</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.6.14.8.6"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.14.8.6.1">0.071</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.6.14.8.7"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.14.8.7.1">0.959</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.6.14.8.8"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.14.8.8.1">0.062</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.6.14.8.9"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.14.8.9.1">0.971</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.6.14.8.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.6.14.8.10.1">0.295</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.6.14.8.11">0.644</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.6.14.8.12"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.14.8.12.1">0.570</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.6.14.8.13"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.14.8.13.1">1.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of the proposed Video Depth Anything (VDA) model's performance on five video datasets against several state-of-the-art methods for zero-shot video depth estimation.  The metrics used to evaluate the models are Absolute Relative Error (AbsRel), δ1 (delta-one), and Temporal Alignment Error (TAE).  The table shows both VDA model variants (VDA-S with a smaller ViT backbone and VDA-L with a larger ViT backbone), allowing for a comparison of performance versus model size and computational cost.  The best and second-best results for each metric and dataset are highlighted to clearly show the model's superior performance.  This comparison includes both single-image depth estimation methods and methods specifically designed for videos.
> <details>
> <summary>read the caption</summary>
> Table 1: Zero-shot video depth estimation results. We compare with representative single-image [42] and video depth estimation models [38, 32, 13, 40]. “VDA-S” denotes our model with ViT-Small backbone. “VDA-L” denotes our model with ViT-Large backbone. The best and the second best results are highlighted.
> </details>





### In-depth insights


#### Long Video Depth
The concept of "Long Video Depth" in the context of this research paper addresses the challenge of accurately estimating depth in videos that extend beyond the typical short durations handled by existing models.  The paper highlights the limitations of current methods which struggle with temporal inconsistency, leading to flickering and motion blur.  **The core innovation lies in addressing this temporal inconsistency** by introducing a novel spatial-temporal head and a temporal gradient matching loss, improving depth estimations in long videos.  **The proposed model successfully handles super-long video sequences by employing a key-frame-based inference strategy**, ensuring both computational efficiency and accuracy. The results demonstrate the ability to maintain high-quality, consistent depth predictions even with significantly extended video durations, surpassing existing state-of-the-art models.  **A significant contribution is the ability to handle arbitrary video lengths without sacrificing quality or efficiency**, showcasing substantial improvements for long-form video applications in robotics, augmented reality, and beyond.

#### Temporal Consistency
Temporal consistency in video depth estimation is crucial for realistic applications.  Inconsistent depth maps, resulting in flickering or motion blur, severely hinder the use of depth data in areas like augmented reality or robotics.  The paper tackles this problem directly by focusing on **methods to maintain smooth and consistent depth across video frames.** This involves not only improving the accuracy of individual depth predictions but also ensuring a stable temporal gradient, which prevents abrupt changes in estimated depth over time. The proposed temporal gradient matching loss is particularly innovative, offering a direct and efficient approach to enforcing temporal consistency without relying on additional geometric priors or computationally intensive methods like optical flow warping.  This is a significant advancement, as **reliance on optical flow can introduce further errors**, undermining the overall accuracy.  The key-frame-based inference strategy for super-long videos is another notable contribution, allowing the model to handle extended sequences effectively, paving the way for practical applications involving longer videos, where temporal stability is paramount.

#### STH Architecture
The STH (Spatio-Temporal Head) architecture is a crucial component of the proposed Video Depth Anything model.  It cleverly integrates temporal information processing into the existing Depth Anything V2 architecture, enhancing its capabilities for video depth estimation. **The key innovation is the incorporation of temporal attention layers** within STH, enabling the model to learn robust temporal dependencies among video frames without explicit reliance on optical flow or geometric constraints. This is a significant departure from previous approaches which often suffer from the accumulation of errors or computational inefficiency.  By carefully designing this attention mechanism within the head, rather than as a separate module, the authors aim to preserve the efficiency and generalization ability of the original Depth Anything V2 encoder, while significantly boosting temporal consistency.  **The use of a straightforward yet effective temporal gradient matching loss further refines the depth prediction**, directly constraining temporal depth gradients and avoiding the complications of warping techniques.  This modular design is also significant in that it allows for easy adaptation and scalability to various video lengths.  This is achieved through a key-frame based strategy and novel processing techniques that efficiently handles long videos during inference without sacrificing performance or consistency. Overall, the STH architecture presents a **well-integrated and efficient solution to the longstanding problem of temporal inconsistency in video depth estimation.**

#### Ablation Studies
The ablation study section of the research paper is crucial for understanding the contribution of individual components to the overall performance.  It systematically removes or alters parts of the model (e.g., loss functions, network modules, training strategies) to isolate their impact.  **The results from these experiments provide strong evidence supporting the design choices.** For instance, by comparing different temporal consistency loss functions, the authors demonstrate the superiority of their proposed TGM loss over alternatives like OPW, highlighting its robustness and efficiency.  Similarly, the ablation of various inference strategies reveals the importance of the key-frame-based approach for handling super-long videos.  **These findings not only validate the design choices but also offer insights into the relative importance of different aspects of the model.**  In particular, the impact of choosing a specific loss function is clearly visible, as is the importance of handling very long video sequences. Ultimately, the ablation study strengthens the paper's claims by providing a clear understanding of each component's contribution to the overall success and demonstrates a rigorous approach to model development.

#### Future Directions
Future research should focus on **improving the model's robustness to various challenging conditions**, such as low light, adverse weather, and motion blur.  **Expanding the dataset** with more diverse and higher-quality video data, especially focusing on long videos with rich annotations, will be critical for enhancing the model's generalization capability.  **Addressing computational efficiency** remains a key challenge; exploring more efficient architectures and training strategies is crucial for real-time applications.  Finally, **investigating the integration of Video Depth Anything with other computer vision tasks** like object detection, tracking, and scene understanding could open up new avenues of research and create impactful applications in areas such as autonomous driving, robotics, and augmented reality.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.12375/x3.png)

> 🔼 Figure 2 illustrates the architecture of the Video Depth Anything model. The left panel shows the overall pipeline, highlighting the joint training process on video data with ground truth depth and unlabeled images with pseudo labels generated by a teacher model.  Only the spatio-temporal head is trained, keeping the Depth Anything V2 encoder frozen. The right panel focuses on the details of the spatio-temporal head, showing how it's built upon the DPT head [28] by incorporating multiple temporal attention layers. This design aims to effectively integrate temporal information for consistent depth estimation without significantly altering the existing DPT architecture.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overall pipeline and the spatio-temporal head. Left: Our model is composed of a backbone encoder from Depth Anything V2 and a newly proposed spatio-temporal head. We jointly train our model on video data using ground-truth depth labels for supervision and on unlabeled images with pseudo labels generated by a teacher model. During training, only the head is learned. Right: Our spatiotemporal head inserts several temporal layers into the DPT head, while preserving the original structure of DPT head [28].
> </details>



![](https://arxiv.org/html/2501.12375/extracted/6138791/figures/imgs/performance_comparison.png)

> 🔼 This figure illustrates the inference strategy used for processing long videos.  The model processes the video in segments. Each segment includes future frames, overlapping frames from the previous segment, and keyframes selected from even further back. This approach ensures temporal consistency by using overlapping frames for alignment and keyframes to maintain consistent scale and shift across segments. The specific parameters used are N (total frames in segment) = 32, To (overlapping frames) = 8, Tk (key frames) = 2, and Δk (interval between keyframes) = 12.
> <details>
> <summary>read the caption</summary>
> Figure 3: Inference strategy for long videos. N𝑁Nitalic_N is the video clip lenght consumed by our model. Each inference video clip is built by N−To−Tk𝑁subscript𝑇𝑜subscript𝑇𝑘N-T_{o}-T_{k}italic_N - italic_T start_POSTSUBSCRIPT italic_o end_POSTSUBSCRIPT - italic_T start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT future frames, Tosubscript𝑇𝑜T_{o}italic_T start_POSTSUBSCRIPT italic_o end_POSTSUBSCRIPT overlapping/adjacent frames, and Tksubscript𝑇𝑘T_{k}italic_T start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT key frames. The key frames are selected by taking every ΔksubscriptΔ𝑘\Delta_{k}roman_Δ start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT-th frame going backward. Then, the new depth predictions will be scale-shift-aligned to the previous frames based on the Tksubscript𝑇𝑘T_{k}italic_T start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT overlapping frames. We use N=32,To=8,Tk=2,Δk=12formulae-sequence𝑁32formulae-sequencesubscript𝑇𝑜8formulae-sequencesubscript𝑇𝑘2subscriptΔ𝑘12N=32,T_{o}=8,T_{k}=2,\Delta_{k}=12italic_N = 32 , italic_T start_POSTSUBSCRIPT italic_o end_POSTSUBSCRIPT = 8 , italic_T start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT = 2 , roman_Δ start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT = 12.
> </details>



![](https://arxiv.org/html/2501.12375/x4.png)

> 🔼 This figure displays a comparison of video depth estimation accuracy across varying video lengths.  The accuracy (δ₁) of three different models—the authors' Video Depth Anything (VDA-L), DepthCrafter [13], and DepthAnyVideo [40]—is assessed using the metrics AbsRel and δ₁ for video lengths ranging from 110 to 500 frames. The comparison is made across three distinct datasets: Bonn [24], Scannet [7], and NYUv2 [22], to demonstrate the performance of the proposed model (VDA-L) in handling long videos.
> <details>
> <summary>read the caption</summary>
> Figure 4: Video depth estimation accuracy for different frame length. We compare our model (VDA-L) with DepthCrafter [13] and DepthAnyVideo [40] from 110 to 500 frames on Bonn [24], Scannet [7], and NYUv2 [22].
> </details>



![](https://arxiv.org/html/2501.12375/x5.png)

> 🔼 Figure 5 presents a qualitative comparison of real-world long-video depth estimation results.  Three models are compared: the authors' proposed Video Depth Anything model, DepthCrafter [13], and Depth Anything v2 [42]. The comparison uses 500-frame video sequences from the Scannet [7] and Bonn [24] datasets.  The figure visually demonstrates the performance differences between the models in terms of depth accuracy and temporal consistency.  It highlights instances where the authors' model produces superior depth estimates, particularly in scenarios with complex lighting or object movement, indicating better handling of challenging real-world conditions.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative comparison for real-world long video depth estimation. We compare our model with DAv2-L [42] and DepthCrafter [13] on 500-frame videos from Scannet [7] and Bonn [24].
> </details>



![](https://arxiv.org/html/2501.12375/x6.png)

> 🔼 This figure shows a qualitative comparison of depth estimation results for short, in-the-wild videos.  Four different methods are compared: Depth-Anything-V2, DepthCrafter, DepthAnyVideo, and the proposed method. The methods are evaluated on videos from the DAVIS dataset, all under 100 frames. Red boxes highlight examples where the depth estimations are incorrect, while blue boxes point to inconsistencies in the depth maps over time.  This visualization demonstrates the relative strengths and weaknesses of each method in terms of accuracy and temporal consistency for short, real-world video sequences.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative comparison for in-the-wild short video depth estimation. We compare with Depth-Anything-V2 [42], DepthCrafter [13] and DepthAnyVideo [40] on videos with less than 100 frames from DAVIS [26]. Red boxes show incorrect depth estimation while blue boxes show inconsistent depth estimation.
> </details>



![](https://arxiv.org/html/2501.12375/x7.png)

> 🔼 This figure compares two different inference strategies for processing super-long videos (videos with over 7000 frames): overlap alignment (OA) and overlap interpolation with key-frame referencing (OI+KR).  OA simply concatenates results from sequentially processed video segments. OI+KR, the authors' proposed method, uses overlapping segments and keyframes to maintain temporal consistency and avoid accumulating errors over very long videos.  The figure visually demonstrates how OI+KR produces significantly smoother and more accurate depth estimations compared to OA, especially over extended durations.
> <details>
> <summary>read the caption</summary>
> Figure 7: Qualitative comparisons of different inference strategies. We compare overlap alignment (OA) with our proposed overlap interpolation and key-frame referencing (OI + KR) on a self-captured video with 7320 frames.
> </details>



![](https://arxiv.org/html/2501.12375/x8.png)

> 🔼 Figure 8 presents a qualitative comparison of static image depth estimation results from four different models: the proposed Video Depth Anything model, Depth-Anything-V2, DepthCrafter, and Depth Any Video.  The figure visually demonstrates the depth maps generated by each model for several example images. This allows for a direct comparison of the accuracy and detail present in each model's depth prediction. The results showcase that the proposed model achieves comparable performance to Depth-Anything-V2 in terms of visualization quality, suggesting a successful transfer of the strong image depth estimation capabilities of Depth-Anything-V2 to the video domain.
> <details>
> <summary>read the caption</summary>
> Figure 8: Qualitative comparison for static image depth estimation. We compare our model with Depth-Anything-V2 [42], DepthCrafter [13], and Depth Any Video [40] on static image depth estimation. Our model demonstrates visualization results comparable to those of Depth-Anything-V2 [42].
> </details>



![](https://arxiv.org/html/2501.12375/x9.png)

> 🔼 Figure 9 presents a qualitative comparison of real-world long-video depth estimation results.  It compares the model's performance against Depth-Anything-V2 and DepthCrafter on videos containing 500 frames from the Scannet and Bonn datasets.  The figure visually demonstrates the temporal consistency (or inconsistency) of the depth estimation across the video sequence by highlighting changes in color and depth over time along vertical red lines.  White boxes highlight areas where depth estimation is inconsistent, whereas blue boxes highlight areas where the proposed method shows higher accuracy than the baselines. This allows for a visual assessment of temporal consistency and accuracy comparison.
> <details>
> <summary>read the caption</summary>
> Figure 9: Qualitative comparison for real-world long video depth estimation. We compare with Depth-Anything-V2 [42] and DepthCrafter [13] on 500-frames videos from Scannet [7] and Bonn [24] . We show changes in color and depth over time at the vertical red line in videos. White boxes show inconsistent estimation. Blue boxes show our algorithm has higher accuracy.
> </details>



![](https://arxiv.org/html/2501.12375/x10.png)

> 🔼 This figure illustrates a temporal layer within the spatiotemporal head of the Video Depth Anything model.  The input features undergo a transformation to prepare them for the temporal attention mechanism. The temporal attention operates along the temporal dimension (number of frames), allowing the model to effectively capture and utilize the temporal relationships between frames within the input video sequence. The output features then return to the original shape for further processing. This layer is crucial for maintaining temporal consistency in the final depth prediction.
> <details>
> <summary>read the caption</summary>
> Figure 10: Temporal layer. The feature shape is adjusted for temporal attention.
> </details>



![](https://arxiv.org/html/2501.12375/x11.png)

> 🔼 This figure demonstrates the application of the Video Depth Anything model to generate a 3D video from a standard 2D video.  The input video is sourced from the DAVIS dataset [26]. The model processes the 2D video frames, estimating depth information for each frame. This depth information is then used to reconstruct a 3D representation of the scene, effectively converting the original 2D video into a 3D video. This showcases the model's ability to not only estimate depth accurately but also to utilize that depth information for higher-level tasks such as 3D video generation.
> <details>
> <summary>read the caption</summary>
> Figure 11: 3D Video Conversion. A video from the DAVIS dataset [26] is transformed into a 3D video using our model.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.6.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.2" rowspan="2"><span class="ltx_text" id="S4.T2.1.1.1.2.1">Method / Metrics</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T2.1.1.1.3">KITTI</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T2.1.1.1.4">Sintel</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T2.1.1.1.5">NYUv2</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T2.1.1.1.6">ETH3D</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T2.1.1.1.7">DIODE</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1" rowspan="2"><span class="ltx_text" id="S4.T2.1.1.1.1.1"><math alttext="\delta_{1}" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.1.m1.1a"><msub id="S4.T2.1.1.1.1.1.m1.1.1" xref="S4.T2.1.1.1.1.1.m1.1.1.cmml"><mi id="S4.T2.1.1.1.1.1.m1.1.1.2" xref="S4.T2.1.1.1.1.1.m1.1.1.2.cmml">δ</mi><mn id="S4.T2.1.1.1.1.1.m1.1.1.3" xref="S4.T2.1.1.1.1.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.1.m1.1b"><apply id="S4.T2.1.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.1.1.1.1.1.m1.1.1.1.cmml" xref="S4.T2.1.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S4.T2.1.1.1.1.1.m1.1.1.2.cmml" xref="S4.T2.1.1.1.1.1.m1.1.1.2">𝛿</ci><cn id="S4.T2.1.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T2.1.1.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.1.m1.1c">\delta_{1}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.1.m1.1d">italic_δ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math> Rank</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.6.6.6.6">AbsRel (↓)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.2.2.2.1">
<math alttext="\delta_{1}" class="ltx_Math" display="inline" id="S4.T2.2.2.2.1.m1.1"><semantics id="S4.T2.2.2.2.1.m1.1a"><msub id="S4.T2.2.2.2.1.m1.1.1" xref="S4.T2.2.2.2.1.m1.1.1.cmml"><mi id="S4.T2.2.2.2.1.m1.1.1.2" xref="S4.T2.2.2.2.1.m1.1.1.2.cmml">δ</mi><mn id="S4.T2.2.2.2.1.m1.1.1.3" xref="S4.T2.2.2.2.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.1.m1.1b"><apply id="S4.T2.2.2.2.1.m1.1.1.cmml" xref="S4.T2.2.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.2.2.2.1.m1.1.1.1.cmml" xref="S4.T2.2.2.2.1.m1.1.1">subscript</csymbol><ci id="S4.T2.2.2.2.1.m1.1.1.2.cmml" xref="S4.T2.2.2.2.1.m1.1.1.2">𝛿</ci><cn id="S4.T2.2.2.2.1.m1.1.1.3.cmml" type="integer" xref="S4.T2.2.2.2.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.1.m1.1c">\delta_{1}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.1.m1.1d">italic_δ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math>  (↑)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.6.6.6.7">AbsRel (↓)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.3.3.2">
<math alttext="\delta_{1}" class="ltx_Math" display="inline" id="S4.T2.3.3.3.2.m1.1"><semantics id="S4.T2.3.3.3.2.m1.1a"><msub id="S4.T2.3.3.3.2.m1.1.1" xref="S4.T2.3.3.3.2.m1.1.1.cmml"><mi id="S4.T2.3.3.3.2.m1.1.1.2" xref="S4.T2.3.3.3.2.m1.1.1.2.cmml">δ</mi><mn id="S4.T2.3.3.3.2.m1.1.1.3" xref="S4.T2.3.3.3.2.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.2.m1.1b"><apply id="S4.T2.3.3.3.2.m1.1.1.cmml" xref="S4.T2.3.3.3.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.3.3.3.2.m1.1.1.1.cmml" xref="S4.T2.3.3.3.2.m1.1.1">subscript</csymbol><ci id="S4.T2.3.3.3.2.m1.1.1.2.cmml" xref="S4.T2.3.3.3.2.m1.1.1.2">𝛿</ci><cn id="S4.T2.3.3.3.2.m1.1.1.3.cmml" type="integer" xref="S4.T2.3.3.3.2.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.2.m1.1c">\delta_{1}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.2.m1.1d">italic_δ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math>  (↑)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.6.6.6.8">AbsRel (↓)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.4.4.4.3">
<math alttext="\delta_{1}" class="ltx_Math" display="inline" id="S4.T2.4.4.4.3.m1.1"><semantics id="S4.T2.4.4.4.3.m1.1a"><msub id="S4.T2.4.4.4.3.m1.1.1" xref="S4.T2.4.4.4.3.m1.1.1.cmml"><mi id="S4.T2.4.4.4.3.m1.1.1.2" xref="S4.T2.4.4.4.3.m1.1.1.2.cmml">δ</mi><mn id="S4.T2.4.4.4.3.m1.1.1.3" xref="S4.T2.4.4.4.3.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.3.m1.1b"><apply id="S4.T2.4.4.4.3.m1.1.1.cmml" xref="S4.T2.4.4.4.3.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.4.4.4.3.m1.1.1.1.cmml" xref="S4.T2.4.4.4.3.m1.1.1">subscript</csymbol><ci id="S4.T2.4.4.4.3.m1.1.1.2.cmml" xref="S4.T2.4.4.4.3.m1.1.1.2">𝛿</ci><cn id="S4.T2.4.4.4.3.m1.1.1.3.cmml" type="integer" xref="S4.T2.4.4.4.3.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.3.m1.1c">\delta_{1}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.3.m1.1d">italic_δ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math>  (↑)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.6.6.6.9">AbsRel (↓)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.5.5.5.4">
<math alttext="\delta_{1}" class="ltx_Math" display="inline" id="S4.T2.5.5.5.4.m1.1"><semantics id="S4.T2.5.5.5.4.m1.1a"><msub id="S4.T2.5.5.5.4.m1.1.1" xref="S4.T2.5.5.5.4.m1.1.1.cmml"><mi id="S4.T2.5.5.5.4.m1.1.1.2" xref="S4.T2.5.5.5.4.m1.1.1.2.cmml">δ</mi><mn id="S4.T2.5.5.5.4.m1.1.1.3" xref="S4.T2.5.5.5.4.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.4.m1.1b"><apply id="S4.T2.5.5.5.4.m1.1.1.cmml" xref="S4.T2.5.5.5.4.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.5.5.5.4.m1.1.1.1.cmml" xref="S4.T2.5.5.5.4.m1.1.1">subscript</csymbol><ci id="S4.T2.5.5.5.4.m1.1.1.2.cmml" xref="S4.T2.5.5.5.4.m1.1.1.2">𝛿</ci><cn id="S4.T2.5.5.5.4.m1.1.1.3.cmml" type="integer" xref="S4.T2.5.5.5.4.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.4.m1.1c">\delta_{1}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.4.m1.1d">italic_δ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math>  (↑)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.6.6.6.10">AbsRel (↓)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.6.6.6.5">
<math alttext="\delta_{1}" class="ltx_Math" display="inline" id="S4.T2.6.6.6.5.m1.1"><semantics id="S4.T2.6.6.6.5.m1.1a"><msub id="S4.T2.6.6.6.5.m1.1.1" xref="S4.T2.6.6.6.5.m1.1.1.cmml"><mi id="S4.T2.6.6.6.5.m1.1.1.2" xref="S4.T2.6.6.6.5.m1.1.1.2.cmml">δ</mi><mn id="S4.T2.6.6.6.5.m1.1.1.3" xref="S4.T2.6.6.6.5.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.5.m1.1b"><apply id="S4.T2.6.6.6.5.m1.1.1.cmml" xref="S4.T2.6.6.6.5.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.6.6.6.5.m1.1.1.1.cmml" xref="S4.T2.6.6.6.5.m1.1.1">subscript</csymbol><ci id="S4.T2.6.6.6.5.m1.1.1.2.cmml" xref="S4.T2.6.6.6.5.m1.1.1.2">𝛿</ci><cn id="S4.T2.6.6.6.5.m1.1.1.3.cmml" type="integer" xref="S4.T2.6.6.6.5.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.5.m1.1c">\delta_{1}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.5.m1.1d">italic_δ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math>  (↑)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.6.6.7.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.6.6.7.1.1">DepthCrafter <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12375v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.7.1.2">0.107</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.7.1.3">0.891</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.7.1.4">0.568</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.7.1.5">0.652</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.7.1.6">0.082</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.7.1.7">0.936</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.7.1.8">0.179</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.7.1.9">0.793</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.7.1.10">0.141</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.7.1.11">0.857</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.7.1.12">4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.8.2">
<td class="ltx_td ltx_align_left" id="S4.T2.6.6.8.2.1">DepthAnyVideo <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12375v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.2.2"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.8.2.2.1">0.073</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.2.3"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.8.2.3.1">0.946</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.2.4">0.687</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.2.5">0.692</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.2.6">0.058</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.2.7">0.963</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.2.8"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.8.2.8.1">0.123</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.2.9"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.8.2.9.1">0.881</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.2.10">0.072</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.2.11">0.942</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.2.12">2.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.9.3">
<td class="ltx_td ltx_align_left" id="S4.T2.6.6.9.3.1">DAv2-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12375v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.3.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.6.6.9.3.2.1">0.074</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.3.3"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.9.3.3.1">0.946</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.3.4"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.9.3.4.1">0.487</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.3.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.6.6.9.3.5.1">0.752</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.3.6"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.9.3.6.1">0.045</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.3.7"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.9.3.7.1">0.979</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.3.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.6.6.9.3.8.1">0.131</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.3.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.6.6.9.3.9.1">0.865</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.3.10"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.9.3.10.1">0.066</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.3.11"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.9.3.11.1">0.952</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.3.12"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.9.3.12.1">1.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.10.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.6.6.10.4.1">VDA-L (Ours)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.10.4.2">0.075</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.10.4.3"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.10.4.3.1">0.946</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.10.4.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.6.6.10.4.4.1">0.496</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.10.4.5"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.10.4.5.1">0.754</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.10.4.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.6.6.10.4.6.1">0.046</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.10.4.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.6.6.10.4.7.1">0.978</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.10.4.8">0.132</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.10.4.9">0.863</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.10.4.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.6.6.10.4.10.1">0.067</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.10.4.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.6.6.10.4.11.1">0.950</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.10.4.12"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.6.6.10.4.12.1">2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of zero-shot single-image depth estimation methods.  Several models, including DepthCrafter [13], DepthAny Video [40], and Depth Anything V2 [42], are evaluated alongside the authors' model (VDA-L, using a ViT-Large backbone) on the task of estimating depth from a single input image.  The evaluation metrics assess the accuracy of the depth maps generated by each method. The best and second-best performing models for each metric are highlighted.
> <details>
> <summary>read the caption</summary>
> Table 2: Zero-shot single-image depth estimation results. We compare with representative single-image [42] and video depth estimation models [13, 40] with single-frame inputs. “VDA-L” denotes our model with ViT-Large backbone. The best and the second best results are highlighted.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.4.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T3.4.1.1.1">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.4.1.1.2">Precision</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.4.1.1.3">Latency (ms)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.4.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.4.2.1.1">ChronoDepth</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.2.1.2">FP16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.2.1.3">506</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.3.2">
<td class="ltx_td ltx_align_left" id="S4.T3.4.3.2.1">DepthCrafter</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.3.2.2">FP16</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.3.2.3">910</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.3">
<td class="ltx_td ltx_align_left" id="S4.T3.4.4.3.1">DepthAnyVideo</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.3.2">FP16</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.3.3">159</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.5.4">
<td class="ltx_td ltx_align_left" id="S4.T3.4.5.4.1">NVDS</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.5.4.2">FP32</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.5.4.3">204</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.6.5">
<td class="ltx_td ltx_align_left" id="S4.T3.4.6.5.1">DAv2-L</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.6.5.2">FP32</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.6.5.3">60</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.7.6">
<td class="ltx_td ltx_align_left" id="S4.T3.4.7.6.1">VDA-L (Ours)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.7.6.2">FP32</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.7.6.3">67</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.8.7">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.4.8.7.1">VDA-S (Ours)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.8.7.2">FP32</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.8.7.3"><span class="ltx_text ltx_font_bold" id="S4.T3.4.8.7.3.1">9.1</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the inference time (in milliseconds) for different video depth estimation methods.  The measurements were conducted on a single NVIDIA A100 GPU, processing frames with a resolution of 518x518 pixels. The table compares various models and shows their efficiency in processing a single video frame.
> <details>
> <summary>read the caption</summary>
> Table 3: Inference latency comparisons for video depth estimation. We measure average runtime for each frame on a single A100 GPU with a resolution of 518×518518518518\times 518518 × 518.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.1.1.1.2">Loss</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.3">AbsRel (↓)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.1">
<math alttext="\delta_{1}" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.m1.1a"><msub id="S4.T4.1.1.1.1.m1.1.1" xref="S4.T4.1.1.1.1.m1.1.1.cmml"><mi id="S4.T4.1.1.1.1.m1.1.1.2" xref="S4.T4.1.1.1.1.m1.1.1.2.cmml">δ</mi><mn id="S4.T4.1.1.1.1.m1.1.1.3" xref="S4.T4.1.1.1.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><apply id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.1.1.1.1.m1.1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S4.T4.1.1.1.1.m1.1.1.2.cmml" xref="S4.T4.1.1.1.1.m1.1.1.2">𝛿</ci><cn id="S4.T4.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T4.1.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">\delta_{1}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">italic_δ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math>  (↑)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.4">TAE (↓)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.1.1.2.1.1">VideoAlign</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.1.2"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.2.1.2.1">0.151</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.1.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.1.2.1.3.1">0.846</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.1.4">1.326</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.3.2.1">VideoAlign+SSI</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2.2"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.3.2.2.1">0.151</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2.3"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.3.2.3.1">0.848</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2.4">1.207</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.4.3.1">OPW <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12375v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite>+SSI</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.3.2">0.182</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.3.3">0.771</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.3.4">0.918</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.5.4.1">SE+SSI</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4.2">0.160</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4.3">0.836</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4.4"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.5.4.4.1">0.753</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T4.1.1.6.5.1">TGM+SSI (Ours)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.6.5.2">0.166</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.6.5.3">0.832</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.6.5.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.1.6.5.4.1">0.767</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study comparing different temporal consistency loss functions for video depth estimation.  The goal is to determine which loss function best maintains temporal consistency in video depth predictions.  Several methods are compared, including a baseline (VideoAlign) that uses a simple spatial loss with scale-shift alignment across the entire video, an optical flow-based method (OPW), a stable error loss (SE), and the proposed temporal gradient matching loss (TGM).  Each method is combined with a scale-shift invariant spatial loss (SSI).  The results show the impact of each loss on the absolute relative error (AbsRel), the δ1 metric (a measure of accuracy), and the temporal alignment error (TAE, a measure of consistency).
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation studies on the effectiveness of the temporal losses. “VideoAlign” denotes the spatial loss with a shared scale-shift alignment applied to the entire video. “SSI” is the image-level spatial loss used in [42]. “OPW” refers to the optical flow-based warping loss described in [38]. “SE” refers to the stable error as introduced in Equation 2. “TGM” represents our proposed temporal gradient matching loss.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T5.1.1.2">Strategy</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T5.1.1.3">Window</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.4">AbsRel (↓)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1">
<math alttext="\delta_{1}" class="ltx_Math" display="inline" id="S4.T5.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.m1.1a"><msub id="S4.T5.1.1.1.m1.1.1" xref="S4.T5.1.1.1.m1.1.1.cmml"><mi id="S4.T5.1.1.1.m1.1.1.2" xref="S4.T5.1.1.1.m1.1.1.2.cmml">δ</mi><mn id="S4.T5.1.1.1.m1.1.1.3" xref="S4.T5.1.1.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.m1.1b"><apply id="S4.T5.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T5.1.1.1.m1.1.1.1.cmml" xref="S4.T5.1.1.1.m1.1.1">subscript</csymbol><ci id="S4.T5.1.1.1.m1.1.1.2.cmml" xref="S4.T5.1.1.1.m1.1.1.2">𝛿</ci><cn id="S4.T5.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T5.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.m1.1c">\delta_{1}</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.m1.1d">italic_δ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math>  (↑)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.5">TAE (↓)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.1.2.1.1">Baseline</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T5.1.2.1.2">16</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.2.1.3">0.157</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.2.1.4">0.826</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.2.1.5">0.874</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.3.2.1">OA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T5.1.3.2.2">16</th>
<td class="ltx_td ltx_align_center" id="S4.T5.1.3.2.3">0.146</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.3.2.4">0.845</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.3.2.5">0.792</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.4.3.1">OI</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T5.1.4.3.2">16</th>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.3.3">0.157</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.3.4">0.826</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.3.5">0.783</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.5.4.1">OI+KR(Ours)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T5.1.5.4.2">16</th>
<td class="ltx_td ltx_align_center" id="S4.T5.1.5.4.3">0.145</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.5.4.4">0.849</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.5.4.5">0.761</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.6.5.1">OI+KR(Ours)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T5.1.6.5.2">32</th>
<td class="ltx_td ltx_align_center" id="S4.T5.1.6.5.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.1.6.5.3.1">0.144</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.6.5.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.1.6.5.4.1">0.851</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.6.5.5"><span class="ltx_text ltx_font_bold" id="S4.T5.1.6.5.5.1">0.718</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T5.1.7.6.1">OI+KR(Ours)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T5.1.7.6.2">48</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.7.6.3"><span class="ltx_text ltx_font_bold" id="S4.T5.1.7.6.3.1">0.143</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.7.6.4"><span class="ltx_text ltx_font_bold" id="S4.T5.1.7.6.4.1">0.852</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.7.6.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.1.7.6.5.1">0.732</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study comparing different inference strategies for processing super-long videos in the context of video depth estimation.  The strategies are compared in terms of their impact on depth estimation accuracy (AbsRel and δ1) and temporal consistency (TAE). The strategies investigated include a baseline with no overlap, an approach using overlap and scale-shift alignment, a method involving overlap and depth clip stitching, and a combination of stitching with key-frame referencing. The impact of varying the window size is also explored.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation studies on the effectiveness of different inference strategies and window sizes. “Baseline” denotes directly inference for video clips without overlapping. “OA” denotes inference with a overlap of 4 frames and perform scale-shift alignment across windows. “OI” denotes depth clip stitching with a overlap of 4 frames. “OI+KR” combines the “OI” with our proposed key-frame referencing with extra 2 key-frames.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T6.2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T6.2.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T6.2.2.3.1.1" rowspan="2"><span class="ltx_text" id="S4.T6.2.2.3.1.1.1">Datasets</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T6.2.2.3.1.2">Image-datasets</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T6.2.2.3.1.3">Video-datasets</th>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T6.2.2.2.3">AbsRel (↓)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T6.1.1.1.1">
<math alttext="\delta_{1}" class="ltx_Math" display="inline" id="S4.T6.1.1.1.1.m1.1"><semantics id="S4.T6.1.1.1.1.m1.1a"><msub id="S4.T6.1.1.1.1.m1.1.1" xref="S4.T6.1.1.1.1.m1.1.1.cmml"><mi id="S4.T6.1.1.1.1.m1.1.1.2" xref="S4.T6.1.1.1.1.m1.1.1.2.cmml">δ</mi><mn id="S4.T6.1.1.1.1.m1.1.1.3" xref="S4.T6.1.1.1.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T6.1.1.1.1.m1.1b"><apply id="S4.T6.1.1.1.1.m1.1.1.cmml" xref="S4.T6.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T6.1.1.1.1.m1.1.1.1.cmml" xref="S4.T6.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S4.T6.1.1.1.1.m1.1.1.2.cmml" xref="S4.T6.1.1.1.1.m1.1.1.2">𝛿</ci><cn id="S4.T6.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T6.1.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.1.1.1.1.m1.1c">\delta_{1}</annotation><annotation encoding="application/x-llamapun" id="S4.T6.1.1.1.1.m1.1d">italic_δ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math> (↑)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T6.2.2.2.4">AbsRel (↓)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T6.2.2.2.2">
<math alttext="\delta_{1}" class="ltx_Math" display="inline" id="S4.T6.2.2.2.2.m1.1"><semantics id="S4.T6.2.2.2.2.m1.1a"><msub id="S4.T6.2.2.2.2.m1.1.1" xref="S4.T6.2.2.2.2.m1.1.1.cmml"><mi id="S4.T6.2.2.2.2.m1.1.1.2" xref="S4.T6.2.2.2.2.m1.1.1.2.cmml">δ</mi><mn id="S4.T6.2.2.2.2.m1.1.1.3" xref="S4.T6.2.2.2.2.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T6.2.2.2.2.m1.1b"><apply id="S4.T6.2.2.2.2.m1.1.1.cmml" xref="S4.T6.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T6.2.2.2.2.m1.1.1.1.cmml" xref="S4.T6.2.2.2.2.m1.1.1">subscript</csymbol><ci id="S4.T6.2.2.2.2.m1.1.1.2.cmml" xref="S4.T6.2.2.2.2.m1.1.1.2">𝛿</ci><cn id="S4.T6.2.2.2.2.m1.1.1.3.cmml" type="integer" xref="S4.T6.2.2.2.2.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.2.2.2.2.m1.1c">\delta_{1}</annotation><annotation encoding="application/x-llamapun" id="S4.T6.2.2.2.2.m1.1d">italic_δ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math> (↑)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T6.2.2.2.5">TAE (↓)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T6.2.2.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T6.2.2.4.1.1">Video</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.4.1.2">0.180</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.4.1.3">0.876</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.4.1.4">0.145</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.4.1.5">0.849</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.4.1.6">0.761</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T6.2.2.5.2.1">Video + Image</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.2.5.2.2"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.5.2.2.1">0.167</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.2.5.2.3"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.5.2.3.1">0.883</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.2.5.2.4"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.5.2.4.1">0.142</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.2.5.2.5"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.5.2.5.1">0.852</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.2.5.2.6"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.5.2.6.1">0.742</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of incorporating image data distillation into the training process of a video depth estimation model.  The study compares the model's performance when trained exclusively on video data versus when trained on a combination of video and image data using image-level distillation, as described in the referenced work [42]. The results are likely presented using metrics that assess the accuracy and consistency of the model's depth estimations.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation studies on the effectiveness of the image dataset distillation. “Video” denotes training using only video datasets. “Video + Image” merges video and image datasets for training using image-level distillation [42].
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S2.T7.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S2.T7.3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S2.T7.3.3.4.1.1" rowspan="2"><span class="ltx_text" id="S2.T7.3.3.4.1.1.1" style="font-size:144%;">Method / Metrics</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S2.T7.3.3.4.1.2" rowspan="2"><span class="ltx_text" id="S2.T7.3.3.4.1.2.1" style="font-size:144%;">Params(M)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S2.T7.3.3.4.1.3" rowspan="2"><span class="ltx_text" id="S2.T7.3.3.4.1.3.1" style="font-size:144%;"># Video Training Data(M)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S2.T7.3.3.4.1.4">
<span class="ltx_text" id="S2.T7.3.3.4.1.4.1" style="font-size:144%;">KITTI(110) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S2.T7.3.3.4.1.4.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12375v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a><span class="ltx_text" id="S2.T7.3.3.4.1.4.3.2" style="font-size:144%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S2.T7.3.3.4.1.5">
<span class="ltx_text" id="S2.T7.3.3.4.1.5.1" style="font-size:144%;">Bonn(110) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S2.T7.3.3.4.1.5.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12375v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a><span class="ltx_text" id="S2.T7.3.3.4.1.5.3.2" style="font-size:144%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S2.T7.3.3.4.1.6">
<span class="ltx_text" id="S2.T7.3.3.4.1.6.1" style="font-size:144%;">Scannet(90) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S2.T7.3.3.4.1.6.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12375v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a><span class="ltx_text" id="S2.T7.3.3.4.1.6.3.2" style="font-size:144%;">]</span></cite>
</th>
</tr>
<tr class="ltx_tr" id="S2.T7.3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S2.T7.3.3.3.4"><span class="ltx_text" id="S2.T7.3.3.3.4.1" style="font-size:144%;">AbsRel (↓)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S2.T7.1.1.1.1">
<math alttext="\delta_{1}" class="ltx_Math" display="inline" id="S2.T7.1.1.1.1.m1.1"><semantics id="S2.T7.1.1.1.1.m1.1a"><msub id="S2.T7.1.1.1.1.m1.1.1" xref="S2.T7.1.1.1.1.m1.1.1.cmml"><mi id="S2.T7.1.1.1.1.m1.1.1.2" mathsize="144%" xref="S2.T7.1.1.1.1.m1.1.1.2.cmml">δ</mi><mn id="S2.T7.1.1.1.1.m1.1.1.3" mathsize="144%" xref="S2.T7.1.1.1.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S2.T7.1.1.1.1.m1.1b"><apply id="S2.T7.1.1.1.1.m1.1.1.cmml" xref="S2.T7.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T7.1.1.1.1.m1.1.1.1.cmml" xref="S2.T7.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S2.T7.1.1.1.1.m1.1.1.2.cmml" xref="S2.T7.1.1.1.1.m1.1.1.2">𝛿</ci><cn id="S2.T7.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S2.T7.1.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T7.1.1.1.1.m1.1c">\delta_{1}</annotation><annotation encoding="application/x-llamapun" id="S2.T7.1.1.1.1.m1.1d">italic_δ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S2.T7.1.1.1.1.1" style="font-size:144%;"> (↑)</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S2.T7.3.3.3.5"><span class="ltx_text" id="S2.T7.3.3.3.5.1" style="font-size:144%;">AbsRel (↓)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S2.T7.2.2.2.2">
<math alttext="\delta_{1}" class="ltx_Math" display="inline" id="S2.T7.2.2.2.2.m1.1"><semantics id="S2.T7.2.2.2.2.m1.1a"><msub id="S2.T7.2.2.2.2.m1.1.1" xref="S2.T7.2.2.2.2.m1.1.1.cmml"><mi id="S2.T7.2.2.2.2.m1.1.1.2" mathsize="144%" xref="S2.T7.2.2.2.2.m1.1.1.2.cmml">δ</mi><mn id="S2.T7.2.2.2.2.m1.1.1.3" mathsize="144%" xref="S2.T7.2.2.2.2.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S2.T7.2.2.2.2.m1.1b"><apply id="S2.T7.2.2.2.2.m1.1.1.cmml" xref="S2.T7.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S2.T7.2.2.2.2.m1.1.1.1.cmml" xref="S2.T7.2.2.2.2.m1.1.1">subscript</csymbol><ci id="S2.T7.2.2.2.2.m1.1.1.2.cmml" xref="S2.T7.2.2.2.2.m1.1.1.2">𝛿</ci><cn id="S2.T7.2.2.2.2.m1.1.1.3.cmml" type="integer" xref="S2.T7.2.2.2.2.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T7.2.2.2.2.m1.1c">\delta_{1}</annotation><annotation encoding="application/x-llamapun" id="S2.T7.2.2.2.2.m1.1d">italic_δ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S2.T7.2.2.2.2.1" style="font-size:144%;">  (↑)</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S2.T7.3.3.3.6"><span class="ltx_text" id="S2.T7.3.3.3.6.1" style="font-size:144%;">AbsRel (↓)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S2.T7.3.3.3.3">
<math alttext="\delta_{1}" class="ltx_Math" display="inline" id="S2.T7.3.3.3.3.m1.1"><semantics id="S2.T7.3.3.3.3.m1.1a"><msub id="S2.T7.3.3.3.3.m1.1.1" xref="S2.T7.3.3.3.3.m1.1.1.cmml"><mi id="S2.T7.3.3.3.3.m1.1.1.2" mathsize="144%" xref="S2.T7.3.3.3.3.m1.1.1.2.cmml">δ</mi><mn id="S2.T7.3.3.3.3.m1.1.1.3" mathsize="144%" xref="S2.T7.3.3.3.3.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S2.T7.3.3.3.3.m1.1b"><apply id="S2.T7.3.3.3.3.m1.1.1.cmml" xref="S2.T7.3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S2.T7.3.3.3.3.m1.1.1.1.cmml" xref="S2.T7.3.3.3.3.m1.1.1">subscript</csymbol><ci id="S2.T7.3.3.3.3.m1.1.1.2.cmml" xref="S2.T7.3.3.3.3.m1.1.1.2">𝛿</ci><cn id="S2.T7.3.3.3.3.m1.1.1.3.cmml" type="integer" xref="S2.T7.3.3.3.3.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T7.3.3.3.3.m1.1c">\delta_{1}</annotation><annotation encoding="application/x-llamapun" id="S2.T7.3.3.3.3.m1.1d">italic_δ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S2.T7.3.3.3.3.1" style="font-size:144%;">  (↑)</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T7.3.3.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T7.3.3.5.1.1"><span class="ltx_text" id="S2.T7.3.3.5.1.1.1" style="font-size:144%;">DepthCrafter</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S2.T7.3.3.5.1.2"><span class="ltx_text" id="S2.T7.3.3.5.1.2.1" style="font-size:144%;">2156.7</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S2.T7.3.3.5.1.3">
<span class="ltx_text" id="S2.T7.3.3.5.1.3.1" style="font-size:144%;">10.5</span><span class="ltx_text" id="S2.T7.3.3.5.1.3.2" style="font-size:144%;position:relative; bottom:3.1pt;">~</span><span class="ltx_text" id="S2.T7.3.3.5.1.3.3" style="font-size:144%;">40.5</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T7.3.3.5.1.4"><span class="ltx_text" id="S2.T7.3.3.5.1.4.1" style="font-size:144%;">0.111</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T7.3.3.5.1.5"><span class="ltx_text" id="S2.T7.3.3.5.1.5.1" style="font-size:144%;">0.885</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T7.3.3.5.1.6"><span class="ltx_text" id="S2.T7.3.3.5.1.6.1" style="font-size:144%;">0.066</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T7.3.3.5.1.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T7.3.3.5.1.7.1" style="font-size:144%;">0.979</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T7.3.3.5.1.8"><span class="ltx_text" id="S2.T7.3.3.5.1.8.1" style="font-size:144%;">0.125</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T7.3.3.5.1.9"><span class="ltx_text" id="S2.T7.3.3.5.1.9.1" style="font-size:144%;">0.848</span></td>
</tr>
<tr class="ltx_tr" id="S2.T7.3.3.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T7.3.3.6.2.1"><span class="ltx_text" id="S2.T7.3.3.6.2.1.1" style="font-size:144%;">DepthAnyVideo</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S2.T7.3.3.6.2.2"><span class="ltx_text" id="S2.T7.3.3.6.2.2.1" style="font-size:144%;">1422.8</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S2.T7.3.3.6.2.3"><span class="ltx_text" id="S2.T7.3.3.6.2.3.1" style="font-size:144%;">6</span></th>
<td class="ltx_td ltx_align_center" id="S2.T7.3.3.6.2.4"><span class="ltx_text ltx_font_bold" id="S2.T7.3.3.6.2.4.1" style="font-size:144%;">0.073</span></td>
<td class="ltx_td ltx_align_center" id="S2.T7.3.3.6.2.5"><span class="ltx_text ltx_font_bold" id="S2.T7.3.3.6.2.5.1" style="font-size:144%;">0.957</span></td>
<td class="ltx_td ltx_align_center" id="S2.T7.3.3.6.2.6"><span class="ltx_text ltx_font_bold" id="S2.T7.3.3.6.2.6.1" style="font-size:144%;">0.051</span></td>
<td class="ltx_td ltx_align_center" id="S2.T7.3.3.6.2.7"><span class="ltx_text ltx_font_bold" id="S2.T7.3.3.6.2.7.1" style="font-size:144%;">0.981</span></td>
<td class="ltx_td ltx_align_center" id="S2.T7.3.3.6.2.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T7.3.3.6.2.8.1" style="font-size:144%;">0.112</span></td>
<td class="ltx_td ltx_align_center" id="S2.T7.3.3.6.2.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T7.3.3.6.2.9.1" style="font-size:144%;">0.883</span></td>
</tr>
<tr class="ltx_tr" id="S2.T7.3.3.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S2.T7.3.3.7.3.1"><span class="ltx_text" id="S2.T7.3.3.7.3.1.1" style="font-size:144%;">VDA-L (Ours)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S2.T7.3.3.7.3.2"><span class="ltx_text" id="S2.T7.3.3.7.3.2.1" style="font-size:144%;">381.8</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S2.T7.3.3.7.3.3"><span class="ltx_text" id="S2.T7.3.3.7.3.3.1" style="font-size:144%;">0.55</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T7.3.3.7.3.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T7.3.3.7.3.4.1" style="font-size:144%;">0.079</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T7.3.3.7.3.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T7.3.3.7.3.5.1" style="font-size:144%;">0.950</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T7.3.3.7.3.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T7.3.3.7.3.6.1" style="font-size:144%;">0.053</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T7.3.3.7.3.7"><span class="ltx_text" id="S2.T7.3.3.7.3.7.1" style="font-size:144%;">0.972</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T7.3.3.7.3.8"><span class="ltx_text ltx_font_bold" id="S2.T7.3.3.7.3.8.1" style="font-size:144%;">0.075</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T7.3.3.7.3.9"><span class="ltx_text ltx_font_bold" id="S2.T7.3.3.7.3.9.1" style="font-size:144%;">0.954</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of zero-shot short-video depth estimation results between the proposed model (VDA-L, using a ViT-Large backbone), DepthCrafter [13], and DepthAnyVideo [40].  The comparison is done using three metrics: Absolute Relative Error (AbsRel), δ₁, and Temporal Alignment Error (TAE), across three datasets: KITTI, Bonn, and Scannet.  The table also specifies the number of parameters, number of video training data and the inference resolution used for each model.  Best and second-best results for each metric are highlighted.
> <details>
> <summary>read the caption</summary>
> Table 7: Zero-shot short video depth estimation results. We compare with DepthCrafter [13] and DepthAnyVideo [40] in short video depth benchmark. “VDA-L” denotes our model with ViT-Large backbone. The default inference resolution of our model is set to 518 pixels on the short side, maintaining the aspect ratio. The best and the second best results are highlighted.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.12375/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12375/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12375/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12375/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12375/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12375/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12375/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12375/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12375/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12375/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12375/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12375/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12375/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12375/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12375/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}