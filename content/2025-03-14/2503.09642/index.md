---
title: "Open-Sora 2.0: Training a Commercial-Level Video Generation Model in $200k"
summary: "Open-Sora 2.0: A commercial-level video generation model trained for only $200k, achieving comparable results to state-of-the-art models."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 HPC-AI Tech",]
showSummary: true
date: 2025-03-12
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.09642 {{< /keyword >}}
{{< keyword icon="writer" >}} Xiangyu Peng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.09642" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.09642" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.09642/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Video generation models have advanced rapidly, demanding larger models, more data, and greater compute. This paper addresses this by presenting **Open-Sora 2.0, a commercial-level video generation model trained for only $200k.** The model employs techniques like data curation, model architecture improvements, training strategy adjustments, and system optimization to achieve cost efficiency. Human evaluations and VBench scores show that Open-Sora 2.0 is comparable to top models like HunyuanVideo and Runway Gen-3 Alpha. 



The authors detail their data strategy, including hierarchical filtering and annotation methods. The model architecture features a **Video DC-AE autoencoder and DiT architecture**. A cost-effective training methodology enables commercial-level quality at a low cost, with conditioning approaches including image-to-video and motion control. System optimizations maximize training efficiency. Open-Sora 2.0 outperforms other top models in visual quality, prompt adherence and motion quality, demonstrating its potential for commercial use.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A commercial-level video generation model can be trained at a significantly reduced cost ($200k) by optimizing data curation, model architecture, training strategy, and system optimization. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Open-Sora 2.0 achieves comparable performance to leading video generation models like HunyuanVideo and Runway Gen-3 Alpha, despite its lower training cost. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The model utilizes a novel Video DC-AE and a hybrid transformer architecture with techniques like 3D RoPE to enhance video generation quality and efficiency. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it presents a cost-effective approach to video generation, making high-quality video creation more accessible. The model's open-source nature fosters innovation and opens new avenues for research in video generation, artifact prevention, and enhanced content control. The method's efficiency optimization is highly relevant to current trends.

------
#### Visual Insights



![](https://arxiv.org/html/2503.09642/x9.png)

> 🔼 This figure displays the results of a human preference evaluation comparing Open-Sora 2.0's video generation capabilities against several leading competitors.  The evaluation involved 100 diverse prompts carefully selected to assess three key aspects of video generation: visual quality, prompt adherence (how well the generated video reflects the prompt), and motion quality (smoothness and realism of movement).  The 'win rate' for Open-Sora 2.0 is presented as the percentage of times it was preferred over each competing model for each aspect.  The results visually demonstrate that Open-Sora 2.0 performs favorably overall.
> <details>
> <summary>read the caption</summary>
> Figure 1: Human preference evaluation of Open-Sora 2.0 against other leading video generation models. Win rate represents the percentage of comparisons where our model was preferred over the competing model. The evaluation is conducted on 100 prompts carefully designed to cover three key aspects: 1) visual quality, 2) prompt adherence, and 3) motion quality. Results show that our model performs favorably against other top-performing models in all three aspects.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.10.10">
<tr class="ltx_tr" id="S3.T1.10.10.11">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.10.10.11.1">Model</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.10.10.11.2">Down. (TxHxW)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.10.10.11.3">Info. Down.</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.10.10.11.4">Channel</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.10.10.11.5">Causal</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.10.10.11.6">LPIPS↓</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.10.10.11.7">PSNR↑</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.10.10.11.8">SSIM↑</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.2.2.3">Open Sora 1.2 <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">zheng2024open</span>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.1.1"><math alttext="4\times 8\times 8" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.m1.1a"><mrow id="S3.T1.1.1.1.1.m1.1.1" xref="S3.T1.1.1.1.1.m1.1.1.cmml"><mn id="S3.T1.1.1.1.1.m1.1.1.2" xref="S3.T1.1.1.1.1.m1.1.1.2.cmml">4</mn><mo id="S3.T1.1.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.T1.1.1.1.1.m1.1.1.1.cmml">×</mo><mn id="S3.T1.1.1.1.1.m1.1.1.3" xref="S3.T1.1.1.1.1.m1.1.1.3.cmml">8</mn><mo id="S3.T1.1.1.1.1.m1.1.1.1a" lspace="0.222em" rspace="0.222em" xref="S3.T1.1.1.1.1.m1.1.1.1.cmml">×</mo><mn id="S3.T1.1.1.1.1.m1.1.1.4" xref="S3.T1.1.1.1.1.m1.1.1.4.cmml">8</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.m1.1b"><apply id="S3.T1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1"><times id="S3.T1.1.1.1.1.m1.1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1.1"></times><cn id="S3.T1.1.1.1.1.m1.1.1.2.cmml" type="integer" xref="S3.T1.1.1.1.1.m1.1.1.2">4</cn><cn id="S3.T1.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S3.T1.1.1.1.1.m1.1.1.3">8</cn><cn id="S3.T1.1.1.1.1.m1.1.1.4.cmml" type="integer" xref="S3.T1.1.1.1.1.m1.1.1.4">8</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.m1.1c">4\times 8\times 8</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.m1.1d">4 × 8 × 8</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.4">192</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.5">4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.2"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S3.T1.2.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.2.m1.1a"><mi id="S3.T1.2.2.2.2.m1.1.1" mathvariant="normal" xref="S3.T1.2.2.2.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.2.m1.1b"><ci id="S3.T1.2.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.2.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.6">0.161</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.7">27.504</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.2.2.2.8">0.756</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.4">
<td class="ltx_td ltx_align_left" id="S3.T1.4.4.4.3">StepVideo VAE <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">ma2025step</span>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.3.3.3.1"><math alttext="8\times 16\times 16" class="ltx_Math" display="inline" id="S3.T1.3.3.3.1.m1.1"><semantics id="S3.T1.3.3.3.1.m1.1a"><mrow id="S3.T1.3.3.3.1.m1.1.1" xref="S3.T1.3.3.3.1.m1.1.1.cmml"><mn id="S3.T1.3.3.3.1.m1.1.1.2" xref="S3.T1.3.3.3.1.m1.1.1.2.cmml">8</mn><mo id="S3.T1.3.3.3.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.T1.3.3.3.1.m1.1.1.1.cmml">×</mo><mn id="S3.T1.3.3.3.1.m1.1.1.3" xref="S3.T1.3.3.3.1.m1.1.1.3.cmml">16</mn><mo id="S3.T1.3.3.3.1.m1.1.1.1a" lspace="0.222em" rspace="0.222em" xref="S3.T1.3.3.3.1.m1.1.1.1.cmml">×</mo><mn id="S3.T1.3.3.3.1.m1.1.1.4" xref="S3.T1.3.3.3.1.m1.1.1.4.cmml">16</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.1.m1.1b"><apply id="S3.T1.3.3.3.1.m1.1.1.cmml" xref="S3.T1.3.3.3.1.m1.1.1"><times id="S3.T1.3.3.3.1.m1.1.1.1.cmml" xref="S3.T1.3.3.3.1.m1.1.1.1"></times><cn id="S3.T1.3.3.3.1.m1.1.1.2.cmml" type="integer" xref="S3.T1.3.3.3.1.m1.1.1.2">8</cn><cn id="S3.T1.3.3.3.1.m1.1.1.3.cmml" type="integer" xref="S3.T1.3.3.3.1.m1.1.1.3">16</cn><cn id="S3.T1.3.3.3.1.m1.1.1.4.cmml" type="integer" xref="S3.T1.3.3.3.1.m1.1.1.4">16</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.1.m1.1c">8\times 16\times 16</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.1.m1.1d">8 × 16 × 16</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.4">96</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.5">64</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.2"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S3.T1.4.4.4.2.m1.1"><semantics id="S3.T1.4.4.4.2.m1.1a"><mi id="S3.T1.4.4.4.2.m1.1.1" mathvariant="normal" xref="S3.T1.4.4.4.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.2.m1.1b"><ci id="S3.T1.4.4.4.2.m1.1.1.cmml" xref="S3.T1.4.4.4.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.2.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.6">0.082</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.7">28.719</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.4.4.4.8">0.818</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.6">
<td class="ltx_td ltx_align_left" id="S3.T1.6.6.6.3">HunyuanVideo VAE <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">kong2024hunyuanvideo</span>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.5.5.5.1"><math alttext="4\times 8\times 8" class="ltx_Math" display="inline" id="S3.T1.5.5.5.1.m1.1"><semantics id="S3.T1.5.5.5.1.m1.1a"><mrow id="S3.T1.5.5.5.1.m1.1.1" xref="S3.T1.5.5.5.1.m1.1.1.cmml"><mn id="S3.T1.5.5.5.1.m1.1.1.2" xref="S3.T1.5.5.5.1.m1.1.1.2.cmml">4</mn><mo id="S3.T1.5.5.5.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.T1.5.5.5.1.m1.1.1.1.cmml">×</mo><mn id="S3.T1.5.5.5.1.m1.1.1.3" xref="S3.T1.5.5.5.1.m1.1.1.3.cmml">8</mn><mo id="S3.T1.5.5.5.1.m1.1.1.1a" lspace="0.222em" rspace="0.222em" xref="S3.T1.5.5.5.1.m1.1.1.1.cmml">×</mo><mn id="S3.T1.5.5.5.1.m1.1.1.4" xref="S3.T1.5.5.5.1.m1.1.1.4.cmml">8</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.1.m1.1b"><apply id="S3.T1.5.5.5.1.m1.1.1.cmml" xref="S3.T1.5.5.5.1.m1.1.1"><times id="S3.T1.5.5.5.1.m1.1.1.1.cmml" xref="S3.T1.5.5.5.1.m1.1.1.1"></times><cn id="S3.T1.5.5.5.1.m1.1.1.2.cmml" type="integer" xref="S3.T1.5.5.5.1.m1.1.1.2">4</cn><cn id="S3.T1.5.5.5.1.m1.1.1.3.cmml" type="integer" xref="S3.T1.5.5.5.1.m1.1.1.3">8</cn><cn id="S3.T1.5.5.5.1.m1.1.1.4.cmml" type="integer" xref="S3.T1.5.5.5.1.m1.1.1.4">8</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.1.m1.1c">4\times 8\times 8</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.1.m1.1d">4 × 8 × 8</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6.4">48</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6.5">16</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6.2"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S3.T1.6.6.6.2.m1.1"><semantics id="S3.T1.6.6.6.2.m1.1a"><mi id="S3.T1.6.6.6.2.m1.1.1" mathvariant="normal" xref="S3.T1.6.6.6.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.6.2.m1.1b"><ci id="S3.T1.6.6.6.2.m1.1.1.cmml" xref="S3.T1.6.6.6.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.6.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.6.2.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6.6"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.6.6.1">0.046</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6.7">30.240</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.6.6.6.8">0.856</td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8.8" style="background-color:#FFFF00;">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.8.8.8.3"><span class="ltx_text" id="S3.T1.8.8.8.3.1" style="background-color:#FFFF00;">Video DC-AE</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.7.7.7.1"><math alttext="4\times 32\times 32" class="ltx_Math" display="inline" id="S3.T1.7.7.7.1.m1.1" style="background-color:#FFFF00;"><semantics id="S3.T1.7.7.7.1.m1.1a"><mrow id="S3.T1.7.7.7.1.m1.1.1" xref="S3.T1.7.7.7.1.m1.1.1.cmml"><mn id="S3.T1.7.7.7.1.m1.1.1.2" mathbackground="#FFFF00" xref="S3.T1.7.7.7.1.m1.1.1.2.cmml">4</mn><mo id="S3.T1.7.7.7.1.m1.1.1.1" lspace="0.222em" mathbackground="#FFFF00" rspace="0.222em" xref="S3.T1.7.7.7.1.m1.1.1.1.cmml">×</mo><mn id="S3.T1.7.7.7.1.m1.1.1.3" mathbackground="#FFFF00" xref="S3.T1.7.7.7.1.m1.1.1.3.cmml">32</mn><mo id="S3.T1.7.7.7.1.m1.1.1.1a" lspace="0.222em" mathbackground="#FFFF00" rspace="0.222em" xref="S3.T1.7.7.7.1.m1.1.1.1.cmml">×</mo><mn id="S3.T1.7.7.7.1.m1.1.1.4" mathbackground="#FFFF00" xref="S3.T1.7.7.7.1.m1.1.1.4.cmml">32</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.7.7.7.1.m1.1b"><apply id="S3.T1.7.7.7.1.m1.1.1.cmml" xref="S3.T1.7.7.7.1.m1.1.1"><times id="S3.T1.7.7.7.1.m1.1.1.1.cmml" xref="S3.T1.7.7.7.1.m1.1.1.1"></times><cn id="S3.T1.7.7.7.1.m1.1.1.2.cmml" type="integer" xref="S3.T1.7.7.7.1.m1.1.1.2">4</cn><cn id="S3.T1.7.7.7.1.m1.1.1.3.cmml" type="integer" xref="S3.T1.7.7.7.1.m1.1.1.3">32</cn><cn id="S3.T1.7.7.7.1.m1.1.1.4.cmml" type="integer" xref="S3.T1.7.7.7.1.m1.1.1.4">32</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.7.7.1.m1.1c">4\times 32\times 32</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.7.7.1.m1.1d">4 × 32 × 32</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.8.4"><span class="ltx_text" id="S3.T1.8.8.8.4.1" style="background-color:#FFFF00;">96</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.8.5"><span class="ltx_text" id="S3.T1.8.8.8.5.1" style="background-color:#FFFF00;">128</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.8.2"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.8.8.8.2.m1.1" style="background-color:#FFFF00;"><semantics id="S3.T1.8.8.8.2.m1.1a"><mo id="S3.T1.8.8.8.2.m1.1.1" mathbackground="#FFFF00" xref="S3.T1.8.8.8.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.8.8.8.2.m1.1b"><times id="S3.T1.8.8.8.2.m1.1.1.cmml" xref="S3.T1.8.8.8.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.8.8.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.8.8.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.8.6"><span class="ltx_text" id="S3.T1.8.8.8.6.1" style="background-color:#FFFF00;">0.051</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.8.7"><span class="ltx_text" id="S3.T1.8.8.8.7.1" style="background-color:#FFFF00;">30.538</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.8.8.8.8"><span class="ltx_text" id="S3.T1.8.8.8.8.1" style="background-color:#FFFF00;">0.863</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.10.10.10">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.10.10.10.3">Video DC-AE</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.9.9.9.1"><math alttext="4\times 32\times 32" class="ltx_Math" display="inline" id="S3.T1.9.9.9.1.m1.1"><semantics id="S3.T1.9.9.9.1.m1.1a"><mrow id="S3.T1.9.9.9.1.m1.1.1" xref="S3.T1.9.9.9.1.m1.1.1.cmml"><mn id="S3.T1.9.9.9.1.m1.1.1.2" xref="S3.T1.9.9.9.1.m1.1.1.2.cmml">4</mn><mo id="S3.T1.9.9.9.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.T1.9.9.9.1.m1.1.1.1.cmml">×</mo><mn id="S3.T1.9.9.9.1.m1.1.1.3" xref="S3.T1.9.9.9.1.m1.1.1.3.cmml">32</mn><mo id="S3.T1.9.9.9.1.m1.1.1.1a" lspace="0.222em" rspace="0.222em" xref="S3.T1.9.9.9.1.m1.1.1.1.cmml">×</mo><mn id="S3.T1.9.9.9.1.m1.1.1.4" xref="S3.T1.9.9.9.1.m1.1.1.4.cmml">32</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.9.9.9.1.m1.1b"><apply id="S3.T1.9.9.9.1.m1.1.1.cmml" xref="S3.T1.9.9.9.1.m1.1.1"><times id="S3.T1.9.9.9.1.m1.1.1.1.cmml" xref="S3.T1.9.9.9.1.m1.1.1.1"></times><cn id="S3.T1.9.9.9.1.m1.1.1.2.cmml" type="integer" xref="S3.T1.9.9.9.1.m1.1.1.2">4</cn><cn id="S3.T1.9.9.9.1.m1.1.1.3.cmml" type="integer" xref="S3.T1.9.9.9.1.m1.1.1.3">32</cn><cn id="S3.T1.9.9.9.1.m1.1.1.4.cmml" type="integer" xref="S3.T1.9.9.9.1.m1.1.1.4">32</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.9.9.1.m1.1c">4\times 32\times 32</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.9.9.1.m1.1d">4 × 32 × 32</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.10.10.10.4">48</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.10.10.10.5">256</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.10.10.10.2"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.10.10.10.2.m1.1"><semantics id="S3.T1.10.10.10.2.m1.1a"><mo id="S3.T1.10.10.10.2.m1.1.1" xref="S3.T1.10.10.10.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.10.10.10.2.m1.1b"><times id="S3.T1.10.10.10.2.m1.1.1.cmml" xref="S3.T1.10.10.10.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.10.10.10.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.10.10.10.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.10.10.10.6">0.049</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.10.10.10.7"><span class="ltx_text ltx_font_bold" id="S3.T1.10.10.10.7.1">30.777</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.10.10.10.8"><span class="ltx_text ltx_font_bold" id="S3.T1.10.10.10.8.1">0.872</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares the reconstruction performance of several autoencoders, including the Hunyuan Video VAE, StepVideo VAE, Open Sora 1.2, and the proposed Video DC-AE.  The metrics used for comparison are LPIPS, PSNR, and SSIM, all of which evaluate the quality of the reconstruction.  The table highlights the superior performance of Video DC-AE, especially the model with 4 x 32 x 32 downsampling and 256 channels, which is chosen for adaptation in the video generation model.  The choice is indicated visually by a yellow background highlighting the superior row.
> <details>
> <summary>read the caption</summary>
> Table 1: Auto-encoder reconstruction performance comparison. The Video DC-AE highlighted with yellow background is selected for generative model adaptation.
> </details>





### In-depth insights


#### Cost-Eff. Training
A cost-effective training strategy is crucial for democratizing access to video generation. The Open-Sora paper tackles this by focusing on four key aspects: **leveraging open-source image models** for pre-training to accelerate video model training and avoid the expense of training an image model from scratch; **using high-quality data** that enhance training efficiency by prioritizing a curated subset and implementing strict selection for superior video quality; **learning motion in low-resolution** to reduce the cost of training with 256px resolution videos, allowing the model to efficiently learn diverse motion patterns; **utilizing image-to-video model** that focuses more on motion generation and minimizes the need for expensive high-resolution computations.

#### DC-AE Details
**Video DC-AE** builds upon established techniques. **Chen et al's DC-AE approach**, focusing on high downsampling while retaining reconstruction fidelity, guides their architectural choices. Unlike the original DC-AE primarily for images, **temporal compression** is added through 3D operations and temporal up/downsampling in specific encoder/decoder blocks. Addressing gradient propagation issues during training, special residual blocks are incorporated. The model's performance is evaluated with comparisons to existing autoencoders like HunyuanVideo VAE and Step Video VAE.

#### Scaling Guidance
The paper introduces a dynamic image guidance scaling strategy to balance image and text guidance during video generation. Since image condition primarily applies to the first frame, stronger image guidance is needed for later frames to maintain coherence. Conversely, as denoising progresses, the video scene solidifies, diminishing the need for image guidance. To address flickering, the paper alternates the image guidance scale during denoising. **Dynamic adjustment of gimg based on frame index and denoising step optimizes both motion fidelity and semantic accuracy**. This balances stability and motion consistency.

#### Multi-Bucket Training
**Multi-bucket training** is a valuable technique for handling diverse data within the same batch, improving GPU utilization. By dynamically assigning batch sizes based on video characteristics such as frame count, resolution, and aspect ratio, it optimizes resource allocation. The process involves identifying the maximum batch size that avoids out-of-memory errors and adjusting other batch sizes accordingly, while also enforcing constraints on execution time. This strategy ensures efficient and scalable training across diverse video data distributions, maximizing hardware efficiency and improving overall training performance.

#### Future AE Work
Future work in autoencoder (AE) development for video generation should prioritize **optimizing latent space structures**, as current training frameworks struggle when channel sizes increase. While reconstruction ability is important, a **well-structured latent space** is more critical for effective video synthesis. High-compression AEs trained at low resolutions experience performance degradation when reconstructing high-resolution videos [9]. Although we could have fine-tuned the Video DC-AE at high resolutions, we re-use the tiling code by Kong et al. [19] to save training resources. Additionally, Designing **high-throughput autoencoders** to mitigate the computational bottleneck in generation models using high-compression is essential. These improvements would pave the way for higher-quality, more efficient end-to-end video generation, particularly for high-resolution videos containing substantial redundancy. 


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.09642/x10.png)

> 🔼 The figure illustrates the hierarchical data filtering pipeline used for video data preprocessing.  Raw videos are initially transformed into shorter, trainable video clips. Then, a series of complementary filters are sequentially applied.  These filters assess different aspects of video quality (aesthetic score, motion score, blurriness, presence of text, and camera jitter) and progressively remove lower-quality data. This process creates a data pyramid with smaller, higher-quality datasets at each stage that are then used for different phases of the video generation model training.
> <details>
> <summary>read the caption</summary>
> Figure 2: The hierarchical data filtering pipeline. The raw videos are first transformed into trainable video clips. Then, we apply various complimentary score filters to obtain data subsets for each training stage.
> </details>



![](https://arxiv.org/html/2503.09642/x11.png)

> 🔼 This figure presents the distribution of key attributes within the video dataset used to train the Open-Sora 2.0 video generation model.  It showcases the statistical distribution of aesthetic scores (a measure of visual appeal), video durations (in seconds), aspect ratios (the ratio of video height to width), and caption lengths (number of words in the video descriptions). The distributions are visualized using pie charts, giving a clear overview of the data characteristics.
> <details>
> <summary>read the caption</summary>
> Figure 3: Distribution of key attributes of the whole video dataset.
> </details>



![](https://arxiv.org/html/2503.09642/x12.png)

> 🔼 This word cloud visualizes the most frequent words appearing in the video captions of the dataset used to train the Open-Sora 2.0 video generation model.  It highlights the key themes and subjects prevalent within the videos, such as common objects ('person', 'hand', 'clothing'), actions ('wearing', 'standing'), settings ('background', 'outdoor'), and atmospheric conditions ('lighting', 'atmosphere'). The prominence of words like 'person' and 'individual' indicates a significant portion of the videos contain human subjects.
> <details>
> <summary>read the caption</summary>
> Figure 4: Word cloud of the video captions.
> </details>



![](https://arxiv.org/html/2503.09642/x13.png)

> 🔼 Figure 5 illustrates the architecture of the Video DC-AE (Deep Compression Autoencoder), a crucial component of the Open-Sora 2.0 video generation model.  Part (a) provides a high-level overview of the encoder and decoder, highlighting the spatial and temporal downsampling strategies.  The encoder progressively reduces the spatial and temporal resolution of the input video, while the decoder symmetrically reconstructs the video from the compressed representation. Noteworthy is that temporal downsampling is specifically applied in blocks 4 and 5 of the encoder, indicating a focus on efficient compression of temporal information. Part (b) zooms in on the residual connections within the Video DC-AE blocks. These connections are designed to facilitate efficient gradient propagation during training and to improve the autoencoder's performance, especially at high compression ratios.
> <details>
> <summary>read the caption</summary>
> Figure 5: Architecture of Video DC-AE. (a) Overview of Video DC-AE: Each block in encoder introduces spatial downsampling, while temporal downsampling occurs at blocks 4 and 5, with a corresponding symmetric structure in the decoder. (b) Residual Connection in Video DC-AE Blocks.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.2.1">
<tr class="ltx_tr" id="S3.T2.2.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.2.1.1.1">Double-Stream Layers</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.2.1.1.2">Single-Stream Layers</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.2.1.1.3">Model Dimension</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.2.1.1.4">FFN Dimension</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.2.1.1.5">Attention Heads</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T2.2.1.1.6">Patch Size</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.2.1.2.1">19</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.2.1.2.2">38</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.2.1.2.3">3072</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.2.1.2.4">12288</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.2.1.2.5">24</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.2.1.2.6">2</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters of the Open-Sora 2.0 video generation model, specifically focusing on its architecture. It breaks down the model's architecture into double-stream and single-stream layers, providing specifications for the model dimension, feed-forward network (FFN) dimension, number of attention heads, and patch size. This information is crucial for understanding the model's structure and how its different components work together to generate videos.
> <details>
> <summary>read the caption</summary>
> Table 2: Architecture hyperparameters for Open-Sora 2.0 11B parameter video generation model.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.2.1">
<tr class="ltx_tr" id="S4.T3.2.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.2.1.1.1">Training Stage</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.2.1.1.2">Dataset</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.2.1.1.3">CP</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T3.2.1.1.4">#iters</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T3.2.1.1.5">#GPUs</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T3.2.1.1.6">#GPU day</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_tt" id="S4.T3.2.1.1.7">USD</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.2.1">256px T2V</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.2.1.2.2">70M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.2.3">1</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.2.1.2.4">85k</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.2.1.2.5">224</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.2.1.2.6">2240</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="S4.T3.2.1.2.7">$107.5k</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.3">
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.3.1">256px T/I2V</td>
<td class="ltx_td ltx_align_left" id="S4.T3.2.1.3.2">10M</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.3.3">1</td>
<td class="ltx_td ltx_align_right" id="S4.T3.2.1.3.4">13k</td>
<td class="ltx_td ltx_align_right" id="S4.T3.2.1.3.5">192</td>
<td class="ltx_td ltx_align_right" id="S4.T3.2.1.3.6">384</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T3.2.1.3.7">$18.4k</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.4">
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.4.1">768px T/I2V</td>
<td class="ltx_td ltx_align_left" id="S4.T3.2.1.4.2">5M</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.4.3">4</td>
<td class="ltx_td ltx_align_right" id="S4.T3.2.1.4.4">13k</td>
<td class="ltx_td ltx_align_right" id="S4.T3.2.1.4.5">192</td>
<td class="ltx_td ltx_align_right" id="S4.T3.2.1.4.6">1536</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T3.2.1.4.7">$73.7k</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.5">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.2.1.5.1">Total</td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="S4.T3.2.1.5.2"></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="S4.T3.2.1.5.3"></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="S4.T3.2.1.5.4"></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="S4.T3.2.1.5.5"></td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T3.2.1.5.6">4160</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_bb ltx_border_t" id="S4.T3.2.1.5.7">$199.6k</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 details the training process of the Open-Sora 2.0 model, broken down into three stages.  It shows the dataset size, number of training iterations, the number of GPUs used, the total GPU hours consumed, and the estimated cost for each stage.  The costs are calculated based on a rental price of $2 per GPU hour for the H200 GPUs used in the training process. The final row shows the total cost across all three stages for a single training run.
> <details>
> <summary>read the caption</summary>
> Table 3: Training Configurations and Cost Breakdown. This table presents the training configurations across different stages and the total cost for a single full training run, assuming the rental price of H200 is $2 per GPU hour.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.2.1">
<tr class="ltx_tr" id="S4.T4.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.2.1.1.1">Model</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.2.1.1.2">#GPUs</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.2.1.1.3">GPU Hours</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_tt" id="S4.T4.2.1.1.4">Cost (Single Run)</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.2.1.2.1">Movie Gen <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">polyak2024moviegen</span>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.2.1.2.2">6144</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.2.1.2.3">1.25M*</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T4.2.1.2.4">$2.5M*</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.3">
<td class="ltx_td ltx_align_left" id="S4.T4.2.1.3.1">Step-Video-T2V <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">ma2025step</span>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S4.T4.2.1.3.2">2992*</td>
<td class="ltx_td ltx_align_left" id="S4.T4.2.1.3.3">500k*</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T4.2.1.3.4">$1M*</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.2.1.4.1">Open Sora 2.0</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.2.1.4.2">224</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.2.1.4.3">100k</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T4.2.1.4.4">$200k</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the training costs of Open-Sora 2.0 with other leading video generation models.  The cost for Open-Sora 2.0 was significantly lower than the others, ranging from 5 to 10 times less.  Costs for some models are estimates based on publicly available data due to the lack of precise figures from the original sources.  This highlights the cost-effectiveness of the Open-Sora 2.0 training process.
> <details>
> <summary>read the caption</summary>
> Table 4: Training Cost Comparison of Different Video Generation Models. Values marked with * are estimated based on publicly available information. Our Open-Sora 2.0 is trained at 5–10× lower training cost.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T5.2.1">
<tr class="ltx_tr" id="S4.T5.2.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.1.1.1">resolution</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.1.1.2">#frames</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.1.1.3">max #tokens</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.1.1.4">batch size</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_tt" id="S4.T5.2.1.1.5">throughput on 8 GPUs</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.2.1" rowspan="4"><span class="ltx_text" id="S4.T5.2.1.2.1.1">256px</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.2.2">5 to 33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.2.3">2304</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.2.4">12</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="S4.T5.2.1.2.5">12.7 videos/s</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.3">
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.3.1">37 to 65</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.3.2">4352</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.3.3">6</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T5.2.1.3.4">6.3 videos/s</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.4">
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.4.1">69 to 97</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.4.2">6400</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.4.3">4</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T5.2.1.4.4">4.2 videos/s</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.5">
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.1">101 to 129</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.2">8448</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.3">3</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T5.2.1.5.4">3.2 videos/s</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.6.1">256px</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.6.2">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.6.3">256</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.6.4">45</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="S4.T5.2.1.6.5">47.6 images/s</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.7">
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.7.1">768px</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.7.2">1</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.7.3">2304</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.7.4">13</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T5.2.1.7.5">13.8 images/s</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.8">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.1.8.1">1024px</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.1.8.2">1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.1.8.3">4096</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.1.8.4">7</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_bb" id="S4.T5.2.1.8.5">7.4 images/s</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the batch size and throughput achieved during training stages 1 and 2.  It shows how the number of frames per video, the maximum number of tokens processed, the batch size, and the throughput (measured in videos or images per second) varied depending on the video resolution (256px and 768px). This information is crucial for understanding the training efficiency and resource utilization at different resolutions.
> <details>
> <summary>read the caption</summary>
> Table 5: Batch size and throughput in stage 1 and 2.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T6.2.1">
<tr class="ltx_tr" id="S4.T6.2.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.2.1.1.1">resolution</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.2.1.1.2">#frames</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.2.1.1.3">max #tokens</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.2.1.1.4">batch size</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_tt" id="S4.T6.2.1.1.5">throughput on 8 GPUs</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.2.1" rowspan="4"><span class="ltx_text" id="S4.T6.2.1.2.1.1">768px</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.2.2">5 to 33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.2.3">20736</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.2.4">6</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="S4.T6.2.1.2.5">0.25 videos/s</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.3">
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.3.1">37 to 65</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.3.2">39168</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.3.3">4</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T6.2.1.3.4">0.17 videos/s</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.4">
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.4.1">69 to 97</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.4.2">57600</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.4.3">3</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T6.2.1.4.4">0.13 videos/s</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.5">
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.5.1">101 to 129</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.5.2">76032</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.5.3">2</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T6.2.1.5.4">0.08 videos/s</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.6">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T6.2.1.6.1">768px</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T6.2.1.6.2">1</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T6.2.1.6.3">2304</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T6.2.1.6.4">38</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_bb ltx_border_t" id="S4.T6.2.1.6.5">1.60 images/s</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the batch size and throughput achieved during Stage 3 of the training process.  Stage 3 focuses on high-resolution (768px) image-to-video model fine-tuning using context parallelism of 4.  It shows how the chosen batch size affects the number of videos processed per second on 8 GPUs across different frame ranges.  This demonstrates the trade-off between batch size and throughput in a resource-constrained high-resolution training scenario.
> <details>
> <summary>read the caption</summary>
> Table 6: Batch size and throughput in stage 3 with context parallelism 4.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.09642/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09642/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09642/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09642/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09642/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09642/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09642/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09642/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09642/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09642/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09642/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09642/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09642/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09642/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09642/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09642/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09642/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09642/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09642/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09642/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}