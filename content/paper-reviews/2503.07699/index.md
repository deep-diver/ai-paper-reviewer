---
title: "RayFlow: Instance-Aware Diffusion Acceleration via Adaptive Flow Trajectories"
summary: "RayFlow: Accelerating diffusion with instance-aware adaptive flow, boosting speed & quality!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 ByteDance Inc.",]
showSummary: true
date: 2025-03-10
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.07699 {{< /keyword >}}
{{< keyword icon="writer" >}} Huiyang Shao et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-12 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.07699" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.07699" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.07699/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Diffusion models excel, but slow speed is a problem. Existing methods often trade quality or add complexity. This paper proposes **RayFlow**, a new diffusion framework. Unlike others, **RayFlow** guides each sample along a unique path to an instance-specific target, minimizing steps while preserving diversity and stability. The **Time Sampler** enhances training by focusing on key timesteps. 



**RayFlow** generates high-quality images faster with better control and training efficiency than existing methods. It calculates a unified noise expectation, enabling compression without quality loss. By maximizing path probability, **RayFlow** minimizes instability. The results show that **RayFlow** consistently outperforms others, demonstrating its potential to be a leading solution in high-efficiency image generation.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} RayFlow framework guides each sample along a unique path towards an instance-specific target distribution. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Time Sampler enhances training efficiency by focusing on crucial timesteps. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} RayFlow demonstrates improvements in image quality, control, and training efficiency compared to existing techniques. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces RayFlow, a novel approach to diffusion modeling, offering improved image quality, speed, control, and training efficiency. It opens avenues for exploring and controlling diffusion processes, relevant to generative AI and beyond.

------
#### Visual Insights



![](https://arxiv.org/html/2503.07699/x1.png)

> 🔼 Figure 1(a) illustrates the conventional diffusion process.  The forward diffusion process begins with a data sample and gradually adds Gaussian noise until it converges to a standard Gaussian distribution. The backward process reverses this, starting from the Gaussian distribution and iteratively removing noise to reconstruct a data sample. The figure visually demonstrates that the expectations for the backward process (denoising) change over timesteps, and that the paths of different samples can overlap which can lead to quality degradation.
> <details>
> <summary>read the caption</summary>
> (a) The forward and backward process of traditional diffusion.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.F4.2.2">
<tr class="ltx_tr" id="S4.F4.2.2.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S4.F4.2.2.3.1" style="padding-left:1.5pt;padding-right:1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" colspan="3" id="S4.F4.2.2.3.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.F4.2.2.3.2.1" style="font-size:80%;">COCO-5k</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" colspan="3" id="S4.F4.2.2.3.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.F4.2.2.3.3.1" style="font-size:80%;">ImageNet</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" colspan="3" id="S4.F4.2.2.3.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.F4.2.2.3.4.1" style="font-size:80%;">Cifar-100</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="3" id="S4.F4.2.2.3.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.F4.2.2.3.5.1" style="font-size:80%;">Cifar-10</span></td>
</tr>
<tr class="ltx_tr" id="S4.F4.2.2.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.F4.2.2.4.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.F4.2.2.4.1.1" style="font-size:80%;">Module</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F4.2.2.4.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F4.2.2.4.2.1" style="font-size:80%;">Clip</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F4.2.2.4.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F4.2.2.4.3.1" style="font-size:80%;">Aes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.F4.2.2.4.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F4.2.2.4.4.1" style="font-size:80%;">FID</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F4.2.2.4.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F4.2.2.4.5.1" style="font-size:80%;">Clip</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F4.2.2.4.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F4.2.2.4.6.1" style="font-size:80%;">Aes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.F4.2.2.4.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F4.2.2.4.7.1" style="font-size:80%;">FID</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F4.2.2.4.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F4.2.2.4.8.1" style="font-size:80%;">Clip</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F4.2.2.4.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F4.2.2.4.9.1" style="font-size:80%;">Aes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.F4.2.2.4.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F4.2.2.4.10.1" style="font-size:80%;">FID</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F4.2.2.4.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F4.2.2.4.11.1" style="font-size:80%;">Clip</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F4.2.2.4.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F4.2.2.4.12.1" style="font-size:80%;">Aes</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F4.2.2.4.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F4.2.2.4.13.1" style="font-size:80%;">FID</span></td>
</tr>
<tr class="ltx_tr" id="S4.F4.1.1.1" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S4.F4.1.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F4.1.1.1.1.1" style="font-size:80%;background-color:#F2F2F2;">w/ <math alttext="\bm{T}_{\bm{\vartheta}}" class="ltx_Math" display="inline" id="S4.F4.1.1.1.1.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S4.F4.1.1.1.1.1.m1.1a"><msub id="S4.F4.1.1.1.1.1.m1.1.1" xref="S4.F4.1.1.1.1.1.m1.1.1.cmml"><mi id="S4.F4.1.1.1.1.1.m1.1.1.2" mathbackground="#F2F2F2" xref="S4.F4.1.1.1.1.1.m1.1.1.2.cmml">𝑻</mi><mi class="ltx_mathvariant_bold-italic" id="S4.F4.1.1.1.1.1.m1.1.1.3" mathbackground="#F2F2F2" mathvariant="bold-italic" xref="S4.F4.1.1.1.1.1.m1.1.1.3.cmml">ϑ</mi></msub><annotation-xml encoding="MathML-Content" id="S4.F4.1.1.1.1.1.m1.1b"><apply id="S4.F4.1.1.1.1.1.m1.1.1.cmml" xref="S4.F4.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.F4.1.1.1.1.1.m1.1.1.1.cmml" xref="S4.F4.1.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S4.F4.1.1.1.1.1.m1.1.1.2.cmml" xref="S4.F4.1.1.1.1.1.m1.1.1.2">𝑻</ci><ci id="S4.F4.1.1.1.1.1.m1.1.1.3.cmml" xref="S4.F4.1.1.1.1.1.m1.1.1.3">bold-italic-ϑ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.F4.1.1.1.1.1.m1.1c">\bm{T}_{\bm{\vartheta}}</annotation><annotation encoding="application/x-llamapun" id="S4.F4.1.1.1.1.1.m1.1d">bold_italic_T start_POSTSUBSCRIPT bold_italic_ϑ end_POSTSUBSCRIPT</annotation></semantics></math></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.F4.1.1.1.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.F4.1.1.1.2.1" style="font-size:80%;background-color:#F2F2F2;">34.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.F4.1.1.1.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.F4.1.1.1.3.1" style="font-size:80%;background-color:#F2F2F2;">5.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.F4.1.1.1.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.F4.1.1.1.4.1" style="font-size:80%;background-color:#F2F2F2;">4.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.F4.1.1.1.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.F4.1.1.1.5.1" style="font-size:80%;background-color:#F2F2F2;">36.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.F4.1.1.1.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.F4.1.1.1.6.1" style="font-size:80%;background-color:#F2F2F2;">5.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.F4.1.1.1.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.F4.1.1.1.7.1" style="font-size:80%;background-color:#F2F2F2;">1.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.F4.1.1.1.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.F4.1.1.1.8.1" style="font-size:80%;background-color:#F2F2F2;">28.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.F4.1.1.1.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.F4.1.1.1.9.1" style="font-size:80%;background-color:#F2F2F2;">4.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.F4.1.1.1.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.F4.1.1.1.10.1" style="font-size:80%;background-color:#F2F2F2;">1.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.F4.1.1.1.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.F4.1.1.1.11.1" style="font-size:80%;background-color:#F2F2F2;">29.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.F4.1.1.1.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.F4.1.1.1.12.1" style="font-size:80%;background-color:#F2F2F2;">4.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.F4.1.1.1.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.F4.1.1.1.13.1" style="font-size:80%;background-color:#F2F2F2;">1.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.F4.2.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.F4.2.2.2.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.F4.2.2.2.1.1" style="font-size:80%;">w/o </span><math alttext="\bm{T}_{\bm{\vartheta}}" class="ltx_Math" display="inline" id="S4.F4.2.2.2.1.m1.1"><semantics id="S4.F4.2.2.2.1.m1.1a"><msub id="S4.F4.2.2.2.1.m1.1.1" xref="S4.F4.2.2.2.1.m1.1.1.cmml"><mi id="S4.F4.2.2.2.1.m1.1.1.2" mathsize="80%" xref="S4.F4.2.2.2.1.m1.1.1.2.cmml">𝑻</mi><mi class="ltx_mathvariant_bold-italic" id="S4.F4.2.2.2.1.m1.1.1.3" mathsize="80%" mathvariant="bold-italic" xref="S4.F4.2.2.2.1.m1.1.1.3.cmml">ϑ</mi></msub><annotation-xml encoding="MathML-Content" id="S4.F4.2.2.2.1.m1.1b"><apply id="S4.F4.2.2.2.1.m1.1.1.cmml" xref="S4.F4.2.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="S4.F4.2.2.2.1.m1.1.1.1.cmml" xref="S4.F4.2.2.2.1.m1.1.1">subscript</csymbol><ci id="S4.F4.2.2.2.1.m1.1.1.2.cmml" xref="S4.F4.2.2.2.1.m1.1.1.2">𝑻</ci><ci id="S4.F4.2.2.2.1.m1.1.1.3.cmml" xref="S4.F4.2.2.2.1.m1.1.1.3">bold-italic-ϑ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.F4.2.2.2.1.m1.1c">\bm{T}_{\bm{\vartheta}}</annotation><annotation encoding="application/x-llamapun" id="S4.F4.2.2.2.1.m1.1d">bold_italic_T start_POSTSUBSCRIPT bold_italic_ϑ end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F4.2.2.2.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F4.2.2.2.2.1" style="font-size:80%;">31.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F4.2.2.2.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F4.2.2.2.3.1" style="font-size:80%;">5.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.F4.2.2.2.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F4.2.2.2.4.1" style="font-size:80%;">4.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F4.2.2.2.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F4.2.2.2.5.1" style="font-size:80%;">33.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F4.2.2.2.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F4.2.2.2.6.1" style="font-size:80%;">5.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.F4.2.2.2.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F4.2.2.2.7.1" style="font-size:80%;">2.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F4.2.2.2.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F4.2.2.2.8.1" style="font-size:80%;">26.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F4.2.2.2.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F4.2.2.2.9.1" style="font-size:80%;">4.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.F4.2.2.2.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F4.2.2.2.10.1" style="font-size:80%;">3.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F4.2.2.2.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F4.2.2.2.11.1" style="font-size:80%;">28.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F4.2.2.2.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F4.2.2.2.12.1" style="font-size:80%;">4.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F4.2.2.2.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F4.2.2.2.13.1" style="font-size:80%;">3.9</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of several state-of-the-art image generation models.  It shows how different models (including various versions of Stable Diffusion and PixArt) perform across different numbers of sampling steps (1-step to 8-step), using different architectures (UNet and DiT), and employing various diffusion acceleration methods (VP, RF, Ray).  The models are evaluated on the COCO-5k dataset using FID (Fréchet Inception Distance) and Aesthetics scores. The best-performing model for each metric and number of steps is highlighted in bold.  The 'Distill Cost' column indicates the approximate training time using 8 A100 GPUs. This table helps illustrate the performance trade-offs between speed, model complexity and image quality for various models and acceleration techniques.
> <details>
> <summary>read the caption</summary>
> Table 1:  Quantitative comparison of state-of-the-arts models across various architectures and steps for FID and Aesthetic scores on the COCO-5k datasets. The best result is highlighted in bold. Distill Cost means 8 A100 days.
> </details>





### In-depth insights


#### Adaptive RayFlow
While "Adaptive RayFlow" isn't explicitly mentioned, one can infer its essence from the paper's core contributions. The core is adapting the diffusion process to each instance, guiding each sample along a **unique path** towards its specific target. The paper minimizes sampling steps while preserving generation diversity and stability. The use of the Time Sampler, an importance sampling technique, further exemplifies the adaptive nature by focusing on crucial timesteps during training, thus improving training efficiency. By leveraging pre-trained models to calculate a unified noise expectation the proposed method **achieves efficient step compression without quality degradation**. Overall, this adaptive approach seems key to overcoming the limitations of traditional diffusion methods, offering a more efficient and controllable generative process.

#### Varying Expectation
**Varying Expectations** in generative models, especially diffusion models, refer to the challenge that the ideal or anticipated outcome of the reverse diffusion process differs significantly across timesteps. Early timesteps might require broad adjustments to the noise distribution, while later timesteps demand precise refinement to generate realistic details. This variance necessitates a large number of sampling steps to ensure high-quality output, as a single sampling strategy becomes insufficient. Acceleration methods often struggle to maintain quality because they reduce steps, inevitably overlooking subtle but crucial adjustments at certain timesteps. Addressing this requires adaptive sampling strategies or models capable of handling diverse refinement scales efficiently, balancing global structure and fine-grained detail.

#### Overlapping Paths
**Overlapping paths** in the context of diffusion models can significantly hinder the generation process. If the probability paths of different samples overlap considerably during the reverse diffusion, it leads to a loss of **diversity** and potential **quality degradation**. This is because the model struggles to distinguish between the unique characteristics of each sample, causing them to converge towards similar outputs. The **randomness** in the sampling process exacerbates this issue, as slight variations in the initial noise can result in drastically different final results due to the overlapping paths. Mitigating this requires strategies that ensure distinct trajectories for each sample, preventing them from getting 'lost' in the shared probability space and preserving individual sample identity.

#### Sampling Instable
**Sampling instability** in diffusion models arises from the sensitivity of the generative process to minor variations in sampling points, leading to substantial differences in the final output. This is caused by **overlapping diffusion paths**, where convergence to a common Gaussian distribution introduces randomness and quality loss. Even closely positioned sampling steps can yield significantly different results, posing challenges for consistent and reliable generation. Mitigating this instability is critical for improving the overall quality and stability of diffusion models, requiring methods that reduce sensitivity to sampling variations and promote more deterministic behavior.

#### Time Sampler
**Time Sampler** enhances training efficiency by focusing on crucial timesteps, moving beyond uniform sampling. It identifies the most informative points, thereby reducing redundancy and computational cost. Integrating Stochastic Stein Discrepancies (SSD) with neural networks, it approximates the optimal sampling distribution. This dynamic adjustment minimizes variance in the training loss estimator, which is critical for faster convergence and better model performance. By prioritizing key timesteps, Time Sampler facilitates more efficient learning, making the diffusion model more practical.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.07699/x2.png)

> 🔼 This figure illustrates RayFlow's forward and reverse processes. Unlike traditional diffusion models that converge to a single Gaussian distribution, RayFlow guides each sample along a unique trajectory towards an instance-specific target distribution. The forward process adds noise, while the reverse process denoises. The illustration depicts how each sample is guided along its own trajectory, enabling the generation of high-quality images with minimal sampling steps while preserving generation diversity and stability.
> <details>
> <summary>read the caption</summary>
> (b) The forward and backward process of our diffusion method.
> </details>



![](https://arxiv.org/html/2503.07699/x3.png)

> 🔼 Figure 1 compares the forward and backward diffusion processes in traditional diffusion models with those in RayFlow.  The traditional method shows limitations: varying expectations across timesteps (leading to quality loss in accelerated sampling), overlapping diffusion paths (reducing sampling diversity and causing instability), and overall sampling instability. RayFlow aims to address these through consistent expectations via pre-trained models, guiding each sample on an individual path to reduce overlaps and improve diversity, and achieving theoretical guarantees for improved sampling stability.
> <details>
> <summary>read the caption</summary>
> Figure 1: The comparision of different diffusion process.
> </details>



![](https://arxiv.org/html/2503.07699/x4.png)

> 🔼 This figure illustrates the core concepts of RayFlow and its Time Sampler component.  The left panel depicts the traditional diffusion process, showing how samples traverse a wide range of timesteps before reaching the target distribution. The paths are highly varied and may overlap substantially, leading to issues with stability and sampling quality.  In contrast, the right panel shows the RayFlow process.  Each sample follows a unique path directly toward its instance-specific target distribution.  Note that each trajectory smoothly converges towards its mean instead of transitioning through the typical Gaussian distribution.  This drastically reduces sampling steps. The Time Sampler component is highlighted showing how it identifies key timesteps for training, reducing computational overhead.  These key timesteps (five in this example) are visualized as the coordinates on the simplified diffusion path.
> <details>
> <summary>read the caption</summary>
> Figure 2: RayFlow and importance time sampling. Time Sampler can find the key timesteps (five coordinates) of flow matching.
> </details>



![](https://arxiv.org/html/2503.07699/x6.png)

> 🔼 This figure displays the results of a sensitivity analysis performed on the COCO-5K dataset to determine the impact of the variance coefficient (σ) on the model's performance.  The analysis assesses the relationship between different values of σ and the resulting aesthetic scores achieved by the model.  The box plot visualization effectively shows the distribution of aesthetic scores for various σ values, highlighting how changes in this parameter affect the model's output quality.
> <details>
> <summary>read the caption</summary>
> Figure 3: Sensitivity analysis on COCO-5K dataset where Aesthetis score for with respect to different values of σ𝜎\sigmaitalic_σ.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.155">
<tr class="ltx_tr" id="S4.T1.155.156">
<td class="ltx_td ltx_align_left" id="S4.T1.155.156.1" rowspan="2" style="padding-bottom:-1.5pt;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.155.156.1.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="4" id="S4.T1.155.156.2" style="padding-bottom:-1.5pt;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.155.156.2.1" style="font-size:80%;">Model Information</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="4" id="S4.T1.155.156.3" style="padding-bottom:-1.5pt;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.155.156.3.1" style="font-size:80%;">FID-Score</span></td>
<td class="ltx_td ltx_align_center" colspan="4" id="S4.T1.155.156.4" style="padding-bottom:-1.5pt;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.155.156.4.1" style="font-size:80%;">Aesthetics-Score</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.155.157">
<td class="ltx_td ltx_align_center" id="S4.T1.155.157.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.155.157.1.1" style="font-size:80%;">Type</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.155.157.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.155.157.2.1" style="font-size:80%;">Params</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.155.157.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.155.157.3.1" style="font-size:80%;">Flow</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.155.157.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.155.157.4.1" style="font-size:80%;">Distill Cost</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.155.157.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.155.157.5.1" style="font-size:80%;">1-Step</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.155.157.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.155.157.6.1" style="font-size:80%;">2-Step</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.155.157.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.155.157.7.1" style="font-size:80%;">4-Step</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.155.157.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.155.157.8.1" style="font-size:80%;">8-Step</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.155.157.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.155.157.9.1" style="font-size:80%;">1-Step</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.155.157.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.155.157.10.1" style="font-size:80%;">2-Step</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.155.157.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.155.157.11.1" style="font-size:80%;">4-Step</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.155.157.12" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.155.157.12.1" style="font-size:80%;">8-Step</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.155.158">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="13" id="S4.T1.155.158.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.155.158.1.1" style="font-size:80%;"></span><span class="ltx_text" id="S4.T1.155.158.1.2" style="font-size:80%;color:#5A5A5A;"> <span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T1.155.158.1.2.1">Stable Diffusion<span class="ltx_text ltx_font_medium" id="S4.T1.155.158.1.2.1.1"> V1.5 Comparision</span></span></span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.8.8.9" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.8.8.9.1" style="font-size:80%;">SD15-Base </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.8.8.9.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07699v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a><span class="ltx_text" id="S4.T1.8.8.9.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.8.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.8.8.10.1" style="font-size:80%;">UNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.8.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.8.8.11.1" style="font-size:80%;">0.98B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.8.12" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.8.8.12.1" style="font-size:80%;">VP</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.8.8.13" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.8.8.13.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.1.1.1.1" style="font-size:80%;">19.8</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.m1.1.1" mathsize="50%" xref="S4.T1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.m1.1b"><csymbol cd="latexml" id="S4.T1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.1.1.1.2" style="font-size:50%;">.03</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.2" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.2.2.2.1" style="font-size:80%;">12.1</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.m1.1.1" mathsize="50%" xref="S4.T1.2.2.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.m1.1b"><csymbol cd="latexml" id="S4.T1.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.2.2.2.2" style="font-size:50%;">.06</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.3" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.3.3.3.1" style="font-size:80%;">11.6</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.m1.1.1" mathsize="50%" xref="S4.T1.3.3.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.m1.1b"><csymbol cd="latexml" id="S4.T1.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.3.3.3.2" style="font-size:50%;">.04</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.4.4.4" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.4.4.4.1" style="font-size:80%;">9.02</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.m1.1a"><mo id="S4.T1.4.4.4.m1.1.1" mathsize="50%" xref="S4.T1.4.4.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.m1.1b"><csymbol cd="latexml" id="S4.T1.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.4.4.4.2" style="font-size:50%;">.02</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.5" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.5.5.5.1" style="font-size:80%;">3.66</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.5.5.5.m1.1"><semantics id="S4.T1.5.5.5.m1.1a"><mo id="S4.T1.5.5.5.m1.1.1" mathsize="50%" xref="S4.T1.5.5.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.m1.1b"><csymbol cd="latexml" id="S4.T1.5.5.5.m1.1.1.cmml" xref="S4.T1.5.5.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.5.5.5.2" style="font-size:50%;">.03</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.6" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.6.6.6.1" style="font-size:80%;">3.89</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.6.6.6.m1.1"><semantics id="S4.T1.6.6.6.m1.1a"><mo id="S4.T1.6.6.6.m1.1.1" mathsize="50%" xref="S4.T1.6.6.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.m1.1b"><csymbol cd="latexml" id="S4.T1.6.6.6.m1.1.1.cmml" xref="S4.T1.6.6.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.6.6.6.2" style="font-size:50%;">.05</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.7.7" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.7.7.7.1" style="font-size:80%;">4.11</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.7.7.7.m1.1"><semantics id="S4.T1.7.7.7.m1.1a"><mo id="S4.T1.7.7.7.m1.1.1" mathsize="50%" xref="S4.T1.7.7.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.7.m1.1b"><csymbol cd="latexml" id="S4.T1.7.7.7.m1.1.1.cmml" xref="S4.T1.7.7.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.7.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.7.7.7.2" style="font-size:50%;">.04</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.8.8.8" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.8.8.8.1" style="font-size:80%;">4.54</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.8.8.8.m1.1"><semantics id="S4.T1.8.8.8.m1.1a"><mo id="S4.T1.8.8.8.m1.1.1" mathsize="50%" xref="S4.T1.8.8.8.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.8.8.8.m1.1b"><csymbol cd="latexml" id="S4.T1.8.8.8.m1.1.1.cmml" xref="S4.T1.8.8.8.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.8.8.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.8.8.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.8.8.8.2" style="font-size:50%;">.01</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.16.16">
<td class="ltx_td ltx_align_left" id="S4.T1.16.16.9" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.16.16.9.1" style="font-size:80%;">SD15-PeRFlow </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.16.16.9.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07699v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a><span class="ltx_text" id="S4.T1.16.16.9.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.16.16.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.16.16.10.1" style="font-size:80%;">LoRA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.16.16.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.16.16.11.1" style="font-size:80%;">67.5M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.16.16.12" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.16.16.12.1" style="font-size:80%;">RF</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.16.16.13" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.16.16.13.1" style="font-size:80%;">6.4 Day</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.9.9.1.1" style="font-size:80%;">5.37</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.9.9.1.m1.1"><semantics id="S4.T1.9.9.1.m1.1a"><mo id="S4.T1.9.9.1.m1.1.1" mathsize="50%" xref="S4.T1.9.9.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.9.9.1.m1.1b"><csymbol cd="latexml" id="S4.T1.9.9.1.m1.1.1.cmml" xref="S4.T1.9.9.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.9.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.9.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.9.9.1.2" style="font-size:50%;">.06</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.2" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.10.10.2.1" style="font-size:80%;">5.33</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.10.10.2.m1.1"><semantics id="S4.T1.10.10.2.m1.1a"><mo id="S4.T1.10.10.2.m1.1.1" mathsize="50%" xref="S4.T1.10.10.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.10.10.2.m1.1b"><csymbol cd="latexml" id="S4.T1.10.10.2.m1.1.1.cmml" xref="S4.T1.10.10.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.10.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.10.2.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.10.10.2.2" style="font-size:50%;">.03</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.11.11.3" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.11.11.3.1" style="font-size:80%;">5.21</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.11.11.3.m1.1"><semantics id="S4.T1.11.11.3.m1.1a"><mo id="S4.T1.11.11.3.m1.1.1" mathsize="50%" xref="S4.T1.11.11.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.11.11.3.m1.1b"><csymbol cd="latexml" id="S4.T1.11.11.3.m1.1.1.cmml" xref="S4.T1.11.11.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.11.11.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.11.11.3.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.11.11.3.2" style="font-size:50%;">.08</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.4" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.12.12.4.1" style="font-size:80%;">5.15</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.12.12.4.m1.1"><semantics id="S4.T1.12.12.4.m1.1a"><mo id="S4.T1.12.12.4.m1.1.1" mathsize="50%" xref="S4.T1.12.12.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.12.12.4.m1.1b"><csymbol cd="latexml" id="S4.T1.12.12.4.m1.1.1.cmml" xref="S4.T1.12.12.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.12.12.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.12.12.4.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.12.12.4.2" style="font-size:50%;">.07</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.13.13.5" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.13.13.5.1" style="font-size:80%;">5.69</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.13.13.5.m1.1"><semantics id="S4.T1.13.13.5.m1.1a"><mo id="S4.T1.13.13.5.m1.1.1" mathsize="50%" xref="S4.T1.13.13.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.13.13.5.m1.1b"><csymbol cd="latexml" id="S4.T1.13.13.5.m1.1.1.cmml" xref="S4.T1.13.13.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.13.13.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.13.13.5.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.13.13.5.2" style="font-size:50%;">.04</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.6" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.14.14.6.1" style="font-size:80%;">5.78</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.14.14.6.m1.1"><semantics id="S4.T1.14.14.6.m1.1a"><mo id="S4.T1.14.14.6.m1.1.1" mathsize="50%" xref="S4.T1.14.14.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.14.14.6.m1.1b"><csymbol cd="latexml" id="S4.T1.14.14.6.m1.1.1.cmml" xref="S4.T1.14.14.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.14.14.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.14.14.6.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.14.14.6.2" style="font-size:50%;">.09</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.15.7" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.15.15.7.1" style="font-size:80%;">5.59</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.15.15.7.m1.1"><semantics id="S4.T1.15.15.7.m1.1a"><mo id="S4.T1.15.15.7.m1.1.1" mathsize="50%" xref="S4.T1.15.15.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.15.15.7.m1.1b"><csymbol cd="latexml" id="S4.T1.15.15.7.m1.1.1.cmml" xref="S4.T1.15.15.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.15.15.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.15.15.7.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.15.15.7.2" style="font-size:50%;">.07</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.16.16.8" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.16.16.8.1" style="font-size:80%;">5.96</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.16.16.8.m1.1"><semantics id="S4.T1.16.16.8.m1.1a"><mo id="S4.T1.16.16.8.m1.1.1" mathsize="50%" xref="S4.T1.16.16.8.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.16.16.8.m1.1b"><csymbol cd="latexml" id="S4.T1.16.16.8.m1.1.1.cmml" xref="S4.T1.16.16.8.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.16.16.8.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.16.16.8.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.16.16.8.2" style="font-size:50%;">.03</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.24.24">
<td class="ltx_td ltx_align_left" id="S4.T1.24.24.9" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.24.24.9.1" style="font-size:80%;">SD15-LCM </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.24.24.9.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07699v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a><span class="ltx_text" id="S4.T1.24.24.9.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.24.24.10.1" style="font-size:80%;">LoRA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.24.24.11.1" style="font-size:80%;">67.5M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.24.24.12" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.24.24.12.1" style="font-size:80%;">VP</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.24.24.13" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.24.24.13.1" style="font-size:80%;">4.5 Day</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.17.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.17.17.1.1" style="font-size:80%;">5.29</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.17.17.1.m1.1"><semantics id="S4.T1.17.17.1.m1.1a"><mo id="S4.T1.17.17.1.m1.1.1" mathsize="50%" xref="S4.T1.17.17.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.17.17.1.m1.1b"><csymbol cd="latexml" id="S4.T1.17.17.1.m1.1.1.cmml" xref="S4.T1.17.17.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.17.17.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.17.17.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.17.17.1.2" style="font-size:50%;">.05</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.18.18.2" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.18.18.2.1" style="font-size:80%;">5.05</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.18.18.2.m1.1"><semantics id="S4.T1.18.18.2.m1.1a"><mo id="S4.T1.18.18.2.m1.1.1" mathsize="50%" xref="S4.T1.18.18.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.18.18.2.m1.1b"><csymbol cd="latexml" id="S4.T1.18.18.2.m1.1.1.cmml" xref="S4.T1.18.18.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.18.18.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.18.18.2.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.18.18.2.2" style="font-size:50%;">.07</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.19.19.3" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.19.19.3.1" style="font-size:80%;">5.22</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.19.19.3.m1.1"><semantics id="S4.T1.19.19.3.m1.1a"><mo id="S4.T1.19.19.3.m1.1.1" mathsize="50%" xref="S4.T1.19.19.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.19.19.3.m1.1b"><csymbol cd="latexml" id="S4.T1.19.19.3.m1.1.1.cmml" xref="S4.T1.19.19.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.19.19.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.19.19.3.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.19.19.3.2" style="font-size:50%;">.04</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.20.20.4" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.20.20.4.1" style="font-size:80%;">5.03</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.20.20.4.m1.1"><semantics id="S4.T1.20.20.4.m1.1a"><mo id="S4.T1.20.20.4.m1.1.1" mathsize="50%" xref="S4.T1.20.20.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.20.20.4.m1.1b"><csymbol cd="latexml" id="S4.T1.20.20.4.m1.1.1.cmml" xref="S4.T1.20.20.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.20.20.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.20.20.4.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.20.20.4.2" style="font-size:50%;">.09</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.21.21.5" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.21.21.5.1" style="font-size:80%;">5.71</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.21.21.5.m1.1"><semantics id="S4.T1.21.21.5.m1.1a"><mo id="S4.T1.21.21.5.m1.1.1" mathsize="50%" xref="S4.T1.21.21.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.21.21.5.m1.1b"><csymbol cd="latexml" id="S4.T1.21.21.5.m1.1.1.cmml" xref="S4.T1.21.21.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.21.21.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.21.21.5.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.21.21.5.2" style="font-size:50%;">.06</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.22.22.6" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.22.22.6.1" style="font-size:80%;">5.83</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.22.22.6.m1.1"><semantics id="S4.T1.22.22.6.m1.1a"><mo id="S4.T1.22.22.6.m1.1.1" mathsize="50%" xref="S4.T1.22.22.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.22.22.6.m1.1b"><csymbol cd="latexml" id="S4.T1.22.22.6.m1.1.1.cmml" xref="S4.T1.22.22.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.22.22.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.22.22.6.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.22.22.6.2" style="font-size:50%;">.07</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.23.23.7" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.23.23.7.1" style="font-size:80%;">5.86</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.23.23.7.m1.1"><semantics id="S4.T1.23.23.7.m1.1a"><mo id="S4.T1.23.23.7.m1.1.1" mathsize="50%" xref="S4.T1.23.23.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.23.23.7.m1.1b"><csymbol cd="latexml" id="S4.T1.23.23.7.m1.1.1.cmml" xref="S4.T1.23.23.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.23.23.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.23.23.7.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.23.23.7.2" style="font-size:50%;">.05</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.24.24.8" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.24.24.8.1" style="font-size:80%;">5.96</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.24.24.8.m1.1"><semantics id="S4.T1.24.24.8.m1.1a"><mo id="S4.T1.24.24.8.m1.1.1" mathsize="50%" xref="S4.T1.24.24.8.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.24.24.8.m1.1b"><csymbol cd="latexml" id="S4.T1.24.24.8.m1.1.1.cmml" xref="S4.T1.24.24.8.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.24.24.8.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.24.24.8.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.24.24.8.2" style="font-size:50%;">.04</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.32.32">
<td class="ltx_td ltx_align_left" id="S4.T1.32.32.9" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.32.32.9.1" style="font-size:80%;">SD15-TCD </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.32.32.9.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07699v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a><span class="ltx_text" id="S4.T1.32.32.9.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.32.32.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.32.32.10.1" style="font-size:80%;">LoRA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.32.32.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.32.32.11.1" style="font-size:80%;">67.5M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.32.32.12" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.32.32.12.1" style="font-size:80%;">VP</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.32.32.13" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.32.32.13.1" style="font-size:80%;">5.5 Day</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.25.25.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.25.25.1.1" style="font-size:80%;">5.56</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.25.25.1.m1.1"><semantics id="S4.T1.25.25.1.m1.1a"><mo id="S4.T1.25.25.1.m1.1.1" mathsize="50%" xref="S4.T1.25.25.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.25.25.1.m1.1b"><csymbol cd="latexml" id="S4.T1.25.25.1.m1.1.1.cmml" xref="S4.T1.25.25.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.25.25.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.25.25.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.25.25.1.2" style="font-size:50%;">.07</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.26.26.2" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.26.26.2.1" style="font-size:80%;">5.10</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.26.26.2.m1.1"><semantics id="S4.T1.26.26.2.m1.1a"><mo id="S4.T1.26.26.2.m1.1.1" mathsize="50%" xref="S4.T1.26.26.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.26.26.2.m1.1b"><csymbol cd="latexml" id="S4.T1.26.26.2.m1.1.1.cmml" xref="S4.T1.26.26.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.26.26.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.26.26.2.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.26.26.2.2" style="font-size:50%;">.04</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.27.27.3" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.27.27.3.1" style="font-size:80%;">5.23</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.27.27.3.m1.1"><semantics id="S4.T1.27.27.3.m1.1a"><mo id="S4.T1.27.27.3.m1.1.1" mathsize="50%" xref="S4.T1.27.27.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.27.27.3.m1.1b"><csymbol cd="latexml" id="S4.T1.27.27.3.m1.1.1.cmml" xref="S4.T1.27.27.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.27.27.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.27.27.3.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.27.27.3.2" style="font-size:50%;">.09</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.28.28.4" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.28.28.4.1" style="font-size:80%;">5.19</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.28.28.4.m1.1"><semantics id="S4.T1.28.28.4.m1.1a"><mo id="S4.T1.28.28.4.m1.1.1" mathsize="50%" xref="S4.T1.28.28.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.28.28.4.m1.1b"><csymbol cd="latexml" id="S4.T1.28.28.4.m1.1.1.cmml" xref="S4.T1.28.28.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.28.28.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.28.28.4.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.28.28.4.2" style="font-size:50%;">.06</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.29.29.5" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.29.29.5.1" style="font-size:80%;">5.45</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.29.29.5.m1.1"><semantics id="S4.T1.29.29.5.m1.1a"><mo id="S4.T1.29.29.5.m1.1.1" mathsize="50%" xref="S4.T1.29.29.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.29.29.5.m1.1b"><csymbol cd="latexml" id="S4.T1.29.29.5.m1.1.1.cmml" xref="S4.T1.29.29.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.29.29.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.29.29.5.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.29.29.5.2" style="font-size:50%;">.05</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.30.30.6" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.30.30.6.1" style="font-size:80%;">5.81</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.30.30.6.m1.1"><semantics id="S4.T1.30.30.6.m1.1a"><mo id="S4.T1.30.30.6.m1.1.1" mathsize="50%" xref="S4.T1.30.30.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.30.30.6.m1.1b"><csymbol cd="latexml" id="S4.T1.30.30.6.m1.1.1.cmml" xref="S4.T1.30.30.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.30.30.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.30.30.6.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.30.30.6.2" style="font-size:50%;">.08</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.31.31.7" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.31.31.7.1" style="font-size:80%;">5.63</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.31.31.7.m1.1"><semantics id="S4.T1.31.31.7.m1.1a"><mo id="S4.T1.31.31.7.m1.1.1" mathsize="50%" xref="S4.T1.31.31.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.31.31.7.m1.1b"><csymbol cd="latexml" id="S4.T1.31.31.7.m1.1.1.cmml" xref="S4.T1.31.31.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.31.31.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.31.31.7.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.31.31.7.2" style="font-size:50%;">.03</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.32.32.8" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.32.32.8.1" style="font-size:80%;">5.98</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.32.32.8.m1.1"><semantics id="S4.T1.32.32.8.m1.1a"><mo id="S4.T1.32.32.8.m1.1.1" mathsize="50%" xref="S4.T1.32.32.8.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.32.32.8.m1.1b"><csymbol cd="latexml" id="S4.T1.32.32.8.m1.1.1.cmml" xref="S4.T1.32.32.8.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.32.32.8.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.32.32.8.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.32.32.8.2" style="font-size:50%;">.06</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.40.40">
<td class="ltx_td ltx_align_left" id="S4.T1.40.40.9" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.40.40.9.1" style="font-size:80%;">Hyper-SD15 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.40.40.9.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07699v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a><span class="ltx_text" id="S4.T1.40.40.9.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.40.40.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.40.40.10.1" style="font-size:80%;">LoRA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.40.40.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.40.40.11.1" style="font-size:80%;">67.5M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.40.40.12" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.40.40.12.1" style="font-size:80%;">VP</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.40.40.13" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.40.40.13.1" style="font-size:80%;">12 Day</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.33.33.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.33.33.1.1" style="font-size:80%;">5.41</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.33.33.1.m1.1"><semantics id="S4.T1.33.33.1.m1.1a"><mo id="S4.T1.33.33.1.m1.1.1" mathsize="50%" xref="S4.T1.33.33.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.33.33.1.m1.1b"><csymbol cd="latexml" id="S4.T1.33.33.1.m1.1.1.cmml" xref="S4.T1.33.33.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.33.33.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.33.33.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.33.33.1.2" style="font-size:50%;">.04</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.34.34.2" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.34.34.2.1" style="font-size:80%;">5.05</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.34.34.2.m1.1"><semantics id="S4.T1.34.34.2.m1.1a"><mo id="S4.T1.34.34.2.m1.1.1" mathsize="50%" xref="S4.T1.34.34.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.34.34.2.m1.1b"><csymbol cd="latexml" id="S4.T1.34.34.2.m1.1.1.cmml" xref="S4.T1.34.34.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.34.34.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.34.34.2.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.34.34.2.2" style="font-size:50%;">.06</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.35.35.3" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.35.35.3.1" style="font-size:80%;">5.21</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.35.35.3.m1.1"><semantics id="S4.T1.35.35.3.m1.1a"><mo id="S4.T1.35.35.3.m1.1.1" mathsize="50%" xref="S4.T1.35.35.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.35.35.3.m1.1b"><csymbol cd="latexml" id="S4.T1.35.35.3.m1.1.1.cmml" xref="S4.T1.35.35.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.35.35.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.35.35.3.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.35.35.3.2" style="font-size:50%;">.05</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.36.36.4" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.36.36.4.1" style="font-size:80%;">5.02</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.36.36.4.m1.1"><semantics id="S4.T1.36.36.4.m1.1a"><mo id="S4.T1.36.36.4.m1.1.1" mathsize="50%" xref="S4.T1.36.36.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.36.36.4.m1.1b"><csymbol cd="latexml" id="S4.T1.36.36.4.m1.1.1.cmml" xref="S4.T1.36.36.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.36.36.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.36.36.4.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.36.36.4.2" style="font-size:50%;">.04</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.37.37.5" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.37.37.5.1" style="font-size:80%;">5.62</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.37.37.5.m1.1"><semantics id="S4.T1.37.37.5.m1.1a"><mo id="S4.T1.37.37.5.m1.1.1" mathsize="50%" xref="S4.T1.37.37.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.37.37.5.m1.1b"><csymbol cd="latexml" id="S4.T1.37.37.5.m1.1.1.cmml" xref="S4.T1.37.37.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.37.37.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.37.37.5.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.37.37.5.2" style="font-size:50%;">.03</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.38.38.6" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.38.38.6.1" style="font-size:80%;">5.85</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.38.38.6.m1.1"><semantics id="S4.T1.38.38.6.m1.1a"><mo id="S4.T1.38.38.6.m1.1.1" mathsize="50%" xref="S4.T1.38.38.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.38.38.6.m1.1b"><csymbol cd="latexml" id="S4.T1.38.38.6.m1.1.1.cmml" xref="S4.T1.38.38.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.38.38.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.38.38.6.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.38.38.6.2" style="font-size:50%;">.04</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.39.39.7" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.39.39.7.1" style="font-size:80%;">5.64</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.39.39.7.m1.1"><semantics id="S4.T1.39.39.7.m1.1a"><mo id="S4.T1.39.39.7.m1.1.1" mathsize="50%" xref="S4.T1.39.39.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.39.39.7.m1.1b"><csymbol cd="latexml" id="S4.T1.39.39.7.m1.1.1.cmml" xref="S4.T1.39.39.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.39.39.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.39.39.7.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.39.39.7.2" style="font-size:50%;">.05</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.40.40.8" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.40.40.8.1" style="font-size:80%;">6.00</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.40.40.8.m1.1"><semantics id="S4.T1.40.40.8.m1.1a"><mo id="S4.T1.40.40.8.m1.1.1" mathsize="50%" xref="S4.T1.40.40.8.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.40.40.8.m1.1b"><csymbol cd="latexml" id="S4.T1.40.40.8.m1.1.1.cmml" xref="S4.T1.40.40.8.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.40.40.8.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.40.40.8.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.40.40.8.2" style="font-size:50%;">.05</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.48.48" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_left" id="S4.T1.48.48.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.48.48.9.1" style="font-size:80%;background-color:#F2F2F2;">SD15-Ray (ours)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.48.48.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.48.48.10.1" style="font-size:80%;background-color:#F2F2F2;">LoRA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.48.48.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.48.48.11.1" style="font-size:80%;background-color:#F2F2F2;">67.5M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.48.48.12" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.48.48.12.1" style="font-size:80%;background-color:#F2F2F2;">Ray</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.48.48.13" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.48.48.13.1" style="font-size:80%;background-color:#F2F2F2;">2.5 Day</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.41.41.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.41.41.1.1" style="font-size:80%;background-color:#F2F2F2;">5.10<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.41.41.1.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S4.T1.41.41.1.1.m1.1a"><mo id="S4.T1.41.41.1.1.m1.1.1" mathbackground="#F2F2F2" mathsize="63%" xref="S4.T1.41.41.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.41.41.1.1.m1.1b"><csymbol cd="latexml" id="S4.T1.41.41.1.1.m1.1.1.cmml" xref="S4.T1.41.41.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.41.41.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.41.41.1.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.41.41.1.1.1" style="font-size:63%;background-color:#F2F2F2;">.03</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.42.42.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.42.42.2.1" style="font-size:80%;background-color:#F2F2F2;">4.86<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.42.42.2.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S4.T1.42.42.2.1.m1.1a"><mo id="S4.T1.42.42.2.1.m1.1.1" mathbackground="#F2F2F2" mathsize="63%" xref="S4.T1.42.42.2.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.42.42.2.1.m1.1b"><csymbol cd="latexml" id="S4.T1.42.42.2.1.m1.1.1.cmml" xref="S4.T1.42.42.2.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.42.42.2.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.42.42.2.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.42.42.2.1.1" style="font-size:63%;background-color:#F2F2F2;">.05</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.43.43.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.43.43.3.1" style="font-size:80%;background-color:#F2F2F2;">4.78<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.43.43.3.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S4.T1.43.43.3.1.m1.1a"><mo id="S4.T1.43.43.3.1.m1.1.1" mathbackground="#F2F2F2" mathsize="63%" xref="S4.T1.43.43.3.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.43.43.3.1.m1.1b"><csymbol cd="latexml" id="S4.T1.43.43.3.1.m1.1.1.cmml" xref="S4.T1.43.43.3.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.43.43.3.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.43.43.3.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.43.43.3.1.1" style="font-size:63%;background-color:#F2F2F2;">.04</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.44.44.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.44.44.4.1" style="font-size:80%;background-color:#F2F2F2;">4.69<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.44.44.4.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S4.T1.44.44.4.1.m1.1a"><mo id="S4.T1.44.44.4.1.m1.1.1" mathbackground="#F2F2F2" mathsize="63%" xref="S4.T1.44.44.4.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.44.44.4.1.m1.1b"><csymbol cd="latexml" id="S4.T1.44.44.4.1.m1.1.1.cmml" xref="S4.T1.44.44.4.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.44.44.4.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.44.44.4.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.44.44.4.1.1" style="font-size:63%;background-color:#F2F2F2;">.04</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.45.45.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.45.45.5.1" style="font-size:80%;background-color:#F2F2F2;">5.92<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.45.45.5.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S4.T1.45.45.5.1.m1.1a"><mo id="S4.T1.45.45.5.1.m1.1.1" mathbackground="#F2F2F2" mathsize="63%" xref="S4.T1.45.45.5.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.45.45.5.1.m1.1b"><csymbol cd="latexml" id="S4.T1.45.45.5.1.m1.1.1.cmml" xref="S4.T1.45.45.5.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.45.45.5.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.45.45.5.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.45.45.5.1.1" style="font-size:63%;background-color:#F2F2F2;">.02</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.46.46.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.46.46.6.1" style="font-size:80%;background-color:#F2F2F2;">6.03<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.46.46.6.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S4.T1.46.46.6.1.m1.1a"><mo id="S4.T1.46.46.6.1.m1.1.1" mathbackground="#F2F2F2" mathsize="63%" xref="S4.T1.46.46.6.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.46.46.6.1.m1.1b"><csymbol cd="latexml" id="S4.T1.46.46.6.1.m1.1.1.cmml" xref="S4.T1.46.46.6.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.46.46.6.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.46.46.6.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.46.46.6.1.1" style="font-size:63%;background-color:#F2F2F2;">.03</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.47.47.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.47.47.7.1" style="font-size:80%;background-color:#F2F2F2;">6.13<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.47.47.7.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S4.T1.47.47.7.1.m1.1a"><mo id="S4.T1.47.47.7.1.m1.1.1" mathbackground="#F2F2F2" mathsize="63%" xref="S4.T1.47.47.7.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.47.47.7.1.m1.1b"><csymbol cd="latexml" id="S4.T1.47.47.7.1.m1.1.1.cmml" xref="S4.T1.47.47.7.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.47.47.7.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.47.47.7.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.47.47.7.1.1" style="font-size:63%;background-color:#F2F2F2;">.04</span></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.48.48.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.48.48.8.1" style="font-size:80%;background-color:#F2F2F2;">6.25<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.48.48.8.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S4.T1.48.48.8.1.m1.1a"><mo id="S4.T1.48.48.8.1.m1.1.1" mathbackground="#F2F2F2" mathsize="63%" xref="S4.T1.48.48.8.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.48.48.8.1.m1.1b"><csymbol cd="latexml" id="S4.T1.48.48.8.1.m1.1.1.cmml" xref="S4.T1.48.48.8.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.48.48.8.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.48.48.8.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.48.48.8.1.1" style="font-size:63%;background-color:#F2F2F2;">.02</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.155.159">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="13" id="S4.T1.155.159.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.155.159.1.1" style="font-size:80%;"></span><span class="ltx_text" id="S4.T1.155.159.1.2" style="font-size:80%;color:#5A5A5A;"> <span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T1.155.159.1.2.1">Stable Diffusion<span class="ltx_text ltx_font_medium" id="S4.T1.155.159.1.2.1.1"> XL Comparision</span></span></span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.56.56">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.56.56.9" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.56.56.9.1" style="font-size:80%;">SDXL-Base </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.56.56.9.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07699v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a><span class="ltx_text" id="S4.T1.56.56.9.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.56.56.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.56.56.10.1" style="font-size:80%;">UNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.56.56.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.56.56.11.1" style="font-size:80%;">3.5B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.56.56.12" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.56.56.12.1" style="font-size:80%;">VP</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.56.56.13" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.56.56.13.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.49.49.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.49.49.1.1" style="font-size:80%;">15.7</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.49.49.1.m1.1"><semantics id="S4.T1.49.49.1.m1.1a"><mo id="S4.T1.49.49.1.m1.1.1" mathsize="50%" xref="S4.T1.49.49.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.49.49.1.m1.1b"><csymbol cd="latexml" id="S4.T1.49.49.1.m1.1.1.cmml" xref="S4.T1.49.49.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.49.49.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.49.49.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.49.49.1.2" style="font-size:50%;">.03</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.50.50.2" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.50.50.2.1" style="font-size:80%;">10.5</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.50.50.2.m1.1"><semantics id="S4.T1.50.50.2.m1.1a"><mo id="S4.T1.50.50.2.m1.1.1" mathsize="50%" xref="S4.T1.50.50.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.50.50.2.m1.1b"><csymbol cd="latexml" id="S4.T1.50.50.2.m1.1.1.cmml" xref="S4.T1.50.50.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.50.50.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.50.50.2.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.50.50.2.2" style="font-size:50%;">.02</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.51.51.3" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.51.51.3.1" style="font-size:80%;">9.52</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.51.51.3.m1.1"><semantics id="S4.T1.51.51.3.m1.1a"><mo id="S4.T1.51.51.3.m1.1.1" mathsize="50%" xref="S4.T1.51.51.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.51.51.3.m1.1b"><csymbol cd="latexml" id="S4.T1.51.51.3.m1.1.1.cmml" xref="S4.T1.51.51.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.51.51.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.51.51.3.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.51.51.3.2" style="font-size:50%;">.01</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.52.52.4" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.52.52.4.1" style="font-size:80%;">8.42</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.52.52.4.m1.1"><semantics id="S4.T1.52.52.4.m1.1a"><mo id="S4.T1.52.52.4.m1.1.1" mathsize="50%" xref="S4.T1.52.52.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.52.52.4.m1.1b"><csymbol cd="latexml" id="S4.T1.52.52.4.m1.1.1.cmml" xref="S4.T1.52.52.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.52.52.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.52.52.4.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.52.52.4.2" style="font-size:50%;">.04</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.53.53.5" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.53.53.5.1" style="font-size:80%;">3.98</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.53.53.5.m1.1"><semantics id="S4.T1.53.53.5.m1.1a"><mo id="S4.T1.53.53.5.m1.1.1" mathsize="50%" xref="S4.T1.53.53.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.53.53.5.m1.1b"><csymbol cd="latexml" id="S4.T1.53.53.5.m1.1.1.cmml" xref="S4.T1.53.53.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.53.53.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.53.53.5.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.53.53.5.2" style="font-size:50%;">.02</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.54.54.6" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.54.54.6.1" style="font-size:80%;">4.14</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.54.54.6.m1.1"><semantics id="S4.T1.54.54.6.m1.1a"><mo id="S4.T1.54.54.6.m1.1.1" mathsize="50%" xref="S4.T1.54.54.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.54.54.6.m1.1b"><csymbol cd="latexml" id="S4.T1.54.54.6.m1.1.1.cmml" xref="S4.T1.54.54.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.54.54.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.54.54.6.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.54.54.6.2" style="font-size:50%;">.05</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.55.55.7" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.55.55.7.1" style="font-size:80%;">4.26</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.55.55.7.m1.1"><semantics id="S4.T1.55.55.7.m1.1a"><mo id="S4.T1.55.55.7.m1.1.1" mathsize="50%" xref="S4.T1.55.55.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.55.55.7.m1.1b"><csymbol cd="latexml" id="S4.T1.55.55.7.m1.1.1.cmml" xref="S4.T1.55.55.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.55.55.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.55.55.7.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.55.55.7.2" style="font-size:50%;">.03</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.56.56.8" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.56.56.8.1" style="font-size:80%;">4.61</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.56.56.8.m1.1"><semantics id="S4.T1.56.56.8.m1.1a"><mo id="S4.T1.56.56.8.m1.1.1" mathsize="50%" xref="S4.T1.56.56.8.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.56.56.8.m1.1b"><csymbol cd="latexml" id="S4.T1.56.56.8.m1.1.1.cmml" xref="S4.T1.56.56.8.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.56.56.8.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.56.56.8.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.56.56.8.2" style="font-size:50%;">.02</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.64.64">
<td class="ltx_td ltx_align_left" id="S4.T1.64.64.9" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.64.64.9.1" style="font-size:80%;">SDXL-Turbo </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.64.64.9.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07699v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a><span class="ltx_text" id="S4.T1.64.64.9.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.64.64.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.64.64.10.1" style="font-size:80%;">UNet</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.64.64.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.64.64.11.1" style="font-size:80%;">3.5B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.64.64.12" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.64.64.12.1" style="font-size:80%;">VP</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.64.64.13" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.64.64.13.1" style="font-size:80%;">N Day</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.57.57.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.57.57.1.1" style="font-size:80%;">4.32</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.57.57.1.m1.1"><semantics id="S4.T1.57.57.1.m1.1a"><mo id="S4.T1.57.57.1.m1.1.1" mathsize="50%" xref="S4.T1.57.57.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.57.57.1.m1.1b"><csymbol cd="latexml" id="S4.T1.57.57.1.m1.1.1.cmml" xref="S4.T1.57.57.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.57.57.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.57.57.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.57.57.1.2" style="font-size:50%;">.07</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.58.58.2" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.58.58.2.1" style="font-size:80%;">4.16</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.58.58.2.m1.1"><semantics id="S4.T1.58.58.2.m1.1a"><mo id="S4.T1.58.58.2.m1.1.1" mathsize="50%" xref="S4.T1.58.58.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.58.58.2.m1.1b"><csymbol cd="latexml" id="S4.T1.58.58.2.m1.1.1.cmml" xref="S4.T1.58.58.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.58.58.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.58.58.2.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.58.58.2.2" style="font-size:50%;">.05</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.59.59.3" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.59.59.3.1" style="font-size:80%;">4.00</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.59.59.3.m1.1"><semantics id="S4.T1.59.59.3.m1.1a"><mo id="S4.T1.59.59.3.m1.1.1" mathsize="50%" xref="S4.T1.59.59.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.59.59.3.m1.1b"><csymbol cd="latexml" id="S4.T1.59.59.3.m1.1.1.cmml" xref="S4.T1.59.59.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.59.59.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.59.59.3.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.59.59.3.2" style="font-size:50%;">.04</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.60.60.4" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.60.60.4.1" style="font-size:80%;">3.80</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.60.60.4.m1.1"><semantics id="S4.T1.60.60.4.m1.1a"><mo id="S4.T1.60.60.4.m1.1.1" mathsize="50%" xref="S4.T1.60.60.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.60.60.4.m1.1b"><csymbol cd="latexml" id="S4.T1.60.60.4.m1.1.1.cmml" xref="S4.T1.60.60.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.60.60.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.60.60.4.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.60.60.4.2" style="font-size:50%;">.06</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.61.61.5" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.61.61.5.1" style="font-size:80%;">5.75</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.61.61.5.m1.1"><semantics id="S4.T1.61.61.5.m1.1a"><mo id="S4.T1.61.61.5.m1.1.1" mathsize="50%" xref="S4.T1.61.61.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.61.61.5.m1.1b"><csymbol cd="latexml" id="S4.T1.61.61.5.m1.1.1.cmml" xref="S4.T1.61.61.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.61.61.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.61.61.5.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.61.61.5.2" style="font-size:50%;">.08</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.62.62.6" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.62.62.6.1" style="font-size:80%;">5.85</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.62.62.6.m1.1"><semantics id="S4.T1.62.62.6.m1.1a"><mo id="S4.T1.62.62.6.m1.1.1" mathsize="50%" xref="S4.T1.62.62.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.62.62.6.m1.1b"><csymbol cd="latexml" id="S4.T1.62.62.6.m1.1.1.cmml" xref="S4.T1.62.62.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.62.62.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.62.62.6.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.62.62.6.2" style="font-size:50%;">.04</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.63.63.7" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.63.63.7.1" style="font-size:80%;">5.90</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.63.63.7.m1.1"><semantics id="S4.T1.63.63.7.m1.1a"><mo id="S4.T1.63.63.7.m1.1.1" mathsize="50%" xref="S4.T1.63.63.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.63.63.7.m1.1b"><csymbol cd="latexml" id="S4.T1.63.63.7.m1.1.1.cmml" xref="S4.T1.63.63.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.63.63.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.63.63.7.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.63.63.7.2" style="font-size:50%;">.09</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.64.64.8" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.64.64.8.1" style="font-size:80%;">5.70</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.64.64.8.m1.1"><semantics id="S4.T1.64.64.8.m1.1a"><mo id="S4.T1.64.64.8.m1.1.1" mathsize="50%" xref="S4.T1.64.64.8.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.64.64.8.m1.1b"><csymbol cd="latexml" id="S4.T1.64.64.8.m1.1.1.cmml" xref="S4.T1.64.64.8.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.64.64.8.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.64.64.8.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.64.64.8.2" style="font-size:50%;">.05</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.72.72">
<td class="ltx_td ltx_align_left" id="S4.T1.72.72.9" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.72.72.9.1" style="font-size:80%;">SDXL-PeRFlow </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.72.72.9.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07699v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a><span class="ltx_text" id="S4.T1.72.72.9.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.72.72.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.72.72.10.1" style="font-size:80%;">Unet</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.72.72.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.72.72.11.1" style="font-size:80%;">3.5B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.72.72.12" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.72.72.12.1" style="font-size:80%;">RF</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.72.72.13" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.72.72.13.1" style="font-size:80%;">6.4 Day</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.65.65.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.65.65.1.1" style="font-size:80%;">4.20</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.65.65.1.m1.1"><semantics id="S4.T1.65.65.1.m1.1a"><mo id="S4.T1.65.65.1.m1.1.1" mathsize="50%" xref="S4.T1.65.65.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.65.65.1.m1.1b"><csymbol cd="latexml" id="S4.T1.65.65.1.m1.1.1.cmml" xref="S4.T1.65.65.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.65.65.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.65.65.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.65.65.1.2" style="font-size:50%;">.05</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.66.66.2" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.66.66.2.1" style="font-size:80%;">4.22</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.66.66.2.m1.1"><semantics id="S4.T1.66.66.2.m1.1a"><mo id="S4.T1.66.66.2.m1.1.1" mathsize="50%" xref="S4.T1.66.66.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.66.66.2.m1.1b"><csymbol cd="latexml" id="S4.T1.66.66.2.m1.1.1.cmml" xref="S4.T1.66.66.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.66.66.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.66.66.2.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.66.66.2.2" style="font-size:50%;">.07</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.67.67.3" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.67.67.3.1" style="font-size:80%;">4.05</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.67.67.3.m1.1"><semantics id="S4.T1.67.67.3.m1.1a"><mo id="S4.T1.67.67.3.m1.1.1" mathsize="50%" xref="S4.T1.67.67.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.67.67.3.m1.1b"><csymbol cd="latexml" id="S4.T1.67.67.3.m1.1.1.cmml" xref="S4.T1.67.67.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.67.67.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.67.67.3.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.67.67.3.2" style="font-size:50%;">.06</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.68.68.4" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.68.68.4.1" style="font-size:80%;">3.78</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.68.68.4.m1.1"><semantics id="S4.T1.68.68.4.m1.1a"><mo id="S4.T1.68.68.4.m1.1.1" mathsize="50%" xref="S4.T1.68.68.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.68.68.4.m1.1b"><csymbol cd="latexml" id="S4.T1.68.68.4.m1.1.1.cmml" xref="S4.T1.68.68.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.68.68.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.68.68.4.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.68.68.4.2" style="font-size:50%;">.09</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.69.69.5" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.69.69.5.1" style="font-size:80%;">5.68</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.69.69.5.m1.1"><semantics id="S4.T1.69.69.5.m1.1a"><mo id="S4.T1.69.69.5.m1.1.1" mathsize="50%" xref="S4.T1.69.69.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.69.69.5.m1.1b"><csymbol cd="latexml" id="S4.T1.69.69.5.m1.1.1.cmml" xref="S4.T1.69.69.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.69.69.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.69.69.5.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.69.69.5.2" style="font-size:50%;">.03</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.70.70.6" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.70.70.6.1" style="font-size:80%;">5.65</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.70.70.6.m1.1"><semantics id="S4.T1.70.70.6.m1.1a"><mo id="S4.T1.70.70.6.m1.1.1" mathsize="50%" xref="S4.T1.70.70.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.70.70.6.m1.1b"><csymbol cd="latexml" id="S4.T1.70.70.6.m1.1.1.cmml" xref="S4.T1.70.70.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.70.70.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.70.70.6.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.70.70.6.2" style="font-size:50%;">.08</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.71.71.7" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.71.71.7.1" style="font-size:80%;">5.85</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.71.71.7.m1.1"><semantics id="S4.T1.71.71.7.m1.1a"><mo id="S4.T1.71.71.7.m1.1.1" mathsize="50%" xref="S4.T1.71.71.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.71.71.7.m1.1b"><csymbol cd="latexml" id="S4.T1.71.71.7.m1.1.1.cmml" xref="S4.T1.71.71.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.71.71.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.71.71.7.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.71.71.7.2" style="font-size:50%;">.04</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.72.72.8" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.72.72.8.1" style="font-size:80%;">5.60</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.72.72.8.m1.1"><semantics id="S4.T1.72.72.8.m1.1a"><mo id="S4.T1.72.72.8.m1.1.1" mathsize="50%" xref="S4.T1.72.72.8.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.72.72.8.m1.1b"><csymbol cd="latexml" id="S4.T1.72.72.8.m1.1.1.cmml" xref="S4.T1.72.72.8.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.72.72.8.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.72.72.8.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.72.72.8.2" style="font-size:50%;">.06</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.80.80">
<td class="ltx_td ltx_align_left" id="S4.T1.80.80.9" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.80.80.9.1" style="font-size:80%;">SDXL-LCM </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.80.80.9.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07699v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a><span class="ltx_text" id="S4.T1.80.80.9.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.80.80.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.80.80.10.1" style="font-size:80%;">LoRA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.80.80.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.80.80.11.1" style="font-size:80%;">197M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.80.80.12" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.80.80.12.1" style="font-size:80%;">VP</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.80.80.13" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.80.80.13.1" style="font-size:80%;">4.5 Day</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.73.73.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.73.73.1.1" style="font-size:80%;">4.27</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.73.73.1.m1.1"><semantics id="S4.T1.73.73.1.m1.1a"><mo id="S4.T1.73.73.1.m1.1.1" mathsize="50%" xref="S4.T1.73.73.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.73.73.1.m1.1b"><csymbol cd="latexml" id="S4.T1.73.73.1.m1.1.1.cmml" xref="S4.T1.73.73.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.73.73.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.73.73.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.73.73.1.2" style="font-size:50%;">.07</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.74.74.2" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.74.74.2.1" style="font-size:80%;">4.22</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.74.74.2.m1.1"><semantics id="S4.T1.74.74.2.m1.1a"><mo id="S4.T1.74.74.2.m1.1.1" mathsize="50%" xref="S4.T1.74.74.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.74.74.2.m1.1b"><csymbol cd="latexml" id="S4.T1.74.74.2.m1.1.1.cmml" xref="S4.T1.74.74.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.74.74.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.74.74.2.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.74.74.2.2" style="font-size:50%;">.04</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.75.75.3" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.75.75.3.1" style="font-size:80%;">4.17</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.75.75.3.m1.1"><semantics id="S4.T1.75.75.3.m1.1a"><mo id="S4.T1.75.75.3.m1.1.1" mathsize="50%" xref="S4.T1.75.75.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.75.75.3.m1.1b"><csymbol cd="latexml" id="S4.T1.75.75.3.m1.1.1.cmml" xref="S4.T1.75.75.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.75.75.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.75.75.3.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.75.75.3.2" style="font-size:50%;">.05</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.76.76.4" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.76.76.4.1" style="font-size:80%;">3.81</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.76.76.4.m1.1"><semantics id="S4.T1.76.76.4.m1.1a"><mo id="S4.T1.76.76.4.m1.1.1" mathsize="50%" xref="S4.T1.76.76.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.76.76.4.m1.1b"><csymbol cd="latexml" id="S4.T1.76.76.4.m1.1.1.cmml" xref="S4.T1.76.76.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.76.76.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.76.76.4.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.76.76.4.2" style="font-size:50%;">.09</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.77.77.5" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.77.77.5.1" style="font-size:80%;">5.60</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.77.77.5.m1.1"><semantics id="S4.T1.77.77.5.m1.1a"><mo id="S4.T1.77.77.5.m1.1.1" mathsize="50%" xref="S4.T1.77.77.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.77.77.5.m1.1b"><csymbol cd="latexml" id="S4.T1.77.77.5.m1.1.1.cmml" xref="S4.T1.77.77.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.77.77.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.77.77.5.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.77.77.5.2" style="font-size:50%;">.03</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.78.78.6" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.78.78.6.1" style="font-size:80%;">5.49</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.78.78.6.m1.1"><semantics id="S4.T1.78.78.6.m1.1a"><mo id="S4.T1.78.78.6.m1.1.1" mathsize="50%" xref="S4.T1.78.78.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.78.78.6.m1.1b"><csymbol cd="latexml" id="S4.T1.78.78.6.m1.1.1.cmml" xref="S4.T1.78.78.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.78.78.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.78.78.6.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.78.78.6.2" style="font-size:50%;">.08</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.79.79.7" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.79.79.7.1" style="font-size:80%;">5.97</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.79.79.7.m1.1"><semantics id="S4.T1.79.79.7.m1.1a"><mo id="S4.T1.79.79.7.m1.1.1" mathsize="50%" xref="S4.T1.79.79.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.79.79.7.m1.1b"><csymbol cd="latexml" id="S4.T1.79.79.7.m1.1.1.cmml" xref="S4.T1.79.79.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.79.79.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.79.79.7.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.79.79.7.2" style="font-size:50%;">.06</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.80.80.8" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.80.80.8.1" style="font-size:80%;">5.74</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.80.80.8.m1.1"><semantics id="S4.T1.80.80.8.m1.1a"><mo id="S4.T1.80.80.8.m1.1.1" mathsize="50%" xref="S4.T1.80.80.8.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.80.80.8.m1.1b"><csymbol cd="latexml" id="S4.T1.80.80.8.m1.1.1.cmml" xref="S4.T1.80.80.8.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.80.80.8.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.80.80.8.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.80.80.8.2" style="font-size:50%;">.10</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.88.88">
<td class="ltx_td ltx_align_left" id="S4.T1.88.88.9" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.88.88.9.1" style="font-size:80%;">SDXL-TCD </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.88.88.9.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07699v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a><span class="ltx_text" id="S4.T1.88.88.9.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.88.88.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.88.88.10.1" style="font-size:80%;">LoRA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.88.88.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.88.88.11.1" style="font-size:80%;">197M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.88.88.12" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.88.88.12.1" style="font-size:80%;">VP</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.88.88.13" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.88.88.13.1" style="font-size:80%;">5.5 Day</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.81.81.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.81.81.1.1" style="font-size:80%;">4.50</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.81.81.1.m1.1"><semantics id="S4.T1.81.81.1.m1.1a"><mo id="S4.T1.81.81.1.m1.1.1" mathsize="50%" xref="S4.T1.81.81.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.81.81.1.m1.1b"><csymbol cd="latexml" id="S4.T1.81.81.1.m1.1.1.cmml" xref="S4.T1.81.81.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.81.81.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.81.81.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.81.81.1.2" style="font-size:50%;">.08</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.82.82.2" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.82.82.2.1" style="font-size:80%;">4.10</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.82.82.2.m1.1"><semantics id="S4.T1.82.82.2.m1.1a"><mo id="S4.T1.82.82.2.m1.1.1" mathsize="50%" xref="S4.T1.82.82.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.82.82.2.m1.1b"><csymbol cd="latexml" id="S4.T1.82.82.2.m1.1.1.cmml" xref="S4.T1.82.82.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.82.82.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.82.82.2.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.82.82.2.2" style="font-size:50%;">.03</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.83.83.3" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.83.83.3.1" style="font-size:80%;">4.20</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.83.83.3.m1.1"><semantics id="S4.T1.83.83.3.m1.1a"><mo id="S4.T1.83.83.3.m1.1.1" mathsize="50%" xref="S4.T1.83.83.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.83.83.3.m1.1b"><csymbol cd="latexml" id="S4.T1.83.83.3.m1.1.1.cmml" xref="S4.T1.83.83.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.83.83.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.83.83.3.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.83.83.3.2" style="font-size:50%;">.07</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.84.84.4" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.84.84.4.1" style="font-size:80%;">3.90</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.84.84.4.m1.1"><semantics id="S4.T1.84.84.4.m1.1a"><mo id="S4.T1.84.84.4.m1.1.1" mathsize="50%" xref="S4.T1.84.84.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.84.84.4.m1.1b"><csymbol cd="latexml" id="S4.T1.84.84.4.m1.1.1.cmml" xref="S4.T1.84.84.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.84.84.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.84.84.4.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.84.84.4.2" style="font-size:50%;">.04</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.85.85.5" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.85.85.5.1" style="font-size:80%;">5.55</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.85.85.5.m1.1"><semantics id="S4.T1.85.85.5.m1.1a"><mo id="S4.T1.85.85.5.m1.1.1" mathsize="50%" xref="S4.T1.85.85.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.85.85.5.m1.1b"><csymbol cd="latexml" id="S4.T1.85.85.5.m1.1.1.cmml" xref="S4.T1.85.85.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.85.85.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.85.85.5.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.85.85.5.2" style="font-size:50%;">.06</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.86.86.6" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.86.86.6.1" style="font-size:80%;">5.43</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.86.86.6.m1.1"><semantics id="S4.T1.86.86.6.m1.1a"><mo id="S4.T1.86.86.6.m1.1.1" mathsize="50%" xref="S4.T1.86.86.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.86.86.6.m1.1b"><csymbol cd="latexml" id="S4.T1.86.86.6.m1.1.1.cmml" xref="S4.T1.86.86.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.86.86.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.86.86.6.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.86.86.6.2" style="font-size:50%;">.10</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.87.87.7" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.87.87.7.1" style="font-size:80%;">5.89</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.87.87.7.m1.1"><semantics id="S4.T1.87.87.7.m1.1a"><mo id="S4.T1.87.87.7.m1.1.1" mathsize="50%" xref="S4.T1.87.87.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.87.87.7.m1.1b"><csymbol cd="latexml" id="S4.T1.87.87.7.m1.1.1.cmml" xref="S4.T1.87.87.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.87.87.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.87.87.7.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.87.87.7.2" style="font-size:50%;">.05</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.88.88.8" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.88.88.8.1" style="font-size:80%;">5.65</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.88.88.8.m1.1"><semantics id="S4.T1.88.88.8.m1.1a"><mo id="S4.T1.88.88.8.m1.1.1" mathsize="50%" xref="S4.T1.88.88.8.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.88.88.8.m1.1b"><csymbol cd="latexml" id="S4.T1.88.88.8.m1.1.1.cmml" xref="S4.T1.88.88.8.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.88.88.8.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.88.88.8.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.88.88.8.2" style="font-size:50%;">.03</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.96.96">
<td class="ltx_td ltx_align_left" id="S4.T1.96.96.9" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.96.96.9.1" style="font-size:80%;">SDXL-Lightning </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.96.96.9.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07699v1#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">16</span></a><span class="ltx_text" id="S4.T1.96.96.9.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.96.96.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.96.96.10.1" style="font-size:80%;">LoRA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.96.96.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.96.96.11.1" style="font-size:80%;">197M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.96.96.12" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.96.96.12.1" style="font-size:80%;">VP</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.96.96.13" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.96.96.13.1" style="font-size:80%;">N Day</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.89.89.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.89.89.1.1" style="font-size:80%;">4.35</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.89.89.1.m1.1"><semantics id="S4.T1.89.89.1.m1.1a"><mo id="S4.T1.89.89.1.m1.1.1" mathsize="50%" xref="S4.T1.89.89.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.89.89.1.m1.1b"><csymbol cd="latexml" id="S4.T1.89.89.1.m1.1.1.cmml" xref="S4.T1.89.89.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.89.89.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.89.89.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.89.89.1.2" style="font-size:50%;">.06</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.90.90.2" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.90.90.2.1" style="font-size:80%;">4.18</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.90.90.2.m1.1"><semantics id="S4.T1.90.90.2.m1.1a"><mo id="S4.T1.90.90.2.m1.1.1" mathsize="50%" xref="S4.T1.90.90.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.90.90.2.m1.1b"><csymbol cd="latexml" id="S4.T1.90.90.2.m1.1.1.cmml" xref="S4.T1.90.90.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.90.90.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.90.90.2.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.90.90.2.2" style="font-size:50%;">.09</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.91.91.3" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.91.91.3.1" style="font-size:80%;">4.08</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.91.91.3.m1.1"><semantics id="S4.T1.91.91.3.m1.1a"><mo id="S4.T1.91.91.3.m1.1.1" mathsize="50%" xref="S4.T1.91.91.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.91.91.3.m1.1b"><csymbol cd="latexml" id="S4.T1.91.91.3.m1.1.1.cmml" xref="S4.T1.91.91.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.91.91.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.91.91.3.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.91.91.3.2" style="font-size:50%;">.03</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.92.92.4" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.92.92.4.1" style="font-size:80%;">3.84</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.92.92.4.m1.1"><semantics id="S4.T1.92.92.4.m1.1a"><mo id="S4.T1.92.92.4.m1.1.1" mathsize="50%" xref="S4.T1.92.92.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.92.92.4.m1.1b"><csymbol cd="latexml" id="S4.T1.92.92.4.m1.1.1.cmml" xref="S4.T1.92.92.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.92.92.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.92.92.4.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.92.92.4.2" style="font-size:50%;">.07</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.93.93.5" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.93.93.5.1" style="font-size:80%;">5.75</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.93.93.5.m1.1"><semantics id="S4.T1.93.93.5.m1.1a"><mo id="S4.T1.93.93.5.m1.1.1" mathsize="50%" xref="S4.T1.93.93.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.93.93.5.m1.1b"><csymbol cd="latexml" id="S4.T1.93.93.5.m1.1.1.cmml" xref="S4.T1.93.93.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.93.93.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.93.93.5.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.93.93.5.2" style="font-size:50%;">.04</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.94.94.6" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.94.94.6.1" style="font-size:80%;">5.48</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.94.94.6.m1.1"><semantics id="S4.T1.94.94.6.m1.1a"><mo id="S4.T1.94.94.6.m1.1.1" mathsize="50%" xref="S4.T1.94.94.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.94.94.6.m1.1b"><csymbol cd="latexml" id="S4.T1.94.94.6.m1.1.1.cmml" xref="S4.T1.94.94.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.94.94.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.94.94.6.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.94.94.6.2" style="font-size:50%;">.05</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.95.95.7" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.95.95.7.1" style="font-size:80%;">5.95</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.95.95.7.m1.1"><semantics id="S4.T1.95.95.7.m1.1a"><mo id="S4.T1.95.95.7.m1.1.1" mathsize="50%" xref="S4.T1.95.95.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.95.95.7.m1.1b"><csymbol cd="latexml" id="S4.T1.95.95.7.m1.1.1.cmml" xref="S4.T1.95.95.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.95.95.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.95.95.7.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.95.95.7.2" style="font-size:50%;">.09</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.96.96.8" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.96.96.8.1" style="font-size:80%;">5.68</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.96.96.8.m1.1"><semantics id="S4.T1.96.96.8.m1.1a"><mo id="S4.T1.96.96.8.m1.1.1" mathsize="50%" xref="S4.T1.96.96.8.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.96.96.8.m1.1b"><csymbol cd="latexml" id="S4.T1.96.96.8.m1.1.1.cmml" xref="S4.T1.96.96.8.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.96.96.8.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.96.96.8.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.96.96.8.2" style="font-size:50%;">.07</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.104.104">
<td class="ltx_td ltx_align_left" id="S4.T1.104.104.9" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.104.104.9.1" style="font-size:80%;">Hyper-SDXL </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.104.104.9.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07699v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a><span class="ltx_text" id="S4.T1.104.104.9.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.104.104.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.104.104.10.1" style="font-size:80%;">LoRA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.104.104.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.104.104.11.1" style="font-size:80%;">197M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.104.104.12" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.104.104.12.1" style="font-size:80%;">VP</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.104.104.13" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.104.104.13.1" style="font-size:80%;">12 Day</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.97.97.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.97.97.1.1" style="font-size:80%;">4.27</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.97.97.1.m1.1"><semantics id="S4.T1.97.97.1.m1.1a"><mo id="S4.T1.97.97.1.m1.1.1" mathsize="50%" xref="S4.T1.97.97.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.97.97.1.m1.1b"><csymbol cd="latexml" id="S4.T1.97.97.1.m1.1.1.cmml" xref="S4.T1.97.97.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.97.97.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.97.97.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.97.97.1.2" style="font-size:50%;">.07</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.98.98.2" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.98.98.2.1" style="font-size:80%;">4.22</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.98.98.2.m1.1"><semantics id="S4.T1.98.98.2.m1.1a"><mo id="S4.T1.98.98.2.m1.1.1" mathsize="50%" xref="S4.T1.98.98.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.98.98.2.m1.1b"><csymbol cd="latexml" id="S4.T1.98.98.2.m1.1.1.cmml" xref="S4.T1.98.98.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.98.98.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.98.98.2.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.98.98.2.2" style="font-size:50%;">.04</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.99.99.3" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.99.99.3.1" style="font-size:80%;">4.17</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.99.99.3.m1.1"><semantics id="S4.T1.99.99.3.m1.1a"><mo id="S4.T1.99.99.3.m1.1.1" mathsize="50%" xref="S4.T1.99.99.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.99.99.3.m1.1b"><csymbol cd="latexml" id="S4.T1.99.99.3.m1.1.1.cmml" xref="S4.T1.99.99.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.99.99.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.99.99.3.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.99.99.3.2" style="font-size:50%;">.05</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.100.100.4" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.100.100.4.1" style="font-size:80%;">3.81</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.100.100.4.m1.1"><semantics id="S4.T1.100.100.4.m1.1a"><mo id="S4.T1.100.100.4.m1.1.1" mathsize="50%" xref="S4.T1.100.100.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.100.100.4.m1.1b"><csymbol cd="latexml" id="S4.T1.100.100.4.m1.1.1.cmml" xref="S4.T1.100.100.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.100.100.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.100.100.4.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.100.100.4.2" style="font-size:50%;">.09</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.101.101.5" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.101.101.5.1" style="font-size:80%;">5.60</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.101.101.5.m1.1"><semantics id="S4.T1.101.101.5.m1.1a"><mo id="S4.T1.101.101.5.m1.1.1" mathsize="50%" xref="S4.T1.101.101.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.101.101.5.m1.1b"><csymbol cd="latexml" id="S4.T1.101.101.5.m1.1.1.cmml" xref="S4.T1.101.101.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.101.101.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.101.101.5.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.101.101.5.2" style="font-size:50%;">.03</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.102.102.6" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.102.102.6.1" style="font-size:80%;">5.49</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.102.102.6.m1.1"><semantics id="S4.T1.102.102.6.m1.1a"><mo id="S4.T1.102.102.6.m1.1.1" mathsize="50%" xref="S4.T1.102.102.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.102.102.6.m1.1b"><csymbol cd="latexml" id="S4.T1.102.102.6.m1.1.1.cmml" xref="S4.T1.102.102.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.102.102.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.102.102.6.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.102.102.6.2" style="font-size:50%;">.08</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.103.103.7" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.103.103.7.1" style="font-size:80%;">5.97</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.103.103.7.m1.1"><semantics id="S4.T1.103.103.7.m1.1a"><mo id="S4.T1.103.103.7.m1.1.1" mathsize="50%" xref="S4.T1.103.103.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.103.103.7.m1.1b"><csymbol cd="latexml" id="S4.T1.103.103.7.m1.1.1.cmml" xref="S4.T1.103.103.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.103.103.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.103.103.7.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.103.103.7.2" style="font-size:50%;">.06</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.104.104.8" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.104.104.8.1" style="font-size:80%;">5.74</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.104.104.8.m1.1"><semantics id="S4.T1.104.104.8.m1.1a"><mo id="S4.T1.104.104.8.m1.1.1" mathsize="50%" xref="S4.T1.104.104.8.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.104.104.8.m1.1b"><csymbol cd="latexml" id="S4.T1.104.104.8.m1.1.1.cmml" xref="S4.T1.104.104.8.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.104.104.8.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.104.104.8.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.104.104.8.2" style="font-size:50%;">.10</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.112.112">
<td class="ltx_td ltx_align_left" id="S4.T1.112.112.9" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.112.112.9.1" style="font-size:80%;">SDXL-DMD2 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.112.112.9.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07699v1#bib.bib52" title=""><span class="ltx_text" style="font-size:90%;">52</span></a><span class="ltx_text" id="S4.T1.112.112.9.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.112.112.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.112.112.10.1" style="font-size:80%;">LoRA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.112.112.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.112.112.11.1" style="font-size:80%;">197M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.112.112.12" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.112.112.12.1" style="font-size:80%;">VP</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.112.112.13" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.112.112.13.1" style="font-size:80%;">12 Day</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.105.105.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.105.105.1.1" style="font-size:80%;">4.19</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.105.105.1.m1.1"><semantics id="S4.T1.105.105.1.m1.1a"><mo id="S4.T1.105.105.1.m1.1.1" mathsize="50%" xref="S4.T1.105.105.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.105.105.1.m1.1b"><csymbol cd="latexml" id="S4.T1.105.105.1.m1.1.1.cmml" xref="S4.T1.105.105.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.105.105.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.105.105.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.105.105.1.2" style="font-size:50%;">.02</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.106.106.2" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.106.106.2.1" style="font-size:80%;">4.06</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.106.106.2.m1.1"><semantics id="S4.T1.106.106.2.m1.1a"><mo id="S4.T1.106.106.2.m1.1.1" mathsize="50%" xref="S4.T1.106.106.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.106.106.2.m1.1b"><csymbol cd="latexml" id="S4.T1.106.106.2.m1.1.1.cmml" xref="S4.T1.106.106.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.106.106.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.106.106.2.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.106.106.2.2" style="font-size:50%;">.03</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.107.107.3" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.107.107.3.1" style="font-size:80%;">3.98</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.107.107.3.m1.1"><semantics id="S4.T1.107.107.3.m1.1a"><mo id="S4.T1.107.107.3.m1.1.1" mathsize="50%" xref="S4.T1.107.107.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.107.107.3.m1.1b"><csymbol cd="latexml" id="S4.T1.107.107.3.m1.1.1.cmml" xref="S4.T1.107.107.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.107.107.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.107.107.3.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.107.107.3.2" style="font-size:50%;">.02</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.108.108.4" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.108.108.4.1" style="font-size:80%;">3.71</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.108.108.4.m1.1"><semantics id="S4.T1.108.108.4.m1.1a"><mo id="S4.T1.108.108.4.m1.1.1" mathsize="50%" xref="S4.T1.108.108.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.108.108.4.m1.1b"><csymbol cd="latexml" id="S4.T1.108.108.4.m1.1.1.cmml" xref="S4.T1.108.108.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.108.108.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.108.108.4.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.108.108.4.2" style="font-size:50%;">.05</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.109.109.5" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.109.109.5.1" style="font-size:80%;">5.90</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.109.109.5.m1.1"><semantics id="S4.T1.109.109.5.m1.1a"><mo id="S4.T1.109.109.5.m1.1.1" mathsize="50%" xref="S4.T1.109.109.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.109.109.5.m1.1b"><csymbol cd="latexml" id="S4.T1.109.109.5.m1.1.1.cmml" xref="S4.T1.109.109.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.109.109.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.109.109.5.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.109.109.5.2" style="font-size:50%;">.03</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.110.110.6" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.110.110.6.1" style="font-size:80%;">5.99</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.110.110.6.m1.1"><semantics id="S4.T1.110.110.6.m1.1a"><mo id="S4.T1.110.110.6.m1.1.1" mathsize="50%" xref="S4.T1.110.110.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.110.110.6.m1.1b"><csymbol cd="latexml" id="S4.T1.110.110.6.m1.1.1.cmml" xref="S4.T1.110.110.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.110.110.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.110.110.6.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.110.110.6.2" style="font-size:50%;">.06</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.111.111.7" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.111.111.7.1" style="font-size:80%;">6.07</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.111.111.7.m1.1"><semantics id="S4.T1.111.111.7.m1.1a"><mo id="S4.T1.111.111.7.m1.1.1" mathsize="50%" xref="S4.T1.111.111.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.111.111.7.m1.1b"><csymbol cd="latexml" id="S4.T1.111.111.7.m1.1.1.cmml" xref="S4.T1.111.111.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.111.111.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.111.111.7.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.111.111.7.2" style="font-size:50%;">.04</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.112.112.8" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.112.112.8.1" style="font-size:80%;">6.14</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.112.112.8.m1.1"><semantics id="S4.T1.112.112.8.m1.1a"><mo id="S4.T1.112.112.8.m1.1.1" mathsize="50%" xref="S4.T1.112.112.8.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.112.112.8.m1.1b"><csymbol cd="latexml" id="S4.T1.112.112.8.m1.1.1.cmml" xref="S4.T1.112.112.8.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.112.112.8.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.112.112.8.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.112.112.8.2" style="font-size:50%;">.01</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.120.120" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_left" id="S4.T1.120.120.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.120.120.9.1" style="font-size:80%;background-color:#F2F2F2;">SDXL-Ray (ours)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.120.120.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.120.120.10.1" style="font-size:80%;background-color:#F2F2F2;">LoRA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.120.120.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.120.120.11.1" style="font-size:80%;background-color:#F2F2F2;">197M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.120.120.12" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.120.120.12.1" style="font-size:80%;background-color:#F2F2F2;">Ray</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.120.120.13" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.120.120.13.1" style="font-size:80%;background-color:#F2F2F2;">2.5 Day</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.113.113.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.113.113.1.1" style="font-size:80%;background-color:#F2F2F2;">4.15<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.113.113.1.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S4.T1.113.113.1.1.m1.1a"><mo id="S4.T1.113.113.1.1.m1.1.1" mathbackground="#F2F2F2" mathsize="63%" xref="S4.T1.113.113.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.113.113.1.1.m1.1b"><csymbol cd="latexml" id="S4.T1.113.113.1.1.m1.1.1.cmml" xref="S4.T1.113.113.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.113.113.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.113.113.1.1.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_medium" id="S4.T1.113.113.1.1.1" style="font-size:63%;background-color:#F2F2F2;">.03</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.114.114.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.114.114.2.1" style="font-size:80%;background-color:#F2F2F2;">4.02<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.114.114.2.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S4.T1.114.114.2.1.m1.1a"><mo id="S4.T1.114.114.2.1.m1.1.1" mathbackground="#F2F2F2" mathsize="63%" xref="S4.T1.114.114.2.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.114.114.2.1.m1.1b"><csymbol cd="latexml" id="S4.T1.114.114.2.1.m1.1.1.cmml" xref="S4.T1.114.114.2.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.114.114.2.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.114.114.2.1.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_medium" id="S4.T1.114.114.2.1.1" style="font-size:63%;background-color:#F2F2F2;">.02</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.115.115.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.115.115.3.1" style="font-size:80%;background-color:#F2F2F2;">3.90<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.115.115.3.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S4.T1.115.115.3.1.m1.1a"><mo id="S4.T1.115.115.3.1.m1.1.1" mathbackground="#F2F2F2" mathsize="63%" xref="S4.T1.115.115.3.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.115.115.3.1.m1.1b"><csymbol cd="latexml" id="S4.T1.115.115.3.1.m1.1.1.cmml" xref="S4.T1.115.115.3.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.115.115.3.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.115.115.3.1.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_medium" id="S4.T1.115.115.3.1.1" style="font-size:63%;background-color:#F2F2F2;">.02</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.116.116.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.116.116.4.1" style="font-size:80%;background-color:#F2F2F2;">3.67<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.116.116.4.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S4.T1.116.116.4.1.m1.1a"><mo id="S4.T1.116.116.4.1.m1.1.1" mathbackground="#F2F2F2" mathsize="63%" xref="S4.T1.116.116.4.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.116.116.4.1.m1.1b"><csymbol cd="latexml" id="S4.T1.116.116.4.1.m1.1.1.cmml" xref="S4.T1.116.116.4.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.116.116.4.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.116.116.4.1.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_medium" id="S4.T1.116.116.4.1.1" style="font-size:63%;background-color:#F2F2F2;">.04</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.117.117.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.117.117.5.1" style="font-size:80%;background-color:#F2F2F2;">5.96<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.117.117.5.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S4.T1.117.117.5.1.m1.1a"><mo id="S4.T1.117.117.5.1.m1.1.1" mathbackground="#F2F2F2" mathsize="63%" xref="S4.T1.117.117.5.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.117.117.5.1.m1.1b"><csymbol cd="latexml" id="S4.T1.117.117.5.1.m1.1.1.cmml" xref="S4.T1.117.117.5.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.117.117.5.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.117.117.5.1.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_medium" id="S4.T1.117.117.5.1.1" style="font-size:63%;background-color:#F2F2F2;">.01</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.118.118.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.118.118.6.1" style="font-size:80%;background-color:#F2F2F2;">6.03<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.118.118.6.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S4.T1.118.118.6.1.m1.1a"><mo id="S4.T1.118.118.6.1.m1.1.1" mathbackground="#F2F2F2" mathsize="63%" xref="S4.T1.118.118.6.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.118.118.6.1.m1.1b"><csymbol cd="latexml" id="S4.T1.118.118.6.1.m1.1.1.cmml" xref="S4.T1.118.118.6.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.118.118.6.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.118.118.6.1.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_medium" id="S4.T1.118.118.6.1.1" style="font-size:63%;background-color:#F2F2F2;">.02</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.119.119.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.119.119.7.1" style="font-size:80%;background-color:#F2F2F2;">6.15<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.119.119.7.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S4.T1.119.119.7.1.m1.1a"><mo id="S4.T1.119.119.7.1.m1.1.1" mathbackground="#F2F2F2" mathsize="63%" xref="S4.T1.119.119.7.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.119.119.7.1.m1.1b"><csymbol cd="latexml" id="S4.T1.119.119.7.1.m1.1.1.cmml" xref="S4.T1.119.119.7.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.119.119.7.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.119.119.7.1.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_medium" id="S4.T1.119.119.7.1.1" style="font-size:63%;background-color:#F2F2F2;">.03</span></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.120.120.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.120.120.8.1" style="font-size:80%;background-color:#F2F2F2;">6.24<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.120.120.8.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S4.T1.120.120.8.1.m1.1a"><mo id="S4.T1.120.120.8.1.m1.1.1" mathbackground="#F2F2F2" mathsize="63%" xref="S4.T1.120.120.8.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.120.120.8.1.m1.1b"><csymbol cd="latexml" id="S4.T1.120.120.8.1.m1.1.1.cmml" xref="S4.T1.120.120.8.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.120.120.8.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.120.120.8.1.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_medium" id="S4.T1.120.120.8.1.1" style="font-size:63%;background-color:#F2F2F2;">.01</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.155.160">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="13" id="S4.T1.155.160.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.155.160.1.1" style="font-size:80%;"></span><span class="ltx_text" id="S4.T1.155.160.1.2" style="font-size:80%;color:#5A5A5A;"> <span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T1.155.160.1.2.1">PixArt<span class="ltx_text ltx_font_medium" id="S4.T1.155.160.1.2.1.1"> DiT Comparision</span></span></span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.129.129">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.121.121.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.121.121.1.1" style="font-size:80%;">PixArt-</span><math alttext="\alpha" class="ltx_Math" display="inline" id="S4.T1.121.121.1.m1.1"><semantics id="S4.T1.121.121.1.m1.1a"><mi id="S4.T1.121.121.1.m1.1.1" mathsize="80%" xref="S4.T1.121.121.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="S4.T1.121.121.1.m1.1b"><ci id="S4.T1.121.121.1.m1.1.1.cmml" xref="S4.T1.121.121.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.121.121.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S4.T1.121.121.1.m1.1d">italic_α</annotation></semantics></math><span class="ltx_text" id="S4.T1.121.121.1.2" style="font-size:80%;"> </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.121.121.1.3.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07699v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a><span class="ltx_text" id="S4.T1.121.121.1.4.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.129.129.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.129.129.10.1" style="font-size:80%;">DiT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.129.129.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.129.129.11.1" style="font-size:80%;">610M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.129.129.12" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.129.129.12.1" style="font-size:80%;">VP</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.129.129.13" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.129.129.13.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.122.122.2" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.122.122.2.1" style="font-size:80%;">13.6</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.122.122.2.m1.1"><semantics id="S4.T1.122.122.2.m1.1a"><mo id="S4.T1.122.122.2.m1.1.1" mathsize="50%" xref="S4.T1.122.122.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.122.122.2.m1.1b"><csymbol cd="latexml" id="S4.T1.122.122.2.m1.1.1.cmml" xref="S4.T1.122.122.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.122.122.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.122.122.2.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.122.122.2.2" style="font-size:50%;">.02</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.123.123.3" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.123.123.3.1" style="font-size:80%;">11.4</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.123.123.3.m1.1"><semantics id="S4.T1.123.123.3.m1.1a"><mo id="S4.T1.123.123.3.m1.1.1" mathsize="50%" xref="S4.T1.123.123.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.123.123.3.m1.1b"><csymbol cd="latexml" id="S4.T1.123.123.3.m1.1.1.cmml" xref="S4.T1.123.123.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.123.123.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.123.123.3.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.123.123.3.2" style="font-size:50%;">.03</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.124.124.4" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.124.124.4.1" style="font-size:80%;">10.14</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.124.124.4.m1.1"><semantics id="S4.T1.124.124.4.m1.1a"><mo id="S4.T1.124.124.4.m1.1.1" mathsize="50%" xref="S4.T1.124.124.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.124.124.4.m1.1b"><csymbol cd="latexml" id="S4.T1.124.124.4.m1.1.1.cmml" xref="S4.T1.124.124.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.124.124.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.124.124.4.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.124.124.4.2" style="font-size:50%;">.01</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.125.125.5" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.125.125.5.1" style="font-size:80%;">9.21</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.125.125.5.m1.1"><semantics id="S4.T1.125.125.5.m1.1a"><mo id="S4.T1.125.125.5.m1.1.1" mathsize="50%" xref="S4.T1.125.125.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.125.125.5.m1.1b"><csymbol cd="latexml" id="S4.T1.125.125.5.m1.1.1.cmml" xref="S4.T1.125.125.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.125.125.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.125.125.5.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.125.125.5.2" style="font-size:50%;">.04</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.126.126.6" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.126.126.6.1" style="font-size:80%;">3.78</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.126.126.6.m1.1"><semantics id="S4.T1.126.126.6.m1.1a"><mo id="S4.T1.126.126.6.m1.1.1" mathsize="50%" xref="S4.T1.126.126.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.126.126.6.m1.1b"><csymbol cd="latexml" id="S4.T1.126.126.6.m1.1.1.cmml" xref="S4.T1.126.126.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.126.126.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.126.126.6.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.126.126.6.2" style="font-size:50%;">.02</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.127.127.7" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.127.127.7.1" style="font-size:80%;">4.12</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.127.127.7.m1.1"><semantics id="S4.T1.127.127.7.m1.1a"><mo id="S4.T1.127.127.7.m1.1.1" mathsize="50%" xref="S4.T1.127.127.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.127.127.7.m1.1b"><csymbol cd="latexml" id="S4.T1.127.127.7.m1.1.1.cmml" xref="S4.T1.127.127.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.127.127.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.127.127.7.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.127.127.7.2" style="font-size:50%;">.01</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.128.128.8" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.128.128.8.1" style="font-size:80%;">4.42</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.128.128.8.m1.1"><semantics id="S4.T1.128.128.8.m1.1a"><mo id="S4.T1.128.128.8.m1.1.1" mathsize="50%" xref="S4.T1.128.128.8.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.128.128.8.m1.1b"><csymbol cd="latexml" id="S4.T1.128.128.8.m1.1.1.cmml" xref="S4.T1.128.128.8.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.128.128.8.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.128.128.8.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.128.128.8.2" style="font-size:50%;">.03</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.129.129.9" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.129.129.9.1" style="font-size:80%;">4.51</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.129.129.9.m1.1"><semantics id="S4.T1.129.129.9.m1.1a"><mo id="S4.T1.129.129.9.m1.1.1" mathsize="50%" xref="S4.T1.129.129.9.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.129.129.9.m1.1b"><csymbol cd="latexml" id="S4.T1.129.129.9.m1.1.1.cmml" xref="S4.T1.129.129.9.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.129.129.9.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.129.129.9.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.129.129.9.2" style="font-size:50%;">.04</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.138.138">
<td class="ltx_td ltx_align_left" id="S4.T1.130.130.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.130.130.1.1" style="font-size:80%;">PixArt-</span><math alttext="\Sigma" class="ltx_Math" display="inline" id="S4.T1.130.130.1.m1.1"><semantics id="S4.T1.130.130.1.m1.1a"><mi id="S4.T1.130.130.1.m1.1.1" mathsize="80%" mathvariant="normal" xref="S4.T1.130.130.1.m1.1.1.cmml">Σ</mi><annotation-xml encoding="MathML-Content" id="S4.T1.130.130.1.m1.1b"><ci id="S4.T1.130.130.1.m1.1.1.cmml" xref="S4.T1.130.130.1.m1.1.1">Σ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.130.130.1.m1.1c">\Sigma</annotation><annotation encoding="application/x-llamapun" id="S4.T1.130.130.1.m1.1d">roman_Σ</annotation></semantics></math><span class="ltx_text" id="S4.T1.130.130.1.2" style="font-size:80%;"> </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.130.130.1.3.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07699v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a><span class="ltx_text" id="S4.T1.130.130.1.4.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.138.138.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.138.138.10.1" style="font-size:80%;">DiT</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.138.138.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.138.138.11.1" style="font-size:80%;">610M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.138.138.12" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.138.138.12.1" style="font-size:80%;">VP</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.138.138.13" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.138.138.13.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.131.131.2" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.131.131.2.1" style="font-size:80%;">12.9</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.131.131.2.m1.1"><semantics id="S4.T1.131.131.2.m1.1a"><mo id="S4.T1.131.131.2.m1.1.1" mathsize="50%" xref="S4.T1.131.131.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.131.131.2.m1.1b"><csymbol cd="latexml" id="S4.T1.131.131.2.m1.1.1.cmml" xref="S4.T1.131.131.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.131.131.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.131.131.2.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.131.131.2.2" style="font-size:50%;">.02</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.132.132.3" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.132.132.3.1" style="font-size:80%;">11.3</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.132.132.3.m1.1"><semantics id="S4.T1.132.132.3.m1.1a"><mo id="S4.T1.132.132.3.m1.1.1" mathsize="50%" xref="S4.T1.132.132.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.132.132.3.m1.1b"><csymbol cd="latexml" id="S4.T1.132.132.3.m1.1.1.cmml" xref="S4.T1.132.132.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.132.132.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.132.132.3.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.132.132.3.2" style="font-size:50%;">.02</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.133.133.4" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.133.133.4.1" style="font-size:80%;">10.04</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.133.133.4.m1.1"><semantics id="S4.T1.133.133.4.m1.1a"><mo id="S4.T1.133.133.4.m1.1.1" mathsize="50%" xref="S4.T1.133.133.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.133.133.4.m1.1b"><csymbol cd="latexml" id="S4.T1.133.133.4.m1.1.1.cmml" xref="S4.T1.133.133.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.133.133.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.133.133.4.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.133.133.4.2" style="font-size:50%;">.03</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.134.134.5" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.134.134.5.1" style="font-size:80%;">9.19</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.134.134.5.m1.1"><semantics id="S4.T1.134.134.5.m1.1a"><mo id="S4.T1.134.134.5.m1.1.1" mathsize="50%" xref="S4.T1.134.134.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.134.134.5.m1.1b"><csymbol cd="latexml" id="S4.T1.134.134.5.m1.1.1.cmml" xref="S4.T1.134.134.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.134.134.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.134.134.5.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.134.134.5.2" style="font-size:50%;">.01</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.135.135.6" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.135.135.6.1" style="font-size:80%;">3.84</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.135.135.6.m1.1"><semantics id="S4.T1.135.135.6.m1.1a"><mo id="S4.T1.135.135.6.m1.1.1" mathsize="50%" xref="S4.T1.135.135.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.135.135.6.m1.1b"><csymbol cd="latexml" id="S4.T1.135.135.6.m1.1.1.cmml" xref="S4.T1.135.135.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.135.135.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.135.135.6.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.135.135.6.2" style="font-size:50%;">.04</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.136.136.7" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.136.136.7.1" style="font-size:80%;">4.24</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.136.136.7.m1.1"><semantics id="S4.T1.136.136.7.m1.1a"><mo id="S4.T1.136.136.7.m1.1.1" mathsize="50%" xref="S4.T1.136.136.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.136.136.7.m1.1b"><csymbol cd="latexml" id="S4.T1.136.136.7.m1.1.1.cmml" xref="S4.T1.136.136.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.136.136.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.136.136.7.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.136.136.7.2" style="font-size:50%;">.02</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.137.137.8" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.137.137.8.1" style="font-size:80%;">4.56</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.137.137.8.m1.1"><semantics id="S4.T1.137.137.8.m1.1a"><mo id="S4.T1.137.137.8.m1.1.1" mathsize="50%" xref="S4.T1.137.137.8.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.137.137.8.m1.1b"><csymbol cd="latexml" id="S4.T1.137.137.8.m1.1.1.cmml" xref="S4.T1.137.137.8.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.137.137.8.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.137.137.8.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.137.137.8.2" style="font-size:50%;">.01</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.138.138.9" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.138.138.9.1" style="font-size:80%;">4.70</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.138.138.9.m1.1"><semantics id="S4.T1.138.138.9.m1.1a"><mo id="S4.T1.138.138.9.m1.1.1" mathsize="50%" xref="S4.T1.138.138.9.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.138.138.9.m1.1b"><csymbol cd="latexml" id="S4.T1.138.138.9.m1.1.1.cmml" xref="S4.T1.138.138.9.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.138.138.9.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.138.138.9.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.138.138.9.2" style="font-size:50%;">.02</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.147.147">
<td class="ltx_td ltx_align_left" id="S4.T1.139.139.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.139.139.1.1" style="font-size:80%;">PixArt-</span><math alttext="\delta" class="ltx_Math" display="inline" id="S4.T1.139.139.1.m1.1"><semantics id="S4.T1.139.139.1.m1.1a"><mi id="S4.T1.139.139.1.m1.1.1" mathsize="80%" xref="S4.T1.139.139.1.m1.1.1.cmml">δ</mi><annotation-xml encoding="MathML-Content" id="S4.T1.139.139.1.m1.1b"><ci id="S4.T1.139.139.1.m1.1.1.cmml" xref="S4.T1.139.139.1.m1.1.1">𝛿</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.139.139.1.m1.1c">\delta</annotation><annotation encoding="application/x-llamapun" id="S4.T1.139.139.1.m1.1d">italic_δ</annotation></semantics></math><span class="ltx_text" id="S4.T1.139.139.1.2" style="font-size:80%;"> </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.139.139.1.3.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.07699v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a><span class="ltx_text" id="S4.T1.139.139.1.4.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.147.147.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.147.147.10.1" style="font-size:80%;">DiT</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.147.147.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.147.147.11.1" style="font-size:80%;">610M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.147.147.12" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.147.147.12.1" style="font-size:80%;">VP</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.147.147.13" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.147.147.13.1" style="font-size:80%;">1 Day</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.140.140.2" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.140.140.2.1" style="font-size:80%;">4.92</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.140.140.2.m1.1"><semantics id="S4.T1.140.140.2.m1.1a"><mo id="S4.T1.140.140.2.m1.1.1" mathsize="50%" xref="S4.T1.140.140.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.140.140.2.m1.1b"><csymbol cd="latexml" id="S4.T1.140.140.2.m1.1.1.cmml" xref="S4.T1.140.140.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.140.140.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.140.140.2.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.140.140.2.2" style="font-size:50%;">.07</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.141.141.3" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.141.141.3.1" style="font-size:80%;">4.76</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.141.141.3.m1.1"><semantics id="S4.T1.141.141.3.m1.1a"><mo id="S4.T1.141.141.3.m1.1.1" mathsize="50%" xref="S4.T1.141.141.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.141.141.3.m1.1b"><csymbol cd="latexml" id="S4.T1.141.141.3.m1.1.1.cmml" xref="S4.T1.141.141.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.141.141.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.141.141.3.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.141.141.3.2" style="font-size:50%;">.05</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.142.142.4" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.142.142.4.1" style="font-size:80%;">4.47</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.142.142.4.m1.1"><semantics id="S4.T1.142.142.4.m1.1a"><mo id="S4.T1.142.142.4.m1.1.1" mathsize="50%" xref="S4.T1.142.142.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.142.142.4.m1.1b"><csymbol cd="latexml" id="S4.T1.142.142.4.m1.1.1.cmml" xref="S4.T1.142.142.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.142.142.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.142.142.4.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.142.142.4.2" style="font-size:50%;">.09</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.143.143.5" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.143.143.5.1" style="font-size:80%;">4.10</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.143.143.5.m1.1"><semantics id="S4.T1.143.143.5.m1.1a"><mo id="S4.T1.143.143.5.m1.1.1" mathsize="50%" xref="S4.T1.143.143.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.143.143.5.m1.1b"><csymbol cd="latexml" id="S4.T1.143.143.5.m1.1.1.cmml" xref="S4.T1.143.143.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.143.143.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.143.143.5.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.143.143.5.2" style="font-size:50%;">.04</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.144.144.6" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.144.144.6.1" style="font-size:80%;">5.54</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.144.144.6.m1.1"><semantics id="S4.T1.144.144.6.m1.1a"><mo id="S4.T1.144.144.6.m1.1.1" mathsize="50%" xref="S4.T1.144.144.6.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.144.144.6.m1.1b"><csymbol cd="latexml" id="S4.T1.144.144.6.m1.1.1.cmml" xref="S4.T1.144.144.6.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.144.144.6.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.144.144.6.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.144.144.6.2" style="font-size:50%;">.06</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.145.145.7" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.145.145.7.1" style="font-size:80%;">5.70</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.145.145.7.m1.1"><semantics id="S4.T1.145.145.7.m1.1a"><mo id="S4.T1.145.145.7.m1.1.1" mathsize="50%" xref="S4.T1.145.145.7.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.145.145.7.m1.1b"><csymbol cd="latexml" id="S4.T1.145.145.7.m1.1.1.cmml" xref="S4.T1.145.145.7.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.145.145.7.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.145.145.7.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.145.145.7.2" style="font-size:50%;">.08</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.146.146.8" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.146.146.8.1" style="font-size:80%;">5.85</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.146.146.8.m1.1"><semantics id="S4.T1.146.146.8.m1.1a"><mo id="S4.T1.146.146.8.m1.1.1" mathsize="50%" xref="S4.T1.146.146.8.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.146.146.8.m1.1b"><csymbol cd="latexml" id="S4.T1.146.146.8.m1.1.1.cmml" xref="S4.T1.146.146.8.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.146.146.8.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.146.146.8.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.146.146.8.2" style="font-size:50%;">.03</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.147.147.9" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.T1.147.147.9.1" style="font-size:80%;">5.95</span><math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.147.147.9.m1.1"><semantics id="S4.T1.147.147.9.m1.1a"><mo id="S4.T1.147.147.9.m1.1.1" mathsize="50%" xref="S4.T1.147.147.9.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.147.147.9.m1.1b"><csymbol cd="latexml" id="S4.T1.147.147.9.m1.1.1.cmml" xref="S4.T1.147.147.9.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.147.147.9.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.147.147.9.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S4.T1.147.147.9.2" style="font-size:50%;">.09</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.155.155" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_left" id="S4.T1.155.155.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.155.155.9.1" style="font-size:80%;background-color:#F2F2F2;">PixArt-Ray (ours)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.155.155.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.155.155.10.1" style="font-size:80%;background-color:#F2F2F2;">DiT</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.155.155.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T1.155.155.11.1" style="font-size:80%;background-color:#F2F2F2;">610M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.155.155.12" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.155.155.12.1" style="font-size:80%;background-color:#F2F2F2;">Ray</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.155.155.13" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.155.155.13.1" style="font-size:80%;background-color:#F2F2F2;">1 Day</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.148.148.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.148.148.1.1" style="font-size:80%;background-color:#F2F2F2;">4.78<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.148.148.1.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S4.T1.148.148.1.1.m1.1a"><mo id="S4.T1.148.148.1.1.m1.1.1" mathbackground="#F2F2F2" mathsize="63%" xref="S4.T1.148.148.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.148.148.1.1.m1.1b"><csymbol cd="latexml" id="S4.T1.148.148.1.1.m1.1.1.cmml" xref="S4.T1.148.148.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.148.148.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.148.148.1.1.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_medium" id="S4.T1.148.148.1.1.1" style="font-size:63%;background-color:#F2F2F2;">.02</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.149.149.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.149.149.2.1" style="font-size:80%;background-color:#F2F2F2;">4.59<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.149.149.2.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S4.T1.149.149.2.1.m1.1a"><mo id="S4.T1.149.149.2.1.m1.1.1" mathbackground="#F2F2F2" mathsize="63%" xref="S4.T1.149.149.2.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.149.149.2.1.m1.1b"><csymbol cd="latexml" id="S4.T1.149.149.2.1.m1.1.1.cmml" xref="S4.T1.149.149.2.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.149.149.2.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.149.149.2.1.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_medium" id="S4.T1.149.149.2.1.1" style="font-size:63%;background-color:#F2F2F2;">.03</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.150.150.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.150.150.3.1" style="font-size:80%;background-color:#F2F2F2;">4.12<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.150.150.3.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S4.T1.150.150.3.1.m1.1a"><mo id="S4.T1.150.150.3.1.m1.1.1" mathbackground="#F2F2F2" mathsize="63%" xref="S4.T1.150.150.3.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.150.150.3.1.m1.1b"><csymbol cd="latexml" id="S4.T1.150.150.3.1.m1.1.1.cmml" xref="S4.T1.150.150.3.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.150.150.3.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.150.150.3.1.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_medium" id="S4.T1.150.150.3.1.1" style="font-size:63%;background-color:#F2F2F2;">.03</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.151.151.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.151.151.4.1" style="font-size:80%;background-color:#F2F2F2;">3.96<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.151.151.4.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S4.T1.151.151.4.1.m1.1a"><mo id="S4.T1.151.151.4.1.m1.1.1" mathbackground="#F2F2F2" mathsize="63%" xref="S4.T1.151.151.4.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.151.151.4.1.m1.1b"><csymbol cd="latexml" id="S4.T1.151.151.4.1.m1.1.1.cmml" xref="S4.T1.151.151.4.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.151.151.4.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.151.151.4.1.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_medium" id="S4.T1.151.151.4.1.1" style="font-size:63%;background-color:#F2F2F2;">.01</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.152.152.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.152.152.5.1" style="font-size:80%;background-color:#F2F2F2;">5.84<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.152.152.5.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S4.T1.152.152.5.1.m1.1a"><mo id="S4.T1.152.152.5.1.m1.1.1" mathbackground="#F2F2F2" mathsize="63%" xref="S4.T1.152.152.5.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.152.152.5.1.m1.1b"><csymbol cd="latexml" id="S4.T1.152.152.5.1.m1.1.1.cmml" xref="S4.T1.152.152.5.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.152.152.5.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.152.152.5.1.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_medium" id="S4.T1.152.152.5.1.1" style="font-size:63%;background-color:#F2F2F2;">.04</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.153.153.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.153.153.6.1" style="font-size:80%;background-color:#F2F2F2;">5.92<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.153.153.6.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S4.T1.153.153.6.1.m1.1a"><mo id="S4.T1.153.153.6.1.m1.1.1" mathbackground="#F2F2F2" mathsize="63%" xref="S4.T1.153.153.6.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.153.153.6.1.m1.1b"><csymbol cd="latexml" id="S4.T1.153.153.6.1.m1.1.1.cmml" xref="S4.T1.153.153.6.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.153.153.6.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.153.153.6.1.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_medium" id="S4.T1.153.153.6.1.1" style="font-size:63%;background-color:#F2F2F2;">.02</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.154.154.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.154.154.7.1" style="font-size:80%;background-color:#F2F2F2;">6.10<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.154.154.7.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S4.T1.154.154.7.1.m1.1a"><mo id="S4.T1.154.154.7.1.m1.1.1" mathbackground="#F2F2F2" mathsize="63%" xref="S4.T1.154.154.7.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.154.154.7.1.m1.1b"><csymbol cd="latexml" id="S4.T1.154.154.7.1.m1.1.1.cmml" xref="S4.T1.154.154.7.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.154.154.7.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.154.154.7.1.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_medium" id="S4.T1.154.154.7.1.1" style="font-size:63%;background-color:#F2F2F2;">.03</span></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.155.155.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.155.155.8.1" style="font-size:80%;background-color:#F2F2F2;">6.17<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.155.155.8.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S4.T1.155.155.8.1.m1.1a"><mo id="S4.T1.155.155.8.1.m1.1.1" mathbackground="#F2F2F2" mathsize="63%" xref="S4.T1.155.155.8.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.155.155.8.1.m1.1b"><csymbol cd="latexml" id="S4.T1.155.155.8.1.m1.1.1.cmml" xref="S4.T1.155.155.8.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.155.155.8.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.155.155.8.1.m1.1d">±</annotation></semantics></math><span class="ltx_text ltx_font_medium" id="S4.T1.155.155.8.1.1" style="font-size:63%;background-color:#F2F2F2;">.03</span></span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different noise matching methods used in diffusion models, specifically focusing on the SD15 and SDXL architectures.  The comparison uses two sampling steps and evaluates various metrics including FID (Fréchet Inception Distance), CLIP (Contrastive Language–Image Pre-training) score, and others to assess the quality of generated images.  It shows how these different methods compare in terms of image quality and efficiency.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative comparisons on SD15, SDXL architectures between different noisy pair matching methods (two step).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.2">
<tr class="ltx_tr" id="S4.T2.2.1">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T2.2.1.1" style="width:71.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.1.1.1">
<span class="ltx_p" id="S4.T2.2.1.1.1.1"><span class="ltx_text ltx_font_bold ltx_inline-block" id="S4.T2.2.1.1.1.1.1" style="font-size:90%;width:71.1pt;">Model</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T2.2.1.2" style="width:17.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.1.2.1">
<span class="ltx_p" id="S4.T2.2.1.2.1.1"><span class="ltx_text ltx_font_bold ltx_inline-block" id="S4.T2.2.1.2.1.1.1" style="font-size:90%;width:11.4pt;">Type</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T2.2.1.3" style="width:11.4pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.1.3.1">
<span class="ltx_p" id="S4.T2.2.1.3.1.1"><span class="ltx_text ltx_font_bold ltx_inline-block" id="S4.T2.2.1.3.1.1.1" style="font-size:90%;width:11.4pt;">FID</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T2.2.1.4" style="width:19.9pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.1.4.1">
<span class="ltx_p" id="S4.T2.2.1.4.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.1.4.1.1.1" style="font-size:90%;width:19.9pt;"><span class="ltx_text" id="S4.T2.2.1.4.1.1.1.1"></span> <span class="ltx_text" id="S4.T2.2.1.4.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.2.1.4.1.1.1.2.1">
<span class="ltx_tr" id="S4.T2.2.1.4.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.2.1.4.1.1.1.2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.4.1.1.1.2.1.1.1.1">CLIP</span></span></span>
<span class="ltx_tr" id="S4.T2.2.1.4.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.2.1.4.1.1.1.2.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.4.1.1.1.2.1.2.1.1">Score</span></span></span>
</span></span> <span class="ltx_text" id="S4.T2.2.1.4.1.1.1.3"></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T2.2.1.5" style="width:17.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.1.5.1">
<span class="ltx_p" id="S4.T2.2.1.5.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.1.5.1.1.1" style="font-size:90%;width:17.1pt;"><span class="ltx_text" id="S4.T2.2.1.5.1.1.1.1"></span> <span class="ltx_text" id="S4.T2.2.1.5.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.2.1.5.1.1.1.2.1">
<span class="ltx_tr" id="S4.T2.2.1.5.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.2.1.5.1.1.1.2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.5.1.1.1.2.1.1.1.1">Aes</span></span></span>
<span class="ltx_tr" id="S4.T2.2.1.5.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.2.1.5.1.1.1.2.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.5.1.1.1.2.1.2.1.1">Score</span></span></span>
</span></span> <span class="ltx_text" id="S4.T2.2.1.5.1.1.1.3"></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T2.2.1.6" style="width:22.8pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.1.6.1">
<span class="ltx_p" id="S4.T2.2.1.6.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.1.6.1.1.1" style="font-size:90%;width:22.8pt;"><span class="ltx_text" id="S4.T2.2.1.6.1.1.1.1"></span> <span class="ltx_text" id="S4.T2.2.1.6.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.2.1.6.1.1.1.2.1">
<span class="ltx_tr" id="S4.T2.2.1.6.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.2.1.6.1.1.1.2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.6.1.1.1.2.1.1.1.1">Image</span></span></span>
<span class="ltx_tr" id="S4.T2.2.1.6.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.2.1.6.1.1.1.2.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.6.1.1.1.2.1.2.1.1">Reward</span></span></span>
</span></span> <span class="ltx_text" id="S4.T2.2.1.6.1.1.1.3"></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T2.2.1.7" style="width:21.3pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.1.7.1">
<span class="ltx_p" id="S4.T2.2.1.7.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.1.7.1.1.1" style="font-size:90%;width:21.3pt;"><span class="ltx_text" id="S4.T2.2.1.7.1.1.1.1"></span> <span class="ltx_text" id="S4.T2.2.1.7.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.2.1.7.1.1.1.2.1">
<span class="ltx_tr" id="S4.T2.2.1.7.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.2.1.7.1.1.1.2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.7.1.1.1.2.1.1.1.1">Pick</span></span></span>
<span class="ltx_tr" id="S4.T2.2.1.7.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.2.1.7.1.1.1.2.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.7.1.1.1.2.1.2.1.1">Score</span></span></span>
</span></span> <span class="ltx_text" id="S4.T2.2.1.7.1.1.1.3"></span></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T2.2.2.1" style="width:71.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.2.1.1">
<span class="ltx_p" id="S4.T2.2.2.1.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.2.1.1.1.1" style="font-size:90%;width:71.1pt;color:#808080;">SD15-Base (25 step)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T2.2.2.2" style="width:17.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.2.2.1">
<span class="ltx_p" id="S4.T2.2.2.2.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.2.2.1.1.1" style="font-size:90%;width:17.1pt;color:#808080;">UNet</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T2.2.2.3" style="width:11.4pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.2.3.1">
<span class="ltx_p" id="S4.T2.2.2.3.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.2.3.1.1.1" style="font-size:90%;width:11.4pt;color:#808080;">5.08</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T2.2.2.4" style="width:19.9pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.2.4.1">
<span class="ltx_p" id="S4.T2.2.2.4.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.2.4.1.1.1" style="font-size:90%;width:19.9pt;color:#808080;">31.16</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T2.2.2.5" style="width:17.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.2.5.1">
<span class="ltx_p" id="S4.T2.2.2.5.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.2.5.1.1.1" style="font-size:90%;width:17.1pt;color:#808080;">5.85</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T2.2.2.6" style="width:22.8pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.2.6.1">
<span class="ltx_p" id="S4.T2.2.2.6.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.2.6.1.1.1" style="font-size:90%;width:22.8pt;color:#808080;">0.193</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T2.2.2.7" style="width:21.3pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.2.7.1">
<span class="ltx_p" id="S4.T2.2.2.7.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.2.7.1.1.1" style="font-size:90%;width:21.3pt;color:#808080;">0.215</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.3">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.3.1" style="width:71.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.3.1.1">
<span class="ltx_p" id="S4.T2.2.3.1.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.3.1.1.1.1" style="font-size:90%;width:71.1pt;">SD15-ReFlow <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.07699v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.3.2" style="width:17.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.3.2.1">
<span class="ltx_p" id="S4.T2.2.3.2.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.3.2.1.1.1" style="font-size:90%;width:17.1pt;">UNet</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.3.3" style="width:11.4pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.3.3.1">
<span class="ltx_p" id="S4.T2.2.3.3.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.3.3.1.1.1" style="font-size:90%;width:11.4pt;">5.92</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.3.4" style="width:19.9pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.3.4.1">
<span class="ltx_p" id="S4.T2.2.3.4.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.3.4.1.1.1" style="font-size:90%;width:19.9pt;">26.63</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.3.5" style="width:17.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.3.5.1">
<span class="ltx_p" id="S4.T2.2.3.5.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.3.5.1.1.1" style="font-size:90%;width:17.1pt;">5.47</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.3.6" style="width:22.8pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.3.6.1">
<span class="ltx_p" id="S4.T2.2.3.6.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.3.6.1.1.1" style="font-size:90%;width:22.8pt;">0.175</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.3.7" style="width:21.3pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.3.7.1">
<span class="ltx_p" id="S4.T2.2.3.7.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.3.7.1.1.1" style="font-size:90%;width:21.3pt;">0.225</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.4">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.4.1" style="width:71.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.4.1.1">
<span class="ltx_p" id="S4.T2.2.4.1.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.4.1.1.1.1" style="font-size:90%;width:71.1pt;">SD15-PeRFlow <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.07699v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a>]</cite></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.4.2" style="width:17.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.4.2.1">
<span class="ltx_p" id="S4.T2.2.4.2.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.4.2.1.1.1" style="font-size:90%;width:17.1pt;">UNet</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.4.3" style="width:11.4pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.4.3.1">
<span class="ltx_p" id="S4.T2.2.4.3.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.4.3.1.1.1" style="font-size:90%;width:11.4pt;">5.56</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.4.4" style="width:19.9pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.4.4.1">
<span class="ltx_p" id="S4.T2.2.4.4.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.4.4.1.1.1" style="font-size:90%;width:19.9pt;">28.77</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.4.5" style="width:17.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.4.5.1">
<span class="ltx_p" id="S4.T2.2.4.5.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.4.5.1.1.1" style="font-size:90%;width:17.1pt;">5.61</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.4.6" style="width:22.8pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.4.6.1">
<span class="ltx_p" id="S4.T2.2.4.6.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.4.6.1.1.1" style="font-size:90%;width:22.8pt;">0.137</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.4.7" style="width:21.3pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.4.7.1">
<span class="ltx_p" id="S4.T2.2.4.7.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.4.7.1.1.1" style="font-size:90%;width:21.3pt;">0.225</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.5">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.5.1" style="width:71.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.5.1.1">
<span class="ltx_p" id="S4.T2.2.5.1.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.5.1.1.1.1" style="font-size:90%;width:71.1pt;">SD15-ReDiff <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.07699v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a>]</cite></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.5.2" style="width:17.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.5.2.1">
<span class="ltx_p" id="S4.T2.2.5.2.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.5.2.1.1.1" style="font-size:90%;width:17.1pt;">UNet</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.5.3" style="width:11.4pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.5.3.1">
<span class="ltx_p" id="S4.T2.2.5.3.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.5.3.1.1.1" style="font-size:90%;width:11.4pt;">5.69</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.5.4" style="width:19.9pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.5.4.1">
<span class="ltx_p" id="S4.T2.2.5.4.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.5.4.1.1.1" style="font-size:90%;width:19.9pt;">30.31</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.5.5" style="width:17.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.5.5.1">
<span class="ltx_p" id="S4.T2.2.5.5.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.5.5.1.1.1" style="font-size:90%;width:17.1pt;">5.41</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.5.6" style="width:22.8pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.5.6.1">
<span class="ltx_p" id="S4.T2.2.5.6.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.5.6.1.1.1" style="font-size:90%;width:22.8pt;">0.184</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.5.7" style="width:21.3pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.5.7.1">
<span class="ltx_p" id="S4.T2.2.5.7.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.5.7.1.1.1" style="font-size:90%;width:21.3pt;">0.204</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.6">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.6.1" style="width:71.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.6.1.1">
<span class="ltx_p" id="S4.T2.2.6.1.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.6.1.1.1.1" style="font-size:90%;width:71.1pt;">SD15-InstaFlow <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.07699v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a>]</cite></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.6.2" style="width:17.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.6.2.1">
<span class="ltx_p" id="S4.T2.2.6.2.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.6.2.1.1.1" style="font-size:90%;width:17.1pt;">LoRA</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.6.3" style="width:11.4pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.6.3.1">
<span class="ltx_p" id="S4.T2.2.6.3.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.6.3.1.1.1" style="font-size:90%;width:11.4pt;">6.10</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.6.4" style="width:19.9pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.6.4.1">
<span class="ltx_p" id="S4.T2.2.6.4.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.6.4.1.1.1" style="font-size:90%;width:19.9pt;">29.45</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.6.5" style="width:17.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.6.5.1">
<span class="ltx_p" id="S4.T2.2.6.5.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.6.5.1.1.1" style="font-size:90%;width:17.1pt;">5.76</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.6.6" style="width:22.8pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.6.6.1">
<span class="ltx_p" id="S4.T2.2.6.6.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.6.6.1.1.1" style="font-size:90%;width:22.8pt;">0.128</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.6.7" style="width:21.3pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.6.7.1">
<span class="ltx_p" id="S4.T2.2.6.7.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.6.7.1.1.1" style="font-size:90%;width:21.3pt;">0.223</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.7" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.7.1" style="width:71.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.7.1.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S4.T2.2.7.1.1.1"><span class="ltx_text ltx_font_bold ltx_inline-block" id="S4.T2.2.7.1.1.1.1" style="font-size:90%;width:71.1pt;">SD15-Ray (ours)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.7.2" style="width:17.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.7.2.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S4.T2.2.7.2.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.7.2.1.1.1" style="font-size:90%;width:17.1pt;">LoRA</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.7.3" style="width:11.4pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.7.3.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S4.T2.2.7.3.1.1"><span class="ltx_text ltx_font_bold ltx_inline-block" id="S4.T2.2.7.3.1.1.1" style="font-size:90%;width:11.4pt;">5.10</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.7.4" style="width:19.9pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.7.4.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S4.T2.2.7.4.1.1"><span class="ltx_text ltx_font_bold ltx_inline-block" id="S4.T2.2.7.4.1.1.1" style="font-size:90%;width:19.9pt;">31.94</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.7.5" style="width:17.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.7.5.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S4.T2.2.7.5.1.1"><span class="ltx_text ltx_font_bold ltx_inline-block" id="S4.T2.2.7.5.1.1.1" style="font-size:90%;width:17.1pt;">5.92</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.7.6" style="width:22.8pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.7.6.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S4.T2.2.7.6.1.1"><span class="ltx_text ltx_font_bold ltx_inline-block" id="S4.T2.2.7.6.1.1.1" style="font-size:90%;width:22.8pt;">0.205</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.7.7" style="width:21.3pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.7.7.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S4.T2.2.7.7.1.1"><span class="ltx_text ltx_font_bold ltx_inline-block" id="S4.T2.2.7.7.1.1.1" style="font-size:90%;width:21.3pt;">0.228</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.8">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T2.2.8.1" style="width:71.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.8.1.1">
<span class="ltx_p" id="S4.T2.2.8.1.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.8.1.1.1.1" style="font-size:90%;width:71.1pt;color:#808080;">SDXL-Base (25 step)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T2.2.8.2" style="width:17.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.8.2.1">
<span class="ltx_p" id="S4.T2.2.8.2.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.8.2.1.1.1" style="font-size:90%;width:17.1pt;color:#808080;">UNet</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T2.2.8.3" style="width:11.4pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.8.3.1">
<span class="ltx_p" id="S4.T2.2.8.3.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.8.3.1.1.1" style="font-size:90%;width:11.4pt;color:#808080;">4.28</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T2.2.8.4" style="width:19.9pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.8.4.1">
<span class="ltx_p" id="S4.T2.2.8.4.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.8.4.1.1.1" style="font-size:90%;width:19.9pt;color:#808080;">35.15</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T2.2.8.5" style="width:17.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.8.5.1">
<span class="ltx_p" id="S4.T2.2.8.5.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.8.5.1.1.1" style="font-size:90%;width:17.1pt;color:#808080;">5.86</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T2.2.8.6" style="width:22.8pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.8.6.1">
<span class="ltx_p" id="S4.T2.2.8.6.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.8.6.1.1.1" style="font-size:90%;width:22.8pt;color:#808080;">0.905</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T2.2.8.7" style="width:21.3pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.8.7.1">
<span class="ltx_p" id="S4.T2.2.8.7.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.8.7.1.1.1" style="font-size:90%;width:21.3pt;color:#808080;">0.222</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.9">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.9.1" style="width:71.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.9.1.1">
<span class="ltx_p" id="S4.T2.2.9.1.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.9.1.1.1.1" style="font-size:90%;width:71.1pt;">SDXL-ReFlow <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.07699v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.9.2" style="width:17.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.9.2.1">
<span class="ltx_p" id="S4.T2.2.9.2.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.9.2.1.1.1" style="font-size:90%;width:17.1pt;">UNet</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.9.3" style="width:11.4pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.9.3.1">
<span class="ltx_p" id="S4.T2.2.9.3.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.9.3.1.1.1" style="font-size:90%;width:11.4pt;">4.95</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.9.4" style="width:19.9pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.9.4.1">
<span class="ltx_p" id="S4.T2.2.9.4.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.9.4.1.1.1" style="font-size:90%;width:19.9pt;">31.95</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.9.5" style="width:17.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.9.5.1">
<span class="ltx_p" id="S4.T2.2.9.5.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.9.5.1.1.1" style="font-size:90%;width:17.1pt;">5.84</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.9.6" style="width:22.8pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.9.6.1">
<span class="ltx_p" id="S4.T2.2.9.6.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.9.6.1.1.1" style="font-size:90%;width:22.8pt;">0.624</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.9.7" style="width:21.3pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.9.7.1">
<span class="ltx_p" id="S4.T2.2.9.7.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.9.7.1.1.1" style="font-size:90%;width:21.3pt;">0.235</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.10">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.10.1" style="width:71.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.10.1.1">
<span class="ltx_p" id="S4.T2.2.10.1.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.10.1.1.1.1" style="font-size:90%;width:71.1pt;">SDXL-PeRFlow <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.07699v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a>]</cite></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.10.2" style="width:17.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.10.2.1">
<span class="ltx_p" id="S4.T2.2.10.2.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.10.2.1.1.1" style="font-size:90%;width:17.1pt;">UNet</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.10.3" style="width:11.4pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.10.3.1">
<span class="ltx_p" id="S4.T2.2.10.3.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.10.3.1.1.1" style="font-size:90%;width:11.4pt;">4.99</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.10.4" style="width:19.9pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.10.4.1">
<span class="ltx_p" id="S4.T2.2.10.4.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.10.4.1.1.1" style="font-size:90%;width:19.9pt;">30.21</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.10.5" style="width:17.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.10.5.1">
<span class="ltx_p" id="S4.T2.2.10.5.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.10.5.1.1.1" style="font-size:90%;width:17.1pt;">5.62</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.10.6" style="width:22.8pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.10.6.1">
<span class="ltx_p" id="S4.T2.2.10.6.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.10.6.1.1.1" style="font-size:90%;width:22.8pt;">0.630</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.10.7" style="width:21.3pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.10.7.1">
<span class="ltx_p" id="S4.T2.2.10.7.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.10.7.1.1.1" style="font-size:90%;width:21.3pt;">0.233</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.11">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.11.1" style="width:71.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.11.1.1">
<span class="ltx_p" id="S4.T2.2.11.1.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.11.1.1.1.1" style="font-size:90%;width:71.1pt;">SDXL-ReDiff <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.07699v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a>]</cite></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.11.2" style="width:17.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.11.2.1">
<span class="ltx_p" id="S4.T2.2.11.2.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.11.2.1.1.1" style="font-size:90%;width:17.1pt;">UNet</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.11.3" style="width:11.4pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.11.3.1">
<span class="ltx_p" id="S4.T2.2.11.3.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.11.3.1.1.1" style="font-size:90%;width:11.4pt;">4.51</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.11.4" style="width:19.9pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.11.4.1">
<span class="ltx_p" id="S4.T2.2.11.4.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.11.4.1.1.1" style="font-size:90%;width:19.9pt;">34.02</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.11.5" style="width:17.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.11.5.1">
<span class="ltx_p" id="S4.T2.2.11.5.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.11.5.1.1.1" style="font-size:90%;width:17.1pt;">5.24</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.11.6" style="width:22.8pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.11.6.1">
<span class="ltx_p" id="S4.T2.2.11.6.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.11.6.1.1.1" style="font-size:90%;width:22.8pt;">0.785</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.11.7" style="width:21.3pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.11.7.1">
<span class="ltx_p" id="S4.T2.2.11.7.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.11.7.1.1.1" style="font-size:90%;width:21.3pt;">0.220</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.12">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.12.1" style="width:71.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.12.1.1">
<span class="ltx_p" id="S4.T2.2.12.1.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.12.1.1.1.1" style="font-size:90%;width:71.1pt;">SDXL-InstaFlow <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.07699v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a>]</cite></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.12.2" style="width:17.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.12.2.1">
<span class="ltx_p" id="S4.T2.2.12.2.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.12.2.1.1.1" style="font-size:90%;width:17.1pt;">LoRA</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.12.3" style="width:11.4pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.12.3.1">
<span class="ltx_p" id="S4.T2.2.12.3.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.12.3.1.1.1" style="font-size:90%;width:11.4pt;">4.69</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.12.4" style="width:19.9pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.12.4.1">
<span class="ltx_p" id="S4.T2.2.12.4.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.12.4.1.1.1" style="font-size:90%;width:19.9pt;">30.81</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.12.5" style="width:17.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.12.5.1">
<span class="ltx_p" id="S4.T2.2.12.5.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.12.5.1.1.1" style="font-size:90%;width:17.1pt;">5.57</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.12.6" style="width:22.8pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.12.6.1">
<span class="ltx_p" id="S4.T2.2.12.6.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.12.6.1.1.1" style="font-size:90%;width:22.8pt;">0.442</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T2.2.12.7" style="width:21.3pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.12.7.1">
<span class="ltx_p" id="S4.T2.2.12.7.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.12.7.1.1.1" style="font-size:90%;width:21.3pt;">0.240</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.13" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T2.2.13.1" style="width:71.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.13.1.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S4.T2.2.13.1.1.1"><span class="ltx_text ltx_font_bold ltx_inline-block" id="S4.T2.2.13.1.1.1.1" style="font-size:90%;width:71.1pt;">SDXL-Ray (ours)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T2.2.13.2" style="width:17.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.13.2.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S4.T2.2.13.2.1.1"><span class="ltx_text ltx_inline-block" id="S4.T2.2.13.2.1.1.1" style="font-size:90%;width:17.1pt;">LoRA</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T2.2.13.3" style="width:11.4pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.13.3.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S4.T2.2.13.3.1.1"><span class="ltx_text ltx_font_bold ltx_inline-block" id="S4.T2.2.13.3.1.1.1" style="font-size:90%;width:11.4pt;">4.15</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T2.2.13.4" style="width:19.9pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.13.4.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S4.T2.2.13.4.1.1"><span class="ltx_text ltx_font_bold ltx_inline-block" id="S4.T2.2.13.4.1.1.1" style="font-size:90%;width:19.9pt;">34.39</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T2.2.13.5" style="width:17.1pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.13.5.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S4.T2.2.13.5.1.1"><span class="ltx_text ltx_font_bold ltx_inline-block" id="S4.T2.2.13.5.1.1.1" style="font-size:90%;width:17.1pt;">5.96</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T2.2.13.6" style="width:22.8pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.13.6.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S4.T2.2.13.6.1.1"><span class="ltx_text ltx_font_bold ltx_inline-block" id="S4.T2.2.13.6.1.1.1" style="font-size:90%;width:22.8pt;">1.021</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T2.2.13.7" style="width:21.3pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.13.7.1" style="background-color:#F2F2F2;">
<span class="ltx_p" id="S4.T2.2.13.7.1.1"><span class="ltx_text ltx_font_bold ltx_inline-block" id="S4.T2.2.13.7.1.1.1" style="font-size:90%;width:21.3pt;">0.251</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies conducted to evaluate the impact of individual components of the RayFlow model on its performance.  The experiments were run using two sampling steps.  The table compares the model's performance with different combinations of the Time Sampler (To) and the RayFlow trajectory (ϵμ). The results are shown across multiple evaluation metrics, including FID, CLIP, image reward, and aesthetic scores, on three different datasets: COCO-5k, ImageNet, and PixArt-DiT.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance (two steps) of ablation studies under different settings. ϵμsubscriptbold-italic-ϵ𝜇\bm{\epsilon}_{\mu}bold_italic_ϵ start_POSTSUBSCRIPT italic_μ end_POSTSUBSCRIPT represents the RayFlow.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.07699/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07699/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07699/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07699/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07699/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07699/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07699/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07699/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07699/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07699/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07699/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07699/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07699/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07699/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07699/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07699/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07699/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07699/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07699/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07699/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}