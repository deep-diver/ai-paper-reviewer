---
title: "Efficient Generative Model Training via Embedded Representation Warmup"
summary: "ERW: Boost generative model training by injecting pre-trained representations early for faster convergence and higher quality results."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Deep Learning", "🏢 Westlake University",]
showSummary: true
date: 2025-04-14
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.10188 {{< /keyword >}}
{{< keyword icon="writer" >}} Deyuan Liu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-16 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.10188" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.10188" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.10188/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Diffusion models are powerful for generating high-dimensional data but suffer from training inefficiency and limited representation quality. This paper identifies that the **underutilization of high-quality representations slows convergence**. Systematic analysis reveals a critical representation processing region where semantic and structural learning occurs before generation. To solve these issues, the paper proposes Embedded Representation Warmup (ERW).



ERW is a framework that **initializes the diffusion model's early layers** with pre-trained representations, minimizing the need to learn from scratch. This method enhances efficiency and effectiveness, leading to faster convergence and superior performance. Empirical results show a 40x acceleration in training speed compared to state-of-the-art methods. ERW achieves a new state-of-the-art.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Embedded Representation Warmup (ERW) accelerates diffusion model training by leveraging pre-trained representations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} ERW enhances both training efficiency and the quality of generated data. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The method identifies and utilizes a critical representation processing region in early layers of the diffusion model. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces ERW to improve diffusion model training by using pre-trained representations. The new method accelerates convergence, enhances fidelity, and opens avenues for exploration of representation learning in generative models, which is significant for future research.

------
#### Visual Insights



![](https://arxiv.org/html/2504.10188/x4.png)

> 🔼 The figure illustrates the Embedded Representation Warmup (ERW) method.  ERW consists of two stages: a representation warmup stage and a full training stage.  In the warmup stage, pretrained representations from a model like Dinov2 are integrated into the early layers of a diffusion model using a representation alignment loss. This provides a strong initialization for the model. The subsequent full training stage then fine-tunes the entire model.  The results show that ERW leads to significantly faster convergence and improved performance compared to the REPA method, achieving a new state-of-the-art.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Embedded Representation Warmup (ERW). Throughout the training process, we demonstrate that incorporating representations at the early stages is highly beneficial. To this end, we propose a representation warmup stage that employs a representation alignment loss to integrate representations from models such as Dinov2  [38] into the ERW. This initialized representation region is subsequently embedded into the diffusion model pipeline, providing a strong starting point for training. Our ERW method thus enhances both efficiency and effectiveness, leading to faster convergence and superior performance compared to the REPA [54] method, thereby establishing a new state-of-the-art.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T1.12.6">
<tr class="ltx_tr" id="S5.T1.11.5.5">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T1.11.5.5.6">  <span class="ltx_text ltx_phantom" id="S5.T1.11.5.5.6.1"><span style="visibility:hidden">0</span></span><span class="ltx_text ltx_phantom" id="S5.T1.11.5.5.6.2"><span style="visibility:hidden">0</span></span>Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.11.5.5.7">Epochs</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.7.1.1.1">
<span class="ltx_text ltx_phantom" id="S5.T1.7.1.1.1.1"><span style="visibility:hidden">0</span></span>FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.7.1.1.1.m1.1"><semantics id="S5.T1.7.1.1.1.m1.1a"><mo id="S5.T1.7.1.1.1.m1.1.1" stretchy="false" xref="S5.T1.7.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.7.1.1.1.m1.1b"><ci id="S5.T1.7.1.1.1.m1.1.1.cmml" xref="S5.T1.7.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.7.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.7.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.8.2.2.2">sFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.8.2.2.2.m1.1"><semantics id="S5.T1.8.2.2.2.m1.1a"><mo id="S5.T1.8.2.2.2.m1.1.1" stretchy="false" xref="S5.T1.8.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.8.2.2.2.m1.1b"><ci id="S5.T1.8.2.2.2.m1.1.1.cmml" xref="S5.T1.8.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.8.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.8.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.9.3.3.3">IS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.9.3.3.3.m1.1"><semantics id="S5.T1.9.3.3.3.m1.1a"><mo id="S5.T1.9.3.3.3.m1.1.1" stretchy="false" xref="S5.T1.9.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.9.3.3.3.m1.1b"><ci id="S5.T1.9.3.3.3.m1.1.1.cmml" xref="S5.T1.9.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.9.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.9.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.10.4.4.4">Pre.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.10.4.4.4.m1.1"><semantics id="S5.T1.10.4.4.4.m1.1a"><mo id="S5.T1.10.4.4.4.m1.1.1" stretchy="false" xref="S5.T1.10.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.10.4.4.4.m1.1b"><ci id="S5.T1.10.4.4.4.m1.1.1.cmml" xref="S5.T1.10.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.10.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.10.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.11.5.5.5">Rec.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.11.5.5.5.m1.1"><semantics id="S5.T1.11.5.5.5.m1.1a"><mo id="S5.T1.11.5.5.5.m1.1.1" stretchy="false" xref="S5.T1.11.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.11.5.5.5.m1.1b"><ci id="S5.T1.11.5.5.5.m1.1.1.cmml" xref="S5.T1.11.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.11.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.11.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.6.7">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="7" id="S5.T1.12.6.7.1"><em class="ltx_emph ltx_font_italic" id="S5.T1.12.6.7.1.1">Pixel diffusion</em></td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.6.8">
<td class="ltx_td ltx_align_left" id="S5.T1.12.6.8.1">  <span class="ltx_text ltx_phantom" id="S5.T1.12.6.8.1.1"><span style="visibility:hidden">0</span></span><span class="ltx_text ltx_phantom" id="S5.T1.12.6.8.1.2"><span style="visibility:hidden">0</span></span>ADM-U</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.8.2">
<span class="ltx_text ltx_phantom" id="S5.T1.12.6.8.2.1"><span style="visibility:hidden">0</span></span>400</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.8.3">
<span class="ltx_text ltx_phantom" id="S5.T1.12.6.8.3.1"><span style="visibility:hidden">0</span></span>3.94</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.8.4">6.14</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.8.5">186.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.8.6">0.82</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.8.7">0.52</td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.6.6">
<td class="ltx_td ltx_align_left" id="S5.T1.12.6.6.1">  <span class="ltx_text ltx_phantom" id="S5.T1.12.6.6.1.1"><span style="visibility:hidden">0</span></span><span class="ltx_text ltx_phantom" id="S5.T1.12.6.6.1.2"><span style="visibility:hidden">0</span></span>VDM<math alttext="++" class="ltx_Math" display="inline" id="S5.T1.12.6.6.1.m1.2"><semantics id="S5.T1.12.6.6.1.m1.2a"><mrow id="S5.T1.12.6.6.1.m1.2.3.2" xref="S5.T1.12.6.6.1.m1.2.3.1.cmml"><mo id="S5.T1.12.6.6.1.m1.1.1" xref="S5.T1.12.6.6.1.m1.1.1.cmml">+</mo><mo id="S5.T1.12.6.6.1.m1.2.3.2.1" lspace="0em" xref="S5.T1.12.6.6.1.m1.2.3.1.cmml">⁣</mo><mo id="S5.T1.12.6.6.1.m1.2.2" xref="S5.T1.12.6.6.1.m1.2.2.cmml">+</mo></mrow><annotation-xml encoding="MathML-Content" id="S5.T1.12.6.6.1.m1.2b"><list id="S5.T1.12.6.6.1.m1.2.3.1.cmml" xref="S5.T1.12.6.6.1.m1.2.3.2"><plus id="S5.T1.12.6.6.1.m1.1.1.cmml" xref="S5.T1.12.6.6.1.m1.1.1"></plus><plus id="S5.T1.12.6.6.1.m1.2.2.cmml" xref="S5.T1.12.6.6.1.m1.2.2"></plus></list></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.12.6.6.1.m1.2c">++</annotation><annotation encoding="application/x-llamapun" id="S5.T1.12.6.6.1.m1.2d">+ +</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.6.2">
<span class="ltx_text ltx_phantom" id="S5.T1.12.6.6.2.1"><span style="visibility:hidden">0</span></span>560</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.6.3">
<span class="ltx_text ltx_phantom" id="S5.T1.12.6.6.3.1"><span style="visibility:hidden">0</span></span>2.40</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.6.4">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.6.5">225.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.6.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.6.7">-</td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.6.9">
<td class="ltx_td ltx_align_left" id="S5.T1.12.6.9.1">  <span class="ltx_text ltx_phantom" id="S5.T1.12.6.9.1.1"><span style="visibility:hidden">0</span></span><span class="ltx_text ltx_phantom" id="S5.T1.12.6.9.1.2"><span style="visibility:hidden">0</span></span>Simple diffusion</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.9.2">
<span class="ltx_text ltx_phantom" id="S5.T1.12.6.9.2.1"><span style="visibility:hidden">0</span></span>800</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.9.3">
<span class="ltx_text ltx_phantom" id="S5.T1.12.6.9.3.1"><span style="visibility:hidden">0</span></span>2.77</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.9.4">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.9.5">211.8</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.9.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.9.7">-</td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.6.10">
<td class="ltx_td ltx_align_left" id="S5.T1.12.6.10.1">  <span class="ltx_text ltx_phantom" id="S5.T1.12.6.10.1.1"><span style="visibility:hidden">0</span></span><span class="ltx_text ltx_phantom" id="S5.T1.12.6.10.1.2"><span style="visibility:hidden">0</span></span>CDM</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.10.2">2160</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.10.3">
<span class="ltx_text ltx_phantom" id="S5.T1.12.6.10.3.1"><span style="visibility:hidden">0</span></span>4.88</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.10.4">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.10.5">158.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.10.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.10.7">-</td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.6.11">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="7" id="S5.T1.12.6.11.1"><em class="ltx_emph ltx_font_italic" id="S5.T1.12.6.11.1.1">Latent diffusion, U-Net</em></td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.6.12">
<td class="ltx_td ltx_align_left" id="S5.T1.12.6.12.1">  <span class="ltx_text ltx_phantom" id="S5.T1.12.6.12.1.1"><span style="visibility:hidden">0</span></span><span class="ltx_text ltx_phantom" id="S5.T1.12.6.12.1.2"><span style="visibility:hidden">0</span></span>LDM-4</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.12.2">
<span class="ltx_text ltx_phantom" id="S5.T1.12.6.12.2.1"><span style="visibility:hidden">0</span></span>200</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.12.3">
<span class="ltx_text ltx_phantom" id="S5.T1.12.6.12.3.1"><span style="visibility:hidden">0</span></span>3.60</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.12.4">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.12.5">247.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.12.6">0.87</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.12.7">0.48</td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.6.13">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="7" id="S5.T1.12.6.13.1"><em class="ltx_emph ltx_font_italic" id="S5.T1.12.6.13.1.1">Latent diffusion, Transformer + U-Net hybrid</em></td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.6.14">
<td class="ltx_td ltx_align_left" id="S5.T1.12.6.14.1">  <span class="ltx_text ltx_phantom" id="S5.T1.12.6.14.1.1"><span style="visibility:hidden">0</span></span><span class="ltx_text ltx_phantom" id="S5.T1.12.6.14.1.2"><span style="visibility:hidden">0</span></span>U-ViT-H/2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.14.2">
<span class="ltx_text ltx_phantom" id="S5.T1.12.6.14.2.1"><span style="visibility:hidden">0</span></span>240</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.14.3">
<span class="ltx_text ltx_phantom" id="S5.T1.12.6.14.3.1"><span style="visibility:hidden">0</span></span>2.29</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.14.4">5.68</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.14.5">263.9</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.14.6">0.82</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.14.7">0.57</td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.6.15">
<td class="ltx_td ltx_align_left" id="S5.T1.12.6.15.1">  <span class="ltx_text ltx_phantom" id="S5.T1.12.6.15.1.1"><span style="visibility:hidden">0</span></span><span class="ltx_text ltx_phantom" id="S5.T1.12.6.15.1.2"><span style="visibility:hidden">0</span></span>DiffiT*</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.15.2">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.15.3">
<span class="ltx_text ltx_phantom" id="S5.T1.12.6.15.3.1"><span style="visibility:hidden">0</span></span>1.73</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.15.4">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.15.5">276.5</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.15.6">0.80</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.15.7">0.62</td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.6.16">
<td class="ltx_td ltx_align_left" id="S5.T1.12.6.16.1">  <span class="ltx_text ltx_phantom" id="S5.T1.12.6.16.1.1"><span style="visibility:hidden">0</span></span><span class="ltx_text ltx_phantom" id="S5.T1.12.6.16.1.2"><span style="visibility:hidden">0</span></span>MDTv2-XL/2*</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.16.2">1080</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.16.3">
<span class="ltx_text ltx_phantom" id="S5.T1.12.6.16.3.1"><span style="visibility:hidden">0</span></span>1.58</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.16.4">4.52</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.16.5">314.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.16.6">0.79</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.16.7">0.65</td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.6.17">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="7" id="S5.T1.12.6.17.1"><em class="ltx_emph ltx_font_italic" id="S5.T1.12.6.17.1.1">Latent diffusion, Transformer</em></td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.6.18">
<td class="ltx_td ltx_align_left" id="S5.T1.12.6.18.1">  <span class="ltx_text ltx_phantom" id="S5.T1.12.6.18.1.1"><span style="visibility:hidden">0</span></span><span class="ltx_text ltx_phantom" id="S5.T1.12.6.18.1.2"><span style="visibility:hidden">0</span></span>MaskDiT</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.18.2">1600</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.18.3">
<span class="ltx_text ltx_phantom" id="S5.T1.12.6.18.3.1"><span style="visibility:hidden">0</span></span>2.28</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.18.4">5.67</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.18.5">276.6</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.18.6">0.80</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.18.7">0.61</td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.6.19">
<td class="ltx_td ltx_align_left" id="S5.T1.12.6.19.1">  <span class="ltx_text ltx_phantom" id="S5.T1.12.6.19.1.1"><span style="visibility:hidden">0</span></span><span class="ltx_text ltx_phantom" id="S5.T1.12.6.19.1.2"><span style="visibility:hidden">0</span></span>SD-DiT</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.19.2">
<span class="ltx_text ltx_phantom" id="S5.T1.12.6.19.2.1"><span style="visibility:hidden">0</span></span>480</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.19.3">
<span class="ltx_text ltx_phantom" id="S5.T1.12.6.19.3.1"><span style="visibility:hidden">0</span></span>3.23</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.19.4">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.19.5">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.19.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.19.7">-</td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.6.20">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.12.6.20.1">  <span class="ltx_text ltx_phantom" id="S5.T1.12.6.20.1.1"><span style="visibility:hidden">0</span></span><span class="ltx_text ltx_phantom" id="S5.T1.12.6.20.1.2"><span style="visibility:hidden">0</span></span>DiT-XL/2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.12.6.20.2">1400</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.12.6.20.3">
<span class="ltx_text ltx_phantom" id="S5.T1.12.6.20.3.1"><span style="visibility:hidden">0</span></span>2.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.12.6.20.4">4.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.12.6.20.5">278.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.12.6.20.6"><span class="ltx_text ltx_font_bold" id="S5.T1.12.6.20.6.1">0.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.12.6.20.7">0.57</td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.6.21">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.12.6.21.1">  <span class="ltx_text ltx_phantom" id="S5.T1.12.6.21.1.1"><span style="visibility:hidden">0</span></span><span class="ltx_text ltx_phantom" id="S5.T1.12.6.21.1.2"><span style="visibility:hidden">0</span></span>SiT-XL/2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.12.6.21.2">1400</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.12.6.21.3">
<span class="ltx_text ltx_phantom" id="S5.T1.12.6.21.3.1"><span style="visibility:hidden">0</span></span>2.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.12.6.21.4">4.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.12.6.21.5">270.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.12.6.21.6">0.82</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.12.6.21.7">0.59</td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.6.22">
<td class="ltx_td ltx_align_left" id="S5.T1.12.6.22.1">  <span class="ltx_text ltx_phantom" id="S5.T1.12.6.22.1.1"><span style="visibility:hidden">0</span></span><span class="ltx_text ltx_phantom" id="S5.T1.12.6.22.1.2"><span style="visibility:hidden">0</span></span><span class="ltx_text ltx_phantom" id="S5.T1.12.6.22.1.3"><span style="visibility:hidden">0</span></span>+ <span class="ltx_text ltx_font_smallcaps" id="S5.T1.12.6.22.1.4">REPA</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.22.2">
<span class="ltx_text ltx_phantom" id="S5.T1.12.6.22.2.1"><span style="visibility:hidden">0</span></span>200</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.22.3">
<span class="ltx_text ltx_phantom" id="S5.T1.12.6.22.3.1"><span style="visibility:hidden">0</span></span>1.96</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.22.4"><span class="ltx_text ltx_font_bold" id="S5.T1.12.6.22.4.1">4.49</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.22.5">264.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.22.6">0.82</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.6.22.7">0.60</td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.6.23">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T1.12.6.23.1">  <span class="ltx_text ltx_phantom" id="S5.T1.12.6.23.1.1"><span style="visibility:hidden">0</span></span><span class="ltx_text ltx_phantom" id="S5.T1.12.6.23.1.2"><span style="visibility:hidden">0</span></span><span class="ltx_text ltx_phantom" id="S5.T1.12.6.23.1.3"><span style="visibility:hidden">0</span></span><span class="ltx_text ltx_phantom" id="S5.T1.12.6.23.1.4"><span style="visibility:hidden">0</span></span>+ <span class="ltx_text ltx_font_smallcaps" id="S5.T1.12.6.23.1.5">ERW</span> (ours)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.12.6.23.2">
<span class="ltx_text ltx_phantom" id="S5.T1.12.6.23.2.1"><span style="visibility:hidden">0</span></span><span class="ltx_text ltx_phantom" id="S5.T1.12.6.23.2.2"><span style="visibility:hidden">0</span></span>40</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.12.6.23.3">
<span class="ltx_text ltx_phantom" id="S5.T1.12.6.23.3.1"><span style="visibility:hidden">0</span></span><span class="ltx_text ltx_font_bold" id="S5.T1.12.6.23.3.2">1.94</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.12.6.23.4">7.91</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.12.6.23.5"><span class="ltx_text ltx_font_bold" id="S5.T1.12.6.23.5.1">300.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.12.6.23.6">0.75</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.12.6.23.7"><span class="ltx_text ltx_font_bold" id="S5.T1.12.6.23.7.1">0.63</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comprehensive comparison of various image generation models on the ImageNet 256x256 dataset, using the classifier-free guidance (CFG) technique.  The table contrasts different model architectures, including pixel diffusion models and latent diffusion models using U-Net and transformer-based backbones. Key performance metrics such as Fréchet Inception Distance (FID),  Structural FID (sFID), Inception Score (IS), precision, and recall are reported for each model, indicating the quality and diversity of the generated images.  The number of training epochs required to achieve these results is also provided, allowing for a direct comparison of training efficiency. Models using additional CFG scheduling, as described in reference [28], are noted with an asterisk (*) for clarity. The arrows (↑ and ↓) clearly indicate whether a higher or lower value is preferable for each metric.
> <details>
> <summary>read the caption</summary>
> Table 1:  System-level comparison on ImageNet 256×\times×256 with CFG. ↓↓\downarrow↓ and ↑↑\uparrow↑ indicate whether lower or higher values are better, respectively. Results that include additional CFG scheduling are marked with an asterisk (*), where the guidance interval from [28] is applied for ERW.
> </details>





### In-depth insights


#### Rep. Warmup Intro
**Representation warmup** is a clever technique to speed up generative model training. Instead of training a diffusion model from scratch, it smartly initializes the early layers using **pretrained representations**. This jumpstarts the learning process by imbuing the model with semantic knowledge early on. The method's success hinges on identifying a **'representation processing region'** in the network, where semantic features are learned, prior to generation. ERW essentially minimizes the need to learn representations from scratch, leading to **faster convergence and better performance.**

#### ERW: L2R + R2G
**ERW's core innovation lies in decoupling representation learning (L2R) from generative decoding (R2G) within diffusion models.**  Traditional methods entangle these processes, leading to inefficiency. ERW strategically warm-starts the L2R circuit using pre-trained models, injecting high-quality semantic features early.  This reduces the burden on the model to learn representations from scratch, allowing it to focus on refining generative capabilities. The separation, indicated by ERW's modular design, significantly accelerates convergence and enhances the quality of generated outputs.  ERW's architecture aims for independent optimization, leading to more efficient and high quality image generation.

#### SiT-XL/2 Boost
The SiT-XL/2 architecture, potentially a variant or improvement upon existing Scalable Interpolant Transformer (SiT) models, appears to be a focal point for enhancements in generative model training. **The “boost” likely refers to significant gains in performance, efficiency, or both**, when this architecture is combined with new techniques. Given the paper's title on efficient generative model training, it suggests that modifications or optimizations related to SiT-XL/2 are key to **reducing computational costs or improving the quality of generated outputs.** It's probable the paper **details specific adaptations or training strategies tailored for this architecture**, highlighting how these changes lead to tangible benefits over standard training approaches.

#### ERW Depth Study
The ERW Depth study investigates the optimal placement of the Embedded Representation Warmup (ERW) within the diffusion model's architecture. It explores how initializing different depths of the network with pre-trained representations affects performance. **Early layers, crucial for semantic feature extraction (L2R circuit), should be targeted for optimal results, while deeper layers focus on generative refinement**. The study aims to find a balance: too shallow, and the model doesn't benefit from pre-trained knowledge; too deep, and generative capabilities are hindered. The findings reinforce a three-stage diffusion circuit perspective.

#### Future Tuning?
The section on hyperparameter tuning outlines a practical strategy to streamline the optimization of key parameters in Embedded Representation Warmup (ERW). The bisection-style search offers a pragmatic balance between thoroughness and computational cost. It's reasonable to anticipate even more sophisticated automated tuning strategies, perhaps leveraging techniques like Bayesian optimization or reinforcement learning, to further accelerate and refine the process of identifying optimal hyperparameter configurations for ERW. These approaches could dynamically adapt the search strategy, focusing computational resources on the most promising regions of the hyperparameter space. The paper emphasizes early stopping as a key optimization, and there is also a reduced evaluation protocol, using only a fraction of data to improve the hyperparameter search phase.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.10188/extracted/6360108/resources/figures/merged_image_1.png)

> 🔼 This figure illustrates the three-stage diffusion circuit proposed in the paper: Pixel-to-Latent (P2L), Latent-to-Representation (L2R), and Representation-to-Generation (R2G).  The P2L stage uses a Variational Autoencoder (VAE) to compress high-dimensional image inputs into a lower-dimensional latent space.  The latent diffusion process is then divided into two sub-regions: L2R, which extracts and refines semantic features from the latent codes; and R2G, which decodes the learned representations into the final generated outputs. This decomposition helps to clarify the distinct roles of different network regions in the process of generating images from noisy inputs.
> <details>
> <summary>read the caption</summary>
> Figure 2: Illustration of the Circuits in Hypothesis. From left to right, we first apply a VAE encoder (the Pixel-to-Latent or (P2L) stage) to map high-dimensional inputs to a compressed latent space. We then perform latent diffusion on these codes, dividing the backbone into two subregions: the Latent-to-Representation (L2R) region that capture and refine semantic features, and the Representation-to-Generation (R2G) region that decode the learned representation into final outputs.
> </details>



![](https://arxiv.org/html/2504.10188/x5.png)

> 🔼 This figure showcases sample images generated using the SiT-XL/2 model, enhanced with REPA and ERW techniques.  The images are 256x256 pixels and were produced using classifier-free guidance (CFG) with a scale of w=2.2, after training for 40 epochs.  The figure visually demonstrates the quality of images generated by the model after incorporating the ERW method, which aims to improve efficiency and representation quality during training. The samples are from the ImageNet dataset.
> <details>
> <summary>read the caption</summary>
> Figure 3: Selected Samples on ImageNet 256×256256256256\times 256256 × 256. Images generated by the SiT-XL/2 + REPA + ERW model using classifier-free guidance (CFG) with a scale of w=2.2𝑤2.2w=2.2italic_w = 2.2 under 40 epochs.
> </details>



![](https://arxiv.org/html/2504.10188/x6.png)

> 🔼 This figure compares different training strategies for diffusion models, focusing on training efficiency and computational cost.  The left panel shows a scatter plot illustrating the relationship between total training cost (in TeraFLOPS) and FID (Fréchet Inception Distance) score. Each point represents a different training strategy, with the label indicating the split between warmup and full training phases (e.g., '10K+90K' means 10,000 iterations of warmup and 90,000 iterations of full training). Point size reflects both FID and FLOPS values to highlight relative differences in performance and cost. The right panel provides a bar chart comparing the computational costs (in TFLOPS) of the warmup and full training phases for each strategy, all evaluated over 100,000 iterations.  This allows for a direct comparison of the computational investment in each phase of training. 
> <details>
> <summary>read the caption</summary>
> Figure 4:  Comparison of Training Efficiency and Cost Analysis with Warmup and Full Training Stages. Left: Scatter plot depicting the relationship between the total training cost (in TFLOPs) and the FID score for various training strategies. Each point is annotated with a simplified label (e.g., “10K+90K”) representing the warmup and full training split, and the marker sizes are scaled based on a combination of the FID and FLOPs values to highlight the relative differences. Right: Bar chart comparing the computational costs of the warmup and full training stages for different strategies (all evaluated over 100K iterations). The chart shows the warmup cost, full training cost, and their corresponding total cost.
> </details>



![](https://arxiv.org/html/2504.10188/x7.png)

> 🔼 This figure (a) shows the alignment between the model's internal representation (RoL2R(Ho(x))) and the target semantic features (f_rep(x)) across different layers of the network.  It demonstrates how well the representation learned by the model aligns with high-quality pretrained representations, which is crucial for the efficiency of ERW. The plot shows how this alignment changes over the course of training, initially declining as the model adjusts to the diffusion training objective, then recovers and improves, showing the effectiveness of the warmup phase.
> <details>
> <summary>read the caption</summary>
> (a) Alignment with ERW
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.SS2.5.5.5">
<tr class="ltx_tr" id="S5.SS2.5.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.SS2.5.5.5.5.6">Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS2.5.5.5.5.7">#Params</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS2.5.5.5.5.8">Iter.</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS2.1.1.1.1.1">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.SS2.1.1.1.1.1.m1.1"><semantics id="S5.SS2.1.1.1.1.1.m1.1a"><mo id="S5.SS2.1.1.1.1.1.m1.1.1" stretchy="false" xref="S5.SS2.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.SS2.1.1.1.1.1.m1.1b"><ci id="S5.SS2.1.1.1.1.1.m1.1.1.cmml" xref="S5.SS2.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS2.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS2.1.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS2.2.2.2.2.2">sFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.SS2.2.2.2.2.2.m1.1"><semantics id="S5.SS2.2.2.2.2.2.m1.1a"><mo id="S5.SS2.2.2.2.2.2.m1.1.1" stretchy="false" xref="S5.SS2.2.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.SS2.2.2.2.2.2.m1.1b"><ci id="S5.SS2.2.2.2.2.2.m1.1.1.cmml" xref="S5.SS2.2.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS2.2.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS2.2.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS2.3.3.3.3.3">IS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.SS2.3.3.3.3.3.m1.1"><semantics id="S5.SS2.3.3.3.3.3.m1.1a"><mo id="S5.SS2.3.3.3.3.3.m1.1.1" stretchy="false" xref="S5.SS2.3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.SS2.3.3.3.3.3.m1.1b"><ci id="S5.SS2.3.3.3.3.3.m1.1.1.cmml" xref="S5.SS2.3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS2.3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS2.3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS2.4.4.4.4.4">Prec.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.SS2.4.4.4.4.4.m1.1"><semantics id="S5.SS2.4.4.4.4.4.m1.1a"><mo id="S5.SS2.4.4.4.4.4.m1.1.1" stretchy="false" xref="S5.SS2.4.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.SS2.4.4.4.4.4.m1.1b"><ci id="S5.SS2.4.4.4.4.4.m1.1.1.cmml" xref="S5.SS2.4.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS2.4.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS2.4.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS2.5.5.5.5.5">Rec.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.SS2.5.5.5.5.5.m1.1"><semantics id="S5.SS2.5.5.5.5.5.m1.1a"><mo id="S5.SS2.5.5.5.5.5.m1.1.1" stretchy="false" xref="S5.SS2.5.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.SS2.5.5.5.5.5.m1.1b"><ci id="S5.SS2.5.5.5.5.5.m1.1.1.cmml" xref="S5.SS2.5.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS2.5.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS2.5.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.SS2.5.5.5.6" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.SS2.5.5.5.6.1"><span class="ltx_text" id="S5.SS2.5.5.5.6.1.1" style="background-color:#ECECEC;">SiT-XL/2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS2.5.5.5.6.2"><span class="ltx_text" id="S5.SS2.5.5.5.6.2.1" style="background-color:#ECECEC;">675M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS2.5.5.5.6.3"><span class="ltx_text" id="S5.SS2.5.5.5.6.3.1" style="background-color:#ECECEC;">7M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS2.5.5.5.6.4"><span class="ltx_text" id="S5.SS2.5.5.5.6.4.1" style="background-color:#ECECEC;">8.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS2.5.5.5.6.5"><span class="ltx_text" id="S5.SS2.5.5.5.6.5.1" style="background-color:#ECECEC;">6.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS2.5.5.5.6.6"><span class="ltx_text" id="S5.SS2.5.5.5.6.6.1" style="background-color:#ECECEC;">131.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS2.5.5.5.6.7"><span class="ltx_text" id="S5.SS2.5.5.5.6.7.1" style="background-color:#ECECEC;">0.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS2.5.5.5.6.8"><span class="ltx_text" id="S5.SS2.5.5.5.6.8.1" style="background-color:#ECECEC;">0.67</span></td>
</tr>
<tr class="ltx_tr" id="S5.SS2.5.5.5.7">
<td class="ltx_td ltx_align_left" id="S5.SS2.5.5.5.7.1">+<span class="ltx_text ltx_font_smallcaps" id="S5.SS2.5.5.5.7.1.1">REPA</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.SS2.5.5.5.7.2">675M</td>
<td class="ltx_td ltx_align_center" id="S5.SS2.5.5.5.7.3">50K</td>
<td class="ltx_td ltx_align_center" id="S5.SS2.5.5.5.7.4">52.3</td>
<td class="ltx_td ltx_align_center" id="S5.SS2.5.5.5.7.5">31.24</td>
<td class="ltx_td ltx_align_center" id="S5.SS2.5.5.5.7.6">24.3</td>
<td class="ltx_td ltx_align_center" id="S5.SS2.5.5.5.7.7">0.45</td>
<td class="ltx_td ltx_align_center" id="S5.SS2.5.5.5.7.8">0.53</td>
</tr>
<tr class="ltx_tr" id="S5.SS2.5.5.5.8">
<td class="ltx_td ltx_align_left" id="S5.SS2.5.5.5.8.1">+<span class="ltx_text ltx_font_smallcaps" id="S5.SS2.5.5.5.8.1.1">ERW</span> (ours)</td>
<td class="ltx_td ltx_align_center" id="S5.SS2.5.5.5.8.2">675M</td>
<td class="ltx_td ltx_align_center" id="S5.SS2.5.5.5.8.3">50K</td>
<td class="ltx_td ltx_align_center" id="S5.SS2.5.5.5.8.4"><span class="ltx_text ltx_font_bold" id="S5.SS2.5.5.5.8.4.1">8.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS2.5.5.5.8.5"><span class="ltx_text ltx_font_bold" id="S5.SS2.5.5.5.8.5.1">9.59</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS2.5.5.5.8.6"><span class="ltx_text ltx_font_bold" id="S5.SS2.5.5.5.8.6.1">154.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS2.5.5.5.8.7"><span class="ltx_text ltx_font_bold" id="S5.SS2.5.5.5.8.7.1">0.72</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS2.5.5.5.8.8"><span class="ltx_text ltx_font_bold" id="S5.SS2.5.5.5.8.8.1">0.51</span></td>
</tr>
<tr class="ltx_tr" id="S5.SS2.5.5.5.9">
<td class="ltx_td ltx_align_left" id="S5.SS2.5.5.5.9.1">+<span class="ltx_text ltx_font_smallcaps" id="S5.SS2.5.5.5.9.1.1">REPA</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.SS2.5.5.5.9.2">675M</td>
<td class="ltx_td ltx_align_center" id="S5.SS2.5.5.5.9.3">100K</td>
<td class="ltx_td ltx_align_center" id="S5.SS2.5.5.5.9.4">19.4</td>
<td class="ltx_td ltx_align_center" id="S5.SS2.5.5.5.9.5">6.06</td>
<td class="ltx_td ltx_align_center" id="S5.SS2.5.5.5.9.6">67.4</td>
<td class="ltx_td ltx_align_center" id="S5.SS2.5.5.5.9.7">0.64</td>
<td class="ltx_td ltx_align_center" id="S5.SS2.5.5.5.9.8">0.61</td>
</tr>
<tr class="ltx_tr" id="S5.SS2.5.5.5.10">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.SS2.5.5.5.10.1">+<span class="ltx_text ltx_font_smallcaps" id="S5.SS2.5.5.5.10.1.1">ERW</span> (ours)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS2.5.5.5.10.2">675M</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS2.5.5.5.10.3">100K</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS2.5.5.5.10.4"><span class="ltx_text ltx_font_bold" id="S5.SS2.5.5.5.10.4.1">6.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS2.5.5.5.10.5"><span class="ltx_text ltx_font_bold" id="S5.SS2.5.5.5.10.5.1">6.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS2.5.5.5.10.6"><span class="ltx_text ltx_font_bold" id="S5.SS2.5.5.5.10.6.1">207.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS2.5.5.5.10.7"><span class="ltx_text ltx_font_bold" id="S5.SS2.5.5.5.10.7.1">0.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS2.5.5.5.10.8"><span class="ltx_text ltx_font_bold" id="S5.SS2.5.5.5.10.8.1">0.63</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the Fréchet Inception Distance (FID) scores achieved by the SiT-XL/2 model with and without the ERW method.  Results are shown for different training iterations on the ImageNet 256x256 dataset.  The table includes results from the full training phase only (warmup is skipped because a pre-trained, warmed-up model was used as a starting point). For comparison, FID scores from the state-of-the-art REPA method are included for similar training iterations or comparable FID values. Lower FID scores indicate better performance. All results are reported without using classifier-free guidance.
> <details>
> <summary>read the caption</summary>
> Table 2:  FID comparisons with SiT-XL/2.  In this table, we report the FID of ERW with SiT-XL/2 on ImageNet 256×256256256256\times 256256 × 256 at various Training iterations. Here is only full training without warmup, because we load a well trained warmuped checkpoint. For comparison, we also present the performance of the state-of-the-art baseline REPA at similar iterations or comparable FID values. Note that ↓↓\downarrow↓ indicates that lower values are preferred and all results reported are without classifier-free guidance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.SS3.SSS0.Px2.5.5.5">
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.5.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.SS3.SSS0.Px2.5.5.5.5.6"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.5.6.1" style="font-size:80%;">Target Repr.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS3.SSS0.Px2.5.5.5.5.7"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.5.7.1" style="font-size:80%;">Depth</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS3.SSS0.Px2.5.5.5.5.8"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.5.8.1" style="font-size:80%;">Objective</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS3.SSS0.Px2.1.1.1.1.1">
<span class="ltx_text" id="S5.SS3.SSS0.Px2.1.1.1.1.1.1" style="font-size:80%;">FID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.SS3.SSS0.Px2.1.1.1.1.1.m1.1"><semantics id="S5.SS3.SSS0.Px2.1.1.1.1.1.m1.1a"><mo id="S5.SS3.SSS0.Px2.1.1.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S5.SS3.SSS0.Px2.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.SS3.SSS0.Px2.1.1.1.1.1.m1.1b"><ci id="S5.SS3.SSS0.Px2.1.1.1.1.1.m1.1.1.cmml" xref="S5.SS3.SSS0.Px2.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS3.SSS0.Px2.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS3.SSS0.Px2.1.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS3.SSS0.Px2.2.2.2.2.2">
<span class="ltx_text" id="S5.SS3.SSS0.Px2.2.2.2.2.2.1" style="font-size:80%;">sFID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.SS3.SSS0.Px2.2.2.2.2.2.m1.1"><semantics id="S5.SS3.SSS0.Px2.2.2.2.2.2.m1.1a"><mo id="S5.SS3.SSS0.Px2.2.2.2.2.2.m1.1.1" mathsize="80%" stretchy="false" xref="S5.SS3.SSS0.Px2.2.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.SS3.SSS0.Px2.2.2.2.2.2.m1.1b"><ci id="S5.SS3.SSS0.Px2.2.2.2.2.2.m1.1.1.cmml" xref="S5.SS3.SSS0.Px2.2.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS3.SSS0.Px2.2.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS3.SSS0.Px2.2.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS3.SSS0.Px2.3.3.3.3.3">
<span class="ltx_text" id="S5.SS3.SSS0.Px2.3.3.3.3.3.1" style="font-size:80%;">IS</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.SS3.SSS0.Px2.3.3.3.3.3.m1.1"><semantics id="S5.SS3.SSS0.Px2.3.3.3.3.3.m1.1a"><mo id="S5.SS3.SSS0.Px2.3.3.3.3.3.m1.1.1" mathsize="80%" stretchy="false" xref="S5.SS3.SSS0.Px2.3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.SS3.SSS0.Px2.3.3.3.3.3.m1.1b"><ci id="S5.SS3.SSS0.Px2.3.3.3.3.3.m1.1.1.cmml" xref="S5.SS3.SSS0.Px2.3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS3.SSS0.Px2.3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS3.SSS0.Px2.3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS3.SSS0.Px2.4.4.4.4.4">
<span class="ltx_text" id="S5.SS3.SSS0.Px2.4.4.4.4.4.1" style="font-size:80%;">Prec.</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.SS3.SSS0.Px2.4.4.4.4.4.m1.1"><semantics id="S5.SS3.SSS0.Px2.4.4.4.4.4.m1.1a"><mo id="S5.SS3.SSS0.Px2.4.4.4.4.4.m1.1.1" mathsize="80%" stretchy="false" xref="S5.SS3.SSS0.Px2.4.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.SS3.SSS0.Px2.4.4.4.4.4.m1.1b"><ci id="S5.SS3.SSS0.Px2.4.4.4.4.4.m1.1.1.cmml" xref="S5.SS3.SSS0.Px2.4.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS3.SSS0.Px2.4.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS3.SSS0.Px2.4.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS3.SSS0.Px2.5.5.5.5.5">
<span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.5.5.1" style="font-size:80%;">Rec.</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.SS3.SSS0.Px2.5.5.5.5.5.m1.1"><semantics id="S5.SS3.SSS0.Px2.5.5.5.5.5.m1.1a"><mo id="S5.SS3.SSS0.Px2.5.5.5.5.5.m1.1.1" mathsize="80%" stretchy="false" xref="S5.SS3.SSS0.Px2.5.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.SS3.SSS0.Px2.5.5.5.5.5.m1.1b"><ci id="S5.SS3.SSS0.Px2.5.5.5.5.5.m1.1.1.cmml" xref="S5.SS3.SSS0.Px2.5.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS3.SSS0.Px2.5.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS3.SSS0.Px2.5.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.5.5.5.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.SS3.SSS0.Px2.5.5.5.6.1" style="background-color:#FFD9D9;"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.6.1.1" style="font-size:80%;background-color:#FFD9D9;">MoCov3-B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.5.5.5.6.2"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.6.2.1" style="font-size:80%;">8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.5.5.5.6.3"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.6.3.1" style="font-size:80%;">NT-Xent</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.5.5.5.6.4"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.6.4.1" style="font-size:80%;">61.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.5.5.5.6.5"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.5.5.5.6.5.1" style="font-size:80%;">7.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.5.5.5.6.6"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.6.6.1" style="font-size:80%;">22.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.5.5.5.6.7"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.6.7.1" style="font-size:80%;">0.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.5.5.5.6.8"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.5.5.5.6.8.1" style="font-size:80%;">0.58</span></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.5.5.5.7">
<td class="ltx_td ltx_align_left" id="S5.SS3.SSS0.Px2.5.5.5.7.1" style="background-color:#FFD9D9;"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.7.1.1" style="font-size:80%;background-color:#FFD9D9;">MoCov3-L</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.5.5.5.7.2"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.7.2.1" style="font-size:80%;">8</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.5.5.5.7.3"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.7.3.1" style="font-size:80%;">NT-Xent</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.5.5.5.7.4"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.7.4.1" style="font-size:80%;">73.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.5.5.5.7.5"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.7.5.1" style="font-size:80%;">8.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.5.5.5.7.6"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.7.6.1" style="font-size:80%;">17.96</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.5.5.5.7.7"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.7.7.1" style="font-size:80%;">0.38</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.5.5.5.7.8"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.7.8.1" style="font-size:80%;">0.52</span></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.5.5.5.8">
<td class="ltx_td ltx_align_left" id="S5.SS3.SSS0.Px2.5.5.5.8.1" style="background-color:#FFD9D9;"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.8.1.1" style="font-size:80%;background-color:#FFD9D9;">CLIP-L</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.5.5.5.8.2"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.8.2.1" style="font-size:80%;">8</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.5.5.5.8.3"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.8.3.1" style="font-size:80%;">NT-Xent</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.5.5.5.8.4"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.8.4.1" style="font-size:80%;">58.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.5.5.5.8.5"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.8.5.1" style="font-size:80%;">7.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.5.5.5.8.6"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.8.6.1" style="font-size:80%;">23.68</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.5.5.5.8.7"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.5.5.5.8.7.1" style="font-size:80%;">0.44</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.5.5.5.8.8"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.8.8.1" style="font-size:80%;">0.54</span></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.5.5.5.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.SS3.SSS0.Px2.5.5.5.9.1" style="background-color:#FFFFD9;"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.9.1.1" style="font-size:80%;background-color:#FFFFD9;">DINOv2-B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.5.5.5.9.2"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.9.2.1" style="font-size:80%;">8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.5.5.5.9.3"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.9.3.1" style="font-size:80%;">NT-Xent</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.5.5.5.9.4"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.9.4.1" style="font-size:80%;">55.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.5.5.5.9.5"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.9.5.1" style="font-size:80%;">7.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.5.5.5.9.6"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.9.6.1" style="font-size:80%;">25.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.5.5.5.9.7"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.5.5.5.9.7.1" style="font-size:80%;">0.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.5.5.5.9.8"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.9.8.1" style="font-size:80%;">0.56</span></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.5.5.5.10">
<td class="ltx_td ltx_align_left" id="S5.SS3.SSS0.Px2.5.5.5.10.1" style="background-color:#FFFFD9;"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.10.1.1" style="font-size:80%;background-color:#FFFFD9;">DINOv2-L</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.5.5.5.10.2"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.10.2.1" style="font-size:80%;">8</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.5.5.5.10.3"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.10.3.1" style="font-size:80%;">NT-Xent</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.5.5.5.10.4"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.5.5.5.10.4.1" style="font-size:80%;">55.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.5.5.5.10.5"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.10.5.1" style="font-size:80%;">7.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.5.5.5.10.6"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.10.6.1" style="font-size:80%;">25.45</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.5.5.5.10.7"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.5.5.5.10.7.1" style="font-size:80%;">0.44</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.5.5.5.10.8"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.10.8.1" style="font-size:80%;">0.56</span></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.5.5.5.11">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.SS3.SSS0.Px2.5.5.5.11.1" style="background-color:#FFFFD9;"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.11.1.1" style="font-size:80%;background-color:#FFFFD9;">DINOv2-g</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.5.5.5.11.2"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.11.2.1" style="font-size:80%;">8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.5.5.5.11.3"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.11.3.1" style="font-size:80%;">NT-Xent</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.5.5.5.11.4"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.11.4.1" style="font-size:80%;">59.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.5.5.5.11.5"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.5.5.5.11.5.1" style="font-size:80%;">7.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.5.5.5.11.6"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.5.5.5.11.6.1" style="font-size:80%;">25.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.5.5.5.11.7"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.5.5.5.11.7.1" style="font-size:80%;">0.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.5.5.5.11.8"><span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.5.11.8.1" style="font-size:80%;">0.56</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a detailed analysis of the Embedded Representation Warmup (ERW) method's performance on the ImageNet 256x256 dataset.  The analysis focuses on SiT-B/2 models trained for 50,000 iterations.  The table compares various metrics such as FID (Fréchet Inception Distance), sFID, Inception Score (IS), precision, and recall.  Importantly, it also includes linear probing accuracy (Acc.) results. This accuracy measure assesses the quality of latent representations learned by each model by evaluating their performance on a downstream task—specifically, classification on the ImageNet validation set. The results are shown for several different target representation models,  allowing for a comprehensive comparison.  A key parameter, lambda (λ), is held constant at 0.5 across all experiments.  The arrows (↑ and ↓) indicate whether higher or lower values are preferable for each metric.
> <details>
> <summary>read the caption</summary>
> Table 3:  Analysis of ERW on ImageNet 256×\times×256. All models are SiT-B/2 trained for 50K iterations. All metrics except FID without classifier-free guidance. For Acc., we report linear probing results on the ImageNet validation set using the latent features aligned with the target representation. We fix λ=0.5𝜆0.5\lambda=0.5italic_λ = 0.5 here. ↓↓\downarrow↓ and ↑↑\uparrow↑ indicate whether lower or higher values are better, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.SS3.SSS0.Px2.10.5.5">
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.10.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.SS3.SSS0.Px2.10.5.5.5.6"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.5.6.1" style="font-size:80%;">Target Repr.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS3.SSS0.Px2.10.5.5.5.7"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.5.7.1" style="font-size:80%;">Depth</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS3.SSS0.Px2.10.5.5.5.8"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.5.8.1" style="font-size:80%;">Objective</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS3.SSS0.Px2.6.1.1.1.1">
<span class="ltx_text" id="S5.SS3.SSS0.Px2.6.1.1.1.1.1" style="font-size:80%;">FID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.SS3.SSS0.Px2.6.1.1.1.1.m1.1"><semantics id="S5.SS3.SSS0.Px2.6.1.1.1.1.m1.1a"><mo id="S5.SS3.SSS0.Px2.6.1.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S5.SS3.SSS0.Px2.6.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.SS3.SSS0.Px2.6.1.1.1.1.m1.1b"><ci id="S5.SS3.SSS0.Px2.6.1.1.1.1.m1.1.1.cmml" xref="S5.SS3.SSS0.Px2.6.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS3.SSS0.Px2.6.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS3.SSS0.Px2.6.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS3.SSS0.Px2.7.2.2.2.2">
<span class="ltx_text" id="S5.SS3.SSS0.Px2.7.2.2.2.2.1" style="font-size:80%;">sFID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.SS3.SSS0.Px2.7.2.2.2.2.m1.1"><semantics id="S5.SS3.SSS0.Px2.7.2.2.2.2.m1.1a"><mo id="S5.SS3.SSS0.Px2.7.2.2.2.2.m1.1.1" mathsize="80%" stretchy="false" xref="S5.SS3.SSS0.Px2.7.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.SS3.SSS0.Px2.7.2.2.2.2.m1.1b"><ci id="S5.SS3.SSS0.Px2.7.2.2.2.2.m1.1.1.cmml" xref="S5.SS3.SSS0.Px2.7.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS3.SSS0.Px2.7.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS3.SSS0.Px2.7.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS3.SSS0.Px2.8.3.3.3.3">
<span class="ltx_text" id="S5.SS3.SSS0.Px2.8.3.3.3.3.1" style="font-size:80%;">IS</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.SS3.SSS0.Px2.8.3.3.3.3.m1.1"><semantics id="S5.SS3.SSS0.Px2.8.3.3.3.3.m1.1a"><mo id="S5.SS3.SSS0.Px2.8.3.3.3.3.m1.1.1" mathsize="80%" stretchy="false" xref="S5.SS3.SSS0.Px2.8.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.SS3.SSS0.Px2.8.3.3.3.3.m1.1b"><ci id="S5.SS3.SSS0.Px2.8.3.3.3.3.m1.1.1.cmml" xref="S5.SS3.SSS0.Px2.8.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS3.SSS0.Px2.8.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS3.SSS0.Px2.8.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS3.SSS0.Px2.9.4.4.4.4">
<span class="ltx_text" id="S5.SS3.SSS0.Px2.9.4.4.4.4.1" style="font-size:80%;">Prec.</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.SS3.SSS0.Px2.9.4.4.4.4.m1.1"><semantics id="S5.SS3.SSS0.Px2.9.4.4.4.4.m1.1a"><mo id="S5.SS3.SSS0.Px2.9.4.4.4.4.m1.1.1" mathsize="80%" stretchy="false" xref="S5.SS3.SSS0.Px2.9.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.SS3.SSS0.Px2.9.4.4.4.4.m1.1b"><ci id="S5.SS3.SSS0.Px2.9.4.4.4.4.m1.1.1.cmml" xref="S5.SS3.SSS0.Px2.9.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS3.SSS0.Px2.9.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS3.SSS0.Px2.9.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS3.SSS0.Px2.10.5.5.5.5">
<span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.5.5.1" style="font-size:80%;">Rec.</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.SS3.SSS0.Px2.10.5.5.5.5.m1.1"><semantics id="S5.SS3.SSS0.Px2.10.5.5.5.5.m1.1a"><mo id="S5.SS3.SSS0.Px2.10.5.5.5.5.m1.1.1" mathsize="80%" stretchy="false" xref="S5.SS3.SSS0.Px2.10.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.SS3.SSS0.Px2.10.5.5.5.5.m1.1b"><ci id="S5.SS3.SSS0.Px2.10.5.5.5.5.m1.1.1.cmml" xref="S5.SS3.SSS0.Px2.10.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS3.SSS0.Px2.10.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS3.SSS0.Px2.10.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.10.5.5.6">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="3" id="S5.SS3.SSS0.Px2.10.5.5.6.1">
<span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.6.1.1" style="font-size:80%;">SiT-B/2 + </span><span class="ltx_text ltx_font_smallcaps" id="S5.SS3.SSS0.Px2.10.5.5.6.1.2" style="font-size:80%;">REPA</span><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.6.1.3" style="font-size:80%;"> </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.6.1.4.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10188v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.6.1.5.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.10.5.5.6.2"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.6.2.1" style="font-size:80%;">78.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.10.5.5.6.3"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.6.3.1" style="font-size:80%;">11.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.10.5.5.6.4"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.6.4.1" style="font-size:80%;">17.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.10.5.5.6.5"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.6.5.1" style="font-size:80%;">0.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.10.5.5.6.6"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.6.6.1" style="font-size:80%;">0.48</span></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.10.5.5.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.SS3.SSS0.Px2.10.5.5.7.1"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.7.1.1" style="font-size:80%;">DINOv2-B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.10.5.5.7.2" style="background-color:#D9D9FF;"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.7.2.1" style="font-size:80%;background-color:#D9D9FF;">0-8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.10.5.5.7.3"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.7.3.1" style="font-size:80%;">NT-Xent</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.10.5.5.7.4"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.10.5.5.7.4.1" style="font-size:80%;">54.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.10.5.5.7.5"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.10.5.5.7.5.1" style="font-size:80%;">8.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.10.5.5.7.6"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.10.5.5.7.6.1" style="font-size:80%;">27.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.10.5.5.7.7"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.10.5.5.7.7.1" style="font-size:80%;">0.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.10.5.5.7.8"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.10.5.5.7.8.1" style="font-size:80%;">0.59</span></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.10.5.5.8">
<td class="ltx_td ltx_align_left" id="S5.SS3.SSS0.Px2.10.5.5.8.1"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.8.1.1" style="font-size:80%;">DINOv2-B</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.10.5.5.8.2" style="background-color:#D9D9FF;"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.8.2.1" style="font-size:80%;background-color:#D9D9FF;">1-9</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.10.5.5.8.3"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.8.3.1" style="font-size:80%;">NT-Xent</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.10.5.5.8.4"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.8.4.1" style="font-size:80%;">69.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.10.5.5.8.5"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.8.5.1" style="font-size:80%;">13.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.10.5.5.8.6"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.8.6.1" style="font-size:80%;">18.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.10.5.5.8.7"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.8.7.1" style="font-size:80%;">0.37</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.10.5.5.8.8"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.8.8.1" style="font-size:80%;">0.51</span></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.10.5.5.9">
<td class="ltx_td ltx_align_left" id="S5.SS3.SSS0.Px2.10.5.5.9.1"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.9.1.1" style="font-size:80%;">DINOv2-B</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.10.5.5.9.2" style="background-color:#D9D9FF;"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.9.2.1" style="font-size:80%;background-color:#D9D9FF;">2-10</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.10.5.5.9.3"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.9.3.1" style="font-size:80%;">NT-Xent</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.10.5.5.9.4"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.9.4.1" style="font-size:80%;">67.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.10.5.5.9.5"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.9.5.1" style="font-size:80%;">13.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.10.5.5.9.6"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.9.6.1" style="font-size:80%;">19.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.10.5.5.9.7"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.9.7.1" style="font-size:80%;">0.38</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.10.5.5.9.8"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.9.8.1" style="font-size:80%;">0.52</span></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.10.5.5.10">
<td class="ltx_td ltx_align_left" id="S5.SS3.SSS0.Px2.10.5.5.10.1"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.10.1.1" style="font-size:80%;">DINOv2-B</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.10.5.5.10.2" style="background-color:#D9D9FF;"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.10.2.1" style="font-size:80%;background-color:#D9D9FF;">3-11</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.10.5.5.10.3"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.10.3.1" style="font-size:80%;">NT-Xent</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.10.5.5.10.4"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.10.4.1" style="font-size:80%;">67.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.10.5.5.10.5"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.10.5.1" style="font-size:80%;">11.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.10.5.5.10.6"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.10.6.1" style="font-size:80%;">19.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.10.5.5.10.7"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.10.7.1" style="font-size:80%;">0.38</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.10.5.5.10.8"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.10.8.1" style="font-size:80%;">0.52</span></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.10.5.5.11">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.SS3.SSS0.Px2.10.5.5.11.1"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.11.1.1" style="font-size:80%;">DINOv2-B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.10.5.5.11.2" style="background-color:#D9D9FF;"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.11.2.1" style="font-size:80%;background-color:#D9D9FF;">4-11</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.10.5.5.11.3"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.11.3.1" style="font-size:80%;">NT-Xent</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.10.5.5.11.4"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.11.4.1" style="font-size:80%;">67.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.10.5.5.11.5"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.11.5.1" style="font-size:80%;">13.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.10.5.5.11.6"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.11.6.1" style="font-size:80%;">19.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.10.5.5.11.7"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.11.7.1" style="font-size:80%;">0.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.10.5.5.11.8"><span class="ltx_text" id="S5.SS3.SSS0.Px2.10.5.5.11.8.1" style="font-size:80%;">0.52</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study investigating the impact of different placement positions of the Embedded Representation Warmup (ERW) module within the SiT-B/2 architecture.  The experiment trains several SiT-B/2 models with ERW modules inserted at various layers (0-8, 1-9, 2-10, etc.), while keeping other hyperparameters constant.  The results, evaluated using FID (Fréchet Inception Distance), show the optimal performance is achieved when the ERW module is placed at the beginning (layers 0-8) of the network, supporting the hypothesis that initializing early layers with high-quality representations boosts performance.
> <details>
> <summary>read the caption</summary>
> Table 4:  Analysis of ERW places influences in SiT-B/2. All models are based on SiT-B/2 and trained for 50K iterations under the batch size of 256 without using classifier-free guidance on ImageNet 256×256256256256\times 256256 × 256. ↓↓\downarrow↓ indicates lower values are better. Results empirically validate our hypothesis that placing ERW at the forefront of the architecture yields optimal performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.SS3.SSS0.Px2.16.6.6">
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.16.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.SS3.SSS0.Px2.16.6.6.6.7">
<span class="ltx_text ltx_font_smallcaps" id="S5.SS3.SSS0.Px2.16.6.6.6.7.1" style="font-size:80%;">ERW</span><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.6.7.2" style="font-size:80%;"> Depth</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS3.SSS0.Px2.16.6.6.6.8"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.6.8.1" style="font-size:80%;">Proj. Depth</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS3.SSS0.Px2.11.1.1.1.1"><math alttext="\lambda" class="ltx_Math" display="inline" id="S5.SS3.SSS0.Px2.11.1.1.1.1.m1.1"><semantics id="S5.SS3.SSS0.Px2.11.1.1.1.1.m1.1a"><mi id="S5.SS3.SSS0.Px2.11.1.1.1.1.m1.1.1" mathsize="80%" xref="S5.SS3.SSS0.Px2.11.1.1.1.1.m1.1.1.cmml">λ</mi><annotation-xml encoding="MathML-Content" id="S5.SS3.SSS0.Px2.11.1.1.1.1.m1.1b"><ci id="S5.SS3.SSS0.Px2.11.1.1.1.1.m1.1.1.cmml" xref="S5.SS3.SSS0.Px2.11.1.1.1.1.m1.1.1">𝜆</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS3.SSS0.Px2.11.1.1.1.1.m1.1c">\lambda</annotation><annotation encoding="application/x-llamapun" id="S5.SS3.SSS0.Px2.11.1.1.1.1.m1.1d">italic_λ</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS3.SSS0.Px2.12.2.2.2.2">
<span class="ltx_text" id="S5.SS3.SSS0.Px2.12.2.2.2.2.1" style="font-size:80%;">FID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.SS3.SSS0.Px2.12.2.2.2.2.m1.1"><semantics id="S5.SS3.SSS0.Px2.12.2.2.2.2.m1.1a"><mo id="S5.SS3.SSS0.Px2.12.2.2.2.2.m1.1.1" mathsize="80%" stretchy="false" xref="S5.SS3.SSS0.Px2.12.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.SS3.SSS0.Px2.12.2.2.2.2.m1.1b"><ci id="S5.SS3.SSS0.Px2.12.2.2.2.2.m1.1.1.cmml" xref="S5.SS3.SSS0.Px2.12.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS3.SSS0.Px2.12.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS3.SSS0.Px2.12.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS3.SSS0.Px2.13.3.3.3.3">
<span class="ltx_text" id="S5.SS3.SSS0.Px2.13.3.3.3.3.1" style="font-size:80%;">sFID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.SS3.SSS0.Px2.13.3.3.3.3.m1.1"><semantics id="S5.SS3.SSS0.Px2.13.3.3.3.3.m1.1a"><mo id="S5.SS3.SSS0.Px2.13.3.3.3.3.m1.1.1" mathsize="80%" stretchy="false" xref="S5.SS3.SSS0.Px2.13.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.SS3.SSS0.Px2.13.3.3.3.3.m1.1b"><ci id="S5.SS3.SSS0.Px2.13.3.3.3.3.m1.1.1.cmml" xref="S5.SS3.SSS0.Px2.13.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS3.SSS0.Px2.13.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS3.SSS0.Px2.13.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS3.SSS0.Px2.14.4.4.4.4">
<span class="ltx_text" id="S5.SS3.SSS0.Px2.14.4.4.4.4.1" style="font-size:80%;">IS</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.SS3.SSS0.Px2.14.4.4.4.4.m1.1"><semantics id="S5.SS3.SSS0.Px2.14.4.4.4.4.m1.1a"><mo id="S5.SS3.SSS0.Px2.14.4.4.4.4.m1.1.1" mathsize="80%" stretchy="false" xref="S5.SS3.SSS0.Px2.14.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.SS3.SSS0.Px2.14.4.4.4.4.m1.1b"><ci id="S5.SS3.SSS0.Px2.14.4.4.4.4.m1.1.1.cmml" xref="S5.SS3.SSS0.Px2.14.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS3.SSS0.Px2.14.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS3.SSS0.Px2.14.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS3.SSS0.Px2.15.5.5.5.5">
<span class="ltx_text" id="S5.SS3.SSS0.Px2.15.5.5.5.5.1" style="font-size:80%;">Prec.</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.SS3.SSS0.Px2.15.5.5.5.5.m1.1"><semantics id="S5.SS3.SSS0.Px2.15.5.5.5.5.m1.1a"><mo id="S5.SS3.SSS0.Px2.15.5.5.5.5.m1.1.1" mathsize="80%" stretchy="false" xref="S5.SS3.SSS0.Px2.15.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.SS3.SSS0.Px2.15.5.5.5.5.m1.1b"><ci id="S5.SS3.SSS0.Px2.15.5.5.5.5.m1.1.1.cmml" xref="S5.SS3.SSS0.Px2.15.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS3.SSS0.Px2.15.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS3.SSS0.Px2.15.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS3.SSS0.Px2.16.6.6.6.6">
<span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.6.6.1" style="font-size:80%;">Rec.</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.SS3.SSS0.Px2.16.6.6.6.6.m1.1"><semantics id="S5.SS3.SSS0.Px2.16.6.6.6.6.m1.1a"><mo id="S5.SS3.SSS0.Px2.16.6.6.6.6.m1.1.1" mathsize="80%" stretchy="false" xref="S5.SS3.SSS0.Px2.16.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.SS3.SSS0.Px2.16.6.6.6.6.m1.1b"><ci id="S5.SS3.SSS0.Px2.16.6.6.6.6.m1.1.1.cmml" xref="S5.SS3.SSS0.Px2.16.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS3.SSS0.Px2.16.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS3.SSS0.Px2.16.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.16.6.6.7">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="3" id="S5.SS3.SSS0.Px2.16.6.6.7.1">
<span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.7.1.1" style="font-size:80%;">SiT-XL/2 + </span><span class="ltx_text ltx_font_smallcaps" id="S5.SS3.SSS0.Px2.16.6.6.7.1.2" style="font-size:80%;">REPA</span><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.7.1.3" style="font-size:80%;"> </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.7.1.4.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.10188v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.7.1.5.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.16.6.6.7.2"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.7.2.1" style="font-size:80%;">52.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.16.6.6.7.3"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.7.3.1" style="font-size:80%;">31.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.16.6.6.7.4"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.7.4.1" style="font-size:80%;">24.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.16.6.6.7.5"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.7.5.1" style="font-size:80%;">0.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.16.6.6.7.6"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.7.6.1" style="font-size:80%;">0.53</span></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.16.6.6.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.16.6.6.8.1" style="background-color:#D9FFD9;"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.8.1.1" style="font-size:80%;background-color:#D9FFD9;">3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.16.6.6.8.2"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.8.2.1" style="font-size:80%;">8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.16.6.6.8.3"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.8.3.1" style="font-size:80%;">0.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.16.6.6.8.4"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.8.4.1" style="font-size:80%;">13.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.16.6.6.8.5"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.16.6.6.8.5.1" style="font-size:80%;">13.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.16.6.6.8.6"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.8.6.1" style="font-size:80%;">113.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.16.6.6.8.7"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.16.6.6.8.7.1" style="font-size:80%;">0.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.16.6.6.8.8"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.8.8.1" style="font-size:80%;">0.48</span></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.16.6.6.9">
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.9.1" style="background-color:#D9FFD9;"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.9.1.1" style="font-size:80%;background-color:#D9FFD9;">4</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.9.2"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.9.2.1" style="font-size:80%;">8</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.9.3"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.9.3.1" style="font-size:80%;">0.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.9.4"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.16.6.6.9.4.1" style="font-size:80%;">11.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.9.5"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.9.5.1" style="font-size:80%;">17.93</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.9.6"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.9.6.1" style="font-size:80%;">114.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.9.7"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.9.7.1" style="font-size:80%;">0.68</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.9.8"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.9.8.1" style="font-size:80%;">0.48</span></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.16.6.6.10">
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.10.1" style="background-color:#D9FFD9;"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.10.1.1" style="font-size:80%;background-color:#D9FFD9;">5</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.10.2"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.10.2.1" style="font-size:80%;">8</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.10.3"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.10.3.1" style="font-size:80%;">0.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.10.4"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.10.4.1" style="font-size:80%;">13.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.10.5"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.10.5.1" style="font-size:80%;">15.25</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.10.6"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.16.6.6.10.6.1" style="font-size:80%;">117.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.10.7"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.16.6.6.10.7.1" style="font-size:80%;">0.69</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.10.8"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.10.8.1" style="font-size:80%;">0.48</span></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.16.6.6.11">
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.11.1" style="background-color:#D9FFD9;"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.11.1.1" style="font-size:80%;background-color:#D9FFD9;">6</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.11.2"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.11.2.1" style="font-size:80%;">8</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.11.3"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.11.3.1" style="font-size:80%;">0.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.11.4"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.11.4.1" style="font-size:80%;">13.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.11.5"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.11.5.1" style="font-size:80%;">16.62</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.11.6"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.11.6.1" style="font-size:80%;">115.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.11.7"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.11.7.1" style="font-size:80%;">0.68</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.11.8"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.16.6.6.11.8.1" style="font-size:80%;">0.49</span></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.16.6.6.12">
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.12.1" style="background-color:#D9FFD9;"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.12.1.1" style="font-size:80%;background-color:#D9FFD9;">8</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.12.2"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.12.2.1" style="font-size:80%;">8</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.12.3"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.12.3.1" style="font-size:80%;">0.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.12.4"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.12.4.1" style="font-size:80%;">15.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.12.5"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.12.5.1" style="font-size:80%;">16.42</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.12.6"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.12.6.1" style="font-size:80%;">104.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.12.7"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.12.7.1" style="font-size:80%;">0.67</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.12.8"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.12.8.1" style="font-size:80%;">0.46</span></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.16.6.6.13">
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.13.1" style="background-color:#D9FFD9;"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.13.1.1" style="font-size:80%;background-color:#D9FFD9;">12</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.13.2"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.13.2.1" style="font-size:80%;">8</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.13.3"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.13.3.1" style="font-size:80%;">0.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.13.4"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.13.4.1" style="font-size:80%;">19.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.13.5"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.13.5.1" style="font-size:80%;">16.91</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.13.6"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.13.6.1" style="font-size:80%;">87.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.13.7"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.13.7.1" style="font-size:80%;">0.65</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.13.8"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.13.8.1" style="font-size:80%;">0.48</span></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.16.6.6.14">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.16.6.6.14.1"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.14.1.1" style="font-size:80%;">4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.16.6.6.14.2" style="background-color:#FFFFD9;"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.14.2.1" style="font-size:80%;background-color:#FFFFD9;">8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.16.6.6.14.3"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.14.3.1" style="font-size:80%;">0.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.16.6.6.14.4"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.14.4.1" style="font-size:80%;">13.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.16.6.6.14.5"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.14.5.1" style="font-size:80%;">17.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.16.6.6.14.6"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.14.6.1" style="font-size:80%;">114.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.16.6.6.14.7"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.14.7.1" style="font-size:80%;">0.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.16.6.6.14.8"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.14.8.1" style="font-size:80%;">0.48</span></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.16.6.6.15">
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.15.1"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.15.1.1" style="font-size:80%;">4</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.15.2" style="background-color:#FFFFD9;"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.15.2.1" style="font-size:80%;background-color:#FFFFD9;">10</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.15.3"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.15.3.1" style="font-size:80%;">0.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.15.4"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.15.4.1" style="font-size:80%;">12.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.15.5"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.15.5.1" style="font-size:80%;">17.25</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.15.6"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.15.6.1" style="font-size:80%;">121.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.15.7"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.15.7.1" style="font-size:80%;">0.68</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.15.8"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.15.8.1" style="font-size:80%;">0.48</span></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.16.6.6.16">
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.16.1"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.16.1.1" style="font-size:80%;">4</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.16.2" style="background-color:#FFFFD9;"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.16.2.1" style="font-size:80%;background-color:#FFFFD9;">12</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.16.3"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.16.3.1" style="font-size:80%;">0.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.16.4"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.16.6.6.16.4.1" style="font-size:80%;">12.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.16.5"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.16.5.1" style="font-size:80%;">17.03</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.16.6"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.16.6.1" style="font-size:80%;">123.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.16.7"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.16.6.6.16.7.1" style="font-size:80%;">0.69</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.16.8"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.16.8.1" style="font-size:80%;">0.48</span></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.16.6.6.17">
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.17.1"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.17.1.1" style="font-size:80%;">4</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.17.2" style="background-color:#FFFFD9;"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.17.2.1" style="font-size:80%;background-color:#FFFFD9;">14</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.17.3"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.17.3.1" style="font-size:80%;">0.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.17.4"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.17.4.1" style="font-size:80%;">12.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.17.5"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.17.5.1" style="font-size:80%;">16.97</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.17.6"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.16.6.6.17.6.1" style="font-size:80%;">124.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.17.7"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.17.7.1" style="font-size:80%;">0.68</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.17.8"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.17.8.1" style="font-size:80%;">0.48</span></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.16.6.6.18">
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.18.1"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.18.1.1" style="font-size:80%;">4</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.18.2" style="background-color:#FFFFD9;"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.18.2.1" style="font-size:80%;background-color:#FFFFD9;">16</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.18.3"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.18.3.1" style="font-size:80%;">0.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.18.4"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.18.4.1" style="font-size:80%;">12.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.18.5"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.16.6.6.18.5.1" style="font-size:80%;">16.79</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.18.6"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.18.6.1" style="font-size:80%;">124.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.18.7"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.18.7.1" style="font-size:80%;">0.67</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.18.8"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.16.6.6.18.8.1" style="font-size:80%;">0.49</span></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.16.6.6.19">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.16.6.6.19.1"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.19.1.1" style="font-size:80%;">4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.16.6.6.19.2"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.19.2.1" style="font-size:80%;">14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.16.6.6.19.3" style="background-color:#FFD9D9;"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.19.3.1" style="font-size:80%;background-color:#FFD9D9;">0.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.16.6.6.19.4"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.19.4.1" style="font-size:80%;">21.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.16.6.6.19.5"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.19.5.1" style="font-size:80%;">19.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.16.6.6.19.6"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.19.6.1" style="font-size:80%;">74.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.16.6.6.19.7"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.19.7.1" style="font-size:80%;">0.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.16.6.6.19.8"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.19.8.1" style="font-size:80%;">0.49</span></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.16.6.6.20">
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.20.1"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.20.1.1" style="font-size:80%;">4</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.20.2"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.20.2.1" style="font-size:80%;">14</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.20.3" style="background-color:#FFD9D9;"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.20.3.1" style="font-size:80%;background-color:#FFD9D9;">0.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.20.4"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.20.4.1" style="font-size:80%;">12.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.20.5"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.20.5.1" style="font-size:80%;">16.97</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.20.6"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.20.6.1" style="font-size:80%;">124.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.20.7"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.20.7.1" style="font-size:80%;">0.68</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.20.8"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.20.8.1" style="font-size:80%;">0.48</span></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.16.6.6.21">
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.21.1"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.21.1.1" style="font-size:80%;">4</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.21.2"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.21.2.1" style="font-size:80%;">14</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.21.3" style="background-color:#FFD9D9;"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.21.3.1" style="font-size:80%;background-color:#FFD9D9;">1.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.21.4"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.21.4.1" style="font-size:80%;">10.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.21.5"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.21.5.1" style="font-size:80%;">15.07</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.21.6"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.21.6.1" style="font-size:80%;">139.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.21.7"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.21.7.1" style="font-size:80%;">0.70</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.21.8"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.21.8.1" style="font-size:80%;">0.48</span></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.16.6.6.22">
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.22.1"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.22.1.1" style="font-size:80%;">4</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.22.2"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.22.2.1" style="font-size:80%;">14</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.22.3" style="background-color:#FFD9D9;"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.22.3.1" style="font-size:80%;background-color:#FFD9D9;">2.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.22.4">
<span class="ltx_text ltx_phantom" id="S5.SS3.SSS0.Px2.16.6.6.22.4.1" style="font-size:80%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.22.4.2" style="font-size:80%;">9.0</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.22.5"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.22.5.1" style="font-size:80%;">11.17</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.22.6"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.22.6.1" style="font-size:80%;">151.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.22.7"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.22.7.1" style="font-size:80%;">0.72</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.22.8"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.22.8.1" style="font-size:80%;">0.51</span></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.16.6.6.23">
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.23.1"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.23.1.1" style="font-size:80%;">4</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.23.2"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.23.2.1" style="font-size:80%;">14</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.23.3" style="background-color:#FFD9D9;"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.23.3.1" style="font-size:80%;background-color:#FFD9D9;">4.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.23.4">
<span class="ltx_text ltx_phantom" id="S5.SS3.SSS0.Px2.16.6.6.23.4.1" style="font-size:80%;"><span style="visibility:hidden">0</span></span><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.16.6.6.23.4.2" style="font-size:80%;">8.6</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.23.5">
<span class="ltx_text ltx_phantom" id="S5.SS3.SSS0.Px2.16.6.6.23.5.1" style="font-size:80%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.23.5.2" style="font-size:80%;">9.84</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.23.6"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.16.6.6.23.6.1" style="font-size:80%;">153.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.23.7"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.16.6.6.23.7.1" style="font-size:80%;">0.72</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.16.6.6.23.8"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.23.8.1" style="font-size:80%;">0.51</span></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.16.6.6.24">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.16.6.6.24.1"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.24.1.1" style="font-size:80%;">4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.16.6.6.24.2"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.24.2.1" style="font-size:80%;">14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.16.6.6.24.3" style="background-color:#FFD9D9;"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.24.3.1" style="font-size:80%;background-color:#FFD9D9;">6.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.16.6.6.24.4">
<span class="ltx_text ltx_phantom" id="S5.SS3.SSS0.Px2.16.6.6.24.4.1" style="font-size:80%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.24.4.2" style="font-size:80%;">8.8</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.16.6.6.24.5">
<span class="ltx_text ltx_phantom" id="S5.SS3.SSS0.Px2.16.6.6.24.5.1" style="font-size:80%;"><span style="visibility:hidden">0</span></span><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.16.6.6.24.5.2" style="font-size:80%;">9.46</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.16.6.6.24.6"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.24.6.1" style="font-size:80%;">151.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.16.6.6.24.7"><span class="ltx_text" id="S5.SS3.SSS0.Px2.16.6.6.24.7.1" style="font-size:80%;">0.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.16.6.6.24.8"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.16.6.6.24.8.1" style="font-size:80%;">0.52</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents an ablation study analyzing the impact of various hyperparameters on the Embedded Representation Warmup (ERW) method within the SiT-XL/2 model.  Specifically, it investigates the influence of ERW depth (the number of layers initialized with pretrained representations), projection depth (the depth of the projection head used in the alignment loss), and the dynamic projection loss (λ). The experiments were conducted on ImageNet (256x256 resolution images) for 50,000 iterations with a batch size of 256, and without using classifier-free guidance.  The target representation model for the alignment loss was DINOv2-B, using the NT-Xent objective. The table shows FID and sFID scores, with lower values indicating better performance.  The results highlight the optimal configuration for these hyperparameters, revealing that an ERW depth of 14 and a projection loss λ of 4.0 provide the best performance, leading to substantial improvements in both FID and sFID.
> <details>
> <summary>read the caption</summary>
> Table 5:  Analysis of ERW depth, projection depth, and different dynamic or consistent projection loss λ𝜆\lambdaitalic_λ influences in SiT-XL/2. All models are based on SiT-XL/2 and trained for 50K iterations under a batch size of 256 without using classifier-free guidance on ImageNet 256×256256256256\times 256256 × 256. The target representation model is DINOv2-B, and the objective is NT-Xent. ↓↓\downarrow↓ indicates lower values are better. The results show that a projection depth of 14 and a projection loss λ𝜆\lambdaitalic_λ of 4.0 yield substantial improvements in both FID and sFID, indicating an optimal configuration for model performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T6.21.21">
<tr class="ltx_tr" id="A3.T6.21.21.22">
<td class="ltx_td ltx_border_tt" id="A3.T6.21.21.22.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T6.21.21.22.2"><span class="ltx_text" id="A3.T6.21.21.22.2.1" style="font-size:90%;">Figure 1,2,3</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T6.21.21.22.3"><span class="ltx_text" id="A3.T6.21.21.22.3.1" style="font-size:90%;">Table 3,4 (SiT-B)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T6.21.21.22.4"><span class="ltx_text" id="A3.T6.21.21.22.4.1" style="font-size:90%;">Table 1,2,5 (SiT-XL)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.21.21.23">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T6.21.21.23.1"><span class="ltx_text ltx_font_bold" id="A3.T6.21.21.23.1.1" style="font-size:90%;">Architecture</span></td>
<td class="ltx_td ltx_border_t" id="A3.T6.21.21.23.2"></td>
<td class="ltx_td ltx_border_t" id="A3.T6.21.21.23.3"></td>
<td class="ltx_td ltx_border_t" id="A3.T6.21.21.23.4"></td>
</tr>
<tr class="ltx_tr" id="A3.T6.6.6.6">
<td class="ltx_td ltx_align_left" id="A3.T6.6.6.6.7"><span class="ltx_text" id="A3.T6.6.6.6.7.1" style="font-size:90%;">Input dim.</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.2.2.2.2">
<span class="ltx_text" id="A3.T6.2.2.2.2.1" style="font-size:90%;">32</span><math alttext="\times" class="ltx_Math" display="inline" id="A3.T6.1.1.1.1.m1.1"><semantics id="A3.T6.1.1.1.1.m1.1a"><mo id="A3.T6.1.1.1.1.m1.1.1" mathsize="90%" xref="A3.T6.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A3.T6.1.1.1.1.m1.1b"><times id="A3.T6.1.1.1.1.m1.1.1.cmml" xref="A3.T6.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A3.T6.1.1.1.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="A3.T6.2.2.2.2.2" style="font-size:90%;">32</span><math alttext="\times" class="ltx_Math" display="inline" id="A3.T6.2.2.2.2.m2.1"><semantics id="A3.T6.2.2.2.2.m2.1a"><mo id="A3.T6.2.2.2.2.m2.1.1" mathsize="90%" xref="A3.T6.2.2.2.2.m2.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A3.T6.2.2.2.2.m2.1b"><times id="A3.T6.2.2.2.2.m2.1.1.cmml" xref="A3.T6.2.2.2.2.m2.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.2.2.2.2.m2.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A3.T6.2.2.2.2.m2.1d">×</annotation></semantics></math><span class="ltx_text" id="A3.T6.2.2.2.2.3" style="font-size:90%;">4</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T6.4.4.4.4">
<span class="ltx_text" id="A3.T6.4.4.4.4.1" style="font-size:90%;">32</span><math alttext="\times" class="ltx_Math" display="inline" id="A3.T6.3.3.3.3.m1.1"><semantics id="A3.T6.3.3.3.3.m1.1a"><mo id="A3.T6.3.3.3.3.m1.1.1" mathsize="90%" xref="A3.T6.3.3.3.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A3.T6.3.3.3.3.m1.1b"><times id="A3.T6.3.3.3.3.m1.1.1.cmml" xref="A3.T6.3.3.3.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.3.3.3.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A3.T6.3.3.3.3.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="A3.T6.4.4.4.4.2" style="font-size:90%;">32</span><math alttext="\times" class="ltx_Math" display="inline" id="A3.T6.4.4.4.4.m2.1"><semantics id="A3.T6.4.4.4.4.m2.1a"><mo id="A3.T6.4.4.4.4.m2.1.1" mathsize="90%" xref="A3.T6.4.4.4.4.m2.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A3.T6.4.4.4.4.m2.1b"><times id="A3.T6.4.4.4.4.m2.1.1.cmml" xref="A3.T6.4.4.4.4.m2.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.4.4.4.4.m2.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A3.T6.4.4.4.4.m2.1d">×</annotation></semantics></math><span class="ltx_text" id="A3.T6.4.4.4.4.3" style="font-size:90%;">4</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T6.6.6.6.6">
<span class="ltx_text" id="A3.T6.6.6.6.6.1" style="font-size:90%;">32</span><math alttext="\times" class="ltx_Math" display="inline" id="A3.T6.5.5.5.5.m1.1"><semantics id="A3.T6.5.5.5.5.m1.1a"><mo id="A3.T6.5.5.5.5.m1.1.1" mathsize="90%" xref="A3.T6.5.5.5.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A3.T6.5.5.5.5.m1.1b"><times id="A3.T6.5.5.5.5.m1.1.1.cmml" xref="A3.T6.5.5.5.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.5.5.5.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A3.T6.5.5.5.5.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="A3.T6.6.6.6.6.2" style="font-size:90%;">32</span><math alttext="\times" class="ltx_Math" display="inline" id="A3.T6.6.6.6.6.m2.1"><semantics id="A3.T6.6.6.6.6.m2.1a"><mo id="A3.T6.6.6.6.6.m2.1.1" mathsize="90%" xref="A3.T6.6.6.6.6.m2.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A3.T6.6.6.6.6.m2.1b"><times id="A3.T6.6.6.6.6.m2.1.1.cmml" xref="A3.T6.6.6.6.6.m2.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.6.6.6.6.m2.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A3.T6.6.6.6.6.m2.1d">×</annotation></semantics></math><span class="ltx_text" id="A3.T6.6.6.6.6.3" style="font-size:90%;">4</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.21.21.24">
<td class="ltx_td ltx_align_left" id="A3.T6.21.21.24.1"><span class="ltx_text" id="A3.T6.21.21.24.1.1" style="font-size:90%;">Num. layers</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.24.2"><span class="ltx_text" id="A3.T6.21.21.24.2.1" style="font-size:90%;">28</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.24.3"><span class="ltx_text" id="A3.T6.21.21.24.3.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.24.4"><span class="ltx_text" id="A3.T6.21.21.24.4.1" style="font-size:90%;">24</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.21.21.25">
<td class="ltx_td ltx_align_left" id="A3.T6.21.21.25.1"><span class="ltx_text" id="A3.T6.21.21.25.1.1" style="font-size:90%;">Hidden dim.</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.25.2"><span class="ltx_text" id="A3.T6.21.21.25.2.1" style="font-size:90%;">1,152</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.25.3"><span class="ltx_text" id="A3.T6.21.21.25.3.1" style="font-size:90%;">768</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.25.4"><span class="ltx_text" id="A3.T6.21.21.25.4.1" style="font-size:90%;">1,152</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.21.21.26">
<td class="ltx_td ltx_align_left" id="A3.T6.21.21.26.1"><span class="ltx_text" id="A3.T6.21.21.26.1.1" style="font-size:90%;">Num. heads</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.26.2"><span class="ltx_text" id="A3.T6.21.21.26.2.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.26.3"><span class="ltx_text" id="A3.T6.21.21.26.3.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.26.4"><span class="ltx_text" id="A3.T6.21.21.26.4.1" style="font-size:90%;">16</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.21.21.27">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T6.21.21.27.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="A3.T6.21.21.27.1.1" style="font-size:90%;">ERW</span></td>
<td class="ltx_td ltx_border_t" id="A3.T6.21.21.27.2"></td>
<td class="ltx_td ltx_border_t" id="A3.T6.21.21.27.3"></td>
<td class="ltx_td ltx_border_t" id="A3.T6.21.21.27.4"></td>
</tr>
<tr class="ltx_tr" id="A3.T6.7.7.7">
<td class="ltx_td ltx_align_left" id="A3.T6.7.7.7.1"><math alttext="\mathrm{sim}(\cdot,\cdot)" class="ltx_Math" display="inline" id="A3.T6.7.7.7.1.m1.2"><semantics id="A3.T6.7.7.7.1.m1.2a"><mrow id="A3.T6.7.7.7.1.m1.2.3" xref="A3.T6.7.7.7.1.m1.2.3.cmml"><mi id="A3.T6.7.7.7.1.m1.2.3.2" mathsize="90%" xref="A3.T6.7.7.7.1.m1.2.3.2.cmml">sim</mi><mo id="A3.T6.7.7.7.1.m1.2.3.1" xref="A3.T6.7.7.7.1.m1.2.3.1.cmml">⁢</mo><mrow id="A3.T6.7.7.7.1.m1.2.3.3.2" xref="A3.T6.7.7.7.1.m1.2.3.3.1.cmml"><mo id="A3.T6.7.7.7.1.m1.2.3.3.2.1" maxsize="90%" minsize="90%" xref="A3.T6.7.7.7.1.m1.2.3.3.1.cmml">(</mo><mo id="A3.T6.7.7.7.1.m1.1.1" lspace="0em" mathsize="90%" rspace="0em" xref="A3.T6.7.7.7.1.m1.1.1.cmml">⋅</mo><mo id="A3.T6.7.7.7.1.m1.2.3.3.2.2" mathsize="90%" rspace="0em" xref="A3.T6.7.7.7.1.m1.2.3.3.1.cmml">,</mo><mo id="A3.T6.7.7.7.1.m1.2.2" lspace="0em" mathsize="90%" rspace="0em" xref="A3.T6.7.7.7.1.m1.2.2.cmml">⋅</mo><mo id="A3.T6.7.7.7.1.m1.2.3.3.2.3" maxsize="90%" minsize="90%" xref="A3.T6.7.7.7.1.m1.2.3.3.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.7.7.7.1.m1.2b"><apply id="A3.T6.7.7.7.1.m1.2.3.cmml" xref="A3.T6.7.7.7.1.m1.2.3"><times id="A3.T6.7.7.7.1.m1.2.3.1.cmml" xref="A3.T6.7.7.7.1.m1.2.3.1"></times><ci id="A3.T6.7.7.7.1.m1.2.3.2.cmml" xref="A3.T6.7.7.7.1.m1.2.3.2">sim</ci><interval closure="open" id="A3.T6.7.7.7.1.m1.2.3.3.1.cmml" xref="A3.T6.7.7.7.1.m1.2.3.3.2"><ci id="A3.T6.7.7.7.1.m1.1.1.cmml" xref="A3.T6.7.7.7.1.m1.1.1">⋅</ci><ci id="A3.T6.7.7.7.1.m1.2.2.cmml" xref="A3.T6.7.7.7.1.m1.2.2">⋅</ci></interval></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.7.7.7.1.m1.2c">\mathrm{sim}(\cdot,\cdot)</annotation><annotation encoding="application/x-llamapun" id="A3.T6.7.7.7.1.m1.2d">roman_sim ( ⋅ , ⋅ )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T6.7.7.7.2"><span class="ltx_text" id="A3.T6.7.7.7.2.1" style="font-size:90%;">NT-Xent</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.7.7.7.3"><span class="ltx_text" id="A3.T6.7.7.7.3.1" style="font-size:90%;">NT-Xent</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.7.7.7.4"><span class="ltx_text" id="A3.T6.7.7.7.4.1" style="font-size:90%;">NT-Xent</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.8.8.8">
<td class="ltx_td ltx_align_left" id="A3.T6.8.8.8.1">
<span class="ltx_text" id="A3.T6.8.8.8.1.1" style="font-size:90%;">Encoder </span><math alttext="f(\mathbf{x})" class="ltx_Math" display="inline" id="A3.T6.8.8.8.1.m1.1"><semantics id="A3.T6.8.8.8.1.m1.1a"><mrow id="A3.T6.8.8.8.1.m1.1.2" xref="A3.T6.8.8.8.1.m1.1.2.cmml"><mi id="A3.T6.8.8.8.1.m1.1.2.2" mathsize="90%" xref="A3.T6.8.8.8.1.m1.1.2.2.cmml">f</mi><mo id="A3.T6.8.8.8.1.m1.1.2.1" xref="A3.T6.8.8.8.1.m1.1.2.1.cmml">⁢</mo><mrow id="A3.T6.8.8.8.1.m1.1.2.3.2" xref="A3.T6.8.8.8.1.m1.1.2.cmml"><mo id="A3.T6.8.8.8.1.m1.1.2.3.2.1" maxsize="90%" minsize="90%" xref="A3.T6.8.8.8.1.m1.1.2.cmml">(</mo><mi id="A3.T6.8.8.8.1.m1.1.1" mathsize="90%" xref="A3.T6.8.8.8.1.m1.1.1.cmml">𝐱</mi><mo id="A3.T6.8.8.8.1.m1.1.2.3.2.2" maxsize="90%" minsize="90%" xref="A3.T6.8.8.8.1.m1.1.2.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.8.8.8.1.m1.1b"><apply id="A3.T6.8.8.8.1.m1.1.2.cmml" xref="A3.T6.8.8.8.1.m1.1.2"><times id="A3.T6.8.8.8.1.m1.1.2.1.cmml" xref="A3.T6.8.8.8.1.m1.1.2.1"></times><ci id="A3.T6.8.8.8.1.m1.1.2.2.cmml" xref="A3.T6.8.8.8.1.m1.1.2.2">𝑓</ci><ci id="A3.T6.8.8.8.1.m1.1.1.cmml" xref="A3.T6.8.8.8.1.m1.1.1">𝐱</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.8.8.8.1.m1.1c">f(\mathbf{x})</annotation><annotation encoding="application/x-llamapun" id="A3.T6.8.8.8.1.m1.1d">italic_f ( bold_x )</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A3.T6.8.8.8.2"><span class="ltx_text" id="A3.T6.8.8.8.2.1" style="font-size:90%;">DINOv2-B</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.8.8.8.3"><span class="ltx_text" id="A3.T6.8.8.8.3.1" style="font-size:90%;">DINOv2-B</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.8.8.8.4"><span class="ltx_text" id="A3.T6.8.8.8.4.1" style="font-size:90%;">DINOv2-B</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.21.21.28">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T6.21.21.28.1"><span class="ltx_text ltx_font_bold" id="A3.T6.21.21.28.1.1" style="font-size:90%;">Optimization</span></td>
<td class="ltx_td ltx_border_t" id="A3.T6.21.21.28.2"></td>
<td class="ltx_td ltx_border_t" id="A3.T6.21.21.28.3"></td>
<td class="ltx_td ltx_border_t" id="A3.T6.21.21.28.4"></td>
</tr>
<tr class="ltx_tr" id="A3.T6.21.21.29">
<td class="ltx_td ltx_align_left" id="A3.T6.21.21.29.1"><span class="ltx_text" id="A3.T6.21.21.29.1.1" style="font-size:90%;">Batch size</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.29.2"><span class="ltx_text" id="A3.T6.21.21.29.2.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.29.3"><span class="ltx_text" id="A3.T6.21.21.29.3.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.29.4"><span class="ltx_text" id="A3.T6.21.21.29.4.1" style="font-size:90%;">256</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.21.21.30">
<td class="ltx_td ltx_align_left" id="A3.T6.21.21.30.1"><span class="ltx_text" id="A3.T6.21.21.30.1.1" style="font-size:90%;">Optimizer</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.30.2"><span class="ltx_text" id="A3.T6.21.21.30.2.1" style="font-size:90%;">AdamW</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.30.3"><span class="ltx_text" id="A3.T6.21.21.30.3.1" style="font-size:90%;">AdamW</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.30.4"><span class="ltx_text" id="A3.T6.21.21.30.4.1" style="font-size:90%;">AdamW</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.21.21.31">
<td class="ltx_td ltx_align_left" id="A3.T6.21.21.31.1"><span class="ltx_text" id="A3.T6.21.21.31.1.1" style="font-size:90%;">lr</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.31.2"><span class="ltx_text" id="A3.T6.21.21.31.2.1" style="font-size:90%;">0.0001</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.31.3"><span class="ltx_text" id="A3.T6.21.21.31.3.1" style="font-size:90%;">0.0001</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.31.4"><span class="ltx_text" id="A3.T6.21.21.31.4.1" style="font-size:90%;">0.0001</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.9.9.9">
<td class="ltx_td ltx_align_left" id="A3.T6.9.9.9.1"><math alttext="(\beta_{1},\beta_{2})" class="ltx_Math" display="inline" id="A3.T6.9.9.9.1.m1.2"><semantics id="A3.T6.9.9.9.1.m1.2a"><mrow id="A3.T6.9.9.9.1.m1.2.2.2" xref="A3.T6.9.9.9.1.m1.2.2.3.cmml"><mo id="A3.T6.9.9.9.1.m1.2.2.2.3" maxsize="90%" minsize="90%" xref="A3.T6.9.9.9.1.m1.2.2.3.cmml">(</mo><msub id="A3.T6.9.9.9.1.m1.1.1.1.1" xref="A3.T6.9.9.9.1.m1.1.1.1.1.cmml"><mi id="A3.T6.9.9.9.1.m1.1.1.1.1.2" mathsize="90%" xref="A3.T6.9.9.9.1.m1.1.1.1.1.2.cmml">β</mi><mn id="A3.T6.9.9.9.1.m1.1.1.1.1.3" mathsize="90%" xref="A3.T6.9.9.9.1.m1.1.1.1.1.3.cmml">1</mn></msub><mo id="A3.T6.9.9.9.1.m1.2.2.2.4" mathsize="90%" xref="A3.T6.9.9.9.1.m1.2.2.3.cmml">,</mo><msub id="A3.T6.9.9.9.1.m1.2.2.2.2" xref="A3.T6.9.9.9.1.m1.2.2.2.2.cmml"><mi id="A3.T6.9.9.9.1.m1.2.2.2.2.2" mathsize="90%" xref="A3.T6.9.9.9.1.m1.2.2.2.2.2.cmml">β</mi><mn id="A3.T6.9.9.9.1.m1.2.2.2.2.3" mathsize="90%" xref="A3.T6.9.9.9.1.m1.2.2.2.2.3.cmml">2</mn></msub><mo id="A3.T6.9.9.9.1.m1.2.2.2.5" maxsize="90%" minsize="90%" xref="A3.T6.9.9.9.1.m1.2.2.3.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.9.9.9.1.m1.2b"><interval closure="open" id="A3.T6.9.9.9.1.m1.2.2.3.cmml" xref="A3.T6.9.9.9.1.m1.2.2.2"><apply id="A3.T6.9.9.9.1.m1.1.1.1.1.cmml" xref="A3.T6.9.9.9.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="A3.T6.9.9.9.1.m1.1.1.1.1.1.cmml" xref="A3.T6.9.9.9.1.m1.1.1.1.1">subscript</csymbol><ci id="A3.T6.9.9.9.1.m1.1.1.1.1.2.cmml" xref="A3.T6.9.9.9.1.m1.1.1.1.1.2">𝛽</ci><cn id="A3.T6.9.9.9.1.m1.1.1.1.1.3.cmml" type="integer" xref="A3.T6.9.9.9.1.m1.1.1.1.1.3">1</cn></apply><apply id="A3.T6.9.9.9.1.m1.2.2.2.2.cmml" xref="A3.T6.9.9.9.1.m1.2.2.2.2"><csymbol cd="ambiguous" id="A3.T6.9.9.9.1.m1.2.2.2.2.1.cmml" xref="A3.T6.9.9.9.1.m1.2.2.2.2">subscript</csymbol><ci id="A3.T6.9.9.9.1.m1.2.2.2.2.2.cmml" xref="A3.T6.9.9.9.1.m1.2.2.2.2.2">𝛽</ci><cn id="A3.T6.9.9.9.1.m1.2.2.2.2.3.cmml" type="integer" xref="A3.T6.9.9.9.1.m1.2.2.2.2.3">2</cn></apply></interval></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.9.9.9.1.m1.2c">(\beta_{1},\beta_{2})</annotation><annotation encoding="application/x-llamapun" id="A3.T6.9.9.9.1.m1.2d">( italic_β start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_β start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T6.9.9.9.2"><span class="ltx_text" id="A3.T6.9.9.9.2.1" style="font-size:90%;">(0.9, 0.999)</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.9.9.9.3"><span class="ltx_text" id="A3.T6.9.9.9.3.1" style="font-size:90%;">(0.9, 0.999)</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.9.9.9.4"><span class="ltx_text" id="A3.T6.9.9.9.4.1" style="font-size:90%;">(0.9, 0.999)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.21.21.32">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T6.21.21.32.1"><span class="ltx_text ltx_font_bold" id="A3.T6.21.21.32.1.1" style="font-size:90%;">Interpolants</span></td>
<td class="ltx_td ltx_border_t" id="A3.T6.21.21.32.2"></td>
<td class="ltx_td ltx_border_t" id="A3.T6.21.21.32.3"></td>
<td class="ltx_td ltx_border_t" id="A3.T6.21.21.32.4"></td>
</tr>
<tr class="ltx_tr" id="A3.T6.13.13.13">
<td class="ltx_td ltx_align_left" id="A3.T6.10.10.10.1"><math alttext="\alpha_{t}" class="ltx_Math" display="inline" id="A3.T6.10.10.10.1.m1.1"><semantics id="A3.T6.10.10.10.1.m1.1a"><msub id="A3.T6.10.10.10.1.m1.1.1" xref="A3.T6.10.10.10.1.m1.1.1.cmml"><mi id="A3.T6.10.10.10.1.m1.1.1.2" mathsize="90%" xref="A3.T6.10.10.10.1.m1.1.1.2.cmml">α</mi><mi id="A3.T6.10.10.10.1.m1.1.1.3" mathsize="90%" xref="A3.T6.10.10.10.1.m1.1.1.3.cmml">t</mi></msub><annotation-xml encoding="MathML-Content" id="A3.T6.10.10.10.1.m1.1b"><apply id="A3.T6.10.10.10.1.m1.1.1.cmml" xref="A3.T6.10.10.10.1.m1.1.1"><csymbol cd="ambiguous" id="A3.T6.10.10.10.1.m1.1.1.1.cmml" xref="A3.T6.10.10.10.1.m1.1.1">subscript</csymbol><ci id="A3.T6.10.10.10.1.m1.1.1.2.cmml" xref="A3.T6.10.10.10.1.m1.1.1.2">𝛼</ci><ci id="A3.T6.10.10.10.1.m1.1.1.3.cmml" xref="A3.T6.10.10.10.1.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.10.10.10.1.m1.1c">\alpha_{t}</annotation><annotation encoding="application/x-llamapun" id="A3.T6.10.10.10.1.m1.1d">italic_α start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T6.11.11.11.2"><math alttext="1-t" class="ltx_Math" display="inline" id="A3.T6.11.11.11.2.m1.1"><semantics id="A3.T6.11.11.11.2.m1.1a"><mrow id="A3.T6.11.11.11.2.m1.1.1" xref="A3.T6.11.11.11.2.m1.1.1.cmml"><mn id="A3.T6.11.11.11.2.m1.1.1.2" mathsize="90%" xref="A3.T6.11.11.11.2.m1.1.1.2.cmml">1</mn><mo id="A3.T6.11.11.11.2.m1.1.1.1" mathsize="90%" xref="A3.T6.11.11.11.2.m1.1.1.1.cmml">−</mo><mi id="A3.T6.11.11.11.2.m1.1.1.3" mathsize="90%" xref="A3.T6.11.11.11.2.m1.1.1.3.cmml">t</mi></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.11.11.11.2.m1.1b"><apply id="A3.T6.11.11.11.2.m1.1.1.cmml" xref="A3.T6.11.11.11.2.m1.1.1"><minus id="A3.T6.11.11.11.2.m1.1.1.1.cmml" xref="A3.T6.11.11.11.2.m1.1.1.1"></minus><cn id="A3.T6.11.11.11.2.m1.1.1.2.cmml" type="integer" xref="A3.T6.11.11.11.2.m1.1.1.2">1</cn><ci id="A3.T6.11.11.11.2.m1.1.1.3.cmml" xref="A3.T6.11.11.11.2.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.11.11.11.2.m1.1c">1-t</annotation><annotation encoding="application/x-llamapun" id="A3.T6.11.11.11.2.m1.1d">1 - italic_t</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T6.12.12.12.3"><math alttext="1-t" class="ltx_Math" display="inline" id="A3.T6.12.12.12.3.m1.1"><semantics id="A3.T6.12.12.12.3.m1.1a"><mrow id="A3.T6.12.12.12.3.m1.1.1" xref="A3.T6.12.12.12.3.m1.1.1.cmml"><mn id="A3.T6.12.12.12.3.m1.1.1.2" mathsize="90%" xref="A3.T6.12.12.12.3.m1.1.1.2.cmml">1</mn><mo id="A3.T6.12.12.12.3.m1.1.1.1" mathsize="90%" xref="A3.T6.12.12.12.3.m1.1.1.1.cmml">−</mo><mi id="A3.T6.12.12.12.3.m1.1.1.3" mathsize="90%" xref="A3.T6.12.12.12.3.m1.1.1.3.cmml">t</mi></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.12.12.12.3.m1.1b"><apply id="A3.T6.12.12.12.3.m1.1.1.cmml" xref="A3.T6.12.12.12.3.m1.1.1"><minus id="A3.T6.12.12.12.3.m1.1.1.1.cmml" xref="A3.T6.12.12.12.3.m1.1.1.1"></minus><cn id="A3.T6.12.12.12.3.m1.1.1.2.cmml" type="integer" xref="A3.T6.12.12.12.3.m1.1.1.2">1</cn><ci id="A3.T6.12.12.12.3.m1.1.1.3.cmml" xref="A3.T6.12.12.12.3.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.12.12.12.3.m1.1c">1-t</annotation><annotation encoding="application/x-llamapun" id="A3.T6.12.12.12.3.m1.1d">1 - italic_t</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T6.13.13.13.4"><math alttext="1-t" class="ltx_Math" display="inline" id="A3.T6.13.13.13.4.m1.1"><semantics id="A3.T6.13.13.13.4.m1.1a"><mrow id="A3.T6.13.13.13.4.m1.1.1" xref="A3.T6.13.13.13.4.m1.1.1.cmml"><mn id="A3.T6.13.13.13.4.m1.1.1.2" mathsize="90%" xref="A3.T6.13.13.13.4.m1.1.1.2.cmml">1</mn><mo id="A3.T6.13.13.13.4.m1.1.1.1" mathsize="90%" xref="A3.T6.13.13.13.4.m1.1.1.1.cmml">−</mo><mi id="A3.T6.13.13.13.4.m1.1.1.3" mathsize="90%" xref="A3.T6.13.13.13.4.m1.1.1.3.cmml">t</mi></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.13.13.13.4.m1.1b"><apply id="A3.T6.13.13.13.4.m1.1.1.cmml" xref="A3.T6.13.13.13.4.m1.1.1"><minus id="A3.T6.13.13.13.4.m1.1.1.1.cmml" xref="A3.T6.13.13.13.4.m1.1.1.1"></minus><cn id="A3.T6.13.13.13.4.m1.1.1.2.cmml" type="integer" xref="A3.T6.13.13.13.4.m1.1.1.2">1</cn><ci id="A3.T6.13.13.13.4.m1.1.1.3.cmml" xref="A3.T6.13.13.13.4.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.13.13.13.4.m1.1c">1-t</annotation><annotation encoding="application/x-llamapun" id="A3.T6.13.13.13.4.m1.1d">1 - italic_t</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T6.17.17.17">
<td class="ltx_td ltx_align_left" id="A3.T6.14.14.14.1"><math alttext="\sigma_{t}" class="ltx_Math" display="inline" id="A3.T6.14.14.14.1.m1.1"><semantics id="A3.T6.14.14.14.1.m1.1a"><msub id="A3.T6.14.14.14.1.m1.1.1" xref="A3.T6.14.14.14.1.m1.1.1.cmml"><mi id="A3.T6.14.14.14.1.m1.1.1.2" mathsize="90%" xref="A3.T6.14.14.14.1.m1.1.1.2.cmml">σ</mi><mi id="A3.T6.14.14.14.1.m1.1.1.3" mathsize="90%" xref="A3.T6.14.14.14.1.m1.1.1.3.cmml">t</mi></msub><annotation-xml encoding="MathML-Content" id="A3.T6.14.14.14.1.m1.1b"><apply id="A3.T6.14.14.14.1.m1.1.1.cmml" xref="A3.T6.14.14.14.1.m1.1.1"><csymbol cd="ambiguous" id="A3.T6.14.14.14.1.m1.1.1.1.cmml" xref="A3.T6.14.14.14.1.m1.1.1">subscript</csymbol><ci id="A3.T6.14.14.14.1.m1.1.1.2.cmml" xref="A3.T6.14.14.14.1.m1.1.1.2">𝜎</ci><ci id="A3.T6.14.14.14.1.m1.1.1.3.cmml" xref="A3.T6.14.14.14.1.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.14.14.14.1.m1.1c">\sigma_{t}</annotation><annotation encoding="application/x-llamapun" id="A3.T6.14.14.14.1.m1.1d">italic_σ start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T6.15.15.15.2"><math alttext="t" class="ltx_Math" display="inline" id="A3.T6.15.15.15.2.m1.1"><semantics id="A3.T6.15.15.15.2.m1.1a"><mi id="A3.T6.15.15.15.2.m1.1.1" mathsize="90%" xref="A3.T6.15.15.15.2.m1.1.1.cmml">t</mi><annotation-xml encoding="MathML-Content" id="A3.T6.15.15.15.2.m1.1b"><ci id="A3.T6.15.15.15.2.m1.1.1.cmml" xref="A3.T6.15.15.15.2.m1.1.1">𝑡</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.15.15.15.2.m1.1c">t</annotation><annotation encoding="application/x-llamapun" id="A3.T6.15.15.15.2.m1.1d">italic_t</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T6.16.16.16.3"><math alttext="t" class="ltx_Math" display="inline" id="A3.T6.16.16.16.3.m1.1"><semantics id="A3.T6.16.16.16.3.m1.1a"><mi id="A3.T6.16.16.16.3.m1.1.1" mathsize="90%" xref="A3.T6.16.16.16.3.m1.1.1.cmml">t</mi><annotation-xml encoding="MathML-Content" id="A3.T6.16.16.16.3.m1.1b"><ci id="A3.T6.16.16.16.3.m1.1.1.cmml" xref="A3.T6.16.16.16.3.m1.1.1">𝑡</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.16.16.16.3.m1.1c">t</annotation><annotation encoding="application/x-llamapun" id="A3.T6.16.16.16.3.m1.1d">italic_t</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T6.17.17.17.4"><math alttext="t" class="ltx_Math" display="inline" id="A3.T6.17.17.17.4.m1.1"><semantics id="A3.T6.17.17.17.4.m1.1a"><mi id="A3.T6.17.17.17.4.m1.1.1" mathsize="90%" xref="A3.T6.17.17.17.4.m1.1.1.cmml">t</mi><annotation-xml encoding="MathML-Content" id="A3.T6.17.17.17.4.m1.1b"><ci id="A3.T6.17.17.17.4.m1.1.1.cmml" xref="A3.T6.17.17.17.4.m1.1.1">𝑡</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.17.17.17.4.m1.1c">t</annotation><annotation encoding="application/x-llamapun" id="A3.T6.17.17.17.4.m1.1d">italic_t</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T6.21.21.21">
<td class="ltx_td ltx_align_left" id="A3.T6.18.18.18.1"><math alttext="w_{t}" class="ltx_Math" display="inline" id="A3.T6.18.18.18.1.m1.1"><semantics id="A3.T6.18.18.18.1.m1.1a"><msub id="A3.T6.18.18.18.1.m1.1.1" xref="A3.T6.18.18.18.1.m1.1.1.cmml"><mi id="A3.T6.18.18.18.1.m1.1.1.2" mathsize="90%" xref="A3.T6.18.18.18.1.m1.1.1.2.cmml">w</mi><mi id="A3.T6.18.18.18.1.m1.1.1.3" mathsize="90%" xref="A3.T6.18.18.18.1.m1.1.1.3.cmml">t</mi></msub><annotation-xml encoding="MathML-Content" id="A3.T6.18.18.18.1.m1.1b"><apply id="A3.T6.18.18.18.1.m1.1.1.cmml" xref="A3.T6.18.18.18.1.m1.1.1"><csymbol cd="ambiguous" id="A3.T6.18.18.18.1.m1.1.1.1.cmml" xref="A3.T6.18.18.18.1.m1.1.1">subscript</csymbol><ci id="A3.T6.18.18.18.1.m1.1.1.2.cmml" xref="A3.T6.18.18.18.1.m1.1.1.2">𝑤</ci><ci id="A3.T6.18.18.18.1.m1.1.1.3.cmml" xref="A3.T6.18.18.18.1.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.18.18.18.1.m1.1c">w_{t}</annotation><annotation encoding="application/x-llamapun" id="A3.T6.18.18.18.1.m1.1d">italic_w start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T6.19.19.19.2"><math alttext="\sigma_{t}" class="ltx_Math" display="inline" id="A3.T6.19.19.19.2.m1.1"><semantics id="A3.T6.19.19.19.2.m1.1a"><msub id="A3.T6.19.19.19.2.m1.1.1" xref="A3.T6.19.19.19.2.m1.1.1.cmml"><mi id="A3.T6.19.19.19.2.m1.1.1.2" mathsize="90%" xref="A3.T6.19.19.19.2.m1.1.1.2.cmml">σ</mi><mi id="A3.T6.19.19.19.2.m1.1.1.3" mathsize="90%" xref="A3.T6.19.19.19.2.m1.1.1.3.cmml">t</mi></msub><annotation-xml encoding="MathML-Content" id="A3.T6.19.19.19.2.m1.1b"><apply id="A3.T6.19.19.19.2.m1.1.1.cmml" xref="A3.T6.19.19.19.2.m1.1.1"><csymbol cd="ambiguous" id="A3.T6.19.19.19.2.m1.1.1.1.cmml" xref="A3.T6.19.19.19.2.m1.1.1">subscript</csymbol><ci id="A3.T6.19.19.19.2.m1.1.1.2.cmml" xref="A3.T6.19.19.19.2.m1.1.1.2">𝜎</ci><ci id="A3.T6.19.19.19.2.m1.1.1.3.cmml" xref="A3.T6.19.19.19.2.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.19.19.19.2.m1.1c">\sigma_{t}</annotation><annotation encoding="application/x-llamapun" id="A3.T6.19.19.19.2.m1.1d">italic_σ start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T6.20.20.20.3"><math alttext="\sigma_{t}" class="ltx_Math" display="inline" id="A3.T6.20.20.20.3.m1.1"><semantics id="A3.T6.20.20.20.3.m1.1a"><msub id="A3.T6.20.20.20.3.m1.1.1" xref="A3.T6.20.20.20.3.m1.1.1.cmml"><mi id="A3.T6.20.20.20.3.m1.1.1.2" mathsize="90%" xref="A3.T6.20.20.20.3.m1.1.1.2.cmml">σ</mi><mi id="A3.T6.20.20.20.3.m1.1.1.3" mathsize="90%" xref="A3.T6.20.20.20.3.m1.1.1.3.cmml">t</mi></msub><annotation-xml encoding="MathML-Content" id="A3.T6.20.20.20.3.m1.1b"><apply id="A3.T6.20.20.20.3.m1.1.1.cmml" xref="A3.T6.20.20.20.3.m1.1.1"><csymbol cd="ambiguous" id="A3.T6.20.20.20.3.m1.1.1.1.cmml" xref="A3.T6.20.20.20.3.m1.1.1">subscript</csymbol><ci id="A3.T6.20.20.20.3.m1.1.1.2.cmml" xref="A3.T6.20.20.20.3.m1.1.1.2">𝜎</ci><ci id="A3.T6.20.20.20.3.m1.1.1.3.cmml" xref="A3.T6.20.20.20.3.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.20.20.20.3.m1.1c">\sigma_{t}</annotation><annotation encoding="application/x-llamapun" id="A3.T6.20.20.20.3.m1.1d">italic_σ start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.21.4"><math alttext="\sigma_{t}" class="ltx_Math" display="inline" id="A3.T6.21.21.21.4.m1.1"><semantics id="A3.T6.21.21.21.4.m1.1a"><msub id="A3.T6.21.21.21.4.m1.1.1" xref="A3.T6.21.21.21.4.m1.1.1.cmml"><mi id="A3.T6.21.21.21.4.m1.1.1.2" mathsize="90%" xref="A3.T6.21.21.21.4.m1.1.1.2.cmml">σ</mi><mi id="A3.T6.21.21.21.4.m1.1.1.3" mathsize="90%" xref="A3.T6.21.21.21.4.m1.1.1.3.cmml">t</mi></msub><annotation-xml encoding="MathML-Content" id="A3.T6.21.21.21.4.m1.1b"><apply id="A3.T6.21.21.21.4.m1.1.1.cmml" xref="A3.T6.21.21.21.4.m1.1.1"><csymbol cd="ambiguous" id="A3.T6.21.21.21.4.m1.1.1.1.cmml" xref="A3.T6.21.21.21.4.m1.1.1">subscript</csymbol><ci id="A3.T6.21.21.21.4.m1.1.1.2.cmml" xref="A3.T6.21.21.21.4.m1.1.1.2">𝜎</ci><ci id="A3.T6.21.21.21.4.m1.1.1.3.cmml" xref="A3.T6.21.21.21.4.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.21.21.21.4.m1.1c">\sigma_{t}</annotation><annotation encoding="application/x-llamapun" id="A3.T6.21.21.21.4.m1.1d">italic_σ start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T6.21.21.33">
<td class="ltx_td ltx_align_left" id="A3.T6.21.21.33.1"><span class="ltx_text" id="A3.T6.21.21.33.1.1" style="font-size:90%;">Training objective</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.33.2"><span class="ltx_text" id="A3.T6.21.21.33.2.1" style="font-size:90%;">v-prediction</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.33.3"><span class="ltx_text" id="A3.T6.21.21.33.3.1" style="font-size:90%;">v-prediction</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.33.4"><span class="ltx_text" id="A3.T6.21.21.33.4.1" style="font-size:90%;">v-prediction</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.21.21.34">
<td class="ltx_td ltx_align_left" id="A3.T6.21.21.34.1"><span class="ltx_text" id="A3.T6.21.21.34.1.1" style="font-size:90%;">Sampler</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.34.2"><span class="ltx_text" id="A3.T6.21.21.34.2.1" style="font-size:90%;">Euler-Maruyama</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.34.3"><span class="ltx_text" id="A3.T6.21.21.34.3.1" style="font-size:90%;">Euler-Maruyama</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.34.4"><span class="ltx_text" id="A3.T6.21.21.34.4.1" style="font-size:90%;">Euler-Maruyama</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.21.21.35">
<td class="ltx_td ltx_align_left" id="A3.T6.21.21.35.1"><span class="ltx_text" id="A3.T6.21.21.35.1.1" style="font-size:90%;">Sampling steps</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.35.2"><span class="ltx_text" id="A3.T6.21.21.35.2.1" style="font-size:90%;">250</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.35.3"><span class="ltx_text" id="A3.T6.21.21.35.3.1" style="font-size:90%;">250</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.35.4"><span class="ltx_text" id="A3.T6.21.21.35.4.1" style="font-size:90%;">250</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.21.21.36">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T6.21.21.36.1"><span class="ltx_text" id="A3.T6.21.21.36.1.1" style="font-size:90%;">Guidance</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.21.21.36.2"><span class="ltx_text" id="A3.T6.21.21.36.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.21.21.36.3"><span class="ltx_text" id="A3.T6.21.21.36.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.21.21.36.4"><span class="ltx_text" id="A3.T6.21.21.36.4.1" style="font-size:90%;">-</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used in the experiments for three different SiT model sizes (B, XL, and XL/2).  It lists architecture specifics like the number of layers, hidden dimensions, and number of attention heads.  Importantly, it also specifies the optimizer (AdamW), learning rate, and beta parameters used for optimization.  Finally, it indicates the type of interpolant used, the specific training objective (v-prediction), the sampling method (Euler-Maruyama), and the number of sampling steps employed. The table showcases the consistent approach used across different model sizes, while highlighting any variations that might exist.
> <details>
> <summary>read the caption</summary>
> Table 6: Hyperparameter setup.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T7.1.1">
<tr class="ltx_tr" id="A3.T7.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A3.T7.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T7.1.1.1.2.1">Training Trick</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A3.T7.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A3.T7.1.1.1.3.1">Training Step</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T7.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T7.1.1.1.1.1">FID-50k<math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T7.1.1.1.1.1.m1.1"><semantics id="A3.T7.1.1.1.1.1.m1.1a"><mo id="A3.T7.1.1.1.1.1.m1.1.1" stretchy="false" xref="A3.T7.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T7.1.1.1.1.1.m1.1b"><ci id="A3.T7.1.1.1.1.1.m1.1.1.cmml" xref="A3.T7.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T7.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T7.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A3.T7.1.1.2.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A3.T7.1.1.2.1.1">Representation Alignment Loss</span></td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T7.1.1.3.1">+ <span class="ltx_text ltx_font_smallcaps" id="A3.T7.1.1.3.1.1">REPA</span> <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10188v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T7.1.1.3.2">50K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.1.1.3.3">78.2</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.4">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A3.T7.1.1.4.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A3.T7.1.1.4.1.1">Architecture Improvements</span></td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T7.1.1.5.1">+ Rotary Pos Embed <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.10188v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T7.1.1.5.2">50K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.1.1.5.3">73.6</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.6">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A3.T7.1.1.6.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A3.T7.1.1.6.1.1">Initialization</span></td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.7">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A3.T7.1.1.7.1">+ <span class="ltx_text ltx_font_smallcaps" id="A3.T7.1.1.7.1.1">ERW</span> (Ours)</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A3.T7.1.1.7.2">50K</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T7.1.1.7.3">51.7</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 7 demonstrates the incremental improvements in FID (Fréchet Inception Distance) achieved by incorporating various training techniques into the Embedded Representation Warmup (ERW) method.  Using the Stable Diffusion VAE [44], ERW achieves a final FID score of 51.7 at 50,000 training steps on ImageNet, showcasing class-conditional image generation. The table contrasts the FID achieved by using only the REPA method [54] versus adding further improvements through rotary positional embeddings [50] and finally the full ERW approach. This illustrates how advanced design choices enhance the original DiT performance.
> <details>
> <summary>read the caption</summary>
> Table 7: Impact of Training Tricks in ERW. Using the SD-VAE [44], ERW achieves an FID of 55.6 at 50K training steps on ImageNet class-conditional generation. This table illustrates how each training trick incrementally improves the FID, demonstrating that advanced design techniques enhance the original DiT performance.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.10188/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10188/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10188/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10188/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10188/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10188/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10188/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10188/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10188/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10188/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10188/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10188/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10188/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10188/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10188/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10188/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10188/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}