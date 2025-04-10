---
title: "FantasyTalking: Realistic Talking Portrait Generation via Coherent Motion Synthesis"
summary: "FantasyTalking: Generates realistic talking portraits with coherent motion via dual audio-visual alignment and facial-focused identity preservation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 AMAP, Alibaba Group",]
showSummary: true
date: 2025-04-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.04842 {{< /keyword >}}
{{< keyword icon="writer" >}} Mengchao Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.04842" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.04842" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.04842/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Creating realistic and controllable talking avatars from static portraits is challenging due to difficulties in capturing subtle expressions, body movements, and dynamic backgrounds. Existing methods often fall short in producing coherent and natural-looking animations. The realism of generated videos remains unsatisfactory due to neglecting of facial expressions and body movements while contextual objects remain static.



This paper introduces a new framework that uses a pre-trained video diffusion transformer model to generate high-fidelity talking portraits. At the core is a dual-stage audio-visual alignment strategy: first, establishing coherent global motion, then refining lip movements at the frame level. **It employs a facial-focused cross-attention module to maintain identity** and a motion intensity modulation module for controllable movements. The approach achieves higher quality, coherence, and identity preservation.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces a dual-stage audio-visual alignment strategy for coherent motion and precise lip sync. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Employs facial-focused cross-attention for robust identity preservation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Integrates motion intensity modulation for controllable expression and body movement. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper presents a novel approach to generate realistic and coherent talking portraits. It contributes to the state-of-the-art diffusion model, identity preservation and the multi-modal audio-visual learning. These developments provide a more comprehensive and natural talking head generation.

------
#### Visual Insights



![](https://arxiv.org/html/2504.04842/extracted/6341439/figs/fig0_1_0.png)

> 🔼 Figure 1 showcases the capabilities of the FantasyTalking model.  Given a single portrait image as input, along with audio (voice) and text prompts, the system generates a short video clip of the portrait realistically animated to speak.  The animation includes not only natural lip synchronization but also expressive facial movements and coherent body motions. Importantly, the model preserves the identity of the person in the portrait.  A key feature highlighted is the model's ability to control the intensity of these motions, allowing users to fine-tune the realism and expressiveness of the generated video. To see the videos, please refer to the supplementary materials.
> <details>
> <summary>read the caption</summary>
> Figure 1. Given a portrait image, voice and text, FantasyTalking can generate animated portraits with rich expressions, natural body movements, and identity features. In addition, FantasyTalking can control the motion intensity of animated portraits. Please refer to our supplementary materials for the video results.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.9">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T1.9.9.10"><span class="ltx_text ltx_font_bold" id="S3.T1.9.9.10.1">Dataset</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S3.T1.9.9.11"><span class="ltx_text ltx_font_bold" id="S3.T1.9.9.11.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.2.2.2"><span class="ltx_text ltx_font_bold" id="S3.T1.2.2.2.1">FVD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.2.2.2.1.m1.1"><semantics id="S3.T1.2.2.2.1.m1.1a"><mo id="S3.T1.2.2.2.1.m1.1.1" stretchy="false" xref="S3.T1.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.1.m1.1b"><ci id="S3.T1.2.2.2.1.m1.1.1.cmml" xref="S3.T1.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.3.3.3"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.1">Sync-C<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.3.3.3.1.m1.1"><semantics id="S3.T1.3.3.3.1.m1.1a"><mo id="S3.T1.3.3.3.1.m1.1.1" stretchy="false" xref="S3.T1.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.1.m1.1b"><ci id="S3.T1.3.3.3.1.m1.1.1.cmml" xref="S3.T1.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.4.4.4"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.4.1">Sync-D<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.4.4.4.1.m1.1"><semantics id="S3.T1.4.4.4.1.m1.1a"><mo id="S3.T1.4.4.4.1.m1.1.1" stretchy="false" xref="S3.T1.4.4.4.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.1.m1.1b"><ci id="S3.T1.4.4.4.1.m1.1.1.cmml" xref="S3.T1.4.4.4.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.5.5.5"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.5.1">ES<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.5.5.5.1.m1.1"><semantics id="S3.T1.5.5.5.1.m1.1a"><mo id="S3.T1.5.5.5.1.m1.1.1" stretchy="false" xref="S3.T1.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.1.m1.1b"><ci id="S3.T1.5.5.5.1.m1.1.1.cmml" xref="S3.T1.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.6.6.6"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.6.1">IDC<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.6.6.6.1.m1.1"><semantics id="S3.T1.6.6.6.1.m1.1a"><mo id="S3.T1.6.6.6.1.m1.1.1" stretchy="false" xref="S3.T1.6.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.6.1.m1.1b"><ci id="S3.T1.6.6.6.1.m1.1.1.cmml" xref="S3.T1.6.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.6.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.7.7.7"><span class="ltx_text ltx_font_bold" id="S3.T1.7.7.7.1">SD<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.7.7.7.1.m1.1"><semantics id="S3.T1.7.7.7.1.m1.1a"><mo id="S3.T1.7.7.7.1.m1.1.1" stretchy="false" xref="S3.T1.7.7.7.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.7.7.7.1.m1.1b"><ci id="S3.T1.7.7.7.1.m1.1.1.cmml" xref="S3.T1.7.7.7.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.7.7.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.7.7.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.8.8.8"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.8.1">BD<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.8.8.8.1.m1.1"><semantics id="S3.T1.8.8.8.1.m1.1a"><mo id="S3.T1.8.8.8.1.m1.1.1" stretchy="false" xref="S3.T1.8.8.8.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.8.8.8.1.m1.1b"><ci id="S3.T1.8.8.8.1.m1.1.1.cmml" xref="S3.T1.8.8.8.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.8.8.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.8.8.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.9.9.9"><span class="ltx_text ltx_font_bold" id="S3.T1.9.9.9.1">Aesthetic<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.9.9.9.1.m1.1"><semantics id="S3.T1.9.9.9.1.m1.1a"><mo id="S3.T1.9.9.9.1.m1.1.1" stretchy="false" xref="S3.T1.9.9.9.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.9.9.9.1.m1.1b"><ci id="S3.T1.9.9.9.1.m1.1.1.cmml" xref="S3.T1.9.9.9.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.9.9.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.9.9.1.m1.1d">↑</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.9.10.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.9.10.1.1" rowspan="5"><span class="ltx_text" id="S3.T1.9.10.1.1.1">Tame Talking</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.9.10.1.2">Aniportrait</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.9.10.1.3">37.672</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.9.10.1.4">397.114</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.9.10.1.5">1.095</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.9.10.1.6">12.461</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.9.10.1.7">0.9508</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.9.10.1.8">0.9372</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.9.10.1.9">4.639</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.9.10.1.10">-</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.9.10.1.11">0.5129</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.11.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.9.11.2.1">EchoMimic</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.11.2.2">33.765</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.11.2.3">471.452</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.11.2.4">2.514</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.11.2.5">10.743</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.11.2.6">0.9527</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.11.2.7">0.9419</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.11.2.8">5.783</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.11.2.9">-</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.9.11.2.10">0.5108</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.12.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.9.12.3.1">Sonic</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.12.3.2">30.396</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.12.3.3">358.023</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.12.3.4">4.197</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.12.3.5"><span class="ltx_text ltx_font_bold" id="S3.T1.9.12.3.5.1">9.103</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.12.3.6">0.9595</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.12.3.7">0.9885</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.12.3.8">8.832</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.12.3.9">-</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.9.12.3.10">0.5312</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.13.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.9.13.4.1">Hallo3</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.13.4.2">32.617</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.13.4.3">347.358</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.13.4.4">4.060</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.13.4.5">9.371</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.13.4.6">0.9566</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.13.4.7">0.9774</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.13.4.8">8.415</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.13.4.9">-</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.9.13.4.10">0.5247</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.14.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.9.14.5.1">FantasyTalking</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.14.5.2"><span class="ltx_text ltx_font_bold" id="S3.T1.9.14.5.2.1">27.695</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.14.5.3"><span class="ltx_text ltx_font_bold" id="S3.T1.9.14.5.3.1">301.173</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.14.5.4"><span class="ltx_text ltx_font_bold" id="S3.T1.9.14.5.4.1">4.226</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.14.5.5">9.251</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.14.5.6"><span class="ltx_text ltx_font_bold" id="S3.T1.9.14.5.6.1">0.9612</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.14.5.7"><span class="ltx_text ltx_font_bold" id="S3.T1.9.14.5.7.1">0.9892</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.14.5.8"><span class="ltx_text ltx_font_bold" id="S3.T1.9.14.5.8.1">11.745</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.14.5.9">-</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.9.14.5.10"><span class="ltx_text ltx_font_bold" id="S3.T1.9.14.5.10.1">0.5362</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.15.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S3.T1.9.15.6.1" rowspan="5"><span class="ltx_text" id="S3.T1.9.15.6.1.1">Wild Talking</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.9.15.6.2">Aniportrait</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.9.15.6.3">63.574</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.9.15.6.4">841.962</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.9.15.6.5">0.996</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.9.15.6.6">12.084</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.9.15.6.7">0.9318</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.9.15.6.8">0.9031</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.9.15.6.9">2.252</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.9.15.6.10">1.9287</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.9.15.6.11">0.5357</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.16.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.9.16.7.1">EchoMimic</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.16.7.2">59.746</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.16.7.3">590.373</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.16.7.4">1.949</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.16.7.5">10.754</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.16.7.6">0.9463</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.16.7.7">0.9202</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.16.7.8">3.201</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.16.7.9">1.9508</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.9.16.7.10">0.5311</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.17.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.9.17.8.1">Sonic</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.17.8.2">45.400</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.17.8.3">489.985</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.17.8.4">2.689</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.17.8.5">10.194</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.17.8.6">0.9539</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.17.8.7">0.9607</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.17.8.8">10.484</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.17.8.9">3.9019</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.9.17.8.10">0.5913</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.18.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.9.18.9.1">Hallo3</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.18.9.2">47.403</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.18.9.3">488.499</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.18.9.4">2.673</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.18.9.5">10.292</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.18.9.6">0.9420</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.18.9.7">0.9538</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.18.9.8">11.411</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.9.18.9.9">5.2840</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.9.18.9.10">0.5842</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.19.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T1.9.19.10.1">FantasyTalking</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.9.19.10.2"><span class="ltx_text ltx_font_bold" id="S3.T1.9.19.10.2.1">43.137</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.9.19.10.3"><span class="ltx_text ltx_font_bold" id="S3.T1.9.19.10.3.1">483.108</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.9.19.10.4"><span class="ltx_text ltx_font_bold" id="S3.T1.9.19.10.4.1">3.154</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.9.19.10.5"><span class="ltx_text ltx_font_bold" id="S3.T1.9.19.10.5.1">9.689</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.9.19.10.6"><span class="ltx_text ltx_font_bold" id="S3.T1.9.19.10.6.1">0.9589</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.9.19.10.7"><span class="ltx_text ltx_font_bold" id="S3.T1.9.19.10.7.1">0.9754</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.9.19.10.8"><span class="ltx_text ltx_font_bold" id="S3.T1.9.19.10.8.1">13.783</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.9.19.10.9"><span class="ltx_text ltx_font_bold" id="S3.T1.9.19.10.9.1">7.9624</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.9.19.10.10"><span class="ltx_text ltx_font_bold" id="S3.T1.9.19.10.10.1">0.6183</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a quantitative comparison of various talking head generation methods, evaluated using eight metrics: Fréchet Inception Distance (FID), Fréchet Video Distance (FVD), Sync-C, Sync-D, Expression Similarity (ES), Identity Consistency (IDC), Subject Dynamics (SD), Background Dynamics (BD), and Aesthetic score.  The methods are tested on two datasets: a tame dataset (with limited background variation and simple poses) and a wild dataset (with natural variations in background, pose, and expressions).  The best performance for each metric on each dataset is highlighted in bold, enabling readers to easily compare methods' effectiveness across different scenarios and evaluation criteria.
> <details>
> <summary>read the caption</summary>
> Table 1. Comparison of different methods on tame and wild talking head datasets. The best results are highlighted in bold.
> </details>





### In-depth insights


#### Coherent Motion
The concept of coherent motion is crucial for generating realistic talking head videos, particularly in "wild" scenarios. It extends beyond simple lip synchronization to encompass the coordinated movement of the entire face and body, as well as the background. **Coherence ensures that the generated motions are physically plausible and contribute to a natural, believable animation.** The paper addresses the challenge of achieving this coherence by proposing a dual-stage audio-visual alignment strategy, which first establishes global motion coherence and then refines lip movements at the frame level, a two-pronged approach. **It implicitly acknowledges that audio signals alone are insufficient to drive all aspects of facial and body movement**, and that a more holistic approach is needed to capture the subtle nuances of human expression and interaction.

#### Dual-Stage Align
The concept of a 'Dual-Stage Align' strategy suggests a refined approach to aligning different modalities or data representations. Such an approach likely involves **an initial coarse alignment** to establish a general correspondence, followed by **a finer-grained alignment** to achieve precise synchronization or integration. The benefits could include improved robustness, especially when dealing with noisy or incomplete data. **The first stage** would handle major misalignments and establish a basic framework. **The second stage** would focus on subtle adjustments and details, potentially using different algorithms or loss functions optimized for local accuracy. This hierarchical approach could also enhance computational efficiency by reducing the search space for the finer alignment. The design of each stage, as well as the criteria for transitioning between them, is crucial to the overall success of the alignment process. Considering the 'coarse-to-fine' paradigm, the Dual-Stage alignment could also improve generalization to new datasets.

#### Facial Focus ID
The idea of 'Facial Focus ID' suggests a concentrated approach to **identity preservation in video generation**, moving away from holistic image processing. This implies recognizing that the face is the primary identifier. It prioritizes facial features, potentially through cropping or attention mechanisms, ensuring that these are consistently represented across video frames. This focus could leverage techniques like **facial landmarking or feature extraction** (ArcFace) to guide the generation process. By disentangling facial identity from other scene elements, 'Facial Focus ID' aims to achieve more robust and controllable identity retention. It is particularly useful in dynamic scenes where traditional methods may struggle to maintain consistent facial characteristics. This targeted approach helps to achieve higher realism and identity accuracy. Furthermore, reducing computational redundancy would be possible.

#### Motion Intensity
**Motion intensity** appears to be a critical factor in generating realistic and engaging talking head animations. Existing methods often struggle to control the magnitude of facial expressions and body movements independently. **Explicit control** over motion intensity allows for more nuanced and expressive animations, as individual speaking styles vary significantly. By modulating motion intensity, it's possible to generate a range of animations, from subtle movements to more exaggerated expressions. This capability is particularly important in wild talking head scenarios, where characters exhibit more diverse and dynamic motions. **Fine-grained control** over motion intensity enables better alignment with the audio, leading to more believable and captivating animations. Furthermore, it allows users to tailor the animation to their specific needs, creating a more personalized and engaging experience. Techniques for measuring and controlling motion intensity could involve analyzing facial landmarks and body joint movements, then using these measurements to modulate the animation. **The challenge** lies in decoupling facial expression and body movement intensities, enabling independent control over each aspect of the animation.

#### Wild Talking SOTA
The term "Wild Talking SOTA" conceptually represents the **cutting-edge advancements in generating realistic and dynamic talking head videos**, particularly focusing on scenarios beyond controlled lab settings. It implies a shift from tame, constrained environments to more challenging real-world situations with diverse backgrounds, uncontrolled lighting, and varied speaker styles. The key challenges in this domain include **preserving identity across a wide range of head poses and expressions**, ensuring robust lip synchronization even with noisy audio, and generating natural body and facial movements that complement the speech. A true Wild Talking SOTA model would demonstrate superior generalization capabilities, handling diverse identities and complex scenes, while maintaining high fidelity and temporal coherence. These methods should also **demonstrate robustness against variations in audio quality and environmental conditions.**


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.04842/x1.png)

> 🔼 Figure 2 provides a detailed architecture overview of the FantasyTalking framework.  It illustrates the process of generating a realistic talking portrait video from a single reference image, audio input, and optional text prompts. The diagram shows various components, including audio encoding via Wav2Vec, text encoding using UMT5, face and body motion encoding, the core Diffusion Transformer (DiT) blocks for video generation, and a final reconstruction stage using a 3D decoder.  Key components such as the cross-attention modules for audio and visual feature integration, the face encoder, and the motion network are highlighted. The figure demonstrates how these elements work together to generate a coherent and realistic talking head animation by aligning audio, visual, and text information. Different stages of information processing are shown and their interactions are clearly visualized.
> <details>
> <summary>read the caption</summary>
> Figure 2. Overview of FantasyTalking.
> </details>



![](https://arxiv.org/html/2504.04842/x2.png)

> 🔼 This figure illustrates the dual-stage audio-visual alignment strategy used in the FantasyTalking model.  The first stage (a) shows clip-level training where long-range audio-visual correlations are learned, establishing global coherent motion across the entire scene.  The second stage (b) performs frame-level refinement by focusing specifically on lip movements through a lip-tracing mask, ensuring precise synchronization with audio signals.  The process includes reshaping audio and video tokens to facilitate more precise attention mechanisms at the frame level.
> <details>
> <summary>read the caption</summary>
> Figure 3. Dual-Stage Audio-Visual Alignment.
> </details>



![](https://arxiv.org/html/2504.04842/extracted/6341439/figs/compare_htdf_2.png)

> 🔼 Figure 4 presents a qualitative comparison of different methods for generating talking head videos on the HDTF (High-Definition Talking Face) dataset. It visually demonstrates the performance of various methods in terms of the realism, naturalness, and synchronization of generated lip movements and overall facial expressions with the input audio. The figure showcases generated video frames alongside reference images, allowing for a direct comparison of the generated output with the original input. The visual comparison helps to understand the strengths and weaknesses of each method in capturing subtle facial expressions, identity preservation, and overall quality of animation.
> <details>
> <summary>read the caption</summary>
> Figure 4. Qualitative comparison on tame talking head dataset (HDTF).
> </details>



![](https://arxiv.org/html/2504.04842/extracted/6341439/figs/compare_wild_2.png)

> 🔼 Figure 5 presents a qualitative comparison of various talking head generation methods on a challenging dataset featuring diverse and dynamic real-world scenarios. The figure visually demonstrates the performance differences across different techniques in generating realistic and natural-looking talking head videos.  It highlights the superior quality of FantasyTalking, showcasing its ability to create highly realistic facial expressions, accurate lip synchronization, and coherent body movements, even in complex and uncontrolled settings. Comparisons include examples of less successful outputs from other methods to underscore the advanced performance of the proposed approach.
> <details>
> <summary>read the caption</summary>
> Figure 5. Qualitative comparison on wild talking head dataset.
> </details>



![](https://arxiv.org/html/2504.04842/extracted/6341439/figs/compare_sonic_1.png)

> 🔼 This figure provides a qualitative comparison of the motion intensity control capabilities of the proposed FantasyTalking model and the Sonic model.  Different rows represent different levels of motion intensity (subtle, natural, and intense), demonstrating how each model responds to adjustments in motion intensity.  The goal is to illustrate the nuances in generated animation and show how precisely the motion intensity can be controlled by FantasyTalking.
> <details>
> <summary>read the caption</summary>
> Figure 6. Comparison of Motion Intensity Controller with Sonic.
> </details>



![](https://arxiv.org/html/2504.04842/extracted/6341439/figs/compare_hallo3_3.png)

> 🔼 This figure presents a qualitative comparison of video generation results between the proposed FantasyTalking method and the Hallo3 method.  It visually demonstrates the differences in generated video quality, specifically highlighting the superior realism, naturalness of movement, and background consistency achieved by FantasyTalking.  Several examples of talking head videos from both methods are shown, allowing for a direct side-by-side comparison of the results.
> <details>
> <summary>read the caption</summary>
> Figure 7. Comparison of Visualization Results with Hallo3.
> </details>



![](https://arxiv.org/html/2504.04842/extracted/6341439/figs/ablation_1_2.png)

> 🔼 This ablation study analyzes the impact of the dual-stage audio-visual alignment (DAVA) strategy on the performance of the FantasyTalking model.  It compares results when using only clip-level alignment, only frame-level alignment, and both (the full DAVA method).  The figure visually demonstrates the differences in generated video quality, showcasing how the combined approach yields superior results in terms of audio-visual synchronization and overall naturalness.
> <details>
> <summary>read the caption</summary>
> Figure 8. Ablation on DAVA.
> </details>



![](https://arxiv.org/html/2504.04842/extracted/6341439/figs/ablation_2_yaqi.png)

> 🔼 This ablation study demonstrates the importance of the identity preservation module in FantasyTalking.  The figure shows a comparison of talking head generation results with and without the identity preservation component. It visually showcases how the model's ability to maintain consistent identity characteristics is significantly degraded without the module, leading to distorted facial features and reduced overall realism. The results highlight the effectiveness of the proposed identity preservation method in generating realistic and consistent talking head videos.
> <details>
> <summary>read the caption</summary>
> Figure 9. Ablation on Identity Preservation.
> </details>



![](https://arxiv.org/html/2504.04842/x3.png)

> 🔼 This figure visualizes the results of an ablation study on the Motion Intensity Modulation Network. It shows how varying the facial expression coefficient (ωι) and body movement coefficient (ωb) affects the generated video's quality and motion intensity. Two subfigures are presented: (a) shows the relationship between the coefficients and the Fréchet Video Distance (FVD), a metric assessing video quality, demonstrating that extreme values of coefficients (very low or very high motion) reduce quality. (b) illustrates how changing the coefficients impacts the Subject Dynamics (SD), which measures the intensity of motion in the video, showing a strong positive correlation between higher coefficients and higher motion intensity.  This demonstrates the effectiveness of the modulation network in controlling both the realism and dynamic range of the generated talking head videos.
> <details>
> <summary>read the caption</summary>
> Figure 10. Ablation on Motion Intensity Modulation Network.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.5.5.6"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.6.1" style="font-size:90%;">Level</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T2.5.5.7"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.7.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T2.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1" style="font-size:90%;">FVD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T2.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.1" style="font-size:90%;">Sync-C<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.1.m1.1"><semantics id="S4.T2.2.2.2.1.m1.1a"><mo id="S4.T2.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.1.m1.1b"><ci id="S4.T2.2.2.2.1.m1.1.1.cmml" xref="S4.T2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T2.3.3.3"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.3.1" style="font-size:90%;">Sync-D<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.1.m1.1"><semantics id="S4.T2.3.3.3.1.m1.1a"><mo id="S4.T2.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.1.m1.1b"><ci id="S4.T2.3.3.3.1.m1.1.1.cmml" xref="S4.T2.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T2.4.4.4"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.1" style="font-size:90%;">IDC<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.1.m1.1"><semantics id="S4.T2.4.4.4.1.m1.1a"><mo id="S4.T2.4.4.4.1.m1.1.1" stretchy="false" xref="S4.T2.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.1.m1.1b"><ci id="S4.T2.4.4.4.1.m1.1.1.cmml" xref="S4.T2.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.5.5.5"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.5.1" style="font-size:90%;">SD<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.5.5.5.1.m1.1"><semantics id="S4.T2.5.5.5.1.m1.1a"><mo id="S4.T2.5.5.5.1.m1.1.1" stretchy="false" xref="S4.T2.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.1.m1.1b"><ci id="S4.T2.5.5.5.1.m1.1.1.cmml" xref="S4.T2.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.5.6.1.1"><span class="ltx_text" id="S4.T2.5.6.1.1.1" style="font-size:90%;">subtle</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.5.6.1.2"><span class="ltx_text" id="S4.T2.5.6.1.2.1" style="font-size:90%;">Sonic</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.6.1.3"><span class="ltx_text" id="S4.T2.5.6.1.3.1" style="font-size:90%;">508.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.6.1.4"><span class="ltx_text" id="S4.T2.5.6.1.4.1" style="font-size:90%;">2.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.6.1.5"><span class="ltx_text" id="S4.T2.5.6.1.5.1" style="font-size:90%;">11.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.6.1.6"><span class="ltx_text" id="S4.T2.5.6.1.6.1" style="font-size:90%;">0.978</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.6.1.7"><span class="ltx_text ltx_font_bold" id="S4.T2.5.6.1.7.1" style="font-size:90%;">8.32</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.7.2">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T2.5.7.2.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.5.7.2.2"><span class="ltx_text" id="S4.T2.5.7.2.2.1" style="font-size:90%;">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.7.2.3"><span class="ltx_text ltx_font_bold" id="S4.T2.5.7.2.3.1" style="font-size:90%;">496.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.7.2.4"><span class="ltx_text ltx_font_bold" id="S4.T2.5.7.2.4.1" style="font-size:90%;">3.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.7.2.5"><span class="ltx_text ltx_font_bold" id="S4.T2.5.7.2.5.1" style="font-size:90%;">10.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.7.2.6"><span class="ltx_text ltx_font_bold" id="S4.T2.5.7.2.6.1" style="font-size:90%;">0.982</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.7.2.7"><span class="ltx_text" id="S4.T2.5.7.2.7.1" style="font-size:90%;">8.12</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.5.8.3.1"><span class="ltx_text" id="S4.T2.5.8.3.1.1" style="font-size:90%;">natural</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.5.8.3.2"><span class="ltx_text" id="S4.T2.5.8.3.2.1" style="font-size:90%;">Sonic</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.8.3.3"><span class="ltx_text" id="S4.T2.5.8.3.3.1" style="font-size:90%;">489.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.8.3.4"><span class="ltx_text" id="S4.T2.5.8.3.4.1" style="font-size:90%;">2.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.8.3.5"><span class="ltx_text" id="S4.T2.5.8.3.5.1" style="font-size:90%;">10.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.8.3.6"><span class="ltx_text" id="S4.T2.5.8.3.6.1" style="font-size:90%;">0.988</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.8.3.7"><span class="ltx_text" id="S4.T2.5.8.3.7.1" style="font-size:90%;">10.48</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.9.4">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T2.5.9.4.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.5.9.4.2"><span class="ltx_text" id="S4.T2.5.9.4.2.1" style="font-size:90%;">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.9.4.3"><span class="ltx_text ltx_font_bold" id="S4.T2.5.9.4.3.1" style="font-size:90%;">483.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.9.4.4"><span class="ltx_text ltx_font_bold" id="S4.T2.5.9.4.4.1" style="font-size:90%;">3.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.9.4.5"><span class="ltx_text ltx_font_bold" id="S4.T2.5.9.4.5.1" style="font-size:90%;">9.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.9.4.6"><span class="ltx_text ltx_font_bold" id="S4.T2.5.9.4.6.1" style="font-size:90%;">0.989</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.9.4.7"><span class="ltx_text ltx_font_bold" id="S4.T2.5.9.4.7.1" style="font-size:90%;">13.78</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.10.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.5.10.5.1"><span class="ltx_text" id="S4.T2.5.10.5.1.1" style="font-size:90%;">intense</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.5.10.5.2"><span class="ltx_text" id="S4.T2.5.10.5.2.1" style="font-size:90%;">Sonic</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.10.5.3"><span class="ltx_text" id="S4.T2.5.10.5.3.1" style="font-size:90%;">522.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.10.5.4"><span class="ltx_text" id="S4.T2.5.10.5.4.1" style="font-size:90%;">2.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.10.5.5"><span class="ltx_text" id="S4.T2.5.10.5.5.1" style="font-size:90%;">12.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.10.5.6"><span class="ltx_text" id="S4.T2.5.10.5.6.1" style="font-size:90%;">0.971</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.10.5.7"><span class="ltx_text" id="S4.T2.5.10.5.7.1" style="font-size:90%;">12.32</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.11.6">
<th class="ltx_td ltx_th ltx_th_row ltx_border_bb" id="S4.T2.5.11.6.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T2.5.11.6.2"><span class="ltx_text" id="S4.T2.5.11.6.2.1" style="font-size:90%;">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.5.11.6.3"><span class="ltx_text ltx_font_bold" id="S4.T2.5.11.6.3.1" style="font-size:90%;">501.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.5.11.6.4"><span class="ltx_text ltx_font_bold" id="S4.T2.5.11.6.4.1" style="font-size:90%;">3.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.5.11.6.5"><span class="ltx_text ltx_font_bold" id="S4.T2.5.11.6.5.1" style="font-size:90%;">9.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.5.11.6.6"><span class="ltx_text ltx_font_bold" id="S4.T2.5.11.6.6.1" style="font-size:90%;">0.980</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.11.6.7"><span class="ltx_text ltx_font_bold" id="S4.T2.5.11.6.7.1" style="font-size:90%;">18.14</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of FantasyTalking's motion intensity controller against Sonic's, across different levels of motion intensity (subtle, natural, intense).  The metrics used are FVD (Fréchet Video Distance), Sync-C (lip synchronization consistency), Sync-D (lip synchronization divergence), IDC (identity consistency), and SD (subject dynamics). Lower FVD indicates better video quality, higher Sync-C indicates better consistency, lower Sync-D indicates less divergence, higher IDC indicates better identity preservation, and higher SD indicates greater subject movement.
> <details>
> <summary>read the caption</summary>
> Table 2. Comparison of Motion Intensity Controller with Sonic.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T3.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.1.1.1">
<span class="ltx_p" id="S4.T3.1.1.1.1.1.1" style="width:51.2pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1.1.1" style="font-size:90%;">Method</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T3.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.1.2.1">
<span class="ltx_p" id="S4.T3.1.1.1.2.1.1" style="width:30.7pt;"><span class="ltx_text ltx_font_bold ltx_align_center" id="S4.T3.1.1.1.2.1.1.1" style="font-size:90%;">LS</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T3.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.1.3.1">
<span class="ltx_p" id="S4.T3.1.1.1.3.1.1" style="width:30.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.3.1.1.1" style="font-size:90%;">VQ</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T3.1.1.1.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.1.4.1">
<span class="ltx_p" id="S4.T3.1.1.1.4.1.1" style="width:30.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.4.1.1.1" style="font-size:90%;">IP</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.1.5.1">
<span class="ltx_p" id="S4.T3.1.1.1.5.1.1" style="width:30.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.5.1.1.1" style="font-size:90%;">MD</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T3.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.2.1.1.1">
<span class="ltx_p" id="S4.T3.1.2.1.1.1.1" style="width:51.2pt;"><span class="ltx_text" id="S4.T3.1.2.1.1.1.1.1" style="font-size:90%;">Aniportrait</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T3.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.2.1.2.1">
<span class="ltx_p" id="S4.T3.1.2.1.2.1.1" style="width:30.7pt;"><span class="ltx_text" id="S4.T3.1.2.1.2.1.1.1" style="font-size:90%;">8.18</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T3.1.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.2.1.3.1">
<span class="ltx_p" id="S4.T3.1.2.1.3.1.1" style="width:30.7pt;"><span class="ltx_text" id="S4.T3.1.2.1.3.1.1.1" style="font-size:90%;">6.78</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T3.1.2.1.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.2.1.4.1">
<span class="ltx_p" id="S4.T3.1.2.1.4.1.1" style="width:30.7pt;"><span class="ltx_text" id="S4.T3.1.2.1.4.1.1.1" style="font-size:90%;">7.82</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T3.1.2.1.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.2.1.5.1">
<span class="ltx_p" id="S4.T3.1.2.1.5.1.1" style="width:30.7pt;"><span class="ltx_text" id="S4.T3.1.2.1.5.1.1.1" style="font-size:90%;">5.28</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T3.1.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.3.2.1.1">
<span class="ltx_p" id="S4.T3.1.3.2.1.1.1" style="width:51.2pt;"><span class="ltx_text" id="S4.T3.1.3.2.1.1.1.1" style="font-size:90%;">EchoMimic</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T3.1.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.3.2.2.1">
<span class="ltx_p" id="S4.T3.1.3.2.2.1.1" style="width:30.7pt;"><span class="ltx_text" id="S4.T3.1.3.2.2.1.1.1" style="font-size:90%;">8.22</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T3.1.3.2.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.3.2.3.1">
<span class="ltx_p" id="S4.T3.1.3.2.3.1.1" style="width:30.7pt;"><span class="ltx_text" id="S4.T3.1.3.2.3.1.1.1" style="font-size:90%;">6.31</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T3.1.3.2.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.3.2.4.1">
<span class="ltx_p" id="S4.T3.1.3.2.4.1.1" style="width:30.7pt;"><span class="ltx_text" id="S4.T3.1.3.2.4.1.1.1" style="font-size:90%;">7.05</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.1.3.2.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.3.2.5.1">
<span class="ltx_p" id="S4.T3.1.3.2.5.1.1" style="width:30.7pt;"><span class="ltx_text" id="S4.T3.1.3.2.5.1.1.1" style="font-size:90%;">4.40</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T3.1.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.4.3.1.1">
<span class="ltx_p" id="S4.T3.1.4.3.1.1.1" style="width:51.2pt;"><span class="ltx_text" id="S4.T3.1.4.3.1.1.1.1" style="font-size:90%;">Sonic</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T3.1.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.4.3.2.1">
<span class="ltx_p" id="S4.T3.1.4.3.2.1.1" style="width:30.7pt;"><span class="ltx_text" id="S4.T3.1.4.3.2.1.1.1" style="font-size:90%;">9.07</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T3.1.4.3.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.4.3.3.1">
<span class="ltx_p" id="S4.T3.1.4.3.3.1.1" style="width:30.7pt;"><span class="ltx_text" id="S4.T3.1.4.3.3.1.1.1" style="font-size:90%;">8.17</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T3.1.4.3.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.4.3.4.1">
<span class="ltx_p" id="S4.T3.1.4.3.4.1.1" style="width:30.7pt;"><span class="ltx_text" id="S4.T3.1.4.3.4.1.1.1" style="font-size:90%;">8.13</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.1.4.3.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.4.3.5.1">
<span class="ltx_p" id="S4.T3.1.4.3.5.1.1" style="width:30.7pt;"><span class="ltx_text" id="S4.T3.1.4.3.5.1.1.1" style="font-size:90%;">6.25</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T3.1.5.4.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.5.4.1.1">
<span class="ltx_p" id="S4.T3.1.5.4.1.1.1" style="width:51.2pt;"><span class="ltx_text" id="S4.T3.1.5.4.1.1.1.1" style="font-size:90%;">Hallo3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T3.1.5.4.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.5.4.2.1">
<span class="ltx_p" id="S4.T3.1.5.4.2.1.1" style="width:30.7pt;"><span class="ltx_text" id="S4.T3.1.5.4.2.1.1.1" style="font-size:90%;">8.93</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T3.1.5.4.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.5.4.3.1">
<span class="ltx_p" id="S4.T3.1.5.4.3.1.1" style="width:30.7pt;"><span class="ltx_text" id="S4.T3.1.5.4.3.1.1.1" style="font-size:90%;">7.89</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T3.1.5.4.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.5.4.4.1">
<span class="ltx_p" id="S4.T3.1.5.4.4.1.1" style="width:30.7pt;"><span class="ltx_text" id="S4.T3.1.5.4.4.1.1.1" style="font-size:90%;">7.82</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T3.1.5.4.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.5.4.5.1">
<span class="ltx_p" id="S4.T3.1.5.4.5.1.1" style="width:30.7pt;"><span class="ltx_text" id="S4.T3.1.5.4.5.1.1.1" style="font-size:90%;">6.44</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="S4.T3.1.6.5.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.6.5.1.1">
<span class="ltx_p" id="S4.T3.1.6.5.1.1.1" style="width:51.2pt;"><span class="ltx_text" id="S4.T3.1.6.5.1.1.1.1" style="font-size:90%;">FantasyTalking</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="S4.T3.1.6.5.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.6.5.2.1">
<span class="ltx_p" id="S4.T3.1.6.5.2.1.1" style="width:30.7pt;"><span class="ltx_text ltx_font_bold ltx_align_center" id="S4.T3.1.6.5.2.1.1.1" style="font-size:90%;">9.45</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="S4.T3.1.6.5.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.6.5.3.1">
<span class="ltx_p" id="S4.T3.1.6.5.3.1.1" style="width:30.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.6.5.3.1.1.1" style="font-size:90%;">9.18</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="S4.T3.1.6.5.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.6.5.4.1">
<span class="ltx_p" id="S4.T3.1.6.5.4.1.1" style="width:30.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.6.5.4.1.1.1" style="font-size:90%;">8.44</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T3.1.6.5.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.6.5.5.1">
<span class="ltx_p" id="S4.T3.1.6.5.5.1.1" style="width:30.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.6.5.5.1.1.1" style="font-size:90%;">9.81</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a user study evaluating the performance of FantasyTalking and several baseline methods across four key aspects: Lip Synchronization (LS), Video Quality (VQ), Identity Preservation (IP), and Motion Diversity (MD).  Each participant rated these aspects on a scale of 0 to 10. The scores provide a quantitative comparison of the methods, highlighting FantasyTalking's superior performance, particularly in motion diversity.
> <details>
> <summary>read the caption</summary>
> Table 3. User Study results.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T4.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.5.5">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T4.5.5.6">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.5.5.6.1">
<span class="ltx_p" id="S5.T4.5.5.6.1.1" style="width:51.2pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.5.6.1.1.1" style="font-size:90%;">Method</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T4.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.1.1.1">
<span class="ltx_p" id="S5.T4.1.1.1.1.1" style="width:22.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.1.1.1" style="font-size:90%;">FVD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.1.1.1.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.1.1.1.m1.1a"><mo id="S5.T4.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T4.1.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.1.1.1.m1.1b"><ci id="S5.T4.1.1.1.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T4.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.2.2.1">
<span class="ltx_p" id="S5.T4.2.2.2.1.1" style="width:30.7pt;"><span class="ltx_text ltx_font_bold ltx_align_center" id="S5.T4.2.2.2.1.1.1" style="font-size:90%;">Sync-C<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.2.2.2.1.1.1.m1.1"><semantics id="S5.T4.2.2.2.1.1.1.m1.1a"><mo id="S5.T4.2.2.2.1.1.1.m1.1.1" stretchy="false" xref="S5.T4.2.2.2.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.1.1.1.m1.1b"><ci id="S5.T4.2.2.2.1.1.1.m1.1.1.cmml" xref="S5.T4.2.2.2.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T4.3.3.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.3.3.3.1">
<span class="ltx_p" id="S5.T4.3.3.3.1.1" style="width:30.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.3.1.1.1" style="font-size:90%;">Sync-D<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.3.3.3.1.1.1.m1.1"><semantics id="S5.T4.3.3.3.1.1.1.m1.1a"><mo id="S5.T4.3.3.3.1.1.1.m1.1.1" stretchy="false" xref="S5.T4.3.3.3.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.3.1.1.1.m1.1b"><ci id="S5.T4.3.3.3.1.1.1.m1.1.1.cmml" xref="S5.T4.3.3.3.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.3.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.3.1.1.1.m1.1d">↓</annotation></semantics></math></span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T4.4.4.4">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.4.4.4.1">
<span class="ltx_p" id="S5.T4.4.4.4.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.4.4.1.1.1" style="font-size:90%;">IDC<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.4.4.4.1.1.1.m1.1"><semantics id="S5.T4.4.4.4.1.1.1.m1.1a"><mo id="S5.T4.4.4.4.1.1.1.m1.1.1" stretchy="false" xref="S5.T4.4.4.4.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.4.4.4.1.1.1.m1.1b"><ci id="S5.T4.4.4.4.1.1.1.m1.1.1.cmml" xref="S5.T4.4.4.4.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.4.4.4.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.4.4.4.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S5.T4.5.5.5">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.5.5.5.1">
<span class="ltx_p" id="S5.T4.5.5.5.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.5.5.1.1.1" style="font-size:90%;">SD<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.5.5.5.1.1.1.m1.1"><semantics id="S5.T4.5.5.5.1.1.1.m1.1a"><mo id="S5.T4.5.5.5.1.1.1.m1.1.1" stretchy="false" xref="S5.T4.5.5.5.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.5.5.5.1.1.1.m1.1b"><ci id="S5.T4.5.5.5.1.1.1.m1.1.1.cmml" xref="S5.T4.5.5.5.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.5.5.5.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.5.5.5.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.5.6.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T4.5.6.1.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.5.6.1.1.1">
<span class="ltx_p" id="S5.T4.5.6.1.1.1.1" style="width:51.2pt;"><span class="ltx_text" id="S5.T4.5.6.1.1.1.1.1" style="font-size:90%;">Clip-Level</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T4.5.6.1.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.5.6.1.2.1">
<span class="ltx_p" id="S5.T4.5.6.1.2.1.1" style="width:22.8pt;"><span class="ltx_text" id="S5.T4.5.6.1.2.1.1.1" style="font-size:90%;">492.85</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T4.5.6.1.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.5.6.1.3.1">
<span class="ltx_p" id="S5.T4.5.6.1.3.1.1" style="width:30.7pt;"><span class="ltx_text" id="S5.T4.5.6.1.3.1.1.1" style="font-size:90%;">1.98</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T4.5.6.1.4">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.5.6.1.4.1">
<span class="ltx_p" id="S5.T4.5.6.1.4.1.1" style="width:30.7pt;"><span class="ltx_text" id="S5.T4.5.6.1.4.1.1.1" style="font-size:90%;">11.21</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T4.5.6.1.5">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.5.6.1.5.1">
<span class="ltx_p" id="S5.T4.5.6.1.5.1.1" style="width:19.9pt;"><span class="ltx_text" id="S5.T4.5.6.1.5.1.1.1" style="font-size:90%;">0.986</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.5.6.1.6">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.5.6.1.6.1">
<span class="ltx_p" id="S5.T4.5.6.1.6.1.1" style="width:19.9pt;"><span class="ltx_text" id="S5.T4.5.6.1.6.1.1.1" style="font-size:90%;">13.66</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.7.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S5.T4.5.7.2.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.5.7.2.1.1">
<span class="ltx_p" id="S5.T4.5.7.2.1.1.1" style="width:51.2pt;"><span class="ltx_text" id="S5.T4.5.7.2.1.1.1.1" style="font-size:90%;">Frame-Level</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S5.T4.5.7.2.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.5.7.2.2.1">
<span class="ltx_p" id="S5.T4.5.7.2.2.1.1" style="width:22.8pt;"><span class="ltx_text" id="S5.T4.5.7.2.2.1.1.1" style="font-size:90%;">534.39</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S5.T4.5.7.2.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.5.7.2.3.1">
<span class="ltx_p" id="S5.T4.5.7.2.3.1.1" style="width:30.7pt;"><span class="ltx_text ltx_font_bold ltx_align_center" id="S5.T4.5.7.2.3.1.1.1" style="font-size:90%;">3.54</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S5.T4.5.7.2.4">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.5.7.2.4.1">
<span class="ltx_p" id="S5.T4.5.7.2.4.1.1" style="width:30.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.7.2.4.1.1.1" style="font-size:90%;">9.02</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S5.T4.5.7.2.5">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.5.7.2.5.1">
<span class="ltx_p" id="S5.T4.5.7.2.5.1.1" style="width:19.9pt;"><span class="ltx_text" id="S5.T4.5.7.2.5.1.1.1" style="font-size:90%;">0.987</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.5.7.2.6">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.5.7.2.6.1">
<span class="ltx_p" id="S5.T4.5.7.2.6.1.1" style="width:19.9pt;"><span class="ltx_text" id="S5.T4.5.7.2.6.1.1.1" style="font-size:90%;">8.22</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.8.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S5.T4.5.8.3.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.5.8.3.1.1">
<span class="ltx_p" id="S5.T4.5.8.3.1.1.1" style="width:51.2pt;"><span class="ltx_text" id="S5.T4.5.8.3.1.1.1.1" style="font-size:90%;">w/o Identity</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S5.T4.5.8.3.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.5.8.3.2.1">
<span class="ltx_p" id="S5.T4.5.8.3.2.1.1" style="width:22.8pt;"><span class="ltx_text" id="S5.T4.5.8.3.2.1.1.1" style="font-size:90%;">510.62</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S5.T4.5.8.3.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.5.8.3.3.1">
<span class="ltx_p" id="S5.T4.5.8.3.3.1.1" style="width:30.7pt;"><span class="ltx_text" id="S5.T4.5.8.3.3.1.1.1" style="font-size:90%;">3.06</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S5.T4.5.8.3.4">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.5.8.3.4.1">
<span class="ltx_p" id="S5.T4.5.8.3.4.1.1" style="width:30.7pt;"><span class="ltx_text" id="S5.T4.5.8.3.4.1.1.1" style="font-size:90%;">10.15</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S5.T4.5.8.3.5">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.5.8.3.5.1">
<span class="ltx_p" id="S5.T4.5.8.3.5.1.1" style="width:19.9pt;"><span class="ltx_text" id="S5.T4.5.8.3.5.1.1.1" style="font-size:90%;">0.945</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.5.8.3.6">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.5.8.3.6.1">
<span class="ltx_p" id="S5.T4.5.8.3.6.1.1" style="width:19.9pt;"><span class="ltx_text" id="S5.T4.5.8.3.6.1.1.1" style="font-size:90%;">12.96</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.9.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="S5.T4.5.9.4.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.5.9.4.1.1">
<span class="ltx_p" id="S5.T4.5.9.4.1.1.1" style="width:51.2pt;"><span class="ltx_text" id="S5.T4.5.9.4.1.1.1.1" style="font-size:90%;">FantasyTalking</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="S5.T4.5.9.4.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.5.9.4.2.1">
<span class="ltx_p" id="S5.T4.5.9.4.2.1.1" style="width:22.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.9.4.2.1.1.1" style="font-size:90%;">483.11</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="S5.T4.5.9.4.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.5.9.4.3.1">
<span class="ltx_p" id="S5.T4.5.9.4.3.1.1" style="width:30.7pt;"><span class="ltx_text" id="S5.T4.5.9.4.3.1.1.1" style="font-size:90%;">3.15</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="S5.T4.5.9.4.4">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.5.9.4.4.1">
<span class="ltx_p" id="S5.T4.5.9.4.4.1.1" style="width:30.7pt;"><span class="ltx_text" id="S5.T4.5.9.4.4.1.1.1" style="font-size:90%;">9.69</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="S5.T4.5.9.4.5">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.5.9.4.5.1">
<span class="ltx_p" id="S5.T4.5.9.4.5.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.9.4.5.1.1.1" style="font-size:90%;">0.989</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T4.5.9.4.6">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.5.9.4.6.1">
<span class="ltx_p" id="S5.T4.5.9.4.6.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.9.4.6.1.1.1" style="font-size:90%;">13.78</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies conducted on the FantasyTalking model using the Wild Dataset.  It shows the impact of removing key components of the proposed method: Dual-Audio Visual Alignment (DAVA) and Identity Preservation. Specifically, it compares the performance of the full model against variations where only clip-level or frame-level audio-visual alignment is used, and another where identity preservation is omitted.  The evaluation metrics used are Fréchet Video Distance (FVD), Audio-Lip Synchronization (Sync-C and Sync-D), Identity Consistency (IDC), and Subject Dynamics (SD). This analysis reveals the contribution of each component to the overall performance of the model on complex, real-world videos.
> <details>
> <summary>read the caption</summary>
> Table 4. Ablation studies on DAVA and Identity Preservation in Wild Dataset.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.04842/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04842/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04842/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04842/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04842/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04842/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04842/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04842/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04842/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04842/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}