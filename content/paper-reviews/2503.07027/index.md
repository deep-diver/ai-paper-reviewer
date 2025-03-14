---
title: "EasyControl: Adding Efficient and Flexible Control for Diffusion Transformer"
summary: "EasyControl: Efficient & flexible control for Diffusion Transformers, enabling sophisticated image generation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Tiamat AI",]
showSummary: true
date: 2025-03-10
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.07027 {{< /keyword >}}
{{< keyword icon="writer" >}} Yuxuan Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.07027" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.07027" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.07027/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Recent methods in image diffusion models provide effective spatial and subject control. However, Diffusion Transformers(DiT) struggle with efficient control. The work addresses DiT's limitations by introducing EasyControl, a framework unifying condition-guided diffusion transformers with efficiency and flexibility. Key innovations include a lightweight Condition Injection LoRA Module for processing conditional signals, a Position-Aware Training Paradigm to standardize input, and latency reduction. 



EasyControl uses lightweight modules for efficient conditional signal processing, enabling plug-and-play functionality. Position-Aware Training standardizes inputs, generating images with flexible resolutions. Introducing Causal Attention with KV Cache significantly reduces synthesis latency. Experiments show EasyControl excels in various applications, demonstrating efficiency and flexibility. EasyControl's innovations establish a new paradigm, showcasing superior efficiency and flexibility in conditional generation.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces a lightweight Condition Injection LoRA Module for efficient conditional signal processing. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Presents a Position-Aware Training Paradigm for flexible resolution and aspect ratio handling. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Integrates Causal Attention with KV Cache for reduced latency and improved computational efficiency. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
EasyControl offers efficient and flexible control for DiT models, enabling high-quality image generation across diverse tasks. This innovation boosts controllability and opens new avenues for conditional image generation research.

------
#### Visual Insights



![](https://arxiv.org/html/2503.07027/extracted/6266306/images/teaser.jpg)

> 🔼 EasyControl is a lightweight, efficient, and versatile plug-and-play module designed for diffusion transformers.  It offers both single-condition control (spatial and subject/face) and impressive zero-shot multi-condition generalization.  Even after training on single conditions, it can effectively manage sophisticated multi-condition scenarios, such as combining color and edge information or subject and pose data, demonstrating its flexibility and power.  The figure showcases examples of these capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 1: Our proposed framework, EasyControl, is a lightweight and efficient plug-and-play module specifically designed for diffusion transformer. This solution not only enables spatial control and subject/face control under single conditions but also demonstrates remarkable zero-shot multi-condition generalization capability after single-condition training, achieving sophisticated multi-condition control.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T1.2.2.3" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T1.2.2.3.1" style="font-size:90%;">Cond.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T1.2.2.4" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T1.2.2.4.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T1.1.1.1" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T1.1.1.1.1" style="font-size:90%;">Time(s) <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.2.2" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T1.2.2.2.1" style="font-size:90%;">Params<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.1.m1.1"><semantics id="S4.T1.2.2.2.1.m1.1a"><mo id="S4.T1.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T1.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.1.m1.1b"><ci id="S4.T1.2.2.2.1.m1.1.1.cmml" xref="S4.T1.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.2.3.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T1.2.3.1.1" style="padding-left:4.3pt;padding-right:4.3pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.2.3.1.2" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T1.2.3.1.2.1" style="font-size:90%;">ControlNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.2.3.1.3" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.2.3.1.3.1" style="font-size:90%;">16.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.3.1.4" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T1.2.3.1.4.1" style="font-size:90%;">3B</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.4.2">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S4.T1.2.4.2.1" style="padding-left:4.3pt;padding-right:4.3pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.4.2.2" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T1.2.4.2.2.1" style="font-size:90%;">OminiControl</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.4.2.3" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T1.2.4.2.3.1" style="font-size:90%;">31.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.4.2.4" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T1.2.4.2.4.1" style="font-size:90%;">15M</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.5.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.2.5.3.1" style="padding-left:4.3pt;padding-right:4.3pt;">
<span class="ltx_ERROR undefined" id="S4.T1.2.5.3.1.1">\cdashline</span><span class="ltx_text" id="S4.T1.2.5.3.1.2" style="font-size:90%;">2-4
</span><span class="ltx_text" id="S4.T1.2.5.3.1.3" style="font-size:80%;">Single</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.5.3.2" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T1.2.5.3.2.1" style="font-size:90%;">Ours(w.o. PATP&amp;KVCache)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.5.3.3" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T1.2.5.3.3.1" style="font-size:90%;">38.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.5.3.4" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T1.2.5.3.4.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.6.4">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S4.T1.2.6.4.1" style="padding-left:4.3pt;padding-right:4.3pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.6.4.2" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T1.2.6.4.2.1" style="font-size:90%;">Ours(w.o. KVCache)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.6.4.3" style="padding-left:4.3pt;padding-right:4.3pt;">
<span class="ltx_text" id="S4.T1.2.6.4.3.1" style="font-size:90%;">22.4</span><span class="ltx_text" id="S4.T1.2.6.4.3.2" style="font-size:90%;color:#FF0000;">(-42%)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.6.4.4" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T1.2.6.4.4.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.7.5">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S4.T1.2.7.5.1" style="padding-left:4.3pt;padding-right:4.3pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.7.5.2" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T1.2.7.5.2.1" style="font-size:90%;">Ours(w.o. PATP)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.7.5.3" style="padding-left:4.3pt;padding-right:4.3pt;">
<span class="ltx_text" id="S4.T1.2.7.5.3.1" style="font-size:90%;">25.0</span><span class="ltx_text" id="S4.T1.2.7.5.3.2" style="font-size:90%;color:#FF0000;">(-36%)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.7.5.4" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T1.2.7.5.4.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.8.6">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S4.T1.2.8.6.1" style="padding-left:4.3pt;padding-right:4.3pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.8.6.2" style="background-color:#D9E5EF;padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T1.2.8.6.2.1" style="font-size:90%;background-color:#D9E5EF;">Ours(Full)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.8.6.3" style="background-color:#D9E5EF;padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.8.6.3.1" style="font-size:90%;background-color:#D9E5EF;">16.3<span class="ltx_text ltx_font_medium" id="S4.T1.2.8.6.3.1.1" style="color:#FF0000;background-color:#D9E5EF;">(-58%)</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.8.6.4" style="background-color:#D9E5EF;padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.8.6.4.1" style="font-size:90%;background-color:#D9E5EF;">15M</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.9.7">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.2.9.7.1" style="padding-left:4.3pt;padding-right:4.3pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.9.7.2" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T1.2.9.7.2.1" style="font-size:90%;">ControlNet+IPA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.9.7.3" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.9.7.3.1" style="font-size:90%;">16.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.9.7.4" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T1.2.9.7.4.1" style="font-size:90%;">4B</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.10.8">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S4.T1.2.10.8.1" style="padding-left:4.3pt;padding-right:4.3pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.10.8.2" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T1.2.10.8.2.1" style="font-size:90%;">Multi-ControlNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.10.8.3" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T1.2.10.8.3.1" style="font-size:90%;">20.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.10.8.4" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T1.2.10.8.4.1" style="font-size:90%;">6B</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.11.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.2.11.9.1" style="padding-left:4.3pt;padding-right:4.3pt;">
<span class="ltx_ERROR undefined" id="S4.T1.2.11.9.1.1">\cdashline</span><span class="ltx_text" id="S4.T1.2.11.9.1.2" style="font-size:90%;">2-4
</span><span class="ltx_text" id="S4.T1.2.11.9.1.3" style="font-size:80%;">Double</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.11.9.2" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T1.2.11.9.2.1" style="font-size:90%;">Ours(w.o. PATP&amp;KVCache)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.11.9.3" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T1.2.11.9.3.1" style="font-size:90%;">72.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.11.9.4" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T1.2.11.9.4.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.12.10">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S4.T1.2.12.10.1" style="padding-left:4.3pt;padding-right:4.3pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.12.10.2" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T1.2.12.10.2.1" style="font-size:90%;">Ours(w.o. KVCache)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.12.10.3" style="padding-left:4.3pt;padding-right:4.3pt;">
<span class="ltx_text" id="S4.T1.2.12.10.3.1" style="font-size:90%;">29.9</span><span class="ltx_text" id="S4.T1.2.12.10.3.2" style="font-size:90%;color:#FF0000;">(-59%)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.12.10.4" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T1.2.12.10.4.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.13.11">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S4.T1.2.13.11.1" style="padding-left:4.3pt;padding-right:4.3pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.13.11.2" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T1.2.13.11.2.1" style="font-size:90%;">Ours(w.o. PATP)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.13.11.3" style="padding-left:4.3pt;padding-right:4.3pt;">
<span class="ltx_text" id="S4.T1.2.13.11.3.1" style="font-size:90%;">36.7</span><span class="ltx_text" id="S4.T1.2.13.11.3.2" style="font-size:90%;color:#FF0000;">(-50%)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.13.11.4" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T1.2.13.11.4.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.14.12">
<th class="ltx_td ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T1.2.14.12.1" style="padding-left:4.3pt;padding-right:4.3pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.2.14.12.2" style="background-color:#D9E5EF;padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text" id="S4.T1.2.14.12.2.1" style="font-size:90%;background-color:#D9E5EF;">Ours(Full)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.2.14.12.3" style="background-color:#D9E5EF;padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.2.14.12.3.1" style="font-size:90%;background-color:#D9E5EF;">18.3<span class="ltx_text" id="S4.T1.2.14.12.3.1.1" style="color:#FF0000;background-color:#D9E5EF;">(-75%)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.14.12.4" style="background-color:#D9E5EF;padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.14.12.4.1" style="font-size:90%;background-color:#D9E5EF;">30M</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of the computational efficiency of EasyControl against several baseline methods for conditional image generation.  The efficiency is evaluated by measuring the inference time (in seconds) required to generate a 1024x1024 resolution image using 25 denoising steps.  The comparison includes EasyControl with several ablated versions (removing key components like the Position-Aware Training Paradigm and KV Cache), as well as well-established methods such as ControlNet, OminiControl, and ControlNet combined with other modules like IP-Adapter and Multi-ControlNet.  Importantly, the parameter counts reported in the table only reflect the additional parameters introduced by each method, excluding the parameters of the pre-trained base diffusion model. This allows for a fairer comparison of the efficiency gains achieved by each method.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative efficiency comparison with baseline methods and different settings. The inference time is calculated when generating a 1024×\times×1024 resolution image with 25 denoising steps. The parameters refer exclusively to those of the additional module, excluding the parameters of the base model.
> </details>





### In-depth insights


#### DiT Control Gap
The 'DiT Control Gap' likely refers to the challenge of effectively controlling Diffusion Transformer (DiT) models compared to UNet-based diffusion models. **DiTs struggle with efficient and flexible control**, particularly in areas like spatial control, subject manipulation, and multi-condition integration. While UNets have benefited from plug-and-play modules like ControlNet, DiTs often require more complex approaches such as token concatenation or specialized fine-tuning. **Computational efficiency is a major concern**, as DiTs can face quadratic time complexity due to self-attention mechanisms when handling additional tokens representing control signals. Existing methods face challenges in achieving stable coordination under multi-condition guidance within a single-condition training paradigm. The representational conflicts of different conditional signals in the latent space lead to a degradation in generation quality, particularly in zero-shot multi-condition combination scenarios, where the model lacks effective cross-condition interaction mechanisms.

#### LoRA Injection
LoRA injection presents a **parameter-efficient** approach to adapt pre-trained diffusion models. By injecting low-rank matrices, LoRA can **efficiently fine-tune** the model for specific conditions without modifying the original weights, preserving its generalization capability. This injection technique is particularly useful for DiTs where adding external control is difficult. LoRA's modularity allows for a **seamless integration** of diverse conditions and maintains the integrity of the pre-trained feature space. LoRA is also a key to balance generation quality and adaptability with different requirements, which is useful for maintaining custom models. 

#### Causal + KV Cache
**Causal attention with KV Cache** is presented as a pivotal technique for enhancing efficiency in conditional image generation using diffusion transformers. Causal attention, by masking future tokens, ensures unidirectional information flow, critical for maintaining coherence and preventing information leaks. The **KV Cache mechanism**, pre-computes and stores key-value pairs of condition features during the initial diffusion step, reusing them across subsequent steps, thus avoiding redundant computation. This integration aims to significantly **reduce inference latency** by circumventing re-computation of conditional features. By making the conditioning branch as a computation independent module,  the proposed solution isolates the computations and thus pre-computes KV pairs. Moreover, it helps to implement a **condition feature caching strategy**, which contributes to a substantial savings. This combination seeks to maintain **high generation quality** while optimizing computational resources.

#### Resolution Aware
While the exact phrase "Resolution Aware" isn't directly present, the core concept is addressed through the **Position-Aware Training Paradigm**. This allows the model to handle varying input resolutions by standardizing conditions to a fixed size and using Position-Aware Interpolation. This maintains spatial consistency, which helps in scenarios where spatial awareness is important. Essentially, the model becomes robust to different input dimensions, enabling more flexible and efficient image generation. The **adaptive ability** balances both image quality and adaptability requirements

#### Multi-Cond. Limits
**Multi-Condition Limitations in Diffusion Transformers** highlight challenges in balancing diverse conditional inputs.  Current methods may struggle with conflicting signals, leading to artifacts or reduced control. **Zero-shot generalization** across multiple conditions remains a key issue, as models trained on single conditions may not effectively combine them.  **Computational efficiency** is also crucial; naively concatenating condition tokens scales poorly. The 'Multi-Cond. Limits' heading suggests an exploration of these trade-offs: balancing flexibility, control, and efficiency in multi-conditional image generation using diffusion transformers. Addressing these limitations is crucial for real-world application.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.07027/extracted/6266306/images/method.jpg)

> 🔼 EasyControl injects condition signals into a Diffusion Transformer (DiT) via a new condition branch and a lightweight Condition Injection LoRA Module.  The LoRA module is plug-and-play, compatible with various DiT models.  Training uses a Position-Aware Training Paradigm, resizing condition images to a lower resolution for efficiency. This allows flexible resolution handling. Causal Attention with a KV cache further enhances efficiency.  The framework seamlessly integrates multiple Condition Injection LoRA Modules, enabling effective multi-condition generation.
> <details>
> <summary>read the caption</summary>
> Figure 2: The illustration of EasyControl framework. The condition signal is injected into the Diffusion Transformer (DiT) through a newly introduced condition branch, which encodes the condition tokens in conjunction with a lightweight, plug-and-play Condition Injection LoRA Module. During training, each individual condition is trained separately, where condition images are resized to a lower resolution and trained using our proposed Position-Aware Training Paradigm. This approach enables efficient and flexible resolution training. The framework incorporates a Causal Attention mechanism, which enables the implementation of a Key-Value (KV) Cache to substantially improve inference efficiency. Furthermore, our design facilitates the seamless integration of multiple Condition Injection LoRA Modules, enabling robust and harmonious multi-condition generation.
> </details>



![](https://arxiv.org/html/2503.07027/extracted/6266306/images/com1.jpg)

> 🔼 This figure compares various image generation methods under single-condition control.  Part (a) demonstrates the results of each method under different control conditions (e.g., Canny, Depth, OpenPose, and Subject). This showcases how each model handles various control signals and their influence on the resulting image. Part (b) demonstrates the adaptability of these methods with different Style LoRA (Low-Rank Adaptation). It shows the result after applying various pre-trained style models to the generated image using each method, thus illustrating the flexibility and compatibility of each method with various styles.
> <details>
> <summary>read the caption</summary>
> Figure 3: Visual comparison between different methods in single condition control. Figure (a) shows the results of each method under different control conditions and Figure (b) shows the adaptation of each method with different Style LoRA[56, 57, 58, 38] under control.
> </details>



![](https://arxiv.org/html/2503.07027/extracted/6266306/images/com2.jpg)

> 🔼 This figure compares the performance of different methods under multi-condition control scenarios.  It shows the results generated by various approaches (including the proposed EasyControl method) when combining multiple control signals such as OpenPose and face, depth and Canny, and more. By visually inspecting the generated images, one can evaluate each model's ability to successfully integrate multiple condition signals and generate images that are consistent with all provided control signals. The results highlight EasyControl's superior performance in maintaining controllability and consistency while generating high-quality images, even when compared with other state-of-the-art techniques that struggle with integrating multiple conditions.
> <details>
> <summary>read the caption</summary>
> Figure 4: Visual comparison of different methods under multi-condition control.
> </details>



![](https://arxiv.org/html/2503.07027/extracted/6266306/images/ab.jpg)

> 🔼 Figure 5 shows an ablation study on EasyControl, demonstrating the impact of removing key components on image generation quality under different scenarios.  The rows depict various configurations, including single and multi-condition settings, illustrating how each module (Condition Injection LoRA, Position-Aware Training Paradigm, and Causal Mutual Attention) contributes to performance. For example, removing the Position-Aware Training Paradigm leads to issues with varying resolutions, while removing Causal Mutual Attention results in conflicts between conditions. The figure's purpose is to highlight the individual contributions of each component within the EasyControl framework.
> <details>
> <summary>read the caption</summary>
> Figure 5: Visual ablation on different settings.
> </details>



![](https://arxiv.org/html/2503.07027/extracted/6266306/images/face_data.jpg)

> 🔼 This figure shows a selection of images from a privately held Multi-view Human Dataset.  The dataset contains images of people from various angles and poses, likely used to train or evaluate the model's ability to generate images of humans in a variety of views. The diversity in poses and angles suggests the dataset was designed to robustly capture and represent human figures.
> <details>
> <summary>read the caption</summary>
> Figure 6: Visualization of samples in private Multi-view Human Dataset.
> </details>



![](https://arxiv.org/html/2503.07027/extracted/6266306/images/lim.jpg)

> 🔼 Figure 7 demonstrates EasyControl's robustness in handling challenging scenarios.  (a) showcases the model's ability to generate coherent images even when conflicting instructions are provided (e.g., generating an image of a person wearing both a red and blue shirt, where the prompt specifies only one color). This highlights the model's ability to reconcile contradictory information. (b) shows that EasyControl can generate high-quality images at very high resolutions (2560x3520), demonstrating its scalability and efficiency in producing detailed outputs.
> <details>
> <summary>read the caption</summary>
> Figure 7: Visualization of results (1) under conflicting condition inputs (2) under very high-resolution generation.
> </details>



![](https://arxiv.org/html/2503.07027/extracted/6266306/images/sup_fo.jpg)

> 🔼 Figure 8 displays a visual comparison of image generation results using different identity customization methods combined with multi-condition control.  The figure shows several examples of image generation with two different control conditions (Control 1 and Control 2), each influencing the generated image differently.  The 'Ours' column shows the output of the proposed method, EasyControl, showcasing its ability to effectively combine these controls.  Subsequent columns ('ControlNet + ...') display results from other methods, highlighting how EasyControl handles multi-condition generation more effectively than the compared alternatives in maintaining identity consistency and overall image quality.
> <details>
> <summary>read the caption</summary>
> Figure 8: Visual comparison with Identity customization methods under multi-condition generation setting.
> </details>



![](https://arxiv.org/html/2503.07027/extracted/6266306/images/sup_spatial.jpg)

> 🔼 This figure demonstrates the effectiveness of EasyControl in spatial control generation.  It showcases several examples of image generation guided by different spatial control inputs, comparing the ground truth (GT) with results from EasyControl, ControlNet, and OminiControl.  The results highlight EasyControl's ability to accurately reflect the spatial guidance in the generated images, achieving higher quality and fidelity compared to the other methods.
> <details>
> <summary>read the caption</summary>
> Figure 9: Visualization of spatial control generation.
> </details>



![](https://arxiv.org/html/2503.07027/extracted/6266306/images/sup_subject.jpg)

> 🔼 This figure visualizes the results of subject control generation using the proposed EasyControl method.  It shows multiple examples of generated images where the subject (object) is controlled by a given input condition image.  Each row in the figure represents a different object and the columns show (from left to right): the input condition image, generated images by EasyControl, generated images by ControlNet, generated images by OmniControl, and generated images by Uni-ControlNet for comparison.  The figure aims to demonstrate the effectiveness of EasyControl in achieving high-fidelity subject-controlled image generation compared to existing methods.
> <details>
> <summary>read the caption</summary>
> Figure 10: Visualization of subject control generation.
> </details>



![](https://arxiv.org/html/2503.07027/extracted/6266306/images/sup_res.jpg)

> 🔼 Figure 11 shows a comparison of image generation results at various resolutions (256x352, 512x704, 1024x1408, 1280x1760) using three different methods: ControlNet, OminiControl, and the proposed EasyControl method.  A canny edge map serves as the control input, and the text prompt is 'A red and black motorcycle.' The figure demonstrates how each method handles different resolutions, allowing for a visual assessment of their performance across various scales. Zooming in is recommended for a detailed analysis.
> <details>
> <summary>read the caption</summary>
> Figure 11: Visual comparison with baseline methods under different resolution generation settings.(zoom in for a better view)
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T2.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T2.4.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T2.4.5.1.1" rowspan="2" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.5.1.1.1" style="font-size:90%;">Condition</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T2.4.5.1.2" rowspan="2" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.5.1.2.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T2.4.5.1.3" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.5.1.3.1" style="font-size:90%;">Controllability</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S5.T2.4.5.1.4" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.5.1.4.1" style="font-size:90%;">Generative Quality</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.4.5.1.5" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.5.1.5.1" style="font-size:90%;">Text Consistency</span></th>
</tr>
<tr class="ltx_tr" id="S5.T2.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r" id="S5.T2.1.1.1" style="padding-left:12.8pt;padding-right:12.8pt;"><math alttext="\text{F1}\uparrow/\text{MSE}\downarrow" class="ltx_math_unparsed" display="inline" id="S5.T2.1.1.1.m1.1"><semantics id="S5.T2.1.1.1.m1.1a"><mrow id="S5.T2.1.1.1.m1.1b"><mtext id="S5.T2.1.1.1.m1.1.1" mathsize="90%">F1</mtext><mo id="S5.T2.1.1.1.m1.1.2" mathsize="90%" rspace="0em" stretchy="false">↑</mo><mo id="S5.T2.1.1.1.m1.1.3" lspace="0em" maxsize="90%" minsize="90%" stretchy="true" symmetric="true">/</mo><mtext id="S5.T2.1.1.1.m1.1.4" mathsize="90%">MSE</mtext><mo id="S5.T2.1.1.1.m1.1.5" mathsize="90%" stretchy="false">↓</mo></mrow><annotation encoding="application/x-tex" id="S5.T2.1.1.1.m1.1c">\text{F1}\uparrow/\text{MSE}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.1.1.1.m1.1d">F1 ↑ / MSE ↓</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.2.2.2" style="padding-left:12.8pt;padding-right:12.8pt;"><math alttext="\text{FID}\downarrow" class="ltx_Math" display="inline" id="S5.T2.2.2.2.m1.1"><semantics id="S5.T2.2.2.2.m1.1a"><mrow id="S5.T2.2.2.2.m1.1.1" xref="S5.T2.2.2.2.m1.1.1.cmml"><mtext id="S5.T2.2.2.2.m1.1.1.2" mathsize="90%" xref="S5.T2.2.2.2.m1.1.1.2a.cmml">FID</mtext><mo id="S5.T2.2.2.2.m1.1.1.1" mathsize="90%" stretchy="false" xref="S5.T2.2.2.2.m1.1.1.1.cmml">↓</mo><mi id="S5.T2.2.2.2.m1.1.1.3" xref="S5.T2.2.2.2.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T2.2.2.2.m1.1b"><apply id="S5.T2.2.2.2.m1.1.1.cmml" xref="S5.T2.2.2.2.m1.1.1"><ci id="S5.T2.2.2.2.m1.1.1.1.cmml" xref="S5.T2.2.2.2.m1.1.1.1">↓</ci><ci id="S5.T2.2.2.2.m1.1.1.2a.cmml" xref="S5.T2.2.2.2.m1.1.1.2"><mtext id="S5.T2.2.2.2.m1.1.1.2.cmml" mathsize="90%" xref="S5.T2.2.2.2.m1.1.1.2">FID</mtext></ci><csymbol cd="latexml" id="S5.T2.2.2.2.m1.1.1.3.cmml" xref="S5.T2.2.2.2.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.2.2.2.m1.1c">\text{FID}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.2.2.2.m1.1d">FID ↓</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S5.T2.3.3.3" style="padding-left:12.8pt;padding-right:12.8pt;"><math alttext="\text{MAN-IQA}\uparrow" class="ltx_Math" display="inline" id="S5.T2.3.3.3.m1.1"><semantics id="S5.T2.3.3.3.m1.1a"><mrow id="S5.T2.3.3.3.m1.1.1" xref="S5.T2.3.3.3.m1.1.1.cmml"><mtext id="S5.T2.3.3.3.m1.1.1.2" mathsize="90%" xref="S5.T2.3.3.3.m1.1.1.2a.cmml">MAN-IQA</mtext><mo id="S5.T2.3.3.3.m1.1.1.1" mathsize="90%" stretchy="false" xref="S5.T2.3.3.3.m1.1.1.1.cmml">↑</mo><mi id="S5.T2.3.3.3.m1.1.1.3" xref="S5.T2.3.3.3.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T2.3.3.3.m1.1b"><apply id="S5.T2.3.3.3.m1.1.1.cmml" xref="S5.T2.3.3.3.m1.1.1"><ci id="S5.T2.3.3.3.m1.1.1.1.cmml" xref="S5.T2.3.3.3.m1.1.1.1">↑</ci><ci id="S5.T2.3.3.3.m1.1.1.2a.cmml" xref="S5.T2.3.3.3.m1.1.1.2"><mtext id="S5.T2.3.3.3.m1.1.1.2.cmml" mathsize="90%" xref="S5.T2.3.3.3.m1.1.1.2">MAN-IQA</mtext></ci><csymbol cd="latexml" id="S5.T2.3.3.3.m1.1.1.3.cmml" xref="S5.T2.3.3.3.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.3.3.3.m1.1c">\text{MAN-IQA}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.3.3.3.m1.1d">MAN-IQA ↑</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.4.4.4" style="padding-left:12.8pt;padding-right:12.8pt;"><math alttext="\text{CLIP-Score}\uparrow" class="ltx_Math" display="inline" id="S5.T2.4.4.4.m1.1"><semantics id="S5.T2.4.4.4.m1.1a"><mrow id="S5.T2.4.4.4.m1.1.1" xref="S5.T2.4.4.4.m1.1.1.cmml"><mtext id="S5.T2.4.4.4.m1.1.1.2" mathsize="90%" xref="S5.T2.4.4.4.m1.1.1.2a.cmml">CLIP-Score</mtext><mo id="S5.T2.4.4.4.m1.1.1.1" mathsize="90%" stretchy="false" xref="S5.T2.4.4.4.m1.1.1.1.cmml">↑</mo><mi id="S5.T2.4.4.4.m1.1.1.3" xref="S5.T2.4.4.4.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T2.4.4.4.m1.1b"><apply id="S5.T2.4.4.4.m1.1.1.cmml" xref="S5.T2.4.4.4.m1.1.1"><ci id="S5.T2.4.4.4.m1.1.1.1.cmml" xref="S5.T2.4.4.4.m1.1.1.1">↑</ci><ci id="S5.T2.4.4.4.m1.1.1.2a.cmml" xref="S5.T2.4.4.4.m1.1.1.2"><mtext id="S5.T2.4.4.4.m1.1.1.2.cmml" mathsize="90%" xref="S5.T2.4.4.4.m1.1.1.2">CLIP-Score</mtext></ci><csymbol cd="latexml" id="S5.T2.4.4.4.m1.1.1.3.cmml" xref="S5.T2.4.4.4.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.4.4.4.m1.1c">\text{CLIP-Score}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.4.4.4.m1.1d">CLIP-Score ↑</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.4.6.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T2.4.6.1.1" rowspan="4" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.6.1.1.1" style="font-size:90%;">Canny</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T2.4.6.1.2" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.6.1.2.1" style="font-size:90%;">ControlNet</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T2.4.6.1.3" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.6.1.3.1" style="font-size:90%;">0.232</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.4.6.1.4" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.6.1.4.1" style="font-size:90%;">20.325</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T2.4.6.1.5" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.6.1.5.1" style="font-size:90%;">0.420</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.4.6.1.6" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.6.1.6.1" style="font-size:90%;">0.271</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.4.7.2.1" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.7.2.1.1" style="font-size:90%;">OminiControl</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T2.4.7.2.2" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.4.7.2.2.1" style="font-size:90%;">0.314</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.4.7.2.3" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.4.7.2.3.1" style="font-size:90%;">17.237</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.4.7.2.4" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.4.7.2.4.1" style="font-size:90%;">0.471</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.7.2.5" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.4.7.2.5.1" style="font-size:90%;">0.283</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.4.8.3.1" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.8.3.1.1" style="font-size:90%;">Uni-ControlNet</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T2.4.8.3.2" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.8.3.2.1" style="font-size:90%;">0.201</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.4.8.3.3" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.8.3.3.1" style="font-size:90%;">17.375</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.4.8.3.4" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.8.3.4.1" style="font-size:90%;">0.402</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.8.3.5" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.8.3.5.1" style="font-size:90%;">0.279</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.4.9.4.1" style="background-color:#D9E5EF;padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.9.4.1.1" style="font-size:90%;">Ours</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T2.4.9.4.2" style="background-color:#D9E5EF;padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.9.4.2.1" style="font-size:90%;background-color:#D9E5EF;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.4.9.4.2.1.1">0.311</span></span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.4.9.4.3" style="background-color:#D9E5EF;padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.4.9.4.3.1" style="font-size:90%;background-color:#D9E5EF;">16.074</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.4.9.4.4" style="background-color:#D9E5EF;padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.4.9.4.4.1" style="font-size:90%;background-color:#D9E5EF;">0.503</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.9.4.5" style="background-color:#D9E5EF;padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.9.4.5.1" style="font-size:90%;background-color:#D9E5EF;"><span class="ltx_text ltx_font_bold" id="S5.T2.4.9.4.5.1.1" style="background-color:#D9E5EF;">0.286</span></span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.10.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S5.T2.4.10.5.1" rowspan="4" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.10.5.1.1" style="font-size:90%;">Depth</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.4.10.5.2" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.10.5.2.1" style="font-size:90%;">ControlNet</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.4.10.5.3" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.10.5.3.1" style="font-size:90%;">1781</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.4.10.5.4" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.10.5.4.1" style="font-size:90%;">23.968</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.4.10.5.5" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.10.5.5.1" style="font-size:90%;">0.319</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.4.10.5.6" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.10.5.6.1" style="font-size:90%;">0.265</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.11.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.4.11.6.1" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.11.6.1.1" style="font-size:90%;">OminiControl</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T2.4.11.6.2" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.4.11.6.2.1" style="font-size:90%;">1103</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.4.11.6.3" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.4.11.6.3.1" style="font-size:90%;">18.536</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.4.11.6.4" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.4.11.6.4.1" style="font-size:90%;">0.431</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.11.6.5" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.4.11.6.5.1" style="font-size:90%;">0.285</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.12.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.4.12.7.1" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.12.7.1.1" style="font-size:90%;">Uni-ControlNet</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T2.4.12.7.2" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.12.7.2.1" style="font-size:90%;">1685</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.4.12.7.3" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.12.7.3.1" style="font-size:90%;">21.788</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.4.12.7.4" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.12.7.4.1" style="font-size:90%;">0.423</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.12.7.5" style="padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.12.7.5.1" style="font-size:90%;">0.279</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.13.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T2.4.13.8.1" style="background-color:#D9E5EF;padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.13.8.1.1" style="font-size:90%;background-color:#D9E5EF;">Ours</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T2.4.13.8.2" style="background-color:#D9E5EF;padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.4.13.8.2.1" style="font-size:90%;background-color:#D9E5EF;">1092</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.4.13.8.3" style="background-color:#D9E5EF;padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.13.8.3.1" style="font-size:90%;background-color:#D9E5EF;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.4.13.8.3.1.1">20.394</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.4.13.8.4" style="background-color:#D9E5EF;padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.13.8.4.1" style="font-size:90%;background-color:#D9E5EF;"><span class="ltx_text ltx_font_bold" id="S5.T2.4.13.8.4.1.1" style="background-color:#D9E5EF;">0.469</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.4.13.8.5" style="background-color:#D9E5EF;padding-left:12.8pt;padding-right:12.8pt;"><span class="ltx_text" id="S5.T2.4.13.8.5.1" style="font-size:90%;background-color:#D9E5EF;"><span class="ltx_text ltx_font_bold" id="S5.T2.4.13.8.5.1.1" style="background-color:#D9E5EF;">0.289</span></span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of EasyControl against several baseline methods for single-condition image generation tasks.  It evaluates performance across three key aspects: Controllability (measured by F1-score and Mean Squared Error (MSE) for Canny and Depth conditions, and by the CLIP-Score for Subject conditions), Generative Quality (assessed using the Frechet Inception Distance (FID) and the Mean Opinion Score (MAN-IQA)), and Text Consistency (measured by the CLIP-Score).  Lower FID and MSE values, and higher F1, MAN-IQA, and CLIP-Score indicate better performance.  The table compares EasyControl against ControlNet, OminiControl, and Uni-ControlNet for Canny and Depth conditions, and against IP-Adapter, OminiControl, and Uni-ControlNet for Subject conditions.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative comparison with baseline methods on single condition tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T3.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.5.6.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T3.5.6.1.1" rowspan="2" style="padding-left:11.4pt;padding-right:11.4pt;"><span class="ltx_text" id="S5.T3.5.6.1.1.1" style="font-size:90%;">Condition</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T3.5.6.1.2" rowspan="2" style="padding-left:11.4pt;padding-right:11.4pt;"><span class="ltx_text" id="S5.T3.5.6.1.2.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T3.5.6.1.3" style="padding-left:11.4pt;padding-right:11.4pt;"><span class="ltx_text" id="S5.T3.5.6.1.3.1" style="font-size:90%;">Identity Preservation</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T3.5.6.1.4" style="padding-left:11.4pt;padding-right:11.4pt;"><span class="ltx_text" id="S5.T3.5.6.1.4.1" style="font-size:90%;">Generative Quality</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.5.6.1.5" style="padding-left:11.4pt;padding-right:11.4pt;"><span class="ltx_text" id="S5.T3.5.6.1.5.1" style="font-size:90%;">Text Consistency</span></th>
</tr>
<tr class="ltx_tr" id="S5.T3.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T3.1.1.1" style="padding-left:11.4pt;padding-right:11.4pt;"><math alttext="\text{CLIP-I}\uparrow" class="ltx_Math" display="inline" id="S5.T3.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.m1.1a"><mrow id="S5.T3.1.1.1.m1.1.1" xref="S5.T3.1.1.1.m1.1.1.cmml"><mtext id="S5.T3.1.1.1.m1.1.1.2" mathsize="90%" xref="S5.T3.1.1.1.m1.1.1.2a.cmml">CLIP-I</mtext><mo id="S5.T3.1.1.1.m1.1.1.1" mathsize="90%" stretchy="false" xref="S5.T3.1.1.1.m1.1.1.1.cmml">↑</mo><mi id="S5.T3.1.1.1.m1.1.1.3" xref="S5.T3.1.1.1.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.m1.1b"><apply id="S5.T3.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.m1.1.1"><ci id="S5.T3.1.1.1.m1.1.1.1.cmml" xref="S5.T3.1.1.1.m1.1.1.1">↑</ci><ci id="S5.T3.1.1.1.m1.1.1.2a.cmml" xref="S5.T3.1.1.1.m1.1.1.2"><mtext id="S5.T3.1.1.1.m1.1.1.2.cmml" mathsize="90%" xref="S5.T3.1.1.1.m1.1.1.2">CLIP-I</mtext></ci><csymbol cd="latexml" id="S5.T3.1.1.1.m1.1.1.3.cmml" xref="S5.T3.1.1.1.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.m1.1c">\text{CLIP-I}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.m1.1d">CLIP-I ↑</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S5.T3.2.2.2" style="padding-left:11.4pt;padding-right:11.4pt;"><math alttext="\text{DINO-I}\uparrow" class="ltx_Math" display="inline" id="S5.T3.2.2.2.m1.1"><semantics id="S5.T3.2.2.2.m1.1a"><mrow id="S5.T3.2.2.2.m1.1.1" xref="S5.T3.2.2.2.m1.1.1.cmml"><mtext id="S5.T3.2.2.2.m1.1.1.2" mathsize="90%" xref="S5.T3.2.2.2.m1.1.1.2a.cmml">DINO-I</mtext><mo id="S5.T3.2.2.2.m1.1.1.1" mathsize="90%" stretchy="false" xref="S5.T3.2.2.2.m1.1.1.1.cmml">↑</mo><mi id="S5.T3.2.2.2.m1.1.1.3" xref="S5.T3.2.2.2.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.2.m1.1b"><apply id="S5.T3.2.2.2.m1.1.1.cmml" xref="S5.T3.2.2.2.m1.1.1"><ci id="S5.T3.2.2.2.m1.1.1.1.cmml" xref="S5.T3.2.2.2.m1.1.1.1">↑</ci><ci id="S5.T3.2.2.2.m1.1.1.2a.cmml" xref="S5.T3.2.2.2.m1.1.1.2"><mtext id="S5.T3.2.2.2.m1.1.1.2.cmml" mathsize="90%" xref="S5.T3.2.2.2.m1.1.1.2">DINO-I</mtext></ci><csymbol cd="latexml" id="S5.T3.2.2.2.m1.1.1.3.cmml" xref="S5.T3.2.2.2.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.2.m1.1c">\text{DINO-I}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.2.m1.1d">DINO-I ↑</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T3.3.3.3" style="padding-left:11.4pt;padding-right:11.4pt;"><math alttext="\text{FID}\downarrow" class="ltx_Math" display="inline" id="S5.T3.3.3.3.m1.1"><semantics id="S5.T3.3.3.3.m1.1a"><mrow id="S5.T3.3.3.3.m1.1.1" xref="S5.T3.3.3.3.m1.1.1.cmml"><mtext id="S5.T3.3.3.3.m1.1.1.2" mathsize="90%" xref="S5.T3.3.3.3.m1.1.1.2a.cmml">FID</mtext><mo id="S5.T3.3.3.3.m1.1.1.1" mathsize="90%" stretchy="false" xref="S5.T3.3.3.3.m1.1.1.1.cmml">↓</mo><mi id="S5.T3.3.3.3.m1.1.1.3" xref="S5.T3.3.3.3.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T3.3.3.3.m1.1b"><apply id="S5.T3.3.3.3.m1.1.1.cmml" xref="S5.T3.3.3.3.m1.1.1"><ci id="S5.T3.3.3.3.m1.1.1.1.cmml" xref="S5.T3.3.3.3.m1.1.1.1">↓</ci><ci id="S5.T3.3.3.3.m1.1.1.2a.cmml" xref="S5.T3.3.3.3.m1.1.1.2"><mtext id="S5.T3.3.3.3.m1.1.1.2.cmml" mathsize="90%" xref="S5.T3.3.3.3.m1.1.1.2">FID</mtext></ci><csymbol cd="latexml" id="S5.T3.3.3.3.m1.1.1.3.cmml" xref="S5.T3.3.3.3.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.3.3.m1.1c">\text{FID}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.3.3.m1.1d">FID ↓</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S5.T3.4.4.4" style="padding-left:11.4pt;padding-right:11.4pt;"><math alttext="\text{MAN-IQA}\uparrow" class="ltx_Math" display="inline" id="S5.T3.4.4.4.m1.1"><semantics id="S5.T3.4.4.4.m1.1a"><mrow id="S5.T3.4.4.4.m1.1.1" xref="S5.T3.4.4.4.m1.1.1.cmml"><mtext id="S5.T3.4.4.4.m1.1.1.2" mathsize="90%" xref="S5.T3.4.4.4.m1.1.1.2a.cmml">MAN-IQA</mtext><mo id="S5.T3.4.4.4.m1.1.1.1" mathsize="90%" stretchy="false" xref="S5.T3.4.4.4.m1.1.1.1.cmml">↑</mo><mi id="S5.T3.4.4.4.m1.1.1.3" xref="S5.T3.4.4.4.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T3.4.4.4.m1.1b"><apply id="S5.T3.4.4.4.m1.1.1.cmml" xref="S5.T3.4.4.4.m1.1.1"><ci id="S5.T3.4.4.4.m1.1.1.1.cmml" xref="S5.T3.4.4.4.m1.1.1.1">↑</ci><ci id="S5.T3.4.4.4.m1.1.1.2a.cmml" xref="S5.T3.4.4.4.m1.1.1.2"><mtext id="S5.T3.4.4.4.m1.1.1.2.cmml" mathsize="90%" xref="S5.T3.4.4.4.m1.1.1.2">MAN-IQA</mtext></ci><csymbol cd="latexml" id="S5.T3.4.4.4.m1.1.1.3.cmml" xref="S5.T3.4.4.4.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.4.4.4.m1.1c">\text{MAN-IQA}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.4.4.4.m1.1d">MAN-IQA ↑</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T3.5.5.5" style="padding-left:11.4pt;padding-right:11.4pt;"><math alttext="\text{CLIP-Score}\uparrow" class="ltx_Math" display="inline" id="S5.T3.5.5.5.m1.1"><semantics id="S5.T3.5.5.5.m1.1a"><mrow id="S5.T3.5.5.5.m1.1.1" xref="S5.T3.5.5.5.m1.1.1.cmml"><mtext id="S5.T3.5.5.5.m1.1.1.2" mathsize="90%" xref="S5.T3.5.5.5.m1.1.1.2a.cmml">CLIP-Score</mtext><mo id="S5.T3.5.5.5.m1.1.1.1" mathsize="90%" stretchy="false" xref="S5.T3.5.5.5.m1.1.1.1.cmml">↑</mo><mi id="S5.T3.5.5.5.m1.1.1.3" xref="S5.T3.5.5.5.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T3.5.5.5.m1.1b"><apply id="S5.T3.5.5.5.m1.1.1.cmml" xref="S5.T3.5.5.5.m1.1.1"><ci id="S5.T3.5.5.5.m1.1.1.1.cmml" xref="S5.T3.5.5.5.m1.1.1.1">↑</ci><ci id="S5.T3.5.5.5.m1.1.1.2a.cmml" xref="S5.T3.5.5.5.m1.1.1.2"><mtext id="S5.T3.5.5.5.m1.1.1.2.cmml" mathsize="90%" xref="S5.T3.5.5.5.m1.1.1.2">CLIP-Score</mtext></ci><csymbol cd="latexml" id="S5.T3.5.5.5.m1.1.1.3.cmml" xref="S5.T3.5.5.5.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.5.5.5.m1.1c">\text{CLIP-Score}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.5.5.5.m1.1d">CLIP-Score ↑</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.5.7.1">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T3.5.7.1.1" rowspan="4" style="padding-left:11.4pt;padding-right:11.4pt;"><span class="ltx_text" id="S5.T3.5.7.1.1.1" style="font-size:90%;">Subject</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.5.7.1.2" style="padding-left:11.4pt;padding-right:11.4pt;"><span class="ltx_text" id="S5.T3.5.7.1.2.1" style="font-size:90%;">IP-Adapter</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.7.1.3" style="padding-left:11.4pt;padding-right:11.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.7.1.3.1" style="font-size:90%;">0.700</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.5.7.1.4" style="padding-left:11.4pt;padding-right:11.4pt;"><span class="ltx_text" id="S5.T3.5.7.1.4.1" style="font-size:90%;">0.429</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.7.1.5" style="padding-left:11.4pt;padding-right:11.4pt;"><span class="ltx_text" id="S5.T3.5.7.1.5.1" style="font-size:90%;">79.277</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.5.7.1.6" style="padding-left:11.4pt;padding-right:11.4pt;"><span class="ltx_text" id="S5.T3.5.7.1.6.1" style="font-size:90%;">0.511</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.7.1.7" style="padding-left:11.4pt;padding-right:11.4pt;"><span class="ltx_text" id="S5.T3.5.7.1.7.1" style="font-size:90%;">0.266</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.8.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.5.8.2.1" style="padding-left:11.4pt;padding-right:11.4pt;"><span class="ltx_text" id="S5.T3.5.8.2.1.1" style="font-size:90%;">OminiControl</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.8.2.2" style="padding-left:11.4pt;padding-right:11.4pt;"><span class="ltx_text" id="S5.T3.5.8.2.2.1" style="font-size:90%;">0.663</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.5.8.2.3" style="padding-left:11.4pt;padding-right:11.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.8.2.3.1" style="font-size:90%;">0.445</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.8.2.4" style="padding-left:11.4pt;padding-right:11.4pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.5.8.2.4.1" style="font-size:90%;">72.298</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.5.8.2.5" style="padding-left:11.4pt;padding-right:11.4pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.5.8.2.5.1" style="font-size:90%;">0.579</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.8.2.6" style="padding-left:11.4pt;padding-right:11.4pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.5.8.2.6.1" style="font-size:90%;">0.276</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.9.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.5.9.3.1" style="padding-left:11.4pt;padding-right:11.4pt;"><span class="ltx_text" id="S5.T3.5.9.3.1.1" style="font-size:90%;">Uni-ControNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.9.3.2" style="padding-left:11.4pt;padding-right:11.4pt;"><span class="ltx_text" id="S5.T3.5.9.3.2.1" style="font-size:90%;">0.641</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.5.9.3.3" style="padding-left:11.4pt;padding-right:11.4pt;"><span class="ltx_text" id="S5.T3.5.9.3.3.1" style="font-size:90%;">0.417</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.9.3.4" style="padding-left:11.4pt;padding-right:11.4pt;"><span class="ltx_text" id="S5.T3.5.9.3.4.1" style="font-size:90%;">86.369</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.5.9.3.5" style="padding-left:11.4pt;padding-right:11.4pt;"><span class="ltx_text" id="S5.T3.5.9.3.5.1" style="font-size:90%;">0.439</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.9.3.6" style="padding-left:11.4pt;padding-right:11.4pt;"><span class="ltx_text" id="S5.T3.5.9.3.6.1" style="font-size:90%;">0.204</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.10.4">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.5.10.4.1" style="background-color:#D9E5EF;padding-left:11.4pt;padding-right:11.4pt;"><span class="ltx_text" id="S5.T3.5.10.4.1.1" style="font-size:90%;background-color:#D9E5EF;">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.5.10.4.2" style="background-color:#D9E5EF;padding-left:11.4pt;padding-right:11.4pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.5.10.4.2.1" style="font-size:90%;background-color:#D9E5EF;">0.667</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.5.10.4.3" style="background-color:#D9E5EF;padding-left:11.4pt;padding-right:11.4pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.5.10.4.3.1" style="font-size:90%;background-color:#D9E5EF;">0.443</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.5.10.4.4" style="background-color:#D9E5EF;padding-left:11.4pt;padding-right:11.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.10.4.4.1" style="font-size:90%;background-color:#D9E5EF;">71.910</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.5.10.4.5" style="background-color:#D9E5EF;padding-left:11.4pt;padding-right:11.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.10.4.5.1" style="font-size:90%;background-color:#D9E5EF;">0.595</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.5.10.4.6" style="background-color:#D9E5EF;padding-left:11.4pt;padding-right:11.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.10.4.6.1" style="font-size:90%;background-color:#D9E5EF;">0.283</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of EasyControl against several baseline methods for single-condition image generation tasks.  Metrics used for comparison include controllability (measured by F1-score and MSE for Canny and Depth control, and CLIP-I and DINO-I for Subject control), generative quality (measured by FID and MAN-IQA), and text consistency (measured by CLIP-score).  The results show EasyControl's performance compared to baselines such as ControlNet, OmniControl, and Uni-ControlNet across various single-condition tasks.
> <details>
> <summary>read the caption</summary>
> Table 3: Quantitative comparison with baseline methods on single condition tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T4.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.5.6.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T4.5.6.1.1" rowspan="2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.6.1.1.1" style="font-size:90%;">Condition</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T4.5.6.1.2" rowspan="2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.6.1.2.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T4.5.6.1.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.6.1.3.1" style="font-size:90%;">ID Preservation</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T4.5.6.1.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.6.1.4.1" style="font-size:90%;">Controllability</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S5.T4.5.6.1.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.6.1.5.1" style="font-size:90%;">Generative Quality</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.5.6.1.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.6.1.6.1" style="font-size:90%;">Text Consistency</span></th>
</tr>
<tr class="ltx_tr" id="S5.T4.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S5.T4.1.1.1" style="padding-left:5.7pt;padding-right:5.7pt;"><math alttext="\text{Face Sim.}\uparrow" class="ltx_Math" display="inline" id="S5.T4.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.m1.1a"><mrow id="S5.T4.1.1.1.m1.1.1" xref="S5.T4.1.1.1.m1.1.1.cmml"><mtext id="S5.T4.1.1.1.m1.1.1.2" mathsize="90%" xref="S5.T4.1.1.1.m1.1.1.2a.cmml">Face Sim.</mtext><mo id="S5.T4.1.1.1.m1.1.1.1" mathsize="90%" stretchy="false" xref="S5.T4.1.1.1.m1.1.1.1.cmml">↑</mo><mi id="S5.T4.1.1.1.m1.1.1.3" xref="S5.T4.1.1.1.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.m1.1b"><apply id="S5.T4.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.m1.1.1"><ci id="S5.T4.1.1.1.m1.1.1.1.cmml" xref="S5.T4.1.1.1.m1.1.1.1">↑</ci><ci id="S5.T4.1.1.1.m1.1.1.2a.cmml" xref="S5.T4.1.1.1.m1.1.1.2"><mtext id="S5.T4.1.1.1.m1.1.1.2.cmml" mathsize="90%" xref="S5.T4.1.1.1.m1.1.1.2">Face Sim.</mtext></ci><csymbol cd="latexml" id="S5.T4.1.1.1.m1.1.1.3.cmml" xref="S5.T4.1.1.1.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.m1.1c">\text{Face Sim.}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.m1.1d">Face Sim. ↑</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S5.T4.2.2.2" style="padding-left:5.7pt;padding-right:5.7pt;"><math alttext="\text{MJPE}\downarrow" class="ltx_Math" display="inline" id="S5.T4.2.2.2.m1.1"><semantics id="S5.T4.2.2.2.m1.1a"><mrow id="S5.T4.2.2.2.m1.1.1" xref="S5.T4.2.2.2.m1.1.1.cmml"><mtext id="S5.T4.2.2.2.m1.1.1.2" mathsize="90%" xref="S5.T4.2.2.2.m1.1.1.2a.cmml">MJPE</mtext><mo id="S5.T4.2.2.2.m1.1.1.1" mathsize="90%" stretchy="false" xref="S5.T4.2.2.2.m1.1.1.1.cmml">↓</mo><mi id="S5.T4.2.2.2.m1.1.1.3" xref="S5.T4.2.2.2.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.m1.1b"><apply id="S5.T4.2.2.2.m1.1.1.cmml" xref="S5.T4.2.2.2.m1.1.1"><ci id="S5.T4.2.2.2.m1.1.1.1.cmml" xref="S5.T4.2.2.2.m1.1.1.1">↓</ci><ci id="S5.T4.2.2.2.m1.1.1.2a.cmml" xref="S5.T4.2.2.2.m1.1.1.2"><mtext id="S5.T4.2.2.2.m1.1.1.2.cmml" mathsize="90%" xref="S5.T4.2.2.2.m1.1.1.2">MJPE</mtext></ci><csymbol cd="latexml" id="S5.T4.2.2.2.m1.1.1.3.cmml" xref="S5.T4.2.2.2.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.m1.1c">\text{MJPE}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.m1.1d">MJPE ↓</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.3.3.3" style="padding-left:5.7pt;padding-right:5.7pt;"><math alttext="\text{FID}\downarrow" class="ltx_Math" display="inline" id="S5.T4.3.3.3.m1.1"><semantics id="S5.T4.3.3.3.m1.1a"><mrow id="S5.T4.3.3.3.m1.1.1" xref="S5.T4.3.3.3.m1.1.1.cmml"><mtext id="S5.T4.3.3.3.m1.1.1.2" mathsize="90%" xref="S5.T4.3.3.3.m1.1.1.2a.cmml">FID</mtext><mo id="S5.T4.3.3.3.m1.1.1.1" mathsize="90%" stretchy="false" xref="S5.T4.3.3.3.m1.1.1.1.cmml">↓</mo><mi id="S5.T4.3.3.3.m1.1.1.3" xref="S5.T4.3.3.3.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.3.m1.1b"><apply id="S5.T4.3.3.3.m1.1.1.cmml" xref="S5.T4.3.3.3.m1.1.1"><ci id="S5.T4.3.3.3.m1.1.1.1.cmml" xref="S5.T4.3.3.3.m1.1.1.1">↓</ci><ci id="S5.T4.3.3.3.m1.1.1.2a.cmml" xref="S5.T4.3.3.3.m1.1.1.2"><mtext id="S5.T4.3.3.3.m1.1.1.2.cmml" mathsize="90%" xref="S5.T4.3.3.3.m1.1.1.2">FID</mtext></ci><csymbol cd="latexml" id="S5.T4.3.3.3.m1.1.1.3.cmml" xref="S5.T4.3.3.3.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.3.m1.1c">\text{FID}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.3.m1.1d">FID ↓</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S5.T4.4.4.4" style="padding-left:5.7pt;padding-right:5.7pt;"><math alttext="\text{MAN-IQA}\uparrow" class="ltx_Math" display="inline" id="S5.T4.4.4.4.m1.1"><semantics id="S5.T4.4.4.4.m1.1a"><mrow id="S5.T4.4.4.4.m1.1.1" xref="S5.T4.4.4.4.m1.1.1.cmml"><mtext id="S5.T4.4.4.4.m1.1.1.2" mathsize="90%" xref="S5.T4.4.4.4.m1.1.1.2a.cmml">MAN-IQA</mtext><mo id="S5.T4.4.4.4.m1.1.1.1" mathsize="90%" stretchy="false" xref="S5.T4.4.4.4.m1.1.1.1.cmml">↑</mo><mi id="S5.T4.4.4.4.m1.1.1.3" xref="S5.T4.4.4.4.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.4.4.4.m1.1b"><apply id="S5.T4.4.4.4.m1.1.1.cmml" xref="S5.T4.4.4.4.m1.1.1"><ci id="S5.T4.4.4.4.m1.1.1.1.cmml" xref="S5.T4.4.4.4.m1.1.1.1">↑</ci><ci id="S5.T4.4.4.4.m1.1.1.2a.cmml" xref="S5.T4.4.4.4.m1.1.1.2"><mtext id="S5.T4.4.4.4.m1.1.1.2.cmml" mathsize="90%" xref="S5.T4.4.4.4.m1.1.1.2">MAN-IQA</mtext></ci><csymbol cd="latexml" id="S5.T4.4.4.4.m1.1.1.3.cmml" xref="S5.T4.4.4.4.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.4.4.4.m1.1c">\text{MAN-IQA}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.4.4.4.m1.1d">MAN-IQA ↑</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.5.5.5" style="padding-left:5.7pt;padding-right:5.7pt;"><math alttext="\text{CLIP-Score}\uparrow" class="ltx_Math" display="inline" id="S5.T4.5.5.5.m1.1"><semantics id="S5.T4.5.5.5.m1.1a"><mrow id="S5.T4.5.5.5.m1.1.1" xref="S5.T4.5.5.5.m1.1.1.cmml"><mtext id="S5.T4.5.5.5.m1.1.1.2" mathsize="90%" xref="S5.T4.5.5.5.m1.1.1.2a.cmml">CLIP-Score</mtext><mo id="S5.T4.5.5.5.m1.1.1.1" mathsize="90%" stretchy="false" xref="S5.T4.5.5.5.m1.1.1.1.cmml">↑</mo><mi id="S5.T4.5.5.5.m1.1.1.3" xref="S5.T4.5.5.5.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.5.5.5.m1.1b"><apply id="S5.T4.5.5.5.m1.1.1.cmml" xref="S5.T4.5.5.5.m1.1.1"><ci id="S5.T4.5.5.5.m1.1.1.1.cmml" xref="S5.T4.5.5.5.m1.1.1.1">↑</ci><ci id="S5.T4.5.5.5.m1.1.1.2a.cmml" xref="S5.T4.5.5.5.m1.1.1.2"><mtext id="S5.T4.5.5.5.m1.1.1.2.cmml" mathsize="90%" xref="S5.T4.5.5.5.m1.1.1.2">CLIP-Score</mtext></ci><csymbol cd="latexml" id="S5.T4.5.5.5.m1.1.1.3.cmml" xref="S5.T4.5.5.5.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.5.5.5.m1.1c">\text{CLIP-Score}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.5.5.5.m1.1d">CLIP-Score ↑</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.5.7.1">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_tt" id="S5.T4.5.7.1.1" rowspan="7" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.7.1.1.1" style="font-size:90%;">Openpose+Face</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T4.5.7.1.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.7.1.2.1" style="font-size:90%;">ControlNet+IPA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T4.5.7.1.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.7.1.3.1" style="font-size:90%;">0.049</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T4.5.7.1.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.7.1.4.1" style="font-size:90%;">166.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.5.7.1.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.7.1.5.1" style="font-size:90%;">227.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T4.5.7.1.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.7.1.6.1" style="font-size:90%;">0.229</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.5.7.1.7" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.7.1.7.1" style="font-size:90%;">0.156</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.8.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.8.2.1" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.8.2.1.1" style="font-size:90%;">ControlNet+Redux</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.8.2.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.8.2.2.1" style="font-size:90%;">0.027</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.8.2.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.8.2.3.1" style="font-size:90%;">141.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.8.2.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.8.2.4.1" style="font-size:90%;">200.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.8.2.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.8.2.5.1" style="font-size:90%;">0.293</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.8.2.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.8.2.6.1" style="font-size:90%;">0.217</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.9.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.9.3.1" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.9.3.1.1" style="font-size:90%;">Uni-ControlNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.9.3.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.9.3.2.1" style="font-size:90%;">0.048</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.9.3.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.9.3.3.1" style="font-size:90%;">258.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.9.3.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.9.3.4.1" style="font-size:90%;">203.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.9.3.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.9.3.5.1" style="font-size:90%;">0.481</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.9.3.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.9.3.6.1" style="font-size:90%;">0.147</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.10.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.10.4.1" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.10.4.1.1" style="font-size:90%;">ControlNet+InstantID</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.10.4.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.10.4.2.1" style="font-size:90%;">0.521</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.10.4.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.10.4.3.1" style="font-size:90%;">83.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.10.4.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.10.4.4.1" style="font-size:90%;">203.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.10.4.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.10.4.5.1" style="font-size:90%;">0.345</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.10.4.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.10.4.6.1" style="font-size:90%;">0.250</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.11.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.11.5.1" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.11.5.1.1" style="font-size:90%;">ControlNet+PhotoMaker</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.11.5.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.11.5.2.1" style="font-size:90%;">0.343</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.11.5.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.11.5.3.1" style="font-size:90%;">86.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.11.5.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.11.5.4.1" style="font-size:90%;">213.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.11.5.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.11.5.5.1" style="font-size:90%;">0.420</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.11.5.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.11.5.6.1" style="font-size:90%;">0.281</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.12.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.12.6.1" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.12.6.1.1" style="font-size:90%;">ControlNet+Uni-portrait</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.12.6.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.12.6.2.1" style="font-size:90%;">0.456</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.12.6.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.12.6.3.1" style="font-size:90%;">46.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.12.6.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.12.6.4.1" style="font-size:90%;">203.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.5.12.6.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.5.12.6.5.1" style="font-size:90%;">0.564</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.12.6.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.12.6.6.1" style="font-size:90%;">0.253</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.13.7">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T4.5.13.7.1" style="background-color:#D9E5EF;padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T4.5.13.7.1.1" style="font-size:90%;background-color:#D9E5EF;">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T4.5.13.7.2" style="background-color:#D9E5EF;padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.13.7.2.1" style="font-size:90%;background-color:#D9E5EF;">0.530</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T4.5.13.7.3" style="background-color:#D9E5EF;padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.13.7.3.1" style="font-size:90%;background-color:#D9E5EF;">36.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.5.13.7.4" style="background-color:#D9E5EF;padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.13.7.4.1" style="font-size:90%;background-color:#D9E5EF;">184.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T4.5.13.7.5" style="background-color:#D9E5EF;padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.13.7.5.1" style="font-size:90%;background-color:#D9E5EF;">0.586</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.5.13.7.6" style="background-color:#D9E5EF;padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.13.7.6.1" style="font-size:90%;background-color:#D9E5EF;">0.285</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of EasyControl against several baseline methods for multi-condition image generation.  It evaluates performance across four key aspects: Identity Preservation (Face Similarity, how well the model preserves the identity of faces), Controllability (MJPE, a metric measuring the accuracy of pose estimation), Generative Quality (FID, MAN-IQA, measures assessing the quality and diversity of generated images), and Text Consistency (CLIP-Score, evaluates how well generated images align with text prompts).  The baseline methods compared are ControlNet+IP-Adapter, ControlNet+Redux, Uni-ControlNet, ControlNet+InstantID, ControlNet+PhotoMaker, ControlNet+Uni-portrait, all employing a variety of techniques for combining multiple conditions. The results allow for a quantitative assessment of EasyControl's ability to handle multiple conditions, achieve high image generation quality, and maintain text consistency.
> <details>
> <summary>read the caption</summary>
> Table 4: Quantitative comparison with baseline methods on multi-condition tasks.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.07027/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07027/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07027/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07027/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07027/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07027/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07027/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07027/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07027/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07027/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07027/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07027/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07027/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07027/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07027/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07027/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07027/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07027/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07027/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07027/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}