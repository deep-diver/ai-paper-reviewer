---
title: "Efficient Personalization of Quantized Diffusion Model without Backpropagation"
summary: "Personalize diffusion models efficiently on devices without backpropagation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Seoul National University",]
showSummary: true
date: 2025-03-19
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.14868 {{< /keyword >}}
{{< keyword icon="writer" >}} Hoigi Seo et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-20 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.14868" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.14868" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.14868/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Diffusion models excel in image synthesis but demand significant resources, posing challenges for personalization on devices with limited memory. Existing methods still require significant memory for storing activations and gradients. This paper addresses the challenge by **quantizing a diffusion model and leveraging zeroth-order optimization** on personalization tokens. It allows personalization without backpropagation that requires considerable memory.



To improve noisy gradient estimation, the method projects it onto a subspace constructed with the past history of tokens, called Subspace Gradient. In addition, the study investigates the influence of text embedding in image generation, leading to Partial Uniform Timestep Sampling for sampling with effective diffusion timesteps. The method achieves **comparable performance in image and text alignment scores while reducing training memory demand up to 8.2x**.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Textual Inversion tokens primarily optimize within a low-dimensional subspace. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Partial timesteps are sufficient for effective training. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Zeroth-order optimization achieves comparable performance with significantly lower memory requirements. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **a novel method, ZOODiP, for personalizing diffusion models on resource-constrained devices**, like mobile phones, using forward passes only. This work is important as it **makes personalized AI more accessible** and paves the way for future research in memory-efficient on-device training.  It challenges the traditional reliance on backpropagation and quantized models, **offering a new direction for AI personalization**.

------
#### Visual Insights



![](https://arxiv.org/html/2503.14868/x1.png)

> 🔼 This figure (a) shows a detailed breakdown of GPU memory usage across different personalization methods for Stable Diffusion models.  It visually represents the memory allocation for various components, such as the Stable Diffusion model itself (in FP32 and quantized INT8 versions), gradient memory, optimizer state memory, and other memory usage like activations and caches. This breakdown highlights the memory efficiency achieved by the proposed ZOODIP method compared to existing approaches (DreamBooth, Textual Inversion, PEQA, TuneQDM).
> <details>
> <summary>read the caption</summary>
> (a) GPU memory breakdown across various personalization methods.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.5.5">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.5.6">Base.</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.5.5.7">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.5.8">Quant.</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.5.9">Grad. Free</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1">Mem.<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.m1.1d">↓</annotation></semantics></math> (GB)</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.2.2.2">Stor.<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.m1.1a"><mo id="S3.T1.2.2.2.m1.1.1" stretchy="false" xref="S3.T1.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.m1.1b"><ci id="S3.T1.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.m1.1d">↓</annotation></semantics></math> (MB)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.3.3.3">CLIP-T<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.3.3.3.m1.1"><semantics id="S3.T1.3.3.3.m1.1a"><mo id="S3.T1.3.3.3.m1.1.1" stretchy="false" xref="S3.T1.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.m1.1b"><ci id="S3.T1.3.3.3.m1.1.1.cmml" xref="S3.T1.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.4.4.4">CLIP-I<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.4.4.4.m1.1"><semantics id="S3.T1.4.4.4.m1.1a"><mo id="S3.T1.4.4.4.m1.1.1" stretchy="false" xref="S3.T1.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.m1.1b"><ci id="S3.T1.4.4.4.m1.1.1.cmml" xref="S3.T1.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.5.5">DINO<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.5.5.5.m1.1"><semantics id="S3.T1.5.5.5.m1.1a"><mo id="S3.T1.5.5.5.m1.1.1" stretchy="false" xref="S3.T1.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.m1.1b"><ci id="S3.T1.5.5.5.m1.1.1.cmml" xref="S3.T1.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.6.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.6.1.1" rowspan="4"><span class="ltx_text" id="S3.T1.5.6.1.1.1">DB</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.5.6.1.2">DB <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14868v1#bib.bib52" title=""><span class="ltx_text" style="font-size:90%;">52</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.6.1.3"><span class="ltx_text" id="S3.T1.5.6.1.3.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.6.1.4"><span class="ltx_text" id="S3.T1.5.6.1.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.6.1.5">19.4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.5.6.1.6">3438</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.6.1.7">0.281</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.6.1.8">0.782</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.6.1.9">0.592</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.7.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.5.7.2.1">QLoRA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14868v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.7.2.2"><span class="ltx_text" id="S3.T1.5.7.2.2.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.7.2.3"><span class="ltx_text" id="S3.T1.5.7.2.3.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.7.2.4">7.56</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.5.7.2.5">1.63</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.7.2.6">0.297</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.7.2.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.5.7.2.7.1">0.762</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.7.2.8">0.607</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.8.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.5.8.3.1">PEQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14868v1#bib.bib26" title=""><span class="ltx_text" style="font-size:90%;">26</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.3.2"><span class="ltx_text" id="S3.T1.5.8.3.2.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.3.3"><span class="ltx_text" id="S3.T1.5.8.3.3.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.3.4">6.31</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.5.8.3.5">1.32</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.3.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.5.8.3.6.1">0.275</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.3.7">0.791</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.3.8">0.604</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.9.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.5.9.4.1">TuneQDM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14868v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.9.4.2"><span class="ltx_text" id="S3.T1.5.9.4.2.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.9.4.3"><span class="ltx_text" id="S3.T1.5.9.4.3.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.9.4.4">8.96</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.5.9.4.5">2.48</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.9.4.6">0.289</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.9.4.7">0.788</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.9.4.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.5.9.4.8.1">0.555</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.10.5">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.5.10.5.1" rowspan="3"><span class="ltx_text" id="S3.T1.5.10.5.1.1">TI</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.5.10.5.2">TI <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14868v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.10.5.3"><span class="ltx_text" id="S3.T1.5.10.5.3.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.10.5.4"><span class="ltx_text" id="S3.T1.5.10.5.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.10.5.5">6.75</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.5.10.5.6"><span class="ltx_text ltx_font_bold" id="S3.T1.5.10.5.6.1">0.003</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.10.5.7">0.285</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.10.5.8">0.778</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.10.5.9">0.559</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.11.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.5.11.6.1">GF-TI <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14868v1#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">16</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.11.6.2"><span class="ltx_text" id="S3.T1.5.11.6.2.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.11.6.3"><span class="ltx_text" id="S3.T1.5.11.6.3.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.11.6.4"><span class="ltx_text ltx_font_bold" id="S3.T1.5.11.6.4.1">2.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.5.11.6.5"><span class="ltx_text ltx_font_bold" id="S3.T1.5.11.6.5.1">0.003</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.11.6.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.5.11.6.6.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.5.11.6.6.1.1">0.253</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.11.6.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.5.11.6.7.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.5.11.6.7.1.1">0.540</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.11.6.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.5.11.6.8.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.5.11.6.8.1.1">0.011</span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.12.7">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.5.12.7.1" style="background-color:#FFFFCC;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.12.7.1.1" style="background-color:#FFFFCC;">ZOODiP (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.12.7.2" style="background-color:#FFFFCC;"><span class="ltx_text" id="S3.T1.5.12.7.2.1" style="color:#00E000;background-color:#FFFFCC;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.12.7.3" style="background-color:#FFFFCC;"><span class="ltx_text" id="S3.T1.5.12.7.3.1" style="color:#00E000;background-color:#FFFFCC;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.12.7.4" style="background-color:#FFFFCC;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.12.7.4.1" style="background-color:#FFFFCC;">2.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.5.12.7.5" style="background-color:#FFFFCC;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.12.7.5.1" style="background-color:#FFFFCC;">0.003</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.12.7.6" style="background-color:#FFFFCC;"><span class="ltx_text" id="S3.T1.5.12.7.6.1" style="background-color:#FFFFCC;">0.287</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.12.7.7" style="background-color:#FFFFCC;"><span class="ltx_text" id="S3.T1.5.12.7.7.1" style="background-color:#FFFFCC;">0.772</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.12.7.8" style="background-color:#FFFFCC;"><span class="ltx_text" id="S3.T1.5.12.7.8.1" style="background-color:#FFFFCC;">0.558</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of several Stable Diffusion personalization methods, including DreamBooth, QLoRA, PEQA, TuneQDM, Textual Inversion, Gradient-Free Textual Inversion, and the authors' proposed method, ZOODiP.  It evaluates these methods across three key metrics: CLIP-I and DINO (image alignment scores), and CLIP-T (text-image alignment score).  Furthermore, it compares their training memory usage and storage requirements.  Higher scores for alignment metrics are better, while lower memory usage and storage are preferred.  The table highlights ZOODiP's comparable performance to gradient-based methods while significantly reducing memory consumption.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparisons of DreamBooth [52] (DB), QLoRA [13] (r=2𝑟2r=2italic_r = 2), PEQA [26], TuneQDM [54], Textual Inversion [17] (TI), Gradient-Free Textual Inversion [16] (GF-TI), and Ours. ↑↑\uparrow↑ / ↓↓\downarrow↓ indicates higher / lower values are better. Performance was evaluated with CLIP-I and DINO for image alignment, CLIP-T for text-image alignment, and memory requirements of training (Mem.) and storage (Stor.). The worst-performance is double-underlined, and the second worst is single-underlined. ZOODiP achieves performance comparable to that of gradient-based methods with significantly less memory.
> </details>





### In-depth insights


#### Efficient ZOODiP
**Efficient ZOODiP**, as a concept extrapolated from the paper, highlights memory-conscious personalization of diffusion models. It leverages **zeroth-order optimization (ZO)**, which smartly navigates quantized model landscapes, avoiding costly backpropagation. By innovating with **Subspace Gradient (SG)**, the method reduces noise and accelerates learning within pertinent token trajectory dimensions. Further bolstered by **Partial Uniform Timestep Sampling (PUTS)**, training focuses where text embedding wields maximal influence, boosting efficiency. This multifaceted approach ensures comparable image quality while drastically curtailing memory demands, facilitating diffusion model adaptation on resource-constrained devices.

#### Subspace Gradient
The 'Subspace Gradient' technique tackles the challenge of noisy gradient estimates common in zeroth-order optimization, particularly crucial when personalizing quantized diffusion models with limited data. It smartly leverages the observation that Textual Inversion tokens, representing personalized concepts, primarily update within a low-dimensional subspace. By projecting gradients onto this subspace, constructed from the past trajectory of token embeddings, the method filters out noisy dimensions, **accelerating training and improving stability**. This approach is particularly effective as it concentrates optimization efforts on the most relevant parameters, reflecting the core features of the concept being learned, while **reducing the impact of irrelevant or misleading gradient signals**. Furthermore, **this subspace focus aligns with the intrinsic structure of the data**, leading to more efficient and reliable learning.

#### PUTS Timestep
Partial Uniform Timestep Sampling (PUTS) is a technique used in diffusion models to improve training efficiency. It addresses the fact that different timesteps in a diffusion model play distinct roles, especially in text-to-image synthesis. Prior works indicate that text conditioning has varying impacts across timesteps, but most focus on inference or training from scratch. PUTS strategically samples timesteps within a specific range where the text embedding has the most significant influence. This focuses computation on the most informative timesteps, skipping less influential ones. This tailored approach potentially leads to faster convergence and improved image quality by **prioritizing the most impactful diffusion steps**, making the training process more efficient overall.

#### Quantized Model
Quantized models offer a promising avenue for efficient deep learning, particularly in resource-constrained environments. The core idea revolves around **reducing the precision of numerical representations** of weights and activations, typically from 32-bit floating-point to 8-bit integer or even lower. This leads to a **smaller memory footprint**, faster computation, and reduced energy consumption. However, quantization can introduce challenges, such as accuracy degradation due to the limited representational capacity. **Careful design is needed** to strike a balance between efficiency and performance, with techniques like quantization-aware training and post-training quantization playing crucial roles. Furthermore, specialized hardware, such as **INT8-optimized processors**, can significantly accelerate inference with quantized models. The trade-offs between different quantization schemes and their suitability for various tasks and hardware platforms remain active areas of research.

#### Memory Savings
The document highlights the critical issue of memory consumption in diffusion models, especially during training, fine-tuning, and personalization. Addressing this, it introduces ZOODiP, a novel approach aimed at **reducing memory footprint** during personalization. The analysis dives into various techniques like quantization and zeroth-order optimization. Quantization is employed to minimize memory usage for weights and activations. **Zeroth-order optimization** is used to avoid the need for backpropagation, which is memory-intensive, and **Subspace Gradient** is introduced to mitigate noisy gradients, further enhancing memory efficiency. It emphasizes the importance of memory savings for on-device personalization, where resources are limited. The document shows a comparison of memory consumption with other methods, underscoring ZOODiP's ability to significantly reduce memory demand, making diffusion model personalization more feasible on resource-constrained devices. Key aspects contributing to these savings include quantizing, subspace gradient usage, and targeted timestep sections.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.14868/x2.png)

> 🔼 This figure shows a comparison of the total VRAM (video RAM) usage of different Stable Diffusion personalization methods against their performance. Performance is evaluated using two metrics: image alignment score (CLIP-I) and text alignment score (CLIP-T). The chart visually represents the trade-off between memory efficiency and the quality of image and text alignment achieved by each method.  It allows for a direct comparison of how much VRAM each technique requires to achieve a certain level of performance.
> <details>
> <summary>read the caption</summary>
> (b) VRAM usage versus image and text alignment scores.
> </details>



![](https://arxiv.org/html/2503.14868/x3.png)

> 🔼 This figure analyzes the memory usage and performance of various Stable Diffusion personalization methods. The left panel shows a detailed breakdown of GPU memory consumption for each method using a batch size of 1.  It highlights that ZOODIP (the authors' method) uses significantly less memory than other methods like DreamBooth, Textual Inversion, PEQA, and TuneQDM. The right panel presents a comparison of memory usage and model performance, where performance is evaluated using text (CLIP-T) and image (CLIP-I) alignment scores.  ZOODIP achieves comparable performance to other methods while exhibiting up to 8.2 times less memory consumption than DreamBooth.  Memory usage was measured using the PyTorch profiler and the nvidia-smi command.
> <details>
> <summary>read the caption</summary>
> Figure 1: Analysis of memory consumption and performance of Stable Diffusion personalization methods. (Left) GPU memory breakdown for each method on a Stable Diffusion personalization with a batch size of 1. ZOODiP (Ours) shows significantly higher memory efficiency compared to other methods. (Right) Comparison of memory usage versus performance across methods. Performance is measured with text (CLIP-T) and image (CLIP-I) alignment scores. ZOODiP achieves comparable performance to other methods while using significantly less memory (up to 8.2×8.2\times8.2 × less than DreamBooth). Memory usage was profiled using the PyTorch profiler and nvidia-smi command.
> </details>



![](https://arxiv.org/html/2503.14868/x4.png)

> 🔼 The figure illustrates the training framework of ZOODiP, a memory-efficient personalization method for diffusion models. It shows how a target token is initialized and added to a text prompt, reference images are encoded and processed through a VAE, and the noise is predicted using partial uniform timestep sampling. The gradient is calculated using zeroth-order optimization with subspace gradient and updated with no backpropagation. The overall framework combines zeroth-order optimization with a quantized model to minimize memory usage during the fine-tuning process.
> <details>
> <summary>read the caption</summary>
> (a) Overall illustration of ZOODiP training framework.
> </details>



![](https://arxiv.org/html/2503.14868/x5.png)

> 🔼 This figure illustrates the Subspace Gradient (SG) update mechanism in ZOODiP.  It shows how the algorithm denoises the noisy gradient estimates obtained from the zeroth-order optimization process by projecting them onto a lower-dimensional subspace spanned by the past history of the tokens.  The past tokens are analyzed using Principal Component Analysis (PCA) to identify a low-variance subspace, and a projection matrix is constructed using the eigenvectors corresponding to the retained dimensions. Noisy gradient dimensions are eliminated by projecting out dimensions associated with low variance. The result is a refined gradient that improves training efficiency and stability.
> <details>
> <summary>read the caption</summary>
> (b) Illustration of Subspace Gradient (SG) updates.
> </details>



![](https://arxiv.org/html/2503.14868/x6.png)

> 🔼 Figure 2 illustrates the ZOODiP framework.  Panel (a) shows the process of personalization. A new token is added to the text prompt. Reference images are encoded using a Variational Autoencoder (VAE).  PUTS (Partial Uniform Timestep Sampling) selects a subset of timesteps in the diffusion process. The model predicts noise at these timesteps. Then, the model calculates the loss using the original and a perturbed version of the token, estimating the gradient without backpropagation. Panel (b) shows how the Subspace Gradient (SG) method denoises this noisy gradient estimate. Token updates from the previous τ iterations are collected and used for Principal Component Analysis (PCA).  PCA identifies low-variance directions, which are then projected out of the gradient to reduce noise before the next τ updates.
> <details>
> <summary>read the caption</summary>
> Figure 2: (a) Illustration of overall ZOODiP framework. A target token is initialized and added to the prompt. Reference images are encoded, and Partial Uniform Timestep Sampling (PUTS)-sampled timestep noise is predicted. The loss is calculated with the original and perturbed token to estimate the gradient. (b) Illustration of Subspace Gradient (SG). Updated tokens from the previous τ𝜏\tauitalic_τ iterations are stored. PCA identifies low-variance eigenvectors to project out noisy dimensions from the estimated gradient for the next τ𝜏\tauitalic_τ iterations.
> </details>



![](https://arxiv.org/html/2503.14868/x7.png)

> 🔼 This figure shows the results of a principal component analysis (PCA) performed on token embeddings before and after personalization using Textual Inversion.  The PCA reveals that the most significant changes during personalization are concentrated within a low-dimensional subspace.  Even when only the top one-third of the principal components (k=256) are retained, the core concept of the personalized token is still preserved.  This illustrates that Textual Inversion primarily modifies a small subset of the token's embedding dimensions.
> <details>
> <summary>read the caption</summary>
> Figure 3: Sparse effective dimension in the token trained with Textual Inversion. Notably, the concept was preserved even when retaining only one-third of the optimized dimensions (k=256𝑘256k=256italic_k = 256).
> </details>



![](https://arxiv.org/html/2503.14868/extracted/6288943/figure/fig6_style.png)

> 🔼 This figure shows the impact of different timestep sampling ranges on the effectiveness of Textual Inversion for image personalization.  Using a uniform distribution between 0 and 500 for sampling the timestep t resulted in poor learning of key features like color and shape from the reference image. In contrast, using a uniform distribution between 500 and 1000 for the timestep resulted in successful learning, indicating that the later stage of the diffusion process is crucial for effectively incorporating the desired features from the reference images.
> <details>
> <summary>read the caption</summary>
> Figure 4: Textual Inversion [17] with various timestep sampling. When the timestep t𝑡titalic_t for training is sampled from U⁢(0,500)𝑈0500U(0,500)italic_U ( 0 , 500 ), key conceptual features such as color and body shape of the reference image are not effectively trained. In contrast, sampling from U⁢(500,1000)𝑈5001000U(500,1000)italic_U ( 500 , 1000 ) results in successful learning of these features.
> </details>



![](https://arxiv.org/html/2503.14868/extracted/6288943/figure/clip_t_PUTS.png)

> 🔼 Figure 5 presents a qualitative comparison of image and text alignment across various personalization methods.  The figure demonstrates the image generation capabilities of different methods, using the same prompts and reference images. Each method's success in generating images that accurately match the prompt while preserving the identity of the personalized subject is visually demonstrated. ZOODiP's images show particularly strong image-text alignment, closely mirroring both the prompt and the reference images.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative comparison of image and text alignment. This figure shows how well each method generates images that match the input text prompt while preserving the identity of the personalized subject. ZOODiP generates images that faithfully reflect the prompt while maintaining the concept of the reference image, demonstrating strong image-text alignment.
> </details>



![](https://arxiv.org/html/2503.14868/extracted/6288943/figure/clip_i_PUTS.png)

> 🔼 This figure demonstrates ZOODIP's ability to personalize images by style, not just subject.  Using a few reference images with a consistent style, ZOODIP accurately captures and applies that style to new images of the same subject. The results show a high degree of accuracy and demonstrate ZOODIP's versatility in adapting stylistic elements and subject details to closely match the reference images. This showcases its extensive personalization capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 6:  Qualitative results on style personalization. This figure showcases the results of style personalization achieved through ZOODiP, using few reference images with a consistent style. The outcome highlights ability of ZOODiP to personalize not only the subject but also the style with a high degree of accuracy. This demonstrates the versatility and extensive personalization capabilities of ZOODiP, effectively adapting both stylistic elements and subject details to match the reference images.
> </details>



![](https://arxiv.org/html/2503.14868/extracted/6288943/figure/dino_PUTS.png)

> 🔼 This figure presents a heatmap visualizing the CLIP-T scores obtained across various combinations of  'TL' and 'TU' parameters, which are used to define the range of timesteps in the Partial Uniform Timestep Sampling (PUTS) method.  The heatmap helps illustrate how different ranges of timesteps sampled during training influence the final text-image alignment score (CLIP-T). The x-axis represents 'TU' (upper bound of timestep range) and the y-axis represents 'TL' (lower bound).  The color intensity of each cell indicates the CLIP-T score achieved with that particular 'TL' and 'TU' combination, allowing for the identification of optimal parameter ranges that maximize performance.
> <details>
> <summary>read the caption</summary>
> (a) CLIP-T scores.
> </details>



![](https://arxiv.org/html/2503.14868/x8.png)

> 🔼 This figure shows the CLIP-I (image alignment) scores for different methods across various personalization methods.  CLIP-I scores measure the cosine similarity between the CLIP embeddings of the reference images and the generated images. Higher scores indicate that the generated images are more similar to the reference images.  The x-axis represents the total VRAM usage (in GB), while the y-axis shows the CLIP-I score. Different personalization methods are represented by different colored markers. This visualization allows for a comparison of the trade-off between memory efficiency and performance for various personalization methods.
> <details>
> <summary>read the caption</summary>
> (b) CLIP-I scores.
> </details>



![](https://arxiv.org/html/2503.14868/x9.png)

> 🔼 This figure shows the DINO (Self-Supervised visual representation learning) scores for different combinations of start and end timesteps used in Partial Uniform Timestep Sampling (PUTS).  The heatmap visually represents the performance of the personalization process, with higher scores indicating better alignment between generated images and reference images.
> <details>
> <summary>read the caption</summary>
> (c) DINO scores.
> </details>



![](https://arxiv.org/html/2503.14868/x10.png)

> 🔼 This figure visualizes the performance of the ZOODIP model across different ranges of timesteps during training.  The heatmap shows CLIP-T, CLIP-I, and DINO scores (metrics for evaluating text-image alignment and image quality) as a function of the starting timestep (T<sub>L</sub>) and ending timestep (T<sub>U</sub>) of the partial uniform timestep sampling strategy used in the model. Warmer colors represent better performance.  The x-axis represents T<sub>U</sub> and the y-axis represents T<sub>L</sub>, illustrating how the choice of timesteps affects the model's ability to effectively personalize the Stable Diffusion model.
> <details>
> <summary>read the caption</summary>
> Figure 7: Heatmap of CLIP-T, CLIP-I and DINO scores across varying TLsubscript𝑇𝐿T_{L}italic_T start_POSTSUBSCRIPT italic_L end_POSTSUBSCRIPT and TUsubscript𝑇𝑈T_{U}italic_T start_POSTSUBSCRIPT italic_U end_POSTSUBSCRIPT on the <dog6> dataset. x𝑥xitalic_x-axis is the TUsubscript𝑇𝑈T_{U}italic_T start_POSTSUBSCRIPT italic_U end_POSTSUBSCRIPT and y𝑦yitalic_y-axis is the TLsubscript𝑇𝐿T_{L}italic_T start_POSTSUBSCRIPT italic_L end_POSTSUBSCRIPT applied to the sampling distribution.
> </details>



![](https://arxiv.org/html/2503.14868/x11.png)

> 🔼 This figure shows two histograms. Each histogram represents the ratio of the number of principal components retained after PCA to the total number of principal components (τ=128) for each of the two datasets: <dog6> and <shiny_sneaker>. The hyperparameters used are ν=10⁻³ and τ=128. A small value of ν is used, which should retain most of the variance. However, the histograms show that a significant portion (more than 80%) of the dimensions are projected out (removed). This indicates that the optimization process primarily focuses on a low-dimensional subspace, which is consistent with the findings described in Section 3.3 (Subspace Gradient).
> <details>
> <summary>read the caption</summary>
> Figure 8: Histogram of i∗/τsuperscript𝑖𝜏i^{*}/\tauitalic_i start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT / italic_τ ratios for <dog6> and <shiny_sneaker> dataset with hyperparameter τ=128𝜏128\tau=128italic_τ = 128, ν=10−3𝜈superscript103\nu=10^{-3}italic_ν = 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT during training with SG. Despite the small ν𝜈\nuitalic_ν, a significant portion (>80%absentpercent80>80\%> 80 %) of dimensions are projected out.
> </details>



![](https://arxiv.org/html/2503.14868/x12.png)

> 🔼 This figure displays a comparison of images generated using different levels of weight precision in a Stable Diffusion model.  The prompt used for all generated images was 'a photo of a dog.'  The images demonstrate the impact of reduced precision on image quality.  The INT8 precision images closely match those generated with full precision (FP32), showing that there's minimal loss in image quality. However, the INT4 images show significantly lower quality and artifacts, indicating a substantial trade-off between reduced memory requirements and image fidelity.  This showcases that while lower-bit quantization saves memory, it can lead to noticeable degradation in the generated image's visual quality.
> <details>
> <summary>read the caption</summary>
> Figure S1: Generated images with the prompt “a photo of a dog” with various weight precision. While INT8 precision produces results nearly equivalent to full-precision performance, INT4 precision exhibits noticeable degradation in image quality, highlighting the trade-off between lower precision and fidelity.
> </details>



![](https://arxiv.org/html/2503.14868/x13.png)

> 🔼 This figure presents a qualitative comparison of images generated using 8-bit (INT8) and 4-bit (INT4) quantized U-Net models within the ZOODIP framework.  The results demonstrate the impact of quantization on image quality. While the INT8 model produces high-fidelity images comparable to those generated using full-precision weights, a noticeable degradation in image quality is observed in images produced by the INT4 model. This illustrates the trade-off between reduced memory requirements (achieved through lower-bit quantization) and the fidelity of the generated images.
> <details>
> <summary>read the caption</summary>
> Figure S2: Qualitative results of U-Net precision at INT8 and INT4 in <dog6> dataset. ZOODiP works on INT4 and INT8, but performance diminishes due to degradation caused by INT4 quantization.
> </details>



![](https://arxiv.org/html/2503.14868/x14.png)

> 🔼 Figure S3 presents a qualitative comparison of image diversity resulting from different personalization methods.  The figure displays example images generated by DreamBooth, PEQA, TuneQDM, Textual Inversion, Gradient-Free Textual Inversion, and ZOODiP. By visually inspecting the generated images for each method, one can qualitatively assess the diversity of the output. The caption highlights that ZOODiP produces highly diverse images while using minimal memory resources, emphasizing its efficiency.
> <details>
> <summary>read the caption</summary>
> Figure S3: Qualitative comparison of the diversity of generated images This figure compares the diversity achieved by different personalization methods. ZOODiP demonstrates the ability to generate highly diverse images while utilizing minimal memory resources.
> </details>



![](https://arxiv.org/html/2503.14868/x15.png)

> 🔼 Figure S4 showcases ZOODIP's adaptability to different diffusion models beyond the SD1.5 model discussed in the main paper.  It demonstrates successful personalization on both SD2.1 (using 768x768 resolution images) and SDXL (using 1024x1024 resolution images).  However, the results highlight a limitation: SDXL's inherent color interpretation sometimes prevents perfectly accurate color replication of the subject, suggesting that environmental context influences color rendering in SDXL.
> <details>
> <summary>read the caption</summary>
> Figure S4: Qualitative results for personalizing SD2.1 and SDXL with ZOODiP. The figure demonstrate that ZOODiP can be applied not only to SD1.5, as discussed in the main paper, but also to various other models. For SD2.1, inference were conducted with images at a resolution of 768×768768768768\times 768768 × 768, while for SDXL, image generation was performed with resolution of 1024×1024102410241024\times 10241024 × 1024. However, for SDXL, it was observed that the model’s inherent color interpretation prevents the subject’s colors from being completely replicated. This indicates that the model’s color rendering can vary depending on the environmental context, leading to shifts in the perceived color scheme.
> </details>



![](https://arxiv.org/html/2503.14868/x16.png)

> 🔼 This figure compares the performance of two methods for personalizing diffusion models: a naive zeroth-order optimization approach and the proposed ZOODIP method.  The naive method, lacking the Subspace Gradient (SG) and Partial Uniform Timestep Sampling (PUTS) techniques, shows slower convergence during training and generates images less faithful to the reference image.  In contrast, ZOODIP, utilizing SG and PUTS, demonstrates significantly faster training and produces images that are much better aligned with the subject in the reference image.  The figure visually illustrates this by showing image outputs at various iteration steps for both methods, highlighting the superior performance of ZOODIP.
> <details>
> <summary>read the caption</summary>
> Figure S5: Qualitative comparisons on naïve ZO textual inversion without SG and PUTS to ZOODiP (Ours) over iterations. The naïve approach exhibits slower training and tends to produce images that are less aligned with the reference image. In contrast, ZOODiP achieves faster training and generates images that are closely aligned with the reference subject.
> </details>



![](https://arxiv.org/html/2503.14868/x17.png)

> 🔼 This figure presents a qualitative comparison of how well different personalization methods generate images that match both the given text prompt and the visual characteristics of a reference image.  The methods compared include DreamBooth (DB), PEQA, TuneQDM, Textual Inversion (TI), Gradient-Free TI (GF-TI), and the proposed ZOODIP method. The comparison focuses specifically on images of cats, a subset of the DreamBooth (DB) dataset. The goal is to visually demonstrate the effectiveness of each method in capturing both textual and visual aspects of the target concept (the cat) when generating new images.
> <details>
> <summary>read the caption</summary>
> Figure S6: Qualitative comparison of image and text alignment on the <cat> subset of DB dataset.
> </details>



![](https://arxiv.org/html/2503.14868/x18.png)

> 🔼 This figure displays a qualitative comparison of the results obtained from different personalization methods on a subset of the DreamBooth dataset focused on a specific cat.  It shows generated images from several methods alongside reference images and text prompts used.  The aim is to visually demonstrate the fidelity of each method's image generation with respect to both visual similarity to the reference cat images and alignment with the textual description.
> <details>
> <summary>read the caption</summary>
> Figure S7: Qualitative comparison of image and text alignment on the <cat2> subset of DB dataset.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.2">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.3">Prec.</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1">Speed (iter/sec) <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.6.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.6.1.1">TI</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.6.1.2">FP32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.6.1.3">9.42</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.1">Ours (<math alttext="n=1" class="ltx_Math" display="inline" id="S4.T2.2.2.1.m1.1"><semantics id="S4.T2.2.2.1.m1.1a"><mrow id="S4.T2.2.2.1.m1.1.1" xref="S4.T2.2.2.1.m1.1.1.cmml"><mi id="S4.T2.2.2.1.m1.1.1.2" xref="S4.T2.2.2.1.m1.1.1.2.cmml">n</mi><mo id="S4.T2.2.2.1.m1.1.1.1" xref="S4.T2.2.2.1.m1.1.1.1.cmml">=</mo><mn id="S4.T2.2.2.1.m1.1.1.3" xref="S4.T2.2.2.1.m1.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.1.m1.1b"><apply id="S4.T2.2.2.1.m1.1.1.cmml" xref="S4.T2.2.2.1.m1.1.1"><eq id="S4.T2.2.2.1.m1.1.1.1.cmml" xref="S4.T2.2.2.1.m1.1.1.1"></eq><ci id="S4.T2.2.2.1.m1.1.1.2.cmml" xref="S4.T2.2.2.1.m1.1.1.2">𝑛</ci><cn id="S4.T2.2.2.1.m1.1.1.3.cmml" type="integer" xref="S4.T2.2.2.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.1.m1.1c">n=1</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.1.m1.1d">italic_n = 1</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2" rowspan="2"><span class="ltx_text" id="S4.T2.2.2.2.1">FP16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.3"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.3.1">22.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3">
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.1">Ours (<math alttext="n=2" class="ltx_Math" display="inline" id="S4.T2.3.3.1.m1.1"><semantics id="S4.T2.3.3.1.m1.1a"><mrow id="S4.T2.3.3.1.m1.1.1" xref="S4.T2.3.3.1.m1.1.1.cmml"><mi id="S4.T2.3.3.1.m1.1.1.2" xref="S4.T2.3.3.1.m1.1.1.2.cmml">n</mi><mo id="S4.T2.3.3.1.m1.1.1.1" xref="S4.T2.3.3.1.m1.1.1.1.cmml">=</mo><mn id="S4.T2.3.3.1.m1.1.1.3" xref="S4.T2.3.3.1.m1.1.1.3.cmml">2</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.1.m1.1b"><apply id="S4.T2.3.3.1.m1.1.1.cmml" xref="S4.T2.3.3.1.m1.1.1"><eq id="S4.T2.3.3.1.m1.1.1.1.cmml" xref="S4.T2.3.3.1.m1.1.1.1"></eq><ci id="S4.T2.3.3.1.m1.1.1.2.cmml" xref="S4.T2.3.3.1.m1.1.1.2">𝑛</ci><cn id="S4.T2.3.3.1.m1.1.1.3.cmml" type="integer" xref="S4.T2.3.3.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.1.m1.1c">n=2</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.1.m1.1d">italic_n = 2</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.2">18.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.7.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.7.2.1">TuneQDM</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.5.7.2.2" rowspan="4"><span class="ltx_text" id="S4.T2.5.7.2.2.1">INT8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.7.2.3">4.94</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.8.3">
<td class="ltx_td ltx_align_center" id="S4.T2.5.8.3.1">GF-TI</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.8.3.2">0.74</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4">
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.1">Ours (<math alttext="n=1" class="ltx_Math" display="inline" id="S4.T2.4.4.1.m1.1"><semantics id="S4.T2.4.4.1.m1.1a"><mrow id="S4.T2.4.4.1.m1.1.1" xref="S4.T2.4.4.1.m1.1.1.cmml"><mi id="S4.T2.4.4.1.m1.1.1.2" xref="S4.T2.4.4.1.m1.1.1.2.cmml">n</mi><mo id="S4.T2.4.4.1.m1.1.1.1" xref="S4.T2.4.4.1.m1.1.1.1.cmml">=</mo><mn id="S4.T2.4.4.1.m1.1.1.3" xref="S4.T2.4.4.1.m1.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.1.m1.1b"><apply id="S4.T2.4.4.1.m1.1.1.cmml" xref="S4.T2.4.4.1.m1.1.1"><eq id="S4.T2.4.4.1.m1.1.1.1.cmml" xref="S4.T2.4.4.1.m1.1.1.1"></eq><ci id="S4.T2.4.4.1.m1.1.1.2.cmml" xref="S4.T2.4.4.1.m1.1.1.2">𝑛</ci><cn id="S4.T2.4.4.1.m1.1.1.3.cmml" type="integer" xref="S4.T2.4.4.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.1.m1.1c">n=1</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.1.m1.1d">italic_n = 1</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.2"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.2.1">20.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.5.1">Ours (<math alttext="n=2" class="ltx_Math" display="inline" id="S4.T2.5.5.1.m1.1"><semantics id="S4.T2.5.5.1.m1.1a"><mrow id="S4.T2.5.5.1.m1.1.1" xref="S4.T2.5.5.1.m1.1.1.cmml"><mi id="S4.T2.5.5.1.m1.1.1.2" xref="S4.T2.5.5.1.m1.1.1.2.cmml">n</mi><mo id="S4.T2.5.5.1.m1.1.1.1" xref="S4.T2.5.5.1.m1.1.1.1.cmml">=</mo><mn id="S4.T2.5.5.1.m1.1.1.3" xref="S4.T2.5.5.1.m1.1.1.3.cmml">2</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.1.m1.1b"><apply id="S4.T2.5.5.1.m1.1.1.cmml" xref="S4.T2.5.5.1.m1.1.1"><eq id="S4.T2.5.5.1.m1.1.1.1.cmml" xref="S4.T2.5.5.1.m1.1.1.1"></eq><ci id="S4.T2.5.5.1.m1.1.1.2.cmml" xref="S4.T2.5.5.1.m1.1.1.2">𝑛</ci><cn id="S4.T2.5.5.1.m1.1.1.3.cmml" type="integer" xref="S4.T2.5.5.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.1.m1.1c">n=2</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.1.m1.1d">italic_n = 2</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.5.2">16.1</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the training speed of various diffusion model personalization methods, including ZOODIP and several baselines.  It highlights the significant speed advantage of ZOODIP due to its use of zeroth-order optimization, which avoids the computationally expensive backpropagation step used in gradient-based methods.  The table presents the training iterations per second for each method, indicating the number of training iterations that can be completed within one second. This reflects the efficiency of each method in adapting the model to personalized data.
> <details>
> <summary>read the caption</summary>
> Table 2: Training speed comparisons of prior works and ZOODiP. ZOODiP achieves the fastest training speed by estimating gradients with only forward passes, bypassing backpropagation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.3.3.4">SG</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T3.3.3.5">PUTS</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1">CLIP-T<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.2.2">CLIP-I<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.3.3">DINO<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.m1.1.1" stretchy="false" xref="S4.T3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T3.3.4.1.1">✗</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.3.4.1.2">✗</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.4.1.3">0.273</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.4.1.4">0.736</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.4.1.5">0.505</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.5.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T3.3.5.2.1">✓</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.3.5.2.2">✗</th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.5.2.3">0.265</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.5.2.4">0.747</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.5.2.5">0.527</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.6.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T3.3.6.3.1">✗</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.3.6.3.2">✓</th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.6.3.3"><span class="ltx_text ltx_font_bold" id="S4.T3.3.6.3.3.1">0.277</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.6.3.4">0.744</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.6.3.5">0.562</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.7.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T3.3.7.4.1">✓</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T3.3.7.4.2">✓</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.7.4.3">0.266</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.7.4.4"><span class="ltx_text ltx_font_bold" id="S4.T3.3.7.4.4.1">0.759</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.7.4.5"><span class="ltx_text ltx_font_bold" id="S4.T3.3.7.4.5.1">0.569</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study evaluating the impact of different components of the ZOODiP model on its performance when personalizing images of shiny sneakers.  It shows the results of training with various combinations of Subspace Gradient (SG) and Partial Uniform Timestep Sampling (PUTS), as well as a baseline using uniformly sampled timesteps without SG or PUTS. The table reports the CLIP-T, CLIP-I, and DINO scores, which measure text-image alignment and image quality, for each configuration. This allows assessing the relative contribution of each component towards achieving the final performance.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study on ZOODiP components with <shiny_sneaker>. ✓ denotes the component is applied, while ✗ means it is not. Without PUTS, timesteps are sampled uniformly.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.5.5">
<th class="ltx_td ltx_nopad ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T4.1.1.1"><svg height="11.92" overflow="visible" version="1.1" width="41.51"><g transform="translate(0,11.92) scale(1,-1)"><path d="M 0,11.92 41.51,0" stroke="#000000" stroke-width="0.4"></path><g class="ltx_svg_fog" transform="translate(0,0)"><g transform="translate(0,5.96) scale(1, -1)"><foreignobject height="5.96" overflow="visible" width="6.05">
<span class="ltx_inline-block" id="S4.T4.1.1.1.pic1.1.1">
<span class="ltx_inline-block ltx_align_left" id="S4.T4.1.1.1.pic1.1.1.1">
<span class="ltx_p" id="S4.T4.1.1.1.pic1.1.1.1.1"><math alttext="\tau" class="ltx_Math" display="inline" id="S4.T4.1.1.1.pic1.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.pic1.1.1.1.1.m1.1a"><mi id="S4.T4.1.1.1.pic1.1.1.1.1.m1.1.1" xref="S4.T4.1.1.1.pic1.1.1.1.1.m1.1.1.cmml">τ</mi><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.pic1.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.pic1.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.pic1.1.1.1.1.m1.1.1">𝜏</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.pic1.1.1.1.1.m1.1c">\tau</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.pic1.1.1.1.1.m1.1d">italic_τ</annotation></semantics></math></span>
</span>
</span></foreignobject></g></g><g class="ltx_svg_fog" transform="translate(34.67,5.96)"><g transform="translate(0,5.96) scale(1, -1)"><foreignobject height="5.96" overflow="visible" width="6.84">
<span class="ltx_inline-block" id="S4.T4.1.1.1.pic1.2.1">
<span class="ltx_inline-block ltx_align_right" id="S4.T4.1.1.1.pic1.2.1.1">
<span class="ltx_p" id="S4.T4.1.1.1.pic1.2.1.1.1"><math alttext="\nu" class="ltx_Math" display="inline" id="S4.T4.1.1.1.pic1.2.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.pic1.2.1.1.1.m1.1a"><mi id="S4.T4.1.1.1.pic1.2.1.1.1.m1.1.1" xref="S4.T4.1.1.1.pic1.2.1.1.1.m1.1.1.cmml">ν</mi><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.pic1.2.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.pic1.2.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.pic1.2.1.1.1.m1.1.1">𝜈</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.pic1.2.1.1.1.m1.1c">\nu</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.pic1.2.1.1.1.m1.1d">italic_ν</annotation></semantics></math></span>
</span>
</span></foreignobject></g></g></g></svg></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.2.2"><math alttext="10^{-1}" class="ltx_Math" display="inline" id="S4.T4.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.m1.1a"><msup id="S4.T4.2.2.2.m1.1.1" xref="S4.T4.2.2.2.m1.1.1.cmml"><mn id="S4.T4.2.2.2.m1.1.1.2" xref="S4.T4.2.2.2.m1.1.1.2.cmml">10</mn><mrow id="S4.T4.2.2.2.m1.1.1.3" xref="S4.T4.2.2.2.m1.1.1.3.cmml"><mo id="S4.T4.2.2.2.m1.1.1.3a" xref="S4.T4.2.2.2.m1.1.1.3.cmml">−</mo><mn id="S4.T4.2.2.2.m1.1.1.3.2" xref="S4.T4.2.2.2.m1.1.1.3.2.cmml">1</mn></mrow></msup><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.m1.1b"><apply id="S4.T4.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.2.2.2.m1.1.1.1.cmml" xref="S4.T4.2.2.2.m1.1.1">superscript</csymbol><cn id="S4.T4.2.2.2.m1.1.1.2.cmml" type="integer" xref="S4.T4.2.2.2.m1.1.1.2">10</cn><apply id="S4.T4.2.2.2.m1.1.1.3.cmml" xref="S4.T4.2.2.2.m1.1.1.3"><minus id="S4.T4.2.2.2.m1.1.1.3.1.cmml" xref="S4.T4.2.2.2.m1.1.1.3"></minus><cn id="S4.T4.2.2.2.m1.1.1.3.2.cmml" type="integer" xref="S4.T4.2.2.2.m1.1.1.3.2">1</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.m1.1c">10^{-1}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.m1.1d">10 start_POSTSUPERSCRIPT - 1 end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.3.3.3"><math alttext="10^{-2}" class="ltx_Math" display="inline" id="S4.T4.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.m1.1a"><msup id="S4.T4.3.3.3.m1.1.1" xref="S4.T4.3.3.3.m1.1.1.cmml"><mn id="S4.T4.3.3.3.m1.1.1.2" xref="S4.T4.3.3.3.m1.1.1.2.cmml">10</mn><mrow id="S4.T4.3.3.3.m1.1.1.3" xref="S4.T4.3.3.3.m1.1.1.3.cmml"><mo id="S4.T4.3.3.3.m1.1.1.3a" xref="S4.T4.3.3.3.m1.1.1.3.cmml">−</mo><mn id="S4.T4.3.3.3.m1.1.1.3.2" xref="S4.T4.3.3.3.m1.1.1.3.2.cmml">2</mn></mrow></msup><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.m1.1b"><apply id="S4.T4.3.3.3.m1.1.1.cmml" xref="S4.T4.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.3.3.3.m1.1.1.1.cmml" xref="S4.T4.3.3.3.m1.1.1">superscript</csymbol><cn id="S4.T4.3.3.3.m1.1.1.2.cmml" type="integer" xref="S4.T4.3.3.3.m1.1.1.2">10</cn><apply id="S4.T4.3.3.3.m1.1.1.3.cmml" xref="S4.T4.3.3.3.m1.1.1.3"><minus id="S4.T4.3.3.3.m1.1.1.3.1.cmml" xref="S4.T4.3.3.3.m1.1.1.3"></minus><cn id="S4.T4.3.3.3.m1.1.1.3.2.cmml" type="integer" xref="S4.T4.3.3.3.m1.1.1.3.2">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.m1.1c">10^{-2}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.m1.1d">10 start_POSTSUPERSCRIPT - 2 end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.4.4.4"><math alttext="10^{-3}" class="ltx_Math" display="inline" id="S4.T4.4.4.4.m1.1"><semantics id="S4.T4.4.4.4.m1.1a"><msup id="S4.T4.4.4.4.m1.1.1" xref="S4.T4.4.4.4.m1.1.1.cmml"><mn id="S4.T4.4.4.4.m1.1.1.2" xref="S4.T4.4.4.4.m1.1.1.2.cmml">10</mn><mrow id="S4.T4.4.4.4.m1.1.1.3" xref="S4.T4.4.4.4.m1.1.1.3.cmml"><mo id="S4.T4.4.4.4.m1.1.1.3a" xref="S4.T4.4.4.4.m1.1.1.3.cmml">−</mo><mn id="S4.T4.4.4.4.m1.1.1.3.2" xref="S4.T4.4.4.4.m1.1.1.3.2.cmml">3</mn></mrow></msup><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.m1.1b"><apply id="S4.T4.4.4.4.m1.1.1.cmml" xref="S4.T4.4.4.4.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.4.4.4.m1.1.1.1.cmml" xref="S4.T4.4.4.4.m1.1.1">superscript</csymbol><cn id="S4.T4.4.4.4.m1.1.1.2.cmml" type="integer" xref="S4.T4.4.4.4.m1.1.1.2">10</cn><apply id="S4.T4.4.4.4.m1.1.1.3.cmml" xref="S4.T4.4.4.4.m1.1.1.3"><minus id="S4.T4.4.4.4.m1.1.1.3.1.cmml" xref="S4.T4.4.4.4.m1.1.1.3"></minus><cn id="S4.T4.4.4.4.m1.1.1.3.2.cmml" type="integer" xref="S4.T4.4.4.4.m1.1.1.3.2">3</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.m1.1c">10^{-3}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.m1.1d">10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.5.5.5"><math alttext="10^{-4}" class="ltx_Math" display="inline" id="S4.T4.5.5.5.m1.1"><semantics id="S4.T4.5.5.5.m1.1a"><msup id="S4.T4.5.5.5.m1.1.1" xref="S4.T4.5.5.5.m1.1.1.cmml"><mn id="S4.T4.5.5.5.m1.1.1.2" xref="S4.T4.5.5.5.m1.1.1.2.cmml">10</mn><mrow id="S4.T4.5.5.5.m1.1.1.3" xref="S4.T4.5.5.5.m1.1.1.3.cmml"><mo id="S4.T4.5.5.5.m1.1.1.3a" xref="S4.T4.5.5.5.m1.1.1.3.cmml">−</mo><mn id="S4.T4.5.5.5.m1.1.1.3.2" xref="S4.T4.5.5.5.m1.1.1.3.2.cmml">4</mn></mrow></msup><annotation-xml encoding="MathML-Content" id="S4.T4.5.5.5.m1.1b"><apply id="S4.T4.5.5.5.m1.1.1.cmml" xref="S4.T4.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.5.5.5.m1.1.1.1.cmml" xref="S4.T4.5.5.5.m1.1.1">superscript</csymbol><cn id="S4.T4.5.5.5.m1.1.1.2.cmml" type="integer" xref="S4.T4.5.5.5.m1.1.1.2">10</cn><apply id="S4.T4.5.5.5.m1.1.1.3.cmml" xref="S4.T4.5.5.5.m1.1.1.3"><minus id="S4.T4.5.5.5.m1.1.1.3.1.cmml" xref="S4.T4.5.5.5.m1.1.1.3"></minus><cn id="S4.T4.5.5.5.m1.1.1.3.2.cmml" type="integer" xref="S4.T4.5.5.5.m1.1.1.3.2">4</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.5.5.m1.1c">10^{-4}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.5.5.m1.1d">10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.5.6.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.5.6.1.1">32</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.6.1.2">0.704</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.6.1.3">0.686</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.6.1.4">0.716</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.6.1.5">0.729</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.7.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.5.7.2.1">64</th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.7.2.2">0.721</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.7.2.3">0.736</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.7.2.4">0.712</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.7.2.5">0.724</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.8.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.5.8.3.1">128</th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.8.3.2">0.736</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.8.3.3">0.735</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.8.3.4"><span class="ltx_text ltx_font_bold" id="S4.T4.5.8.3.4.1">0.759</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.8.3.5">0.716</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.9.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.5.9.4.1">256</th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.9.4.2">0.739</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.9.4.3">0.727</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.9.4.4">0.738</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.9.4.5">0.716</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.10.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T4.5.10.5.1">512</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.10.5.2">0.705</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.10.5.3">0.704</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.10.5.4">0.676</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.10.5.5">0.707</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of the hyperparameters \(\tau\) and \(\nu\) on the performance of the Subspace Gradient (SG) method within the ZOODiP framework.  The study systematically varies \(\tau\) (the number of past gradient updates used to construct the subspace) and \(\nu\) (a hyperparameter controlling the amount of variance retained in the PCA dimensionality reduction). Performance is evaluated using the CLIP-I image alignment score.  All experiments were conducted using the <shiny_sneaker> dataset from the DreamBooth dataset to ensure consistency.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study on hyperparameters τ𝜏\tauitalic_τ and ν𝜈\nuitalic_ν incorporated with SG. We optimized the pseudo-token with various τ𝜏\tauitalic_τ and ν𝜈\nuitalic_ν and measured the performance with the CLIP-I score. Experiments were done with <shiny_sneaker> dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T5.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T5.3.3.4">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1">CLIP-T<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.m1.1.1" stretchy="false" xref="S4.T5.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.2.2.2">CLIP-I<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.2.2.2.m1.1"><semantics id="S4.T5.2.2.2.m1.1a"><mo id="S4.T5.2.2.2.m1.1.1" stretchy="false" xref="S4.T5.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.m1.1b"><ci id="S4.T5.2.2.2.m1.1.1.cmml" xref="S4.T5.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.3.3.3">DINO<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.3.3.3.m1.1"><semantics id="S4.T5.3.3.3.m1.1a"><mo id="S4.T5.3.3.3.m1.1.1" stretchy="false" xref="S4.T5.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.3.3.3.m1.1b"><ci id="S4.T5.3.3.3.m1.1.1.cmml" xref="S4.T5.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.3.4.1.1">Uniform</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.4.1.2">0.265</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.4.1.3">0.747</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.4.1.4">0.527</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.5.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.3.5.2.1">SNR-based</th>
<td class="ltx_td ltx_align_center" id="S4.T5.3.5.2.2"><span class="ltx_text ltx_font_bold" id="S4.T5.3.5.2.2.1">0.271</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.5.2.3">0.719</td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.5.2.4">0.545</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.6.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T5.3.6.3.1"><span class="ltx_text ltx_font_bold" id="S4.T5.3.6.3.1.1">PUTS (Ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.6.3.2">0.266</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.6.3.3"><span class="ltx_text ltx_font_bold" id="S4.T5.3.6.3.3.1">0.759</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.6.3.4"><span class="ltx_text ltx_font_bold" id="S4.T5.3.6.3.4.1">0.569</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study on different diffusion timestep sampling methods used in personalizing a Stable Diffusion model for the  `<shiny_sneaker>` subject.  The study compared three methods: uniform sampling, SNR-based sampling, and Partial Uniform Timestep Sampling (PUTS), which was proposed in the paper. The table shows the performance of each method based on image and text alignment scores.  The results indicate that PUTS achieves the best image alignment score but has a slightly lower text alignment score compared to the SNR-based method. This suggests a trade-off between image and text alignment when selecting a timestep sampling strategy.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation study on various diffusion timestep sampling method with <shiny_sneaker>. PUTS outperforms in image alignment score among all sample methods with minor degradation in text alignment score compared to SNR-based sampling.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S1.T1.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T1.2.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S1.T1.2.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.1.1.1.1">
<span class="ltx_p" id="S1.T1.2.1.1.1.1.1" style="width:421.6pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.1.1.1.1" style="font-size:80%;">Subjects in DreamBooth <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14868v1#bib.bib52" title=""><span class="ltx_text" style="font-size:90%;">52</span></a>]</cite> dataset</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="S1.T1.2.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.2.2.1.1">
<span class="ltx_p" id="S1.T1.2.2.2.1.1.1" style="width:421.6pt;"><span class="ltx_text" id="S1.T1.2.2.2.1.1.1.1" style="font-size:80%;">backpack, backpack_dog, bear_plushie, berry_bowl, can, candle, cat, cat2, clock, colorful_sneaker, dog, dog2, dog3, dog5, dog6, dog7, dog8, duck_toy, fancy_boot, grey_sloth_plushie, monster_toy, pink_sunglasses, poop_emoji, rc_car, red_cartoon, robot_toy, shiny_sneaker, teapot, vase, wolf_plushie</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table S1 lists all 30 subjects used in the DreamBooth dataset.  The table provides the full names of the subjects, clarifying that the names used in the main paper are shortened versions of these longer subject names.
> <details>
> <summary>read the caption</summary>
> Table S1: Full subjects name of DreamBooth dataset. The dataset names in the main paper are based on the corresponding subject datasets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S1.T2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S1.T2.2.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_t" colspan="2" id="S1.T2.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T2.2.1.1.1.1" style="font-size:80%;">Full prompt used in evaluation (living)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T2.2.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S1.T2.2.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.2.1.1.1">
<span class="ltx_p" id="S1.T2.2.2.1.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T2.2.2.1.1.1.1.1" style="font-size:80%;">1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S1.T2.2.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.2.1.2.1">
<span class="ltx_p" id="S1.T2.2.2.1.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T2.2.2.1.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T2.2.2.1.2.1.1.2" style="font-size:80%;">a {0} {1} in the jungle’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.2.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.3.2.1.1">
<span class="ltx_p" id="S1.T2.2.3.2.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T2.2.3.2.1.1.1.1" style="font-size:80%;">2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.3.2.2.1">
<span class="ltx_p" id="S1.T2.2.3.2.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T2.2.3.2.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T2.2.3.2.2.1.1.2" style="font-size:80%;">a {0} {1} in the snow’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.2.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.4.3.1.1">
<span class="ltx_p" id="S1.T2.2.4.3.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T2.2.4.3.1.1.1.1" style="font-size:80%;">3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.4.3.2.1">
<span class="ltx_p" id="S1.T2.2.4.3.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T2.2.4.3.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T2.2.4.3.2.1.1.2" style="font-size:80%;">a {0} {1} on the beach’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.2.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.5.4.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.5.4.1.1">
<span class="ltx_p" id="S1.T2.2.5.4.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T2.2.5.4.1.1.1.1" style="font-size:80%;">4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.5.4.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.5.4.2.1">
<span class="ltx_p" id="S1.T2.2.5.4.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T2.2.5.4.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T2.2.5.4.2.1.1.2" style="font-size:80%;">a {0} {1} on a cobblestone street’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.2.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.6.5.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.6.5.1.1">
<span class="ltx_p" id="S1.T2.2.6.5.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T2.2.6.5.1.1.1.1" style="font-size:80%;">5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.6.5.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.6.5.2.1">
<span class="ltx_p" id="S1.T2.2.6.5.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T2.2.6.5.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T2.2.6.5.2.1.1.2" style="font-size:80%;">a {0} {1} on top of pink fabric’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.2.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.7.6.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.7.6.1.1">
<span class="ltx_p" id="S1.T2.2.7.6.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T2.2.7.6.1.1.1.1" style="font-size:80%;">6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.7.6.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.7.6.2.1">
<span class="ltx_p" id="S1.T2.2.7.6.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T2.2.7.6.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T2.2.7.6.2.1.1.2" style="font-size:80%;">a {0} {1} on top of a wooden floor’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.2.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.8.7.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.8.7.1.1">
<span class="ltx_p" id="S1.T2.2.8.7.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T2.2.8.7.1.1.1.1" style="font-size:80%;">7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.8.7.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.8.7.2.1">
<span class="ltx_p" id="S1.T2.2.8.7.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T2.2.8.7.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T2.2.8.7.2.1.1.2" style="font-size:80%;">a {0} {1} with a city in the background’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.2.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.9.8.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.9.8.1.1">
<span class="ltx_p" id="S1.T2.2.9.8.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T2.2.9.8.1.1.1.1" style="font-size:80%;">8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.9.8.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.9.8.2.1">
<span class="ltx_p" id="S1.T2.2.9.8.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T2.2.9.8.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T2.2.9.8.2.1.1.2" style="font-size:80%;">a {0} {1} with a mountain in the background’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.2.10.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.10.9.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.10.9.1.1">
<span class="ltx_p" id="S1.T2.2.10.9.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T2.2.10.9.1.1.1.1" style="font-size:80%;">9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.10.9.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.10.9.2.1">
<span class="ltx_p" id="S1.T2.2.10.9.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T2.2.10.9.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T2.2.10.9.2.1.1.2" style="font-size:80%;">a {0} {1} with a blue house in the background’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.2.11.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.11.10.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.11.10.1.1">
<span class="ltx_p" id="S1.T2.2.11.10.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T2.2.11.10.1.1.1.1" style="font-size:80%;">10</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.11.10.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.11.10.2.1">
<span class="ltx_p" id="S1.T2.2.11.10.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T2.2.11.10.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T2.2.11.10.2.1.1.2" style="font-size:80%;">a {0} {1} on top of a purple rug in a forest’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.2.12.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.12.11.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.12.11.1.1">
<span class="ltx_p" id="S1.T2.2.12.11.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T2.2.12.11.1.1.1.1" style="font-size:80%;">11</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.12.11.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.12.11.2.1">
<span class="ltx_p" id="S1.T2.2.12.11.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T2.2.12.11.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T2.2.12.11.2.1.1.2" style="font-size:80%;">a {0} {1} wearing a red hat’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.2.13.12">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.13.12.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.13.12.1.1">
<span class="ltx_p" id="S1.T2.2.13.12.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T2.2.13.12.1.1.1.1" style="font-size:80%;">12</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.13.12.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.13.12.2.1">
<span class="ltx_p" id="S1.T2.2.13.12.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T2.2.13.12.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T2.2.13.12.2.1.1.2" style="font-size:80%;">a {0} {1} wearing a santa hat’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.2.14.13">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.14.13.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.14.13.1.1">
<span class="ltx_p" id="S1.T2.2.14.13.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T2.2.14.13.1.1.1.1" style="font-size:80%;">13</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.14.13.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.14.13.2.1">
<span class="ltx_p" id="S1.T2.2.14.13.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T2.2.14.13.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T2.2.14.13.2.1.1.2" style="font-size:80%;">a {0} {1} wearing a rainbow scarf’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.2.15.14">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.15.14.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.15.14.1.1">
<span class="ltx_p" id="S1.T2.2.15.14.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T2.2.15.14.1.1.1.1" style="font-size:80%;">14</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.15.14.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.15.14.2.1">
<span class="ltx_p" id="S1.T2.2.15.14.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T2.2.15.14.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T2.2.15.14.2.1.1.2" style="font-size:80%;">a {0} {1} wearing a black top hat and a monocle’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.2.16.15">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.16.15.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.16.15.1.1">
<span class="ltx_p" id="S1.T2.2.16.15.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T2.2.16.15.1.1.1.1" style="font-size:80%;">15</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.16.15.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.16.15.2.1">
<span class="ltx_p" id="S1.T2.2.16.15.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T2.2.16.15.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T2.2.16.15.2.1.1.2" style="font-size:80%;">a {0} {1} in a chef outfit’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.2.17.16">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.17.16.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.17.16.1.1">
<span class="ltx_p" id="S1.T2.2.17.16.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T2.2.17.16.1.1.1.1" style="font-size:80%;">16</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.17.16.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.17.16.2.1">
<span class="ltx_p" id="S1.T2.2.17.16.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T2.2.17.16.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T2.2.17.16.2.1.1.2" style="font-size:80%;">a {0} {1} in a firefighter outfit’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.2.18.17">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.18.17.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.18.17.1.1">
<span class="ltx_p" id="S1.T2.2.18.17.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T2.2.18.17.1.1.1.1" style="font-size:80%;">17</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.18.17.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.18.17.2.1">
<span class="ltx_p" id="S1.T2.2.18.17.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T2.2.18.17.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T2.2.18.17.2.1.1.2" style="font-size:80%;">a {0} {1} in a police outfit’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.2.19.18">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.19.18.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.19.18.1.1">
<span class="ltx_p" id="S1.T2.2.19.18.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T2.2.19.18.1.1.1.1" style="font-size:80%;">18</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.19.18.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.19.18.2.1">
<span class="ltx_p" id="S1.T2.2.19.18.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T2.2.19.18.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T2.2.19.18.2.1.1.2" style="font-size:80%;">a {0} {1} wearing pink glasses’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.2.20.19">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.20.19.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.20.19.1.1">
<span class="ltx_p" id="S1.T2.2.20.19.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T2.2.20.19.1.1.1.1" style="font-size:80%;">19</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.20.19.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.20.19.2.1">
<span class="ltx_p" id="S1.T2.2.20.19.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T2.2.20.19.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T2.2.20.19.2.1.1.2" style="font-size:80%;">a {0} {1} wearing a yellow shirt’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.2.21.20">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.21.20.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.21.20.1.1">
<span class="ltx_p" id="S1.T2.2.21.20.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T2.2.21.20.1.1.1.1" style="font-size:80%;">20</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.21.20.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.21.20.2.1">
<span class="ltx_p" id="S1.T2.2.21.20.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T2.2.21.20.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T2.2.21.20.2.1.1.2" style="font-size:80%;">a {0} {1} in a purple wizard outfit’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.2.22.21">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.22.21.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.22.21.1.1">
<span class="ltx_p" id="S1.T2.2.22.21.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T2.2.22.21.1.1.1.1" style="font-size:80%;">21</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.22.21.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.22.21.2.1">
<span class="ltx_p" id="S1.T2.2.22.21.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T2.2.22.21.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T2.2.22.21.2.1.1.2" style="font-size:80%;">a red {0} {1}’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.2.23.22">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.23.22.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.23.22.1.1">
<span class="ltx_p" id="S1.T2.2.23.22.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T2.2.23.22.1.1.1.1" style="font-size:80%;">22</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.23.22.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.23.22.2.1">
<span class="ltx_p" id="S1.T2.2.23.22.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T2.2.23.22.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T2.2.23.22.2.1.1.2" style="font-size:80%;">a purple {0} {1}’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.2.24.23">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.24.23.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.24.23.1.1">
<span class="ltx_p" id="S1.T2.2.24.23.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T2.2.24.23.1.1.1.1" style="font-size:80%;">23</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.24.23.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.24.23.2.1">
<span class="ltx_p" id="S1.T2.2.24.23.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T2.2.24.23.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T2.2.24.23.2.1.1.2" style="font-size:80%;">a shiny {0} {1}’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.2.25.24">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.25.24.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.25.24.1.1">
<span class="ltx_p" id="S1.T2.2.25.24.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T2.2.25.24.1.1.1.1" style="font-size:80%;">24</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T2.2.25.24.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.25.24.2.1">
<span class="ltx_p" id="S1.T2.2.25.24.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T2.2.25.24.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T2.2.25.24.2.1.1.2" style="font-size:80%;">a wet {0} {1}’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.2.26.25">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S1.T2.2.26.25.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.26.25.1.1">
<span class="ltx_p" id="S1.T2.2.26.25.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T2.2.26.25.1.1.1.1" style="font-size:80%;">25</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S1.T2.2.26.25.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T2.2.26.25.2.1">
<span class="ltx_p" id="S1.T2.2.26.25.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T2.2.26.25.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T2.2.26.25.2.1.1.2" style="font-size:80%;">a cube shaped {0} {1}’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the prompts used to evaluate the personalization of living objects in the DreamBooth dataset. Each prompt contains a unique token representing the specific object to be personalized and a class token representing the object's class.  The table shows how varied prompts are used in evaluation and how the unique token is embedded within the prompt structure to facilitate personalized image generation.
> <details>
> <summary>read the caption</summary>
> Table S2: Full prompts used in evaluation of living category objects. unique_token represents the special token corresponds to object which aims to personalize, and class_token denotes the class that unique_token is in.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S1.T3.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S1.T3.2.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_t" colspan="2" id="S1.T3.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T3.2.1.1.1.1" style="font-size:80%;">Full prompt used in evaluation (non-living)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T3.2.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S1.T3.2.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.2.1.1.1">
<span class="ltx_p" id="S1.T3.2.2.1.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T3.2.2.1.1.1.1.1" style="font-size:80%;">1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S1.T3.2.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.2.1.2.1">
<span class="ltx_p" id="S1.T3.2.2.1.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T3.2.2.1.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T3.2.2.1.2.1.1.2" style="font-size:80%;">a {0} {1} in the jungle’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T3.2.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.3.2.1.1">
<span class="ltx_p" id="S1.T3.2.3.2.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T3.2.3.2.1.1.1.1" style="font-size:80%;">2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.3.2.2.1">
<span class="ltx_p" id="S1.T3.2.3.2.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T3.2.3.2.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T3.2.3.2.2.1.1.2" style="font-size:80%;">a {0} {1} in the snow’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T3.2.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.4.3.1.1">
<span class="ltx_p" id="S1.T3.2.4.3.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T3.2.4.3.1.1.1.1" style="font-size:80%;">3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.4.3.2.1">
<span class="ltx_p" id="S1.T3.2.4.3.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T3.2.4.3.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T3.2.4.3.2.1.1.2" style="font-size:80%;">a {0} {1} on the beach’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T3.2.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.5.4.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.5.4.1.1">
<span class="ltx_p" id="S1.T3.2.5.4.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T3.2.5.4.1.1.1.1" style="font-size:80%;">4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.5.4.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.5.4.2.1">
<span class="ltx_p" id="S1.T3.2.5.4.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T3.2.5.4.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T3.2.5.4.2.1.1.2" style="font-size:80%;">a {0} {1} on a cobblestone street’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T3.2.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.6.5.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.6.5.1.1">
<span class="ltx_p" id="S1.T3.2.6.5.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T3.2.6.5.1.1.1.1" style="font-size:80%;">5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.6.5.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.6.5.2.1">
<span class="ltx_p" id="S1.T3.2.6.5.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T3.2.6.5.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T3.2.6.5.2.1.1.2" style="font-size:80%;">a {0} {1} on top of pink fabric’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T3.2.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.7.6.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.7.6.1.1">
<span class="ltx_p" id="S1.T3.2.7.6.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T3.2.7.6.1.1.1.1" style="font-size:80%;">6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.7.6.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.7.6.2.1">
<span class="ltx_p" id="S1.T3.2.7.6.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T3.2.7.6.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T3.2.7.6.2.1.1.2" style="font-size:80%;">a {0} {1} on top of a wooden floor’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T3.2.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.8.7.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.8.7.1.1">
<span class="ltx_p" id="S1.T3.2.8.7.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T3.2.8.7.1.1.1.1" style="font-size:80%;">7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.8.7.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.8.7.2.1">
<span class="ltx_p" id="S1.T3.2.8.7.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T3.2.8.7.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T3.2.8.7.2.1.1.2" style="font-size:80%;">a {0} {1} with a city in the background’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T3.2.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.9.8.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.9.8.1.1">
<span class="ltx_p" id="S1.T3.2.9.8.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T3.2.9.8.1.1.1.1" style="font-size:80%;">8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.9.8.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.9.8.2.1">
<span class="ltx_p" id="S1.T3.2.9.8.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T3.2.9.8.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T3.2.9.8.2.1.1.2" style="font-size:80%;">a {0} {1} with a mountain in the background’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T3.2.10.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.10.9.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.10.9.1.1">
<span class="ltx_p" id="S1.T3.2.10.9.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T3.2.10.9.1.1.1.1" style="font-size:80%;">9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.10.9.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.10.9.2.1">
<span class="ltx_p" id="S1.T3.2.10.9.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T3.2.10.9.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T3.2.10.9.2.1.1.2" style="font-size:80%;">a {0} {1} with a blue house in the background’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T3.2.11.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.11.10.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.11.10.1.1">
<span class="ltx_p" id="S1.T3.2.11.10.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T3.2.11.10.1.1.1.1" style="font-size:80%;">10</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.11.10.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.11.10.2.1">
<span class="ltx_p" id="S1.T3.2.11.10.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T3.2.11.10.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T3.2.11.10.2.1.1.2" style="font-size:80%;">a {0} {1} on top of a purple rug in a forest’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T3.2.12.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.12.11.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.12.11.1.1">
<span class="ltx_p" id="S1.T3.2.12.11.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T3.2.12.11.1.1.1.1" style="font-size:80%;">11</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.12.11.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.12.11.2.1">
<span class="ltx_p" id="S1.T3.2.12.11.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T3.2.12.11.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T3.2.12.11.2.1.1.2" style="font-size:80%;">a {0} {1} with a wheat field in the background’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T3.2.13.12">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.13.12.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.13.12.1.1">
<span class="ltx_p" id="S1.T3.2.13.12.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T3.2.13.12.1.1.1.1" style="font-size:80%;">12</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.13.12.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.13.12.2.1">
<span class="ltx_p" id="S1.T3.2.13.12.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T3.2.13.12.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T3.2.13.12.2.1.1.2" style="font-size:80%;">a {0} {1} with a tree and autumn leaves in the background’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T3.2.14.13">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.14.13.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.14.13.1.1">
<span class="ltx_p" id="S1.T3.2.14.13.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T3.2.14.13.1.1.1.1" style="font-size:80%;">13</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.14.13.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.14.13.2.1">
<span class="ltx_p" id="S1.T3.2.14.13.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T3.2.14.13.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T3.2.14.13.2.1.1.2" style="font-size:80%;">a {0} {1} with the Eiffel Tower in the background’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T3.2.15.14">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.15.14.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.15.14.1.1">
<span class="ltx_p" id="S1.T3.2.15.14.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T3.2.15.14.1.1.1.1" style="font-size:80%;">14</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.15.14.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.15.14.2.1">
<span class="ltx_p" id="S1.T3.2.15.14.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T3.2.15.14.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T3.2.15.14.2.1.1.2" style="font-size:80%;">a {0} {1} floating on top of water.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T3.2.16.15">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.16.15.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.16.15.1.1">
<span class="ltx_p" id="S1.T3.2.16.15.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T3.2.16.15.1.1.1.1" style="font-size:80%;">15</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.16.15.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.16.15.2.1">
<span class="ltx_p" id="S1.T3.2.16.15.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T3.2.16.15.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T3.2.16.15.2.1.1.2" style="font-size:80%;">a {0} {1} floating in an ocean of milk’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T3.2.17.16">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.17.16.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.17.16.1.1">
<span class="ltx_p" id="S1.T3.2.17.16.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T3.2.17.16.1.1.1.1" style="font-size:80%;">16</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.17.16.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.17.16.2.1">
<span class="ltx_p" id="S1.T3.2.17.16.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T3.2.17.16.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T3.2.17.16.2.1.1.2" style="font-size:80%;">a {0} {1} on top of green grass with sunflowers around it’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T3.2.18.17">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.18.17.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.18.17.1.1">
<span class="ltx_p" id="S1.T3.2.18.17.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T3.2.18.17.1.1.1.1" style="font-size:80%;">17</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.18.17.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.18.17.2.1">
<span class="ltx_p" id="S1.T3.2.18.17.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T3.2.18.17.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T3.2.18.17.2.1.1.2" style="font-size:80%;">a {0} {1} on top of a mirror’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T3.2.19.18">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.19.18.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.19.18.1.1">
<span class="ltx_p" id="S1.T3.2.19.18.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T3.2.19.18.1.1.1.1" style="font-size:80%;">18</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.19.18.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.19.18.2.1">
<span class="ltx_p" id="S1.T3.2.19.18.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T3.2.19.18.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T3.2.19.18.2.1.1.2" style="font-size:80%;">a {0} {1} on top of the sidewalk in a crowded street’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T3.2.20.19">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.20.19.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.20.19.1.1">
<span class="ltx_p" id="S1.T3.2.20.19.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T3.2.20.19.1.1.1.1" style="font-size:80%;">19</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.20.19.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.20.19.2.1">
<span class="ltx_p" id="S1.T3.2.20.19.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T3.2.20.19.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T3.2.20.19.2.1.1.2" style="font-size:80%;">a {0} {1} on top of a dirt road’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T3.2.21.20">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.21.20.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.21.20.1.1">
<span class="ltx_p" id="S1.T3.2.21.20.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T3.2.21.20.1.1.1.1" style="font-size:80%;">20</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.21.20.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.21.20.2.1">
<span class="ltx_p" id="S1.T3.2.21.20.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T3.2.21.20.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T3.2.21.20.2.1.1.2" style="font-size:80%;">a {0} {1} on top of a white rug’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T3.2.22.21">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.22.21.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.22.21.1.1">
<span class="ltx_p" id="S1.T3.2.22.21.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T3.2.22.21.1.1.1.1" style="font-size:80%;">21</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.22.21.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.22.21.2.1">
<span class="ltx_p" id="S1.T3.2.22.21.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T3.2.22.21.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T3.2.22.21.2.1.1.2" style="font-size:80%;">a red {0} {1}’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T3.2.23.22">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.23.22.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.23.22.1.1">
<span class="ltx_p" id="S1.T3.2.23.22.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T3.2.23.22.1.1.1.1" style="font-size:80%;">22</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.23.22.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.23.22.2.1">
<span class="ltx_p" id="S1.T3.2.23.22.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T3.2.23.22.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T3.2.23.22.2.1.1.2" style="font-size:80%;">a purple {0} {1}’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T3.2.24.23">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.24.23.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.24.23.1.1">
<span class="ltx_p" id="S1.T3.2.24.23.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T3.2.24.23.1.1.1.1" style="font-size:80%;">23</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.24.23.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.24.23.2.1">
<span class="ltx_p" id="S1.T3.2.24.23.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T3.2.24.23.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T3.2.24.23.2.1.1.2" style="font-size:80%;">a shiny {0} {1}’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T3.2.25.24">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.25.24.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.25.24.1.1">
<span class="ltx_p" id="S1.T3.2.25.24.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T3.2.25.24.1.1.1.1" style="font-size:80%;">24</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S1.T3.2.25.24.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.25.24.2.1">
<span class="ltx_p" id="S1.T3.2.25.24.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T3.2.25.24.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T3.2.25.24.2.1.1.2" style="font-size:80%;">a wet {0} {1}’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T3.2.26.25">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S1.T3.2.26.25.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.26.25.1.1">
<span class="ltx_p" id="S1.T3.2.26.25.1.1.1" style="width:4.3pt;"><span class="ltx_text" id="S1.T3.2.26.25.1.1.1.1" style="font-size:80%;">25</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S1.T3.2.26.25.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T3.2.26.25.2.1">
<span class="ltx_p" id="S1.T3.2.26.25.2.1.1" style="width:403.3pt;"><span class="ltx_text" id="S1.T3.2.26.25.2.1.1.1" style="font-size:80%;">‘</span><span class="ltx_text ltx_font_typewriter" id="S1.T3.2.26.25.2.1.1.2" style="font-size:80%;">a cube shaped {0} {1}’.format(unique_token, class_token)</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table S3 shows the prompts used to evaluate the personalization of non-living objects in the DreamBooth dataset.  Each prompt includes a unique token that represents the specific object to be personalized and a class token representing the category of the object. The table aids in understanding how different textual descriptions are used to assess the personalization capabilities of the model, focusing on non-living objects.
> <details>
> <summary>read the caption</summary>
> Table S3: Full prompts used in evaluation of non-living category objects. unique_token represents the special token corresponds to object which aims to personalize, and class_token denotes the class that unique_token is in.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S2.T4.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S2.T4.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S2.T4.3.3.4">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T4.1.1.1">CLIP-T<math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T4.1.1.1.m1.1"><semantics id="S2.T4.1.1.1.m1.1a"><mo id="S2.T4.1.1.1.m1.1.1" stretchy="false" xref="S2.T4.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T4.1.1.1.m1.1b"><ci id="S2.T4.1.1.1.m1.1.1.cmml" xref="S2.T4.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T4.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T4.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T4.2.2.2">CLIP-I<math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T4.2.2.2.m1.1"><semantics id="S2.T4.2.2.2.m1.1a"><mo id="S2.T4.2.2.2.m1.1.1" stretchy="false" xref="S2.T4.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T4.2.2.2.m1.1b"><ci id="S2.T4.2.2.2.m1.1.1.cmml" xref="S2.T4.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T4.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T4.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T4.3.3.3">DINO<math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T4.3.3.3.m1.1"><semantics id="S2.T4.3.3.3.m1.1a"><mo id="S2.T4.3.3.3.m1.1.1" stretchy="false" xref="S2.T4.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T4.3.3.3.m1.1b"><ci id="S2.T4.3.3.3.m1.1.1.cmml" xref="S2.T4.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T4.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T4.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T4.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S2.T4.3.4.1.1">RGE</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.3.4.1.2">0.266</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.3.4.1.3">0.759</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T4.3.4.1.4">0.569</td>
</tr>
<tr class="ltx_tr" id="S2.T4.3.5.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T4.3.5.2.1">SPSA</th>
<td class="ltx_td ltx_align_center" id="S2.T4.3.5.2.2">0.277</td>
<td class="ltx_td ltx_align_center" id="S2.T4.3.5.2.3">0.732</td>
<td class="ltx_td ltx_align_center" id="S2.T4.3.5.2.4">0.506</td>
</tr>
<tr class="ltx_tr" id="S2.T4.3.6.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S2.T4.3.6.3.1">One-point</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T4.3.6.3.2">0.296</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T4.3.6.3.3">0.703</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T4.3.6.3.4">0.393</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table S4 details a comparison of different gradient estimation methods used in the personalization process of a diffusion model.  Three methods are compared: Random Gradient Estimation (RGE), Simultaneous Perturbation Stochastic Approximation (SPSA), and a one-point estimation method. The comparison focuses on personalization performance (CLIP-T, CLIP-I, DINO scores) and computational efficiency (forward passes). The results show that RGE outperforms the other two methods in both performance and efficiency, especially when using more than one perturbation direction (n > 1). Due to its superior performance and efficiency, RGE was selected as the gradient estimation method for ZOODiP.
> <details>
> <summary>read the caption</summary>
> Table S4: Personalization performance across different gradient estimation methods with n=2𝑛2n=2italic_n = 2. The results show that RGE outperforms other two different gradient estimations methods. Notably, RGE is more efficient in terms of computational cost, requiring fewer forward passes than SPSA when n>1𝑛1n>1italic_n > 1. Due to this efficiency and performance advantages, we adopted RGE as the gradient estimation method in ZOODiP.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S2.T5.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S2.T5.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S2.T5.1.1.1"><math alttext="\mu" class="ltx_Math" display="inline" id="S2.T5.1.1.1.m1.1"><semantics id="S2.T5.1.1.1.m1.1a"><mi id="S2.T5.1.1.1.m1.1.1" xref="S2.T5.1.1.1.m1.1.1.cmml">μ</mi><annotation-xml encoding="MathML-Content" id="S2.T5.1.1.1.m1.1b"><ci id="S2.T5.1.1.1.m1.1.1.cmml" xref="S2.T5.1.1.1.m1.1.1">𝜇</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.1.1.1.m1.1c">\mu</annotation><annotation encoding="application/x-llamapun" id="S2.T5.1.1.1.m1.1d">italic_μ</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T5.2.2.2">CLIP-T<math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T5.2.2.2.m1.1"><semantics id="S2.T5.2.2.2.m1.1a"><mo id="S2.T5.2.2.2.m1.1.1" stretchy="false" xref="S2.T5.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T5.2.2.2.m1.1b"><ci id="S2.T5.2.2.2.m1.1.1.cmml" xref="S2.T5.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T5.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T5.3.3.3">CLIP-I<math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T5.3.3.3.m1.1"><semantics id="S2.T5.3.3.3.m1.1a"><mo id="S2.T5.3.3.3.m1.1.1" stretchy="false" xref="S2.T5.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T5.3.3.3.m1.1b"><ci id="S2.T5.3.3.3.m1.1.1.cmml" xref="S2.T5.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T5.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T5.4.4.4">DINO<math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T5.4.4.4.m1.1"><semantics id="S2.T5.4.4.4.m1.1a"><mo id="S2.T5.4.4.4.m1.1.1" stretchy="false" xref="S2.T5.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T5.4.4.4.m1.1b"><ci id="S2.T5.4.4.4.m1.1.1.cmml" xref="S2.T5.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T5.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T5.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S2.T5.5.5.1"><math alttext="1\times 10^{-2}" class="ltx_Math" display="inline" id="S2.T5.5.5.1.m1.1"><semantics id="S2.T5.5.5.1.m1.1a"><mrow id="S2.T5.5.5.1.m1.1.1" xref="S2.T5.5.5.1.m1.1.1.cmml"><mn id="S2.T5.5.5.1.m1.1.1.2" xref="S2.T5.5.5.1.m1.1.1.2.cmml">1</mn><mo id="S2.T5.5.5.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S2.T5.5.5.1.m1.1.1.1.cmml">×</mo><msup id="S2.T5.5.5.1.m1.1.1.3" xref="S2.T5.5.5.1.m1.1.1.3.cmml"><mn id="S2.T5.5.5.1.m1.1.1.3.2" xref="S2.T5.5.5.1.m1.1.1.3.2.cmml">10</mn><mrow id="S2.T5.5.5.1.m1.1.1.3.3" xref="S2.T5.5.5.1.m1.1.1.3.3.cmml"><mo id="S2.T5.5.5.1.m1.1.1.3.3a" xref="S2.T5.5.5.1.m1.1.1.3.3.cmml">−</mo><mn id="S2.T5.5.5.1.m1.1.1.3.3.2" xref="S2.T5.5.5.1.m1.1.1.3.3.2.cmml">2</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S2.T5.5.5.1.m1.1b"><apply id="S2.T5.5.5.1.m1.1.1.cmml" xref="S2.T5.5.5.1.m1.1.1"><times id="S2.T5.5.5.1.m1.1.1.1.cmml" xref="S2.T5.5.5.1.m1.1.1.1"></times><cn id="S2.T5.5.5.1.m1.1.1.2.cmml" type="integer" xref="S2.T5.5.5.1.m1.1.1.2">1</cn><apply id="S2.T5.5.5.1.m1.1.1.3.cmml" xref="S2.T5.5.5.1.m1.1.1.3"><csymbol cd="ambiguous" id="S2.T5.5.5.1.m1.1.1.3.1.cmml" xref="S2.T5.5.5.1.m1.1.1.3">superscript</csymbol><cn id="S2.T5.5.5.1.m1.1.1.3.2.cmml" type="integer" xref="S2.T5.5.5.1.m1.1.1.3.2">10</cn><apply id="S2.T5.5.5.1.m1.1.1.3.3.cmml" xref="S2.T5.5.5.1.m1.1.1.3.3"><minus id="S2.T5.5.5.1.m1.1.1.3.3.1.cmml" xref="S2.T5.5.5.1.m1.1.1.3.3"></minus><cn id="S2.T5.5.5.1.m1.1.1.3.3.2.cmml" type="integer" xref="S2.T5.5.5.1.m1.1.1.3.3.2">2</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.5.5.1.m1.1c">1\times 10^{-2}</annotation><annotation encoding="application/x-llamapun" id="S2.T5.5.5.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 2 end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.5.5.2">0.281</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.5.5.3">0.778</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T5.5.5.4">0.599</td>
</tr>
<tr class="ltx_tr" id="S2.T5.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T5.6.6.1"><math alttext="\mathbf{1\times 10^{-3}}" class="ltx_Math" display="inline" id="S2.T5.6.6.1.m1.1"><semantics id="S2.T5.6.6.1.m1.1a"><mrow id="S2.T5.6.6.1.m1.1.1" xref="S2.T5.6.6.1.m1.1.1.cmml"><mn id="S2.T5.6.6.1.m1.1.1.2" xref="S2.T5.6.6.1.m1.1.1.2.cmml">𝟏</mn><mo id="S2.T5.6.6.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S2.T5.6.6.1.m1.1.1.1.cmml">×</mo><msup id="S2.T5.6.6.1.m1.1.1.3" xref="S2.T5.6.6.1.m1.1.1.3.cmml"><mn id="S2.T5.6.6.1.m1.1.1.3.2" xref="S2.T5.6.6.1.m1.1.1.3.2.cmml">𝟏𝟎</mn><mrow id="S2.T5.6.6.1.m1.1.1.3.3" xref="S2.T5.6.6.1.m1.1.1.3.3.cmml"><mo id="S2.T5.6.6.1.m1.1.1.3.3a" xref="S2.T5.6.6.1.m1.1.1.3.3.cmml">−</mo><mn id="S2.T5.6.6.1.m1.1.1.3.3.2" xref="S2.T5.6.6.1.m1.1.1.3.3.2.cmml">𝟑</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S2.T5.6.6.1.m1.1b"><apply id="S2.T5.6.6.1.m1.1.1.cmml" xref="S2.T5.6.6.1.m1.1.1"><times id="S2.T5.6.6.1.m1.1.1.1.cmml" xref="S2.T5.6.6.1.m1.1.1.1"></times><cn id="S2.T5.6.6.1.m1.1.1.2.cmml" type="integer" xref="S2.T5.6.6.1.m1.1.1.2">1</cn><apply id="S2.T5.6.6.1.m1.1.1.3.cmml" xref="S2.T5.6.6.1.m1.1.1.3"><csymbol cd="ambiguous" id="S2.T5.6.6.1.m1.1.1.3.1.cmml" xref="S2.T5.6.6.1.m1.1.1.3">superscript</csymbol><cn id="S2.T5.6.6.1.m1.1.1.3.2.cmml" type="integer" xref="S2.T5.6.6.1.m1.1.1.3.2">10</cn><apply id="S2.T5.6.6.1.m1.1.1.3.3.cmml" xref="S2.T5.6.6.1.m1.1.1.3.3"><minus id="S2.T5.6.6.1.m1.1.1.3.3.1.cmml" xref="S2.T5.6.6.1.m1.1.1.3.3"></minus><cn id="S2.T5.6.6.1.m1.1.1.3.3.2.cmml" type="integer" xref="S2.T5.6.6.1.m1.1.1.3.3.2">3</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.6.6.1.m1.1c">\mathbf{1\times 10^{-3}}</annotation><annotation encoding="application/x-llamapun" id="S2.T5.6.6.1.m1.1d">bold_1 × bold_10 start_POSTSUPERSCRIPT - bold_3 end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S2.T5.6.6.2">0.277</td>
<td class="ltx_td ltx_align_center" id="S2.T5.6.6.3"><span class="ltx_text ltx_font_bold" id="S2.T5.6.6.3.1">0.797</span></td>
<td class="ltx_td ltx_align_center" id="S2.T5.6.6.4"><span class="ltx_text ltx_font_bold" id="S2.T5.6.6.4.1">0.613</span></td>
</tr>
<tr class="ltx_tr" id="S2.T5.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S2.T5.7.7.1"><math alttext="1\times 10^{-4}" class="ltx_Math" display="inline" id="S2.T5.7.7.1.m1.1"><semantics id="S2.T5.7.7.1.m1.1a"><mrow id="S2.T5.7.7.1.m1.1.1" xref="S2.T5.7.7.1.m1.1.1.cmml"><mn id="S2.T5.7.7.1.m1.1.1.2" xref="S2.T5.7.7.1.m1.1.1.2.cmml">1</mn><mo id="S2.T5.7.7.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S2.T5.7.7.1.m1.1.1.1.cmml">×</mo><msup id="S2.T5.7.7.1.m1.1.1.3" xref="S2.T5.7.7.1.m1.1.1.3.cmml"><mn id="S2.T5.7.7.1.m1.1.1.3.2" xref="S2.T5.7.7.1.m1.1.1.3.2.cmml">10</mn><mrow id="S2.T5.7.7.1.m1.1.1.3.3" xref="S2.T5.7.7.1.m1.1.1.3.3.cmml"><mo id="S2.T5.7.7.1.m1.1.1.3.3a" xref="S2.T5.7.7.1.m1.1.1.3.3.cmml">−</mo><mn id="S2.T5.7.7.1.m1.1.1.3.3.2" xref="S2.T5.7.7.1.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S2.T5.7.7.1.m1.1b"><apply id="S2.T5.7.7.1.m1.1.1.cmml" xref="S2.T5.7.7.1.m1.1.1"><times id="S2.T5.7.7.1.m1.1.1.1.cmml" xref="S2.T5.7.7.1.m1.1.1.1"></times><cn id="S2.T5.7.7.1.m1.1.1.2.cmml" type="integer" xref="S2.T5.7.7.1.m1.1.1.2">1</cn><apply id="S2.T5.7.7.1.m1.1.1.3.cmml" xref="S2.T5.7.7.1.m1.1.1.3"><csymbol cd="ambiguous" id="S2.T5.7.7.1.m1.1.1.3.1.cmml" xref="S2.T5.7.7.1.m1.1.1.3">superscript</csymbol><cn id="S2.T5.7.7.1.m1.1.1.3.2.cmml" type="integer" xref="S2.T5.7.7.1.m1.1.1.3.2">10</cn><apply id="S2.T5.7.7.1.m1.1.1.3.3.cmml" xref="S2.T5.7.7.1.m1.1.1.3.3"><minus id="S2.T5.7.7.1.m1.1.1.3.3.1.cmml" xref="S2.T5.7.7.1.m1.1.1.3.3"></minus><cn id="S2.T5.7.7.1.m1.1.1.3.3.2.cmml" type="integer" xref="S2.T5.7.7.1.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T5.7.7.1.m1.1c">1\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="S2.T5.7.7.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T5.7.7.2"><span class="ltx_text ltx_font_bold" id="S2.T5.7.7.2.1">0.296</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T5.7.7.3">0.724</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T5.7.7.4">0.470</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments conducted to find the optimal perturbation size (μ) for the ZOODiP method. The experiments varied the value of μ and measured the performance using three metrics: CLIP-T, CLIP-I, and DINO. The results show that μ = 10⁻³ achieved the best performance, and this value was used in the final ZOODiP implementation.
> <details>
> <summary>read the caption</summary>
> Table S5: Quantitative results for different μ𝜇\muitalic_μ values. Optimal performance is observed at μ=10−3𝜇superscript103\mu=10^{-3}italic_μ = 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT with varying μ𝜇\muitalic_μ, and we have set the value of μ𝜇\muitalic_μ accordingly for ZOODiP.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S2.T6.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S2.T6.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S2.T6.1.1.1"><math alttext="n" class="ltx_Math" display="inline" id="S2.T6.1.1.1.m1.1"><semantics id="S2.T6.1.1.1.m1.1a"><mi id="S2.T6.1.1.1.m1.1.1" xref="S2.T6.1.1.1.m1.1.1.cmml">n</mi><annotation-xml encoding="MathML-Content" id="S2.T6.1.1.1.m1.1b"><ci id="S2.T6.1.1.1.m1.1.1.cmml" xref="S2.T6.1.1.1.m1.1.1">𝑛</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T6.1.1.1.m1.1c">n</annotation><annotation encoding="application/x-llamapun" id="S2.T6.1.1.1.m1.1d">italic_n</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T6.2.2.2">CLIP-T<math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T6.2.2.2.m1.1"><semantics id="S2.T6.2.2.2.m1.1a"><mo id="S2.T6.2.2.2.m1.1.1" stretchy="false" xref="S2.T6.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T6.2.2.2.m1.1b"><ci id="S2.T6.2.2.2.m1.1.1.cmml" xref="S2.T6.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T6.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T6.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T6.3.3.3">CLIP-I<math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T6.3.3.3.m1.1"><semantics id="S2.T6.3.3.3.m1.1a"><mo id="S2.T6.3.3.3.m1.1.1" stretchy="false" xref="S2.T6.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T6.3.3.3.m1.1b"><ci id="S2.T6.3.3.3.m1.1.1.cmml" xref="S2.T6.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T6.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T6.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S2.T6.4.4.4">DINO<math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T6.4.4.4.m1.1"><semantics id="S2.T6.4.4.4.m1.1a"><mo id="S2.T6.4.4.4.m1.1.1" stretchy="false" xref="S2.T6.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T6.4.4.4.m1.1b"><ci id="S2.T6.4.4.4.m1.1.1.cmml" xref="S2.T6.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T6.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T6.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T6.5.5.5">Speed<math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T6.5.5.5.m1.1"><semantics id="S2.T6.5.5.5.m1.1a"><mo id="S2.T6.5.5.5.m1.1.1" stretchy="false" xref="S2.T6.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T6.5.5.5.m1.1b"><ci id="S2.T6.5.5.5.m1.1.1.cmml" xref="S2.T6.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T6.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T6.5.5.5.m1.1d">↑</annotation></semantics></math> (iter/s)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T6.5.6.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S2.T6.5.6.1.1">1</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.5.6.1.2">0.298</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.5.6.1.3">0.736</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T6.5.6.1.4">0.495</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T6.5.6.1.5">20.7</td>
</tr>
<tr class="ltx_tr" id="S2.T6.5.7.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T6.5.7.2.1">2</th>
<td class="ltx_td ltx_align_center" id="S2.T6.5.7.2.2">0.277</td>
<td class="ltx_td ltx_align_center" id="S2.T6.5.7.2.3">0.796</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T6.5.7.2.4">0.613</td>
<td class="ltx_td ltx_align_center" id="S2.T6.5.7.2.5">16.1</td>
</tr>
<tr class="ltx_tr" id="S2.T6.5.8.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T6.5.8.3.1">4</th>
<td class="ltx_td ltx_align_center" id="S2.T6.5.8.3.2">0.282</td>
<td class="ltx_td ltx_align_center" id="S2.T6.5.8.3.3">0.784</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T6.5.8.3.4">0.584</td>
<td class="ltx_td ltx_align_center" id="S2.T6.5.8.3.5">9.78</td>
</tr>
<tr class="ltx_tr" id="S2.T6.5.9.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S2.T6.5.9.4.1">8</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T6.5.9.4.2">0.282</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T6.5.9.4.3">0.798</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S2.T6.5.9.4.4">0.627</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T6.5.9.4.5">6.20</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative analysis of the impact of varying the number of gradient estimations (n) on the performance of the ZOODiP model.  Different values of n were tested, and the results (CLIP-T, CLIP-I, DINO scores, and iteration speed) are shown to evaluate the trade-off between model performance and computational efficiency. The findings suggest that n=2 provides a good balance, offering strong performance with reasonable computational cost.
> <details>
> <summary>read the caption</summary>
> Table S6: Quantitative results for various n𝑛nitalic_n, the number of gradient estimations. n=2𝑛2n=2italic_n = 2 is the promising choice between performance and computation efficiency.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S2.T7.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S2.T7.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S2.T7.3.3.4">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S2.T7.3.3.5">PUTS</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T7.1.1.1">CLIP-T<math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T7.1.1.1.m1.1"><semantics id="S2.T7.1.1.1.m1.1a"><mo id="S2.T7.1.1.1.m1.1.1" stretchy="false" xref="S2.T7.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T7.1.1.1.m1.1b"><ci id="S2.T7.1.1.1.m1.1.1.cmml" xref="S2.T7.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T7.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T7.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T7.2.2.2">CLIP-I<math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T7.2.2.2.m1.1"><semantics id="S2.T7.2.2.2.m1.1a"><mo id="S2.T7.2.2.2.m1.1.1" stretchy="false" xref="S2.T7.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T7.2.2.2.m1.1b"><ci id="S2.T7.2.2.2.m1.1.1.cmml" xref="S2.T7.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T7.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T7.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T7.3.3.3">DINO<math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T7.3.3.3.m1.1"><semantics id="S2.T7.3.3.3.m1.1a"><mo id="S2.T7.3.3.3.m1.1.1" stretchy="false" xref="S2.T7.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T7.3.3.3.m1.1b"><ci id="S2.T7.3.3.3.m1.1.1.cmml" xref="S2.T7.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T7.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T7.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T7.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S2.T7.3.4.1.1" rowspan="2"><span class="ltx_text" id="S2.T7.3.4.1.1.1">DB</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S2.T7.3.4.1.2"><span class="ltx_text" id="S2.T7.3.4.1.2.1" style="color:#FF0000;">✗</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T7.3.4.1.3">0.266</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T7.3.4.1.4">0.853</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T7.3.4.1.5">0.751</td>
</tr>
<tr class="ltx_tr" id="S2.T7.3.5.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T7.3.5.2.1"><span class="ltx_text" id="S2.T7.3.5.2.1.1" style="color:#00E000;">✓</span></th>
<td class="ltx_td ltx_align_center" id="S2.T7.3.5.2.2"><span class="ltx_text ltx_font_bold" id="S2.T7.3.5.2.2.1">0.272</span></td>
<td class="ltx_td ltx_align_center" id="S2.T7.3.5.2.3"><span class="ltx_text ltx_font_bold" id="S2.T7.3.5.2.3.1">0.854</span></td>
<td class="ltx_td ltx_align_center" id="S2.T7.3.5.2.4"><span class="ltx_text ltx_font_bold" id="S2.T7.3.5.2.4.1">0.758</span></td>
</tr>
<tr class="ltx_tr" id="S2.T7.3.6.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S2.T7.3.6.3.1" rowspan="2"><span class="ltx_text" id="S2.T7.3.6.3.1.1">TI</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S2.T7.3.6.3.2"><span class="ltx_text" id="S2.T7.3.6.3.2.1" style="color:#FF0000;">✗</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T7.3.6.3.3">0.241</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T7.3.6.3.4">0.798</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T7.3.6.3.5">0.584</td>
</tr>
<tr class="ltx_tr" id="S2.T7.3.7.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S2.T7.3.7.4.1"><span class="ltx_text" id="S2.T7.3.7.4.1.1" style="color:#00E000;">✓</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T7.3.7.4.2"><span class="ltx_text ltx_font_bold" id="S2.T7.3.7.4.2.1">0.247</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T7.3.7.4.3"><span class="ltx_text ltx_font_bold" id="S2.T7.3.7.4.3.1">0.825</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T7.3.7.4.4"><span class="ltx_text ltx_font_bold" id="S2.T7.3.7.4.4.1">0.661</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table S7 presents a quantitative comparison of the performance improvements achieved by incorporating Partial Uniform Timestep Sampling (PUTS) into two gradient-based personalization methods: DreamBooth and Textual Inversion. The results demonstrate that PUTS enhances the performance of both methods, with a maximum improvement of 13.2%. Notably, the improvement is more substantial for Textual Inversion, highlighting the significant effect of PUTS on methods that are strongly influenced by the text encoder, such as Textual Inversion.
> <details>
> <summary>read the caption</summary>
> Table S7: Quantitative results from applying PUTS to DreamBooth and Textual Inversion. The results confirm that PUTS enhances the performance of gradient-based personalization methods by up to 13.2%. The improvement was particularly pronounced in Textual Inversion, which is highly influenced by the text encoder, highlighting the significant impact of PUTS in this context.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T8.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T8.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S3.T8.3.3.4">U-Net Precision</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T8.1.1.1">CLIP-T<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T8.1.1.1.m1.1"><semantics id="S3.T8.1.1.1.m1.1a"><mo id="S3.T8.1.1.1.m1.1.1" stretchy="false" xref="S3.T8.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T8.1.1.1.m1.1b"><ci id="S3.T8.1.1.1.m1.1.1.cmml" xref="S3.T8.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T8.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T8.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T8.2.2.2">CLIP-I<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T8.2.2.2.m1.1"><semantics id="S3.T8.2.2.2.m1.1a"><mo id="S3.T8.2.2.2.m1.1.1" stretchy="false" xref="S3.T8.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T8.2.2.2.m1.1b"><ci id="S3.T8.2.2.2.m1.1.1.cmml" xref="S3.T8.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T8.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T8.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T8.3.3.3">DINO<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T8.3.3.3.m1.1"><semantics id="S3.T8.3.3.3.m1.1a"><mo id="S3.T8.3.3.3.m1.1.1" stretchy="false" xref="S3.T8.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T8.3.3.3.m1.1b"><ci id="S3.T8.3.3.3.m1.1.1.cmml" xref="S3.T8.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T8.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T8.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T8.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T8.3.4.1.1">INT8</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.3.4.1.2"><span class="ltx_text ltx_font_bold" id="S3.T8.3.4.1.2.1">0.288</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.3.4.1.3">0.834</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T8.3.4.1.4"><span class="ltx_text ltx_font_bold" id="S3.T8.3.4.1.4.1">0.657</span></td>
</tr>
<tr class="ltx_tr" id="S3.T8.3.5.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T8.3.5.2.1">INT4</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T8.3.5.2.2">0.212</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T8.3.5.2.3"><span class="ltx_text ltx_font_bold" id="S3.T8.3.5.2.3.1">0.835</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T8.3.5.2.4">0.647</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of Stable Diffusion's U-Net model using two different levels of precision: INT8 (8-bit integer) and INT4 (4-bit integer).  The comparison focuses on a specific subset of the DreamBooth dataset, featuring images of a dog (indicated by `<dog6>`).  The metrics used to evaluate performance are CLIP-T (text-image alignment), CLIP-I (image alignment), and DINO (image alignment),  providing a comprehensive assessment of how the different precision levels impact the model's ability to generate images that align with both textual and visual references.  This allows for an understanding of the trade-off between model accuracy and memory efficiency as the precision level decreases.
> <details>
> <summary>read the caption</summary>
> Table S8: The performance comparison between INT8 and INT4 for U-Net precision on the <dog6> subset of the DB dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T9.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T9.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S3.T9.1.1.2">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T9.1.1.1"><math alttext="\text{DINO}_{\text{inter}}\downarrow" class="ltx_Math" display="inline" id="S3.T9.1.1.1.m1.1"><semantics id="S3.T9.1.1.1.m1.1a"><mrow id="S3.T9.1.1.1.m1.1.1" xref="S3.T9.1.1.1.m1.1.1.cmml"><msub id="S3.T9.1.1.1.m1.1.1.2" xref="S3.T9.1.1.1.m1.1.1.2.cmml"><mtext id="S3.T9.1.1.1.m1.1.1.2.2" xref="S3.T9.1.1.1.m1.1.1.2.2a.cmml">DINO</mtext><mtext id="S3.T9.1.1.1.m1.1.1.2.3" xref="S3.T9.1.1.1.m1.1.1.2.3a.cmml">inter</mtext></msub><mo id="S3.T9.1.1.1.m1.1.1.1" stretchy="false" xref="S3.T9.1.1.1.m1.1.1.1.cmml">↓</mo><mi id="S3.T9.1.1.1.m1.1.1.3" xref="S3.T9.1.1.1.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T9.1.1.1.m1.1b"><apply id="S3.T9.1.1.1.m1.1.1.cmml" xref="S3.T9.1.1.1.m1.1.1"><ci id="S3.T9.1.1.1.m1.1.1.1.cmml" xref="S3.T9.1.1.1.m1.1.1.1">↓</ci><apply id="S3.T9.1.1.1.m1.1.1.2.cmml" xref="S3.T9.1.1.1.m1.1.1.2"><csymbol cd="ambiguous" id="S3.T9.1.1.1.m1.1.1.2.1.cmml" xref="S3.T9.1.1.1.m1.1.1.2">subscript</csymbol><ci id="S3.T9.1.1.1.m1.1.1.2.2a.cmml" xref="S3.T9.1.1.1.m1.1.1.2.2"><mtext id="S3.T9.1.1.1.m1.1.1.2.2.cmml" xref="S3.T9.1.1.1.m1.1.1.2.2">DINO</mtext></ci><ci id="S3.T9.1.1.1.m1.1.1.2.3a.cmml" xref="S3.T9.1.1.1.m1.1.1.2.3"><mtext id="S3.T9.1.1.1.m1.1.1.2.3.cmml" mathsize="70%" xref="S3.T9.1.1.1.m1.1.1.2.3">inter</mtext></ci></apply><csymbol cd="latexml" id="S3.T9.1.1.1.m1.1.1.3.cmml" xref="S3.T9.1.1.1.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T9.1.1.1.m1.1c">\text{DINO}_{\text{inter}}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T9.1.1.1.m1.1d">DINO start_POSTSUBSCRIPT inter end_POSTSUBSCRIPT ↓</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T9.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T9.1.2.1.1">DB</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T9.1.2.1.2">0.825</td>
</tr>
<tr class="ltx_tr" id="S3.T9.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T9.1.3.2.1">QLoRA</th>
<td class="ltx_td ltx_align_center" id="S3.T9.1.3.2.2">0.731</td>
</tr>
<tr class="ltx_tr" id="S3.T9.1.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T9.1.4.3.1">PEQA</th>
<td class="ltx_td ltx_align_center" id="S3.T9.1.4.3.2">0.806</td>
</tr>
<tr class="ltx_tr" id="S3.T9.1.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T9.1.5.4.1">TuneQDM</th>
<td class="ltx_td ltx_align_center" id="S3.T9.1.5.4.2">0.778</td>
</tr>
<tr class="ltx_tr" id="S3.T9.1.6.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T9.1.6.5.1">TI</th>
<td class="ltx_td ltx_align_center" id="S3.T9.1.6.5.2">0.679</td>
</tr>
<tr class="ltx_tr" id="S3.T9.1.7.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T9.1.7.6.1">GF-TI</th>
<td class="ltx_td ltx_align_center" id="S3.T9.1.7.6.2">0.150</td>
</tr>
<tr class="ltx_tr" id="S3.T9.1.8.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T9.1.8.7.1"><span class="ltx_text ltx_font_bold" id="S3.T9.1.8.7.1.1">ZOODiP (Ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T9.1.8.7.2">0.671</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the diversity of images generated by different personalization methods using the DINOinter score.  A lower DINOinter score indicates higher diversity. The results show that Textual Inversion (TI)-based methods produce more diverse images compared to DreamBooth (DB)-based methods. This difference in diversity is consistent across various subjects within the DreamBooth dataset, highlighting a fundamental distinction in the ability of these methods to capture and represent variations in image generation.
> <details>
> <summary>read the caption</summary>
> Table S9: Comparison of DINOintersubscriptDINOinter\text{DINO}_{\text{inter}}DINO start_POSTSUBSCRIPT inter end_POSTSUBSCRIPT scores across various personalization methods. The results indicate that TI-based methods are capable of generating a diverse range of images, whereas DB-based methods exhibit relatively lower diversity. This observation was consistent across all subjects in the DreamBooth (DB) dataset, highlighting a fundamental difference in the ability of these methods to capture and reflect variations in the generated outputs.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T10.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T10.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T10.1.2.1.1">Base.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T10.1.2.1.2">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T10.1.2.1.3">Time (min)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T10.1.3.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T10.1.3.1.1" rowspan="4"><span class="ltx_text" id="S3.T10.1.3.1.1.1">DB</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T10.1.3.1.2">DB</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T10.1.3.1.3">2</td>
</tr>
<tr class="ltx_tr" id="S3.T10.1.4.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T10.1.4.2.1">QLoRA</td>
<td class="ltx_td ltx_align_center" id="S3.T10.1.4.2.2">1.1</td>
</tr>
<tr class="ltx_tr" id="S3.T10.1.5.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T10.1.5.3.1">PEQA</td>
<td class="ltx_td ltx_align_center" id="S3.T10.1.5.3.2">1.5</td>
</tr>
<tr class="ltx_tr" id="S3.T10.1.6.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T10.1.6.4.1">TuneQDM</td>
<td class="ltx_td ltx_align_center" id="S3.T10.1.6.4.2">1.4</td>
</tr>
<tr class="ltx_tr" id="S3.T10.1.7.5">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T10.1.7.5.1" rowspan="3"><span class="ltx_text" id="S3.T10.1.7.5.1.1">TI</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T10.1.7.5.2">TI</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T10.1.7.5.3">8.8</td>
</tr>
<tr class="ltx_tr" id="S3.T10.1.8.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T10.1.8.6.1">GF-TI</td>
<td class="ltx_td ltx_align_center" id="S3.T10.1.8.6.2">293</td>
</tr>
<tr class="ltx_tr" id="S3.T10.1.1">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T10.1.1.1">ZOODiP (<math alttext="n=2" class="ltx_Math" display="inline" id="S3.T10.1.1.1.m1.1"><semantics id="S3.T10.1.1.1.m1.1a"><mrow id="S3.T10.1.1.1.m1.1.1" xref="S3.T10.1.1.1.m1.1.1.cmml"><mi id="S3.T10.1.1.1.m1.1.1.2" xref="S3.T10.1.1.1.m1.1.1.2.cmml">n</mi><mo id="S3.T10.1.1.1.m1.1.1.1" xref="S3.T10.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S3.T10.1.1.1.m1.1.1.3" xref="S3.T10.1.1.1.m1.1.1.3.cmml">2</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T10.1.1.1.m1.1b"><apply id="S3.T10.1.1.1.m1.1.1.cmml" xref="S3.T10.1.1.1.m1.1.1"><eq id="S3.T10.1.1.1.m1.1.1.1.cmml" xref="S3.T10.1.1.1.m1.1.1.1"></eq><ci id="S3.T10.1.1.1.m1.1.1.2.cmml" xref="S3.T10.1.1.1.m1.1.1.2">𝑛</ci><cn id="S3.T10.1.1.1.m1.1.1.3.cmml" type="integer" xref="S3.T10.1.1.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T10.1.1.1.m1.1c">n=2</annotation><annotation encoding="application/x-llamapun" id="S3.T10.1.1.1.m1.1d">italic_n = 2</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T10.1.1.2">31</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the training time of different personalization methods for diffusion models.  It shows a trade-off between memory usage and training speed. DreamBooth (DB)-based methods, while consuming more memory, exhibit faster training times. Conversely, Textual Inversion (TI)-based methods are more memory-efficient but require a greater number of training iterations, resulting in longer overall training time.
> <details>
> <summary>read the caption</summary>
> Table S10: Total training time with the configurations in Sec S1.5. DB-based methods consume more memory but train faster, while TI-based methods are more memory-efficient but require more iterations.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.14868/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14868/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14868/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14868/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14868/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14868/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14868/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14868/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14868/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14868/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14868/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14868/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14868/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14868/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14868/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14868/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14868/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14868/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14868/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14868/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}