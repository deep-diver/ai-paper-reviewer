---
title: "An LMM for Efficient Video Understanding via Reinforced Compression of Video Cubes"
summary: "Efficient video understanding via adaptive compression."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Tsinghua University",]
showSummary: true
date: 2025-04-21
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.15270 {{< /keyword >}}
{{< keyword icon="writer" >}} Ji Qi et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-22 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.15270" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.15270" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.15270/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing Large Multimodal Models(LMMs) process all video frames uniformly, leading to inefficiencies due to varying temporal information density. This paper aims to address this by dynamically compress videos based on their temporal density, aiming to enhance processing efficiency. The challenge lies in achieving this without losing critical information or requiring extensive computational resources. 



The authors introduce **Quicksviewer, an LMM that partitions videos into nonuniform cubes using Gumbel Softmax and employs unified resampling for efficient video understanding**. Quicksviewer dynamically compress video by 45x and also enalbes large receptive field training. Quicksviewer also scales up the number of input frames which reveals a clear power law of the model capabilities. Quicksviewer performs better than other baseline models.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Quicksviewer dynamically adjusts to video content density. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Achieves high compression rates with large receptive fields. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Outperforms baselines with less training data and fewer tokens. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper presents **a novel LMM architecture, Quicksviewer**, that dynamically adjusts to video content, offering potential breakthroughs in efficient video processing. Its focus on reducing computational demands and enhancing performance with limited data could be transformative.

------
#### Visual Insights



![](https://arxiv.org/html/2504.15270/x2.png)

> 🔼 Quicksviewer processes video by first dividing it into non-uniform cubes using a cubing network.  The size of each cube is determined by the video's inherent temporal information density; areas with rapid changes are represented by smaller cubes, while slower-paced sections are in larger cubes.  A 3D resampler then processes these cubes, extracting a consistent number of visual tokens from each, regardless of the cube's original size. This approach allows Quicksviewer to handle videos with varying levels of activity efficiently. The result is a system with a large receptive field (420 frames) and a high compression rate (64x). This efficiency is beneficial throughout training and allows for scaling laws to be applied when processing longer videos during inference.
> <details>
> <summary>read the caption</summary>
> Figure 1: Quicksviewer involves a cubing network that partitions a video into nonuniform cubes, followed by a 3D resampler to gather a fixed number of visual tokens per cube. This efficiency enables Large Receptive Field (420 frames) with High Compression Rate (64×\times×) during all training stages, and scaling laws on extended frames in inference.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.11.11">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.11.11.12.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S3.T1.11.11.12.1.1" style="padding:1pt 12.0pt;"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S3.T1.11.11.12.1.2" style="padding:1pt 12.0pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.11.11.12.1.3" style="padding:1pt 12.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.12.1.3.1">Stage-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.11.11.12.1.4" style="padding:1pt 12.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.12.1.4.1">Stage-2</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T1.11.11.12.1.5" style="padding:1pt 12.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.12.1.5.1">Stage-3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.3.3.3.4" rowspan="2" style="padding:1pt 12.0pt;"><span class="ltx_text" id="S3.T1.3.3.3.4.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T1.3.3.3.4.1.1" style="width:5.5pt;height:22.1pt;vertical-align:-8.3pt;"><span class="ltx_transformed_inner" style="width:22.0pt;transform:translate(-8.29pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S3.T1.3.3.3.4.1.1.1"><span class="ltx_text ltx_font_italic" id="S3.T1.3.3.3.4.1.1.1.1" style="font-size:80%;">Vision</span></span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.3.3.3.5" style="padding:1pt 12.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.5.1">Resolution</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.1.1" style="padding:1pt 12.0pt;"><math alttext="384\times 384" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.m1.1a"><mrow id="S3.T1.1.1.1.1.m1.1.1" xref="S3.T1.1.1.1.1.m1.1.1.cmml"><mn id="S3.T1.1.1.1.1.m1.1.1.2" xref="S3.T1.1.1.1.1.m1.1.1.2.cmml">384</mn><mo id="S3.T1.1.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.T1.1.1.1.1.m1.1.1.1.cmml">×</mo><mn id="S3.T1.1.1.1.1.m1.1.1.3" xref="S3.T1.1.1.1.1.m1.1.1.3.cmml">384</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.m1.1b"><apply id="S3.T1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1"><times id="S3.T1.1.1.1.1.m1.1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1.1"></times><cn id="S3.T1.1.1.1.1.m1.1.1.2.cmml" type="integer" xref="S3.T1.1.1.1.1.m1.1.1.2">384</cn><cn id="S3.T1.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S3.T1.1.1.1.1.m1.1.1.3">384</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.m1.1c">384\times 384</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.m1.1d">384 × 384</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.2.2.2" style="padding:1pt 12.0pt;"><math alttext="384\times 384" class="ltx_Math" display="inline" id="S3.T1.2.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.2.m1.1a"><mrow id="S3.T1.2.2.2.2.m1.1.1" xref="S3.T1.2.2.2.2.m1.1.1.cmml"><mn id="S3.T1.2.2.2.2.m1.1.1.2" xref="S3.T1.2.2.2.2.m1.1.1.2.cmml">384</mn><mo id="S3.T1.2.2.2.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.T1.2.2.2.2.m1.1.1.1.cmml">×</mo><mn id="S3.T1.2.2.2.2.m1.1.1.3" xref="S3.T1.2.2.2.2.m1.1.1.3.cmml">384</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.2.m1.1b"><apply id="S3.T1.2.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.2.m1.1.1"><times id="S3.T1.2.2.2.2.m1.1.1.1.cmml" xref="S3.T1.2.2.2.2.m1.1.1.1"></times><cn id="S3.T1.2.2.2.2.m1.1.1.2.cmml" type="integer" xref="S3.T1.2.2.2.2.m1.1.1.2">384</cn><cn id="S3.T1.2.2.2.2.m1.1.1.3.cmml" type="integer" xref="S3.T1.2.2.2.2.m1.1.1.3">384</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.2.m1.1c">384\times 384</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.2.m1.1d">384 × 384</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.3.3.3.3" style="padding:1pt 12.0pt;"><math alttext="384\times 384" class="ltx_Math" display="inline" id="S3.T1.3.3.3.3.m1.1"><semantics id="S3.T1.3.3.3.3.m1.1a"><mrow id="S3.T1.3.3.3.3.m1.1.1" xref="S3.T1.3.3.3.3.m1.1.1.cmml"><mn id="S3.T1.3.3.3.3.m1.1.1.2" xref="S3.T1.3.3.3.3.m1.1.1.2.cmml">384</mn><mo id="S3.T1.3.3.3.3.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.T1.3.3.3.3.m1.1.1.1.cmml">×</mo><mn id="S3.T1.3.3.3.3.m1.1.1.3" xref="S3.T1.3.3.3.3.m1.1.1.3.cmml">384</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.3.m1.1b"><apply id="S3.T1.3.3.3.3.m1.1.1.cmml" xref="S3.T1.3.3.3.3.m1.1.1"><times id="S3.T1.3.3.3.3.m1.1.1.1.cmml" xref="S3.T1.3.3.3.3.m1.1.1.1"></times><cn id="S3.T1.3.3.3.3.m1.1.1.2.cmml" type="integer" xref="S3.T1.3.3.3.3.m1.1.1.2">384</cn><cn id="S3.T1.3.3.3.3.m1.1.1.3.cmml" type="integer" xref="S3.T1.3.3.3.3.m1.1.1.3">384</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.3.m1.1c">384\times 384</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.3.m1.1d">384 × 384</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.13.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.11.11.13.2.1" style="padding:1pt 12.0pt;">FPS,#Frames</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.11.11.13.2.2" style="padding:1pt 12.0pt;">1, Max 420</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.11.11.13.2.3" style="padding:1pt 12.0pt;">1, Max 420</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.13.2.4" style="padding:1pt 12.0pt;">1, Max 420</td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.14.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.11.11.14.3.1" rowspan="4" style="padding:1pt 12.0pt;"><span class="ltx_text" id="S3.T1.11.11.14.3.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T1.11.11.14.3.1.1.1" style="width:5.5pt;height:17.2pt;vertical-align:-5.9pt;"><span class="ltx_transformed_inner" style="width:17.2pt;transform:translate(-5.88pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S3.T1.11.11.14.3.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S3.T1.11.11.14.3.1.1.1.1.1" style="font-size:80%;">Data</span></span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.11.11.14.3.2" rowspan="2" style="padding:1pt 12.0pt;"><span class="ltx_text" id="S3.T1.11.11.14.3.2.1">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="S3.T1.11.11.14.3.2.1.1" style="width:56.9pt;">
<span class="ltx_p" id="S3.T1.11.11.14.3.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.14.3.2.1.1.1.1">Image-Text
<br class="ltx_break"/></span>#samples</span>
</span></span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.11.11.14.3.3" style="padding:1pt 12.0pt;">LCS, OBELICS</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.11.11.14.3.4" style="padding:1pt 12.0pt;">LLaVAOV-SingleImage</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.11.11.14.3.5" style="padding:1pt 12.0pt;">LLaVAOV-MultiImages</td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.15.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.11.11.15.4.1" style="padding:1pt 12.0pt;">558K, 20K</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.11.11.15.4.2" style="padding:1pt 12.0pt;">2.99M</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.15.4.3" style="padding:1pt 12.0pt;">100K</td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.16.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.11.11.16.5.1" rowspan="2" style="padding:1pt 12.0pt;"><span class="ltx_text" id="S3.T1.11.11.16.5.1.1">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="S3.T1.11.11.16.5.1.1.1" style="width:56.9pt;">
<span class="ltx_p" id="S3.T1.11.11.16.5.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.16.5.1.1.1.1.1">Video-Text
<br class="ltx_break"/></span>#samples</span>
</span></span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.11.11.16.5.2" style="padding:1pt 12.0pt;">FineVideo, ANetCaptions</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.11.11.16.5.3" style="padding:1pt 12.0pt;">FineVideo, ShareGPT4Video, ANetCaptions</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.16.5.4" style="padding:1pt 12.0pt;">Sec. 3. <a class="ltx_ref" href="https://arxiv.org/html/2504.15270v1#S3.SS0.SSS0.Px3" title="Stage-3: Supervised Fine-tuning ‣ 3 Training Process ‣ Quicksviewer: An LMM for Efficient Video Understandingvia Reinforced Compression of Video Cubes"><span class="ltx_text ltx_ref_tag">3</span></a>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.17.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.11.11.17.6.1" style="padding:1pt 12.0pt;">87K, 8K</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.11.11.17.6.2" style="padding:1pt 12.0pt;">118K</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.17.6.3" style="padding:1pt 12.0pt;">599K</td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.18.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.11.11.18.7.1" rowspan="2" style="padding:1pt 12.0pt;"><span class="ltx_text" id="S3.T1.11.11.18.7.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T1.11.11.18.7.1.1.1" style="width:5.6pt;height:21.8pt;vertical-align:-8.1pt;"><span class="ltx_transformed_inner" style="width:21.8pt;transform:translate(-8.11pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S3.T1.11.11.18.7.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S3.T1.11.11.18.7.1.1.1.1.1" style="font-size:80%;">Model</span></span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.11.11.18.7.2" style="padding:1pt 12.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.18.7.2.1">Trainable</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.11.11.18.7.3" style="padding:1pt 12.0pt;">Cubing, Resampler</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.11.11.18.7.4" style="padding:1pt 12.0pt;">Cubing, Resampler, ViT</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.11.11.18.7.5" style="padding:1pt 12.0pt;">Full Model</td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.19.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.11.11.19.8.1" style="padding:1pt 12.0pt;">#Parameters</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.11.11.19.8.2" style="padding:1pt 12.0pt;">75M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.11.11.19.8.3" style="padding:1pt 12.0pt;">500M</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.19.8.4" style="padding:1pt 12.0pt;">8B</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S3.T1.4.4.4.2" rowspan="3" style="padding:1pt 12.0pt;"><span class="ltx_text" id="S3.T1.4.4.4.2.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T1.4.4.4.2.1.1" style="width:7.0pt;height:29.5pt;vertical-align:-12.8pt;"><span class="ltx_transformed_inner" style="width:29.6pt;transform:translate(-11.28pt,2.33pt) rotate(-90deg) ;">
<span class="ltx_p" id="S3.T1.4.4.4.2.1.1.1"><span class="ltx_text ltx_font_italic" id="S3.T1.4.4.4.2.1.1.1.1" style="font-size:80%;">Training</span></span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.4.4.4.1" style="padding:1pt 12.0pt;">
<span class="ltx_text ltx_font_bold" id="S3.T1.4.4.4.1.1">Anneal:</span> <math alttext="\eta_{0},\eta_{T}" class="ltx_Math" display="inline" id="S3.T1.4.4.4.1.m1.2"><semantics id="S3.T1.4.4.4.1.m1.2a"><mrow id="S3.T1.4.4.4.1.m1.2.2.2" xref="S3.T1.4.4.4.1.m1.2.2.3.cmml"><msub id="S3.T1.4.4.4.1.m1.1.1.1.1" xref="S3.T1.4.4.4.1.m1.1.1.1.1.cmml"><mi id="S3.T1.4.4.4.1.m1.1.1.1.1.2" xref="S3.T1.4.4.4.1.m1.1.1.1.1.2.cmml">η</mi><mn id="S3.T1.4.4.4.1.m1.1.1.1.1.3" xref="S3.T1.4.4.4.1.m1.1.1.1.1.3.cmml">0</mn></msub><mo id="S3.T1.4.4.4.1.m1.2.2.2.3" xref="S3.T1.4.4.4.1.m1.2.2.3.cmml">,</mo><msub id="S3.T1.4.4.4.1.m1.2.2.2.2" xref="S3.T1.4.4.4.1.m1.2.2.2.2.cmml"><mi id="S3.T1.4.4.4.1.m1.2.2.2.2.2" xref="S3.T1.4.4.4.1.m1.2.2.2.2.2.cmml">η</mi><mi id="S3.T1.4.4.4.1.m1.2.2.2.2.3" xref="S3.T1.4.4.4.1.m1.2.2.2.2.3.cmml">T</mi></msub></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.1.m1.2b"><list id="S3.T1.4.4.4.1.m1.2.2.3.cmml" xref="S3.T1.4.4.4.1.m1.2.2.2"><apply id="S3.T1.4.4.4.1.m1.1.1.1.1.cmml" xref="S3.T1.4.4.4.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="S3.T1.4.4.4.1.m1.1.1.1.1.1.cmml" xref="S3.T1.4.4.4.1.m1.1.1.1.1">subscript</csymbol><ci id="S3.T1.4.4.4.1.m1.1.1.1.1.2.cmml" xref="S3.T1.4.4.4.1.m1.1.1.1.1.2">𝜂</ci><cn id="S3.T1.4.4.4.1.m1.1.1.1.1.3.cmml" type="integer" xref="S3.T1.4.4.4.1.m1.1.1.1.1.3">0</cn></apply><apply id="S3.T1.4.4.4.1.m1.2.2.2.2.cmml" xref="S3.T1.4.4.4.1.m1.2.2.2.2"><csymbol cd="ambiguous" id="S3.T1.4.4.4.1.m1.2.2.2.2.1.cmml" xref="S3.T1.4.4.4.1.m1.2.2.2.2">subscript</csymbol><ci id="S3.T1.4.4.4.1.m1.2.2.2.2.2.cmml" xref="S3.T1.4.4.4.1.m1.2.2.2.2.2">𝜂</ci><ci id="S3.T1.4.4.4.1.m1.2.2.2.2.3.cmml" xref="S3.T1.4.4.4.1.m1.2.2.2.2.3">𝑇</ci></apply></list></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.1.m1.2c">\eta_{0},\eta_{T}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.1.m1.2d">italic_η start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT , italic_η start_POSTSUBSCRIPT italic_T end_POSTSUBSCRIPT</annotation></semantics></math>, ratio</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.4.4.3" style="padding:1pt 12.0pt;">1.0, 0.01, 0.8</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.4.4.4" style="padding:1pt 12.0pt;">1.0, 0.01, 0.6</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.4.4.4.5" style="padding:1pt 12.0pt;">1.0, 0.01, 0.6</td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.5.5.5.1" style="padding:1pt 12.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.5.1.1">LR: <math alttext="\theta_{c},\theta_{r},\theta_{v},\theta_{l}" class="ltx_Math" display="inline" id="S3.T1.5.5.5.1.1.m1.4"><semantics id="S3.T1.5.5.5.1.1.m1.4a"><mrow id="S3.T1.5.5.5.1.1.m1.4.4.4" xref="S3.T1.5.5.5.1.1.m1.4.4.5.cmml"><msub id="S3.T1.5.5.5.1.1.m1.1.1.1.1" xref="S3.T1.5.5.5.1.1.m1.1.1.1.1.cmml"><mi id="S3.T1.5.5.5.1.1.m1.1.1.1.1.2" xref="S3.T1.5.5.5.1.1.m1.1.1.1.1.2.cmml">θ</mi><mi id="S3.T1.5.5.5.1.1.m1.1.1.1.1.3" xref="S3.T1.5.5.5.1.1.m1.1.1.1.1.3.cmml">c</mi></msub><mo id="S3.T1.5.5.5.1.1.m1.4.4.4.5" xref="S3.T1.5.5.5.1.1.m1.4.4.5.cmml">,</mo><msub id="S3.T1.5.5.5.1.1.m1.2.2.2.2" xref="S3.T1.5.5.5.1.1.m1.2.2.2.2.cmml"><mi id="S3.T1.5.5.5.1.1.m1.2.2.2.2.2" xref="S3.T1.5.5.5.1.1.m1.2.2.2.2.2.cmml">θ</mi><mi id="S3.T1.5.5.5.1.1.m1.2.2.2.2.3" xref="S3.T1.5.5.5.1.1.m1.2.2.2.2.3.cmml">r</mi></msub><mo id="S3.T1.5.5.5.1.1.m1.4.4.4.6" xref="S3.T1.5.5.5.1.1.m1.4.4.5.cmml">,</mo><msub id="S3.T1.5.5.5.1.1.m1.3.3.3.3" xref="S3.T1.5.5.5.1.1.m1.3.3.3.3.cmml"><mi id="S3.T1.5.5.5.1.1.m1.3.3.3.3.2" xref="S3.T1.5.5.5.1.1.m1.3.3.3.3.2.cmml">θ</mi><mi id="S3.T1.5.5.5.1.1.m1.3.3.3.3.3" xref="S3.T1.5.5.5.1.1.m1.3.3.3.3.3.cmml">v</mi></msub><mo id="S3.T1.5.5.5.1.1.m1.4.4.4.7" xref="S3.T1.5.5.5.1.1.m1.4.4.5.cmml">,</mo><msub id="S3.T1.5.5.5.1.1.m1.4.4.4.4" xref="S3.T1.5.5.5.1.1.m1.4.4.4.4.cmml"><mi id="S3.T1.5.5.5.1.1.m1.4.4.4.4.2" xref="S3.T1.5.5.5.1.1.m1.4.4.4.4.2.cmml">θ</mi><mi id="S3.T1.5.5.5.1.1.m1.4.4.4.4.3" xref="S3.T1.5.5.5.1.1.m1.4.4.4.4.3.cmml">l</mi></msub></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.1.1.m1.4b"><list id="S3.T1.5.5.5.1.1.m1.4.4.5.cmml" xref="S3.T1.5.5.5.1.1.m1.4.4.4"><apply id="S3.T1.5.5.5.1.1.m1.1.1.1.1.cmml" xref="S3.T1.5.5.5.1.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="S3.T1.5.5.5.1.1.m1.1.1.1.1.1.cmml" xref="S3.T1.5.5.5.1.1.m1.1.1.1.1">subscript</csymbol><ci id="S3.T1.5.5.5.1.1.m1.1.1.1.1.2.cmml" xref="S3.T1.5.5.5.1.1.m1.1.1.1.1.2">𝜃</ci><ci id="S3.T1.5.5.5.1.1.m1.1.1.1.1.3.cmml" xref="S3.T1.5.5.5.1.1.m1.1.1.1.1.3">𝑐</ci></apply><apply id="S3.T1.5.5.5.1.1.m1.2.2.2.2.cmml" xref="S3.T1.5.5.5.1.1.m1.2.2.2.2"><csymbol cd="ambiguous" id="S3.T1.5.5.5.1.1.m1.2.2.2.2.1.cmml" xref="S3.T1.5.5.5.1.1.m1.2.2.2.2">subscript</csymbol><ci id="S3.T1.5.5.5.1.1.m1.2.2.2.2.2.cmml" xref="S3.T1.5.5.5.1.1.m1.2.2.2.2.2">𝜃</ci><ci id="S3.T1.5.5.5.1.1.m1.2.2.2.2.3.cmml" xref="S3.T1.5.5.5.1.1.m1.2.2.2.2.3">𝑟</ci></apply><apply id="S3.T1.5.5.5.1.1.m1.3.3.3.3.cmml" xref="S3.T1.5.5.5.1.1.m1.3.3.3.3"><csymbol cd="ambiguous" id="S3.T1.5.5.5.1.1.m1.3.3.3.3.1.cmml" xref="S3.T1.5.5.5.1.1.m1.3.3.3.3">subscript</csymbol><ci id="S3.T1.5.5.5.1.1.m1.3.3.3.3.2.cmml" xref="S3.T1.5.5.5.1.1.m1.3.3.3.3.2">𝜃</ci><ci id="S3.T1.5.5.5.1.1.m1.3.3.3.3.3.cmml" xref="S3.T1.5.5.5.1.1.m1.3.3.3.3.3">𝑣</ci></apply><apply id="S3.T1.5.5.5.1.1.m1.4.4.4.4.cmml" xref="S3.T1.5.5.5.1.1.m1.4.4.4.4"><csymbol cd="ambiguous" id="S3.T1.5.5.5.1.1.m1.4.4.4.4.1.cmml" xref="S3.T1.5.5.5.1.1.m1.4.4.4.4">subscript</csymbol><ci id="S3.T1.5.5.5.1.1.m1.4.4.4.4.2.cmml" xref="S3.T1.5.5.5.1.1.m1.4.4.4.4.2">𝜃</ci><ci id="S3.T1.5.5.5.1.1.m1.4.4.4.4.3.cmml" xref="S3.T1.5.5.5.1.1.m1.4.4.4.4.3">𝑙</ci></apply></list></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.1.1.m1.4c">\theta_{c},\theta_{r},\theta_{v},\theta_{l}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.1.1.m1.4d">italic_θ start_POSTSUBSCRIPT italic_c end_POSTSUBSCRIPT , italic_θ start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT , italic_θ start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT , italic_θ start_POSTSUBSCRIPT italic_l end_POSTSUBSCRIPT</annotation></semantics></math></span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.7.7.7.3" style="padding:1pt 12.0pt;">
<math alttext="1e^{-4}" class="ltx_Math" display="inline" id="S3.T1.6.6.6.2.m1.1"><semantics id="S3.T1.6.6.6.2.m1.1a"><mrow id="S3.T1.6.6.6.2.m1.1.1" xref="S3.T1.6.6.6.2.m1.1.1.cmml"><mn id="S3.T1.6.6.6.2.m1.1.1.2" xref="S3.T1.6.6.6.2.m1.1.1.2.cmml">1</mn><mo id="S3.T1.6.6.6.2.m1.1.1.1" xref="S3.T1.6.6.6.2.m1.1.1.1.cmml">⁢</mo><msup id="S3.T1.6.6.6.2.m1.1.1.3" xref="S3.T1.6.6.6.2.m1.1.1.3.cmml"><mi id="S3.T1.6.6.6.2.m1.1.1.3.2" xref="S3.T1.6.6.6.2.m1.1.1.3.2.cmml">e</mi><mrow id="S3.T1.6.6.6.2.m1.1.1.3.3" xref="S3.T1.6.6.6.2.m1.1.1.3.3.cmml"><mo id="S3.T1.6.6.6.2.m1.1.1.3.3a" xref="S3.T1.6.6.6.2.m1.1.1.3.3.cmml">−</mo><mn id="S3.T1.6.6.6.2.m1.1.1.3.3.2" xref="S3.T1.6.6.6.2.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.6.2.m1.1b"><apply id="S3.T1.6.6.6.2.m1.1.1.cmml" xref="S3.T1.6.6.6.2.m1.1.1"><times id="S3.T1.6.6.6.2.m1.1.1.1.cmml" xref="S3.T1.6.6.6.2.m1.1.1.1"></times><cn id="S3.T1.6.6.6.2.m1.1.1.2.cmml" type="integer" xref="S3.T1.6.6.6.2.m1.1.1.2">1</cn><apply id="S3.T1.6.6.6.2.m1.1.1.3.cmml" xref="S3.T1.6.6.6.2.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.6.6.6.2.m1.1.1.3.1.cmml" xref="S3.T1.6.6.6.2.m1.1.1.3">superscript</csymbol><ci id="S3.T1.6.6.6.2.m1.1.1.3.2.cmml" xref="S3.T1.6.6.6.2.m1.1.1.3.2">𝑒</ci><apply id="S3.T1.6.6.6.2.m1.1.1.3.3.cmml" xref="S3.T1.6.6.6.2.m1.1.1.3.3"><minus id="S3.T1.6.6.6.2.m1.1.1.3.3.1.cmml" xref="S3.T1.6.6.6.2.m1.1.1.3.3"></minus><cn id="S3.T1.6.6.6.2.m1.1.1.3.3.2.cmml" type="integer" xref="S3.T1.6.6.6.2.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.6.2.m1.1c">1e^{-4}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.6.2.m1.1d">1 italic_e start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math>,<math alttext="1e^{-4}" class="ltx_Math" display="inline" id="S3.T1.7.7.7.3.m2.1"><semantics id="S3.T1.7.7.7.3.m2.1a"><mrow id="S3.T1.7.7.7.3.m2.1.1" xref="S3.T1.7.7.7.3.m2.1.1.cmml"><mn id="S3.T1.7.7.7.3.m2.1.1.2" xref="S3.T1.7.7.7.3.m2.1.1.2.cmml">1</mn><mo id="S3.T1.7.7.7.3.m2.1.1.1" xref="S3.T1.7.7.7.3.m2.1.1.1.cmml">⁢</mo><msup id="S3.T1.7.7.7.3.m2.1.1.3" xref="S3.T1.7.7.7.3.m2.1.1.3.cmml"><mi id="S3.T1.7.7.7.3.m2.1.1.3.2" xref="S3.T1.7.7.7.3.m2.1.1.3.2.cmml">e</mi><mrow id="S3.T1.7.7.7.3.m2.1.1.3.3" xref="S3.T1.7.7.7.3.m2.1.1.3.3.cmml"><mo id="S3.T1.7.7.7.3.m2.1.1.3.3a" xref="S3.T1.7.7.7.3.m2.1.1.3.3.cmml">−</mo><mn id="S3.T1.7.7.7.3.m2.1.1.3.3.2" xref="S3.T1.7.7.7.3.m2.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.7.7.7.3.m2.1b"><apply id="S3.T1.7.7.7.3.m2.1.1.cmml" xref="S3.T1.7.7.7.3.m2.1.1"><times id="S3.T1.7.7.7.3.m2.1.1.1.cmml" xref="S3.T1.7.7.7.3.m2.1.1.1"></times><cn id="S3.T1.7.7.7.3.m2.1.1.2.cmml" type="integer" xref="S3.T1.7.7.7.3.m2.1.1.2">1</cn><apply id="S3.T1.7.7.7.3.m2.1.1.3.cmml" xref="S3.T1.7.7.7.3.m2.1.1.3"><csymbol cd="ambiguous" id="S3.T1.7.7.7.3.m2.1.1.3.1.cmml" xref="S3.T1.7.7.7.3.m2.1.1.3">superscript</csymbol><ci id="S3.T1.7.7.7.3.m2.1.1.3.2.cmml" xref="S3.T1.7.7.7.3.m2.1.1.3.2">𝑒</ci><apply id="S3.T1.7.7.7.3.m2.1.1.3.3.cmml" xref="S3.T1.7.7.7.3.m2.1.1.3.3"><minus id="S3.T1.7.7.7.3.m2.1.1.3.3.1.cmml" xref="S3.T1.7.7.7.3.m2.1.1.3.3"></minus><cn id="S3.T1.7.7.7.3.m2.1.1.3.3.2.cmml" type="integer" xref="S3.T1.7.7.7.3.m2.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.7.7.3.m2.1c">1e^{-4}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.7.7.3.m2.1d">1 italic_e start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math>,-,-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.10.10.10.6" style="padding:1pt 12.0pt;">
<math alttext="2e^{-5}" class="ltx_Math" display="inline" id="S3.T1.8.8.8.4.m1.1"><semantics id="S3.T1.8.8.8.4.m1.1a"><mrow id="S3.T1.8.8.8.4.m1.1.1" xref="S3.T1.8.8.8.4.m1.1.1.cmml"><mn id="S3.T1.8.8.8.4.m1.1.1.2" xref="S3.T1.8.8.8.4.m1.1.1.2.cmml">2</mn><mo id="S3.T1.8.8.8.4.m1.1.1.1" xref="S3.T1.8.8.8.4.m1.1.1.1.cmml">⁢</mo><msup id="S3.T1.8.8.8.4.m1.1.1.3" xref="S3.T1.8.8.8.4.m1.1.1.3.cmml"><mi id="S3.T1.8.8.8.4.m1.1.1.3.2" xref="S3.T1.8.8.8.4.m1.1.1.3.2.cmml">e</mi><mrow id="S3.T1.8.8.8.4.m1.1.1.3.3" xref="S3.T1.8.8.8.4.m1.1.1.3.3.cmml"><mo id="S3.T1.8.8.8.4.m1.1.1.3.3a" xref="S3.T1.8.8.8.4.m1.1.1.3.3.cmml">−</mo><mn id="S3.T1.8.8.8.4.m1.1.1.3.3.2" xref="S3.T1.8.8.8.4.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.8.8.8.4.m1.1b"><apply id="S3.T1.8.8.8.4.m1.1.1.cmml" xref="S3.T1.8.8.8.4.m1.1.1"><times id="S3.T1.8.8.8.4.m1.1.1.1.cmml" xref="S3.T1.8.8.8.4.m1.1.1.1"></times><cn id="S3.T1.8.8.8.4.m1.1.1.2.cmml" type="integer" xref="S3.T1.8.8.8.4.m1.1.1.2">2</cn><apply id="S3.T1.8.8.8.4.m1.1.1.3.cmml" xref="S3.T1.8.8.8.4.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.8.8.8.4.m1.1.1.3.1.cmml" xref="S3.T1.8.8.8.4.m1.1.1.3">superscript</csymbol><ci id="S3.T1.8.8.8.4.m1.1.1.3.2.cmml" xref="S3.T1.8.8.8.4.m1.1.1.3.2">𝑒</ci><apply id="S3.T1.8.8.8.4.m1.1.1.3.3.cmml" xref="S3.T1.8.8.8.4.m1.1.1.3.3"><minus id="S3.T1.8.8.8.4.m1.1.1.3.3.1.cmml" xref="S3.T1.8.8.8.4.m1.1.1.3.3"></minus><cn id="S3.T1.8.8.8.4.m1.1.1.3.3.2.cmml" type="integer" xref="S3.T1.8.8.8.4.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.8.8.4.m1.1c">2e^{-5}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.8.8.4.m1.1d">2 italic_e start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math>,<math alttext="2e^{-5}" class="ltx_Math" display="inline" id="S3.T1.9.9.9.5.m2.1"><semantics id="S3.T1.9.9.9.5.m2.1a"><mrow id="S3.T1.9.9.9.5.m2.1.1" xref="S3.T1.9.9.9.5.m2.1.1.cmml"><mn id="S3.T1.9.9.9.5.m2.1.1.2" xref="S3.T1.9.9.9.5.m2.1.1.2.cmml">2</mn><mo id="S3.T1.9.9.9.5.m2.1.1.1" xref="S3.T1.9.9.9.5.m2.1.1.1.cmml">⁢</mo><msup id="S3.T1.9.9.9.5.m2.1.1.3" xref="S3.T1.9.9.9.5.m2.1.1.3.cmml"><mi id="S3.T1.9.9.9.5.m2.1.1.3.2" xref="S3.T1.9.9.9.5.m2.1.1.3.2.cmml">e</mi><mrow id="S3.T1.9.9.9.5.m2.1.1.3.3" xref="S3.T1.9.9.9.5.m2.1.1.3.3.cmml"><mo id="S3.T1.9.9.9.5.m2.1.1.3.3a" xref="S3.T1.9.9.9.5.m2.1.1.3.3.cmml">−</mo><mn id="S3.T1.9.9.9.5.m2.1.1.3.3.2" xref="S3.T1.9.9.9.5.m2.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.9.9.9.5.m2.1b"><apply id="S3.T1.9.9.9.5.m2.1.1.cmml" xref="S3.T1.9.9.9.5.m2.1.1"><times id="S3.T1.9.9.9.5.m2.1.1.1.cmml" xref="S3.T1.9.9.9.5.m2.1.1.1"></times><cn id="S3.T1.9.9.9.5.m2.1.1.2.cmml" type="integer" xref="S3.T1.9.9.9.5.m2.1.1.2">2</cn><apply id="S3.T1.9.9.9.5.m2.1.1.3.cmml" xref="S3.T1.9.9.9.5.m2.1.1.3"><csymbol cd="ambiguous" id="S3.T1.9.9.9.5.m2.1.1.3.1.cmml" xref="S3.T1.9.9.9.5.m2.1.1.3">superscript</csymbol><ci id="S3.T1.9.9.9.5.m2.1.1.3.2.cmml" xref="S3.T1.9.9.9.5.m2.1.1.3.2">𝑒</ci><apply id="S3.T1.9.9.9.5.m2.1.1.3.3.cmml" xref="S3.T1.9.9.9.5.m2.1.1.3.3"><minus id="S3.T1.9.9.9.5.m2.1.1.3.3.1.cmml" xref="S3.T1.9.9.9.5.m2.1.1.3.3"></minus><cn id="S3.T1.9.9.9.5.m2.1.1.3.3.2.cmml" type="integer" xref="S3.T1.9.9.9.5.m2.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.9.9.5.m2.1c">2e^{-5}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.9.9.5.m2.1d">2 italic_e start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math>,<math alttext="2e^{-5}" class="ltx_Math" display="inline" id="S3.T1.10.10.10.6.m3.1"><semantics id="S3.T1.10.10.10.6.m3.1a"><mrow id="S3.T1.10.10.10.6.m3.1.1" xref="S3.T1.10.10.10.6.m3.1.1.cmml"><mn id="S3.T1.10.10.10.6.m3.1.1.2" xref="S3.T1.10.10.10.6.m3.1.1.2.cmml">2</mn><mo id="S3.T1.10.10.10.6.m3.1.1.1" xref="S3.T1.10.10.10.6.m3.1.1.1.cmml">⁢</mo><msup id="S3.T1.10.10.10.6.m3.1.1.3" xref="S3.T1.10.10.10.6.m3.1.1.3.cmml"><mi id="S3.T1.10.10.10.6.m3.1.1.3.2" xref="S3.T1.10.10.10.6.m3.1.1.3.2.cmml">e</mi><mrow id="S3.T1.10.10.10.6.m3.1.1.3.3" xref="S3.T1.10.10.10.6.m3.1.1.3.3.cmml"><mo id="S3.T1.10.10.10.6.m3.1.1.3.3a" xref="S3.T1.10.10.10.6.m3.1.1.3.3.cmml">−</mo><mn id="S3.T1.10.10.10.6.m3.1.1.3.3.2" xref="S3.T1.10.10.10.6.m3.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.10.10.10.6.m3.1b"><apply id="S3.T1.10.10.10.6.m3.1.1.cmml" xref="S3.T1.10.10.10.6.m3.1.1"><times id="S3.T1.10.10.10.6.m3.1.1.1.cmml" xref="S3.T1.10.10.10.6.m3.1.1.1"></times><cn id="S3.T1.10.10.10.6.m3.1.1.2.cmml" type="integer" xref="S3.T1.10.10.10.6.m3.1.1.2">2</cn><apply id="S3.T1.10.10.10.6.m3.1.1.3.cmml" xref="S3.T1.10.10.10.6.m3.1.1.3"><csymbol cd="ambiguous" id="S3.T1.10.10.10.6.m3.1.1.3.1.cmml" xref="S3.T1.10.10.10.6.m3.1.1.3">superscript</csymbol><ci id="S3.T1.10.10.10.6.m3.1.1.3.2.cmml" xref="S3.T1.10.10.10.6.m3.1.1.3.2">𝑒</ci><apply id="S3.T1.10.10.10.6.m3.1.1.3.3.cmml" xref="S3.T1.10.10.10.6.m3.1.1.3.3"><minus id="S3.T1.10.10.10.6.m3.1.1.3.3.1.cmml" xref="S3.T1.10.10.10.6.m3.1.1.3.3"></minus><cn id="S3.T1.10.10.10.6.m3.1.1.3.3.2.cmml" type="integer" xref="S3.T1.10.10.10.6.m3.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.10.10.10.6.m3.1c">2e^{-5}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.10.10.10.6.m3.1d">2 italic_e start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math>,-</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.11.11.11.7" style="padding:1pt 12.0pt;"><math alttext="1e^{-5}" class="ltx_Math" display="inline" id="S3.T1.11.11.11.7.m1.1"><semantics id="S3.T1.11.11.11.7.m1.1a"><mrow id="S3.T1.11.11.11.7.m1.1.1" xref="S3.T1.11.11.11.7.m1.1.1.cmml"><mn id="S3.T1.11.11.11.7.m1.1.1.2" xref="S3.T1.11.11.11.7.m1.1.1.2.cmml">1</mn><mo id="S3.T1.11.11.11.7.m1.1.1.1" xref="S3.T1.11.11.11.7.m1.1.1.1.cmml">⁢</mo><msup id="S3.T1.11.11.11.7.m1.1.1.3" xref="S3.T1.11.11.11.7.m1.1.1.3.cmml"><mi id="S3.T1.11.11.11.7.m1.1.1.3.2" xref="S3.T1.11.11.11.7.m1.1.1.3.2.cmml">e</mi><mrow id="S3.T1.11.11.11.7.m1.1.1.3.3" xref="S3.T1.11.11.11.7.m1.1.1.3.3.cmml"><mo id="S3.T1.11.11.11.7.m1.1.1.3.3a" xref="S3.T1.11.11.11.7.m1.1.1.3.3.cmml">−</mo><mn id="S3.T1.11.11.11.7.m1.1.1.3.3.2" xref="S3.T1.11.11.11.7.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.11.11.11.7.m1.1b"><apply id="S3.T1.11.11.11.7.m1.1.1.cmml" xref="S3.T1.11.11.11.7.m1.1.1"><times id="S3.T1.11.11.11.7.m1.1.1.1.cmml" xref="S3.T1.11.11.11.7.m1.1.1.1"></times><cn id="S3.T1.11.11.11.7.m1.1.1.2.cmml" type="integer" xref="S3.T1.11.11.11.7.m1.1.1.2">1</cn><apply id="S3.T1.11.11.11.7.m1.1.1.3.cmml" xref="S3.T1.11.11.11.7.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.11.11.11.7.m1.1.1.3.1.cmml" xref="S3.T1.11.11.11.7.m1.1.1.3">superscript</csymbol><ci id="S3.T1.11.11.11.7.m1.1.1.3.2.cmml" xref="S3.T1.11.11.11.7.m1.1.1.3.2">𝑒</ci><apply id="S3.T1.11.11.11.7.m1.1.1.3.3.cmml" xref="S3.T1.11.11.11.7.m1.1.1.3.3"><minus id="S3.T1.11.11.11.7.m1.1.1.3.3.1.cmml" xref="S3.T1.11.11.11.7.m1.1.1.3.3"></minus><cn id="S3.T1.11.11.11.7.m1.1.1.3.3.2.cmml" type="integer" xref="S3.T1.11.11.11.7.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.11.11.11.7.m1.1c">1e^{-5}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.11.11.11.7.m1.1d">1 italic_e start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.20.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T1.11.11.20.9.1" style="padding:1pt 12.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.20.9.1.1">Epoch</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.11.11.20.9.2" style="padding:1pt 12.0pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.11.11.20.9.3" style="padding:1pt 12.0pt;">1</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.11.11.20.9.4" style="padding:1pt 12.0pt;">1</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table details the hyperparameters and data used for training the Quicksviewer model across three stages: multimodal alignment, pre-training, and supervised fine-tuning.  For each stage, it specifies the resolution and frames per second (FPS) of the image and video data, the number of samples used for image-text and video-text training, the specific datasets employed (including their sizes), which model parameters were trained, the learning rate schedule including the initial learning rate, the learning rate decay, and the number of epochs trained.  The table offers a comprehensive overview of the training process, highlighting the different configurations and resources utilized at each stage.
> <details>
> <summary>read the caption</summary>
> Table 1: Detailed configuration for each training stage.
> </details>





### In-depth insights


#### Cube Compression
Cube compression, as a concept, likely addresses the challenge of reducing the computational burden associated with processing video data in large multimodal models (LMMs). Video, inherently high-dimensional, poses scalability issues due to temporal redundancy and the need for extensive processing. A 'cube,' in this context, probably represents a segment of video frames. Therefore, cube compression would involve techniques to reduce the dimensionality of these video segments while preserving essential information. This might entail **feature extraction, dimensionality reduction algorithms, or even learned compression techniques**. The goal is to represent each cube with fewer tokens or a more compact representation, facilitating efficient processing in subsequent LMM layers. The efficiency of cube compression is crucial for enabling LMMs to handle longer videos and achieve real-time performance without compromising accuracy.

#### Visual Lag
The "Visual Lag" phenomenon, as revealed in the paper through cube-based segmental comprehension, presents a fascinating insight into how the model processes video. It involves the **incorporation of terminal frames from preceding event scenes into cubes containing subsequent event scenes**, suggesting a form of retrospective understanding. This mechanism potentially allows the model to retain partial memory of preceding events, facilitating a more coherent current scene comprehension. This discovery is crucial as it highlights how the model **compensates for potential information loss inherent in segmented video processing** by strategically utilizing contextual information from the immediate past. The visual lag helps in retaining the temporal relation between the frames to provide comprehensive summary.

#### Gumbel Annealing
Gumbel annealing in the context of machine learning, particularly with Gumbel-Softmax, serves as a crucial strategy to balance exploration and exploitation during training. **The core idea is to gradually reduce the randomness introduced by the Gumbel noise.** Initially, a high level of noise encourages the model to explore a wider range of categorical choices, preventing it from settling into suboptimal solutions. As training progresses, the noise is annealed, allowing the model to refine its decision-making based on the learned parameters. **This is critical for achieving stable convergence and preventing oscillations in the loss function.** It enhances the stability by slowly shifting the distribution towards deterministic selections. **By carefully controlling the noise level over time, Gumbel annealing helps the model to effectively leverage its learned segmentation.**

#### Online Partition
The concept of "online partition" hints at a video processing strategy where the video stream is divided into segments dynamically, as the video is being processed, rather than pre-defining fixed segments. **This dynamic partitioning is crucial for efficient video analysis**, allowing the system to adapt to varying levels of activity or information density within the video. By analyzing video content in real-time, the system can intelligently decide where to create segment boundaries. **The key benefit of an online partition approach lies in its ability to optimize resource allocation.** It is more efficient than processing every frame uniformly. By focusing on active or interesting segments, the system can achieve significant computational savings without sacrificing the quality of video understanding. **Online partition enables LMMs to focus on sections where the density of information is high** and compress or skip segments with minimal changes. 

#### SOTA on VideoMME
Achieving State-of-the-Art (SOTA) performance on the Video-MME benchmark signifies a substantial advancement in video understanding. It indicates the model excels in tasks requiring temporal reasoning, object recognition, and contextual understanding within video content. A SOTA model likely employs innovative techniques for feature extraction and fusion, adeptly handling the challenges posed by variable frame rates, occlusions, and dynamic scenes. Further, such models compress the information. The key is a **high frame rate for understanding videos**. It means that the architecture is more efficient and have a large degree of encoding. A solid model could have a **SOTA preformance on a varity of tasks**.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.15270/x3.png)

> 🔼 This figure illustrates the architecture of Quicksviewer, a novel Large Multimodal Model (LMM) designed for efficient video understanding. The left panel depicts the overall network architecture. It shows how the model processes both images and videos, unifying them through visual tokens generated by cascaded modules.  These modules include a visual encoder, a cubing network (detailed in the right panel), a resampling layer, and finally an LLM. The right panel zooms in on the cubing network, the core innovation of Quicksviewer.  This network dynamically partitions online video streams into non-uniform cubes, each with a varying number of frames, according to temporal density and semantic differences between frames. This partitioning relies on the Gumbel-Softmax method, allowing the model to focus on areas of higher information density and compress the input video efficiently.
> <details>
> <summary>read the caption</summary>
> Figure 2: Left: The network architecture of Quicksviewer, that performs unified understanding of videos and images through visual tokens from cascaded modules. Right: The cubing network, that partitions an online video into nonuniform cubes based on Gumbel Softmax.
> </details>



![](https://arxiv.org/html/2504.15270/x4.png)

> 🔼 This figure is a composite showing two subfigures related to the performance of Quicksviewer on the Video-MME benchmark dataset.  (a) Left: A bar chart displays the accuracy of Quicksviewer across various domains and categories within Video-MME.  This illustrates the model's performance consistency and potential weaknesses across different video types. (b) Right: A histogram depicts the distribution of cube lengths generated by Quicksviewer's cubing mechanism for videos in the Video-MME dataset. This shows the frequency of various cube durations that the model employed.
> <details>
> <summary>read the caption</summary>
> Figure 3: (a) Left: Performance of Quicksviewer on particular domains and categories of Video-MME. (b) Right: Distribution of cube lengths across Video-MME videos.
> </details>



![](https://arxiv.org/html/2504.15270/x5.png)

> 🔼 Figure 4 illustrates the 'Visual Lag' phenomenon observed in the model's cube-based video comprehension.  Instead of processing each video segment in strict temporal order, the model incorporates frames from the end of previous segments into the current segment's processing.  This means that information from earlier events 'lags' and influences the understanding of subsequent events. The figure visually shows examples of this phenomenon, demonstrating how the model's understanding of a current scene is informed by contextual frames from previous scenes, leading to a more comprehensive, retrospective interpretation of the events.
> <details>
> <summary>read the caption</summary>
> Figure 4: The 'Visual Lag' phenomenon occurring during the model’s cube-based segmental comprehension, where current cubes incorporate terminal frames from preceding event scenes to enable retrospective understanding.
> </details>



![](https://arxiv.org/html/2504.15270/x6.png)

> 🔼 Figure 5 presents two graphs illustrating the impact of Gumbel noise annealing during training. The left graph (a) shows how Gumbel noise decreases from 1.0 to 0.001 over the training steps, following a cosine annealing schedule synchronized with the learning rate decay.  This controlled reduction of randomness ensures that exploration is emphasized in early training stages, while later stages focus on exploitation of already learned patterns. The right graph (b) compares the loss convergence of models trained with and without Gumbel noise annealing. It reveals that using the annealing technique leads to more stable and improved loss convergence compared to models without it. The smoother, faster descent in the annealed case (purple curve) indicates that the controlled randomness from the annealing process helps avoid oscillations and promotes more efficient learning and generalization.
> <details>
> <summary>read the caption</summary>
> Figure 5: (a) Left: Gumbel noise progressively anneals to 0.001 following the decaying learning rate with cosine scheduler. (b) Right: Compared to non-annealed training (cyan curve), adding Gumbel noise annealing (purple curve) yields more stable and superior loss convergence.
> </details>



![](https://arxiv.org/html/2504.15270/extracted/6378287/imgs/train-loss-wo-anneal.png)

> 🔼 Figure 6 presents qualitative results showcasing Quicksviewer's capabilities in understanding various types of visual content.  The examples demonstrate the model's ability to accurately comprehend and respond to questions about lengthy documentary videos (a penguin encounter), sports videos (a lacrosse match), and informative single and multi-image inputs (various diagrams and photos).  It highlights the model's proficiency in identifying key events, extracting relevant details, and providing coherent answers across diverse video and image types.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative analysis showns that Quicksviewer effectively understands lengthy documentary and sports videos, as well as informative single and multiple images.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T4.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T4.2.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A1.T4.2.1.1.1" style="padding:1.8pt 8.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.2.1.1.1.1" style="font-size:90%;">Modality</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A1.T4.2.1.1.2" style="padding:1.8pt 8.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.2.1.1.2.1" style="font-size:90%;">Task</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.2.1.1.3" style="padding:1.8pt 8.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.2.1.1.3.1" style="font-size:90%;"># Samples</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.2.1.1.4" style="padding:1.8pt 8.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.2.1.1.4.1" style="font-size:90%;">Dataset</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.2.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T4.2.2.1.1" rowspan="2" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T4.2.2.1.1.1" style="font-size:90%;">Image-Text</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T4.2.2.1.2" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T4.2.2.1.2.1" style="font-size:90%;">Interleaved Pairs</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.2.2.1.3" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T4.2.2.1.3.1" style="font-size:90%;">20K</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.2.2.1.4" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T4.2.2.1.4.1" style="font-size:90%;">OBELICS</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.2.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T4.2.3.2.1" style="background-color:#F2F2F2;padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T4.2.3.2.1.1" style="font-size:90%;background-color:#F2F2F2;">Single-Image Captioning</span></th>
<td class="ltx_td ltx_align_center" id="A1.T4.2.3.2.2" style="background-color:#F2F2F2;padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T4.2.3.2.2.1" style="font-size:90%;background-color:#F2F2F2;">558K</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.3.2.3" style="background-color:#F2F2F2;padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T4.2.3.2.3.1" style="font-size:90%;background-color:#F2F2F2;">LCS</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.2.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="A1.T4.2.4.3.1" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T4.2.4.3.1.1" style="font-size:90%;">Video-Text</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="A1.T4.2.4.3.2" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T4.2.4.3.2.1" style="font-size:90%;">Captioning</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T4.2.4.3.3" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T4.2.4.3.3.1" style="font-size:90%;">95K</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T4.2.4.3.4" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T4.2.4.3.4.1" style="font-size:90%;">FineVideoCaptions, ANetCaptions</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comparison of video benchmarking results between Quicksviewer and several baseline models.  The comparison is made under conditions where the total sequence length is kept relatively consistent across all models.  Key findings highlight that Quicksviewer achieves state-of-the-art (SOTA) performance on multiple video understanding benchmarks while utilizing significantly fewer tokens per frame (up to 5% of the tokens used by baseline models).  Furthermore, Quicksviewer requires substantially less video-text training data compared to the baseline models, showcasing its efficiency and effectiveness.
> <details>
> <summary>read the caption</summary>
> Table 2: Video benchmarking results between Quicksviewr and baselines under comparable total sequence length. Quicksviewer achieves multiple SOTA performance while using fewer tokens per frame (up to 5% of baseline) and substantially less video-text training samples.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T5.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.2.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="A1.T5.2.1.1.1" style="padding:1.8pt 8.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.2.1.1.1.1" style="font-size:90%;">Modality</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="A1.T5.2.1.1.2" style="padding:1.8pt 8.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.2.1.1.2.1" style="font-size:90%;">Task</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.2.1.1.3" style="padding:1.8pt 8.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.2.1.1.3.1" style="font-size:90%;"># Samples</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.2.1.1.4" style="padding:1.8pt 8.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.2.1.1.4.1" style="font-size:90%;">Dataset</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T5.2.2.2.1" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T5.2.2.2.1.1" style="font-size:90%;">Text</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T5.2.2.2.2" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T5.2.2.2.2.1" style="font-size:90%;">Instruction</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.2.2.3" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T5.2.2.2.3.1" style="font-size:90%;">93K</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.2.2.4" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T5.2.2.2.4.1" style="font-size:90%;">Evo-Instruct</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T5.2.3.3.1" rowspan="3" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T5.2.3.3.1.1" style="font-size:90%;">Image-Text</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T5.2.3.3.2" style="background-color:#F2F2F2;padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T5.2.3.3.2.1" style="font-size:90%;background-color:#F2F2F2;">Interleaved Pairs</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.3.3.3" style="background-color:#F2F2F2;padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T5.2.3.3.3.1" style="font-size:90%;background-color:#F2F2F2;">20K</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.3.3.4" style="background-color:#F2F2F2;padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T5.2.3.3.4.1" style="font-size:90%;background-color:#F2F2F2;">OBELICS</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T5.2.4.4.1" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T5.2.4.4.1.1" style="font-size:90%;">Single-Image Captioning</span></th>
<td class="ltx_td ltx_align_center" id="A1.T5.2.4.4.2" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T5.2.4.4.2.1" style="font-size:90%;">50K</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.4.4.3" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T5.2.4.4.3.1" style="font-size:90%;">LCS</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T5.2.5.5.1" style="background-color:#F2F2F2;padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T5.2.5.5.1.1" style="font-size:90%;background-color:#F2F2F2;">Single-Image Tasks</span></th>
<td class="ltx_td ltx_align_center" id="A1.T5.2.5.5.2" style="background-color:#F2F2F2;padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T5.2.5.5.2.1" style="font-size:90%;background-color:#F2F2F2;">2.8M</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.5.5.3" style="background-color:#F2F2F2;padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T5.2.5.5.3.1" style="font-size:90%;background-color:#F2F2F2;">LLaVAOneVision</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="A1.T5.2.6.6.1" rowspan="3" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T5.2.6.6.1.1" style="font-size:90%;">Video-Text</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T5.2.6.6.2" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T5.2.6.6.2.1" style="font-size:90%;">Captioning</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.6.6.3" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T5.2.6.6.3.1" style="font-size:90%;">5K</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.6.6.4" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T5.2.6.6.4.1" style="font-size:90%;">FineVideoCaptions, AnetCaptions</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T5.2.7.7.1" style="background-color:#F2F2F2;padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T5.2.7.7.1.1" style="font-size:90%;background-color:#F2F2F2;">VQA</span></th>
<td class="ltx_td ltx_align_center" id="A1.T5.2.7.7.2" style="background-color:#F2F2F2;padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T5.2.7.7.2.1" style="font-size:90%;">75K</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.7.7.3" style="background-color:#F2F2F2;padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T5.2.7.7.3.1" style="font-size:90%;background-color:#F2F2F2;">FineVideoQAs</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A1.T5.2.8.8.1" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T5.2.8.8.1.1" style="font-size:90%;">Dense Captioning</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.2.8.8.2" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T5.2.8.8.2.1" style="font-size:90%;">38K</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.2.8.8.3" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T5.2.8.8.3.1" style="font-size:90%;">ShareGPT4Video</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of different components in the Quicksviewer model on its performance.  The model was initialized using a checkpoint trained only on image data from stages 1 and 2.  The table shows the results of training stage 3 with various configurations, including different positional encoding (2D vs. 3D), whether the full visual transformer (ViT) was used or just the first two layers, different penalty weights for auxiliary loss, and whether Gumbel noise annealing was used. The results demonstrate that 3D positional encoding, Gumbel noise annealing with a 0.001 penalty weight, and training all parameters (full trainable parameters) yields the best performance.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation results of Stage-3 training initialized from a checkpoint pretrained only with image data (Stage 1-2). The optimal configuration: 3D positional encoding, Gumbel noise annealing with 0.001 penalty weight, and full trainable parameters, demonstrating superior performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T6.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T6.2.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="A1.T6.2.1.1.1" style="padding:1.8pt 8.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.2.1.1.1.1" style="font-size:90%;">Modality</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="A1.T6.2.1.1.2" style="padding:1.8pt 8.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.2.1.1.2.1" style="font-size:90%;">Task</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.2.1.1.3" style="padding:1.8pt 8.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.2.1.1.3.1" style="font-size:90%;"># Samples</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.2.1.1.4" style="padding:1.8pt 8.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.2.1.1.4.1" style="font-size:90%;">Dataset</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T6.2.2.2.1" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T6.2.2.2.1.1" style="font-size:90%;">Text</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T6.2.2.2.2" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T6.2.2.2.2.1" style="font-size:90%;">Instruction</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.2.2.2.3" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T6.2.2.2.3.1" style="font-size:90%;">9K</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.2.2.2.4" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T6.2.2.2.4.1" style="font-size:90%;">Evo-Instruct</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T6.2.3.3.1" rowspan="2" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T6.2.3.3.1.1" style="font-size:90%;">Image-Text</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T6.2.3.3.2" style="background-color:#F2F2F2;padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T6.2.3.3.2.1" style="font-size:90%;background-color:#F2F2F2;">Single-Image Tasks</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.2.3.3.3" style="background-color:#F2F2F2;padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T6.2.3.3.3.1" style="font-size:90%;background-color:#F2F2F2;">40K</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.2.3.3.4" style="background-color:#F2F2F2;padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T6.2.3.3.4.1" style="font-size:90%;background-color:#F2F2F2;">LLaVA-OneVision-SingleImage</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T6.2.4.4.1" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T6.2.4.4.1.1" style="font-size:90%;">Multi-Images Tasks</span></th>
<td class="ltx_td ltx_align_center" id="A1.T6.2.4.4.2" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T6.2.4.4.2.1" style="font-size:90%;">100K</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.2.4.4.3" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T6.2.4.4.3.1" style="font-size:90%;">LLaVA-OneVision-MultiImages</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="A1.T6.2.5.5.1" rowspan="5" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T6.2.5.5.1.1" style="font-size:90%;">Video-Text</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T6.2.5.5.2" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T6.2.5.5.2.1" style="font-size:90%;">Captioning</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.2.5.5.3" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T6.2.5.5.3.1" style="font-size:90%;">52K</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.2.5.5.4" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T6.2.5.5.4.1" style="font-size:90%;">TextVR, MovieChat, YouCook2</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T6.2.6.6.1" style="background-color:#F2F2F2;padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T6.2.6.6.1.1" style="font-size:90%;background-color:#F2F2F2;">Dense Captioning</span></th>
<td class="ltx_td ltx_align_center" id="A1.T6.2.6.6.2" style="background-color:#F2F2F2;padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T6.2.6.6.2.1" style="font-size:90%;">4K</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.2.6.6.3" style="background-color:#F2F2F2;padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T6.2.6.6.3.1" style="font-size:90%;background-color:#F2F2F2;">ShareGPT4Video</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T6.2.7.7.1" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T6.2.7.7.1.1" style="font-size:90%;">Classification</span></th>
<td class="ltx_td ltx_align_center" id="A1.T6.2.7.7.2" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T6.2.7.7.2.1" style="font-size:90%;">1K</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.2.7.7.3" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T6.2.7.7.3.1" style="font-size:90%;">Kinetics-710</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T6.2.8.8.1" style="background-color:#F2F2F2;padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T6.2.8.8.1.1" style="font-size:90%;background-color:#F2F2F2;">VQA</span></th>
<td class="ltx_td ltx_align_center" id="A1.T6.2.8.8.2" style="background-color:#F2F2F2;padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T6.2.8.8.2.1" style="font-size:90%;background-color:#F2F2F2;">354K</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.2.8.8.3" style="background-color:#F2F2F2;padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T6.2.8.8.3.1" style="font-size:90%;background-color:#F2F2F2;">
<span class="ltx_tabular ltx_align_middle" id="A1.T6.2.8.8.3.1.1">
<span class="ltx_tr" id="A1.T6.2.8.8.3.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T6.2.8.8.3.1.1.1.1" style="padding:1.8pt 8.5pt;">     NExT-QA, CLEVRER, EgoQA</span></span>
<span class="ltx_tr" id="A1.T6.2.8.8.3.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T6.2.8.8.3.1.1.2.1" style="padding:1.8pt 8.5pt;">TGIF, ShareGPTVideo, FineVideoQAs</span></span>
</span></span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.9.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A1.T6.2.9.9.1" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T6.2.9.9.1.1" style="font-size:90%;">Instruction</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.2.9.9.2" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T6.2.9.9.2.1" style="font-size:90%;">188K</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.2.9.9.3" style="padding:1.8pt 8.5pt;"><span class="ltx_text" id="A1.T6.2.9.9.3.1" style="font-size:90%;">VideoChatGPT, VideoChat, LongVILA</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the training data used in the alignment stage of the Quicksviewer model training. It breaks down the data by modality (Image-Text and Video-Text), the specific task performed (interleaved pairs, single-image captioning, and captioning), the number of samples used for each task, and the dataset source for those samples.  This stage focuses on establishing fundamental alignment between the visual encoder and LLM backbones through in-context learning.
> <details>
> <summary>read the caption</summary>
> Table 4: Training data statistics for the alignment stage.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.15270/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15270/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15270/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15270/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15270/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15270/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15270/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15270/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15270/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15270/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15270/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15270/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15270/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15270/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15270/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15270/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15270/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}