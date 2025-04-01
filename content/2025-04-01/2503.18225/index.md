---
title: "Decoupling Angles and Strength in Low-rank Adaptation"
summary: "DeLoRA: Decoupling angles and strength in low-rank adaptation for robust & efficient finetuning of large models!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Deep Learning", "🏢 University of Tübingen",]
showSummary: true
date: 2025-03-23
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.18225 {{< /keyword >}}
{{< keyword icon="writer" >}} Massimo Bini et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-01 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.18225" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.18225" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.18225/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Parameter-Efficient Fine-Tuning (PEFT)** methods are popular for adapting large models, but LoRA is sensitive to hyperparameters and can degrade with extended training. ETHER is more robust, but limited to low-rank adaptations, reducing expressiveness. This work identifies the need for a method that balances robustness and expressiveness, addressing the limitations of existing PEFT techniques. **The key problem is achieving stable and efficient adaptation** without compromising performance. 



This paper introduces **DeLoRA, a novel PEFT method** that normalizes and scales learnable low-rank matrices. By bounding the transformation distance, DeLoRA decouples angular learning from adaptation strength, enhancing robustness without sacrificing performance. **Evaluations across image generation, NLU, and instruction tuning** demonstrate that DeLoRA matches or exceeds existing PEFT methods while exhibiting stronger robustness, making it an effective approach for adapting large-scale models.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} DeLoRA enhances robustness in PEFT by decoupling angular learning from adaptation strength. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} DeLoRA achieves competitive or superior performance compared to LoRA and ETHER across various tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The method is particularly effective in preventing divergence during extended finetuning, ensuring stable performance. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces DeLoRA, a novel parameter-efficient finetuning method that enhances robustness and performance in adapting large-scale pretrained models. By decoupling angular learning from adaptation strength, DeLoRA offers a more stable and effective approach, opening new avenues for research in image generation, natural language understanding, and instruction tuning.

------
#### Visual Insights



![](https://arxiv.org/html/2503.18225/x1.png)

> 🔼 Figure 1 provides a visual comparison of the original LoRA method and the proposed DeLoRA method. The left panel illustrates the LoRA architecture, showing the low-rank matrices B and A being multiplied and added to the original weight matrix W.  The right panel shows the DeLoRA architecture, which incorporates a normalization factor (Ξ) and a scaling factor (λ) in addition to the low-rank matrices. These added components are designed to decouple the learning of the transformation's direction (angle) from its magnitude (strength), resulting in improved robustness and adaptability. The figure highlights the key differences between the two methods by emphasizing the additional components incorporated into DeLoRA.
> <details>
> <summary>read the caption</summary>
> Figure 1: Visualizations (Left) of the original LoRA (Hu et al., 2022) and (Right) of our proposed method DeLoRA. In addition to the low-rank matrices B,A𝐵𝐴B,Aitalic_B , italic_A, we introduce a normalization ΞΞ\Xiroman_Ξ and a scaling factor λ𝜆\lambdaitalic_λ, which effectively decouple the angular learning from the adaptation strength.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.15.15">
<tr class="ltx_tr" id="S3.T1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.1.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">Method</td>
<td class="ltx_td ltx_border_tt" id="S3.T1.1.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="\Delta W" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.m1.1a"><mrow id="S3.T1.1.1.1.1.m1.1.1" xref="S3.T1.1.1.1.1.m1.1.1.cmml"><mi id="S3.T1.1.1.1.1.m1.1.1.2" mathvariant="normal" xref="S3.T1.1.1.1.1.m1.1.1.2.cmml">Δ</mi><mo id="S3.T1.1.1.1.1.m1.1.1.1" xref="S3.T1.1.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T1.1.1.1.1.m1.1.1.3" xref="S3.T1.1.1.1.1.m1.1.1.3.cmml">W</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.m1.1b"><apply id="S3.T1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1"><times id="S3.T1.1.1.1.1.m1.1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1.1"></times><ci id="S3.T1.1.1.1.1.m1.1.1.2.cmml" xref="S3.T1.1.1.1.1.m1.1.1.2">Δ</ci><ci id="S3.T1.1.1.1.1.m1.1.1.3.cmml" xref="S3.T1.1.1.1.1.m1.1.1.3">𝑊</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.m1.1c">\Delta W</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.m1.1d">roman_Δ italic_W</annotation></semantics></math> formulation</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">DINO</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">CLIP-I</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.2.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="S3.T1.2.2.2.1.1">LoRA</span> [rank-<math alttext="r" class="ltx_Math" display="inline" id="S3.T1.2.2.2.1.m1.1"><semantics id="S3.T1.2.2.2.1.m1.1a"><mi id="S3.T1.2.2.2.1.m1.1.1" xref="S3.T1.2.2.2.1.m1.1.1.cmml">r</mi><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.1.m1.1b"><ci id="S3.T1.2.2.2.1.m1.1.1.cmml" xref="S3.T1.2.2.2.1.m1.1.1">𝑟</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.1.m1.1c">r</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.1.m1.1d">italic_r</annotation></semantics></math>]</td>
<td class="ltx_td ltx_border_t" id="S3.T1.3.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.3.3.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="BA" class="ltx_Math" display="inline" id="S3.T1.3.3.3.2.m1.1"><semantics id="S3.T1.3.3.3.2.m1.1a"><mrow id="S3.T1.3.3.3.2.m1.1.1" xref="S3.T1.3.3.3.2.m1.1.1.cmml"><mi id="S3.T1.3.3.3.2.m1.1.1.2" xref="S3.T1.3.3.3.2.m1.1.1.2.cmml">B</mi><mo id="S3.T1.3.3.3.2.m1.1.1.1" xref="S3.T1.3.3.3.2.m1.1.1.1.cmml">⁢</mo><mi id="S3.T1.3.3.3.2.m1.1.1.3" xref="S3.T1.3.3.3.2.m1.1.1.3.cmml">A</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.2.m1.1b"><apply id="S3.T1.3.3.3.2.m1.1.1.cmml" xref="S3.T1.3.3.3.2.m1.1.1"><times id="S3.T1.3.3.3.2.m1.1.1.1.cmml" xref="S3.T1.3.3.3.2.m1.1.1.1"></times><ci id="S3.T1.3.3.3.2.m1.1.1.2.cmml" xref="S3.T1.3.3.3.2.m1.1.1.2">𝐵</ci><ci id="S3.T1.3.3.3.2.m1.1.1.3.cmml" xref="S3.T1.3.3.3.2.m1.1.1.3">𝐴</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.2.m1.1c">BA</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.2.m1.1d">italic_B italic_A</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.674</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.785</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5.5">
<td class="ltx_td ltx_align_left" id="S3.T1.4.4.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.4.4.4.1.m1.1"><semantics id="S3.T1.4.4.4.1.m1.1a"><mo id="S3.T1.4.4.4.1.m1.1.1" stretchy="false" xref="S3.T1.4.4.4.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.1.m1.1b"><ci id="S3.T1.4.4.4.1.m1.1.1.cmml" xref="S3.T1.4.4.4.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.1.m1.1d">↓</annotation></semantics></math> + normalize w/ controllable boundary</td>
<td class="ltx_td" id="S3.T1.5.5.5.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S3.T1.5.5.5.2" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\frac{\lambda}{r}B\Xi A" class="ltx_Math" display="inline" id="S3.T1.5.5.5.2.m1.1"><semantics id="S3.T1.5.5.5.2.m1.1a"><mrow id="S3.T1.5.5.5.2.m1.1.1" xref="S3.T1.5.5.5.2.m1.1.1.cmml"><mfrac id="S3.T1.5.5.5.2.m1.1.1.2" xref="S3.T1.5.5.5.2.m1.1.1.2.cmml"><mi id="S3.T1.5.5.5.2.m1.1.1.2.2" xref="S3.T1.5.5.5.2.m1.1.1.2.2.cmml">λ</mi><mi id="S3.T1.5.5.5.2.m1.1.1.2.3" xref="S3.T1.5.5.5.2.m1.1.1.2.3.cmml">r</mi></mfrac><mo id="S3.T1.5.5.5.2.m1.1.1.1" xref="S3.T1.5.5.5.2.m1.1.1.1.cmml">⁢</mo><mi id="S3.T1.5.5.5.2.m1.1.1.3" xref="S3.T1.5.5.5.2.m1.1.1.3.cmml">B</mi><mo id="S3.T1.5.5.5.2.m1.1.1.1a" xref="S3.T1.5.5.5.2.m1.1.1.1.cmml">⁢</mo><mi id="S3.T1.5.5.5.2.m1.1.1.4" mathvariant="normal" xref="S3.T1.5.5.5.2.m1.1.1.4.cmml">Ξ</mi><mo id="S3.T1.5.5.5.2.m1.1.1.1b" xref="S3.T1.5.5.5.2.m1.1.1.1.cmml">⁢</mo><mi id="S3.T1.5.5.5.2.m1.1.1.5" xref="S3.T1.5.5.5.2.m1.1.1.5.cmml">A</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.2.m1.1b"><apply id="S3.T1.5.5.5.2.m1.1.1.cmml" xref="S3.T1.5.5.5.2.m1.1.1"><times id="S3.T1.5.5.5.2.m1.1.1.1.cmml" xref="S3.T1.5.5.5.2.m1.1.1.1"></times><apply id="S3.T1.5.5.5.2.m1.1.1.2.cmml" xref="S3.T1.5.5.5.2.m1.1.1.2"><divide id="S3.T1.5.5.5.2.m1.1.1.2.1.cmml" xref="S3.T1.5.5.5.2.m1.1.1.2"></divide><ci id="S3.T1.5.5.5.2.m1.1.1.2.2.cmml" xref="S3.T1.5.5.5.2.m1.1.1.2.2">𝜆</ci><ci id="S3.T1.5.5.5.2.m1.1.1.2.3.cmml" xref="S3.T1.5.5.5.2.m1.1.1.2.3">𝑟</ci></apply><ci id="S3.T1.5.5.5.2.m1.1.1.3.cmml" xref="S3.T1.5.5.5.2.m1.1.1.3">𝐵</ci><ci id="S3.T1.5.5.5.2.m1.1.1.4.cmml" xref="S3.T1.5.5.5.2.m1.1.1.4">Ξ</ci><ci id="S3.T1.5.5.5.2.m1.1.1.5.cmml" xref="S3.T1.5.5.5.2.m1.1.1.5">𝐴</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.2.m1.1c">\frac{\lambda}{r}B\Xi A</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.2.m1.1d">divide start_ARG italic_λ end_ARG start_ARG italic_r end_ARG italic_B roman_Ξ italic_A</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.682</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.809</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.6" style="background-color:#F0F0F0;">
<td class="ltx_td ltx_align_left" id="S3.T1.6.6.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="\cdot" class="ltx_Math" display="inline" id="S3.T1.6.6.6.1.m1.1" style="background-color:#F0F0F0;"><semantics id="S3.T1.6.6.6.1.m1.1a"><mo id="S3.T1.6.6.6.1.m1.1.1" mathbackground="#F0F0F0" xref="S3.T1.6.6.6.1.m1.1.1.cmml">⋅</mo><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.6.1.m1.1b"><ci id="S3.T1.6.6.6.1.m1.1.1.cmml" xref="S3.T1.6.6.6.1.m1.1.1">⋅</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.6.1.m1.1c">\cdot</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.6.1.m1.1d">⋅</annotation></semantics></math><span class="ltx_text" id="S3.T1.6.6.6.1.1" style="background-color:#F0F0F0;">  + normalize w/ controllable boundary + weights-scaling</span>
</td>
<td class="ltx_td" id="S3.T1.6.6.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td" id="S3.T1.6.6.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td" id="S3.T1.6.6.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td" id="S3.T1.6.6.6.5" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8.8" style="background-color:#F0F0F0;">
<td class="ltx_td ltx_align_left" id="S3.T1.7.7.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="\cdot" class="ltx_Math" display="inline" id="S3.T1.7.7.7.1.m1.1" style="background-color:#F0F0F0;"><semantics id="S3.T1.7.7.7.1.m1.1a"><mo id="S3.T1.7.7.7.1.m1.1.1" mathbackground="#F0F0F0" xref="S3.T1.7.7.7.1.m1.1.1.cmml">⋅</mo><annotation-xml encoding="MathML-Content" id="S3.T1.7.7.7.1.m1.1b"><ci id="S3.T1.7.7.7.1.m1.1.1.cmml" xref="S3.T1.7.7.7.1.m1.1.1">⋅</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.7.7.1.m1.1c">\cdot</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.7.7.1.m1.1d">⋅</annotation></semantics></math><span class="ltx_text" id="S3.T1.7.7.7.1.1" style="background-color:#F0F0F0;">  + controllable boundary + high rank + relaxed + additive FT</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.8.8.8.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.8.3.1" style="background-color:#F0F0F0;">(DeLoRA)</span></td>
<td class="ltx_td ltx_align_left" id="S3.T1.8.8.8.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.8.8.8.2.1" style="background-color:#F0F0F0;"><math alttext="\frac{\|W\|\lambda}{r}B\Xi A" class="ltx_Math" display="inline" id="S3.T1.8.8.8.2.1.m1.1"><semantics id="S3.T1.8.8.8.2.1.m1.1a"><mrow id="S3.T1.8.8.8.2.1.m1.1.2" xref="S3.T1.8.8.8.2.1.m1.1.2.cmml"><mfrac id="S3.T1.8.8.8.2.1.m1.1.1" xref="S3.T1.8.8.8.2.1.m1.1.1.cmml"><mrow id="S3.T1.8.8.8.2.1.m1.1.1.1" xref="S3.T1.8.8.8.2.1.m1.1.1.1.cmml"><mrow id="S3.T1.8.8.8.2.1.m1.1.1.1.3.2" xref="S3.T1.8.8.8.2.1.m1.1.1.1.3.1.cmml"><mo id="S3.T1.8.8.8.2.1.m1.1.1.1.3.2.1" mathbackground="#F0F0F0" stretchy="false" xref="S3.T1.8.8.8.2.1.m1.1.1.1.3.1.1.cmml">‖</mo><mi id="S3.T1.8.8.8.2.1.m1.1.1.1.1" mathbackground="#F0F0F0" xref="S3.T1.8.8.8.2.1.m1.1.1.1.1.cmml">W</mi><mo id="S3.T1.8.8.8.2.1.m1.1.1.1.3.2.2" mathbackground="#F0F0F0" stretchy="false" xref="S3.T1.8.8.8.2.1.m1.1.1.1.3.1.1.cmml">‖</mo></mrow><mo id="S3.T1.8.8.8.2.1.m1.1.1.1.2" xref="S3.T1.8.8.8.2.1.m1.1.1.1.2.cmml">⁢</mo><mi id="S3.T1.8.8.8.2.1.m1.1.1.1.4" mathbackground="#F0F0F0" xref="S3.T1.8.8.8.2.1.m1.1.1.1.4.cmml">λ</mi></mrow><mi id="S3.T1.8.8.8.2.1.m1.1.1.3" mathbackground="#F0F0F0" xref="S3.T1.8.8.8.2.1.m1.1.1.3.cmml">r</mi></mfrac><mo id="S3.T1.8.8.8.2.1.m1.1.2.1" xref="S3.T1.8.8.8.2.1.m1.1.2.1.cmml">⁢</mo><mi id="S3.T1.8.8.8.2.1.m1.1.2.2" mathbackground="#F0F0F0" xref="S3.T1.8.8.8.2.1.m1.1.2.2.cmml">B</mi><mo id="S3.T1.8.8.8.2.1.m1.1.2.1a" xref="S3.T1.8.8.8.2.1.m1.1.2.1.cmml">⁢</mo><mi id="S3.T1.8.8.8.2.1.m1.1.2.3" mathbackground="#F0F0F0" mathvariant="normal" xref="S3.T1.8.8.8.2.1.m1.1.2.3.cmml">Ξ</mi><mo id="S3.T1.8.8.8.2.1.m1.1.2.1b" xref="S3.T1.8.8.8.2.1.m1.1.2.1.cmml">⁢</mo><mi id="S3.T1.8.8.8.2.1.m1.1.2.4" mathbackground="#F0F0F0" xref="S3.T1.8.8.8.2.1.m1.1.2.4.cmml">A</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.8.8.8.2.1.m1.1b"><apply id="S3.T1.8.8.8.2.1.m1.1.2.cmml" xref="S3.T1.8.8.8.2.1.m1.1.2"><times id="S3.T1.8.8.8.2.1.m1.1.2.1.cmml" xref="S3.T1.8.8.8.2.1.m1.1.2.1"></times><apply id="S3.T1.8.8.8.2.1.m1.1.1.cmml" xref="S3.T1.8.8.8.2.1.m1.1.1"><divide id="S3.T1.8.8.8.2.1.m1.1.1.2.cmml" xref="S3.T1.8.8.8.2.1.m1.1.1"></divide><apply id="S3.T1.8.8.8.2.1.m1.1.1.1.cmml" xref="S3.T1.8.8.8.2.1.m1.1.1.1"><times id="S3.T1.8.8.8.2.1.m1.1.1.1.2.cmml" xref="S3.T1.8.8.8.2.1.m1.1.1.1.2"></times><apply id="S3.T1.8.8.8.2.1.m1.1.1.1.3.1.cmml" xref="S3.T1.8.8.8.2.1.m1.1.1.1.3.2"><csymbol cd="latexml" id="S3.T1.8.8.8.2.1.m1.1.1.1.3.1.1.cmml" xref="S3.T1.8.8.8.2.1.m1.1.1.1.3.2.1">norm</csymbol><ci id="S3.T1.8.8.8.2.1.m1.1.1.1.1.cmml" xref="S3.T1.8.8.8.2.1.m1.1.1.1.1">𝑊</ci></apply><ci id="S3.T1.8.8.8.2.1.m1.1.1.1.4.cmml" xref="S3.T1.8.8.8.2.1.m1.1.1.1.4">𝜆</ci></apply><ci id="S3.T1.8.8.8.2.1.m1.1.1.3.cmml" xref="S3.T1.8.8.8.2.1.m1.1.1.3">𝑟</ci></apply><ci id="S3.T1.8.8.8.2.1.m1.1.2.2.cmml" xref="S3.T1.8.8.8.2.1.m1.1.2.2">𝐵</ci><ci id="S3.T1.8.8.8.2.1.m1.1.2.3.cmml" xref="S3.T1.8.8.8.2.1.m1.1.2.3">Ξ</ci><ci id="S3.T1.8.8.8.2.1.m1.1.2.4.cmml" xref="S3.T1.8.8.8.2.1.m1.1.2.4">𝐴</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.8.8.2.1.m1.1c">\frac{\|W\|\lambda}{r}B\Xi A</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.8.8.2.1.m1.1d">divide start_ARG ∥ italic_W ∥ italic_λ end_ARG start_ARG italic_r end_ARG italic_B roman_Ξ italic_A</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.8.4.1" style="background-color:#F0F0F0;">0.701</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.8.8.8.5.1" style="background-color:#F0F0F0;">0.825</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.10.10.10">
<td class="ltx_td ltx_align_left" id="S3.T1.9.9.9.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.9.9.9.1.m1.1"><semantics id="S3.T1.9.9.9.1.m1.1a"><mo id="S3.T1.9.9.9.1.m1.1.1" stretchy="false" xref="S3.T1.9.9.9.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.9.9.9.1.m1.1b"><ci id="S3.T1.9.9.9.1.m1.1.1.cmml" xref="S3.T1.9.9.9.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.9.9.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.9.9.1.m1.1d">↑</annotation></semantics></math> + controllable scale + high rank + relaxed</td>
<td class="ltx_td" id="S3.T1.10.10.10.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S3.T1.10.10.10.2" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\frac{\lambda}{r}(B\Xi A-D\Phi C)W" class="ltx_Math" display="inline" id="S3.T1.10.10.10.2.m1.1"><semantics id="S3.T1.10.10.10.2.m1.1a"><mrow id="S3.T1.10.10.10.2.m1.1.1" xref="S3.T1.10.10.10.2.m1.1.1.cmml"><mfrac id="S3.T1.10.10.10.2.m1.1.1.3" xref="S3.T1.10.10.10.2.m1.1.1.3.cmml"><mi id="S3.T1.10.10.10.2.m1.1.1.3.2" xref="S3.T1.10.10.10.2.m1.1.1.3.2.cmml">λ</mi><mi id="S3.T1.10.10.10.2.m1.1.1.3.3" xref="S3.T1.10.10.10.2.m1.1.1.3.3.cmml">r</mi></mfrac><mo id="S3.T1.10.10.10.2.m1.1.1.2" xref="S3.T1.10.10.10.2.m1.1.1.2.cmml">⁢</mo><mrow id="S3.T1.10.10.10.2.m1.1.1.1.1" xref="S3.T1.10.10.10.2.m1.1.1.1.1.1.cmml"><mo id="S3.T1.10.10.10.2.m1.1.1.1.1.2" stretchy="false" xref="S3.T1.10.10.10.2.m1.1.1.1.1.1.cmml">(</mo><mrow id="S3.T1.10.10.10.2.m1.1.1.1.1.1" xref="S3.T1.10.10.10.2.m1.1.1.1.1.1.cmml"><mrow id="S3.T1.10.10.10.2.m1.1.1.1.1.1.2" xref="S3.T1.10.10.10.2.m1.1.1.1.1.1.2.cmml"><mi id="S3.T1.10.10.10.2.m1.1.1.1.1.1.2.2" xref="S3.T1.10.10.10.2.m1.1.1.1.1.1.2.2.cmml">B</mi><mo id="S3.T1.10.10.10.2.m1.1.1.1.1.1.2.1" xref="S3.T1.10.10.10.2.m1.1.1.1.1.1.2.1.cmml">⁢</mo><mi id="S3.T1.10.10.10.2.m1.1.1.1.1.1.2.3" mathvariant="normal" xref="S3.T1.10.10.10.2.m1.1.1.1.1.1.2.3.cmml">Ξ</mi><mo id="S3.T1.10.10.10.2.m1.1.1.1.1.1.2.1a" xref="S3.T1.10.10.10.2.m1.1.1.1.1.1.2.1.cmml">⁢</mo><mi id="S3.T1.10.10.10.2.m1.1.1.1.1.1.2.4" xref="S3.T1.10.10.10.2.m1.1.1.1.1.1.2.4.cmml">A</mi></mrow><mo id="S3.T1.10.10.10.2.m1.1.1.1.1.1.1" xref="S3.T1.10.10.10.2.m1.1.1.1.1.1.1.cmml">−</mo><mrow id="S3.T1.10.10.10.2.m1.1.1.1.1.1.3" xref="S3.T1.10.10.10.2.m1.1.1.1.1.1.3.cmml"><mi id="S3.T1.10.10.10.2.m1.1.1.1.1.1.3.2" xref="S3.T1.10.10.10.2.m1.1.1.1.1.1.3.2.cmml">D</mi><mo id="S3.T1.10.10.10.2.m1.1.1.1.1.1.3.1" xref="S3.T1.10.10.10.2.m1.1.1.1.1.1.3.1.cmml">⁢</mo><mi id="S3.T1.10.10.10.2.m1.1.1.1.1.1.3.3" mathvariant="normal" xref="S3.T1.10.10.10.2.m1.1.1.1.1.1.3.3.cmml">Φ</mi><mo id="S3.T1.10.10.10.2.m1.1.1.1.1.1.3.1a" xref="S3.T1.10.10.10.2.m1.1.1.1.1.1.3.1.cmml">⁢</mo><mi id="S3.T1.10.10.10.2.m1.1.1.1.1.1.3.4" xref="S3.T1.10.10.10.2.m1.1.1.1.1.1.3.4.cmml">C</mi></mrow></mrow><mo id="S3.T1.10.10.10.2.m1.1.1.1.1.3" stretchy="false" xref="S3.T1.10.10.10.2.m1.1.1.1.1.1.cmml">)</mo></mrow><mo id="S3.T1.10.10.10.2.m1.1.1.2a" xref="S3.T1.10.10.10.2.m1.1.1.2.cmml">⁢</mo><mi id="S3.T1.10.10.10.2.m1.1.1.4" xref="S3.T1.10.10.10.2.m1.1.1.4.cmml">W</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.10.10.10.2.m1.1b"><apply id="S3.T1.10.10.10.2.m1.1.1.cmml" xref="S3.T1.10.10.10.2.m1.1.1"><times id="S3.T1.10.10.10.2.m1.1.1.2.cmml" xref="S3.T1.10.10.10.2.m1.1.1.2"></times><apply id="S3.T1.10.10.10.2.m1.1.1.3.cmml" xref="S3.T1.10.10.10.2.m1.1.1.3"><divide id="S3.T1.10.10.10.2.m1.1.1.3.1.cmml" xref="S3.T1.10.10.10.2.m1.1.1.3"></divide><ci id="S3.T1.10.10.10.2.m1.1.1.3.2.cmml" xref="S3.T1.10.10.10.2.m1.1.1.3.2">𝜆</ci><ci id="S3.T1.10.10.10.2.m1.1.1.3.3.cmml" xref="S3.T1.10.10.10.2.m1.1.1.3.3">𝑟</ci></apply><apply id="S3.T1.10.10.10.2.m1.1.1.1.1.1.cmml" xref="S3.T1.10.10.10.2.m1.1.1.1.1"><minus id="S3.T1.10.10.10.2.m1.1.1.1.1.1.1.cmml" xref="S3.T1.10.10.10.2.m1.1.1.1.1.1.1"></minus><apply id="S3.T1.10.10.10.2.m1.1.1.1.1.1.2.cmml" xref="S3.T1.10.10.10.2.m1.1.1.1.1.1.2"><times id="S3.T1.10.10.10.2.m1.1.1.1.1.1.2.1.cmml" xref="S3.T1.10.10.10.2.m1.1.1.1.1.1.2.1"></times><ci id="S3.T1.10.10.10.2.m1.1.1.1.1.1.2.2.cmml" xref="S3.T1.10.10.10.2.m1.1.1.1.1.1.2.2">𝐵</ci><ci id="S3.T1.10.10.10.2.m1.1.1.1.1.1.2.3.cmml" xref="S3.T1.10.10.10.2.m1.1.1.1.1.1.2.3">Ξ</ci><ci id="S3.T1.10.10.10.2.m1.1.1.1.1.1.2.4.cmml" xref="S3.T1.10.10.10.2.m1.1.1.1.1.1.2.4">𝐴</ci></apply><apply id="S3.T1.10.10.10.2.m1.1.1.1.1.1.3.cmml" xref="S3.T1.10.10.10.2.m1.1.1.1.1.1.3"><times id="S3.T1.10.10.10.2.m1.1.1.1.1.1.3.1.cmml" xref="S3.T1.10.10.10.2.m1.1.1.1.1.1.3.1"></times><ci id="S3.T1.10.10.10.2.m1.1.1.1.1.1.3.2.cmml" xref="S3.T1.10.10.10.2.m1.1.1.1.1.1.3.2">𝐷</ci><ci id="S3.T1.10.10.10.2.m1.1.1.1.1.1.3.3.cmml" xref="S3.T1.10.10.10.2.m1.1.1.1.1.1.3.3">Φ</ci><ci id="S3.T1.10.10.10.2.m1.1.1.1.1.1.3.4.cmml" xref="S3.T1.10.10.10.2.m1.1.1.1.1.1.3.4">𝐶</ci></apply></apply><ci id="S3.T1.10.10.10.2.m1.1.1.4.cmml" xref="S3.T1.10.10.10.2.m1.1.1.4">𝑊</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.10.10.10.2.m1.1c">\frac{\lambda}{r}(B\Xi A-D\Phi C)W</annotation><annotation encoding="application/x-llamapun" id="S3.T1.10.10.10.2.m1.1d">divide start_ARG italic_λ end_ARG start_ARG italic_r end_ARG ( italic_B roman_Ξ italic_A - italic_D roman_Φ italic_C ) italic_W</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.10.10.10.4.1">0.696</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.10.10.10.5.1">0.833</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.12">
<td class="ltx_td ltx_align_left" id="S3.T1.11.11.11.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="|" class="ltx_Math" display="inline" id="S3.T1.11.11.11.1.m1.1"><semantics id="S3.T1.11.11.11.1.m1.1a"><mo fence="false" id="S3.T1.11.11.11.1.m1.1.1" stretchy="false" xref="S3.T1.11.11.11.1.m1.1.1.cmml">|</mo><annotation-xml encoding="MathML-Content" id="S3.T1.11.11.11.1.m1.1b"><ci id="S3.T1.11.11.11.1.m1.1.1.cmml" xref="S3.T1.11.11.11.1.m1.1.1">|</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.11.11.11.1.m1.1c">|</annotation><annotation encoding="application/x-llamapun" id="S3.T1.11.11.11.1.m1.1d">|</annotation></semantics></math> + controllable boundary + high rank</td>
<td class="ltx_td" id="S3.T1.12.12.12.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S3.T1.12.12.12.2" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\frac{\lambda}{r}(U\Sigma U^{\intercal}-V\Theta V^{\intercal})W" class="ltx_Math" display="inline" id="S3.T1.12.12.12.2.m1.1"><semantics id="S3.T1.12.12.12.2.m1.1a"><mrow id="S3.T1.12.12.12.2.m1.1.1" xref="S3.T1.12.12.12.2.m1.1.1.cmml"><mfrac id="S3.T1.12.12.12.2.m1.1.1.3" xref="S3.T1.12.12.12.2.m1.1.1.3.cmml"><mi id="S3.T1.12.12.12.2.m1.1.1.3.2" xref="S3.T1.12.12.12.2.m1.1.1.3.2.cmml">λ</mi><mi id="S3.T1.12.12.12.2.m1.1.1.3.3" xref="S3.T1.12.12.12.2.m1.1.1.3.3.cmml">r</mi></mfrac><mo id="S3.T1.12.12.12.2.m1.1.1.2" xref="S3.T1.12.12.12.2.m1.1.1.2.cmml">⁢</mo><mrow id="S3.T1.12.12.12.2.m1.1.1.1.1" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.cmml"><mo id="S3.T1.12.12.12.2.m1.1.1.1.1.2" stretchy="false" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.cmml">(</mo><mrow id="S3.T1.12.12.12.2.m1.1.1.1.1.1" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.cmml"><mrow id="S3.T1.12.12.12.2.m1.1.1.1.1.1.2" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.2.cmml"><mi id="S3.T1.12.12.12.2.m1.1.1.1.1.1.2.2" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.2.2.cmml">U</mi><mo id="S3.T1.12.12.12.2.m1.1.1.1.1.1.2.1" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.2.1.cmml">⁢</mo><mi id="S3.T1.12.12.12.2.m1.1.1.1.1.1.2.3" mathvariant="normal" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.2.3.cmml">Σ</mi><mo id="S3.T1.12.12.12.2.m1.1.1.1.1.1.2.1a" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.2.1.cmml">⁢</mo><msup id="S3.T1.12.12.12.2.m1.1.1.1.1.1.2.4" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.2.4.cmml"><mi id="S3.T1.12.12.12.2.m1.1.1.1.1.1.2.4.2" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.2.4.2.cmml">U</mi><mo id="S3.T1.12.12.12.2.m1.1.1.1.1.1.2.4.3" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.2.4.3.cmml">⊺</mo></msup></mrow><mo id="S3.T1.12.12.12.2.m1.1.1.1.1.1.1" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.1.cmml">−</mo><mrow id="S3.T1.12.12.12.2.m1.1.1.1.1.1.3" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.3.cmml"><mi id="S3.T1.12.12.12.2.m1.1.1.1.1.1.3.2" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.3.2.cmml">V</mi><mo id="S3.T1.12.12.12.2.m1.1.1.1.1.1.3.1" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.3.1.cmml">⁢</mo><mi id="S3.T1.12.12.12.2.m1.1.1.1.1.1.3.3" mathvariant="normal" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.3.3.cmml">Θ</mi><mo id="S3.T1.12.12.12.2.m1.1.1.1.1.1.3.1a" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.3.1.cmml">⁢</mo><msup id="S3.T1.12.12.12.2.m1.1.1.1.1.1.3.4" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.3.4.cmml"><mi id="S3.T1.12.12.12.2.m1.1.1.1.1.1.3.4.2" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.3.4.2.cmml">V</mi><mo id="S3.T1.12.12.12.2.m1.1.1.1.1.1.3.4.3" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.3.4.3.cmml">⊺</mo></msup></mrow></mrow><mo id="S3.T1.12.12.12.2.m1.1.1.1.1.3" stretchy="false" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.cmml">)</mo></mrow><mo id="S3.T1.12.12.12.2.m1.1.1.2a" xref="S3.T1.12.12.12.2.m1.1.1.2.cmml">⁢</mo><mi id="S3.T1.12.12.12.2.m1.1.1.4" xref="S3.T1.12.12.12.2.m1.1.1.4.cmml">W</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.12.12.12.2.m1.1b"><apply id="S3.T1.12.12.12.2.m1.1.1.cmml" xref="S3.T1.12.12.12.2.m1.1.1"><times id="S3.T1.12.12.12.2.m1.1.1.2.cmml" xref="S3.T1.12.12.12.2.m1.1.1.2"></times><apply id="S3.T1.12.12.12.2.m1.1.1.3.cmml" xref="S3.T1.12.12.12.2.m1.1.1.3"><divide id="S3.T1.12.12.12.2.m1.1.1.3.1.cmml" xref="S3.T1.12.12.12.2.m1.1.1.3"></divide><ci id="S3.T1.12.12.12.2.m1.1.1.3.2.cmml" xref="S3.T1.12.12.12.2.m1.1.1.3.2">𝜆</ci><ci id="S3.T1.12.12.12.2.m1.1.1.3.3.cmml" xref="S3.T1.12.12.12.2.m1.1.1.3.3">𝑟</ci></apply><apply id="S3.T1.12.12.12.2.m1.1.1.1.1.1.cmml" xref="S3.T1.12.12.12.2.m1.1.1.1.1"><minus id="S3.T1.12.12.12.2.m1.1.1.1.1.1.1.cmml" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.1"></minus><apply id="S3.T1.12.12.12.2.m1.1.1.1.1.1.2.cmml" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.2"><times id="S3.T1.12.12.12.2.m1.1.1.1.1.1.2.1.cmml" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.2.1"></times><ci id="S3.T1.12.12.12.2.m1.1.1.1.1.1.2.2.cmml" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.2.2">𝑈</ci><ci id="S3.T1.12.12.12.2.m1.1.1.1.1.1.2.3.cmml" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.2.3">Σ</ci><apply id="S3.T1.12.12.12.2.m1.1.1.1.1.1.2.4.cmml" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.2.4"><csymbol cd="ambiguous" id="S3.T1.12.12.12.2.m1.1.1.1.1.1.2.4.1.cmml" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.2.4">superscript</csymbol><ci id="S3.T1.12.12.12.2.m1.1.1.1.1.1.2.4.2.cmml" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.2.4.2">𝑈</ci><ci id="S3.T1.12.12.12.2.m1.1.1.1.1.1.2.4.3.cmml" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.2.4.3">⊺</ci></apply></apply><apply id="S3.T1.12.12.12.2.m1.1.1.1.1.1.3.cmml" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.3"><times id="S3.T1.12.12.12.2.m1.1.1.1.1.1.3.1.cmml" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.3.1"></times><ci id="S3.T1.12.12.12.2.m1.1.1.1.1.1.3.2.cmml" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.3.2">𝑉</ci><ci id="S3.T1.12.12.12.2.m1.1.1.1.1.1.3.3.cmml" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.3.3">Θ</ci><apply id="S3.T1.12.12.12.2.m1.1.1.1.1.1.3.4.cmml" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.3.4"><csymbol cd="ambiguous" id="S3.T1.12.12.12.2.m1.1.1.1.1.1.3.4.1.cmml" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.3.4">superscript</csymbol><ci id="S3.T1.12.12.12.2.m1.1.1.1.1.1.3.4.2.cmml" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.3.4.2">𝑉</ci><ci id="S3.T1.12.12.12.2.m1.1.1.1.1.1.3.4.3.cmml" xref="S3.T1.12.12.12.2.m1.1.1.1.1.1.3.4.3">⊺</ci></apply></apply></apply><ci id="S3.T1.12.12.12.2.m1.1.1.4.cmml" xref="S3.T1.12.12.12.2.m1.1.1.4">𝑊</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.12.12.12.2.m1.1c">\frac{\lambda}{r}(U\Sigma U^{\intercal}-V\Theta V^{\intercal})W</annotation><annotation encoding="application/x-llamapun" id="S3.T1.12.12.12.2.m1.1d">divide start_ARG italic_λ end_ARG start_ARG italic_r end_ARG ( italic_U roman_Σ italic_U start_POSTSUPERSCRIPT ⊺ end_POSTSUPERSCRIPT - italic_V roman_Θ italic_V start_POSTSUPERSCRIPT ⊺ end_POSTSUPERSCRIPT ) italic_W</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.12.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.685</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.12.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.12.5.1">0.840</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.14.14.14">
<td class="ltx_td ltx_align_left" id="S3.T1.13.13.13.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="|" class="ltx_Math" display="inline" id="S3.T1.13.13.13.1.m1.1"><semantics id="S3.T1.13.13.13.1.m1.1a"><mo fence="false" id="S3.T1.13.13.13.1.m1.1.1" stretchy="false" xref="S3.T1.13.13.13.1.m1.1.1.cmml">|</mo><annotation-xml encoding="MathML-Content" id="S3.T1.13.13.13.1.m1.1b"><ci id="S3.T1.13.13.13.1.m1.1.1.cmml" xref="S3.T1.13.13.13.1.m1.1.1">|</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.13.13.13.1.m1.1c">|</annotation><annotation encoding="application/x-llamapun" id="S3.T1.13.13.13.1.m1.1d">|</annotation></semantics></math> + controllable boundary</td>
<td class="ltx_td" id="S3.T1.14.14.14.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S3.T1.14.14.14.2" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\lambda(uu^{\intercal}-vv^{\intercal})W" class="ltx_Math" display="inline" id="S3.T1.14.14.14.2.m1.1"><semantics id="S3.T1.14.14.14.2.m1.1a"><mrow id="S3.T1.14.14.14.2.m1.1.1" xref="S3.T1.14.14.14.2.m1.1.1.cmml"><mi id="S3.T1.14.14.14.2.m1.1.1.3" xref="S3.T1.14.14.14.2.m1.1.1.3.cmml">λ</mi><mo id="S3.T1.14.14.14.2.m1.1.1.2" xref="S3.T1.14.14.14.2.m1.1.1.2.cmml">⁢</mo><mrow id="S3.T1.14.14.14.2.m1.1.1.1.1" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.cmml"><mo id="S3.T1.14.14.14.2.m1.1.1.1.1.2" stretchy="false" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.cmml">(</mo><mrow id="S3.T1.14.14.14.2.m1.1.1.1.1.1" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.cmml"><mrow id="S3.T1.14.14.14.2.m1.1.1.1.1.1.2" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.2.cmml"><mi id="S3.T1.14.14.14.2.m1.1.1.1.1.1.2.2" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.2.2.cmml">u</mi><mo id="S3.T1.14.14.14.2.m1.1.1.1.1.1.2.1" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.2.1.cmml">⁢</mo><msup id="S3.T1.14.14.14.2.m1.1.1.1.1.1.2.3" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.2.3.cmml"><mi id="S3.T1.14.14.14.2.m1.1.1.1.1.1.2.3.2" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.2.3.2.cmml">u</mi><mo id="S3.T1.14.14.14.2.m1.1.1.1.1.1.2.3.3" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.2.3.3.cmml">⊺</mo></msup></mrow><mo id="S3.T1.14.14.14.2.m1.1.1.1.1.1.1" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.1.cmml">−</mo><mrow id="S3.T1.14.14.14.2.m1.1.1.1.1.1.3" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.3.cmml"><mi id="S3.T1.14.14.14.2.m1.1.1.1.1.1.3.2" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.3.2.cmml">v</mi><mo id="S3.T1.14.14.14.2.m1.1.1.1.1.1.3.1" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.3.1.cmml">⁢</mo><msup id="S3.T1.14.14.14.2.m1.1.1.1.1.1.3.3" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.3.3.cmml"><mi id="S3.T1.14.14.14.2.m1.1.1.1.1.1.3.3.2" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.3.3.2.cmml">v</mi><mo id="S3.T1.14.14.14.2.m1.1.1.1.1.1.3.3.3" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.3.3.3.cmml">⊺</mo></msup></mrow></mrow><mo id="S3.T1.14.14.14.2.m1.1.1.1.1.3" stretchy="false" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.cmml">)</mo></mrow><mo id="S3.T1.14.14.14.2.m1.1.1.2a" xref="S3.T1.14.14.14.2.m1.1.1.2.cmml">⁢</mo><mi id="S3.T1.14.14.14.2.m1.1.1.4" xref="S3.T1.14.14.14.2.m1.1.1.4.cmml">W</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.14.14.14.2.m1.1b"><apply id="S3.T1.14.14.14.2.m1.1.1.cmml" xref="S3.T1.14.14.14.2.m1.1.1"><times id="S3.T1.14.14.14.2.m1.1.1.2.cmml" xref="S3.T1.14.14.14.2.m1.1.1.2"></times><ci id="S3.T1.14.14.14.2.m1.1.1.3.cmml" xref="S3.T1.14.14.14.2.m1.1.1.3">𝜆</ci><apply id="S3.T1.14.14.14.2.m1.1.1.1.1.1.cmml" xref="S3.T1.14.14.14.2.m1.1.1.1.1"><minus id="S3.T1.14.14.14.2.m1.1.1.1.1.1.1.cmml" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.1"></minus><apply id="S3.T1.14.14.14.2.m1.1.1.1.1.1.2.cmml" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.2"><times id="S3.T1.14.14.14.2.m1.1.1.1.1.1.2.1.cmml" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.2.1"></times><ci id="S3.T1.14.14.14.2.m1.1.1.1.1.1.2.2.cmml" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.2.2">𝑢</ci><apply id="S3.T1.14.14.14.2.m1.1.1.1.1.1.2.3.cmml" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.2.3"><csymbol cd="ambiguous" id="S3.T1.14.14.14.2.m1.1.1.1.1.1.2.3.1.cmml" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.2.3">superscript</csymbol><ci id="S3.T1.14.14.14.2.m1.1.1.1.1.1.2.3.2.cmml" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.2.3.2">𝑢</ci><ci id="S3.T1.14.14.14.2.m1.1.1.1.1.1.2.3.3.cmml" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.2.3.3">⊺</ci></apply></apply><apply id="S3.T1.14.14.14.2.m1.1.1.1.1.1.3.cmml" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.3"><times id="S3.T1.14.14.14.2.m1.1.1.1.1.1.3.1.cmml" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.3.1"></times><ci id="S3.T1.14.14.14.2.m1.1.1.1.1.1.3.2.cmml" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.3.2">𝑣</ci><apply id="S3.T1.14.14.14.2.m1.1.1.1.1.1.3.3.cmml" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.3.3"><csymbol cd="ambiguous" id="S3.T1.14.14.14.2.m1.1.1.1.1.1.3.3.1.cmml" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.3.3">superscript</csymbol><ci id="S3.T1.14.14.14.2.m1.1.1.1.1.1.3.3.2.cmml" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.3.3.2">𝑣</ci><ci id="S3.T1.14.14.14.2.m1.1.1.1.1.1.3.3.3.cmml" xref="S3.T1.14.14.14.2.m1.1.1.1.1.1.3.3.3">⊺</ci></apply></apply></apply><ci id="S3.T1.14.14.14.2.m1.1.1.4.cmml" xref="S3.T1.14.14.14.2.m1.1.1.4">𝑊</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.14.14.14.2.m1.1c">\lambda(uu^{\intercal}-vv^{\intercal})W</annotation><annotation encoding="application/x-llamapun" id="S3.T1.14.14.14.2.m1.1d">italic_λ ( italic_u italic_u start_POSTSUPERSCRIPT ⊺ end_POSTSUPERSCRIPT - italic_v italic_v start_POSTSUPERSCRIPT ⊺ end_POSTSUPERSCRIPT ) italic_W</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.14.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.678</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.14.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.810</td>
</tr>
<tr class="ltx_tr" id="S3.T1.15.15.15">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.15.15.15.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="S3.T1.15.15.15.2.1">ETHER+ (one-sided)</span> [rank-2, boundary equal to 2]</td>
<td class="ltx_td ltx_border_bb" id="S3.T1.15.15.15.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.15.15.15.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="(uu^{\intercal}-vv^{\intercal})W" class="ltx_Math" display="inline" id="S3.T1.15.15.15.1.m1.1"><semantics id="S3.T1.15.15.15.1.m1.1a"><mrow id="S3.T1.15.15.15.1.m1.1.1" xref="S3.T1.15.15.15.1.m1.1.1.cmml"><mrow id="S3.T1.15.15.15.1.m1.1.1.1.1" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.cmml"><mo id="S3.T1.15.15.15.1.m1.1.1.1.1.2" stretchy="false" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.cmml">(</mo><mrow id="S3.T1.15.15.15.1.m1.1.1.1.1.1" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.cmml"><mrow id="S3.T1.15.15.15.1.m1.1.1.1.1.1.2" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.2.cmml"><mi id="S3.T1.15.15.15.1.m1.1.1.1.1.1.2.2" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.2.2.cmml">u</mi><mo id="S3.T1.15.15.15.1.m1.1.1.1.1.1.2.1" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.2.1.cmml">⁢</mo><msup id="S3.T1.15.15.15.1.m1.1.1.1.1.1.2.3" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.2.3.cmml"><mi id="S3.T1.15.15.15.1.m1.1.1.1.1.1.2.3.2" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.2.3.2.cmml">u</mi><mo id="S3.T1.15.15.15.1.m1.1.1.1.1.1.2.3.3" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.2.3.3.cmml">⊺</mo></msup></mrow><mo id="S3.T1.15.15.15.1.m1.1.1.1.1.1.1" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.1.cmml">−</mo><mrow id="S3.T1.15.15.15.1.m1.1.1.1.1.1.3" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.3.cmml"><mi id="S3.T1.15.15.15.1.m1.1.1.1.1.1.3.2" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.3.2.cmml">v</mi><mo id="S3.T1.15.15.15.1.m1.1.1.1.1.1.3.1" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.3.1.cmml">⁢</mo><msup id="S3.T1.15.15.15.1.m1.1.1.1.1.1.3.3" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.3.3.cmml"><mi id="S3.T1.15.15.15.1.m1.1.1.1.1.1.3.3.2" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.3.3.2.cmml">v</mi><mo id="S3.T1.15.15.15.1.m1.1.1.1.1.1.3.3.3" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.3.3.3.cmml">⊺</mo></msup></mrow></mrow><mo id="S3.T1.15.15.15.1.m1.1.1.1.1.3" stretchy="false" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.cmml">)</mo></mrow><mo id="S3.T1.15.15.15.1.m1.1.1.2" xref="S3.T1.15.15.15.1.m1.1.1.2.cmml">⁢</mo><mi id="S3.T1.15.15.15.1.m1.1.1.3" xref="S3.T1.15.15.15.1.m1.1.1.3.cmml">W</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.15.15.15.1.m1.1b"><apply id="S3.T1.15.15.15.1.m1.1.1.cmml" xref="S3.T1.15.15.15.1.m1.1.1"><times id="S3.T1.15.15.15.1.m1.1.1.2.cmml" xref="S3.T1.15.15.15.1.m1.1.1.2"></times><apply id="S3.T1.15.15.15.1.m1.1.1.1.1.1.cmml" xref="S3.T1.15.15.15.1.m1.1.1.1.1"><minus id="S3.T1.15.15.15.1.m1.1.1.1.1.1.1.cmml" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.1"></minus><apply id="S3.T1.15.15.15.1.m1.1.1.1.1.1.2.cmml" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.2"><times id="S3.T1.15.15.15.1.m1.1.1.1.1.1.2.1.cmml" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.2.1"></times><ci id="S3.T1.15.15.15.1.m1.1.1.1.1.1.2.2.cmml" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.2.2">𝑢</ci><apply id="S3.T1.15.15.15.1.m1.1.1.1.1.1.2.3.cmml" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.2.3"><csymbol cd="ambiguous" id="S3.T1.15.15.15.1.m1.1.1.1.1.1.2.3.1.cmml" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.2.3">superscript</csymbol><ci id="S3.T1.15.15.15.1.m1.1.1.1.1.1.2.3.2.cmml" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.2.3.2">𝑢</ci><ci id="S3.T1.15.15.15.1.m1.1.1.1.1.1.2.3.3.cmml" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.2.3.3">⊺</ci></apply></apply><apply id="S3.T1.15.15.15.1.m1.1.1.1.1.1.3.cmml" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.3"><times id="S3.T1.15.15.15.1.m1.1.1.1.1.1.3.1.cmml" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.3.1"></times><ci id="S3.T1.15.15.15.1.m1.1.1.1.1.1.3.2.cmml" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.3.2">𝑣</ci><apply id="S3.T1.15.15.15.1.m1.1.1.1.1.1.3.3.cmml" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.3.3"><csymbol cd="ambiguous" id="S3.T1.15.15.15.1.m1.1.1.1.1.1.3.3.1.cmml" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.3.3">superscript</csymbol><ci id="S3.T1.15.15.15.1.m1.1.1.1.1.1.3.3.2.cmml" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.3.3.2">𝑣</ci><ci id="S3.T1.15.15.15.1.m1.1.1.1.1.1.3.3.3.cmml" xref="S3.T1.15.15.15.1.m1.1.1.1.1.1.3.3.3">⊺</ci></apply></apply></apply><ci id="S3.T1.15.15.15.1.m1.1.1.3.cmml" xref="S3.T1.15.15.15.1.m1.1.1.3">𝑊</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.15.15.15.1.m1.1c">(uu^{\intercal}-vv^{\intercal})W</annotation><annotation encoding="application/x-llamapun" id="S3.T1.15.15.15.1.m1.1d">( italic_u italic_u start_POSTSUPERSCRIPT ⊺ end_POSTSUPERSCRIPT - italic_v italic_v start_POSTSUPERSCRIPT ⊺ end_POSTSUPERSCRIPT ) italic_W</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.15.15.15.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.624</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.15.15.15.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.746</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents an ablation study evaluating the impact of individual components of the DeLoRA model on the Subject-driven Image Generation task.  It shows the performance improvements achieved by incrementally adding features from both LoRA (Low-Rank Adaptation) and ETHER (Efficient finetuning with Hyperplane Reflections) methods.  Each row represents a variation of the model, starting from the basic LoRA, and progressively incorporating features such as normalization with a controllable boundary, weights scaling, high-rank updates, and relaxed constraints. The performance is measured using DINO and CLIP-I scores, indicating the subject-fidelity of the generated images.
> <details>
> <summary>read the caption</summary>
> Table 1: Ablation of DeLoRA innovations on the Subject-driven Image Generation task. We show how different components affect performance from both LoRA and ETHER derivation.
> </details>





### In-depth insights


#### DeLoRA: Angles+
The "DeLoRA: Angles+" concept, though not explicitly defined in the provided paper, likely pertains to the innovative approach of decoupling angular learning from adaptation strength in low-rank adaptation (LoRA). It is used to achieve **robustness** and **expressivity**. The "Angles" aspect probably refers to the normalized low-rank matrices (BΞA) which control the direction of weight updates, independent of their magnitude. The "+" implies additional mechanisms enhancing this angular control. These could include the scaling factor (λ) which is used to tune the adaptation strength or weights norm scaling which makes the update proportional to the pretrained weight's norm. By decoupling the angular update with this **normalized learning**, DeLoRA offers superior control during finetuning avoiding catastrophic overwriting. This contributes to DeLoRA's learning rate robustness.

#### Robustness Focus
The paper demonstrates a **robustness focus** achieved through the DeLoRA method. This method normalizes and scales low-rank matrices, effectively **decoupling angular learning from adaptation strength**. This is crucial because it **reduces sensitivity to hyperparameter choices and extended training regimes**, problems common in LoRA. The method mitigates catastrophic overwriting of pre-trained weights, enhancing stability and reducing performance degradation. The findings revealed that DeLoRA maintains performance, whereas the LoRA performance degrades with higher learning rates. Robustness is seen through better performance retentions during extended fine-tuning, making DeLoRA more reliable for diverse applications. Ultimately, **robustness is a key aspect of DeLoRA**, making it a valuable contribution to parameter-efficient fine-tuning.

#### LoRA & ETHER
**LoRA excels in parameter-efficient finetuning**, offering simplicity and effectiveness, but struggles with hyperparameter sensitivity and performance degradation during extended training. **ETHER provides robustness** but is limited by low-rank adaptations and fixed-strength transformations. This impacts expressive power, hindering the extent to which the model can adapt to specific tasks and datasets. These limitations highlight a trade-off between efficiency, robustness and expressivity. Balancing these aspects is key for optimal performance across diverse applications.

#### Weights vs. Norms
The research paper explores the nuances of **weight normalization** within the context of parameter-efficient fine-tuning (PEFT) methods, particularly in image generation. The analysis reveals that different modules in the U-Net architecture exhibit systematic variations in **weight norms**, underscoring the importance of layer-adaptive strategies. This heterogeneity suggests that a universal scaling approach might not be optimal, and PEFT techniques should account for the unique characteristics of each layer. The study introduces a weights-norm scaling technique that demonstrates improved performance, suggesting that aligning weight updates with the inherent structure of the pretrained model can be beneficial. Further exploration of more sophisticated methods to incorporate layer-wise differences is indicated as a promising avenue for future research, potentially leading to more effective and robust fine-tuning strategies.

#### Vision & Language
While the provided research paper doesn't explicitly have a "Vision & Language" section, its core theme strongly aligns with this interdisciplinary field. The paper's exploration of adapting large-scale pretrained models for tasks like subject-driven image generation and semantic map-to-image translation directly tackles challenges at the intersection of vision and language. The key idea of **parameter-efficient finetuning (PEFT)**, specifically through the proposed DeLoRA method, aims to bridge the gap between textual prompts/semantic layouts and the generation/manipulation of visual content. By **decoupling angular learning from adaptation strength**, DeLoRA enhances the robustness of these models, allowing for more reliable and controllable generation based on linguistic inputs. The experiments in **subject-driven image generation** demonstrate how well the models can understand and recontextualize a subject based on text, while the **semantic map to image** task evaluates the model's ability to translate spatial information derived from language into realistic images. Furthermore, its evaluation on Natural Language Understanding tasks shows that it not only excels in vision-language tasks but also captures intricate linguistic information. This ability to work with both vision and language is a hallmark of a good vision and language model.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.18225/x2.png)

> 🔼 This figure displays the results of an experiment evaluating the robustness of different parameter-efficient fine-tuning (PEFT) methods to variations in the learning rate.  The left panel shows DINO scores, a measure of subject fidelity in image generation, for various learning rates. The scores are obtained by multiplying the base learning rate by a range of factors, demonstrating how model performance changes with different learning rates. The right panel shows the Euclidean distance between the weights of a finetuned model and those of its pretrained counterpart for the same range of learning rates. This distance provides insight into how much the model's parameters change during fine-tuning, which is relevant to stability and the risk of catastrophic forgetting. The figure helps to assess how each method's performance and parameter shift is affected by the choice of learning rate.
> <details>
> <summary>read the caption</summary>
> Figure 2: Learning rate robustness plots in Subject-driven generation task in terms of DINO scores (Left) and Euclidean distance between a finetuned vs pretrained projection layer weights (Right). Learning rates used for robustness evaluation were derived by multiplying the base learning rate in a range of factors.
> </details>



![](https://arxiv.org/html/2503.18225/extracted/6303293/figures/overtraining3.png)

> 🔼 Figure 3 presents a comparative analysis of the training dynamics of LoRA and DeLoRA.  The left panel shows a line graph plotting the Euclidean distance between the weights of the finetuned model and the pretrained model's weights over the course of training. This distance represents the magnitude of changes made to the model during finetuning. The right panel provides qualitative results showcasing image generation using LoRA and DeLoRA. This visual comparison demonstrates how LoRA produces images with noticeable artifacts earlier in the training process, while DeLoRA generates higher-quality images that maintain a better visual fidelity. This illustrates DeLoRA's improved robustness and stability during training.
> <details>
> <summary>read the caption</summary>
> Figure 3: (Left) Euclidean Distance of finetuned weights to pretrained weights as a function of the number of training steps. (Right) Qualitative examples show that LoRA exhibits significant artifacts earlier in the process compared to DeLoRA, which maintains better image quality.
> </details>



![](https://arxiv.org/html/2503.18225/x3.png)

> 🔼 This figure visualizes the average column norms of the parameters within the attention modules of Stable Diffusion's U-Net.  It displays these norms for various layers and blocks within the U-Net, including the down blocks, up blocks, and mid block.  The x-axis represents the different layers and blocks, and the y-axis shows the average column norms. This visualization helps to illustrate the heterogeneity of parameter norms across the different components of the model.  Understanding these norm distributions can be important for designing and interpreting parameter-efficient fine-tuning techniques for generative models like Stable Diffusion.
> <details>
> <summary>read the caption</summary>
> Figure 4: Average column norms of parameters in the attention modules of Stable Diffusion’s Unet
> </details>



![](https://arxiv.org/html/2503.18225/x4.png)

> 🔼 Figure 5 presents a comparative analysis of DoRA's robustness with and without magnitude updates. It illustrates how the performance of DoRA changes when the learning rate deviates from its optimal value. The left subplot showcases the DINO scores while the right one displays the Euclidean distance between the finetuned and pretrained projection layer weights. This visualization helps in understanding the impact of magnitude updates on DoRA's robustness against learning rate variations.
> <details>
> <summary>read the caption</summary>
> Figure 5: Robustness analysis between DoRA with and without magnitude updates, with respect to learning rate changes from the optimal learning rate.
> </details>



![](https://arxiv.org/html/2503.18225/x5.png)

> 🔼 Figure 6 presents an ablation study on DeLoRA's robustness to learning rate variations in the context of subject-driven image generation.  The left panel displays DINO scores, a measure of subject fidelity in generated images, plotted against different learning rates for the scaling parameter (λ) and the angular weights (BA).  The right panel shows the Euclidean distance between the finetuned and pretrained weights of a projection layer, also as a function of the learning rate for λ and BA. This dual visualization allows for a comprehensive assessment of how changes in learning rate affect both the performance (DINO score) and the stability (distance from pretrained weights) of DeLoRA.  The results show the impact of varying learning rates on DeLoRA's performance and stability.
> <details>
> <summary>read the caption</summary>
> Figure 6: Learning rate robustness plots for DeLoRA in Subject-driven generation task in terms of DINO scores (Left) and Euclidean distance finetuned vs pretrained weights of a projection layer (Right). Ablation testing impact of increasing learning rate for boundary (λ𝜆\lambdaitalic_λ) or angular weights (B⁢A𝐵𝐴BAitalic_B italic_A).
> </details>



![](https://arxiv.org/html/2503.18225/x6.png)

> 🔼 This figure shows examples of image generation results obtained using DeLoRA, a parameter-efficient fine-tuning method.  The left side displays images generated for a personalized generation task, where Stable Diffusion is fine-tuned to generate images of a specific subject in various contexts based on given text prompts. The right side shows results from a semantic map to image task, where DeLoRA fine-tunes Stable Diffusion to generate realistic images that closely adhere to the structure of a provided segmentation map (ADE20K dataset).  This visually demonstrates DeLoRA's ability to adapt a large-scale pre-trained model to various downstream image generation tasks with high fidelity.
> <details>
> <summary>read the caption</summary>
> Figure 7: Examples generated by DeLoRA-finetuned Stable Diffusion for personalized generation on a small set of subject-specific images (left), and for semantic map to image on ADE20K (right).
> </details>



![](https://arxiv.org/html/2503.18225/x7.png)

> 🔼 Figure 8 presents a qualitative comparison of image generation results from DeLoRA, LoRA, and DoRA models after prolonged training, up to 2600 time steps. The images visually showcase the differences in output quality and stability across the three methods, providing insights into each model's ability to maintain image coherence and avoid artifacts during extended training.
> <details>
> <summary>read the caption</summary>
> Figure 8: Prolonged finetuning generated examples generated by DeLoRA, LoRA, and DoRA methods, up to time step 2600.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.16.16">
<tr class="ltx_tr" id="S3.T2.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T2.4.4.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">Method</td>
<td class="ltx_td ltx_border_tt" id="S3.T2.4.4.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T2.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="\Delta W" class="ltx_Math" display="inline" id="S3.T2.1.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.1.m1.1a"><mrow id="S3.T2.1.1.1.1.m1.1.1" xref="S3.T2.1.1.1.1.m1.1.1.cmml"><mi id="S3.T2.1.1.1.1.m1.1.1.2" mathvariant="normal" xref="S3.T2.1.1.1.1.m1.1.1.2.cmml">Δ</mi><mo id="S3.T2.1.1.1.1.m1.1.1.1" xref="S3.T2.1.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T2.1.1.1.1.m1.1.1.3" xref="S3.T2.1.1.1.1.m1.1.1.3.cmml">W</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.1.m1.1b"><apply id="S3.T2.1.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.1.m1.1.1"><times id="S3.T2.1.1.1.1.m1.1.1.1.cmml" xref="S3.T2.1.1.1.1.m1.1.1.1"></times><ci id="S3.T2.1.1.1.1.m1.1.1.2.cmml" xref="S3.T2.1.1.1.1.m1.1.1.2">Δ</ci><ci id="S3.T2.1.1.1.1.m1.1.1.3.cmml" xref="S3.T2.1.1.1.1.m1.1.1.3">𝑊</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.1.m1.1c">\Delta W</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.1.m1.1d">roman_Δ italic_W</annotation></semantics></math> Formulation</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">mIoU <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.2.2.2.2.m1.1"><semantics id="S3.T2.2.2.2.2.m1.1a"><mo id="S3.T2.2.2.2.2.m1.1.1" stretchy="false" xref="S3.T2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.2.m1.1b"><ci id="S3.T2.2.2.2.2.m1.1.1.cmml" xref="S3.T2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.3.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">Acc. <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.3.3.3.3.m1.1"><semantics id="S3.T2.3.3.3.3.m1.1a"><mo id="S3.T2.3.3.3.3.m1.1.1" stretchy="false" xref="S3.T2.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.3.3.m1.1b"><ci id="S3.T2.3.3.3.3.m1.1.1.cmml" xref="S3.T2.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.4.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.4.4.4.4.m1.1"><semantics id="S3.T2.4.4.4.4.m1.1a"><mo id="S3.T2.4.4.4.4.m1.1.1" stretchy="false" xref="S3.T2.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.4.4.4.4.m1.1b"><ci id="S3.T2.4.4.4.4.m1.1.1.cmml" xref="S3.T2.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.5.5.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="S3.T2.5.5.5.1.1">LoRA</span> [rank-<math alttext="r" class="ltx_Math" display="inline" id="S3.T2.5.5.5.1.m1.1"><semantics id="S3.T2.5.5.5.1.m1.1a"><mi id="S3.T2.5.5.5.1.m1.1.1" xref="S3.T2.5.5.5.1.m1.1.1.cmml">r</mi><annotation-xml encoding="MathML-Content" id="S3.T2.5.5.5.1.m1.1b"><ci id="S3.T2.5.5.5.1.m1.1.1.cmml" xref="S3.T2.5.5.5.1.m1.1.1">𝑟</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.5.5.1.m1.1c">r</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.5.5.1.m1.1d">italic_r</annotation></semantics></math>]</td>
<td class="ltx_td ltx_border_t" id="S3.T2.6.6.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.6.6.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="BA" class="ltx_Math" display="inline" id="S3.T2.6.6.6.2.m1.1"><semantics id="S3.T2.6.6.6.2.m1.1a"><mrow id="S3.T2.6.6.6.2.m1.1.1" xref="S3.T2.6.6.6.2.m1.1.1.cmml"><mi id="S3.T2.6.6.6.2.m1.1.1.2" xref="S3.T2.6.6.6.2.m1.1.1.2.cmml">B</mi><mo id="S3.T2.6.6.6.2.m1.1.1.1" xref="S3.T2.6.6.6.2.m1.1.1.1.cmml">⁢</mo><mi id="S3.T2.6.6.6.2.m1.1.1.3" xref="S3.T2.6.6.6.2.m1.1.1.3.cmml">A</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.6.6.6.2.m1.1b"><apply id="S3.T2.6.6.6.2.m1.1.1.cmml" xref="S3.T2.6.6.6.2.m1.1.1"><times id="S3.T2.6.6.6.2.m1.1.1.1.cmml" xref="S3.T2.6.6.6.2.m1.1.1.1"></times><ci id="S3.T2.6.6.6.2.m1.1.1.2.cmml" xref="S3.T2.6.6.6.2.m1.1.1.2">𝐵</ci><ci id="S3.T2.6.6.6.2.m1.1.1.3.cmml" xref="S3.T2.6.6.6.2.m1.1.1.3">𝐴</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.6.6.6.2.m1.1c">BA</annotation><annotation encoding="application/x-llamapun" id="S3.T2.6.6.6.2.m1.1d">italic_B italic_A</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.6.6.4" style="padding-left:4.0pt;padding-right:4.0pt;">25.13</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.6.6.5" style="padding-left:4.0pt;padding-right:4.0pt;">64.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.6.6.6" style="padding-left:4.0pt;padding-right:4.0pt;">31.35</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.8">
<td class="ltx_td ltx_align_left" id="S3.T2.7.7.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.7.7.7.1.m1.1"><semantics id="S3.T2.7.7.7.1.m1.1a"><mo id="S3.T2.7.7.7.1.m1.1.1" stretchy="false" xref="S3.T2.7.7.7.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.7.7.7.1.m1.1b"><ci id="S3.T2.7.7.7.1.m1.1.1.cmml" xref="S3.T2.7.7.7.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.7.7.7.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.7.7.7.1.m1.1d">↓</annotation></semantics></math> + normalize w/ controllable boundary</td>
<td class="ltx_td" id="S3.T2.8.8.8.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S3.T2.8.8.8.2" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\frac{\lambda}{r}B\Xi A" class="ltx_Math" display="inline" id="S3.T2.8.8.8.2.m1.1"><semantics id="S3.T2.8.8.8.2.m1.1a"><mrow id="S3.T2.8.8.8.2.m1.1.1" xref="S3.T2.8.8.8.2.m1.1.1.cmml"><mfrac id="S3.T2.8.8.8.2.m1.1.1.2" xref="S3.T2.8.8.8.2.m1.1.1.2.cmml"><mi id="S3.T2.8.8.8.2.m1.1.1.2.2" xref="S3.T2.8.8.8.2.m1.1.1.2.2.cmml">λ</mi><mi id="S3.T2.8.8.8.2.m1.1.1.2.3" xref="S3.T2.8.8.8.2.m1.1.1.2.3.cmml">r</mi></mfrac><mo id="S3.T2.8.8.8.2.m1.1.1.1" xref="S3.T2.8.8.8.2.m1.1.1.1.cmml">⁢</mo><mi id="S3.T2.8.8.8.2.m1.1.1.3" xref="S3.T2.8.8.8.2.m1.1.1.3.cmml">B</mi><mo id="S3.T2.8.8.8.2.m1.1.1.1a" xref="S3.T2.8.8.8.2.m1.1.1.1.cmml">⁢</mo><mi id="S3.T2.8.8.8.2.m1.1.1.4" mathvariant="normal" xref="S3.T2.8.8.8.2.m1.1.1.4.cmml">Ξ</mi><mo id="S3.T2.8.8.8.2.m1.1.1.1b" xref="S3.T2.8.8.8.2.m1.1.1.1.cmml">⁢</mo><mi id="S3.T2.8.8.8.2.m1.1.1.5" xref="S3.T2.8.8.8.2.m1.1.1.5.cmml">A</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.8.8.8.2.m1.1b"><apply id="S3.T2.8.8.8.2.m1.1.1.cmml" xref="S3.T2.8.8.8.2.m1.1.1"><times id="S3.T2.8.8.8.2.m1.1.1.1.cmml" xref="S3.T2.8.8.8.2.m1.1.1.1"></times><apply id="S3.T2.8.8.8.2.m1.1.1.2.cmml" xref="S3.T2.8.8.8.2.m1.1.1.2"><divide id="S3.T2.8.8.8.2.m1.1.1.2.1.cmml" xref="S3.T2.8.8.8.2.m1.1.1.2"></divide><ci id="S3.T2.8.8.8.2.m1.1.1.2.2.cmml" xref="S3.T2.8.8.8.2.m1.1.1.2.2">𝜆</ci><ci id="S3.T2.8.8.8.2.m1.1.1.2.3.cmml" xref="S3.T2.8.8.8.2.m1.1.1.2.3">𝑟</ci></apply><ci id="S3.T2.8.8.8.2.m1.1.1.3.cmml" xref="S3.T2.8.8.8.2.m1.1.1.3">𝐵</ci><ci id="S3.T2.8.8.8.2.m1.1.1.4.cmml" xref="S3.T2.8.8.8.2.m1.1.1.4">Ξ</ci><ci id="S3.T2.8.8.8.2.m1.1.1.5.cmml" xref="S3.T2.8.8.8.2.m1.1.1.5">𝐴</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.8.8.8.2.m1.1c">\frac{\lambda}{r}B\Xi A</annotation><annotation encoding="application/x-llamapun" id="S3.T2.8.8.8.2.m1.1d">divide start_ARG italic_λ end_ARG start_ARG italic_r end_ARG italic_B roman_Ξ italic_A</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.8.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.8.8.8.4.1">25.66</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.8.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.8.5.1">65.82</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.8.6" style="padding-left:4.0pt;padding-right:4.0pt;">31.01</td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.9.9" style="background-color:#F0F0F0;">
<td class="ltx_td ltx_align_left" id="S3.T2.9.9.9.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="\cdot" class="ltx_Math" display="inline" id="S3.T2.9.9.9.1.m1.1" style="background-color:#F0F0F0;"><semantics id="S3.T2.9.9.9.1.m1.1a"><mo id="S3.T2.9.9.9.1.m1.1.1" mathbackground="#F0F0F0" xref="S3.T2.9.9.9.1.m1.1.1.cmml">⋅</mo><annotation-xml encoding="MathML-Content" id="S3.T2.9.9.9.1.m1.1b"><ci id="S3.T2.9.9.9.1.m1.1.1.cmml" xref="S3.T2.9.9.9.1.m1.1.1">⋅</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.9.9.9.1.m1.1c">\cdot</annotation><annotation encoding="application/x-llamapun" id="S3.T2.9.9.9.1.m1.1d">⋅</annotation></semantics></math><span class="ltx_text" id="S3.T2.9.9.9.1.1" style="background-color:#F0F0F0;">  + normalize w/ controllable boundary + weights-scaling</span>
</td>
<td class="ltx_td" id="S3.T2.9.9.9.2" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td" id="S3.T2.9.9.9.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td" id="S3.T2.9.9.9.4" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td" id="S3.T2.9.9.9.5" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td" id="S3.T2.9.9.9.6" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.11.11.11" style="background-color:#F0F0F0;">
<td class="ltx_td ltx_align_left" id="S3.T2.10.10.10.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="\cdot" class="ltx_Math" display="inline" id="S3.T2.10.10.10.1.m1.1" style="background-color:#F0F0F0;"><semantics id="S3.T2.10.10.10.1.m1.1a"><mo id="S3.T2.10.10.10.1.m1.1.1" mathbackground="#F0F0F0" xref="S3.T2.10.10.10.1.m1.1.1.cmml">⋅</mo><annotation-xml encoding="MathML-Content" id="S3.T2.10.10.10.1.m1.1b"><ci id="S3.T2.10.10.10.1.m1.1.1.cmml" xref="S3.T2.10.10.10.1.m1.1.1">⋅</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.10.10.10.1.m1.1c">\cdot</annotation><annotation encoding="application/x-llamapun" id="S3.T2.10.10.10.1.m1.1d">⋅</annotation></semantics></math><span class="ltx_text" id="S3.T2.10.10.10.1.1" style="background-color:#F0F0F0;">  + controllable boundary + high rank + relaxed + additive FT</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.T2.11.11.11.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.11.11.11.3.1" style="background-color:#F0F0F0;">(DeLoRA)</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.11.11.11.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.11.11.11.2.1" style="background-color:#F0F0F0;"><math alttext="\frac{\|W\|\lambda}{r}B\Xi A" class="ltx_Math" display="inline" id="S3.T2.11.11.11.2.1.m1.1"><semantics id="S3.T2.11.11.11.2.1.m1.1a"><mrow id="S3.T2.11.11.11.2.1.m1.1.2" xref="S3.T2.11.11.11.2.1.m1.1.2.cmml"><mfrac id="S3.T2.11.11.11.2.1.m1.1.1" xref="S3.T2.11.11.11.2.1.m1.1.1.cmml"><mrow id="S3.T2.11.11.11.2.1.m1.1.1.1" xref="S3.T2.11.11.11.2.1.m1.1.1.1.cmml"><mrow id="S3.T2.11.11.11.2.1.m1.1.1.1.3.2" xref="S3.T2.11.11.11.2.1.m1.1.1.1.3.1.cmml"><mo id="S3.T2.11.11.11.2.1.m1.1.1.1.3.2.1" mathbackground="#F0F0F0" stretchy="false" xref="S3.T2.11.11.11.2.1.m1.1.1.1.3.1.1.cmml">‖</mo><mi id="S3.T2.11.11.11.2.1.m1.1.1.1.1" mathbackground="#F0F0F0" xref="S3.T2.11.11.11.2.1.m1.1.1.1.1.cmml">W</mi><mo id="S3.T2.11.11.11.2.1.m1.1.1.1.3.2.2" mathbackground="#F0F0F0" stretchy="false" xref="S3.T2.11.11.11.2.1.m1.1.1.1.3.1.1.cmml">‖</mo></mrow><mo id="S3.T2.11.11.11.2.1.m1.1.1.1.2" xref="S3.T2.11.11.11.2.1.m1.1.1.1.2.cmml">⁢</mo><mi id="S3.T2.11.11.11.2.1.m1.1.1.1.4" mathbackground="#F0F0F0" xref="S3.T2.11.11.11.2.1.m1.1.1.1.4.cmml">λ</mi></mrow><mi id="S3.T2.11.11.11.2.1.m1.1.1.3" mathbackground="#F0F0F0" xref="S3.T2.11.11.11.2.1.m1.1.1.3.cmml">r</mi></mfrac><mo id="S3.T2.11.11.11.2.1.m1.1.2.1" xref="S3.T2.11.11.11.2.1.m1.1.2.1.cmml">⁢</mo><mi id="S3.T2.11.11.11.2.1.m1.1.2.2" mathbackground="#F0F0F0" xref="S3.T2.11.11.11.2.1.m1.1.2.2.cmml">B</mi><mo id="S3.T2.11.11.11.2.1.m1.1.2.1a" xref="S3.T2.11.11.11.2.1.m1.1.2.1.cmml">⁢</mo><mi id="S3.T2.11.11.11.2.1.m1.1.2.3" mathbackground="#F0F0F0" mathvariant="normal" xref="S3.T2.11.11.11.2.1.m1.1.2.3.cmml">Ξ</mi><mo id="S3.T2.11.11.11.2.1.m1.1.2.1b" xref="S3.T2.11.11.11.2.1.m1.1.2.1.cmml">⁢</mo><mi id="S3.T2.11.11.11.2.1.m1.1.2.4" mathbackground="#F0F0F0" xref="S3.T2.11.11.11.2.1.m1.1.2.4.cmml">A</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.11.11.11.2.1.m1.1b"><apply id="S3.T2.11.11.11.2.1.m1.1.2.cmml" xref="S3.T2.11.11.11.2.1.m1.1.2"><times id="S3.T2.11.11.11.2.1.m1.1.2.1.cmml" xref="S3.T2.11.11.11.2.1.m1.1.2.1"></times><apply id="S3.T2.11.11.11.2.1.m1.1.1.cmml" xref="S3.T2.11.11.11.2.1.m1.1.1"><divide id="S3.T2.11.11.11.2.1.m1.1.1.2.cmml" xref="S3.T2.11.11.11.2.1.m1.1.1"></divide><apply id="S3.T2.11.11.11.2.1.m1.1.1.1.cmml" xref="S3.T2.11.11.11.2.1.m1.1.1.1"><times id="S3.T2.11.11.11.2.1.m1.1.1.1.2.cmml" xref="S3.T2.11.11.11.2.1.m1.1.1.1.2"></times><apply id="S3.T2.11.11.11.2.1.m1.1.1.1.3.1.cmml" xref="S3.T2.11.11.11.2.1.m1.1.1.1.3.2"><csymbol cd="latexml" id="S3.T2.11.11.11.2.1.m1.1.1.1.3.1.1.cmml" xref="S3.T2.11.11.11.2.1.m1.1.1.1.3.2.1">norm</csymbol><ci id="S3.T2.11.11.11.2.1.m1.1.1.1.1.cmml" xref="S3.T2.11.11.11.2.1.m1.1.1.1.1">𝑊</ci></apply><ci id="S3.T2.11.11.11.2.1.m1.1.1.1.4.cmml" xref="S3.T2.11.11.11.2.1.m1.1.1.1.4">𝜆</ci></apply><ci id="S3.T2.11.11.11.2.1.m1.1.1.3.cmml" xref="S3.T2.11.11.11.2.1.m1.1.1.3">𝑟</ci></apply><ci id="S3.T2.11.11.11.2.1.m1.1.2.2.cmml" xref="S3.T2.11.11.11.2.1.m1.1.2.2">𝐵</ci><ci id="S3.T2.11.11.11.2.1.m1.1.2.3.cmml" xref="S3.T2.11.11.11.2.1.m1.1.2.3">Ξ</ci><ci id="S3.T2.11.11.11.2.1.m1.1.2.4.cmml" xref="S3.T2.11.11.11.2.1.m1.1.2.4">𝐴</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.11.11.11.2.1.m1.1c">\frac{\|W\|\lambda}{r}B\Xi A</annotation><annotation encoding="application/x-llamapun" id="S3.T2.11.11.11.2.1.m1.1d">divide start_ARG ∥ italic_W ∥ italic_λ end_ARG start_ARG italic_r end_ARG italic_B roman_Ξ italic_A</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.11.11.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.11.11.11.4.1" style="background-color:#F0F0F0;">26.10</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.11.11.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.11.11.11.5.1" style="background-color:#F0F0F0;">65.08</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.11.11.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.11.11.11.6.1" style="background-color:#F0F0F0;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.11.11.11.6.1.1">30.71</span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.13.13">
<td class="ltx_td ltx_align_left" id="S3.T2.12.12.12.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.12.12.12.1.m1.1"><semantics id="S3.T2.12.12.12.1.m1.1a"><mo id="S3.T2.12.12.12.1.m1.1.1" stretchy="false" xref="S3.T2.12.12.12.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.12.12.12.1.m1.1b"><ci id="S3.T2.12.12.12.1.m1.1.1.cmml" xref="S3.T2.12.12.12.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.12.12.12.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.12.12.12.1.m1.1d">↑</annotation></semantics></math> + controllable boundary + high rank + relaxed</td>
<td class="ltx_td" id="S3.T2.13.13.13.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S3.T2.13.13.13.2" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\frac{\lambda}{r}(B\Xi A-D\Phi C)W" class="ltx_Math" display="inline" id="S3.T2.13.13.13.2.m1.1"><semantics id="S3.T2.13.13.13.2.m1.1a"><mrow id="S3.T2.13.13.13.2.m1.1.1" xref="S3.T2.13.13.13.2.m1.1.1.cmml"><mfrac id="S3.T2.13.13.13.2.m1.1.1.3" xref="S3.T2.13.13.13.2.m1.1.1.3.cmml"><mi id="S3.T2.13.13.13.2.m1.1.1.3.2" xref="S3.T2.13.13.13.2.m1.1.1.3.2.cmml">λ</mi><mi id="S3.T2.13.13.13.2.m1.1.1.3.3" xref="S3.T2.13.13.13.2.m1.1.1.3.3.cmml">r</mi></mfrac><mo id="S3.T2.13.13.13.2.m1.1.1.2" xref="S3.T2.13.13.13.2.m1.1.1.2.cmml">⁢</mo><mrow id="S3.T2.13.13.13.2.m1.1.1.1.1" xref="S3.T2.13.13.13.2.m1.1.1.1.1.1.cmml"><mo id="S3.T2.13.13.13.2.m1.1.1.1.1.2" stretchy="false" xref="S3.T2.13.13.13.2.m1.1.1.1.1.1.cmml">(</mo><mrow id="S3.T2.13.13.13.2.m1.1.1.1.1.1" xref="S3.T2.13.13.13.2.m1.1.1.1.1.1.cmml"><mrow id="S3.T2.13.13.13.2.m1.1.1.1.1.1.2" xref="S3.T2.13.13.13.2.m1.1.1.1.1.1.2.cmml"><mi id="S3.T2.13.13.13.2.m1.1.1.1.1.1.2.2" xref="S3.T2.13.13.13.2.m1.1.1.1.1.1.2.2.cmml">B</mi><mo id="S3.T2.13.13.13.2.m1.1.1.1.1.1.2.1" xref="S3.T2.13.13.13.2.m1.1.1.1.1.1.2.1.cmml">⁢</mo><mi id="S3.T2.13.13.13.2.m1.1.1.1.1.1.2.3" mathvariant="normal" xref="S3.T2.13.13.13.2.m1.1.1.1.1.1.2.3.cmml">Ξ</mi><mo id="S3.T2.13.13.13.2.m1.1.1.1.1.1.2.1a" xref="S3.T2.13.13.13.2.m1.1.1.1.1.1.2.1.cmml">⁢</mo><mi id="S3.T2.13.13.13.2.m1.1.1.1.1.1.2.4" xref="S3.T2.13.13.13.2.m1.1.1.1.1.1.2.4.cmml">A</mi></mrow><mo id="S3.T2.13.13.13.2.m1.1.1.1.1.1.1" xref="S3.T2.13.13.13.2.m1.1.1.1.1.1.1.cmml">−</mo><mrow id="S3.T2.13.13.13.2.m1.1.1.1.1.1.3" xref="S3.T2.13.13.13.2.m1.1.1.1.1.1.3.cmml"><mi id="S3.T2.13.13.13.2.m1.1.1.1.1.1.3.2" xref="S3.T2.13.13.13.2.m1.1.1.1.1.1.3.2.cmml">D</mi><mo id="S3.T2.13.13.13.2.m1.1.1.1.1.1.3.1" xref="S3.T2.13.13.13.2.m1.1.1.1.1.1.3.1.cmml">⁢</mo><mi id="S3.T2.13.13.13.2.m1.1.1.1.1.1.3.3" mathvariant="normal" xref="S3.T2.13.13.13.2.m1.1.1.1.1.1.3.3.cmml">Φ</mi><mo id="S3.T2.13.13.13.2.m1.1.1.1.1.1.3.1a" xref="S3.T2.13.13.13.2.m1.1.1.1.1.1.3.1.cmml">⁢</mo><mi id="S3.T2.13.13.13.2.m1.1.1.1.1.1.3.4" xref="S3.T2.13.13.13.2.m1.1.1.1.1.1.3.4.cmml">C</mi></mrow></mrow><mo id="S3.T2.13.13.13.2.m1.1.1.1.1.3" stretchy="false" xref="S3.T2.13.13.13.2.m1.1.1.1.1.1.cmml">)</mo></mrow><mo id="S3.T2.13.13.13.2.m1.1.1.2a" xref="S3.T2.13.13.13.2.m1.1.1.2.cmml">⁢</mo><mi id="S3.T2.13.13.13.2.m1.1.1.4" xref="S3.T2.13.13.13.2.m1.1.1.4.cmml">W</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.13.13.13.2.m1.1b"><apply id="S3.T2.13.13.13.2.m1.1.1.cmml" xref="S3.T2.13.13.13.2.m1.1.1"><times id="S3.T2.13.13.13.2.m1.1.1.2.cmml" xref="S3.T2.13.13.13.2.m1.1.1.2"></times><apply id="S3.T2.13.13.13.2.m1.1.1.3.cmml" xref="S3.T2.13.13.13.2.m1.1.1.3"><divide id="S3.T2.13.13.13.2.m1.1.1.3.1.cmml" xref="S3.T2.13.13.13.2.m1.1.1.3"></divide><ci id="S3.T2.13.13.13.2.m1.1.1.3.2.cmml" xref="S3.T2.13.13.13.2.m1.1.1.3.2">𝜆</ci><ci id="S3.T2.13.13.13.2.m1.1.1.3.3.cmml" xref="S3.T2.13.13.13.2.m1.1.1.3.3">𝑟</ci></apply><apply id="S3.T2.13.13.13.2.m1.1.1.1.1.1.cmml" xref="S3.T2.13.13.13.2.m1.1.1.1.1"><minus id="S3.T2.13.13.13.2.m1.1.1.1.1.1.1.cmml" xref="S3.T2.13.13.13.2.m1.1.1.1.1.1.1"></minus><apply id="S3.T2.13.13.13.2.m1.1.1.1.1.1.2.cmml" xref="S3.T2.13.13.13.2.m1.1.1.1.1.1.2"><times id="S3.T2.13.13.13.2.m1.1.1.1.1.1.2.1.cmml" xref="S3.T2.13.13.13.2.m1.1.1.1.1.1.2.1"></times><ci id="S3.T2.13.13.13.2.m1.1.1.1.1.1.2.2.cmml" xref="S3.T2.13.13.13.2.m1.1.1.1.1.1.2.2">𝐵</ci><ci id="S3.T2.13.13.13.2.m1.1.1.1.1.1.2.3.cmml" xref="S3.T2.13.13.13.2.m1.1.1.1.1.1.2.3">Ξ</ci><ci id="S3.T2.13.13.13.2.m1.1.1.1.1.1.2.4.cmml" xref="S3.T2.13.13.13.2.m1.1.1.1.1.1.2.4">𝐴</ci></apply><apply id="S3.T2.13.13.13.2.m1.1.1.1.1.1.3.cmml" xref="S3.T2.13.13.13.2.m1.1.1.1.1.1.3"><times id="S3.T2.13.13.13.2.m1.1.1.1.1.1.3.1.cmml" xref="S3.T2.13.13.13.2.m1.1.1.1.1.1.3.1"></times><ci id="S3.T2.13.13.13.2.m1.1.1.1.1.1.3.2.cmml" xref="S3.T2.13.13.13.2.m1.1.1.1.1.1.3.2">𝐷</ci><ci id="S3.T2.13.13.13.2.m1.1.1.1.1.1.3.3.cmml" xref="S3.T2.13.13.13.2.m1.1.1.1.1.1.3.3">Φ</ci><ci id="S3.T2.13.13.13.2.m1.1.1.1.1.1.3.4.cmml" xref="S3.T2.13.13.13.2.m1.1.1.1.1.1.3.4">𝐶</ci></apply></apply><ci id="S3.T2.13.13.13.2.m1.1.1.4.cmml" xref="S3.T2.13.13.13.2.m1.1.1.4">𝑊</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.13.13.13.2.m1.1c">\frac{\lambda}{r}(B\Xi A-D\Phi C)W</annotation><annotation encoding="application/x-llamapun" id="S3.T2.13.13.13.2.m1.1d">divide start_ARG italic_λ end_ARG start_ARG italic_r end_ARG ( italic_B roman_Ξ italic_A - italic_D roman_Φ italic_C ) italic_W</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T2.13.13.13.4" style="padding-left:4.0pt;padding-right:4.0pt;">25.55</td>
<td class="ltx_td ltx_align_center" id="S3.T2.13.13.13.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.13.13.13.5.1">65.16</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.13.13.13.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.13.13.13.6.1">29.89</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.15.15.15">
<td class="ltx_td ltx_align_left" id="S3.T2.14.14.14.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<math alttext="|" class="ltx_Math" display="inline" id="S3.T2.14.14.14.1.m1.1"><semantics id="S3.T2.14.14.14.1.m1.1a"><mo fence="false" id="S3.T2.14.14.14.1.m1.1.1" stretchy="false" xref="S3.T2.14.14.14.1.m1.1.1.cmml">|</mo><annotation-xml encoding="MathML-Content" id="S3.T2.14.14.14.1.m1.1b"><ci id="S3.T2.14.14.14.1.m1.1.1.cmml" xref="S3.T2.14.14.14.1.m1.1.1">|</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.14.14.14.1.m1.1c">|</annotation><annotation encoding="application/x-llamapun" id="S3.T2.14.14.14.1.m1.1d">|</annotation></semantics></math> + controllable boundary</td>
<td class="ltx_td" id="S3.T2.15.15.15.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S3.T2.15.15.15.2" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\lambda(uu^{\intercal}-vv^{\intercal})W" class="ltx_Math" display="inline" id="S3.T2.15.15.15.2.m1.1"><semantics id="S3.T2.15.15.15.2.m1.1a"><mrow id="S3.T2.15.15.15.2.m1.1.1" xref="S3.T2.15.15.15.2.m1.1.1.cmml"><mi id="S3.T2.15.15.15.2.m1.1.1.3" xref="S3.T2.15.15.15.2.m1.1.1.3.cmml">λ</mi><mo id="S3.T2.15.15.15.2.m1.1.1.2" xref="S3.T2.15.15.15.2.m1.1.1.2.cmml">⁢</mo><mrow id="S3.T2.15.15.15.2.m1.1.1.1.1" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.cmml"><mo id="S3.T2.15.15.15.2.m1.1.1.1.1.2" stretchy="false" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.cmml">(</mo><mrow id="S3.T2.15.15.15.2.m1.1.1.1.1.1" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.cmml"><mrow id="S3.T2.15.15.15.2.m1.1.1.1.1.1.2" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.2.cmml"><mi id="S3.T2.15.15.15.2.m1.1.1.1.1.1.2.2" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.2.2.cmml">u</mi><mo id="S3.T2.15.15.15.2.m1.1.1.1.1.1.2.1" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.2.1.cmml">⁢</mo><msup id="S3.T2.15.15.15.2.m1.1.1.1.1.1.2.3" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.2.3.cmml"><mi id="S3.T2.15.15.15.2.m1.1.1.1.1.1.2.3.2" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.2.3.2.cmml">u</mi><mo id="S3.T2.15.15.15.2.m1.1.1.1.1.1.2.3.3" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.2.3.3.cmml">⊺</mo></msup></mrow><mo id="S3.T2.15.15.15.2.m1.1.1.1.1.1.1" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.1.cmml">−</mo><mrow id="S3.T2.15.15.15.2.m1.1.1.1.1.1.3" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.3.cmml"><mi id="S3.T2.15.15.15.2.m1.1.1.1.1.1.3.2" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.3.2.cmml">v</mi><mo id="S3.T2.15.15.15.2.m1.1.1.1.1.1.3.1" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.3.1.cmml">⁢</mo><msup id="S3.T2.15.15.15.2.m1.1.1.1.1.1.3.3" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.3.3.cmml"><mi id="S3.T2.15.15.15.2.m1.1.1.1.1.1.3.3.2" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.3.3.2.cmml">v</mi><mo id="S3.T2.15.15.15.2.m1.1.1.1.1.1.3.3.3" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.3.3.3.cmml">⊺</mo></msup></mrow></mrow><mo id="S3.T2.15.15.15.2.m1.1.1.1.1.3" stretchy="false" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.cmml">)</mo></mrow><mo id="S3.T2.15.15.15.2.m1.1.1.2a" xref="S3.T2.15.15.15.2.m1.1.1.2.cmml">⁢</mo><mi id="S3.T2.15.15.15.2.m1.1.1.4" xref="S3.T2.15.15.15.2.m1.1.1.4.cmml">W</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.15.15.15.2.m1.1b"><apply id="S3.T2.15.15.15.2.m1.1.1.cmml" xref="S3.T2.15.15.15.2.m1.1.1"><times id="S3.T2.15.15.15.2.m1.1.1.2.cmml" xref="S3.T2.15.15.15.2.m1.1.1.2"></times><ci id="S3.T2.15.15.15.2.m1.1.1.3.cmml" xref="S3.T2.15.15.15.2.m1.1.1.3">𝜆</ci><apply id="S3.T2.15.15.15.2.m1.1.1.1.1.1.cmml" xref="S3.T2.15.15.15.2.m1.1.1.1.1"><minus id="S3.T2.15.15.15.2.m1.1.1.1.1.1.1.cmml" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.1"></minus><apply id="S3.T2.15.15.15.2.m1.1.1.1.1.1.2.cmml" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.2"><times id="S3.T2.15.15.15.2.m1.1.1.1.1.1.2.1.cmml" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.2.1"></times><ci id="S3.T2.15.15.15.2.m1.1.1.1.1.1.2.2.cmml" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.2.2">𝑢</ci><apply id="S3.T2.15.15.15.2.m1.1.1.1.1.1.2.3.cmml" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.2.3"><csymbol cd="ambiguous" id="S3.T2.15.15.15.2.m1.1.1.1.1.1.2.3.1.cmml" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.2.3">superscript</csymbol><ci id="S3.T2.15.15.15.2.m1.1.1.1.1.1.2.3.2.cmml" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.2.3.2">𝑢</ci><ci id="S3.T2.15.15.15.2.m1.1.1.1.1.1.2.3.3.cmml" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.2.3.3">⊺</ci></apply></apply><apply id="S3.T2.15.15.15.2.m1.1.1.1.1.1.3.cmml" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.3"><times id="S3.T2.15.15.15.2.m1.1.1.1.1.1.3.1.cmml" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.3.1"></times><ci id="S3.T2.15.15.15.2.m1.1.1.1.1.1.3.2.cmml" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.3.2">𝑣</ci><apply id="S3.T2.15.15.15.2.m1.1.1.1.1.1.3.3.cmml" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.3.3"><csymbol cd="ambiguous" id="S3.T2.15.15.15.2.m1.1.1.1.1.1.3.3.1.cmml" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.3.3">superscript</csymbol><ci id="S3.T2.15.15.15.2.m1.1.1.1.1.1.3.3.2.cmml" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.3.3.2">𝑣</ci><ci id="S3.T2.15.15.15.2.m1.1.1.1.1.1.3.3.3.cmml" xref="S3.T2.15.15.15.2.m1.1.1.1.1.1.3.3.3">⊺</ci></apply></apply></apply><ci id="S3.T2.15.15.15.2.m1.1.1.4.cmml" xref="S3.T2.15.15.15.2.m1.1.1.4">𝑊</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.15.15.15.2.m1.1c">\lambda(uu^{\intercal}-vv^{\intercal})W</annotation><annotation encoding="application/x-llamapun" id="S3.T2.15.15.15.2.m1.1d">italic_λ ( italic_u italic_u start_POSTSUPERSCRIPT ⊺ end_POSTSUPERSCRIPT - italic_v italic_v start_POSTSUPERSCRIPT ⊺ end_POSTSUPERSCRIPT ) italic_W</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.15.15.4" style="padding-left:4.0pt;padding-right:4.0pt;">24.56</td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.15.15.5" style="padding-left:4.0pt;padding-right:4.0pt;">62.70</td>
<td class="ltx_td ltx_align_center" id="S3.T2.15.15.15.6" style="padding-left:4.0pt;padding-right:4.0pt;">31.28</td>
</tr>
<tr class="ltx_tr" id="S3.T2.16.16.16">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.16.16.16.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="S3.T2.16.16.16.2.1">ETHER+ (one-sided)</span> [rank-2, boundary equal to 2]</td>
<td class="ltx_td ltx_border_bb" id="S3.T2.16.16.16.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.16.16.16.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="(uu^{\intercal}-vv^{\intercal})W" class="ltx_Math" display="inline" id="S3.T2.16.16.16.1.m1.1"><semantics id="S3.T2.16.16.16.1.m1.1a"><mrow id="S3.T2.16.16.16.1.m1.1.1" xref="S3.T2.16.16.16.1.m1.1.1.cmml"><mrow id="S3.T2.16.16.16.1.m1.1.1.1.1" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.cmml"><mo id="S3.T2.16.16.16.1.m1.1.1.1.1.2" stretchy="false" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.cmml">(</mo><mrow id="S3.T2.16.16.16.1.m1.1.1.1.1.1" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.cmml"><mrow id="S3.T2.16.16.16.1.m1.1.1.1.1.1.2" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.2.cmml"><mi id="S3.T2.16.16.16.1.m1.1.1.1.1.1.2.2" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.2.2.cmml">u</mi><mo id="S3.T2.16.16.16.1.m1.1.1.1.1.1.2.1" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.2.1.cmml">⁢</mo><msup id="S3.T2.16.16.16.1.m1.1.1.1.1.1.2.3" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.2.3.cmml"><mi id="S3.T2.16.16.16.1.m1.1.1.1.1.1.2.3.2" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.2.3.2.cmml">u</mi><mo id="S3.T2.16.16.16.1.m1.1.1.1.1.1.2.3.3" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.2.3.3.cmml">⊺</mo></msup></mrow><mo id="S3.T2.16.16.16.1.m1.1.1.1.1.1.1" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.1.cmml">−</mo><mrow id="S3.T2.16.16.16.1.m1.1.1.1.1.1.3" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.3.cmml"><mi id="S3.T2.16.16.16.1.m1.1.1.1.1.1.3.2" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.3.2.cmml">v</mi><mo id="S3.T2.16.16.16.1.m1.1.1.1.1.1.3.1" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.3.1.cmml">⁢</mo><msup id="S3.T2.16.16.16.1.m1.1.1.1.1.1.3.3" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.3.3.cmml"><mi id="S3.T2.16.16.16.1.m1.1.1.1.1.1.3.3.2" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.3.3.2.cmml">v</mi><mo id="S3.T2.16.16.16.1.m1.1.1.1.1.1.3.3.3" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.3.3.3.cmml">⊺</mo></msup></mrow></mrow><mo id="S3.T2.16.16.16.1.m1.1.1.1.1.3" stretchy="false" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.cmml">)</mo></mrow><mo id="S3.T2.16.16.16.1.m1.1.1.2" xref="S3.T2.16.16.16.1.m1.1.1.2.cmml">⁢</mo><mi id="S3.T2.16.16.16.1.m1.1.1.3" xref="S3.T2.16.16.16.1.m1.1.1.3.cmml">W</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.16.16.16.1.m1.1b"><apply id="S3.T2.16.16.16.1.m1.1.1.cmml" xref="S3.T2.16.16.16.1.m1.1.1"><times id="S3.T2.16.16.16.1.m1.1.1.2.cmml" xref="S3.T2.16.16.16.1.m1.1.1.2"></times><apply id="S3.T2.16.16.16.1.m1.1.1.1.1.1.cmml" xref="S3.T2.16.16.16.1.m1.1.1.1.1"><minus id="S3.T2.16.16.16.1.m1.1.1.1.1.1.1.cmml" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.1"></minus><apply id="S3.T2.16.16.16.1.m1.1.1.1.1.1.2.cmml" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.2"><times id="S3.T2.16.16.16.1.m1.1.1.1.1.1.2.1.cmml" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.2.1"></times><ci id="S3.T2.16.16.16.1.m1.1.1.1.1.1.2.2.cmml" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.2.2">𝑢</ci><apply id="S3.T2.16.16.16.1.m1.1.1.1.1.1.2.3.cmml" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.2.3"><csymbol cd="ambiguous" id="S3.T2.16.16.16.1.m1.1.1.1.1.1.2.3.1.cmml" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.2.3">superscript</csymbol><ci id="S3.T2.16.16.16.1.m1.1.1.1.1.1.2.3.2.cmml" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.2.3.2">𝑢</ci><ci id="S3.T2.16.16.16.1.m1.1.1.1.1.1.2.3.3.cmml" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.2.3.3">⊺</ci></apply></apply><apply id="S3.T2.16.16.16.1.m1.1.1.1.1.1.3.cmml" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.3"><times id="S3.T2.16.16.16.1.m1.1.1.1.1.1.3.1.cmml" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.3.1"></times><ci id="S3.T2.16.16.16.1.m1.1.1.1.1.1.3.2.cmml" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.3.2">𝑣</ci><apply id="S3.T2.16.16.16.1.m1.1.1.1.1.1.3.3.cmml" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.3.3"><csymbol cd="ambiguous" id="S3.T2.16.16.16.1.m1.1.1.1.1.1.3.3.1.cmml" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.3.3">superscript</csymbol><ci id="S3.T2.16.16.16.1.m1.1.1.1.1.1.3.3.2.cmml" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.3.3.2">𝑣</ci><ci id="S3.T2.16.16.16.1.m1.1.1.1.1.1.3.3.3.cmml" xref="S3.T2.16.16.16.1.m1.1.1.1.1.1.3.3.3">⊺</ci></apply></apply></apply><ci id="S3.T2.16.16.16.1.m1.1.1.3.cmml" xref="S3.T2.16.16.16.1.m1.1.1.3">𝑊</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.16.16.16.1.m1.1c">(uu^{\intercal}-vv^{\intercal})W</annotation><annotation encoding="application/x-llamapun" id="S3.T2.16.16.16.1.m1.1d">( italic_u italic_u start_POSTSUPERSCRIPT ⊺ end_POSTSUPERSCRIPT - italic_v italic_v start_POSTSUPERSCRIPT ⊺ end_POSTSUPERSCRIPT ) italic_W</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.16.16.16.4" style="padding-left:4.0pt;padding-right:4.0pt;">23.46</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.16.16.16.5" style="padding-left:4.0pt;padding-right:4.0pt;">62.26</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.16.16.16.6" style="padding-left:4.0pt;padding-right:4.0pt;">31.18</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study evaluating the impact of different design choices in the DeLoRA model on its performance for the Semantic Map to Image task. It systematically adds components from both the LoRA and ETHER methods to demonstrate the incremental improvements achieved by each addition.  The table shows how each component contributes to the overall performance improvement, highlighting the relative importance of various design aspects of the DeLoRA model.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablation of DeLoRA innovations on the Semantic Map to Image task. We show how different components from both LoRA and ETHER derivations incrementally improve performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T3.8.8">
<tr class="ltx_tr" id="S3.T3.8.8.9">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T3.8.8.9.1">Method</td>
<td class="ltx_td ltx_border_tt" id="S3.T3.8.8.9.2"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.8.8.9.3">#param</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.8.8.9.4">DINO</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.8.8.9.5">CLIP-I</td>
</tr>
<tr class="ltx_tr" id="S3.T3.8.8.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.8.8.10.1">Real Images</td>
<td class="ltx_td ltx_border_t" id="S3.T3.8.8.10.2"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.8.8.10.3"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.8.8.10.4">0.703</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.8.8.10.5">0.864</td>
</tr>
<tr class="ltx_tr" id="S3.T3.8.8.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.8.8.11.1">DreamBooth</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.8.8.11.2"><cite class="ltx_cite ltx_citemacro_citep">(Ruiz et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.18225v1#bib.bib30" title="">2023</a>)</cite></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.8.8.11.3">859.5M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.8.8.11.4">0.644</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.8.8.11.5">0.793</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.1">
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.1.1">OFT<sub class="ltx_sub" id="S3.T3.1.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S3.T3.1.1.1.1.1.1">n=4</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.1.2"><cite class="ltx_cite ltx_citemacro_citep">(Qiu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.18225v1#bib.bib26" title="">2023</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.1.3">11.6M</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.1.4">0.652</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.1.5">0.794</td>
</tr>
<tr class="ltx_tr" id="S3.T3.8.8.12">
<td class="ltx_td ltx_align_left" id="S3.T3.8.8.12.1">ETHER+</td>
<td class="ltx_td ltx_align_center" id="S3.T3.8.8.12.2"><cite class="ltx_cite ltx_citemacro_citep">(Bini et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.18225v1#bib.bib3" title="">2024</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="S3.T3.8.8.12.3">0.4M</td>
<td class="ltx_td ltx_align_center" id="S3.T3.8.8.12.4">0.666</td>
<td class="ltx_td ltx_align_center" id="S3.T3.8.8.12.5">0.800</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.2.2">
<td class="ltx_td ltx_align_left" id="S3.T3.2.2.2.1">LoRA<sub class="ltx_sub" id="S3.T3.2.2.2.1.1"><span class="ltx_text ltx_font_italic" id="S3.T3.2.2.2.1.1.1">r=4</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.2.2.2"><cite class="ltx_cite ltx_citemacro_citep">(Hu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.18225v1#bib.bib12" title="">2022</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.2.2.3">0.8M</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.2.2.4">0.660</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.2.2.5">0.796</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.3.3">
<td class="ltx_td ltx_align_left" id="S3.T3.3.3.3.1">LoRA<sub class="ltx_sub" id="S3.T3.3.3.3.1.1"><span class="ltx_text ltx_font_italic" id="S3.T3.3.3.3.1.1.1">r=16</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.3.3.2"><cite class="ltx_cite ltx_citemacro_citep">(Hu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.18225v1#bib.bib12" title="">2022</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.3.3.3">3.2M</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.3.3.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.3.3.3.4.1">0.686</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.3.3.5">0.818</td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.4.4">
<td class="ltx_td ltx_align_left" id="S3.T3.4.4.4.1">DoRA<sub class="ltx_sub" id="S3.T3.4.4.4.1.1"><span class="ltx_text ltx_font_italic" id="S3.T3.4.4.4.1.1.1">r=16</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.4.4.2"><cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.18225v1#bib.bib19" title="">2024a</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.4.4.3">3.2M</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.4.4.4"><span class="ltx_text ltx_font_bold" id="S3.T3.4.4.4.4.1">0.687</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.4.4.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.4.4.4.5.1">0.819</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.5.5.5" style="background-color:#F0F0F0;">
<td class="ltx_td ltx_align_left" id="S3.T3.5.5.5.1"><span class="ltx_text" id="S3.T3.5.5.5.1.1" style="background-color:#F0F0F0;">DeLoRA<sub class="ltx_sub" id="S3.T3.5.5.5.1.1.1"><span class="ltx_text ltx_font_italic" id="S3.T3.5.5.5.1.1.1.1">r=16</span></sub></span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.5.5.5.2"><span class="ltx_text" id="S3.T3.5.5.5.2.1" style="background-color:#F0F0F0;">(ours)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.5.5.5.3"><span class="ltx_text" id="S3.T3.5.5.5.3.1" style="background-color:#F0F0F0;">3.2M</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.5.5.5.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.5.5.5.4.1" style="background-color:#F0F0F0;">0.686</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.5.5.5.5"><span class="ltx_text ltx_font_bold" id="S3.T3.5.5.5.5.1" style="background-color:#F0F0F0;">0.820</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.6.6.6.1">LoRA<math alttext="{}^{\dagger}_{r=16}" class="ltx_Math" display="inline" id="S3.T3.6.6.6.1.m1.1"><semantics id="S3.T3.6.6.6.1.m1.1a"><mmultiscripts id="S3.T3.6.6.6.1.m1.1.1" xref="S3.T3.6.6.6.1.m1.1.1.cmml"><mi id="S3.T3.6.6.6.1.m1.1.1.2.2" xref="S3.T3.6.6.6.1.m1.1.1.2.2.cmml"></mi><mprescripts id="S3.T3.6.6.6.1.m1.1.1a" xref="S3.T3.6.6.6.1.m1.1.1.cmml"></mprescripts><mrow id="S3.T3.6.6.6.1.m1.1.1.3" xref="S3.T3.6.6.6.1.m1.1.1.3.cmml"><mi id="S3.T3.6.6.6.1.m1.1.1.3.2" xref="S3.T3.6.6.6.1.m1.1.1.3.2.cmml">r</mi><mo id="S3.T3.6.6.6.1.m1.1.1.3.1" xref="S3.T3.6.6.6.1.m1.1.1.3.1.cmml">=</mo><mn id="S3.T3.6.6.6.1.m1.1.1.3.3" xref="S3.T3.6.6.6.1.m1.1.1.3.3.cmml">16</mn></mrow><mrow id="S3.T3.6.6.6.1.m1.1.1b" xref="S3.T3.6.6.6.1.m1.1.1.cmml"></mrow><mrow id="S3.T3.6.6.6.1.m1.1.1c" xref="S3.T3.6.6.6.1.m1.1.1.cmml"></mrow><mo id="S3.T3.6.6.6.1.m1.1.1.2.3" xref="S3.T3.6.6.6.1.m1.1.1.2.3.cmml">†</mo></mmultiscripts><annotation-xml encoding="MathML-Content" id="S3.T3.6.6.6.1.m1.1b"><apply id="S3.T3.6.6.6.1.m1.1.1.cmml" xref="S3.T3.6.6.6.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.6.6.6.1.m1.1.1.1.cmml" xref="S3.T3.6.6.6.1.m1.1.1">subscript</csymbol><apply id="S3.T3.6.6.6.1.m1.1.1.2.cmml" xref="S3.T3.6.6.6.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.6.6.6.1.m1.1.1.2.1.cmml" xref="S3.T3.6.6.6.1.m1.1.1">superscript</csymbol><csymbol cd="latexml" id="S3.T3.6.6.6.1.m1.1.1.2.2.cmml" xref="S3.T3.6.6.6.1.m1.1.1.2.2">absent</csymbol><ci id="S3.T3.6.6.6.1.m1.1.1.2.3.cmml" xref="S3.T3.6.6.6.1.m1.1.1.2.3">†</ci></apply><apply id="S3.T3.6.6.6.1.m1.1.1.3.cmml" xref="S3.T3.6.6.6.1.m1.1.1.3"><eq id="S3.T3.6.6.6.1.m1.1.1.3.1.cmml" xref="S3.T3.6.6.6.1.m1.1.1.3.1"></eq><ci id="S3.T3.6.6.6.1.m1.1.1.3.2.cmml" xref="S3.T3.6.6.6.1.m1.1.1.3.2">𝑟</ci><cn id="S3.T3.6.6.6.1.m1.1.1.3.3.cmml" type="integer" xref="S3.T3.6.6.6.1.m1.1.1.3.3">16</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.6.6.6.1.m1.1c">{}^{\dagger}_{r=16}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.6.6.6.1.m1.1d">start_FLOATSUPERSCRIPT † end_FLOATSUPERSCRIPT start_POSTSUBSCRIPT italic_r = 16 end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.6.6.2"><cite class="ltx_cite ltx_citemacro_citep">(Hu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.18225v1#bib.bib12" title="">2022</a>)</cite></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.6.6.3">3.2M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.6.6.4">0.688</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.6.6.5">0.818</td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.7.7">
<td class="ltx_td ltx_align_left" id="S3.T3.7.7.7.1">DoRA<math alttext="{}^{\dagger}_{r=16}" class="ltx_Math" display="inline" id="S3.T3.7.7.7.1.m1.1"><semantics id="S3.T3.7.7.7.1.m1.1a"><mmultiscripts id="S3.T3.7.7.7.1.m1.1.1" xref="S3.T3.7.7.7.1.m1.1.1.cmml"><mi id="S3.T3.7.7.7.1.m1.1.1.2.2" xref="S3.T3.7.7.7.1.m1.1.1.2.2.cmml"></mi><mprescripts id="S3.T3.7.7.7.1.m1.1.1a" xref="S3.T3.7.7.7.1.m1.1.1.cmml"></mprescripts><mrow id="S3.T3.7.7.7.1.m1.1.1.3" xref="S3.T3.7.7.7.1.m1.1.1.3.cmml"><mi id="S3.T3.7.7.7.1.m1.1.1.3.2" xref="S3.T3.7.7.7.1.m1.1.1.3.2.cmml">r</mi><mo id="S3.T3.7.7.7.1.m1.1.1.3.1" xref="S3.T3.7.7.7.1.m1.1.1.3.1.cmml">=</mo><mn id="S3.T3.7.7.7.1.m1.1.1.3.3" xref="S3.T3.7.7.7.1.m1.1.1.3.3.cmml">16</mn></mrow><mrow id="S3.T3.7.7.7.1.m1.1.1b" xref="S3.T3.7.7.7.1.m1.1.1.cmml"></mrow><mrow id="S3.T3.7.7.7.1.m1.1.1c" xref="S3.T3.7.7.7.1.m1.1.1.cmml"></mrow><mo id="S3.T3.7.7.7.1.m1.1.1.2.3" xref="S3.T3.7.7.7.1.m1.1.1.2.3.cmml">†</mo></mmultiscripts><annotation-xml encoding="MathML-Content" id="S3.T3.7.7.7.1.m1.1b"><apply id="S3.T3.7.7.7.1.m1.1.1.cmml" xref="S3.T3.7.7.7.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.7.7.7.1.m1.1.1.1.cmml" xref="S3.T3.7.7.7.1.m1.1.1">subscript</csymbol><apply id="S3.T3.7.7.7.1.m1.1.1.2.cmml" xref="S3.T3.7.7.7.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.7.7.7.1.m1.1.1.2.1.cmml" xref="S3.T3.7.7.7.1.m1.1.1">superscript</csymbol><csymbol cd="latexml" id="S3.T3.7.7.7.1.m1.1.1.2.2.cmml" xref="S3.T3.7.7.7.1.m1.1.1.2.2">absent</csymbol><ci id="S3.T3.7.7.7.1.m1.1.1.2.3.cmml" xref="S3.T3.7.7.7.1.m1.1.1.2.3">†</ci></apply><apply id="S3.T3.7.7.7.1.m1.1.1.3.cmml" xref="S3.T3.7.7.7.1.m1.1.1.3"><eq id="S3.T3.7.7.7.1.m1.1.1.3.1.cmml" xref="S3.T3.7.7.7.1.m1.1.1.3.1"></eq><ci id="S3.T3.7.7.7.1.m1.1.1.3.2.cmml" xref="S3.T3.7.7.7.1.m1.1.1.3.2">𝑟</ci><cn id="S3.T3.7.7.7.1.m1.1.1.3.3.cmml" type="integer" xref="S3.T3.7.7.7.1.m1.1.1.3.3">16</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.7.7.7.1.m1.1c">{}^{\dagger}_{r=16}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.7.7.7.1.m1.1d">start_FLOATSUPERSCRIPT † end_FLOATSUPERSCRIPT start_POSTSUBSCRIPT italic_r = 16 end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.7.2"><cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.18225v1#bib.bib19" title="">2024a</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.7.3">3.2M</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.7.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.7.7.7.4.1">0.689</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.7.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.7.7.7.5.1">0.819</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.8.8.8" style="background-color:#F0F0F0;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.8.8.8.1"><span class="ltx_text" id="S3.T3.8.8.8.1.1" style="background-color:#F0F0F0;">DeLoRA<math alttext="{}^{\dagger}_{r=16}" class="ltx_Math" display="inline" id="S3.T3.8.8.8.1.1.m1.1"><semantics id="S3.T3.8.8.8.1.1.m1.1a"><mmultiscripts id="S3.T3.8.8.8.1.1.m1.1.1" xref="S3.T3.8.8.8.1.1.m1.1.1.cmml"><mi id="S3.T3.8.8.8.1.1.m1.1.1.2.2" xref="S3.T3.8.8.8.1.1.m1.1.1.2.2.cmml"></mi><mprescripts id="S3.T3.8.8.8.1.1.m1.1.1a" xref="S3.T3.8.8.8.1.1.m1.1.1.cmml"></mprescripts><mrow id="S3.T3.8.8.8.1.1.m1.1.1.3" xref="S3.T3.8.8.8.1.1.m1.1.1.3.cmml"><mi id="S3.T3.8.8.8.1.1.m1.1.1.3.2" mathbackground="#F0F0F0" xref="S3.T3.8.8.8.1.1.m1.1.1.3.2.cmml">r</mi><mo id="S3.T3.8.8.8.1.1.m1.1.1.3.1" mathbackground="#F0F0F0" xref="S3.T3.8.8.8.1.1.m1.1.1.3.1.cmml">=</mo><mn id="S3.T3.8.8.8.1.1.m1.1.1.3.3" mathbackground="#F0F0F0" xref="S3.T3.8.8.8.1.1.m1.1.1.3.3.cmml">16</mn></mrow><mrow id="S3.T3.8.8.8.1.1.m1.1.1b" xref="S3.T3.8.8.8.1.1.m1.1.1.cmml"></mrow><mrow id="S3.T3.8.8.8.1.1.m1.1.1c" xref="S3.T3.8.8.8.1.1.m1.1.1.cmml"></mrow><mo id="S3.T3.8.8.8.1.1.m1.1.1.2.3" mathbackground="#F0F0F0" xref="S3.T3.8.8.8.1.1.m1.1.1.2.3.cmml">†</mo></mmultiscripts><annotation-xml encoding="MathML-Content" id="S3.T3.8.8.8.1.1.m1.1b"><apply id="S3.T3.8.8.8.1.1.m1.1.1.cmml" xref="S3.T3.8.8.8.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.8.8.8.1.1.m1.1.1.1.cmml" xref="S3.T3.8.8.8.1.1.m1.1.1">subscript</csymbol><apply id="S3.T3.8.8.8.1.1.m1.1.1.2.cmml" xref="S3.T3.8.8.8.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.8.8.8.1.1.m1.1.1.2.1.cmml" xref="S3.T3.8.8.8.1.1.m1.1.1">superscript</csymbol><csymbol cd="latexml" id="S3.T3.8.8.8.1.1.m1.1.1.2.2.cmml" xref="S3.T3.8.8.8.1.1.m1.1.1.2.2">absent</csymbol><ci id="S3.T3.8.8.8.1.1.m1.1.1.2.3.cmml" xref="S3.T3.8.8.8.1.1.m1.1.1.2.3">†</ci></apply><apply id="S3.T3.8.8.8.1.1.m1.1.1.3.cmml" xref="S3.T3.8.8.8.1.1.m1.1.1.3"><eq id="S3.T3.8.8.8.1.1.m1.1.1.3.1.cmml" xref="S3.T3.8.8.8.1.1.m1.1.1.3.1"></eq><ci id="S3.T3.8.8.8.1.1.m1.1.1.3.2.cmml" xref="S3.T3.8.8.8.1.1.m1.1.1.3.2">𝑟</ci><cn id="S3.T3.8.8.8.1.1.m1.1.1.3.3.cmml" type="integer" xref="S3.T3.8.8.8.1.1.m1.1.1.3.3">16</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.8.8.8.1.1.m1.1c">{}^{\dagger}_{r=16}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.8.8.8.1.1.m1.1d">start_FLOATSUPERSCRIPT † end_FLOATSUPERSCRIPT start_POSTSUBSCRIPT italic_r = 16 end_POSTSUBSCRIPT</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.8.8.8.2"><span class="ltx_text" id="S3.T3.8.8.8.2.1" style="background-color:#F0F0F0;">(ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.8.8.8.3"><span class="ltx_text" id="S3.T3.8.8.8.3.1" style="background-color:#F0F0F0;">3.2M</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.8.8.8.4"><span class="ltx_text ltx_font_bold" id="S3.T3.8.8.8.4.1" style="background-color:#F0F0F0;">0.693</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.8.8.8.5"><span class="ltx_text ltx_font_bold" id="S3.T3.8.8.8.5.1" style="background-color:#F0F0F0;">0.820</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of different parameter-efficient fine-tuning (PEFT) methods on a subject-driven image generation task.  The task involves adapting a pre-trained Stable Diffusion model to generate images of a specific subject according to a given prompt.  The table shows the performance of various methods, including LoRA, DORA, and the proposed DeLoRA, in terms of two metrics: DINO and CLIP-I.  These metrics evaluate the similarity between generated images and real images of the subject, measuring the faithfulness of the generation. The number of parameters used by each method is also reported. Some results may include tuned hyperparameters, indicated by a dagger symbol.
> <details>
> <summary>read the caption</summary>
> Table 3: Results for evaluating DeLoRA in subject-driven image generation. ††\dagger† indicates experiments with tuned hyperparameters.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T4.1.1">
<tr class="ltx_tr" id="S3.T4.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T4.1.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">Method</td>
<td class="ltx_td ltx_border_tt" id="S3.T4.1.1.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.1.1.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">#param</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.1.1.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">MNLI</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.1.1.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">SST-2</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.1.1.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">MRPC</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.1.1.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">CoLA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.1.1.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">QNLI</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.1.1.2.9" style="padding-left:4.0pt;padding-right:4.0pt;">QQP</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.1.1.2.10" style="padding-left:4.0pt;padding-right:4.0pt;">RTE</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T4.1.1.2.11" style="padding-left:4.0pt;padding-right:4.0pt;">STS-B</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.1.1.2.12" style="padding-left:4.0pt;padding-right:4.0pt;">Avg</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.1.1.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">Full Finet.</td>
<td class="ltx_td ltx_border_t" id="S3.T4.1.1.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">125M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">87.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">94.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.3.6" style="padding-left:4.0pt;padding-right:4.0pt;">87.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.3.7" style="padding-left:4.0pt;padding-right:4.0pt;">62.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.3.8" style="padding-left:4.0pt;padding-right:4.0pt;">92.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.3.9" style="padding-left:4.0pt;padding-right:4.0pt;">91.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.3.10" style="padding-left:4.0pt;padding-right:4.0pt;">78.3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.1.1.3.11" style="padding-left:4.0pt;padding-right:4.0pt;">90.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.3.12" style="padding-left:4.0pt;padding-right:4.0pt;">85.6</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.1.1.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">BitFit</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><cite class="ltx_cite ltx_citemacro_citep">(Zaken et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.18225v1#bib.bib42" title="">2022</a>)</cite></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.1M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">84.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.4.5.1">94.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">88.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">54.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.4.8" style="padding-left:4.0pt;padding-right:4.0pt;">91.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.4.9" style="padding-left:4.0pt;padding-right:4.0pt;">87.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.4.10" style="padding-left:4.0pt;padding-right:4.0pt;">69.8</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.1.1.4.11" style="padding-left:4.0pt;padding-right:4.0pt;">89.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.4.12" style="padding-left:4.0pt;padding-right:4.0pt;">82.3</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.5">
<td class="ltx_td ltx_align_left" id="S3.T4.1.1.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">IA3</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.5.2" style="padding-left:4.0pt;padding-right:4.0pt;"><cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.18225v1#bib.bib18" title="">2022</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.06M</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">85.4</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">93.4</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.5.6" style="padding-left:4.0pt;padding-right:4.0pt;">86.4</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.5.7" style="padding-left:4.0pt;padding-right:4.0pt;">57.8</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.5.8" style="padding-left:4.0pt;padding-right:4.0pt;">91.1</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.5.9" style="padding-left:4.0pt;padding-right:4.0pt;">88.5</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.5.10" style="padding-left:4.0pt;padding-right:4.0pt;">73.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.1.1.5.11" style="padding-left:4.0pt;padding-right:4.0pt;">88.5</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.5.12" style="padding-left:4.0pt;padding-right:4.0pt;">83.1</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.6">
<td class="ltx_td ltx_align_left" id="S3.T4.1.1.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">LoReFT</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"><cite class="ltx_cite ltx_citemacro_citep">(Wu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.18225v1#bib.bib38" title="">2024c</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.6.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.02M</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.6.4" style="padding-left:4.0pt;padding-right:4.0pt;">83.1</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.6.5" style="padding-left:4.0pt;padding-right:4.0pt;">93.4</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.6.6.1">89.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.6.7" style="padding-left:4.0pt;padding-right:4.0pt;">60.4</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.6.8" style="padding-left:4.0pt;padding-right:4.0pt;">91.2</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.6.9" style="padding-left:4.0pt;padding-right:4.0pt;">87.4</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.6.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.6.10.1">79.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.1.1.6.11" style="padding-left:4.0pt;padding-right:4.0pt;">90.0</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.6.12" style="padding-left:4.0pt;padding-right:4.0pt;">84.2</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.7">
<td class="ltx_td ltx_align_left" id="S3.T4.1.1.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">RED</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.7.2" style="padding-left:4.0pt;padding-right:4.0pt;"><cite class="ltx_cite ltx_citemacro_citep">(Wu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.18225v1#bib.bib36" title="">2024a</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.7.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.02M</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.7.4" style="padding-left:4.0pt;padding-right:4.0pt;">83.9</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.7.5" style="padding-left:4.0pt;padding-right:4.0pt;">93.9</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.7.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.7.6.1">89.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.7.7" style="padding-left:4.0pt;padding-right:4.0pt;">61.0</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.7.8" style="padding-left:4.0pt;padding-right:4.0pt;">90.7</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.7.9" style="padding-left:4.0pt;padding-right:4.0pt;">87.2</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.7.10" style="padding-left:4.0pt;padding-right:4.0pt;">78.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.1.1.7.11" style="padding-left:4.0pt;padding-right:4.0pt;">90.4</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.7.12" style="padding-left:4.0pt;padding-right:4.0pt;">84.3</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.8">
<td class="ltx_td ltx_align_left" id="S3.T4.1.1.8.1" style="padding-left:4.0pt;padding-right:4.0pt;">LoRA</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.8.2" style="padding-left:4.0pt;padding-right:4.0pt;"><cite class="ltx_cite ltx_citemacro_citep">(Hu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.18225v1#bib.bib12" title="">2022</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.8.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.3M</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.8.4" style="padding-left:4.0pt;padding-right:4.0pt;">86.6</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.8.5" style="padding-left:4.0pt;padding-right:4.0pt;">93.9</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.8.6" style="padding-left:4.0pt;padding-right:4.0pt;">88.7</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.8.7" style="padding-left:4.0pt;padding-right:4.0pt;">59.7</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.8.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.8.8.1">92.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.8.9" style="padding-left:4.0pt;padding-right:4.0pt;">90.4</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.8.10" style="padding-left:4.0pt;padding-right:4.0pt;">75.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.1.1.8.11" style="padding-left:4.0pt;padding-right:4.0pt;">90.3</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.8.12" style="padding-left:4.0pt;padding-right:4.0pt;">84.7</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.1">
<td class="ltx_td ltx_align_left" id="S3.T4.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Adapter<math alttext="{}^{\text{FFN}}" class="ltx_Math" display="inline" id="S3.T4.1.1.1.1.m1.1"><semantics id="S3.T4.1.1.1.1.m1.1a"><msup id="S3.T4.1.1.1.1.m1.1.1" xref="S3.T4.1.1.1.1.m1.1.1.cmml"><mi id="S3.T4.1.1.1.1.m1.1.1a" xref="S3.T4.1.1.1.1.m1.1.1.cmml"></mi><mtext id="S3.T4.1.1.1.1.m1.1.1.1" xref="S3.T4.1.1.1.1.m1.1.1.1a.cmml">FFN</mtext></msup><annotation-xml encoding="MathML-Content" id="S3.T4.1.1.1.1.m1.1b"><apply id="S3.T4.1.1.1.1.m1.1.1.cmml" xref="S3.T4.1.1.1.1.m1.1.1"><ci id="S3.T4.1.1.1.1.m1.1.1.1a.cmml" xref="S3.T4.1.1.1.1.m1.1.1.1"><mtext id="S3.T4.1.1.1.1.m1.1.1.1.cmml" mathsize="70%" xref="S3.T4.1.1.1.1.m1.1.1.1">FFN</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.1.1.1.1.m1.1c">{}^{\text{FFN}}</annotation><annotation encoding="application/x-llamapun" id="S3.T4.1.1.1.1.m1.1d">start_FLOATSUPERSCRIPT FFN end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><cite class="ltx_cite ltx_citemacro_citep">(Pfeiffer et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.18225v1#bib.bib25" title="">2021</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.3M</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.4.1">87.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">93.0</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">88.8</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">58.5</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.1.8" style="padding-left:4.0pt;padding-right:4.0pt;">92.0</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.1.9" style="padding-left:4.0pt;padding-right:4.0pt;">90.2</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.1.10" style="padding-left:4.0pt;padding-right:4.0pt;">77.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.1.1.1.11" style="padding-left:4.0pt;padding-right:4.0pt;">90.4</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.1.12" style="padding-left:4.0pt;padding-right:4.0pt;">84.7</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.9">
<td class="ltx_td ltx_align_left" id="S3.T4.1.1.9.1" style="padding-left:4.0pt;padding-right:4.0pt;">Adapter</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.9.2" style="padding-left:4.0pt;padding-right:4.0pt;"><cite class="ltx_cite ltx_citemacro_citep">(Houlsby et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.18225v1#bib.bib11" title="">2019</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.9.3" style="padding-left:4.0pt;padding-right:4.0pt;">0.4M</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.9.4" style="padding-left:4.0pt;padding-right:4.0pt;">87.0</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.9.5" style="padding-left:4.0pt;padding-right:4.0pt;">93.3</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.9.6" style="padding-left:4.0pt;padding-right:4.0pt;">88.4</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.9.7" style="padding-left:4.0pt;padding-right:4.0pt;">60.9</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.9.8" style="padding-left:4.0pt;padding-right:4.0pt;">92.5</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.9.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.9.9.1">90.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.9.10" style="padding-left:4.0pt;padding-right:4.0pt;">76.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.1.1.9.11" style="padding-left:4.0pt;padding-right:4.0pt;">90.5</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.9.12" style="padding-left:4.0pt;padding-right:4.0pt;">85.0</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.10" style="background-color:#F0F0F0;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T4.1.1.10.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T4.1.1.10.1.1" style="background-color:#F0F0F0;">DeLoRA</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.1.1.10.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T4.1.1.10.2.1" style="background-color:#F0F0F0;">(ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.1.1.10.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T4.1.1.10.3.1" style="background-color:#F0F0F0;">0.3M</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.1.1.10.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T4.1.1.10.4.1" style="background-color:#F0F0F0;">86.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.1.1.10.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T4.1.1.10.5.1" style="background-color:#F0F0F0;">93.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.1.1.10.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T4.1.1.10.6.1" style="background-color:#F0F0F0;">88.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.1.1.10.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.10.7.1" style="background-color:#F0F0F0;">64.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.1.1.10.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.10.8.1" style="background-color:#F0F0F0;">92.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.1.1.10.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T4.1.1.10.9.1" style="background-color:#F0F0F0;">90.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.1.1.10.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T4.1.1.10.10.1" style="background-color:#F0F0F0;">77.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T4.1.1.10.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.10.11.1" style="background-color:#F0F0F0;">90.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.1.1.10.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.10.12.1" style="background-color:#F0F0F0;">85.6</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of various parameter-efficient fine-tuning (PEFT) methods on the GLUE benchmark, using the RoBERTa-base model.  It shows the performance of each method in terms of accuracy across different GLUE tasks, including MNLI, SST-2, MRPC, CoLA, QNLI, QQP, RTE, and STS-B.  The table also includes the number of parameters used by each method, providing a context for comparing performance efficiency. Results for all baseline methods (other than DeLoRA) are taken from previously published work by Wu et al. (2024a) and Wu et al. (2024c), ensuring a consistent basis for comparison.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparisons of different methods finetuning RoBERTa-base on GLUE benchmark. Results of all baselines are taken from Wu et al. (2024a) and Wu et al. (2024c).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T5.5.5">
<tr class="ltx_tr" id="S3.T5.5.5.6">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T5.5.5.6.1">Method</td>
<td class="ltx_td ltx_border_tt" id="S3.T5.5.5.6.2"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T5.5.5.6.3">#param</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T5.5.5.6.4">MMLU</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T5.5.5.6.5">ARC</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T5.5.5.6.6">Tru-1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T5.5.5.6.7">Tru-2</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T5.5.5.6.8">Avg</td>
</tr>
<tr class="ltx_tr" id="S3.T5.5.5.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T5.5.5.7.1">LLaMA-2-7B</td>
<td class="ltx_td ltx_border_t" id="S3.T5.5.5.7.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.5.5.7.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.5.5.7.4">41.81</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.5.5.7.5">42.92</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.5.5.7.6">25.21</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T5.5.5.7.7">38.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.5.5.7.8">37.22</td>
</tr>
<tr class="ltx_tr" id="S3.T5.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T5.1.1.1.1"><span class="ltx_text ltx_font_slanted" id="S3.T5.1.1.1.1.1">ETHER<sub class="ltx_sub" id="S3.T5.1.1.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S3.T5.1.1.1.1.1.1.1">n=32</span></sub></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.1.1.1.2"><cite class="ltx_cite ltx_citemacro_citep">(Bini et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.18225v1#bib.bib3" title="">2024</a>)</cite></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.1.1.1.3">0.26M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.1.1.1.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T5.1.1.1.4.1">44.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.1.1.1.5">45.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.1.1.1.6">27.91</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T5.1.1.1.7">41.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.1.1.1.8">39.86</td>
</tr>
<tr class="ltx_tr" id="S3.T5.2.2.2">
<td class="ltx_td ltx_align_left" id="S3.T5.2.2.2.1"><span class="ltx_text ltx_font_slanted" id="S3.T5.2.2.2.1.1">ETHER+<sub class="ltx_sub" id="S3.T5.2.2.2.1.1.1"><span class="ltx_text ltx_font_italic" id="S3.T5.2.2.2.1.1.1.1">n=32</span></sub></span></td>
<td class="ltx_td ltx_align_center" id="S3.T5.2.2.2.2"><cite class="ltx_cite ltx_citemacro_citep">(Bini et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.18225v1#bib.bib3" title="">2024</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="S3.T5.2.2.2.3">1.04M</td>
<td class="ltx_td ltx_align_center" id="S3.T5.2.2.2.4"><span class="ltx_text ltx_font_bold" id="S3.T5.2.2.2.4.1">44.87</span></td>
<td class="ltx_td ltx_align_center" id="S3.T5.2.2.2.5">46.50</td>
<td class="ltx_td ltx_align_center" id="S3.T5.2.2.2.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T5.2.2.2.6.1">29.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T5.2.2.2.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T5.2.2.2.7.1">43.51</span></td>
<td class="ltx_td ltx_align_center" id="S3.T5.2.2.2.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T5.2.2.2.8.1">41.07</span></td>
</tr>
<tr class="ltx_tr" id="S3.T5.3.3.3">
<td class="ltx_td ltx_align_left" id="S3.T5.3.3.3.1">LoRA<sub class="ltx_sub" id="S3.T5.3.3.3.1.1"><span class="ltx_text ltx_font_italic" id="S3.T5.3.3.3.1.1.1">r=8</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S3.T5.3.3.3.2"><cite class="ltx_cite ltx_citemacro_citep">(Hu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.18225v1#bib.bib12" title="">2022</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="S3.T5.3.3.3.3">4.19M</td>
<td class="ltx_td ltx_align_center" id="S3.T5.3.3.3.4">43.61</td>
<td class="ltx_td ltx_align_center" id="S3.T5.3.3.3.5">46.16</td>
<td class="ltx_td ltx_align_center" id="S3.T5.3.3.3.6">28.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T5.3.3.3.7">42.21</td>
<td class="ltx_td ltx_align_center" id="S3.T5.3.3.3.8">40.19</td>
</tr>
<tr class="ltx_tr" id="S3.T5.4.4.4">
<td class="ltx_td ltx_align_left" id="S3.T5.4.4.4.1">DoRA<sub class="ltx_sub" id="S3.T5.4.4.4.1.1"><span class="ltx_text ltx_font_italic" id="S3.T5.4.4.4.1.1.1">r=8</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S3.T5.4.4.4.2"><cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.18225v1#bib.bib19" title="">2024a</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="S3.T5.4.4.4.3">4.19M</td>
<td class="ltx_td ltx_align_center" id="S3.T5.4.4.4.4">43.24</td>
<td class="ltx_td ltx_align_center" id="S3.T5.4.4.4.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T5.4.4.4.5.1">47.18</span></td>
<td class="ltx_td ltx_align_center" id="S3.T5.4.4.4.6">29.01</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T5.4.4.4.7">43.47</td>
<td class="ltx_td ltx_align_center" id="S3.T5.4.4.4.8">40.73</td>
</tr>
<tr class="ltx_tr" id="S3.T5.5.5.5" style="background-color:#F0F0F0;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T5.5.5.5.1"><span class="ltx_text" id="S3.T5.5.5.5.1.1" style="background-color:#F0F0F0;">DeLoRA<sub class="ltx_sub" id="S3.T5.5.5.5.1.1.1"><span class="ltx_text ltx_font_italic" id="S3.T5.5.5.5.1.1.1.1">r=8</span></sub></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T5.5.5.5.2"><span class="ltx_text" id="S3.T5.5.5.5.2.1" style="background-color:#F0F0F0;">(ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T5.5.5.5.3"><span class="ltx_text" id="S3.T5.5.5.5.3.1" style="background-color:#F0F0F0;">4.19M</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T5.5.5.5.4"><span class="ltx_text" id="S3.T5.5.5.5.4.1" style="background-color:#F0F0F0;">44.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T5.5.5.5.5"><span class="ltx_text ltx_font_bold" id="S3.T5.5.5.5.5.1" style="background-color:#F0F0F0;">47.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T5.5.5.5.6"><span class="ltx_text ltx_font_bold" id="S3.T5.5.5.5.6.1" style="background-color:#F0F0F0;">29.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T5.5.5.5.7"><span class="ltx_text ltx_font_bold" id="S3.T5.5.5.5.7.1" style="background-color:#F0F0F0;">44.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T5.5.5.5.8"><span class="ltx_text ltx_font_bold" id="S3.T5.5.5.5.8.1" style="background-color:#F0F0F0;">41.42</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of instruction tuning experiments conducted on three widely used benchmarks: MMLU, ARC, and TruthfulQA.  Different parameter-efficient fine-tuning (PEFT) methods were evaluated, and their accuracy scores are reported for each benchmark. The best performing method for each benchmark is highlighted in bold, while the second-best is underlined. This allows for a direct comparison of the effectiveness of various PEFT approaches in adapting large language models for instruction following tasks.
> <details>
> <summary>read the caption</summary>
> Table 5: Results for Instruction Tuning on MMLU, ARC, and TruthfulQA benchmarks. Values represent accuracy scores achieved by different finetuning methods. Best scores are highlighted in bold, and second-best scores are underlined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T6.9">
<tr class="ltx_tr" id="A2.T6.9.10">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T6.9.10.1">Method</td>
<td class="ltx_td ltx_border_tt" id="A2.T6.9.10.2"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.9.10.3">DINO</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.9.10.4">CLIP-I</td>
</tr>
<tr class="ltx_tr" id="A2.T6.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.1.1.1">LoRA<sub class="ltx_sub" id="A2.T6.1.1.1.1"><span class="ltx_text ltx_font_italic" id="A2.T6.1.1.1.1.1">r=16</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.3.3.4"><cite class="ltx_cite ltx_citemacro_citep">(Hu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.18225v1#bib.bib12" title="">2022</a>)</cite></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.2.2.2">
<span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T6.2.2.2.1">0.686</span><sub class="ltx_sub" id="A2.T6.2.2.2.2"><span class="ltx_text ltx_font_italic" id="A2.T6.2.2.2.2.1">±.0012</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.3.3.3">0.818<sub class="ltx_sub" id="A2.T6.3.3.3.1"><span class="ltx_text ltx_font_italic" id="A2.T6.3.3.3.1.1">±.0017</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.6.6">
<td class="ltx_td ltx_align_left" id="A2.T6.4.4.1">DoRA<sub class="ltx_sub" id="A2.T6.4.4.1.1"><span class="ltx_text ltx_font_italic" id="A2.T6.4.4.1.1.1">r=16</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.4"><cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.18225v1#bib.bib19" title="">2024a</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="A2.T6.5.5.2"><span class="ltx_text ltx_font_bold" id="A2.T6.5.5.2.1">0.687<sub class="ltx_sub" id="A2.T6.5.5.2.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="A2.T6.5.5.2.1.1.1">±.0015</span></sub></span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.6.6.3">
<span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T6.6.6.3.1">0.819</span><sub class="ltx_sub" id="A2.T6.6.6.3.2"><span class="ltx_text ltx_font_italic" id="A2.T6.6.6.3.2.1">±.0015</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.9.9">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T6.7.7.1">DeLoRA<sub class="ltx_sub" id="A2.T6.7.7.1.1"><span class="ltx_text ltx_font_italic" id="A2.T6.7.7.1.1.1">r=16</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.9.9.4">(ours)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.8.8.2">
<span class="ltx_text ltx_framed ltx_framed_underline" id="A2.T6.8.8.2.1">0.686</span><sub class="ltx_sub" id="A2.T6.8.8.2.2"><span class="ltx_text ltx_font_italic" id="A2.T6.8.8.2.2.1">±.0056</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.9.9.3"><span class="ltx_text ltx_font_bold" id="A2.T6.9.9.3.1">0.820<sub class="ltx_sub" id="A2.T6.9.9.3.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="A2.T6.9.9.3.1.1.1">±.0027</span></sub></span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different methods for subject-driven image generation, focusing on their performance as measured by two metrics: DINO and CLIP-I.  The results are shown for three different low-rank methods: LoRA, DORA, and DeLoRA.  Each method's performance is evaluated across multiple trials, with standard deviations provided to illustrate the variability in performance.  The best-performing method for each metric is highlighted in bold, while the second-best is underlined.
> <details>
> <summary>read the caption</summary>
> Table 6: Results with standard deviation for subject-driven image generation trained methods. Best scores are highlighted in bold, and second-best scores are underlined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T7.1.1">
<tr class="ltx_tr" id="A2.T7.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.1.1.1">Splits Sizes</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.1.1.2">MNLI</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.1.1.3">SST-2</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.1.1.4">MRPC</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.1.1.5">CoLA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.1.1.6">QNLI</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.1.1.7">QQP</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.1.1.8">RTE</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.1.1.9">STS-B</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.1.2.1">Training Set</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.1.2.2">393K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.1.2.3">67K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.1.2.4">3.7K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.1.2.5">8.5K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.1.2.6">105K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.1.2.7">364K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.1.2.8">2.5K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.1.2.9">5.7K</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.3">
<td class="ltx_td ltx_align_center" id="A2.T7.1.1.3.1">New Validation Set</td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.1.3.2">1K</td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.1.3.3">436</td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.1.3.4">204</td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.1.3.5">522</td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.1.3.6">1K</td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.1.3.7">1K</td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.1.3.8">139</td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.1.3.9">750</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.4">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.1.1.4.1">New Test Set</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.1.1.4.2">8K</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.1.1.4.3">436</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.1.1.4.4">204</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.1.1.4.5">521</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.1.1.4.6">4.5K</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.1.1.4.7">39K</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.1.1.4.8">138</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.1.1.4.9">750</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the sizes of the datasets used in the GLUE benchmark for natural language understanding.  It shows the number of samples in the training, validation, and test sets for each of the tasks included in the GLUE benchmark (MNLI, SST-2, MRPC, CoLA, QNLI, QQP, RTE, and STS-B).  Importantly, it highlights that the validation and test set sizes have been adjusted following the methodology described in Wu et al. (2024c) to ensure consistency and fairness in the experimental results.
> <details>
> <summary>read the caption</summary>
> Table 7: GLUE dataset sizes, with new validation and test splits following Wu et al. (2024c) setup.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T8.73.73">
<tr class="ltx_tr" id="A2.T8.73.73.74">
<td class="ltx_td ltx_border_tt" id="A2.T8.73.73.74.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.73.73.74.2">#param</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.73.73.74.3">MNLI</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.73.73.74.4">SST-2</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.73.73.74.5">MRPC</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.73.73.74.6">CoLA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.73.73.74.7">QNLI</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.73.73.74.8">QQP</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.73.73.74.9">RTE</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A2.T8.73.73.74.10">STS-B</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.73.73.74.11">Avg</td>
</tr>
<tr class="ltx_tr" id="A2.T8.8.8.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T8.8.8.8.9">Full Finet.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.8.8.8.10">125M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.1.1">87.3<sub class="ltx_sub" id="A2.T8.1.1.1.1.1"><span class="ltx_text ltx_font_italic" id="A2.T8.1.1.1.1.1.1">±.34</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.2.2.2.2">94.4<sub class="ltx_sub" id="A2.T8.2.2.2.2.1"><span class="ltx_text ltx_font_italic" id="A2.T8.2.2.2.2.1.1">±.96</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.3.3.3.3">87.9<sub class="ltx_sub" id="A2.T8.3.3.3.3.1"><span class="ltx_text ltx_font_italic" id="A2.T8.3.3.3.3.1.1">±.91</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.4.4.4">62.4<sub class="ltx_sub" id="A2.T8.4.4.4.4.1"><span class="ltx_text ltx_font_italic" id="A2.T8.4.4.4.4.1.1">±3.29</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.5.5.5.5">92.5<sub class="ltx_sub" id="A2.T8.5.5.5.5.1"><span class="ltx_text ltx_font_italic" id="A2.T8.5.5.5.5.1.1">±.22</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.6.6.6.6">91.7<sub class="ltx_sub" id="A2.T8.6.6.6.6.1"><span class="ltx_text ltx_font_italic" id="A2.T8.6.6.6.6.1.1">±.19</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.7.7.7.7">78.3<sub class="ltx_sub" id="A2.T8.7.7.7.7.1"><span class="ltx_text ltx_font_italic" id="A2.T8.7.7.7.7.1.1">±3.20</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T8.8.8.8.8">90.6<sub class="ltx_sub" id="A2.T8.8.8.8.8.1"><span class="ltx_text ltx_font_italic" id="A2.T8.8.8.8.8.1.1">±.59</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.8.8.8.11">85.6</td>
</tr>
<tr class="ltx_tr" id="A2.T8.16.16.16">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T8.16.16.16.9">BitFit</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.16.16.16.10">0.1M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.9.9.9.1">84.7<sub class="ltx_sub" id="A2.T8.9.9.9.1.1"><span class="ltx_text ltx_font_italic" id="A2.T8.9.9.9.1.1.1">±.08</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.10.10.10.2"><span class="ltx_text ltx_font_bold" id="A2.T8.10.10.10.2.1">94.0<sub class="ltx_sub" id="A2.T8.10.10.10.2.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="A2.T8.10.10.10.2.1.1.1">±.87</span></sub></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.11.11.11.3">88.1<sub class="ltx_sub" id="A2.T8.11.11.11.3.1"><span class="ltx_text ltx_font_italic" id="A2.T8.11.11.11.3.1.1">±1.57</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.12.12.12.4">54.0<sub class="ltx_sub" id="A2.T8.12.12.12.4.1"><span class="ltx_text ltx_font_italic" id="A2.T8.12.12.12.4.1.1">±3.07</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.13.13.13.5">91.0<sub class="ltx_sub" id="A2.T8.13.13.13.5.1"><span class="ltx_text ltx_font_italic" id="A2.T8.13.13.13.5.1.1">±.05</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.14.14.14.6">87.3<sub class="ltx_sub" id="A2.T8.14.14.14.6.1"><span class="ltx_text ltx_font_italic" id="A2.T8.14.14.14.6.1.1">±.02</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.15.15.15.7">69.8<sub class="ltx_sub" id="A2.T8.15.15.15.7.1"><span class="ltx_text ltx_font_italic" id="A2.T8.15.15.15.7.1.1">±1.51</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T8.16.16.16.8">89.5<sub class="ltx_sub" id="A2.T8.16.16.16.8.1"><span class="ltx_text ltx_font_italic" id="A2.T8.16.16.16.8.1.1">±.35</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.16.16.16.11">82.3</td>
</tr>
<tr class="ltx_tr" id="A2.T8.24.24.24">
<td class="ltx_td ltx_align_left" id="A2.T8.24.24.24.9">IA3</td>
<td class="ltx_td ltx_align_center" id="A2.T8.24.24.24.10">0.06M</td>
<td class="ltx_td ltx_align_center" id="A2.T8.17.17.17.1">85.4<sub class="ltx_sub" id="A2.T8.17.17.17.1.1"><span class="ltx_text ltx_font_italic" id="A2.T8.17.17.17.1.1.1">±-</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.18.18.18.2">93.4<sub class="ltx_sub" id="A2.T8.18.18.18.2.1"><span class="ltx_text ltx_font_italic" id="A2.T8.18.18.18.2.1.1">±-</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.19.19.19.3">86.4<sub class="ltx_sub" id="A2.T8.19.19.19.3.1"><span class="ltx_text ltx_font_italic" id="A2.T8.19.19.19.3.1.1">±-</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.20.20.20.4">57.8<sub class="ltx_sub" id="A2.T8.20.20.20.4.1"><span class="ltx_text ltx_font_italic" id="A2.T8.20.20.20.4.1.1">±-</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.21.21.21.5">91.1<sub class="ltx_sub" id="A2.T8.21.21.21.5.1"><span class="ltx_text ltx_font_italic" id="A2.T8.21.21.21.5.1.1">±-</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.22.22.22.6">88.5<sub class="ltx_sub" id="A2.T8.22.22.22.6.1"><span class="ltx_text ltx_font_italic" id="A2.T8.22.22.22.6.1.1">±-</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.23.23.23.7">73.5<sub class="ltx_sub" id="A2.T8.23.23.23.7.1"><span class="ltx_text ltx_font_italic" id="A2.T8.23.23.23.7.1.1">±-</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T8.24.24.24.8">88.5<sub class="ltx_sub" id="A2.T8.24.24.24.8.1"><span class="ltx_text ltx_font_italic" id="A2.T8.24.24.24.8.1.1">±-</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.24.24.24.11">83.1</td>
</tr>
<tr class="ltx_tr" id="A2.T8.32.32.32">
<td class="ltx_td ltx_align_left" id="A2.T8.32.32.32.9">LoReFT</td>
<td class="ltx_td ltx_align_center" id="A2.T8.32.32.32.10">0.02M</td>
<td class="ltx_td ltx_align_center" id="A2.T8.25.25.25.1">83.1<sub class="ltx_sub" id="A2.T8.25.25.25.1.1"><span class="ltx_text ltx_font_italic" id="A2.T8.25.25.25.1.1.1">±.26</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.26.26.26.2">93.4<sub class="ltx_sub" id="A2.T8.26.26.26.2.1"><span class="ltx_text ltx_font_italic" id="A2.T8.26.26.26.2.1.1">±.64</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.27.27.27.3"><span class="ltx_text ltx_font_bold" id="A2.T8.27.27.27.3.1">89.2<sub class="ltx_sub" id="A2.T8.27.27.27.3.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="A2.T8.27.27.27.3.1.1.1">±2.62</span></sub></span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.28.28.28.4">60.4<sub class="ltx_sub" id="A2.T8.28.28.28.4.1"><span class="ltx_text ltx_font_italic" id="A2.T8.28.28.28.4.1.1">±2.60</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.29.29.29.5">91.2<sub class="ltx_sub" id="A2.T8.29.29.29.5.1"><span class="ltx_text ltx_font_italic" id="A2.T8.29.29.29.5.1.1">±.25</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.30.30.30.6">87.4<sub class="ltx_sub" id="A2.T8.30.30.30.6.1"><span class="ltx_text ltx_font_italic" id="A2.T8.30.30.30.6.1.1">±.23</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.31.31.31.7"><span class="ltx_text ltx_font_bold" id="A2.T8.31.31.31.7.1">79.0<sub class="ltx_sub" id="A2.T8.31.31.31.7.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="A2.T8.31.31.31.7.1.1.1">±2.76</span></sub></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T8.32.32.32.8">90.0<sub class="ltx_sub" id="A2.T8.32.32.32.8.1"><span class="ltx_text ltx_font_italic" id="A2.T8.32.32.32.8.1.1">±.29</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.32.32.32.11">84.2</td>
</tr>
<tr class="ltx_tr" id="A2.T8.40.40.40">
<td class="ltx_td ltx_align_left" id="A2.T8.40.40.40.9">RED</td>
<td class="ltx_td ltx_align_center" id="A2.T8.40.40.40.10">0.02M</td>
<td class="ltx_td ltx_align_center" id="A2.T8.33.33.33.1">83.9<sub class="ltx_sub" id="A2.T8.33.33.33.1.1"><span class="ltx_text ltx_font_italic" id="A2.T8.33.33.33.1.1.1">±.14</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.34.34.34.2">93.9<sub class="ltx_sub" id="A2.T8.34.34.34.2.1"><span class="ltx_text ltx_font_italic" id="A2.T8.34.34.34.2.1.1">±.31</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.35.35.35.3"><span class="ltx_text ltx_font_bold" id="A2.T8.35.35.35.3.1">89.2<sub class="ltx_sub" id="A2.T8.35.35.35.3.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="A2.T8.35.35.35.3.1.1.1">±.98</span></sub></span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.36.36.36.4">61.0<sub class="ltx_sub" id="A2.T8.36.36.36.4.1"><span class="ltx_text ltx_font_italic" id="A2.T8.36.36.36.4.1.1">±2.96</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.37.37.37.5">90.7<sub class="ltx_sub" id="A2.T8.37.37.37.5.1"><span class="ltx_text ltx_font_italic" id="A2.T8.37.37.37.5.1.1">±.35</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.38.38.38.6">87.2<sub class="ltx_sub" id="A2.T8.38.38.38.6.1"><span class="ltx_text ltx_font_italic" id="A2.T8.38.38.38.6.1.1">±.17</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.39.39.39.7">78.0<sub class="ltx_sub" id="A2.T8.39.39.39.7.1"><span class="ltx_text ltx_font_italic" id="A2.T8.39.39.39.7.1.1">±2.06</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T8.40.40.40.8">90.4<sub class="ltx_sub" id="A2.T8.40.40.40.8.1"><span class="ltx_text ltx_font_italic" id="A2.T8.40.40.40.8.1.1">±.32</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.40.40.40.11">84.3</td>
</tr>
<tr class="ltx_tr" id="A2.T8.48.48.48">
<td class="ltx_td ltx_align_left" id="A2.T8.48.48.48.9">LoRA</td>
<td class="ltx_td ltx_align_center" id="A2.T8.48.48.48.10">0.3M</td>
<td class="ltx_td ltx_align_center" id="A2.T8.41.41.41.1">86.6<sub class="ltx_sub" id="A2.T8.41.41.41.1.1"><span class="ltx_text ltx_font_italic" id="A2.T8.41.41.41.1.1.1">±.23</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.42.42.42.2">93.9<sub class="ltx_sub" id="A2.T8.42.42.42.2.1"><span class="ltx_text ltx_font_italic" id="A2.T8.42.42.42.2.1.1">±.49</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.43.43.43.3">88.7<sub class="ltx_sub" id="A2.T8.43.43.43.3.1"><span class="ltx_text ltx_font_italic" id="A2.T8.43.43.43.3.1.1">±.76</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.44.44.44.4">59.7<sub class="ltx_sub" id="A2.T8.44.44.44.4.1"><span class="ltx_text ltx_font_italic" id="A2.T8.44.44.44.4.1.1">±4.36</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.45.45.45.5"><span class="ltx_text ltx_font_bold" id="A2.T8.45.45.45.5.1">92.6<sub class="ltx_sub" id="A2.T8.45.45.45.5.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="A2.T8.45.45.45.5.1.1.1">±.10</span></sub></span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.46.46.46.6">90.4<sub class="ltx_sub" id="A2.T8.46.46.46.6.1"><span class="ltx_text ltx_font_italic" id="A2.T8.46.46.46.6.1.1">±.08</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.47.47.47.7">75.3<sub class="ltx_sub" id="A2.T8.47.47.47.7.1"><span class="ltx_text ltx_font_italic" id="A2.T8.47.47.47.7.1.1">±2.79</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T8.48.48.48.8">90.3<sub class="ltx_sub" id="A2.T8.48.48.48.8.1"><span class="ltx_text ltx_font_italic" id="A2.T8.48.48.48.8.1.1">±.54</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.48.48.48.11">84.7</td>
</tr>
<tr class="ltx_tr" id="A2.T8.57.57.57">
<td class="ltx_td ltx_align_left" id="A2.T8.49.49.49.1">Adapter<math alttext="{}^{\text{FFN}}" class="ltx_Math" display="inline" id="A2.T8.49.49.49.1.m1.1"><semantics id="A2.T8.49.49.49.1.m1.1a"><msup id="A2.T8.49.49.49.1.m1.1.1" xref="A2.T8.49.49.49.1.m1.1.1.cmml"><mi id="A2.T8.49.49.49.1.m1.1.1a" xref="A2.T8.49.49.49.1.m1.1.1.cmml"></mi><mtext id="A2.T8.49.49.49.1.m1.1.1.1" xref="A2.T8.49.49.49.1.m1.1.1.1a.cmml">FFN</mtext></msup><annotation-xml encoding="MathML-Content" id="A2.T8.49.49.49.1.m1.1b"><apply id="A2.T8.49.49.49.1.m1.1.1.cmml" xref="A2.T8.49.49.49.1.m1.1.1"><ci id="A2.T8.49.49.49.1.m1.1.1.1a.cmml" xref="A2.T8.49.49.49.1.m1.1.1.1"><mtext id="A2.T8.49.49.49.1.m1.1.1.1.cmml" mathsize="70%" xref="A2.T8.49.49.49.1.m1.1.1.1">FFN</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T8.49.49.49.1.m1.1c">{}^{\text{FFN}}</annotation><annotation encoding="application/x-llamapun" id="A2.T8.49.49.49.1.m1.1d">start_FLOATSUPERSCRIPT FFN end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.57.57.57.10">0.3M</td>
<td class="ltx_td ltx_align_center" id="A2.T8.50.50.50.2"><span class="ltx_text ltx_font_bold" id="A2.T8.50.50.50.2.1">87.1<sub class="ltx_sub" id="A2.T8.50.50.50.2.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="A2.T8.50.50.50.2.1.1.1">±.10</span></sub></span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.51.51.51.3">93.0<sub class="ltx_sub" id="A2.T8.51.51.51.3.1"><span class="ltx_text ltx_font_italic" id="A2.T8.51.51.51.3.1.1">±.05</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.52.52.52.4">88.8<sub class="ltx_sub" id="A2.T8.52.52.52.4.1"><span class="ltx_text ltx_font_italic" id="A2.T8.52.52.52.4.1.1">±1.38</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.53.53.53.5">58.5<sub class="ltx_sub" id="A2.T8.53.53.53.5.1"><span class="ltx_text ltx_font_italic" id="A2.T8.53.53.53.5.1.1">±1.69</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.54.54.54.6">92.0<sub class="ltx_sub" id="A2.T8.54.54.54.6.1"><span class="ltx_text ltx_font_italic" id="A2.T8.54.54.54.6.1.1">±.28</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.55.55.55.7">90.2<sub class="ltx_sub" id="A2.T8.55.55.55.7.1"><span class="ltx_text ltx_font_italic" id="A2.T8.55.55.55.7.1.1">±.07</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.56.56.56.8">77.7<sub class="ltx_sub" id="A2.T8.56.56.56.8.1"><span class="ltx_text ltx_font_italic" id="A2.T8.56.56.56.8.1.1">±1.93</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T8.57.57.57.9">90.4<sub class="ltx_sub" id="A2.T8.57.57.57.9.1"><span class="ltx_text ltx_font_italic" id="A2.T8.57.57.57.9.1.1">±.31</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.57.57.57.11">84.7</td>
</tr>
<tr class="ltx_tr" id="A2.T8.65.65.65">
<td class="ltx_td ltx_align_left" id="A2.T8.65.65.65.9">Adapter</td>
<td class="ltx_td ltx_align_center" id="A2.T8.65.65.65.10">0.4M</td>
<td class="ltx_td ltx_align_center" id="A2.T8.58.58.58.1">87.0<sub class="ltx_sub" id="A2.T8.58.58.58.1.1"><span class="ltx_text ltx_font_italic" id="A2.T8.58.58.58.1.1.1">±.28</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.59.59.59.2">93.3<sub class="ltx_sub" id="A2.T8.59.59.59.2.1"><span class="ltx_text ltx_font_italic" id="A2.T8.59.59.59.2.1.1">±.40</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.60.60.60.3">88.4<sub class="ltx_sub" id="A2.T8.60.60.60.3.1"><span class="ltx_text ltx_font_italic" id="A2.T8.60.60.60.3.1.1">±1.54</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.61.61.61.4">60.9<sub class="ltx_sub" id="A2.T8.61.61.61.4.1"><span class="ltx_text ltx_font_italic" id="A2.T8.61.61.61.4.1.1">±3.09</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.62.62.62.5">92.5<sub class="ltx_sub" id="A2.T8.62.62.62.5.1"><span class="ltx_text ltx_font_italic" id="A2.T8.62.62.62.5.1.1">±.02</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.63.63.63.6"><span class="ltx_text ltx_font_bold" id="A2.T8.63.63.63.6.1">90.5<sub class="ltx_sub" id="A2.T8.63.63.63.6.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="A2.T8.63.63.63.6.1.1.1">±.08</span></sub></span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.64.64.64.7">76.5<sub class="ltx_sub" id="A2.T8.64.64.64.7.1"><span class="ltx_text ltx_font_italic" id="A2.T8.64.64.64.7.1.1">±2.26</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T8.65.65.65.8">90.5<sub class="ltx_sub" id="A2.T8.65.65.65.8.1"><span class="ltx_text ltx_font_italic" id="A2.T8.65.65.65.8.1.1">±.35</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.65.65.65.11">85.0</td>
</tr>
<tr class="ltx_tr" id="A2.T8.73.73.73">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T8.73.73.73.9">DeLoRA(ours)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.73.73.73.10">0.3M</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.66.66.66.1">86.9<sub class="ltx_sub" id="A2.T8.66.66.66.1.1"><span class="ltx_text ltx_font_italic" id="A2.T8.66.66.66.1.1.1">±.21</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.67.67.67.2">93.7<sub class="ltx_sub" id="A2.T8.67.67.67.2.1"><span class="ltx_text ltx_font_italic" id="A2.T8.67.67.67.2.1.1">±.79</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.68.68.68.3">88.6<sub class="ltx_sub" id="A2.T8.68.68.68.3.1"><span class="ltx_text ltx_font_italic" id="A2.T8.68.68.68.3.1.1">±1.49</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.69.69.69.4"><span class="ltx_text ltx_font_bold" id="A2.T8.69.69.69.4.1">64.7<sub class="ltx_sub" id="A2.T8.69.69.69.4.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="A2.T8.69.69.69.4.1.1.1">±2.33</span></sub></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.70.70.70.5"><span class="ltx_text ltx_font_bold" id="A2.T8.70.70.70.5.1">92.6<sub class="ltx_sub" id="A2.T8.70.70.70.5.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="A2.T8.70.70.70.5.1.1.1">±.53</span></sub></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.71.71.71.6">90.2<sub class="ltx_sub" id="A2.T8.71.71.71.6.1"><span class="ltx_text ltx_font_italic" id="A2.T8.71.71.71.6.1.1">±.17</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.72.72.72.7">77.3<sub class="ltx_sub" id="A2.T8.72.72.72.7.1"><span class="ltx_text ltx_font_italic" id="A2.T8.72.72.72.7.1.1">±1.96</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A2.T8.73.73.73.8"><span class="ltx_text ltx_font_bold" id="A2.T8.73.73.73.8.1">90.6<sub class="ltx_sub" id="A2.T8.73.73.73.8.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="A2.T8.73.73.73.8.1.1.1">±.38</span></sub></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.73.73.73.11"><span class="ltx_text ltx_font_bold" id="A2.T8.73.73.73.11.1">85.6</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of different parameter-efficient fine-tuning (PEFT) methods on the GLUE benchmark, specifically focusing on their performance when applied to the RoBERTa-base model.  It shows the performance metrics (accuracy, correlation, etc.) achieved by each method for various subtasks within the GLUE benchmark.  Standard deviations are included to indicate the variability in the results. The results for baseline methods (other than DeLoRA) are sourced from Wu et al. (2024a) and Wu et al. (2024c), ensuring a consistent comparison framework.
> <details>
> <summary>read the caption</summary>
> Table 8: GLUE benchmark. Comparisons of different methods finetuning RoBERTa-base, with standard deviations. Results of all baselines are taken from Wu et al. (2024a) and Wu et al. (2024c).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T9.1.1">
<tr class="ltx_tr" id="A2.T9.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.2.1">Hyperparameters</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.2.2">MNLI</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.2.3">SST-2</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.2.4">MRPC</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.2.5">CoLA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.2.6">QNLI</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.2.7">QQP</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.2.8">RTE</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.2.9">STS-B</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.1.1"><math alttext="\lambda" class="ltx_Math" display="inline" id="A2.T9.1.1.1.1.m1.1"><semantics id="A2.T9.1.1.1.1.m1.1a"><mi id="A2.T9.1.1.1.1.m1.1.1" xref="A2.T9.1.1.1.1.m1.1.1.cmml">λ</mi><annotation-xml encoding="MathML-Content" id="A2.T9.1.1.1.1.m1.1b"><ci id="A2.T9.1.1.1.1.m1.1.1.cmml" xref="A2.T9.1.1.1.1.m1.1.1">𝜆</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T9.1.1.1.1.m1.1c">\lambda</annotation><annotation encoding="application/x-llamapun" id="A2.T9.1.1.1.1.m1.1d">italic_λ</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.1.2">12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.1.3">12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.1.4">4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.1.5">4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.1.6">12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.1.7">4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.1.8">12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.1.9">12</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.1.3">
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.3.1">Learning Rate</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.3.2">1e-3</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.3.3">1e-3</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.3.4">3e-2</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.3.5">1e-2</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.3.6">3e-3</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.3.7">1e-3</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.3.8">1e-2</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.3.9">1e-2</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.1.4">
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.4.1">Batch Size</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.4.2">32</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.4.3">32</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.4.4">32</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.4.5">8</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.4.6">32</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.4.7">256</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.4.8">8</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.4.9">8</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.1.5">
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.1">Num. Epochs</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.2">30</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.3">30</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.4">40</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.5">80</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.6">25</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.7">25</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.8">80</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.9">40</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.1.6">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.1.6.1">Dropout</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.1.6.2">0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.1.6.3">0.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.1.6.4">0.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.1.6.5">0.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.1.6.6">0.25</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.1.6.7">0.25</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.1.6.8">0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.1.6.9">0.2</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 9 presents the hyperparameters used in the GLUE benchmark experiments for various methods, including the learning rate, batch size, number of epochs, and dropout rate.  It shows the specific settings employed for each method and dataset, which is crucial for reproducibility and understanding the experimental conditions.
> <details>
> <summary>read the caption</summary>
> Table 9: GLUE benchmark hyperparameters.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T10.2">
<tr class="ltx_tr" id="A3.T10.2.3">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A3.T10.2.3.1">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.2.3.2">DINO</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.2.3.3">CLIP-I</td>
</tr>
<tr class="ltx_tr" id="A3.T10.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T10.1.1.1">DoRA<sub class="ltx_sub" id="A3.T10.1.1.1.1"><span class="ltx_text ltx_font_italic" id="A3.T10.1.1.1.1.1">r=16</span></sub>(fixed-magnitude)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.2">0.681</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.3">0.822</td>
</tr>
<tr class="ltx_tr" id="A3.T10.2.2">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T10.2.2.1">DoRA<sub class="ltx_sub" id="A3.T10.2.2.1.1"><span class="ltx_text ltx_font_italic" id="A3.T10.2.2.1.1.1">r=16</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.2.2.2">0.683</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.2.2.3">0.820</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents results from a small-scale ablation study on the Subject-driven Image Generation task. It compares the performance of DoRA with and without fixing the magnitude term, evaluating both methods using the DINO and CLIP-I metrics to assess subject fidelity.  The purpose is to investigate if constraining magnitude in DoRA leads to similar robustness properties as observed in DeLoRA.
> <details>
> <summary>read the caption</summary>
> Table 10: Subject-driven Image Generation small-scale ablation
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.18225/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18225/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18225/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18225/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18225/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18225/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18225/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18225/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18225/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18225/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18225/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18225/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18225/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18225/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18225/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18225/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18225/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18225/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}