---
title: "Scale-wise Distillation of Diffusion Models"
summary: "SWD: Scale-wise distillation of diffusion models achieves faster image generation by upscaling resolution during denoising, outperforming counterparts with similar computation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Yandex Research",]
showSummary: true
date: 2025-03-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.16397 {{< /keyword >}}
{{< keyword icon="writer" >}} Nikita Starodubcev et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.16397" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.16397" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.16397/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Diffusion models (DMs) are vital for generative modeling but computationally intensive, especially for high-resolution images. Existing acceleration methods often reduce sampling steps while overlooking data dimensionality. Recent work on next-scale prediction shows promise through gradually increasing resolution, resembling human perception. DMs still operate at a fixed dimensionality, leaving efficiency improvements unexplored. Therefore, a more effective approach to balance computational cost and performance is needed.



This paper introduces Scale-wise Distillation (SWD), a framework that generates images scale-by-scale across the diffusion process. **SWD integrates into existing distillation methods and introduces a patch loss for finer similarity.** Applied to text-to-image DMs, SWD achieves inference times of two full-resolution steps and outperforms counterparts with the same computation.  It also competes or surpasses current text-to-image DMs with 2.5x-10x speed increase.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Scale-wise distillation (SWD) effectively accelerates diffusion models by gradually increasing image resolution during the denoising process. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A novel patch distribution matching (PDM) loss enhances SWD by enforcing finer-grained similarity between generated and target distributions. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} SWD demonstrates superior performance compared to full-resolution distillation methods under similar computational constraints, offering a promising direction for efficient image generation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel and efficient approach to accelerate diffusion models, a cornerstone of modern generative AI, potentially impacting various applications by making high-quality image generation faster and more accessible.

------
#### Visual Insights



![](https://arxiv.org/html/2503.16397/x1.png)

> 🔼 This figure displays the spectral analysis of SDXL and SD3.5 VAE latent spaces. The spectral density is shown for different diffusion timesteps. Vertical lines represent the frequency boundaries for lower resolution latent spaces (e.g., 16x16, 32x32, 96x96). Frequencies beyond these lines are not present at lower resolutions. The figure demonstrates that high frequencies are masked by noise at high noise levels. This observation supports the idea that latent diffusion models can efficiently operate at lower resolutions during the early stages of the diffusion process (i.e. at high noise levels).
> <details>
> <summary>read the caption</summary>
> Figure 1:  Spectral analysis of SDXL (Left) and SD3.5 (Right) VAE latents (128×128128128128{\times}128128 × 128) for different diffusion timesteps. Vertical lines mark frequency boundaries for lower resolutions; frequencies to the right are not present at lower scale latents. Noise masks high frequencies, suggesting that latent DMs can operate at lower latent resolutions for high noise levels.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.19.15">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.7.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T1.7.3.3.4">Configuration</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.5.1.1.1"><math alttext="t=400" class="ltx_Math" display="inline" id="S4.T1.5.1.1.1.m1.1"><semantics id="S4.T1.5.1.1.1.m1.1a"><mrow id="S4.T1.5.1.1.1.m1.1.1" xref="S4.T1.5.1.1.1.m1.1.1.cmml"><mi id="S4.T1.5.1.1.1.m1.1.1.2" xref="S4.T1.5.1.1.1.m1.1.1.2.cmml">t</mi><mo id="S4.T1.5.1.1.1.m1.1.1.1" xref="S4.T1.5.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S4.T1.5.1.1.1.m1.1.1.3" xref="S4.T1.5.1.1.1.m1.1.1.3.cmml">400</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.5.1.1.1.m1.1b"><apply id="S4.T1.5.1.1.1.m1.1.1.cmml" xref="S4.T1.5.1.1.1.m1.1.1"><eq id="S4.T1.5.1.1.1.m1.1.1.1.cmml" xref="S4.T1.5.1.1.1.m1.1.1.1"></eq><ci id="S4.T1.5.1.1.1.m1.1.1.2.cmml" xref="S4.T1.5.1.1.1.m1.1.1.2">𝑡</ci><cn id="S4.T1.5.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T1.5.1.1.1.m1.1.1.3">400</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.1.1.1.m1.1c">t=400</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.1.1.1.m1.1d">italic_t = 400</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.6.2.2.2"><math alttext="t=600" class="ltx_Math" display="inline" id="S4.T1.6.2.2.2.m1.1"><semantics id="S4.T1.6.2.2.2.m1.1a"><mrow id="S4.T1.6.2.2.2.m1.1.1" xref="S4.T1.6.2.2.2.m1.1.1.cmml"><mi id="S4.T1.6.2.2.2.m1.1.1.2" xref="S4.T1.6.2.2.2.m1.1.1.2.cmml">t</mi><mo id="S4.T1.6.2.2.2.m1.1.1.1" xref="S4.T1.6.2.2.2.m1.1.1.1.cmml">=</mo><mn id="S4.T1.6.2.2.2.m1.1.1.3" xref="S4.T1.6.2.2.2.m1.1.1.3.cmml">600</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.6.2.2.2.m1.1b"><apply id="S4.T1.6.2.2.2.m1.1.1.cmml" xref="S4.T1.6.2.2.2.m1.1.1"><eq id="S4.T1.6.2.2.2.m1.1.1.1.cmml" xref="S4.T1.6.2.2.2.m1.1.1.1"></eq><ci id="S4.T1.6.2.2.2.m1.1.1.2.cmml" xref="S4.T1.6.2.2.2.m1.1.1.2">𝑡</ci><cn id="S4.T1.6.2.2.2.m1.1.1.3.cmml" type="integer" xref="S4.T1.6.2.2.2.m1.1.1.3">600</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.2.2.2.m1.1c">t=600</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.2.2.2.m1.1d">italic_t = 600</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.7.3.3.3"><math alttext="t=800" class="ltx_Math" display="inline" id="S4.T1.7.3.3.3.m1.1"><semantics id="S4.T1.7.3.3.3.m1.1a"><mrow id="S4.T1.7.3.3.3.m1.1.1" xref="S4.T1.7.3.3.3.m1.1.1.cmml"><mi id="S4.T1.7.3.3.3.m1.1.1.2" xref="S4.T1.7.3.3.3.m1.1.1.2.cmml">t</mi><mo id="S4.T1.7.3.3.3.m1.1.1.1" xref="S4.T1.7.3.3.3.m1.1.1.1.cmml">=</mo><mn id="S4.T1.7.3.3.3.m1.1.1.3" xref="S4.T1.7.3.3.3.m1.1.1.3.cmml">800</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.7.3.3.3.m1.1b"><apply id="S4.T1.7.3.3.3.m1.1.1.cmml" xref="S4.T1.7.3.3.3.m1.1.1"><eq id="S4.T1.7.3.3.3.m1.1.1.1.cmml" xref="S4.T1.7.3.3.3.m1.1.1.1"></eq><ci id="S4.T1.7.3.3.3.m1.1.1.2.cmml" xref="S4.T1.7.3.3.3.m1.1.1.2">𝑡</ci><cn id="S4.T1.7.3.3.3.m1.1.1.3.cmml" type="integer" xref="S4.T1.7.3.3.3.m1.1.1.3">800</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.3.3.3.m1.1c">t=800</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.3.3.3.m1.1d">italic_t = 800</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.11.7.7" style="background-color:#EEEEEE;">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.8.4.4.1"><span class="ltx_text ltx_font_bold" id="S4.T1.8.4.4.1.1" style="background-color:#EEEEEE;">A<span class="ltx_text ltx_font_medium" id="S4.T1.8.4.4.1.1.1" style="background-color:#EEEEEE;">  <math alttext="\mathbf{{x}}_{0}\xrightarrow[]{\text{noise}}\mathbf{{x}}_{t}" class="ltx_Math" display="inline" id="S4.T1.8.4.4.1.1.1.m1.1"><semantics id="S4.T1.8.4.4.1.1.1.m1.1a"><mrow id="S4.T1.8.4.4.1.1.1.m1.1.1" xref="S4.T1.8.4.4.1.1.1.m1.1.1.cmml"><msub id="S4.T1.8.4.4.1.1.1.m1.1.1.2" xref="S4.T1.8.4.4.1.1.1.m1.1.1.2.cmml"><mi id="S4.T1.8.4.4.1.1.1.m1.1.1.2.2" mathbackground="#EEEEEE" xref="S4.T1.8.4.4.1.1.1.m1.1.1.2.2.cmml">𝐱</mi><mn id="S4.T1.8.4.4.1.1.1.m1.1.1.2.3" mathbackground="#EEEEEE" xref="S4.T1.8.4.4.1.1.1.m1.1.1.2.3.cmml">0</mn></msub><mover accent="true" id="S4.T1.8.4.4.1.1.1.m1.1.1.1" xref="S4.T1.8.4.4.1.1.1.m1.1.1.1.cmml"><mo id="S4.T1.8.4.4.1.1.1.m1.1.1.1.2" mathbackground="#EEEEEE" stretchy="false" xref="S4.T1.8.4.4.1.1.1.m1.1.1.1.2.cmml">→</mo><mtext id="S4.T1.8.4.4.1.1.1.m1.1.1.1.1" mathbackground="#EEEEEE" xref="S4.T1.8.4.4.1.1.1.m1.1.1.1.1a.cmml">noise</mtext></mover><msub id="S4.T1.8.4.4.1.1.1.m1.1.1.3" xref="S4.T1.8.4.4.1.1.1.m1.1.1.3.cmml"><mi id="S4.T1.8.4.4.1.1.1.m1.1.1.3.2" mathbackground="#EEEEEE" xref="S4.T1.8.4.4.1.1.1.m1.1.1.3.2.cmml">𝐱</mi><mi id="S4.T1.8.4.4.1.1.1.m1.1.1.3.3" mathbackground="#EEEEEE" xref="S4.T1.8.4.4.1.1.1.m1.1.1.3.3.cmml">t</mi></msub></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.8.4.4.1.1.1.m1.1b"><apply id="S4.T1.8.4.4.1.1.1.m1.1.1.cmml" xref="S4.T1.8.4.4.1.1.1.m1.1.1"><apply id="S4.T1.8.4.4.1.1.1.m1.1.1.1.cmml" xref="S4.T1.8.4.4.1.1.1.m1.1.1.1"><ci id="S4.T1.8.4.4.1.1.1.m1.1.1.1.1a.cmml" xref="S4.T1.8.4.4.1.1.1.m1.1.1.1.1"><mtext id="S4.T1.8.4.4.1.1.1.m1.1.1.1.1.cmml" mathbackground="#EEEEEE" xref="S4.T1.8.4.4.1.1.1.m1.1.1.1.1">noise</mtext></ci><ci id="S4.T1.8.4.4.1.1.1.m1.1.1.1.2.cmml" xref="S4.T1.8.4.4.1.1.1.m1.1.1.1.2">→</ci></apply><apply id="S4.T1.8.4.4.1.1.1.m1.1.1.2.cmml" xref="S4.T1.8.4.4.1.1.1.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T1.8.4.4.1.1.1.m1.1.1.2.1.cmml" xref="S4.T1.8.4.4.1.1.1.m1.1.1.2">subscript</csymbol><ci id="S4.T1.8.4.4.1.1.1.m1.1.1.2.2.cmml" xref="S4.T1.8.4.4.1.1.1.m1.1.1.2.2">𝐱</ci><cn id="S4.T1.8.4.4.1.1.1.m1.1.1.2.3.cmml" type="integer" xref="S4.T1.8.4.4.1.1.1.m1.1.1.2.3">0</cn></apply><apply id="S4.T1.8.4.4.1.1.1.m1.1.1.3.cmml" xref="S4.T1.8.4.4.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T1.8.4.4.1.1.1.m1.1.1.3.1.cmml" xref="S4.T1.8.4.4.1.1.1.m1.1.1.3">subscript</csymbol><ci id="S4.T1.8.4.4.1.1.1.m1.1.1.3.2.cmml" xref="S4.T1.8.4.4.1.1.1.m1.1.1.3.2">𝐱</ci><ci id="S4.T1.8.4.4.1.1.1.m1.1.1.3.3.cmml" xref="S4.T1.8.4.4.1.1.1.m1.1.1.3.3">𝑡</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.4.4.1.1.1.m1.1c">\mathbf{{x}}_{0}\xrightarrow[]{\text{noise}}\mathbf{{x}}_{t}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.4.4.1.1.1.m1.1d">bold_x start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT start_ARROW overnoise → end_ARROW bold_x start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT</annotation></semantics></math></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.5.5.2"><math alttext="9.2" class="ltx_Math" display="inline" id="S4.T1.9.5.5.2.m1.1" style="background-color:#EEEEEE;"><semantics id="S4.T1.9.5.5.2.m1.1a"><mn id="S4.T1.9.5.5.2.m1.1.1" mathbackground="#EEEEEE" xref="S4.T1.9.5.5.2.m1.1.1.cmml">9.2</mn><annotation-xml encoding="MathML-Content" id="S4.T1.9.5.5.2.m1.1b"><cn id="S4.T1.9.5.5.2.m1.1.1.cmml" type="float" xref="S4.T1.9.5.5.2.m1.1.1">9.2</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.5.5.2.m1.1c">9.2</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.5.5.2.m1.1d">9.2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.6.6.3"><math alttext="9.8" class="ltx_Math" display="inline" id="S4.T1.10.6.6.3.m1.1" style="background-color:#EEEEEE;"><semantics id="S4.T1.10.6.6.3.m1.1a"><mn id="S4.T1.10.6.6.3.m1.1.1" mathbackground="#EEEEEE" xref="S4.T1.10.6.6.3.m1.1.1.cmml">9.8</mn><annotation-xml encoding="MathML-Content" id="S4.T1.10.6.6.3.m1.1b"><cn id="S4.T1.10.6.6.3.m1.1.1.cmml" type="float" xref="S4.T1.10.6.6.3.m1.1.1">9.8</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.6.6.3.m1.1c">9.8</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.6.6.3.m1.1d">9.8</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.11.7.7.4"><math alttext="12.9" class="ltx_Math" display="inline" id="S4.T1.11.7.7.4.m1.1" style="background-color:#EEEEEE;"><semantics id="S4.T1.11.7.7.4.m1.1a"><mn id="S4.T1.11.7.7.4.m1.1.1" mathbackground="#EEEEEE" xref="S4.T1.11.7.7.4.m1.1.1.cmml">12.9</mn><annotation-xml encoding="MathML-Content" id="S4.T1.11.7.7.4.m1.1b"><cn id="S4.T1.11.7.7.4.m1.1.1.cmml" type="float" xref="S4.T1.11.7.7.4.m1.1.1">12.9</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.11.7.7.4.m1.1c">12.9</annotation><annotation encoding="application/x-llamapun" id="S4.T1.11.7.7.4.m1.1d">12.9</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T1.15.11.11">
<td class="ltx_td ltx_align_left" id="S4.T1.12.8.8.1">
<span class="ltx_text ltx_font_bold" id="S4.T1.12.8.8.1.1">B</span>  <math alttext="\mathbf{{x}}^{\text{down}}_{0}\xrightarrow[]{\text{upscale}}\mathbf{{x}}_{0}%
\xrightarrow[]{\text{noise}}\mathbf{{x}}_{t}" class="ltx_Math" display="inline" id="S4.T1.12.8.8.1.m1.1"><semantics id="S4.T1.12.8.8.1.m1.1a"><mrow id="S4.T1.12.8.8.1.m1.1.1" xref="S4.T1.12.8.8.1.m1.1.1.cmml"><msubsup id="S4.T1.12.8.8.1.m1.1.1.2" xref="S4.T1.12.8.8.1.m1.1.1.2.cmml"><mi id="S4.T1.12.8.8.1.m1.1.1.2.2.2" xref="S4.T1.12.8.8.1.m1.1.1.2.2.2.cmml">𝐱</mi><mn id="S4.T1.12.8.8.1.m1.1.1.2.3" xref="S4.T1.12.8.8.1.m1.1.1.2.3.cmml">0</mn><mtext id="S4.T1.12.8.8.1.m1.1.1.2.2.3" xref="S4.T1.12.8.8.1.m1.1.1.2.2.3a.cmml">down</mtext></msubsup><mover accent="true" id="S4.T1.12.8.8.1.m1.1.1.3" xref="S4.T1.12.8.8.1.m1.1.1.3.cmml"><mo id="S4.T1.12.8.8.1.m1.1.1.3.2" stretchy="false" xref="S4.T1.12.8.8.1.m1.1.1.3.2.cmml">→</mo><mtext id="S4.T1.12.8.8.1.m1.1.1.3.1" xref="S4.T1.12.8.8.1.m1.1.1.3.1a.cmml">upscale</mtext></mover><msub id="S4.T1.12.8.8.1.m1.1.1.4" xref="S4.T1.12.8.8.1.m1.1.1.4.cmml"><mi id="S4.T1.12.8.8.1.m1.1.1.4.2" xref="S4.T1.12.8.8.1.m1.1.1.4.2.cmml">𝐱</mi><mn id="S4.T1.12.8.8.1.m1.1.1.4.3" xref="S4.T1.12.8.8.1.m1.1.1.4.3.cmml">0</mn></msub><mover accent="true" id="S4.T1.12.8.8.1.m1.1.1.5" xref="S4.T1.12.8.8.1.m1.1.1.5.cmml"><mo id="S4.T1.12.8.8.1.m1.1.1.5.2" stretchy="false" xref="S4.T1.12.8.8.1.m1.1.1.5.2.cmml">→</mo><mtext id="S4.T1.12.8.8.1.m1.1.1.5.1" xref="S4.T1.12.8.8.1.m1.1.1.5.1a.cmml">noise</mtext></mover><msub id="S4.T1.12.8.8.1.m1.1.1.6" xref="S4.T1.12.8.8.1.m1.1.1.6.cmml"><mi id="S4.T1.12.8.8.1.m1.1.1.6.2" xref="S4.T1.12.8.8.1.m1.1.1.6.2.cmml">𝐱</mi><mi id="S4.T1.12.8.8.1.m1.1.1.6.3" xref="S4.T1.12.8.8.1.m1.1.1.6.3.cmml">t</mi></msub></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.12.8.8.1.m1.1b"><apply id="S4.T1.12.8.8.1.m1.1.1.cmml" xref="S4.T1.12.8.8.1.m1.1.1"><and id="S4.T1.12.8.8.1.m1.1.1a.cmml" xref="S4.T1.12.8.8.1.m1.1.1"></and><apply id="S4.T1.12.8.8.1.m1.1.1b.cmml" xref="S4.T1.12.8.8.1.m1.1.1"><apply id="S4.T1.12.8.8.1.m1.1.1.3.cmml" xref="S4.T1.12.8.8.1.m1.1.1.3"><ci id="S4.T1.12.8.8.1.m1.1.1.3.1a.cmml" xref="S4.T1.12.8.8.1.m1.1.1.3.1"><mtext id="S4.T1.12.8.8.1.m1.1.1.3.1.cmml" xref="S4.T1.12.8.8.1.m1.1.1.3.1">upscale</mtext></ci><ci id="S4.T1.12.8.8.1.m1.1.1.3.2.cmml" xref="S4.T1.12.8.8.1.m1.1.1.3.2">→</ci></apply><apply id="S4.T1.12.8.8.1.m1.1.1.2.cmml" xref="S4.T1.12.8.8.1.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T1.12.8.8.1.m1.1.1.2.1.cmml" xref="S4.T1.12.8.8.1.m1.1.1.2">subscript</csymbol><apply id="S4.T1.12.8.8.1.m1.1.1.2.2.cmml" xref="S4.T1.12.8.8.1.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T1.12.8.8.1.m1.1.1.2.2.1.cmml" xref="S4.T1.12.8.8.1.m1.1.1.2">superscript</csymbol><ci id="S4.T1.12.8.8.1.m1.1.1.2.2.2.cmml" xref="S4.T1.12.8.8.1.m1.1.1.2.2.2">𝐱</ci><ci id="S4.T1.12.8.8.1.m1.1.1.2.2.3a.cmml" xref="S4.T1.12.8.8.1.m1.1.1.2.2.3"><mtext id="S4.T1.12.8.8.1.m1.1.1.2.2.3.cmml" mathsize="70%" xref="S4.T1.12.8.8.1.m1.1.1.2.2.3">down</mtext></ci></apply><cn id="S4.T1.12.8.8.1.m1.1.1.2.3.cmml" type="integer" xref="S4.T1.12.8.8.1.m1.1.1.2.3">0</cn></apply><apply id="S4.T1.12.8.8.1.m1.1.1.4.cmml" xref="S4.T1.12.8.8.1.m1.1.1.4"><csymbol cd="ambiguous" id="S4.T1.12.8.8.1.m1.1.1.4.1.cmml" xref="S4.T1.12.8.8.1.m1.1.1.4">subscript</csymbol><ci id="S4.T1.12.8.8.1.m1.1.1.4.2.cmml" xref="S4.T1.12.8.8.1.m1.1.1.4.2">𝐱</ci><cn id="S4.T1.12.8.8.1.m1.1.1.4.3.cmml" type="integer" xref="S4.T1.12.8.8.1.m1.1.1.4.3">0</cn></apply></apply><apply id="S4.T1.12.8.8.1.m1.1.1c.cmml" xref="S4.T1.12.8.8.1.m1.1.1"><apply id="S4.T1.12.8.8.1.m1.1.1.5.cmml" xref="S4.T1.12.8.8.1.m1.1.1.5"><ci id="S4.T1.12.8.8.1.m1.1.1.5.1a.cmml" xref="S4.T1.12.8.8.1.m1.1.1.5.1"><mtext id="S4.T1.12.8.8.1.m1.1.1.5.1.cmml" xref="S4.T1.12.8.8.1.m1.1.1.5.1">noise</mtext></ci><ci id="S4.T1.12.8.8.1.m1.1.1.5.2.cmml" xref="S4.T1.12.8.8.1.m1.1.1.5.2">→</ci></apply><share href="https://arxiv.org/html/2503.16397v1#S4.T1.12.8.8.1.m1.1.1.4.cmml" id="S4.T1.12.8.8.1.m1.1.1d.cmml" xref="S4.T1.12.8.8.1.m1.1.1"></share><apply id="S4.T1.12.8.8.1.m1.1.1.6.cmml" xref="S4.T1.12.8.8.1.m1.1.1.6"><csymbol cd="ambiguous" id="S4.T1.12.8.8.1.m1.1.1.6.1.cmml" xref="S4.T1.12.8.8.1.m1.1.1.6">subscript</csymbol><ci id="S4.T1.12.8.8.1.m1.1.1.6.2.cmml" xref="S4.T1.12.8.8.1.m1.1.1.6.2">𝐱</ci><ci id="S4.T1.12.8.8.1.m1.1.1.6.3.cmml" xref="S4.T1.12.8.8.1.m1.1.1.6.3">𝑡</ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.12.8.8.1.m1.1c">\mathbf{{x}}^{\text{down}}_{0}\xrightarrow[]{\text{upscale}}\mathbf{{x}}_{0}%
\xrightarrow[]{\text{noise}}\mathbf{{x}}_{t}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.12.8.8.1.m1.1d">bold_x start_POSTSUPERSCRIPT down end_POSTSUPERSCRIPT start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT start_ARROW overupscale → end_ARROW bold_x start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT start_ARROW overnoise → end_ARROW bold_x start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.13.9.9.2"><math alttext="32.4" class="ltx_Math" display="inline" id="S4.T1.13.9.9.2.m1.1"><semantics id="S4.T1.13.9.9.2.m1.1a"><mn id="S4.T1.13.9.9.2.m1.1.1" xref="S4.T1.13.9.9.2.m1.1.1.cmml">32.4</mn><annotation-xml encoding="MathML-Content" id="S4.T1.13.9.9.2.m1.1b"><cn id="S4.T1.13.9.9.2.m1.1.1.cmml" type="float" xref="S4.T1.13.9.9.2.m1.1.1">32.4</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.13.9.9.2.m1.1c">32.4</annotation><annotation encoding="application/x-llamapun" id="S4.T1.13.9.9.2.m1.1d">32.4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.10.10.3"><math alttext="17.3" class="ltx_Math" display="inline" id="S4.T1.14.10.10.3.m1.1"><semantics id="S4.T1.14.10.10.3.m1.1a"><mn id="S4.T1.14.10.10.3.m1.1.1" xref="S4.T1.14.10.10.3.m1.1.1.cmml">17.3</mn><annotation-xml encoding="MathML-Content" id="S4.T1.14.10.10.3.m1.1b"><cn id="S4.T1.14.10.10.3.m1.1.1.cmml" type="float" xref="S4.T1.14.10.10.3.m1.1.1">17.3</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.14.10.10.3.m1.1c">17.3</annotation><annotation encoding="application/x-llamapun" id="S4.T1.14.10.10.3.m1.1d">17.3</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.11.11.4"><math alttext="13.0" class="ltx_Math" display="inline" id="S4.T1.15.11.11.4.m1.1"><semantics id="S4.T1.15.11.11.4.m1.1a"><mn id="S4.T1.15.11.11.4.m1.1.1" xref="S4.T1.15.11.11.4.m1.1.1.cmml">13.0</mn><annotation-xml encoding="MathML-Content" id="S4.T1.15.11.11.4.m1.1b"><cn id="S4.T1.15.11.11.4.m1.1.1.cmml" type="float" xref="S4.T1.15.11.11.4.m1.1.1">13.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.15.11.11.4.m1.1c">13.0</annotation><annotation encoding="application/x-llamapun" id="S4.T1.15.11.11.4.m1.1d">13.0</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T1.19.15.15">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.16.12.12.1">
<span class="ltx_text ltx_font_bold" id="S4.T1.16.12.12.1.1">C</span>  <math alttext="\mathbf{{x}}^{\text{down}}_{0}\xrightarrow[]{\text{noise}}\mathbf{{x}}^{\text{%
down}}_{t}\xrightarrow[]{\text{upscale}}\mathbf{{x}}_{t}" class="ltx_Math" display="inline" id="S4.T1.16.12.12.1.m1.1"><semantics id="S4.T1.16.12.12.1.m1.1a"><mrow id="S4.T1.16.12.12.1.m1.1.1" xref="S4.T1.16.12.12.1.m1.1.1.cmml"><msubsup id="S4.T1.16.12.12.1.m1.1.1.2" xref="S4.T1.16.12.12.1.m1.1.1.2.cmml"><mi id="S4.T1.16.12.12.1.m1.1.1.2.2.2" xref="S4.T1.16.12.12.1.m1.1.1.2.2.2.cmml">𝐱</mi><mn id="S4.T1.16.12.12.1.m1.1.1.2.3" xref="S4.T1.16.12.12.1.m1.1.1.2.3.cmml">0</mn><mtext id="S4.T1.16.12.12.1.m1.1.1.2.2.3" xref="S4.T1.16.12.12.1.m1.1.1.2.2.3a.cmml">down</mtext></msubsup><mover accent="true" id="S4.T1.16.12.12.1.m1.1.1.3" xref="S4.T1.16.12.12.1.m1.1.1.3.cmml"><mo id="S4.T1.16.12.12.1.m1.1.1.3.2" stretchy="false" xref="S4.T1.16.12.12.1.m1.1.1.3.2.cmml">→</mo><mtext id="S4.T1.16.12.12.1.m1.1.1.3.1" xref="S4.T1.16.12.12.1.m1.1.1.3.1a.cmml">noise</mtext></mover><msubsup id="S4.T1.16.12.12.1.m1.1.1.4" xref="S4.T1.16.12.12.1.m1.1.1.4.cmml"><mi id="S4.T1.16.12.12.1.m1.1.1.4.2.2" xref="S4.T1.16.12.12.1.m1.1.1.4.2.2.cmml">𝐱</mi><mi id="S4.T1.16.12.12.1.m1.1.1.4.3" xref="S4.T1.16.12.12.1.m1.1.1.4.3.cmml">t</mi><mtext id="S4.T1.16.12.12.1.m1.1.1.4.2.3" xref="S4.T1.16.12.12.1.m1.1.1.4.2.3a.cmml">down</mtext></msubsup><mover accent="true" id="S4.T1.16.12.12.1.m1.1.1.5" xref="S4.T1.16.12.12.1.m1.1.1.5.cmml"><mo id="S4.T1.16.12.12.1.m1.1.1.5.2" stretchy="false" xref="S4.T1.16.12.12.1.m1.1.1.5.2.cmml">→</mo><mtext id="S4.T1.16.12.12.1.m1.1.1.5.1" xref="S4.T1.16.12.12.1.m1.1.1.5.1a.cmml">upscale</mtext></mover><msub id="S4.T1.16.12.12.1.m1.1.1.6" xref="S4.T1.16.12.12.1.m1.1.1.6.cmml"><mi id="S4.T1.16.12.12.1.m1.1.1.6.2" xref="S4.T1.16.12.12.1.m1.1.1.6.2.cmml">𝐱</mi><mi id="S4.T1.16.12.12.1.m1.1.1.6.3" xref="S4.T1.16.12.12.1.m1.1.1.6.3.cmml">t</mi></msub></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.16.12.12.1.m1.1b"><apply id="S4.T1.16.12.12.1.m1.1.1.cmml" xref="S4.T1.16.12.12.1.m1.1.1"><and id="S4.T1.16.12.12.1.m1.1.1a.cmml" xref="S4.T1.16.12.12.1.m1.1.1"></and><apply id="S4.T1.16.12.12.1.m1.1.1b.cmml" xref="S4.T1.16.12.12.1.m1.1.1"><apply id="S4.T1.16.12.12.1.m1.1.1.3.cmml" xref="S4.T1.16.12.12.1.m1.1.1.3"><ci id="S4.T1.16.12.12.1.m1.1.1.3.1a.cmml" xref="S4.T1.16.12.12.1.m1.1.1.3.1"><mtext id="S4.T1.16.12.12.1.m1.1.1.3.1.cmml" xref="S4.T1.16.12.12.1.m1.1.1.3.1">noise</mtext></ci><ci id="S4.T1.16.12.12.1.m1.1.1.3.2.cmml" xref="S4.T1.16.12.12.1.m1.1.1.3.2">→</ci></apply><apply id="S4.T1.16.12.12.1.m1.1.1.2.cmml" xref="S4.T1.16.12.12.1.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T1.16.12.12.1.m1.1.1.2.1.cmml" xref="S4.T1.16.12.12.1.m1.1.1.2">subscript</csymbol><apply id="S4.T1.16.12.12.1.m1.1.1.2.2.cmml" xref="S4.T1.16.12.12.1.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T1.16.12.12.1.m1.1.1.2.2.1.cmml" xref="S4.T1.16.12.12.1.m1.1.1.2">superscript</csymbol><ci id="S4.T1.16.12.12.1.m1.1.1.2.2.2.cmml" xref="S4.T1.16.12.12.1.m1.1.1.2.2.2">𝐱</ci><ci id="S4.T1.16.12.12.1.m1.1.1.2.2.3a.cmml" xref="S4.T1.16.12.12.1.m1.1.1.2.2.3"><mtext id="S4.T1.16.12.12.1.m1.1.1.2.2.3.cmml" mathsize="70%" xref="S4.T1.16.12.12.1.m1.1.1.2.2.3">down</mtext></ci></apply><cn id="S4.T1.16.12.12.1.m1.1.1.2.3.cmml" type="integer" xref="S4.T1.16.12.12.1.m1.1.1.2.3">0</cn></apply><apply id="S4.T1.16.12.12.1.m1.1.1.4.cmml" xref="S4.T1.16.12.12.1.m1.1.1.4"><csymbol cd="ambiguous" id="S4.T1.16.12.12.1.m1.1.1.4.1.cmml" xref="S4.T1.16.12.12.1.m1.1.1.4">subscript</csymbol><apply id="S4.T1.16.12.12.1.m1.1.1.4.2.cmml" xref="S4.T1.16.12.12.1.m1.1.1.4"><csymbol cd="ambiguous" id="S4.T1.16.12.12.1.m1.1.1.4.2.1.cmml" xref="S4.T1.16.12.12.1.m1.1.1.4">superscript</csymbol><ci id="S4.T1.16.12.12.1.m1.1.1.4.2.2.cmml" xref="S4.T1.16.12.12.1.m1.1.1.4.2.2">𝐱</ci><ci id="S4.T1.16.12.12.1.m1.1.1.4.2.3a.cmml" xref="S4.T1.16.12.12.1.m1.1.1.4.2.3"><mtext id="S4.T1.16.12.12.1.m1.1.1.4.2.3.cmml" mathsize="70%" xref="S4.T1.16.12.12.1.m1.1.1.4.2.3">down</mtext></ci></apply><ci id="S4.T1.16.12.12.1.m1.1.1.4.3.cmml" xref="S4.T1.16.12.12.1.m1.1.1.4.3">𝑡</ci></apply></apply><apply id="S4.T1.16.12.12.1.m1.1.1c.cmml" xref="S4.T1.16.12.12.1.m1.1.1"><apply id="S4.T1.16.12.12.1.m1.1.1.5.cmml" xref="S4.T1.16.12.12.1.m1.1.1.5"><ci id="S4.T1.16.12.12.1.m1.1.1.5.1a.cmml" xref="S4.T1.16.12.12.1.m1.1.1.5.1"><mtext id="S4.T1.16.12.12.1.m1.1.1.5.1.cmml" xref="S4.T1.16.12.12.1.m1.1.1.5.1">upscale</mtext></ci><ci id="S4.T1.16.12.12.1.m1.1.1.5.2.cmml" xref="S4.T1.16.12.12.1.m1.1.1.5.2">→</ci></apply><share href="https://arxiv.org/html/2503.16397v1#S4.T1.16.12.12.1.m1.1.1.4.cmml" id="S4.T1.16.12.12.1.m1.1.1d.cmml" xref="S4.T1.16.12.12.1.m1.1.1"></share><apply id="S4.T1.16.12.12.1.m1.1.1.6.cmml" xref="S4.T1.16.12.12.1.m1.1.1.6"><csymbol cd="ambiguous" id="S4.T1.16.12.12.1.m1.1.1.6.1.cmml" xref="S4.T1.16.12.12.1.m1.1.1.6">subscript</csymbol><ci id="S4.T1.16.12.12.1.m1.1.1.6.2.cmml" xref="S4.T1.16.12.12.1.m1.1.1.6.2">𝐱</ci><ci id="S4.T1.16.12.12.1.m1.1.1.6.3.cmml" xref="S4.T1.16.12.12.1.m1.1.1.6.3">𝑡</ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.16.12.12.1.m1.1c">\mathbf{{x}}^{\text{down}}_{0}\xrightarrow[]{\text{noise}}\mathbf{{x}}^{\text{%
down}}_{t}\xrightarrow[]{\text{upscale}}\mathbf{{x}}_{t}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.16.12.12.1.m1.1d">bold_x start_POSTSUPERSCRIPT down end_POSTSUPERSCRIPT start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT start_ARROW overnoise → end_ARROW bold_x start_POSTSUPERSCRIPT down end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT start_ARROW overupscale → end_ARROW bold_x start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.17.13.13.2"><math alttext="129.7" class="ltx_Math" display="inline" id="S4.T1.17.13.13.2.m1.1"><semantics id="S4.T1.17.13.13.2.m1.1a"><mn id="S4.T1.17.13.13.2.m1.1.1" xref="S4.T1.17.13.13.2.m1.1.1.cmml">129.7</mn><annotation-xml encoding="MathML-Content" id="S4.T1.17.13.13.2.m1.1b"><cn id="S4.T1.17.13.13.2.m1.1.1.cmml" type="float" xref="S4.T1.17.13.13.2.m1.1.1">129.7</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.17.13.13.2.m1.1c">129.7</annotation><annotation encoding="application/x-llamapun" id="S4.T1.17.13.13.2.m1.1d">129.7</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.18.14.14.3"><math alttext="235.0" class="ltx_Math" display="inline" id="S4.T1.18.14.14.3.m1.1"><semantics id="S4.T1.18.14.14.3.m1.1a"><mn id="S4.T1.18.14.14.3.m1.1.1" xref="S4.T1.18.14.14.3.m1.1.1.cmml">235.0</mn><annotation-xml encoding="MathML-Content" id="S4.T1.18.14.14.3.m1.1b"><cn id="S4.T1.18.14.14.3.m1.1.1.cmml" type="float" xref="S4.T1.18.14.14.3.m1.1.1">235.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.18.14.14.3.m1.1c">235.0</annotation><annotation encoding="application/x-llamapun" id="S4.T1.18.14.14.3.m1.1d">235.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.19.15.15.4"><math alttext="340.2" class="ltx_Math" display="inline" id="S4.T1.19.15.15.4.m1.1"><semantics id="S4.T1.19.15.15.4.m1.1a"><mn id="S4.T1.19.15.15.4.m1.1.1" xref="S4.T1.19.15.15.4.m1.1.1.cmml">340.2</mn><annotation-xml encoding="MathML-Content" id="S4.T1.19.15.15.4.m1.1b"><cn id="S4.T1.19.15.15.4.m1.1.1.cmml" type="float" xref="S4.T1.19.15.15.4.m1.1.1">340.2</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.19.15.15.4.m1.1c">340.2</annotation><annotation encoding="application/x-llamapun" id="S4.T1.19.15.15.4.m1.1d">340.2</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares three different methods for upscaling noisy image latents from 64x64 to 128x128 resolution and then back down to 64x64.  The goal is to determine which method produces upscaled latents that are most similar to the original full-resolution noisy latents. Method A uses the full resolution noisy latents as a baseline for comparison. Method B upscales the 64x64 latents and then adds noise. Method C adds noise to the 64x64 latents and then upscales. The similarity of the upscaled results to the original full-resolution noisy latents is measured using the Fréchet Inception Distance (FID), a metric used to evaluate the quality of generated images. The lower FID score indicates better quality. The table shows that Method B (upscaling first, then adding noise) produces upscaled latents that are closer to the ground truth full-resolution noisy latents than Method C (adding noise first, then upscaling).
> <details>
> <summary>read the caption</summary>
> Table 1:  Comparison of noisy latent upscaling strategies (B, C) for 64→128→6412864\rightarrow 12864 → 128 in terms of generation quality (FID-5K) against the real noisy latents (A). Upscaling 𝐱0downsubscriptsuperscript𝐱down0\mathbf{x}^{\text{down}}_{0}bold_x start_POSTSUPERSCRIPT down end_POSTSUPERSCRIPT start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT before noise injection (B) aligns better with full-resolution noisy latents.
> </details>





### In-depth insights


#### Scale vs Quality
The trade-off between **scale and quality** is a fundamental challenge in various domains, including image generation. In the context of diffusion models, increasing the scale, such as resolution, often leads to a higher computational cost and potentially slower generation times. Conversely, reducing the scale might improve speed but at the expense of image fidelity and detail. Achieving a balance between these factors requires careful consideration of model architecture, training strategies, and inference techniques. For instance, techniques like scale-wise distillation attempt to optimize this balance by generating images at lower resolutions initially and gradually increasing the resolution during the diffusion process. This approach can significantly reduce computational costs without sacrificing visual quality. A well-designed strategy can yield substantial performance gains, enabling faster and more efficient image generation.

#### SWD Mechanics
**Scale-wise Distillation (SWD) is a nuanced technique for diffusion models**, leveraging the concept of progressively increasing image resolution during the denoising process. Instead of operating at a fixed resolution throughout, SWD begins at a lower resolution and gradually upscales the image, aiming to optimize computational efficiency without sacrificing quality. This approach draws inspiration from the spectral autoregression, which suggests that low-frequency information can be modeled at lower resolutions, making high-resolution processing unnecessary at early stages. The scale-wise approach requires careful consideration of when and how to perform upsampling; **upscaling the clean latent representation before adding noise proves crucial** for maintaining alignment with real noisy latents, addressing potential out-of-distribution issues. It also shifts time schedule for scale-wise generation by increasing time steps to address artifacts and upscales with bicubic interpolation. **SWD's architecture is also unique** since it serves the dual purpose of few-shot generation and image upscaling.

#### Spectral Intuition
While the term Spectral Intuition doesn't explicitly appear, the research resonates with underlying spectral concepts. The document suggests that **diffusion models implicitly perform spectral autoregression**, aligning with Dieleman's work. This implies that lower frequencies (coarse details) are modeled earlier in the diffusion process when noise is high, while higher frequencies (fine details) are gradually added as noise decreases. The study uses spectral analysis of latent spaces in VAEs and latent DMs. The data suggests that at high noise levels, high-frequency components are masked, allowing for operations at lower resolutions without significant information loss. Therefore **high frequencies at timestep t are unnecessary** if those frequencies are already masked at that noise level. This understanding is leveraged in SWD to avoid redundant computations. A next-scale prediction paradigm [63], i.e., generating images by gradually increasing the resolution at each step, offer natural inductive bias for visual generation. It is important that low resolution modeling in the proposed method does not lose any data signal.

#### Patch Matching Loss
The idea of using a patch-matching loss is intriguing. Instead of focusing on the entire image, comparing **smaller regions** can lead to better local detail and texture matching. This approach can be especially useful when combined with other losses like adversarial loss, as it can help guide the generator towards creating more realistic and fine-grained structures. The use of intermediate features is also clever; it may enable the network to have access to more semantic level information for loss computation. Further exploration of different kernel choices and adaptive weighting of the patch loss based on image content or noise levels could prove valuable for enhancing the method's overall effectiveness and robustness. Specifically, **RBF kernel** might improve image quality.

#### Adaptive Scales
The idea of adaptive scales in diffusion models presents a compelling avenue for optimizing computational efficiency and potentially improving generative quality. Instead of adhering to a fixed resolution throughout the entire diffusion process, an adaptive approach would dynamically adjust the scale of operations based on factors such as noise levels, timestep, or content complexity. **During the initial high-noise timesteps, lower resolutions could be employed to capture the coarse, low-frequency structures of the data distribution**, leading to significant computational savings. As the diffusion process progresses and noise decreases, the resolution could be gradually increased to refine finer details. Adaptive scales could be implemented using various techniques, such as dynamic pooling, wavelet transformations, or hierarchical representations. **Challenges** include designing effective scale-selection mechanisms, ensuring smooth transitions between scales, and maintaining consistency across different resolutions. However, the potential benefits in terms of speed, memory usage, and potentially even improved generation make it a worthwhile research direction.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.16397/extracted/6297350/images/method_training.jpg)

> 🔼 The figure illustrates the training process of the Scale-wise Distillation (SWD) method.  It's a five-step process: 1) Select a training image and a pair of scales (s<sub>i</sub> and s<sub>i+1</sub>) from a predefined scale schedule. 2) Downscale the image to both s<sub>i</sub> and s<sub>i+1</sub> resolutions. 3) Upscale the lower-resolution (s<sub>i</sub>) image and add noise according to the forward diffusion process at timestep t<sub>i</sub>.  4) The model G predicts a clean image at the target scale s<sub>i+1</sub>. 5) Finally, calculate the distribution matching loss between the model's prediction and the original, target image at scale s<sub>i+1</sub>. This loss guides the training of model G to accurately predict images at higher resolutions by progressively upscaling and denoising.
> <details>
> <summary>read the caption</summary>
> Figure 2:  SwD training step. i) Sample training images and the pair of scales [sisubscript𝑠𝑖s_{i}italic_s start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT, si+1subscript𝑠𝑖1s_{i+1}italic_s start_POSTSUBSCRIPT italic_i + 1 end_POSTSUBSCRIPT] from the scale schedule. ii) The images are downscaled to the sisubscript𝑠𝑖s_{i}italic_s start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT and si+1subscript𝑠𝑖1s_{i+1}italic_s start_POSTSUBSCRIPT italic_i + 1 end_POSTSUBSCRIPT scales. iii) The lower resolution version is upscaled and noised according to the forward diffusion process at the timestep tisubscript𝑡𝑖t_{i}italic_t start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT. iv) Given the noised images, the model G𝐺Gitalic_G predicts clean images at the target scale si+1subscript𝑠𝑖1s_{i+1}italic_s start_POSTSUBSCRIPT italic_i + 1 end_POSTSUBSCRIPT. v) Distribution matching loss is calculated between predicted and target images.
> </details>



![](https://arxiv.org/html/2503.16397/extracted/6297350/images/method_overview.jpg)

> 🔼 This figure illustrates the SWD (Scale-wise Distillation) sampling process.  It starts with pure Gaussian noise at a low initial resolution (s1).  The model then iteratively refines this noisy image through multiple steps. In each step, the model upscales the previous prediction to a higher resolution (si) and adds noise according to a predefined timestep schedule (ti). This noisy image is then fed to the generator, which outputs a progressively cleaner, higher-resolution prediction at each step, until the final, high-resolution image is produced.  The process mimics a coarse-to-fine approach, starting with low-frequency details at lower resolutions and gradually adding high-frequency details at each step.
> <details>
> <summary>read the caption</summary>
> Figure 3:  SwD sampling. Starting from noise at the low scale s1subscript𝑠1s_{1}italic_s start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT, the model gradually increases resolution via multistep stochastic sampling. At each step, the previous prediction at the scale si−1subscript𝑠𝑖1s_{i-1}italic_s start_POSTSUBSCRIPT italic_i - 1 end_POSTSUBSCRIPT is upscaled and noised according to the  timestep schedule, tisubscript𝑡𝑖t_{i}italic_t start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT. Then, the generator predicts a clean image at the current scale sisubscript𝑠𝑖s_{i}italic_s start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT.
> </details>



![](https://arxiv.org/html/2503.16397/extracted/6297350/images/exps_crops.jpg)

> 🔼 This figure demonstrates the impact of using a scale-wise distillation method (SwD) compared to training at full resolution.  At a lower resolution (256x256), SD3.5, a diffusion model, produces cropped images lacking detail.  SDXL, another diffusion model, fails to generate coherent images at this resolution. However, SwD successfully distills these models, generating more complete and higher quality images. This highlights the SwD's ability to correct the limitations found in models trained at higher resolutions for lower-resolution tasks. 
> <details>
> <summary>read the caption</summary>
> Figure 4:  SD3.5 generates cropped images at low-resolutions (256×256256256256{\times}256256 × 256), while SDXL does not produce meaningful images at all. SwD is able to perform successful distillation for such cases and corrects these limitations.
> </details>



![](https://arxiv.org/html/2503.16397/x2.png)

> 🔼 This figure presents a visual comparison of image generation results using scale-wise and full-scale methods for different numbers of sampling steps.  It helps to illustrate the effectiveness of the scale-wise approach, which progressively increases the image resolution during generation, in comparison to the traditional full-scale method. The images generated by both methods across varying numbers of steps are presented side-by-side for comparison. The number of steps used for generation is indicated below each set of images, enabling a direct visual analysis of how image quality changes with the number of steps and the chosen method.
> <details>
> <summary>read the caption</summary>
> Figure 5:  Side-by-side comparison between scale-wise and full-scale settings. The numbers indicate the sampling steps.
> </details>



![](https://arxiv.org/html/2503.16397/extracted/6297350/images/exps_full_vs_scale_imgs.jpg)

> 🔼 Figure 6 presents a comparison of image generation results between the scale-wise distillation method (SWD) and the full-scale method.  It showcases several example prompts and their corresponding generated images. The images highlight the improved quality and detail achieved by SWD, especially when compared to the full-scale method with only two steps. The scale-wise approach produces more coherent and detailed images, demonstrating its superiority over the faster but less accurate full-scale approach.
> <details>
> <summary>read the caption</summary>
> Figure 6: Few examples of image generations for scale-wise and full-scale approaches. SwD outperforms the 2222-step configuration.
> </details>



![](https://arxiv.org/html/2503.16397/x3.png)

> 🔼 This figure presents a side-by-side comparison of the generated images from SwD and several baseline models, across four key aspects: text relevance, image aesthetics, image complexity, and defects.  For each metric, the figure shows bar graphs representing the human evaluation scores for SwD and the baselines, enabling a visual comparison of their relative performance in these criteria. This allows for a quick assessment of SwD's strengths and weaknesses when compared to state-of-the-art methods.
> <details>
> <summary>read the caption</summary>
> Figure 7:  Side-by-side comparisons of SwD and baseline models.
> </details>



![](https://arxiv.org/html/2503.16397/extracted/6297350/images/exps_cherry.jpg)

> 🔼 Figure 8 presents a qualitative comparison of image generation results between the proposed Scale-wise Distillation (SwD) method and several state-of-the-art baselines.  Four example image prompts are shown, with each showing the output of SwD and the outputs of the baselines. This allows for a visual comparison of the image quality, detail, and overall fidelity across different methods, highlighting the strengths and weaknesses of each in terms of generating high-quality, detailed images.
> <details>
> <summary>read the caption</summary>
> Figure 8: Qualitative comparison of SwD against the state-of-the-art baselines.
> </details>



![](https://arxiv.org/html/2503.16397/x4.png)

> 🔼 This figure shows a comparison of the scale-wise approach against the full-scale approach.  Specifically, it presents a visual comparison of the results obtained by using the scale-wise method (progressively increasing the resolution at each sampling step) versus the full-resolution method.  The comparison allows assessment of the tradeoffs between computational efficiency and image quality using the two approaches.
> <details>
> <summary>read the caption</summary>
> (a) Scale-wise against full-scale.
> </details>



![](https://arxiv.org/html/2503.16397/x5.png)

> 🔼 This figure presents a comparison of the performance of SwD against its teacher model (SD3.5 Large) and a state-of-the-art, fast text-to-image diffusion model (SD3.5 Large Turbo).  The comparison is conducted using human evaluation across multiple criteria, namely image aesthetics, text relevance, image complexity, and defects.  The results visualize the relative strengths and weaknesses of SwD concerning these aspects compared to existing models, illustrating how well SwD manages to preserve or improve upon its teacher's performance while offering a significant speedup.
> <details>
> <summary>read the caption</summary>
> (b) SwD against its teacher (SD3.5 Large) and SD3.5 Large Turbo.
> </details>



![](https://arxiv.org/html/2503.16397/extracted/6297350/images/app_large.jpg)

> 🔼 This figure shows a comparison of the image quality generated by different models: the full-resolution SD3.5 Large model and its scale-wise distilled counterparts with 4 and 6 sampling steps.  The images generated from each model are presented side-by-side, allowing for visual comparison of the image quality and detail.  The results are further assessed using human evaluations on various aspects like text relevance, image aesthetics, complexity, and presence of defects. This comparison helps to demonstrate the effectiveness of the scale-wise distillation method.
> <details>
> <summary>read the caption</summary>
> Figure 9: Side-by-Side comparisons for SD3.5 Large. The numbers indicate the sampling steps.
> </details>



![](https://arxiv.org/html/2503.16397/extracted/6297350/images/app_full_vs_scale_imgs.jpg)

> 🔼 This figure showcases visual examples generated by SD3.5 Large models, highlighting the diverse range of image styles and subject matters achievable using the model.  The examples illustrate the model's capacity to create a variety of images given different prompts.
> <details>
> <summary>read the caption</summary>
> Figure 10: Visual examples for the SD3.5 Large models.
> </details>



![](https://arxiv.org/html/2503.16397/extracted/6297350/images/app_cherry.jpg)

> 🔼 This figure showcases several image generation examples using both scale-wise and full-scale approaches with varying generation steps (2, 4, and 6 steps).  Each row represents a different text prompt, and the images within each row demonstrate the results from different methods and step counts. This allows for a visual comparison of the image quality and detail achieved by each approach. The purpose is to highlight the qualitative differences between the scale-wise distillation technique and a more traditional full-scale approach with different numbers of sampling steps, demonstrating the capabilities of the proposed method in producing high-quality images with fewer steps.
> <details>
> <summary>read the caption</summary>
> Figure 11: Qualitative examples of image generations for scale-wise and full scale approaches for different generation steps.
> </details>



![](https://arxiv.org/html/2503.16397/extracted/6297350/images/app_aesthetics.jpg)

> 🔼 This figure shows a qualitative comparison of image generation results from various models, including the proposed Scale-wise Distillation of Diffusion Models (SWD) and several state-of-the-art baselines (SD3.5, SDXL, DMD-SDXL, and Switti).  For each model, several image examples are displayed for the same text prompt, allowing for a visual comparison of image quality, detail, realism, and adherence to the prompt.  This side-by-side comparison helps highlight the strengths and weaknesses of SWD compared to other methods.
> <details>
> <summary>read the caption</summary>
> Figure 12: Qualitative comparisons against the baselines.
> </details>



![](https://arxiv.org/html/2503.16397/extracted/6297350/images/app_defects.jpg)

> 🔼 This figure shows the user interface used for human evaluation of image aesthetics.  Assessors are presented with pairs of images and asked to compare them based on several criteria, including brightness and contrast, color quality, glow, visibility of main objects, background and environment, and level of detail in the images.  A multiple choice format allows assessors to indicate which image is better or if they are comparable in quality for a given criterion.  The final rating is a consolidated judgment across all the criteria.
> <details>
> <summary>read the caption</summary>
> Figure 13: Human evaluation interface for aesthetics.
> </details>



![](https://arxiv.org/html/2503.16397/extracted/6297350/images/app_relevance.jpg)

> 🔼 This figure displays the interface used by assessors in the human evaluation study. Assessors are presented with a pair of images and asked to evaluate the presence of defects. The interface guides assessors through specific types of defects such as those in composition, watermarks, or extra objects.  Assessors rate images based on the severity of these defects and provide a final decision for each image pair.
> <details>
> <summary>read the caption</summary>
> Figure 14: Human evaluation interface for defects.
> </details>



![](https://arxiv.org/html/2503.16397/extracted/6297350/images/app_complexity.jpg)

> 🔼 This figure shows the interface used by human evaluators to assess the relevance of generated images to the given text prompt.  The evaluators are presented with a pair of images and asked to judge which image is more relevant to the prompt, considering aspects like the main objects and secondary objects depicted. They also assess the impact of any extra objects present in the image and provide a final verdict indicating which image demonstrates better relevance.
> <details>
> <summary>read the caption</summary>
> Figure 15: Human evaluation interface for relevance.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T2.55.55">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T2.5.5.5.6">Configuration</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.1.1.1.1">
<math alttext="\#" class="ltx_Math" display="inline" id="S5.T2.1.1.1.1.m1.1"><semantics id="S5.T2.1.1.1.1.m1.1a"><mi id="S5.T2.1.1.1.1.m1.1.1" mathvariant="normal" xref="S5.T2.1.1.1.1.m1.1.1.cmml">#</mi><annotation-xml encoding="MathML-Content" id="S5.T2.1.1.1.1.m1.1b"><ci id="S5.T2.1.1.1.1.m1.1.1.cmml" xref="S5.T2.1.1.1.1.m1.1.1">#</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.1.1.1.1.m1.1c">\#</annotation><annotation encoding="application/x-llamapun" id="S5.T2.1.1.1.1.m1.1d">#</annotation></semantics></math> steps</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.2.2.2">PS <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.2.2.2.2.m1.1"><semantics id="S5.T2.2.2.2.2.m1.1a"><mo id="S5.T2.2.2.2.2.m1.1.1" stretchy="false" xref="S5.T2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.2.2.2.2.m1.1b"><ci id="S5.T2.2.2.2.2.m1.1.1.cmml" xref="S5.T2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.3.3.3.3">CS <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.3.3.3.3.m1.1"><semantics id="S5.T2.3.3.3.3.m1.1a"><mo id="S5.T2.3.3.3.3.m1.1.1" stretchy="false" xref="S5.T2.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.3.3.3.3.m1.1b"><ci id="S5.T2.3.3.3.3.m1.1.1.cmml" xref="S5.T2.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.4.4.4.4">IR <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.4.4.4.4.m1.1"><semantics id="S5.T2.4.4.4.4.m1.1a"><mo id="S5.T2.4.4.4.4.m1.1.1" stretchy="false" xref="S5.T2.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.4.4.4.4.m1.1b"><ci id="S5.T2.4.4.4.4.m1.1.1.cmml" xref="S5.T2.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.5.5.5.5">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.5.5.5.5.m1.1"><semantics id="S5.T2.5.5.5.5.m1.1a"><mo id="S5.T2.5.5.5.5.m1.1.1" stretchy="false" xref="S5.T2.5.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.5.5.5.5.m1.1b"><ci id="S5.T2.5.5.5.5.m1.1.1.cmml" xref="S5.T2.5.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.5.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.5.5.5.5.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.55.55.56.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" colspan="6" id="S5.T2.55.55.56.1.1">
<span class="ltx_rule" style="width:0.0pt;height:9.9pt;background:black;display:inline-block;"></span>COCO 2014</th>
</tr>
<tr class="ltx_tr" id="S5.T2.10.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.10.10.10.6">Scale-wise</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.6.1"><math alttext="6" class="ltx_Math" display="inline" id="S5.T2.6.6.6.1.m1.1"><semantics id="S5.T2.6.6.6.1.m1.1a"><mn id="S5.T2.6.6.6.1.m1.1.1" xref="S5.T2.6.6.6.1.m1.1.1.cmml">6</mn><annotation-xml encoding="MathML-Content" id="S5.T2.6.6.6.1.m1.1b"><cn id="S5.T2.6.6.6.1.m1.1.1.cmml" type="integer" xref="S5.T2.6.6.6.1.m1.1.1">6</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.6.6.6.1.m1.1c">6</annotation><annotation encoding="application/x-llamapun" id="S5.T2.6.6.6.1.m1.1d">6</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.7.7.2"><math alttext="{0.230}" class="ltx_Math" display="inline" id="S5.T2.7.7.7.2.m1.1"><semantics id="S5.T2.7.7.7.2.m1.1a"><mn id="S5.T2.7.7.7.2.m1.1.1" xref="S5.T2.7.7.7.2.m1.1.1.cmml">0.230</mn><annotation-xml encoding="MathML-Content" id="S5.T2.7.7.7.2.m1.1b"><cn id="S5.T2.7.7.7.2.m1.1.1.cmml" type="float" xref="S5.T2.7.7.7.2.m1.1.1">0.230</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.7.7.7.2.m1.1c">{0.230}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.7.7.7.2.m1.1d">0.230</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.8.3"><math alttext="{0.355}" class="ltx_Math" display="inline" id="S5.T2.8.8.8.3.m1.1"><semantics id="S5.T2.8.8.8.3.m1.1a"><mn id="S5.T2.8.8.8.3.m1.1.1" xref="S5.T2.8.8.8.3.m1.1.1.cmml">0.355</mn><annotation-xml encoding="MathML-Content" id="S5.T2.8.8.8.3.m1.1b"><cn id="S5.T2.8.8.8.3.m1.1.1.cmml" type="float" xref="S5.T2.8.8.8.3.m1.1.1">0.355</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.8.8.8.3.m1.1c">{0.355}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.8.8.8.3.m1.1d">0.355</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.9.9.9.4"><math alttext="{1.11}" class="ltx_Math" display="inline" id="S5.T2.9.9.9.4.m1.1"><semantics id="S5.T2.9.9.9.4.m1.1a"><mn id="S5.T2.9.9.9.4.m1.1.1" xref="S5.T2.9.9.9.4.m1.1.1.cmml">1.11</mn><annotation-xml encoding="MathML-Content" id="S5.T2.9.9.9.4.m1.1b"><cn id="S5.T2.9.9.9.4.m1.1.1.cmml" type="float" xref="S5.T2.9.9.9.4.m1.1.1">1.11</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.9.9.9.4.m1.1c">{1.11}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.9.9.9.4.m1.1d">1.11</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.10.10.10.5"><math alttext="23.0" class="ltx_Math" display="inline" id="S5.T2.10.10.10.5.m1.1"><semantics id="S5.T2.10.10.10.5.m1.1a"><mn id="S5.T2.10.10.10.5.m1.1.1" xref="S5.T2.10.10.10.5.m1.1.1.cmml">23.0</mn><annotation-xml encoding="MathML-Content" id="S5.T2.10.10.10.5.m1.1b"><cn id="S5.T2.10.10.10.5.m1.1.1.cmml" type="float" xref="S5.T2.10.10.10.5.m1.1.1">23.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.10.10.10.5.m1.1c">23.0</annotation><annotation encoding="application/x-llamapun" id="S5.T2.10.10.10.5.m1.1d">23.0</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.15.15.15.6">Scale-wise</th>
<td class="ltx_td ltx_align_center" id="S5.T2.11.11.11.1"><math alttext="4" class="ltx_Math" display="inline" id="S5.T2.11.11.11.1.m1.1"><semantics id="S5.T2.11.11.11.1.m1.1a"><mn id="S5.T2.11.11.11.1.m1.1.1" xref="S5.T2.11.11.11.1.m1.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="S5.T2.11.11.11.1.m1.1b"><cn id="S5.T2.11.11.11.1.m1.1.1.cmml" type="integer" xref="S5.T2.11.11.11.1.m1.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.11.11.11.1.m1.1c">4</annotation><annotation encoding="application/x-llamapun" id="S5.T2.11.11.11.1.m1.1d">4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.12.2"><math alttext="{0.230}" class="ltx_Math" display="inline" id="S5.T2.12.12.12.2.m1.1"><semantics id="S5.T2.12.12.12.2.m1.1a"><mn id="S5.T2.12.12.12.2.m1.1.1" xref="S5.T2.12.12.12.2.m1.1.1.cmml">0.230</mn><annotation-xml encoding="MathML-Content" id="S5.T2.12.12.12.2.m1.1b"><cn id="S5.T2.12.12.12.2.m1.1.1.cmml" type="float" xref="S5.T2.12.12.12.2.m1.1.1">0.230</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.12.12.12.2.m1.1c">{0.230}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.12.12.12.2.m1.1d">0.230</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.13.13.13.3"><math alttext="{0.356}" class="ltx_Math" display="inline" id="S5.T2.13.13.13.3.m1.1"><semantics id="S5.T2.13.13.13.3.m1.1a"><mn id="S5.T2.13.13.13.3.m1.1.1" xref="S5.T2.13.13.13.3.m1.1.1.cmml">0.356</mn><annotation-xml encoding="MathML-Content" id="S5.T2.13.13.13.3.m1.1b"><cn id="S5.T2.13.13.13.3.m1.1.1.cmml" type="float" xref="S5.T2.13.13.13.3.m1.1.1">0.356</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.13.13.13.3.m1.1c">{0.356}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.13.13.13.3.m1.1d">0.356</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.14.14.14.4"><math alttext="{1.12}" class="ltx_Math" display="inline" id="S5.T2.14.14.14.4.m1.1"><semantics id="S5.T2.14.14.14.4.m1.1a"><mn id="S5.T2.14.14.14.4.m1.1.1" xref="S5.T2.14.14.14.4.m1.1.1.cmml">1.12</mn><annotation-xml encoding="MathML-Content" id="S5.T2.14.14.14.4.m1.1b"><cn id="S5.T2.14.14.14.4.m1.1.1.cmml" type="float" xref="S5.T2.14.14.14.4.m1.1.1">1.12</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.14.14.14.4.m1.1c">{1.12}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.14.14.14.4.m1.1d">1.12</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.15.15.5"><math alttext="23.3" class="ltx_Math" display="inline" id="S5.T2.15.15.15.5.m1.1"><semantics id="S5.T2.15.15.15.5.m1.1a"><mn id="S5.T2.15.15.15.5.m1.1.1" xref="S5.T2.15.15.15.5.m1.1.1.cmml">23.3</mn><annotation-xml encoding="MathML-Content" id="S5.T2.15.15.15.5.m1.1b"><cn id="S5.T2.15.15.15.5.m1.1.1.cmml" type="float" xref="S5.T2.15.15.15.5.m1.1.1">23.3</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.15.15.15.5.m1.1c">23.3</annotation><annotation encoding="application/x-llamapun" id="S5.T2.15.15.15.5.m1.1d">23.3</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T2.20.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.20.20.20.6">Full-scale</th>
<td class="ltx_td ltx_align_center" id="S5.T2.16.16.16.1"><math alttext="6" class="ltx_Math" display="inline" id="S5.T2.16.16.16.1.m1.1"><semantics id="S5.T2.16.16.16.1.m1.1a"><mn id="S5.T2.16.16.16.1.m1.1.1" xref="S5.T2.16.16.16.1.m1.1.1.cmml">6</mn><annotation-xml encoding="MathML-Content" id="S5.T2.16.16.16.1.m1.1b"><cn id="S5.T2.16.16.16.1.m1.1.1.cmml" type="integer" xref="S5.T2.16.16.16.1.m1.1.1">6</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.16.16.16.1.m1.1c">6</annotation><annotation encoding="application/x-llamapun" id="S5.T2.16.16.16.1.m1.1d">6</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.17.17.17.2"><math alttext="{0.228}" class="ltx_Math" display="inline" id="S5.T2.17.17.17.2.m1.1"><semantics id="S5.T2.17.17.17.2.m1.1a"><mn id="S5.T2.17.17.17.2.m1.1.1" xref="S5.T2.17.17.17.2.m1.1.1.cmml">0.228</mn><annotation-xml encoding="MathML-Content" id="S5.T2.17.17.17.2.m1.1b"><cn id="S5.T2.17.17.17.2.m1.1.1.cmml" type="float" xref="S5.T2.17.17.17.2.m1.1.1">0.228</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.17.17.17.2.m1.1c">{0.228}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.17.17.17.2.m1.1d">0.228</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.18.18.18.3"><math alttext="{0.353}" class="ltx_Math" display="inline" id="S5.T2.18.18.18.3.m1.1"><semantics id="S5.T2.18.18.18.3.m1.1a"><mn id="S5.T2.18.18.18.3.m1.1.1" xref="S5.T2.18.18.18.3.m1.1.1.cmml">0.353</mn><annotation-xml encoding="MathML-Content" id="S5.T2.18.18.18.3.m1.1b"><cn id="S5.T2.18.18.18.3.m1.1.1.cmml" type="float" xref="S5.T2.18.18.18.3.m1.1.1">0.353</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.18.18.18.3.m1.1c">{0.353}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.18.18.18.3.m1.1d">0.353</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.19.19.19.4"><math alttext="{1.08}" class="ltx_Math" display="inline" id="S5.T2.19.19.19.4.m1.1"><semantics id="S5.T2.19.19.19.4.m1.1a"><mn id="S5.T2.19.19.19.4.m1.1.1" xref="S5.T2.19.19.19.4.m1.1.1.cmml">1.08</mn><annotation-xml encoding="MathML-Content" id="S5.T2.19.19.19.4.m1.1b"><cn id="S5.T2.19.19.19.4.m1.1.1.cmml" type="float" xref="S5.T2.19.19.19.4.m1.1.1">1.08</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.19.19.19.4.m1.1c">{1.08}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.19.19.19.4.m1.1d">1.08</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.20.20.20.5"><math alttext="20.4" class="ltx_Math" display="inline" id="S5.T2.20.20.20.5.m1.1"><semantics id="S5.T2.20.20.20.5.m1.1a"><mn id="S5.T2.20.20.20.5.m1.1.1" xref="S5.T2.20.20.20.5.m1.1.1.cmml">20.4</mn><annotation-xml encoding="MathML-Content" id="S5.T2.20.20.20.5.m1.1b"><cn id="S5.T2.20.20.20.5.m1.1.1.cmml" type="float" xref="S5.T2.20.20.20.5.m1.1.1">20.4</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.20.20.20.5.m1.1c">20.4</annotation><annotation encoding="application/x-llamapun" id="S5.T2.20.20.20.5.m1.1d">20.4</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T2.25.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.25.25.25.6">Full-scale</th>
<td class="ltx_td ltx_align_center" id="S5.T2.21.21.21.1"><math alttext="4" class="ltx_Math" display="inline" id="S5.T2.21.21.21.1.m1.1"><semantics id="S5.T2.21.21.21.1.m1.1a"><mn id="S5.T2.21.21.21.1.m1.1.1" xref="S5.T2.21.21.21.1.m1.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="S5.T2.21.21.21.1.m1.1b"><cn id="S5.T2.21.21.21.1.m1.1.1.cmml" type="integer" xref="S5.T2.21.21.21.1.m1.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.21.21.21.1.m1.1c">4</annotation><annotation encoding="application/x-llamapun" id="S5.T2.21.21.21.1.m1.1d">4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.22.22.22.2"><math alttext="{0.228}" class="ltx_Math" display="inline" id="S5.T2.22.22.22.2.m1.1"><semantics id="S5.T2.22.22.22.2.m1.1a"><mn id="S5.T2.22.22.22.2.m1.1.1" xref="S5.T2.22.22.22.2.m1.1.1.cmml">0.228</mn><annotation-xml encoding="MathML-Content" id="S5.T2.22.22.22.2.m1.1b"><cn id="S5.T2.22.22.22.2.m1.1.1.cmml" type="float" xref="S5.T2.22.22.22.2.m1.1.1">0.228</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.22.22.22.2.m1.1c">{0.228}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.22.22.22.2.m1.1d">0.228</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.23.23.23.3"><math alttext="{0.356}" class="ltx_Math" display="inline" id="S5.T2.23.23.23.3.m1.1"><semantics id="S5.T2.23.23.23.3.m1.1a"><mn id="S5.T2.23.23.23.3.m1.1.1" xref="S5.T2.23.23.23.3.m1.1.1.cmml">0.356</mn><annotation-xml encoding="MathML-Content" id="S5.T2.23.23.23.3.m1.1b"><cn id="S5.T2.23.23.23.3.m1.1.1.cmml" type="float" xref="S5.T2.23.23.23.3.m1.1.1">0.356</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.23.23.23.3.m1.1c">{0.356}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.23.23.23.3.m1.1d">0.356</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.24.24.24.4"><math alttext="{1.09}" class="ltx_Math" display="inline" id="S5.T2.24.24.24.4.m1.1"><semantics id="S5.T2.24.24.24.4.m1.1a"><mn id="S5.T2.24.24.24.4.m1.1.1" xref="S5.T2.24.24.24.4.m1.1.1.cmml">1.09</mn><annotation-xml encoding="MathML-Content" id="S5.T2.24.24.24.4.m1.1b"><cn id="S5.T2.24.24.24.4.m1.1.1.cmml" type="float" xref="S5.T2.24.24.24.4.m1.1.1">1.09</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.24.24.24.4.m1.1c">{1.09}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.24.24.24.4.m1.1d">1.09</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.25.25.25.5"><math alttext="21.2" class="ltx_Math" display="inline" id="S5.T2.25.25.25.5.m1.1"><semantics id="S5.T2.25.25.25.5.m1.1a"><mn id="S5.T2.25.25.25.5.m1.1.1" xref="S5.T2.25.25.25.5.m1.1.1.cmml">21.2</mn><annotation-xml encoding="MathML-Content" id="S5.T2.25.25.25.5.m1.1b"><cn id="S5.T2.25.25.25.5.m1.1.1.cmml" type="float" xref="S5.T2.25.25.25.5.m1.1.1">21.2</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.25.25.25.5.m1.1c">21.2</annotation><annotation encoding="application/x-llamapun" id="S5.T2.25.25.25.5.m1.1d">21.2</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T2.30.30.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.30.30.30.6">Full-scale</th>
<td class="ltx_td ltx_align_center" id="S5.T2.26.26.26.1"><math alttext="2" class="ltx_Math" display="inline" id="S5.T2.26.26.26.1.m1.1"><semantics id="S5.T2.26.26.26.1.m1.1a"><mn id="S5.T2.26.26.26.1.m1.1.1" xref="S5.T2.26.26.26.1.m1.1.1.cmml">2</mn><annotation-xml encoding="MathML-Content" id="S5.T2.26.26.26.1.m1.1b"><cn id="S5.T2.26.26.26.1.m1.1.1.cmml" type="integer" xref="S5.T2.26.26.26.1.m1.1.1">2</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.26.26.26.1.m1.1c">2</annotation><annotation encoding="application/x-llamapun" id="S5.T2.26.26.26.1.m1.1d">2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.27.27.27.2"><math alttext="{0.226}" class="ltx_Math" display="inline" id="S5.T2.27.27.27.2.m1.1"><semantics id="S5.T2.27.27.27.2.m1.1a"><mn id="S5.T2.27.27.27.2.m1.1.1" xref="S5.T2.27.27.27.2.m1.1.1.cmml">0.226</mn><annotation-xml encoding="MathML-Content" id="S5.T2.27.27.27.2.m1.1b"><cn id="S5.T2.27.27.27.2.m1.1.1.cmml" type="float" xref="S5.T2.27.27.27.2.m1.1.1">0.226</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.27.27.27.2.m1.1c">{0.226}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.27.27.27.2.m1.1d">0.226</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.28.28.28.3"><math alttext="{0.357}" class="ltx_Math" display="inline" id="S5.T2.28.28.28.3.m1.1"><semantics id="S5.T2.28.28.28.3.m1.1a"><mn id="S5.T2.28.28.28.3.m1.1.1" xref="S5.T2.28.28.28.3.m1.1.1.cmml">0.357</mn><annotation-xml encoding="MathML-Content" id="S5.T2.28.28.28.3.m1.1b"><cn id="S5.T2.28.28.28.3.m1.1.1.cmml" type="float" xref="S5.T2.28.28.28.3.m1.1.1">0.357</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.28.28.28.3.m1.1c">{0.357}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.28.28.28.3.m1.1d">0.357</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.29.29.29.4"><math alttext="{1.03}" class="ltx_Math" display="inline" id="S5.T2.29.29.29.4.m1.1"><semantics id="S5.T2.29.29.29.4.m1.1a"><mn id="S5.T2.29.29.29.4.m1.1.1" xref="S5.T2.29.29.29.4.m1.1.1.cmml">1.03</mn><annotation-xml encoding="MathML-Content" id="S5.T2.29.29.29.4.m1.1b"><cn id="S5.T2.29.29.29.4.m1.1.1.cmml" type="float" xref="S5.T2.29.29.29.4.m1.1.1">1.03</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.29.29.29.4.m1.1c">{1.03}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.29.29.29.4.m1.1d">1.03</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.30.30.30.5"><math alttext="20.3" class="ltx_Math" display="inline" id="S5.T2.30.30.30.5.m1.1"><semantics id="S5.T2.30.30.30.5.m1.1a"><mn id="S5.T2.30.30.30.5.m1.1.1" xref="S5.T2.30.30.30.5.m1.1.1.cmml">20.3</mn><annotation-xml encoding="MathML-Content" id="S5.T2.30.30.30.5.m1.1b"><cn id="S5.T2.30.30.30.5.m1.1.1.cmml" type="float" xref="S5.T2.30.30.30.5.m1.1.1">20.3</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.30.30.30.5.m1.1c">20.3</annotation><annotation encoding="application/x-llamapun" id="S5.T2.30.30.30.5.m1.1d">20.3</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T2.55.55.57.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" colspan="6" id="S5.T2.55.55.57.2.1">
<span class="ltx_rule" style="width:0.0pt;height:9.9pt;background:black;display:inline-block;"></span>MJHQ</th>
</tr>
<tr class="ltx_tr" id="S5.T2.35.35.35">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.35.35.35.6">Scale-wise</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.31.31.31.1"><math alttext="6" class="ltx_Math" display="inline" id="S5.T2.31.31.31.1.m1.1"><semantics id="S5.T2.31.31.31.1.m1.1a"><mn id="S5.T2.31.31.31.1.m1.1.1" xref="S5.T2.31.31.31.1.m1.1.1.cmml">6</mn><annotation-xml encoding="MathML-Content" id="S5.T2.31.31.31.1.m1.1b"><cn id="S5.T2.31.31.31.1.m1.1.1.cmml" type="integer" xref="S5.T2.31.31.31.1.m1.1.1">6</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.31.31.31.1.m1.1c">6</annotation><annotation encoding="application/x-llamapun" id="S5.T2.31.31.31.1.m1.1d">6</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.32.32.32.2"><math alttext="{0.221}" class="ltx_Math" display="inline" id="S5.T2.32.32.32.2.m1.1"><semantics id="S5.T2.32.32.32.2.m1.1a"><mn id="S5.T2.32.32.32.2.m1.1.1" xref="S5.T2.32.32.32.2.m1.1.1.cmml">0.221</mn><annotation-xml encoding="MathML-Content" id="S5.T2.32.32.32.2.m1.1b"><cn id="S5.T2.32.32.32.2.m1.1.1.cmml" type="float" xref="S5.T2.32.32.32.2.m1.1.1">0.221</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.32.32.32.2.m1.1c">{0.221}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.32.32.32.2.m1.1d">0.221</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.33.33.33.3"><math alttext="{0.363}" class="ltx_Math" display="inline" id="S5.T2.33.33.33.3.m1.1"><semantics id="S5.T2.33.33.33.3.m1.1a"><mn id="S5.T2.33.33.33.3.m1.1.1" xref="S5.T2.33.33.33.3.m1.1.1.cmml">0.363</mn><annotation-xml encoding="MathML-Content" id="S5.T2.33.33.33.3.m1.1b"><cn id="S5.T2.33.33.33.3.m1.1.1.cmml" type="float" xref="S5.T2.33.33.33.3.m1.1.1">0.363</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.33.33.33.3.m1.1c">{0.363}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.33.33.33.3.m1.1d">0.363</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.34.34.34.4"><math alttext="{1.11}" class="ltx_Math" display="inline" id="S5.T2.34.34.34.4.m1.1"><semantics id="S5.T2.34.34.34.4.m1.1a"><mn id="S5.T2.34.34.34.4.m1.1.1" xref="S5.T2.34.34.34.4.m1.1.1.cmml">1.11</mn><annotation-xml encoding="MathML-Content" id="S5.T2.34.34.34.4.m1.1b"><cn id="S5.T2.34.34.34.4.m1.1.1.cmml" type="float" xref="S5.T2.34.34.34.4.m1.1.1">1.11</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.34.34.34.4.m1.1c">{1.11}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.34.34.34.4.m1.1d">1.11</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.35.35.35.5"><math alttext="13.6" class="ltx_Math" display="inline" id="S5.T2.35.35.35.5.m1.1"><semantics id="S5.T2.35.35.35.5.m1.1a"><mn id="S5.T2.35.35.35.5.m1.1.1" xref="S5.T2.35.35.35.5.m1.1.1.cmml">13.6</mn><annotation-xml encoding="MathML-Content" id="S5.T2.35.35.35.5.m1.1b"><cn id="S5.T2.35.35.35.5.m1.1.1.cmml" type="float" xref="S5.T2.35.35.35.5.m1.1.1">13.6</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.35.35.35.5.m1.1c">13.6</annotation><annotation encoding="application/x-llamapun" id="S5.T2.35.35.35.5.m1.1d">13.6</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T2.40.40.40">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.40.40.40.6">Scale-wise</th>
<td class="ltx_td ltx_align_center" id="S5.T2.36.36.36.1"><math alttext="4" class="ltx_Math" display="inline" id="S5.T2.36.36.36.1.m1.1"><semantics id="S5.T2.36.36.36.1.m1.1a"><mn id="S5.T2.36.36.36.1.m1.1.1" xref="S5.T2.36.36.36.1.m1.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="S5.T2.36.36.36.1.m1.1b"><cn id="S5.T2.36.36.36.1.m1.1.1.cmml" type="integer" xref="S5.T2.36.36.36.1.m1.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.36.36.36.1.m1.1c">4</annotation><annotation encoding="application/x-llamapun" id="S5.T2.36.36.36.1.m1.1d">4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.37.37.37.2"><math alttext="{0.220}" class="ltx_Math" display="inline" id="S5.T2.37.37.37.2.m1.1"><semantics id="S5.T2.37.37.37.2.m1.1a"><mn id="S5.T2.37.37.37.2.m1.1.1" xref="S5.T2.37.37.37.2.m1.1.1.cmml">0.220</mn><annotation-xml encoding="MathML-Content" id="S5.T2.37.37.37.2.m1.1b"><cn id="S5.T2.37.37.37.2.m1.1.1.cmml" type="float" xref="S5.T2.37.37.37.2.m1.1.1">0.220</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.37.37.37.2.m1.1c">{0.220}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.37.37.37.2.m1.1d">0.220</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.38.38.38.3"><math alttext="{0.363}" class="ltx_Math" display="inline" id="S5.T2.38.38.38.3.m1.1"><semantics id="S5.T2.38.38.38.3.m1.1a"><mn id="S5.T2.38.38.38.3.m1.1.1" xref="S5.T2.38.38.38.3.m1.1.1.cmml">0.363</mn><annotation-xml encoding="MathML-Content" id="S5.T2.38.38.38.3.m1.1b"><cn id="S5.T2.38.38.38.3.m1.1.1.cmml" type="float" xref="S5.T2.38.38.38.3.m1.1.1">0.363</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.38.38.38.3.m1.1c">{0.363}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.38.38.38.3.m1.1d">0.363</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.39.39.39.4"><math alttext="{1.13}" class="ltx_Math" display="inline" id="S5.T2.39.39.39.4.m1.1"><semantics id="S5.T2.39.39.39.4.m1.1a"><mn id="S5.T2.39.39.39.4.m1.1.1" xref="S5.T2.39.39.39.4.m1.1.1.cmml">1.13</mn><annotation-xml encoding="MathML-Content" id="S5.T2.39.39.39.4.m1.1b"><cn id="S5.T2.39.39.39.4.m1.1.1.cmml" type="float" xref="S5.T2.39.39.39.4.m1.1.1">1.13</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.39.39.39.4.m1.1c">{1.13}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.39.39.39.4.m1.1d">1.13</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.40.40.40.5"><math alttext="13.7" class="ltx_Math" display="inline" id="S5.T2.40.40.40.5.m1.1"><semantics id="S5.T2.40.40.40.5.m1.1a"><mn id="S5.T2.40.40.40.5.m1.1.1" xref="S5.T2.40.40.40.5.m1.1.1.cmml">13.7</mn><annotation-xml encoding="MathML-Content" id="S5.T2.40.40.40.5.m1.1b"><cn id="S5.T2.40.40.40.5.m1.1.1.cmml" type="float" xref="S5.T2.40.40.40.5.m1.1.1">13.7</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.40.40.40.5.m1.1c">13.7</annotation><annotation encoding="application/x-llamapun" id="S5.T2.40.40.40.5.m1.1d">13.7</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T2.45.45.45">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.45.45.45.6">Full-scale</th>
<td class="ltx_td ltx_align_center" id="S5.T2.41.41.41.1"><math alttext="6" class="ltx_Math" display="inline" id="S5.T2.41.41.41.1.m1.1"><semantics id="S5.T2.41.41.41.1.m1.1a"><mn id="S5.T2.41.41.41.1.m1.1.1" xref="S5.T2.41.41.41.1.m1.1.1.cmml">6</mn><annotation-xml encoding="MathML-Content" id="S5.T2.41.41.41.1.m1.1b"><cn id="S5.T2.41.41.41.1.m1.1.1.cmml" type="integer" xref="S5.T2.41.41.41.1.m1.1.1">6</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.41.41.41.1.m1.1c">6</annotation><annotation encoding="application/x-llamapun" id="S5.T2.41.41.41.1.m1.1d">6</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.42.42.42.2"><math alttext="{0.218}" class="ltx_Math" display="inline" id="S5.T2.42.42.42.2.m1.1"><semantics id="S5.T2.42.42.42.2.m1.1a"><mn id="S5.T2.42.42.42.2.m1.1.1" xref="S5.T2.42.42.42.2.m1.1.1.cmml">0.218</mn><annotation-xml encoding="MathML-Content" id="S5.T2.42.42.42.2.m1.1b"><cn id="S5.T2.42.42.42.2.m1.1.1.cmml" type="float" xref="S5.T2.42.42.42.2.m1.1.1">0.218</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.42.42.42.2.m1.1c">{0.218}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.42.42.42.2.m1.1d">0.218</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.43.43.43.3"><math alttext="{0.356}" class="ltx_Math" display="inline" id="S5.T2.43.43.43.3.m1.1"><semantics id="S5.T2.43.43.43.3.m1.1a"><mn id="S5.T2.43.43.43.3.m1.1.1" xref="S5.T2.43.43.43.3.m1.1.1.cmml">0.356</mn><annotation-xml encoding="MathML-Content" id="S5.T2.43.43.43.3.m1.1b"><cn id="S5.T2.43.43.43.3.m1.1.1.cmml" type="float" xref="S5.T2.43.43.43.3.m1.1.1">0.356</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.43.43.43.3.m1.1c">{0.356}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.43.43.43.3.m1.1d">0.356</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.44.44.44.4"><math alttext="{1.09}" class="ltx_Math" display="inline" id="S5.T2.44.44.44.4.m1.1"><semantics id="S5.T2.44.44.44.4.m1.1a"><mn id="S5.T2.44.44.44.4.m1.1.1" xref="S5.T2.44.44.44.4.m1.1.1.cmml">1.09</mn><annotation-xml encoding="MathML-Content" id="S5.T2.44.44.44.4.m1.1b"><cn id="S5.T2.44.44.44.4.m1.1.1.cmml" type="float" xref="S5.T2.44.44.44.4.m1.1.1">1.09</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.44.44.44.4.m1.1c">{1.09}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.44.44.44.4.m1.1d">1.09</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.45.45.45.5"><math alttext="13.4" class="ltx_Math" display="inline" id="S5.T2.45.45.45.5.m1.1"><semantics id="S5.T2.45.45.45.5.m1.1a"><mn id="S5.T2.45.45.45.5.m1.1.1" xref="S5.T2.45.45.45.5.m1.1.1.cmml">13.4</mn><annotation-xml encoding="MathML-Content" id="S5.T2.45.45.45.5.m1.1b"><cn id="S5.T2.45.45.45.5.m1.1.1.cmml" type="float" xref="S5.T2.45.45.45.5.m1.1.1">13.4</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.45.45.45.5.m1.1c">13.4</annotation><annotation encoding="application/x-llamapun" id="S5.T2.45.45.45.5.m1.1d">13.4</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T2.50.50.50">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.50.50.50.6">Full-scale</th>
<td class="ltx_td ltx_align_center" id="S5.T2.46.46.46.1"><math alttext="4" class="ltx_Math" display="inline" id="S5.T2.46.46.46.1.m1.1"><semantics id="S5.T2.46.46.46.1.m1.1a"><mn id="S5.T2.46.46.46.1.m1.1.1" xref="S5.T2.46.46.46.1.m1.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="S5.T2.46.46.46.1.m1.1b"><cn id="S5.T2.46.46.46.1.m1.1.1.cmml" type="integer" xref="S5.T2.46.46.46.1.m1.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.46.46.46.1.m1.1c">4</annotation><annotation encoding="application/x-llamapun" id="S5.T2.46.46.46.1.m1.1d">4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.47.47.47.2"><math alttext="{0.219}" class="ltx_Math" display="inline" id="S5.T2.47.47.47.2.m1.1"><semantics id="S5.T2.47.47.47.2.m1.1a"><mn id="S5.T2.47.47.47.2.m1.1.1" xref="S5.T2.47.47.47.2.m1.1.1.cmml">0.219</mn><annotation-xml encoding="MathML-Content" id="S5.T2.47.47.47.2.m1.1b"><cn id="S5.T2.47.47.47.2.m1.1.1.cmml" type="float" xref="S5.T2.47.47.47.2.m1.1.1">0.219</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.47.47.47.2.m1.1c">{0.219}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.47.47.47.2.m1.1d">0.219</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.48.48.48.3"><math alttext="{0.361}" class="ltx_Math" display="inline" id="S5.T2.48.48.48.3.m1.1"><semantics id="S5.T2.48.48.48.3.m1.1a"><mn id="S5.T2.48.48.48.3.m1.1.1" xref="S5.T2.48.48.48.3.m1.1.1.cmml">0.361</mn><annotation-xml encoding="MathML-Content" id="S5.T2.48.48.48.3.m1.1b"><cn id="S5.T2.48.48.48.3.m1.1.1.cmml" type="float" xref="S5.T2.48.48.48.3.m1.1.1">0.361</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.48.48.48.3.m1.1c">{0.361}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.48.48.48.3.m1.1d">0.361</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.49.49.49.4"><math alttext="{1.10}" class="ltx_Math" display="inline" id="S5.T2.49.49.49.4.m1.1"><semantics id="S5.T2.49.49.49.4.m1.1a"><mn id="S5.T2.49.49.49.4.m1.1.1" xref="S5.T2.49.49.49.4.m1.1.1.cmml">1.10</mn><annotation-xml encoding="MathML-Content" id="S5.T2.49.49.49.4.m1.1b"><cn id="S5.T2.49.49.49.4.m1.1.1.cmml" type="float" xref="S5.T2.49.49.49.4.m1.1.1">1.10</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.49.49.49.4.m1.1c">{1.10}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.49.49.49.4.m1.1d">1.10</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T2.50.50.50.5"><math alttext="13.5" class="ltx_Math" display="inline" id="S5.T2.50.50.50.5.m1.1"><semantics id="S5.T2.50.50.50.5.m1.1a"><mn id="S5.T2.50.50.50.5.m1.1.1" xref="S5.T2.50.50.50.5.m1.1.1.cmml">13.5</mn><annotation-xml encoding="MathML-Content" id="S5.T2.50.50.50.5.m1.1b"><cn id="S5.T2.50.50.50.5.m1.1.1.cmml" type="float" xref="S5.T2.50.50.50.5.m1.1.1">13.5</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.50.50.50.5.m1.1c">13.5</annotation><annotation encoding="application/x-llamapun" id="S5.T2.50.50.50.5.m1.1d">13.5</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T2.55.55.55">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T2.55.55.55.6">Full-scale</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.51.51.51.1"><math alttext="2" class="ltx_Math" display="inline" id="S5.T2.51.51.51.1.m1.1"><semantics id="S5.T2.51.51.51.1.m1.1a"><mn id="S5.T2.51.51.51.1.m1.1.1" xref="S5.T2.51.51.51.1.m1.1.1.cmml">2</mn><annotation-xml encoding="MathML-Content" id="S5.T2.51.51.51.1.m1.1b"><cn id="S5.T2.51.51.51.1.m1.1.1.cmml" type="integer" xref="S5.T2.51.51.51.1.m1.1.1">2</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.51.51.51.1.m1.1c">2</annotation><annotation encoding="application/x-llamapun" id="S5.T2.51.51.51.1.m1.1d">2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.52.52.52.2"><math alttext="{0.217}" class="ltx_Math" display="inline" id="S5.T2.52.52.52.2.m1.1"><semantics id="S5.T2.52.52.52.2.m1.1a"><mn id="S5.T2.52.52.52.2.m1.1.1" xref="S5.T2.52.52.52.2.m1.1.1.cmml">0.217</mn><annotation-xml encoding="MathML-Content" id="S5.T2.52.52.52.2.m1.1b"><cn id="S5.T2.52.52.52.2.m1.1.1.cmml" type="float" xref="S5.T2.52.52.52.2.m1.1.1">0.217</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.52.52.52.2.m1.1c">{0.217}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.52.52.52.2.m1.1d">0.217</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.53.53.53.3"><math alttext="{0.363}" class="ltx_Math" display="inline" id="S5.T2.53.53.53.3.m1.1"><semantics id="S5.T2.53.53.53.3.m1.1a"><mn id="S5.T2.53.53.53.3.m1.1.1" xref="S5.T2.53.53.53.3.m1.1.1.cmml">0.363</mn><annotation-xml encoding="MathML-Content" id="S5.T2.53.53.53.3.m1.1b"><cn id="S5.T2.53.53.53.3.m1.1.1.cmml" type="float" xref="S5.T2.53.53.53.3.m1.1.1">0.363</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.53.53.53.3.m1.1c">{0.363}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.53.53.53.3.m1.1d">0.363</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.54.54.54.4"><math alttext="{1.04}" class="ltx_Math" display="inline" id="S5.T2.54.54.54.4.m1.1"><semantics id="S5.T2.54.54.54.4.m1.1a"><mn id="S5.T2.54.54.54.4.m1.1.1" xref="S5.T2.54.54.54.4.m1.1.1.cmml">1.04</mn><annotation-xml encoding="MathML-Content" id="S5.T2.54.54.54.4.m1.1b"><cn id="S5.T2.54.54.54.4.m1.1.1.cmml" type="float" xref="S5.T2.54.54.54.4.m1.1.1">1.04</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.54.54.54.4.m1.1c">{1.04}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.54.54.54.4.m1.1d">1.04</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.55.55.55.5"><math alttext="13.1" class="ltx_Math" display="inline" id="S5.T2.55.55.55.5.m1.1"><semantics id="S5.T2.55.55.55.5.m1.1a"><mn id="S5.T2.55.55.55.5.m1.1.1" xref="S5.T2.55.55.55.5.m1.1.1.cmml">13.1</mn><annotation-xml encoding="MathML-Content" id="S5.T2.55.55.55.5.m1.1b"><cn id="S5.T2.55.55.55.5.m1.1.1.cmml" type="float" xref="S5.T2.55.55.55.5.m1.1.1">13.1</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.55.55.55.5.m1.1c">13.1</annotation><annotation encoding="application/x-llamapun" id="S5.T2.55.55.55.5.m1.1d">13.1</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the performance of scale-wise and full-scale diffusion models using several automated metrics.  Specifically, it shows the results for the SD3.5 medium model, comparing different numbers of sampling steps (2, 4, and 6 steps) for both scale-wise and full-scale approaches. The metrics used include FID (Fréchet Inception Distance), which measures the quality of generated images, as well as PS (PickScore), CS (CLIPScore), and IR (ImageReward), all reflecting different aspects of image quality and similarity to the desired output.
> <details>
> <summary>read the caption</summary>
> Table 2:  Quantitative comparison between scale-wise and full-scale setups in terms of automated metrics within SD3.5 medium.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.30.30">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.30.30.31.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T3.30.30.31.1.1"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S5.T3.30.30.31.1.2"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T3.30.30.31.1.3"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.31.1.3.1">SD3.5 Medium</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T3.30.30.31.1.4"><span class="ltx_text ltx_font_bold" id="S5.T3.30.30.31.1.4.1">SD3.5 Large</span></th>
<td class="ltx_td ltx_nopad_r ltx_border_tt" id="S5.T3.30.30.31.1.5"></td>
</tr>
<tr class="ltx_tr" id="S5.T3.30.30.32.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S5.T3.30.30.32.2.1">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T3.30.30.32.2.2">Steps</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T3.30.30.32.2.3">
<table class="ltx_tabular ltx_align_middle" id="S5.T3.30.30.32.2.3.1">
<tr class="ltx_tr" id="S5.T3.30.30.32.2.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.30.30.32.2.3.1.1.1">Latency,</td>
</tr>
<tr class="ltx_tr" id="S5.T3.30.30.32.2.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.30.30.32.2.3.1.2.1">s/image</td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T3.30.30.32.2.4">
<table class="ltx_tabular ltx_align_middle" id="S5.T3.30.30.32.2.4.1">
<tr class="ltx_tr" id="S5.T3.30.30.32.2.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.30.30.32.2.4.1.1.1">Train time,</td>
</tr>
<tr class="ltx_tr" id="S5.T3.30.30.32.2.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.30.30.32.2.4.1.2.1">s/iter</td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T3.30.30.32.2.5">
<table class="ltx_tabular ltx_align_middle" id="S5.T3.30.30.32.2.5.1">
<tr class="ltx_tr" id="S5.T3.30.30.32.2.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.30.30.32.2.5.1.1.1">Latency,</td>
</tr>
<tr class="ltx_tr" id="S5.T3.30.30.32.2.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.30.30.32.2.5.1.2.1">s/image</td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T3.30.30.32.2.6">
<table class="ltx_tabular ltx_align_middle" id="S5.T3.30.30.32.2.6.1">
<tr class="ltx_tr" id="S5.T3.30.30.32.2.6.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.30.30.32.2.6.1.1.1">Train time,</td>
</tr>
<tr class="ltx_tr" id="S5.T3.30.30.32.2.6.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.30.30.32.2.6.1.2.1">s/iter</td>
</tr>
</table>
</th>
<td class="ltx_td" id="S5.T3.30.30.32.2.7"></td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.5.5.5.6">Scale-wise</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.1.1"><math alttext="6" class="ltx_Math" display="inline" id="S5.T3.1.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.1.m1.1a"><mn id="S5.T3.1.1.1.1.m1.1.1" xref="S5.T3.1.1.1.1.m1.1.1.cmml">6</mn><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.1.m1.1b"><cn id="S5.T3.1.1.1.1.m1.1.1.cmml" type="integer" xref="S5.T3.1.1.1.1.m1.1.1">6</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.1.m1.1c">6</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.1.m1.1d">6</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.2"><math alttext="0.17" class="ltx_Math" display="inline" id="S5.T3.2.2.2.2.m1.1"><semantics id="S5.T3.2.2.2.2.m1.1a"><mn id="S5.T3.2.2.2.2.m1.1.1" xref="S5.T3.2.2.2.2.m1.1.1.cmml">0.17</mn><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.2.2.m1.1b"><cn id="S5.T3.2.2.2.2.m1.1.1.cmml" type="float" xref="S5.T3.2.2.2.2.m1.1.1">0.17</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.2.2.m1.1c">0.17</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.2.2.m1.1d">0.17</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.3.3.3"><math alttext="19" class="ltx_Math" display="inline" id="S5.T3.3.3.3.3.m1.1"><semantics id="S5.T3.3.3.3.3.m1.1a"><mn id="S5.T3.3.3.3.3.m1.1.1" xref="S5.T3.3.3.3.3.m1.1.1.cmml">19</mn><annotation-xml encoding="MathML-Content" id="S5.T3.3.3.3.3.m1.1b"><cn id="S5.T3.3.3.3.3.m1.1.1.cmml" type="integer" xref="S5.T3.3.3.3.3.m1.1.1">19</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.3.3.3.m1.1c">19</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.3.3.3.m1.1d">19</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.4.4.4"><math alttext="0.41" class="ltx_Math" display="inline" id="S5.T3.4.4.4.4.m1.1"><semantics id="S5.T3.4.4.4.4.m1.1a"><mn id="S5.T3.4.4.4.4.m1.1.1" xref="S5.T3.4.4.4.4.m1.1.1.cmml">0.41</mn><annotation-xml encoding="MathML-Content" id="S5.T3.4.4.4.4.m1.1b"><cn id="S5.T3.4.4.4.4.m1.1.1.cmml" type="float" xref="S5.T3.4.4.4.4.m1.1.1">0.41</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.4.4.4.4.m1.1c">0.41</annotation><annotation encoding="application/x-llamapun" id="S5.T3.4.4.4.4.m1.1d">0.41</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.5.5.5"><math alttext="17" class="ltx_Math" display="inline" id="S5.T3.5.5.5.5.m1.1"><semantics id="S5.T3.5.5.5.5.m1.1a"><mn id="S5.T3.5.5.5.5.m1.1.1" xref="S5.T3.5.5.5.5.m1.1.1.cmml">17</mn><annotation-xml encoding="MathML-Content" id="S5.T3.5.5.5.5.m1.1b"><cn id="S5.T3.5.5.5.5.m1.1.1.cmml" type="integer" xref="S5.T3.5.5.5.5.m1.1.1">17</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.5.5.5.5.m1.1c">17</annotation><annotation encoding="application/x-llamapun" id="S5.T3.5.5.5.5.m1.1d">17</annotation></semantics></math></td>
<td class="ltx_td" id="S5.T3.5.5.5.7"></td>
</tr>
<tr class="ltx_tr" id="S5.T3.10.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.10.10.10.6">Scale-wise</th>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.6.1"><math alttext="4" class="ltx_Math" display="inline" id="S5.T3.6.6.6.1.m1.1"><semantics id="S5.T3.6.6.6.1.m1.1a"><mn id="S5.T3.6.6.6.1.m1.1.1" xref="S5.T3.6.6.6.1.m1.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="S5.T3.6.6.6.1.m1.1b"><cn id="S5.T3.6.6.6.1.m1.1.1.cmml" type="integer" xref="S5.T3.6.6.6.1.m1.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.6.6.6.1.m1.1c">4</annotation><annotation encoding="application/x-llamapun" id="S5.T3.6.6.6.1.m1.1d">4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.7.2"><math alttext="0.14" class="ltx_Math" display="inline" id="S5.T3.7.7.7.2.m1.1"><semantics id="S5.T3.7.7.7.2.m1.1a"><mn id="S5.T3.7.7.7.2.m1.1.1" xref="S5.T3.7.7.7.2.m1.1.1.cmml">0.14</mn><annotation-xml encoding="MathML-Content" id="S5.T3.7.7.7.2.m1.1b"><cn id="S5.T3.7.7.7.2.m1.1.1.cmml" type="float" xref="S5.T3.7.7.7.2.m1.1.1">0.14</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.7.7.7.2.m1.1c">0.14</annotation><annotation encoding="application/x-llamapun" id="S5.T3.7.7.7.2.m1.1d">0.14</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.8.8.3"><math alttext="21" class="ltx_Math" display="inline" id="S5.T3.8.8.8.3.m1.1"><semantics id="S5.T3.8.8.8.3.m1.1a"><mn id="S5.T3.8.8.8.3.m1.1.1" xref="S5.T3.8.8.8.3.m1.1.1.cmml">21</mn><annotation-xml encoding="MathML-Content" id="S5.T3.8.8.8.3.m1.1b"><cn id="S5.T3.8.8.8.3.m1.1.1.cmml" type="integer" xref="S5.T3.8.8.8.3.m1.1.1">21</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.8.8.8.3.m1.1c">21</annotation><annotation encoding="application/x-llamapun" id="S5.T3.8.8.8.3.m1.1d">21</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.9.9.9.4"><math alttext="0.32" class="ltx_Math" display="inline" id="S5.T3.9.9.9.4.m1.1"><semantics id="S5.T3.9.9.9.4.m1.1a"><mn id="S5.T3.9.9.9.4.m1.1.1" xref="S5.T3.9.9.9.4.m1.1.1.cmml">0.32</mn><annotation-xml encoding="MathML-Content" id="S5.T3.9.9.9.4.m1.1b"><cn id="S5.T3.9.9.9.4.m1.1.1.cmml" type="float" xref="S5.T3.9.9.9.4.m1.1.1">0.32</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.9.9.9.4.m1.1c">0.32</annotation><annotation encoding="application/x-llamapun" id="S5.T3.9.9.9.4.m1.1d">0.32</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.10.5"><math alttext="18" class="ltx_Math" display="inline" id="S5.T3.10.10.10.5.m1.1"><semantics id="S5.T3.10.10.10.5.m1.1a"><mn id="S5.T3.10.10.10.5.m1.1.1" xref="S5.T3.10.10.10.5.m1.1.1.cmml">18</mn><annotation-xml encoding="MathML-Content" id="S5.T3.10.10.10.5.m1.1b"><cn id="S5.T3.10.10.10.5.m1.1.1.cmml" type="integer" xref="S5.T3.10.10.10.5.m1.1.1">18</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.10.10.10.5.m1.1c">18</annotation><annotation encoding="application/x-llamapun" id="S5.T3.10.10.10.5.m1.1d">18</annotation></semantics></math></td>
<td class="ltx_td" id="S5.T3.10.10.10.7"></td>
</tr>
<tr class="ltx_tr" id="S5.T3.15.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.15.15.15.6">Full-scale</th>
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.1"><math alttext="6" class="ltx_Math" display="inline" id="S5.T3.11.11.11.1.m1.1"><semantics id="S5.T3.11.11.11.1.m1.1a"><mn id="S5.T3.11.11.11.1.m1.1.1" xref="S5.T3.11.11.11.1.m1.1.1.cmml">6</mn><annotation-xml encoding="MathML-Content" id="S5.T3.11.11.11.1.m1.1b"><cn id="S5.T3.11.11.11.1.m1.1.1.cmml" type="integer" xref="S5.T3.11.11.11.1.m1.1.1">6</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.11.11.11.1.m1.1c">6</annotation><annotation encoding="application/x-llamapun" id="S5.T3.11.11.11.1.m1.1d">6</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.12.12.2"><math alttext="0.38" class="ltx_Math" display="inline" id="S5.T3.12.12.12.2.m1.1"><semantics id="S5.T3.12.12.12.2.m1.1a"><mn id="S5.T3.12.12.12.2.m1.1.1" xref="S5.T3.12.12.12.2.m1.1.1.cmml">0.38</mn><annotation-xml encoding="MathML-Content" id="S5.T3.12.12.12.2.m1.1b"><cn id="S5.T3.12.12.12.2.m1.1.1.cmml" type="float" xref="S5.T3.12.12.12.2.m1.1.1">0.38</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.12.12.12.2.m1.1c">0.38</annotation><annotation encoding="application/x-llamapun" id="S5.T3.12.12.12.2.m1.1d">0.38</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.13.13.13.3"><math alttext="41" class="ltx_Math" display="inline" id="S5.T3.13.13.13.3.m1.1"><semantics id="S5.T3.13.13.13.3.m1.1a"><mn id="S5.T3.13.13.13.3.m1.1.1" xref="S5.T3.13.13.13.3.m1.1.1.cmml">41</mn><annotation-xml encoding="MathML-Content" id="S5.T3.13.13.13.3.m1.1b"><cn id="S5.T3.13.13.13.3.m1.1.1.cmml" type="integer" xref="S5.T3.13.13.13.3.m1.1.1">41</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.13.13.13.3.m1.1c">41</annotation><annotation encoding="application/x-llamapun" id="S5.T3.13.13.13.3.m1.1d">41</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.14.14.14.4"><math alttext="0.92" class="ltx_Math" display="inline" id="S5.T3.14.14.14.4.m1.1"><semantics id="S5.T3.14.14.14.4.m1.1a"><mn id="S5.T3.14.14.14.4.m1.1.1" xref="S5.T3.14.14.14.4.m1.1.1.cmml">0.92</mn><annotation-xml encoding="MathML-Content" id="S5.T3.14.14.14.4.m1.1b"><cn id="S5.T3.14.14.14.4.m1.1.1.cmml" type="float" xref="S5.T3.14.14.14.4.m1.1.1">0.92</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.14.14.14.4.m1.1c">0.92</annotation><annotation encoding="application/x-llamapun" id="S5.T3.14.14.14.4.m1.1d">0.92</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.15.15.15.5"><math alttext="27" class="ltx_Math" display="inline" id="S5.T3.15.15.15.5.m1.1"><semantics id="S5.T3.15.15.15.5.m1.1a"><mn id="S5.T3.15.15.15.5.m1.1.1" xref="S5.T3.15.15.15.5.m1.1.1.cmml">27</mn><annotation-xml encoding="MathML-Content" id="S5.T3.15.15.15.5.m1.1b"><cn id="S5.T3.15.15.15.5.m1.1.1.cmml" type="integer" xref="S5.T3.15.15.15.5.m1.1.1">27</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.15.15.15.5.m1.1c">27</annotation><annotation encoding="application/x-llamapun" id="S5.T3.15.15.15.5.m1.1d">27</annotation></semantics></math></td>
<td class="ltx_td" id="S5.T3.15.15.15.7"></td>
</tr>
<tr class="ltx_tr" id="S5.T3.20.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.20.20.20.6">Full-scale</th>
<td class="ltx_td ltx_align_center" id="S5.T3.16.16.16.1"><math alttext="4" class="ltx_Math" display="inline" id="S5.T3.16.16.16.1.m1.1"><semantics id="S5.T3.16.16.16.1.m1.1a"><mn id="S5.T3.16.16.16.1.m1.1.1" xref="S5.T3.16.16.16.1.m1.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="S5.T3.16.16.16.1.m1.1b"><cn id="S5.T3.16.16.16.1.m1.1.1.cmml" type="integer" xref="S5.T3.16.16.16.1.m1.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.16.16.16.1.m1.1c">4</annotation><annotation encoding="application/x-llamapun" id="S5.T3.16.16.16.1.m1.1d">4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.17.17.17.2"><math alttext="0.26" class="ltx_Math" display="inline" id="S5.T3.17.17.17.2.m1.1"><semantics id="S5.T3.17.17.17.2.m1.1a"><mn id="S5.T3.17.17.17.2.m1.1.1" xref="S5.T3.17.17.17.2.m1.1.1.cmml">0.26</mn><annotation-xml encoding="MathML-Content" id="S5.T3.17.17.17.2.m1.1b"><cn id="S5.T3.17.17.17.2.m1.1.1.cmml" type="float" xref="S5.T3.17.17.17.2.m1.1.1">0.26</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.17.17.17.2.m1.1c">0.26</annotation><annotation encoding="application/x-llamapun" id="S5.T3.17.17.17.2.m1.1d">0.26</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.18.18.18.3"><math alttext="41" class="ltx_Math" display="inline" id="S5.T3.18.18.18.3.m1.1"><semantics id="S5.T3.18.18.18.3.m1.1a"><mn id="S5.T3.18.18.18.3.m1.1.1" xref="S5.T3.18.18.18.3.m1.1.1.cmml">41</mn><annotation-xml encoding="MathML-Content" id="S5.T3.18.18.18.3.m1.1b"><cn id="S5.T3.18.18.18.3.m1.1.1.cmml" type="integer" xref="S5.T3.18.18.18.3.m1.1.1">41</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.18.18.18.3.m1.1c">41</annotation><annotation encoding="application/x-llamapun" id="S5.T3.18.18.18.3.m1.1d">41</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.19.19.19.4"><math alttext="0.63" class="ltx_Math" display="inline" id="S5.T3.19.19.19.4.m1.1"><semantics id="S5.T3.19.19.19.4.m1.1a"><mn id="S5.T3.19.19.19.4.m1.1.1" xref="S5.T3.19.19.19.4.m1.1.1.cmml">0.63</mn><annotation-xml encoding="MathML-Content" id="S5.T3.19.19.19.4.m1.1b"><cn id="S5.T3.19.19.19.4.m1.1.1.cmml" type="float" xref="S5.T3.19.19.19.4.m1.1.1">0.63</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.19.19.19.4.m1.1c">0.63</annotation><annotation encoding="application/x-llamapun" id="S5.T3.19.19.19.4.m1.1d">0.63</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.20.20.20.5"><math alttext="27" class="ltx_Math" display="inline" id="S5.T3.20.20.20.5.m1.1"><semantics id="S5.T3.20.20.20.5.m1.1a"><mn id="S5.T3.20.20.20.5.m1.1.1" xref="S5.T3.20.20.20.5.m1.1.1.cmml">27</mn><annotation-xml encoding="MathML-Content" id="S5.T3.20.20.20.5.m1.1b"><cn id="S5.T3.20.20.20.5.m1.1.1.cmml" type="integer" xref="S5.T3.20.20.20.5.m1.1.1">27</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.20.20.20.5.m1.1c">27</annotation><annotation encoding="application/x-llamapun" id="S5.T3.20.20.20.5.m1.1d">27</annotation></semantics></math></td>
<td class="ltx_td" id="S5.T3.20.20.20.7"></td>
</tr>
<tr class="ltx_tr" id="S5.T3.25.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.25.25.25.6">Full-scale</th>
<td class="ltx_td ltx_align_center" id="S5.T3.21.21.21.1"><math alttext="2" class="ltx_Math" display="inline" id="S5.T3.21.21.21.1.m1.1"><semantics id="S5.T3.21.21.21.1.m1.1a"><mn id="S5.T3.21.21.21.1.m1.1.1" xref="S5.T3.21.21.21.1.m1.1.1.cmml">2</mn><annotation-xml encoding="MathML-Content" id="S5.T3.21.21.21.1.m1.1b"><cn id="S5.T3.21.21.21.1.m1.1.1.cmml" type="integer" xref="S5.T3.21.21.21.1.m1.1.1">2</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.21.21.21.1.m1.1c">2</annotation><annotation encoding="application/x-llamapun" id="S5.T3.21.21.21.1.m1.1d">2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.22.22.22.2"><math alttext="0.15" class="ltx_Math" display="inline" id="S5.T3.22.22.22.2.m1.1"><semantics id="S5.T3.22.22.22.2.m1.1a"><mn id="S5.T3.22.22.22.2.m1.1.1" xref="S5.T3.22.22.22.2.m1.1.1.cmml">0.15</mn><annotation-xml encoding="MathML-Content" id="S5.T3.22.22.22.2.m1.1b"><cn id="S5.T3.22.22.22.2.m1.1.1.cmml" type="float" xref="S5.T3.22.22.22.2.m1.1.1">0.15</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.22.22.22.2.m1.1c">0.15</annotation><annotation encoding="application/x-llamapun" id="S5.T3.22.22.22.2.m1.1d">0.15</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.23.23.23.3"><math alttext="41" class="ltx_Math" display="inline" id="S5.T3.23.23.23.3.m1.1"><semantics id="S5.T3.23.23.23.3.m1.1a"><mn id="S5.T3.23.23.23.3.m1.1.1" xref="S5.T3.23.23.23.3.m1.1.1.cmml">41</mn><annotation-xml encoding="MathML-Content" id="S5.T3.23.23.23.3.m1.1b"><cn id="S5.T3.23.23.23.3.m1.1.1.cmml" type="integer" xref="S5.T3.23.23.23.3.m1.1.1">41</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.23.23.23.3.m1.1c">41</annotation><annotation encoding="application/x-llamapun" id="S5.T3.23.23.23.3.m1.1d">41</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.24.24.24.4"><math alttext="0.33" class="ltx_Math" display="inline" id="S5.T3.24.24.24.4.m1.1"><semantics id="S5.T3.24.24.24.4.m1.1a"><mn id="S5.T3.24.24.24.4.m1.1.1" xref="S5.T3.24.24.24.4.m1.1.1.cmml">0.33</mn><annotation-xml encoding="MathML-Content" id="S5.T3.24.24.24.4.m1.1b"><cn id="S5.T3.24.24.24.4.m1.1.1.cmml" type="float" xref="S5.T3.24.24.24.4.m1.1.1">0.33</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.24.24.24.4.m1.1c">0.33</annotation><annotation encoding="application/x-llamapun" id="S5.T3.24.24.24.4.m1.1d">0.33</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.25.25.25.5"><math alttext="27" class="ltx_Math" display="inline" id="S5.T3.25.25.25.5.m1.1"><semantics id="S5.T3.25.25.25.5.m1.1a"><mn id="S5.T3.25.25.25.5.m1.1.1" xref="S5.T3.25.25.25.5.m1.1.1.cmml">27</mn><annotation-xml encoding="MathML-Content" id="S5.T3.25.25.25.5.m1.1b"><cn id="S5.T3.25.25.25.5.m1.1.1.cmml" type="integer" xref="S5.T3.25.25.25.5.m1.1.1">27</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.25.25.25.5.m1.1c">27</annotation><annotation encoding="application/x-llamapun" id="S5.T3.25.25.25.5.m1.1d">27</annotation></semantics></math></td>
<td class="ltx_td" id="S5.T3.25.25.25.7"></td>
</tr>
<tr class="ltx_tr" id="S5.T3.30.30.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T3.30.30.30.6">Teacher</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.26.26.26.1"><math alttext="28" class="ltx_Math" display="inline" id="S5.T3.26.26.26.1.m1.1"><semantics id="S5.T3.26.26.26.1.m1.1a"><mn id="S5.T3.26.26.26.1.m1.1.1" xref="S5.T3.26.26.26.1.m1.1.1.cmml">28</mn><annotation-xml encoding="MathML-Content" id="S5.T3.26.26.26.1.m1.1b"><cn id="S5.T3.26.26.26.1.m1.1.1.cmml" type="integer" xref="S5.T3.26.26.26.1.m1.1.1">28</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.26.26.26.1.m1.1c">28</annotation><annotation encoding="application/x-llamapun" id="S5.T3.26.26.26.1.m1.1d">28</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.27.27.27.2"><math alttext="1.61" class="ltx_Math" display="inline" id="S5.T3.27.27.27.2.m1.1"><semantics id="S5.T3.27.27.27.2.m1.1a"><mn id="S5.T3.27.27.27.2.m1.1.1" xref="S5.T3.27.27.27.2.m1.1.1.cmml">1.61</mn><annotation-xml encoding="MathML-Content" id="S5.T3.27.27.27.2.m1.1b"><cn id="S5.T3.27.27.27.2.m1.1.1.cmml" type="float" xref="S5.T3.27.27.27.2.m1.1.1">1.61</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.27.27.27.2.m1.1c">1.61</annotation><annotation encoding="application/x-llamapun" id="S5.T3.27.27.27.2.m1.1d">1.61</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.28.28.28.3"><math alttext="-" class="ltx_Math" display="inline" id="S5.T3.28.28.28.3.m1.1"><semantics id="S5.T3.28.28.28.3.m1.1a"><mo id="S5.T3.28.28.28.3.m1.1.1" xref="S5.T3.28.28.28.3.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T3.28.28.28.3.m1.1b"><minus id="S5.T3.28.28.28.3.m1.1.1.cmml" xref="S5.T3.28.28.28.3.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.28.28.28.3.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T3.28.28.28.3.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.29.29.29.4"><math alttext="4.42" class="ltx_Math" display="inline" id="S5.T3.29.29.29.4.m1.1"><semantics id="S5.T3.29.29.29.4.m1.1a"><mn id="S5.T3.29.29.29.4.m1.1.1" xref="S5.T3.29.29.29.4.m1.1.1.cmml">4.42</mn><annotation-xml encoding="MathML-Content" id="S5.T3.29.29.29.4.m1.1b"><cn id="S5.T3.29.29.29.4.m1.1.1.cmml" type="float" xref="S5.T3.29.29.29.4.m1.1.1">4.42</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.29.29.29.4.m1.1c">4.42</annotation><annotation encoding="application/x-llamapun" id="S5.T3.29.29.29.4.m1.1d">4.42</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.30.30.30.5"><math alttext="-" class="ltx_Math" display="inline" id="S5.T3.30.30.30.5.m1.1"><semantics id="S5.T3.30.30.30.5.m1.1a"><mo id="S5.T3.30.30.30.5.m1.1.1" xref="S5.T3.30.30.30.5.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T3.30.30.30.5.m1.1b"><minus id="S5.T3.30.30.30.5.m1.1.1.cmml" xref="S5.T3.30.30.30.5.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.30.30.30.5.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T3.30.30.30.5.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_border_bb" id="S5.T3.30.30.30.7"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the generation and training times for scale-wise and full-scale diffusion models.  It compares two different model sizes (SD3.5 Medium and SD3.5 Large) across various numbers of sampling steps (2, 4, and 6).  The data highlights the computational efficiency gains achieved by using the scale-wise approach, showing significant reductions in both generation and training times compared to the full-resolution methods. Details on the experimental setup can be found in Appendix D of the paper.
> <details>
> <summary>read the caption</summary>
> Table 3:  Comparison of generation and training times between scale-wise and full-scale configurations within SD3.5 Medium and Large. The measurement setup is described in Appendix D.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.30.30.32.2.3.1">
<tr class="ltx_tr" id="S5.T3.30.30.32.2.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.30.30.32.2.3.1.1.1">Latency,</td>
</tr>
<tr class="ltx_tr" id="S5.T3.30.30.32.2.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.30.30.32.2.3.1.2.1">s/image</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the proposed Scale-wise Distillation (SwD) method against other state-of-the-art open-source text-to-image generation models.  The comparison is based on several key metrics: generation speed (Latency), model size (Parameters), and image quality (evaluated using PickScore, CLIP score, Inception score, FID, and GenEval). The table highlights the best-performing configuration for each model and uses bold text to emphasize the top performer and underlines to indicate the second-best.  Results for the larger SD3.5 Large model are shown in gray to emphasize the model size's impact on the results.
> <details>
> <summary>read the caption</summary>
> Table 4:  Quantitative comparison of SwD against other leading open-source models. Bold denotes the best performing configuration, while underline the 2nd one. gray highlights the results for SD3.5 Large, which stands out due to its model size.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.30.30.32.2.4.1">
<tr class="ltx_tr" id="S5.T3.30.30.32.2.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.30.30.32.2.4.1.1.1">Train time,</td>
</tr>
<tr class="ltx_tr" id="S5.T3.30.30.32.2.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.30.30.32.2.4.1.2.1">s/iter</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies conducted on 30K MJHQ prompts to analyze the impact of different components of the proposed Scale-wise Distillation of Diffusion Models (SWD) method.  The studies systematically remove or modify specific parts of the SWD framework (e.g., time shifting, scale scheduling, scale-wise training, the Patch Distribution Matching loss (PDM)) to isolate their individual contributions to the overall performance. The table shows the impact of each ablation on standard metrics: PS↑ (PickScore), CS↑ (CLIPScore), IR↑ (ImageReward), and FID↓ (Fréchet Inception Distance). The results help to understand the relative importance of different components of the SWD method.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation studies conducted on 30303030K MJHQ prompts.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.30.30.32.2.5.1">
<tr class="ltx_tr" id="S5.T3.30.30.32.2.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.30.30.32.2.5.1.1.1">Latency,</td>
</tr>
<tr class="ltx_tr" id="S5.T3.30.30.32.2.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.30.30.32.2.5.1.2.1">s/image</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of the proposed Patch Distribution Matching (PDM) loss with a naive patch loss.  The naive patch loss simply calculates the element-wise distance between patches in the feature maps from the teacher and student models.  PDM uses the Maximum Mean Discrepancy (MMD) to measure the distance between patch distributions, providing a more robust and informative comparison of the patch similarity. The table shows the results in terms of PS (PickScore), CS (CLIP Score), IR (ImageReward), and FID (Frechet Inception Distance) metrics on the COCO 2014 dataset.  The results demonstrate the superiority of PDM over the naive patch loss in terms of image quality and generation performance.
> <details>
> <summary>read the caption</summary>
> Table 6: Comparison to the naive patch loss.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.30.30.32.2.6.1">
<tr class="ltx_tr" id="S5.T3.30.30.32.2.6.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.30.30.32.2.6.1.1.1">Train time,</td>
</tr>
<tr class="ltx_tr" id="S5.T3.30.30.32.2.6.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.30.30.32.2.6.1.2.1">s/iter</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies performed on the COCO dataset to analyze the impact of different components of the proposed Scale-wise Distillation of Diffusion Models (SWD) method.  The studies systematically remove or modify key elements of SWD, such as the time shift, scale schedule, training method, and the Patch Distribution Matching (PDM) loss, to evaluate their individual contributions to the overall performance.  The metrics used to assess performance include PS (PickScore), CS (CLIPScore), IR (ImageReward), and FID (Fréchet Inception Distance). This analysis helps to understand the importance of each component and identify potential areas for improvement or simplification of the SWD framework.
> <details>
> <summary>read the caption</summary>
> Table 7: Ablation studies conducted on 30303030K COCO prompts.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.16397/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16397/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16397/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16397/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16397/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16397/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16397/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16397/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16397/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16397/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16397/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16397/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16397/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16397/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16397/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16397/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}