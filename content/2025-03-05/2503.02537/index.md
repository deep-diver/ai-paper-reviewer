---
title: "RectifiedHR: Enable Efficient High-Resolution Image Generation via Energy Rectification"
summary: "RectifiedHR: Enables training-free high-resolution image generation via energy rectification, boosting both efficiency and effectiveness."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Hong Kong University of Science and Technology",]
showSummary: true
date: 2025-03-04
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.02537 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhen Yang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-05 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.02537" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.02537" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.02537/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Diffusion models excel in image generation, but struggle at higher resolutions than their training data. Existing solutions are inefficient or complex. This paper introduces RectifiedHR to address this issue. RectifiedHR is a training-free method for high-resolution image generation. It introduces a Noise Refresh strategy, requiring minimal code to improve resolution and efficiency.



RectifiedHR addresses the energy decay phenomenon that causes blurriness. It employs an Energy Rectification strategy, adjusting classifier-free guidance to enhance performance. The method is training-free, boasts simple logic, and demonstrates effectiveness and efficiency compared to baselines. It achieves superior results through a simple and efficient framework.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces Noise Refresh and Energy Rectification for training-free high-resolution image generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Presents a relative latent energy analysis, identifying and addressing the energy decay phenomenon in high-resolution generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Achieves state-of-the-art results with a simple and efficient framework, requiring minimal code implementation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **RectifiedHR**, a practical approach to high-resolution image generation. By offering a **training-free** and efficient solution, it enables exploration of model capabilities without extensive retraining or complex setups, fostering advancements in generative AI.

------
#### Visual Insights



![](https://arxiv.org/html/2503.02537/x2.png)

> 🔼 This figure showcases example images generated using the RectifiedHR method.  The images demonstrate the method's capability to produce high-resolution outputs (significantly larger than the training resolution of the underlying diffusion model, SDXL) without requiring any additional training. The diverse range of subjects and visual styles highlight the method's versatility.  The caption encourages viewers to zoom in for a closer inspection of the image details.
> <details>
> <summary>read the caption</summary>
> Figure 1: Generated images of our method. Our training-free method can enable diffusion models (SDXL in the figure) to generate images at resolutions higher than their original training resolution. ZOOM IN for a closer look.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.8">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.8.8">
<td class="ltx_td ltx_border_l ltx_border_r ltx_border_t" id="S4.T1.8.8.9"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.8.8.10">Methods</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.1.1"><math alttext="\mathrm{FID}_{r}\downarrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.m1.1a"><mrow id="S4.T1.1.1.1.m1.1.1" xref="S4.T1.1.1.1.m1.1.1.cmml"><msub id="S4.T1.1.1.1.m1.1.1.2" xref="S4.T1.1.1.1.m1.1.1.2.cmml"><mi id="S4.T1.1.1.1.m1.1.1.2.2" xref="S4.T1.1.1.1.m1.1.1.2.2.cmml">FID</mi><mi id="S4.T1.1.1.1.m1.1.1.2.3" xref="S4.T1.1.1.1.m1.1.1.2.3.cmml">r</mi></msub><mo id="S4.T1.1.1.1.m1.1.1.1" stretchy="false" xref="S4.T1.1.1.1.m1.1.1.1.cmml">↓</mo><mi id="S4.T1.1.1.1.m1.1.1.3" xref="S4.T1.1.1.1.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.m1.1b"><apply id="S4.T1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1"><ci id="S4.T1.1.1.1.m1.1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1.1">↓</ci><apply id="S4.T1.1.1.1.m1.1.1.2.cmml" xref="S4.T1.1.1.1.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T1.1.1.1.m1.1.1.2.1.cmml" xref="S4.T1.1.1.1.m1.1.1.2">subscript</csymbol><ci id="S4.T1.1.1.1.m1.1.1.2.2.cmml" xref="S4.T1.1.1.1.m1.1.1.2.2">FID</ci><ci id="S4.T1.1.1.1.m1.1.1.2.3.cmml" xref="S4.T1.1.1.1.m1.1.1.2.3">𝑟</ci></apply><csymbol cd="latexml" id="S4.T1.1.1.1.m1.1.1.3.cmml" xref="S4.T1.1.1.1.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.m1.1c">\mathrm{FID}_{r}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.m1.1d">roman_FID start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT ↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.2"><math alttext="\mathrm{KID}_{r}\downarrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.m1.1a"><mrow id="S4.T1.2.2.2.m1.1.1" xref="S4.T1.2.2.2.m1.1.1.cmml"><msub id="S4.T1.2.2.2.m1.1.1.2" xref="S4.T1.2.2.2.m1.1.1.2.cmml"><mi id="S4.T1.2.2.2.m1.1.1.2.2" xref="S4.T1.2.2.2.m1.1.1.2.2.cmml">KID</mi><mi id="S4.T1.2.2.2.m1.1.1.2.3" xref="S4.T1.2.2.2.m1.1.1.2.3.cmml">r</mi></msub><mo id="S4.T1.2.2.2.m1.1.1.1" stretchy="false" xref="S4.T1.2.2.2.m1.1.1.1.cmml">↓</mo><mi id="S4.T1.2.2.2.m1.1.1.3" xref="S4.T1.2.2.2.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.m1.1b"><apply id="S4.T1.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.m1.1.1"><ci id="S4.T1.2.2.2.m1.1.1.1.cmml" xref="S4.T1.2.2.2.m1.1.1.1">↓</ci><apply id="S4.T1.2.2.2.m1.1.1.2.cmml" xref="S4.T1.2.2.2.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T1.2.2.2.m1.1.1.2.1.cmml" xref="S4.T1.2.2.2.m1.1.1.2">subscript</csymbol><ci id="S4.T1.2.2.2.m1.1.1.2.2.cmml" xref="S4.T1.2.2.2.m1.1.1.2.2">KID</ci><ci id="S4.T1.2.2.2.m1.1.1.2.3.cmml" xref="S4.T1.2.2.2.m1.1.1.2.3">𝑟</ci></apply><csymbol cd="latexml" id="S4.T1.2.2.2.m1.1.1.3.cmml" xref="S4.T1.2.2.2.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.m1.1c">\mathrm{KID}_{r}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.m1.1d">roman_KID start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT ↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.3.3.3"><math alttext="\mathrm{IS}_{r}\uparrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.m1.1a"><mrow id="S4.T1.3.3.3.m1.1.1" xref="S4.T1.3.3.3.m1.1.1.cmml"><msub id="S4.T1.3.3.3.m1.1.1.2" xref="S4.T1.3.3.3.m1.1.1.2.cmml"><mi id="S4.T1.3.3.3.m1.1.1.2.2" xref="S4.T1.3.3.3.m1.1.1.2.2.cmml">IS</mi><mi id="S4.T1.3.3.3.m1.1.1.2.3" xref="S4.T1.3.3.3.m1.1.1.2.3.cmml">r</mi></msub><mo id="S4.T1.3.3.3.m1.1.1.1" stretchy="false" xref="S4.T1.3.3.3.m1.1.1.1.cmml">↑</mo><mi id="S4.T1.3.3.3.m1.1.1.3" xref="S4.T1.3.3.3.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.m1.1b"><apply id="S4.T1.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.m1.1.1"><ci id="S4.T1.3.3.3.m1.1.1.1.cmml" xref="S4.T1.3.3.3.m1.1.1.1">↑</ci><apply id="S4.T1.3.3.3.m1.1.1.2.cmml" xref="S4.T1.3.3.3.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T1.3.3.3.m1.1.1.2.1.cmml" xref="S4.T1.3.3.3.m1.1.1.2">subscript</csymbol><ci id="S4.T1.3.3.3.m1.1.1.2.2.cmml" xref="S4.T1.3.3.3.m1.1.1.2.2">IS</ci><ci id="S4.T1.3.3.3.m1.1.1.2.3.cmml" xref="S4.T1.3.3.3.m1.1.1.2.3">𝑟</ci></apply><csymbol cd="latexml" id="S4.T1.3.3.3.m1.1.1.3.cmml" xref="S4.T1.3.3.3.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.m1.1c">\mathrm{IS}_{r}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.m1.1d">roman_IS start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.4.4.4"><math alttext="\mathrm{FID}_{c}\downarrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.m1.1a"><mrow id="S4.T1.4.4.4.m1.1.1" xref="S4.T1.4.4.4.m1.1.1.cmml"><msub id="S4.T1.4.4.4.m1.1.1.2" xref="S4.T1.4.4.4.m1.1.1.2.cmml"><mi id="S4.T1.4.4.4.m1.1.1.2.2" xref="S4.T1.4.4.4.m1.1.1.2.2.cmml">FID</mi><mi id="S4.T1.4.4.4.m1.1.1.2.3" xref="S4.T1.4.4.4.m1.1.1.2.3.cmml">c</mi></msub><mo id="S4.T1.4.4.4.m1.1.1.1" stretchy="false" xref="S4.T1.4.4.4.m1.1.1.1.cmml">↓</mo><mi id="S4.T1.4.4.4.m1.1.1.3" xref="S4.T1.4.4.4.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.m1.1b"><apply id="S4.T1.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.m1.1.1"><ci id="S4.T1.4.4.4.m1.1.1.1.cmml" xref="S4.T1.4.4.4.m1.1.1.1">↓</ci><apply id="S4.T1.4.4.4.m1.1.1.2.cmml" xref="S4.T1.4.4.4.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T1.4.4.4.m1.1.1.2.1.cmml" xref="S4.T1.4.4.4.m1.1.1.2">subscript</csymbol><ci id="S4.T1.4.4.4.m1.1.1.2.2.cmml" xref="S4.T1.4.4.4.m1.1.1.2.2">FID</ci><ci id="S4.T1.4.4.4.m1.1.1.2.3.cmml" xref="S4.T1.4.4.4.m1.1.1.2.3">𝑐</ci></apply><csymbol cd="latexml" id="S4.T1.4.4.4.m1.1.1.3.cmml" xref="S4.T1.4.4.4.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.m1.1c">\mathrm{FID}_{c}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.m1.1d">roman_FID start_POSTSUBSCRIPT italic_c end_POSTSUBSCRIPT ↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.5.5.5"><math alttext="\mathrm{KID}_{c}\downarrow" class="ltx_Math" display="inline" id="S4.T1.5.5.5.m1.1"><semantics id="S4.T1.5.5.5.m1.1a"><mrow id="S4.T1.5.5.5.m1.1.1" xref="S4.T1.5.5.5.m1.1.1.cmml"><msub id="S4.T1.5.5.5.m1.1.1.2" xref="S4.T1.5.5.5.m1.1.1.2.cmml"><mi id="S4.T1.5.5.5.m1.1.1.2.2" xref="S4.T1.5.5.5.m1.1.1.2.2.cmml">KID</mi><mi id="S4.T1.5.5.5.m1.1.1.2.3" xref="S4.T1.5.5.5.m1.1.1.2.3.cmml">c</mi></msub><mo id="S4.T1.5.5.5.m1.1.1.1" stretchy="false" xref="S4.T1.5.5.5.m1.1.1.1.cmml">↓</mo><mi id="S4.T1.5.5.5.m1.1.1.3" xref="S4.T1.5.5.5.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.m1.1b"><apply id="S4.T1.5.5.5.m1.1.1.cmml" xref="S4.T1.5.5.5.m1.1.1"><ci id="S4.T1.5.5.5.m1.1.1.1.cmml" xref="S4.T1.5.5.5.m1.1.1.1">↓</ci><apply id="S4.T1.5.5.5.m1.1.1.2.cmml" xref="S4.T1.5.5.5.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T1.5.5.5.m1.1.1.2.1.cmml" xref="S4.T1.5.5.5.m1.1.1.2">subscript</csymbol><ci id="S4.T1.5.5.5.m1.1.1.2.2.cmml" xref="S4.T1.5.5.5.m1.1.1.2.2">KID</ci><ci id="S4.T1.5.5.5.m1.1.1.2.3.cmml" xref="S4.T1.5.5.5.m1.1.1.2.3">𝑐</ci></apply><csymbol cd="latexml" id="S4.T1.5.5.5.m1.1.1.3.cmml" xref="S4.T1.5.5.5.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.m1.1c">\mathrm{KID}_{c}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.m1.1d">roman_KID start_POSTSUBSCRIPT italic_c end_POSTSUBSCRIPT ↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.6.6"><math alttext="\mathrm{IS}_{c}\uparrow" class="ltx_Math" display="inline" id="S4.T1.6.6.6.m1.1"><semantics id="S4.T1.6.6.6.m1.1a"><mrow id="S4.T1.6.6.6.m1.1.1" xref="S4.T1.6.6.6.m1.1.1.cmml"><msub id="S4.T1.6.6.6.m1.1.1.2" xref="S4.T1.6.6.6.m1.1.1.2.cmml"><mi id="S4.T1.6.6.6.m1.1.1.2.2" xref="S4.T1.6.6.6.m1.1.1.2.2.cmml">IS</mi><mi id="S4.T1.6.6.6.m1.1.1.2.3" xref="S4.T1.6.6.6.m1.1.1.2.3.cmml">c</mi></msub><mo id="S4.T1.6.6.6.m1.1.1.1" stretchy="false" xref="S4.T1.6.6.6.m1.1.1.1.cmml">↑</mo><mi id="S4.T1.6.6.6.m1.1.1.3" xref="S4.T1.6.6.6.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.m1.1b"><apply id="S4.T1.6.6.6.m1.1.1.cmml" xref="S4.T1.6.6.6.m1.1.1"><ci id="S4.T1.6.6.6.m1.1.1.1.cmml" xref="S4.T1.6.6.6.m1.1.1.1">↑</ci><apply id="S4.T1.6.6.6.m1.1.1.2.cmml" xref="S4.T1.6.6.6.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T1.6.6.6.m1.1.1.2.1.cmml" xref="S4.T1.6.6.6.m1.1.1.2">subscript</csymbol><ci id="S4.T1.6.6.6.m1.1.1.2.2.cmml" xref="S4.T1.6.6.6.m1.1.1.2.2">IS</ci><ci id="S4.T1.6.6.6.m1.1.1.2.3.cmml" xref="S4.T1.6.6.6.m1.1.1.2.3">𝑐</ci></apply><csymbol cd="latexml" id="S4.T1.6.6.6.m1.1.1.3.cmml" xref="S4.T1.6.6.6.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.m1.1c">\mathrm{IS}_{c}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.m1.1d">roman_IS start_POSTSUBSCRIPT italic_c end_POSTSUBSCRIPT ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.7.7.7">CLIP<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.7.7.7.m1.1"><semantics id="S4.T1.7.7.7.m1.1a"><mo id="S4.T1.7.7.7.m1.1.1" stretchy="false" xref="S4.T1.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.7.m1.1b"><ci id="S4.T1.7.7.7.m1.1.1.cmml" xref="S4.T1.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.7.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.8.8.8">Time<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.8.8.8.m1.1"><semantics id="S4.T1.8.8.8.m1.1a"><mo id="S4.T1.8.8.8.m1.1.1" stretchy="false" xref="S4.T1.8.8.8.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.8.8.8.m1.1b"><ci id="S4.T1.8.8.8.m1.1.1.cmml" xref="S4.T1.8.8.8.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.8.8.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.8.8.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.9.1">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S4.T1.8.9.1.1" rowspan="12"><span class="ltx_text" id="S4.T1.8.9.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T1.8.9.1.1.1.1" style="width:6.4pt;height:45.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:45.3pt;transform:translate(-19.42pt,-19.42pt) rotate(-90deg) ;">
<span class="ltx_p" id="S4.T1.8.9.1.1.1.1.1">2048x2048</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.8.9.1.2">FouriScale</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.8.9.1.3">71.344</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.8.9.1.4">0.010</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.8.9.1.5">15.957</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.8.9.1.6">53.990</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.8.9.1.7">0.014</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.8.9.1.8">20.625</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.8.9.1.9">31.157</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.8.9.1.10">59s</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.10.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.10.2.1">ScaleCrafter</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.10.2.2">64.236</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.10.2.3">0.007</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.10.2.4">15.952</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.10.2.5">45.861</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.10.2.6">0.010</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.10.2.7">22.252</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.10.2.8">31.803</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.10.2.9">35s</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.11.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.11.3.1">HiDiffusion</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.11.3.2">63.674</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.11.3.3">0.007</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.11.3.4">16.876</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.11.3.5">41.930</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.11.3.6">0.008</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.11.3.7">23.165</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.11.3.8">31.711</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.11.3.9">18s</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.12.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.12.4.1">CutDiffusion</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.12.4.2">59.152</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.12.4.3">0.007</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.12.4.4">17.109</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.12.4.5">38.004</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.12.4.6">0.008</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.12.4.7">23.444</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.12.4.8">32.573</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.12.4.9">53s</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.13.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.13.5.1">ElasticDiffusion</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.13.5.2">56.639</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.13.5.3">0.010</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.13.5.4">15.326</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.13.5.5">37.649</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.13.5.6">0.014</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.13.5.7">19.867</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.13.5.8">32.301</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.13.5.9">150s</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.14.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.14.6.1">AP-LDM</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.14.6.2">51.083</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.14.6.3">0.004</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.14.6.4">18.867</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.14.6.5">29.193</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.14.6.6">0.006</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.14.6.7">25.331</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.14.6.8">33.601</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.14.6.9">25s</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.15.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.15.7.1">AccDiffusion</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.15.7.2">48.143</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.15.7.3"><span class="ltx_text ltx_font_bold" id="S4.T1.8.15.7.3.1">0.002</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.15.7.4">18.466</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.15.7.5">32.747</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.15.7.6">0.008</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.15.7.7">24.778</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.15.7.8">33.153</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.15.7.9">111s</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.16.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.16.8.1">DiffuseHigh</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.16.8.2">49.748</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.16.8.3">
<span class="ltx_ERROR undefined" id="S4.T1.8.16.8.3.1">\ul</span>0.003</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.16.8.4">19.537</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.16.8.5">27.667</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.16.8.6">
<span class="ltx_ERROR undefined" id="S4.T1.8.16.8.6.1">\ul</span>0.004</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.16.8.7">27.876</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.16.8.8">33.436</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.16.8.9">37s</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.17.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.17.9.1">FreCas</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.17.9.2">49.129</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.17.9.3">
<span class="ltx_ERROR undefined" id="S4.T1.8.17.9.3.1">\ul</span>0.003</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.17.9.4">20.274</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.17.9.5">27.002</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.17.9.6">
<span class="ltx_ERROR undefined" id="S4.T1.8.17.9.6.1">\ul</span>0.004</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.17.9.7"><span class="ltx_text ltx_font_bold" id="S4.T1.8.17.9.7.1">29.843</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.17.9.8">33.700</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.17.9.9">14s</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.18.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.18.10.1">DemoFusion</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.18.10.2"><span class="ltx_text ltx_font_bold" id="S4.T1.8.18.10.2.1">47.079</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.18.10.3"><span class="ltx_text ltx_font_bold" id="S4.T1.8.18.10.3.1">0.002</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.18.10.4">19.533</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.18.10.5">26.441</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.18.10.6">
<span class="ltx_ERROR undefined" id="S4.T1.8.18.10.6.1">\ul</span>0.004</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.18.10.7">27.843</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.18.10.8">33.748</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.18.10.9">79s</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.19.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.19.11.1">SDXL+BSRGAN</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.19.11.2">
<span class="ltx_ERROR undefined" id="S4.T1.8.19.11.2.1">\ul</span>47.452</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.19.11.3"><span class="ltx_text ltx_font_bold" id="S4.T1.8.19.11.3.1">0.002</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.19.11.4">
<span class="ltx_ERROR undefined" id="S4.T1.8.19.11.4.1">\ul</span>20.260</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.19.11.5">
<span class="ltx_ERROR undefined" id="S4.T1.8.19.11.5.1">\ul</span>25.827</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.19.11.6">
<span class="ltx_ERROR undefined" id="S4.T1.8.19.11.6.1">\ul</span>0.004</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.19.11.7">27.155</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.19.11.8"><span class="ltx_text ltx_font_bold" id="S4.T1.8.19.11.8.1">33.867</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.19.11.9"><span class="ltx_text ltx_font_bold" id="S4.T1.8.19.11.9.1">6s</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.20.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.20.12.1">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.20.12.2">48.361</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.20.12.3"><span class="ltx_text ltx_font_bold" id="S4.T1.8.20.12.3.1">0.002</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.20.12.4"><span class="ltx_text ltx_font_bold" id="S4.T1.8.20.12.4.1">20.616</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.20.12.5"><span class="ltx_text ltx_font_bold" id="S4.T1.8.20.12.5.1">25.347</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.20.12.6"><span class="ltx_text ltx_font_bold" id="S4.T1.8.20.12.6.1">0.003</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.20.12.7">
<span class="ltx_ERROR undefined" id="S4.T1.8.20.12.7.1">\ul</span>28.126</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.20.12.8">
<span class="ltx_ERROR undefined" id="S4.T1.8.20.12.8.1">\ul</span>33.756</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.20.12.9">
<span class="ltx_ERROR undefined" id="S4.T1.8.20.12.9.1">\ul</span>13s</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.21.13">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="S4.T1.8.21.13.1" rowspan="12"><span class="ltx_text" id="S4.T1.8.21.13.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T1.8.21.13.1.1.1" style="width:6.4pt;height:45.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:45.3pt;transform:translate(-19.42pt,-19.42pt) rotate(-90deg) ;">
<span class="ltx_p" id="S4.T1.8.21.13.1.1.1.1">4096x4096</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.8.21.13.2">FouriScale</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.8.21.13.3">135.111</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.8.21.13.4">0.046</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.8.21.13.5">9.481</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.8.21.13.6">129.895</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.8.21.13.7">0.057</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.8.21.13.8">9.792</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.8.21.13.9">26.891</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.8.21.13.10">489s</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.22.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.22.14.1">ScaleCrafter</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.22.14.2">110.094</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.22.14.3">0.028</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.22.14.4">10.098</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.22.14.5">112.105</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.22.14.6">0.043</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.22.14.7">11.421</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.22.14.8">27.809</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.22.14.9">528s</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.23.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.23.15.1">HiDiffusion</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.23.15.2">93.515</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.23.15.3">0.024</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.23.15.4">11.878</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.23.15.5">120.170</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.23.15.6">0.058</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.23.15.7">11.272</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.23.15.8">27.853</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.23.15.9">71s</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.24.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.24.16.1">CutDiffusion</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.24.16.2">130.207</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.24.16.3">0.055</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.24.16.4">9.334</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.24.16.5">113.033</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.24.16.6">0.055</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.24.16.7">10.961</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.24.16.8">26.734</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.24.16.9">193s</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.25.17">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.25.17.1">ElasticDiffusion</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.25.17.2">101.313</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.25.17.3">0.056</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.25.17.4">9.406</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.25.17.5">111.102</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.25.17.6">0.089</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.25.17.7">7.627</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.25.17.8">27.725</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.25.17.9">400s</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.26.18">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.26.18.1">AP-LDM</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.26.18.2">51.274</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.26.18.3">0.005</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.26.18.4">18.676</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.26.18.5">41.615</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.26.18.6">0.012</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.26.18.7">20.126</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.26.18.8">
<span class="ltx_ERROR undefined" id="S4.T1.8.26.18.8.1">\ul</span>33.632</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.26.18.9">153s</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.27.19">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.27.19.1">AccDiffusion</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.27.19.2">54.918</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.27.19.3">0.005</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.27.19.4">17.444</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.27.19.5">60.362</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.27.19.6">0.023</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.27.19.7">16.370</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.27.19.8">32.438</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.27.19.9">826s</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.28.20">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.28.20.1">DiffuseHigh</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.28.20.2">48.861</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.28.20.3">
<span class="ltx_ERROR undefined" id="S4.T1.8.28.20.3.1">\ul</span>0.003</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.28.20.4">19.716</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.28.20.5">40.267</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.28.20.6">
<span class="ltx_ERROR undefined" id="S4.T1.8.28.20.6.1">\ul</span>0.010</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.28.20.7">
<span class="ltx_ERROR undefined" id="S4.T1.8.28.20.7.1">\ul</span>21.550</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.28.20.8">33.390</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.28.20.9">190s</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.29.21">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.29.21.1">FreCas</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.29.21.2">49.764</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.29.21.3">
<span class="ltx_ERROR undefined" id="S4.T1.8.29.21.3.1">\ul</span>0.003</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.29.21.4">18.656</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.29.21.5">39.047</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.29.21.6">
<span class="ltx_ERROR undefined" id="S4.T1.8.29.21.6.1">\ul</span>0.010</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.29.21.7"><span class="ltx_text ltx_font_bold" id="S4.T1.8.29.21.7.1">21.700</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.29.21.8">33.237</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.29.21.9">74s</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.30.22">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.30.22.1">DemoFusion</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.30.22.2">48.983</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.30.22.3">
<span class="ltx_ERROR undefined" id="S4.T1.8.30.22.3.1">\ul</span>0.003</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.30.22.4">18.225</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.30.22.5">
<span class="ltx_ERROR undefined" id="S4.T1.8.30.22.5.1">\ul</span>38.136</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.30.22.6">
<span class="ltx_ERROR undefined" id="S4.T1.8.30.22.6.1">\ul</span>0.010</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.30.22.7">20.786</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.30.22.8">33.311</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.30.22.9">605s</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.31.23">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.31.23.1">SDXL+BSRGAN</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.31.23.2"><span class="ltx_text ltx_font_bold" id="S4.T1.8.31.23.2.1">47.923</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.31.23.3"><span class="ltx_text ltx_font_bold" id="S4.T1.8.31.23.3.1">0.002</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.31.23.4">
<span class="ltx_ERROR undefined" id="S4.T1.8.31.23.4.1">\ul</span>19.815</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.31.23.5">41.126</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.31.23.6">0.014</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.31.23.7">19.231</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.31.23.8"><span class="ltx_text ltx_font_bold" id="S4.T1.8.31.23.8.1">33.874</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.31.23.9"><span class="ltx_text ltx_font_bold" id="S4.T1.8.31.23.9.1">6s</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.32.24">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.8.32.24.1">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.8.32.24.2">
<span class="ltx_ERROR undefined" id="S4.T1.8.32.24.2.1">\ul</span>48.684</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.8.32.24.3">
<span class="ltx_ERROR undefined" id="S4.T1.8.32.24.3.1">\ul</span>0.003</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.8.32.24.4"><span class="ltx_text ltx_font_bold" id="S4.T1.8.32.24.4.1">20.352</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.8.32.24.5"><span class="ltx_text ltx_font_bold" id="S4.T1.8.32.24.5.1">35.718</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.8.32.24.6"><span class="ltx_text ltx_font_bold" id="S4.T1.8.32.24.6.1">0.009</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.8.32.24.7">20.819</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.8.32.24.8">33.415</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.8.32.24.9">
<span class="ltx_ERROR undefined" id="S4.T1.8.32.24.9.1">\ul</span>37s</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of the proposed RectifiedHR method against several state-of-the-art (SOTA) training-free high-resolution image generation methods.  The comparison is performed at two resolutions: 2048x2048 and 4096x4096.  The metrics used for evaluation include FID (Frechet Inception Distance), KID (Kernel Inception Distance), IS (Inception Score), and CLIP score. Lower FID and KID scores, and higher IS and CLIP scores indicate better performance. Inference time, measured on a single NVIDIA A800 GPU, is also included. The best and second-best results for each metric are highlighted in bold and underlined, respectively.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison to SOTA methods in 2048 x 2048 and 4096 x 4096 resolution. The bold numbers denote the best performance and the underlined numbers denote the second best performance. ↑↑\uparrow↑ and ↓↓\downarrow↓ denote the higher the better and the lower the better respectively. We test the inference time on the same machine using a single NVIDIA A800 GPU.
> </details>





### In-depth insights


#### Energy Decay Info
The energy decay analysis is pivotal for understanding why naive implementations of high-resolution image generation, especially those involving techniques like noise refresh, can lead to blurring. The core idea is that as resolution increases, the latent space representation of the image loses energy, causing details to become indistinct. **This contrasts with original sampling**, where energy is maintained. Identifying this decay allows for targeted interventions, such as adjusting the classifier-free guidance (CFG) parameter. **Increasing CFG strengthens the energy**, thereby sharpening image details. This connection between energy levels, resolution, and CFG is crucial for developing effective high-resolution generation strategies.

#### Noise Refresh
The paper introduces a novel "Noise Refresh" technique, seemingly addressing limitations in high-resolution image generation using diffusion models. The approach likely involves re-introducing noise at specific points during the sampling process. **This noise injection could help to refine details or correct structural inconsistencies** that arise when extrapolating beyond the training resolution. The decision to apply noise refresh in the latter half of denoising suggests a focus on local detail enhancement, **acknowledging that the global structure is largely formed in earlier stages**. By converting the predicted 'xo' into RGB space for resizing, the method appears to be working directly with the image rather than in the latent space. The updated sampling formula indicates a way to inject noise that shares the same shape as the resized 'xo', **preventing SNR mismatch issues**. Overall, 'Noise Refresh' aims to enhance image clarity.

#### RectifiedHR
The name **RectifiedHR** suggests a method aimed at improving or 'rectifying' some aspect of High-Resolution image generation. The 'HR' clearly signals a focus on high-resolution imagery, implying the method addresses challenges specific to this domain. 'Rectified' hints at correcting distortions, artifacts, or inefficiencies. Perhaps the method aims to enhance image clarity, fidelity, or visual appeal. Alternatively, it might rectify issues related to computational cost, memory usage, or training instability. The choice of 'Rectified' also suggests a diagnostic approach; the method likely identifies and targets specific problems inherent in current HR image generation techniques, offering a solution to amend those limitations. It might deal with **energy decay phenomenon** and introduce **noise refresh strategies** to produce better high-resolution images. 

#### No Training HR
The paper explores the exciting domain of **training-free high-resolution image generation** with their method RectifiedHR. This area is crucial because training models on high-resolution data is expensive. The method introduces a novel approach to unlock existing diffusion model’s ability to create HR images. It addresses a performance drop observed at higher resolutions and proposes a more efficient and straightforward solution compared to complex methods. By circumventing the need for extensive retraining, the approach promises **reduced computational costs and broader accessibility**. This highlights the potential for wider applications of HR image generation without huge investment, democratizing access to advanced generative capabilities. 

#### Efficiency Boost
From the context of the paper focusing on high-resolution image generation using diffusion models, efficiency boosts likely refer to strategies that accelerate the image generation process without sacrificing quality. **A key aspect could be reducing the number of diffusion steps required**, possibly through techniques like noise refresh and energy rectification. Efficiency may also stem from a novel architecture or optimization that allows for **faster processing of diffusion iterations**, potentially by streamlining the computational demands of the U-Net. Furthermore, a key contribution of the work might be related to enhancing efficiency is the **ability to generate high-resolution images without extensive retraining**, leveraging knowledge learned from lower-resolution datasets. The integration of classifier-free guidance might also be optimized, allowing for high-quality generation without a significant increase in computational burden. This is supported by the novel training-free approach for efficient high-resolution image generation, which primarily includes noise refresh and energy rectification operations, requiring fewer lines of theoretical code to implement and is highly efficient.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.02537/x3.png)

> 🔼 Figure 2 visualizes the predicted x0 (denoted as p<sub>x0</sub><sup>t</sup>) throughout the denoising process of a diffusion model.  The x-axis represents the timestep, and the 11 displayed images are evenly sampled from the 50 timesteps.  The figure demonstrates a transition in the generation process: during the first half, p<sub>x0</sub><sup>t</sup> focuses on establishing the overall image structure; during the second half, it refines the details. This highlights the model's two-stage approach to image generation.
> <details>
> <summary>read the caption</summary>
> Figure 2: The visualization results of predicted x0subscript𝑥0x_{0}italic_x start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT at different time step t, abbreviated as px0tsuperscriptsubscript𝑝subscript𝑥0𝑡p_{x_{0}}^{t}italic_p start_POSTSUBSCRIPT italic_x start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT. The figure visualizes the process of how px0tsuperscriptsubscript𝑝subscript𝑥0𝑡p_{x_{0}}^{t}italic_p start_POSTSUBSCRIPT italic_x start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT changes with the sampling steps, where the x-axis represents the timestep in the sampling process. The 11 images are evenly extracted from 50 images. It can be observed that in the first half of the process, px0tsuperscriptsubscript𝑝subscript𝑥0𝑡p_{x_{0}}^{t}italic_p start_POSTSUBSCRIPT italic_x start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT is mainly responsible for global structure generation, while the second half is mainly responsible for local detail generation.
> </details>



![](https://arxiv.org/html/2503.02537/x4.png)

> 🔼 Figure 3 visualizes the change trends of predicted x0 (denoted as p<sub>x<sub>0</sub></sub><sup>t</sup>) across different sampling timesteps (t) based on 100 random prompts.  (a) shows the average CLIP score between p<sub>x<sub>0</sub></sub><sup>t</sup> and the corresponding prompts, indicating how well the generated image matches the prompt at each timestep. (b) illustrates the average mean squared error (MSE) between p<sub>x<sub>0</sub></sub><sup>t</sup> and p<sub>x<sub>0</sub></sub><sup>t-1</sup>, showing the change in the generated image between consecutive steps. Both plots show a clear slowdown in the changes after approximately 30 sampling steps.
> <details>
> <summary>read the caption</summary>
> Figure 3: The trend of predicted x0subscript𝑥0x_{0}italic_x start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT at different time step t, abbreviated as px0tsuperscriptsubscript𝑝subscript𝑥0𝑡p_{x_{0}}^{t}italic_p start_POSTSUBSCRIPT italic_x start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT, on 100 random prompts. (a) The trend of the average CLIP Score between px0tsuperscriptsubscript𝑝subscript𝑥0𝑡p_{x_{0}}^{t}italic_p start_POSTSUBSCRIPT italic_x start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT and the prompt over different timesteps. The x-axis represents the sampling timestep, and the y-axis represents the average CLIP Score. (b) Average MSE between px0tsuperscriptsubscript𝑝subscript𝑥0𝑡p_{x_{0}}^{t}italic_p start_POSTSUBSCRIPT italic_x start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT and px0t−1superscriptsubscript𝑝subscript𝑥0𝑡1p_{x_{0}}^{t-1}italic_p start_POSTSUBSCRIPT italic_x start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_t - 1 end_POSTSUPERSCRIPT. The x-axis represents the sampling timestep, and the y-axis represents the Average MSE. It can be observed that after approximately 30 steps, the trend of change in px0tsuperscriptsubscript𝑝subscript𝑥0𝑡p_{x_{0}}^{t}italic_p start_POSTSUBSCRIPT italic_x start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT slows down.
> </details>



![](https://arxiv.org/html/2503.02537/x5.png)

> 🔼 This figure compares the average latent energy over 50 sampling timesteps between the original sampling process and the proposed noise refresh sampling process. The original process shows a relatively stable energy level throughout sampling. In contrast, the noise refresh process shows a noticeable energy decay, especially after the 30th timestep, where noise refresh is applied.  This decay is linked to image blurriness observed during high-resolution image generation. The images shown alongside the energy curves visually illustrate this effect, with a clearer image resulting from the less decayed energy level.
> <details>
> <summary>read the caption</summary>
> (a) The energy decay phenomenon of our noise refresh sampling process compared to the original sampling process on 100 random prompts.
> </details>



![](https://arxiv.org/html/2503.02537/x6.png)

> 🔼 This figure shows how the average latent energy of an image changes over the sampling process of a diffusion model, specifically when generating 1024 x 1024 resolution images.  The x-axis represents the timestep during the sampling process, and the y-axis shows the average latent energy. Multiple lines are plotted, each representing the average energy when using a different value for the classifier-free guidance (CFG) hyperparameter (w).  The figure illustrates the impact of varying the CFG hyperparameter on the latent energy during the generation process.  It demonstrates the effect of energy rectification on the latent energy. The right side shows how the changes in latent energy correlate with changes in generated image quality.
> <details>
> <summary>read the caption</summary>
> (b) The process of how the average latent energy changes with the timestep when 1024 x 1024 resolution images are generated from 100 random prompts under different classifier-free guidance hyperparameters.
> </details>



![](https://arxiv.org/html/2503.02537/x7.png)

> 🔼 Figure 4 illustrates the impact of noise refresh and energy rectification on latent energy during the image generation process.  (a) compares the average latent energy over sampling timesteps between the original process (generating 1024x1024 images) and the proposed method (noise refresh at steps 30 and 40, increasing resolution to 2048x2048 then 3072x3072).  It highlights a significant energy decay caused by noise refresh, which is mitigated by energy rectification, leading to more detailed images, as shown in the accompanying image samples. (b) shows how average latent energy changes across sampling steps with varying classifier-free guidance (CFG) hyperparameters (ω). Higher CFG values correlate with increased energy and improved image quality, as demonstrated by the example images.
> <details>
> <summary>read the caption</summary>
> Figure 4: (a) The x-axis represents the timestep of the sampling process, and the y-axis represents the average latent energy. The blue line shows the average latent energy of the original sampling process generating 1024 x 1024-resolution images over the sampling process. The red line represents our noise refresh sampling process, where noise refresh is performed at the 30th and 40th sampling timesteps, and the resolution gradually increases from 1024 x 1024 to 2048 x 2048, and then to 3072 x 3072. It can be observed that noise refresh will cause the relative latent energy to show a significant decay. From the left images, it can be observed that after energy rectification, the image details have become more prominent. (b) The x-axis represents the timestep, the y-axis represents the average latent energy, and ω𝜔\omegaitalic_ω is the hyperparameter for classifier-free guidance. It can be observed that the relative latent energy increases with the increase of ω𝜔\omegaitalic_ω. From the right figures, it can be observed how the images change as ω𝜔\omegaitalic_ω increases.
> </details>



![](https://arxiv.org/html/2503.02537/x8.png)

> 🔼 Figure 5 illustrates the core concept of the RectifiedHR method by comparing it to the original sampling process in a diffusion model.  Panel (a) shows the original process, detailing how noise is gradually removed from a random noise sample to generate an image.  The corresponding pseudocode is shown to the right.  Panel (b) displays the RectifiedHR process which incorporates two key enhancements: Noise Refresh and Energy Rectification. The pseudocode in (b) highlights these additions in orange and purple, respectively. Noise Refresh improves resolution by resizing intermediate generated images (px0tresize). Energy Rectification adjusts the classifier-free guidance parameter (w) to correct energy decay observed during the high-resolution generation process, improving image clarity and reducing blurriness.  The figure uses color-coding and pseudocode to make the improvements of the RectifiedHR approach easier to understand.
> <details>
> <summary>read the caption</summary>
> Figure 5: Overview of our method. (a) the original sampling process and its pseudocode. (b) The sampling process and pseudocode of our method. The orange parts of the pseudocode and modules correspond to Noise Refresh, while the purple parts represent Energy Rectification. ϵitalic-ϵ{\color[rgb]{1,.5,0}\epsilon}italic_ϵ is a Gaussian random noise and its shape changes according to the shape of px⁢0tr⁢e⁢s⁢i⁢z⁢esubscriptsuperscriptsubscript𝑝𝑥0𝑡𝑟𝑒𝑠𝑖𝑧𝑒{\color[rgb]{1,.5,0}{p_{x0}^{t}}_{resize}}italic_p start_POSTSUBSCRIPT italic_x 0 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_r italic_e italic_s italic_i italic_z italic_e end_POSTSUBSCRIPT. Other symbols in the pseudocode can be found in Sec.3.1.
> </details>



![](https://arxiv.org/html/2503.02537/x9.png)

> 🔼 This figure presents a qualitative comparison of image generation results using different training-free high-resolution methods. Three distinct prompts from the LAION-5B dataset were used to generate images with each method:  Ours (the proposed RectifiedHR method), FouriScale, ScaleCrafter, and DemoFusion and HiDiffusion. This allows for a visual assessment of the quality and characteristics of the images produced by each method, highlighting their strengths and weaknesses in terms of detail, structure, and artifacts.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative comparison of our method with other training-free methods using three LAION-5B’s prompts.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.02537/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02537/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02537/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02537/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02537/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02537/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02537/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02537/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02537/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02537/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02537/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}