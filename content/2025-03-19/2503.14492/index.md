---
title: "Cosmos-Transfer1: Conditional World Generation with Adaptive Multimodal Control"
summary: "Cosmos-Transfer1: An adaptable conditional world generation model using multimodal control."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 NVIDIA",]
showSummary: true
date: 2025-03-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.14492 {{< /keyword >}}
{{< keyword icon="writer" >}} NVIDIA et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.14492" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.14492" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.14492/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Generating realistic world simulations is challenging, especially bridging the gap between synthetic and real environments. Existing methods often lack precise control over different aspects of the generated world, hindering their use in applications like robotics & autonomous driving. 



To tackle these issues, this paper introduces a novel conditional world generation model. It uses multiple spatial control inputs (segmentation, depth, edge) and applies adaptive weighting. This enables precise control and is customizable. The model is highly controllable and finds use in world-to-world transfers and can achieve real-time world generation through an inference scaling strategy.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Cosmos-Transfer1 can generate world simulation videos based on multiple spatial control inputs such as segmentation, depth, and edge. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The spatial conditional scheme is adaptive and customizable with weighting different conditional inputs differently at different spatial locations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The model allows real-time world generation with an NVIDIA GB200 NVL72 rack. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research on adaptable world generation is significant, offering potential for various applications like **Sim2Real** and robotics. By allowing weighted control over diverse modalities, it paves the way for creating more realistic and controllable simulations. The study’s real-time generation achievement and open-source availability can accelerate developments in the field.

------
#### Visual Insights



![](https://arxiv.org/html/2503.14492/x1.png)

> 🔼 Figure 1 illustrates the architecture of the Cosmos-Transfer1 model. Panel (a) shows the base diffusion model, which is a sequence of transformer blocks that predict the noise added to the input video tokens during the diffusion process. Panel (b) shows the ControlNet model, which is an extension of the base model. It adds a control branch consisting of several transformer blocks. The output of each control block is fed into a zero-initialized linear layer and then added to the corresponding block in the main branch.  The weights of the base model are frozen during the training of the ControlNet.
> <details>
> <summary>read the caption</summary>
> Figure 1: (a) Base model is the base DiT-based diffusion model. It consists of a sequence of transformer blocks and learns to predict the added noise in the input noisy tokens. (b) ControlNet extends the base model to a conditional diffusion model. The main addition is the control branch, which contains a few transformer blocks. The outputs of the transformer blocks are passed to zero-initialized linear layers before added back to the main branch. During the ControlNet training, the base model weights are frozen.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T1.6.6">
<tr class="ltx_tr" id="S5.T1.6.6.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T1.6.6.7.1" rowspan="2"><span class="ltx_text" id="S5.T1.6.6.7.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.6.6.7.2">
<span class="ltx_text" id="S5.T1.6.6.7.2.1"></span> <span class="ltx_text" id="S5.T1.6.6.7.2.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.6.6.7.2.2.1">
<span class="ltx_tr" id="S5.T1.6.6.7.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.6.6.7.2.2.1.1.1">Vis</span></span>
<span class="ltx_tr" id="S5.T1.6.6.7.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.6.6.7.2.2.1.2.1">Alignment</span></span>
</span></span><span class="ltx_text" id="S5.T1.6.6.7.2.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.6.6.7.3">
<span class="ltx_text" id="S5.T1.6.6.7.3.1"></span> <span class="ltx_text" id="S5.T1.6.6.7.3.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.6.6.7.3.2.1">
<span class="ltx_tr" id="S5.T1.6.6.7.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.6.6.7.3.2.1.1.1">Edge</span></span>
<span class="ltx_tr" id="S5.T1.6.6.7.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.6.6.7.3.2.1.2.1">Alignment</span></span>
</span></span><span class="ltx_text" id="S5.T1.6.6.7.3.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.6.6.7.4">
<span class="ltx_text" id="S5.T1.6.6.7.4.1"></span> <span class="ltx_text" id="S5.T1.6.6.7.4.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.6.6.7.4.2.1">
<span class="ltx_tr" id="S5.T1.6.6.7.4.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.6.6.7.4.2.1.1.1">Depth</span></span>
<span class="ltx_tr" id="S5.T1.6.6.7.4.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.6.6.7.4.2.1.2.1">Alignment</span></span>
</span></span><span class="ltx_text" id="S5.T1.6.6.7.4.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T1.6.6.7.5">
<span class="ltx_text" id="S5.T1.6.6.7.5.1"></span> <span class="ltx_text" id="S5.T1.6.6.7.5.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.6.6.7.5.2.1">
<span class="ltx_tr" id="S5.T1.6.6.7.5.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.6.6.7.5.2.1.1.1">Segmentation</span></span>
<span class="ltx_tr" id="S5.T1.6.6.7.5.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.6.6.7.5.2.1.2.1">Alignment</span></span>
</span></span><span class="ltx_text" id="S5.T1.6.6.7.5.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.6.6.7.6">Diversity</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.6.6.7.7">
<span class="ltx_text" id="S5.T1.6.6.7.7.1"></span> <span class="ltx_text" id="S5.T1.6.6.7.7.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.6.6.7.7.2.1">
<span class="ltx_tr" id="S5.T1.6.6.7.7.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.6.6.7.7.2.1.1.1">Overall</span></span>
<span class="ltx_tr" id="S5.T1.6.6.7.7.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.6.6.7.7.2.1.2.1">Quality</span></span>
</span></span><span class="ltx_text" id="S5.T1.6.6.7.7.3"></span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.1.1">
<span class="ltx_text" id="S5.T1.1.1.1.1.2"></span> <span class="ltx_text" id="S5.T1.1.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.1.1.1.1.1.1">
<span class="ltx_tr" id="S5.T1.1.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.1.1.1.1.1.1.2.1">Blur</span></span>
<span class="ltx_tr" id="S5.T1.1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.1.1.1.1.1.1.1.1">SSIM <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.1.1.1.1.1.1.1.1.m1.1"><semantics id="S5.T1.1.1.1.1.1.1.1.1.m1.1a"><mo id="S5.T1.1.1.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T1.1.1.1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.1.1.1.1.1.1.1.1.m1.1b"><ci id="S5.T1.1.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S5.T1.1.1.1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.1.1.1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.1.1.1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="S5.T1.1.1.1.1.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.2.2.2">
<span class="ltx_text" id="S5.T1.2.2.2.2.2"></span> <span class="ltx_text" id="S5.T1.2.2.2.2.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.2.2.2.2.1.1">
<span class="ltx_tr" id="S5.T1.2.2.2.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.2.2.2.2.1.1.2.1">Edge</span></span>
<span class="ltx_tr" id="S5.T1.2.2.2.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.2.2.2.2.1.1.1.1">F1 <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.2.2.2.2.1.1.1.1.m1.1"><semantics id="S5.T1.2.2.2.2.1.1.1.1.m1.1a"><mo id="S5.T1.2.2.2.2.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T1.2.2.2.2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.2.2.2.2.1.1.1.1.m1.1b"><ci id="S5.T1.2.2.2.2.1.1.1.1.m1.1.1.cmml" xref="S5.T1.2.2.2.2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.2.2.2.2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.2.2.2.2.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="S5.T1.2.2.2.2.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.3.3">
<span class="ltx_text" id="S5.T1.3.3.3.3.2"></span> <span class="ltx_text" id="S5.T1.3.3.3.3.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.3.3.3.3.1.1">
<span class="ltx_tr" id="S5.T1.3.3.3.3.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.3.3.3.3.1.1.2.1">Depth</span></span>
<span class="ltx_tr" id="S5.T1.3.3.3.3.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.3.3.3.3.1.1.1.1">si-RMSE <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.3.3.3.3.1.1.1.1.m1.1"><semantics id="S5.T1.3.3.3.3.1.1.1.1.m1.1a"><mo id="S5.T1.3.3.3.3.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T1.3.3.3.3.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.3.3.3.3.1.1.1.1.m1.1b"><ci id="S5.T1.3.3.3.3.1.1.1.1.m1.1.1.cmml" xref="S5.T1.3.3.3.3.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.3.3.3.3.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.3.3.3.3.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="S5.T1.3.3.3.3.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.4.4.4.4">
<span class="ltx_text" id="S5.T1.4.4.4.4.2"></span> <span class="ltx_text" id="S5.T1.4.4.4.4.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.4.4.4.4.1.1">
<span class="ltx_tr" id="S5.T1.4.4.4.4.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.4.4.4.4.1.1.2.1">Mask</span></span>
<span class="ltx_tr" id="S5.T1.4.4.4.4.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.4.4.4.4.1.1.1.1">mIoU <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.4.4.4.4.1.1.1.1.m1.1"><semantics id="S5.T1.4.4.4.4.1.1.1.1.m1.1a"><mo id="S5.T1.4.4.4.4.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T1.4.4.4.4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.4.4.4.4.1.1.1.1.m1.1b"><ci id="S5.T1.4.4.4.4.1.1.1.1.m1.1.1.cmml" xref="S5.T1.4.4.4.4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.4.4.4.4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.4.4.4.4.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="S5.T1.4.4.4.4.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.5.5.5">
<span class="ltx_text" id="S5.T1.5.5.5.5.2"></span> <span class="ltx_text" id="S5.T1.5.5.5.5.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.5.5.5.5.1.1">
<span class="ltx_tr" id="S5.T1.5.5.5.5.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.5.5.5.5.1.1.2.1">Diversity</span></span>
<span class="ltx_tr" id="S5.T1.5.5.5.5.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.5.5.5.5.1.1.1.1">LPIPS <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.5.5.5.5.1.1.1.1.m1.1"><semantics id="S5.T1.5.5.5.5.1.1.1.1.m1.1a"><mo id="S5.T1.5.5.5.5.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T1.5.5.5.5.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.5.5.5.5.1.1.1.1.m1.1b"><ci id="S5.T1.5.5.5.5.1.1.1.1.m1.1.1.cmml" xref="S5.T1.5.5.5.5.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.5.5.5.5.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.5.5.5.5.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="S5.T1.5.5.5.5.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.6.6.6.6">
<span class="ltx_text" id="S5.T1.6.6.6.6.2"></span> <span class="ltx_text" id="S5.T1.6.6.6.6.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.6.6.6.6.1.1">
<span class="ltx_tr" id="S5.T1.6.6.6.6.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.6.6.6.6.1.1.2.1">Quality</span></span>
<span class="ltx_tr" id="S5.T1.6.6.6.6.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.6.6.6.6.1.1.1.1">Score <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.6.6.6.6.1.1.1.1.m1.1"><semantics id="S5.T1.6.6.6.6.1.1.1.1.m1.1a"><mo id="S5.T1.6.6.6.6.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T1.6.6.6.6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.6.6.6.6.1.1.1.1.m1.1b"><ci id="S5.T1.6.6.6.6.1.1.1.1.m1.1.1.cmml" xref="S5.T1.6.6.6.6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.6.6.6.6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.6.6.6.6.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="S5.T1.6.6.6.6.3"></span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T1.6.6.8.1">Cosmos-Transfer1-7B [Vis]</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.6.6.8.2"><span class="ltx_text ltx_font_bold" id="S5.T1.6.6.8.2.1">0.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.6.6.8.3">0.16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.6.6.8.4">0.49</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.6.6.8.5"><span class="ltx_text ltx_font_bold" id="S5.T1.6.6.8.5.1">0.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.6.6.8.6">0.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.6.6.8.7">5.94</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.9.1">Cosmos-Transfer1-7B [Edge]</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.9.2">0.77</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.9.3"><span class="ltx_text ltx_font_bold" id="S5.T1.6.6.9.3.1">0.28</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.9.4">0.53</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.9.5">0.71</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.9.6">0.28</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.9.7">5.48</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.10.1">Cosmos-Transfer1-7B [Depth]</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.10.2">0.71</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.10.3">0.14</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.10.4">0.49</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.10.5">0.70</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.10.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.6.6.10.6.1">0.39</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.10.7">6.51</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.11.1">Cosmos-Transfer1-7B [Seg]</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.11.2">0.66</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.11.3">0.11</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.11.4">0.75</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.11.5">0.68</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.11.6"><span class="ltx_text ltx_font_bold" id="S5.T1.6.6.11.6.1">0.42</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.11.7">6.30</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.12.1">Cosmos-Transfer1-7B Uniform Weights, no Vis</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.12.2">0.68</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.12.3">0.13</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.12.4">0.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.12.5">0.67</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.12.6">0.37</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.12.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.6.6.12.7.1">8.02</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.13.1">Cosmos-Transfer1-7B Uniform Weights, no Edge</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.13.2">0.81</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.13.3">0.10</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.13.4">0.53</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.13.5">0.66</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.13.6">0.31</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.13.7">7.68</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.14.1">Cosmos-Transfer1-7B Uniform Weights, no Depth</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.14.2">0.83</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.14.3">0.15</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.14.4">0.52</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.14.5">0.69</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.14.6">0.25</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.14.7">7.49</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.15.1">Cosmos-Transfer1-7B Uniform Weights, no Seg</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.15.2">0.84</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.15.3">0.15</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.15.4"><span class="ltx_text ltx_font_bold" id="S5.T1.6.6.15.4.1">0.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.15.5">0.70</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.15.6">0.23</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.15.7">7.83</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.16">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T1.6.6.16.1">Cosmos-Transfer1-7B Uniform Weights</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.6.6.16.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.6.6.16.2.1">0.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.6.6.16.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.6.6.16.3.1">0.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.6.6.16.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.6.6.16.4.1">0.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T1.6.6.16.5"><span class="ltx_text ltx_font_bold" id="S5.T1.6.6.16.5.1">0.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.6.6.16.6">0.22</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.6.6.16.7"><span class="ltx_text ltx_font_bold" id="S5.T1.6.6.16.7.1">8.54</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of different Cosmos-Transfer1 model configurations on the TransferBench dataset.  It contrasts the performance of models using only a single control modality (e.g., visual, edge, depth, segmentation) against those utilizing multiple modalities with uniform weighting.  The 'Cosmos-Transfer1-7B, Uniform Weights' row represents the model employing all four modalities equally (each weighted at 0.25). Other multimodal rows show results when one modality is excluded.  The table evaluates each configuration using metrics such as Blur SSIM, Edge F1, Depth si-RMSE, Mask mIoU, Diversity LPIPS, and an overall Quality Score. Best performing results for each metric are highlighted in bold, while second-best results are underlined.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative evaluation on TransferBench for various Cosmos-Transfer1 configurations. We compare single control models (each conditioned on a single modality) with multimodal variants that use spatially uniform weights. For the multimodal cases, “Cosmos-Transfer1-7B, Uniform Weights” denotes the full model that integrates all four control modalities (each weighted at 0.25), while variants such as “Cosmos-Transfer1-7B, Uniform Weights, No Vis” exclude a specific modality (here, the blur visual control), with the remaining modalities retaining equal weights. Best results are in bold; second-best are underlined.
> </details>





### In-depth insights


#### Adaptive Control
**Adaptive control** dynamically adjusts a system's parameters to maintain optimal performance amidst changing conditions or uncertainties. It contrasts with fixed control strategies, offering greater robustness. **Key methods** include model reference adaptive control (MRAC), which aims to match the system's behavior to a desired reference model, and self-tuning regulators (STR), where the controller parameters are estimated and updated online. Adaptive control is crucial in applications with significant parameter variations, such as aerospace, robotics, and process control. Challenges involve ensuring stability and convergence of the adaptive algorithms, as well as dealing with disturbances and unmodeled dynamics. Recent advances focus on robust adaptive control techniques, incorporating learning-based methods to improve adaptability and performance in complex environments. The goal is to create systems that learn and adjust automatically.

#### Multimodal Fusion
While "Multimodal Fusion" isn't explicitly discussed as a heading, the paper heavily implies its importance through the introduced "Cosmos-Transfer1" model. The paper leverages multiple modalities like **segmentation, depth, and edge** to generate world simulations, hinting at an inherent fusion process. Effective fusion would mean the model intelligently combines information from various sources. **Adaptive weighting**, a key feature, suggests a sophisticated fusion strategy where the influence of each modality varies spatially and temporally. The model has an ability to learn to prioritize depth cues for geometry preservation or edge information for fine-grained details. The success of the model indicates the importance of the multimodal fusion, specifically the interplay between different signals and the benefit on control and overall generation quality. **A study on how well the modalities aligns with each other** is very crucial, especially with the diversity of modalities (depth, segmentation), it needs to be aligned in a way that ensures the model can leverage each modality. An **appropriate loss function or metric** to measure the alignment between these modalities is very beneficial for training.

#### Sim2Real Bridge
**Sim2Real** emerges as a pivotal theme, addressing the challenge of transferring models trained in simulated environments to real-world applications. The research recognizes the **domain gap** between synthetic and real data, necessitating innovative methods. **Generative AI models** are explored to bridge this gap by refining simulator outputs, enhancing realism, and preserving task-relevant properties. The paper introduces a diffusion-based conditional world model with adaptive weighting scheme, enabling highly controllable world generation and improved generation quality. By leveraging modalities, the model effectively preserves scene structure and addresses visual fidelity. The approach leverages NVIDIA Omniverse with physically-based sensor simulation and is effective to enhance the visual diversity of simulated scenes. It offers a promising avenue for improving the robustness and generalization of models trained in simulation for real-world robotic and autonomous driving tasks. With the adaptive weighting scheme, **Cosmos-Transfer1** ensures key elements in the simulation are retained when transferring the simulation to the real world.

#### Real-Time Gen.
Given the limited context of just the phrase "Real-Time Gen,", one can infer that the research paper likely addresses the challenge of achieving real-time or near real-time generation of content, potentially in the context of video or image synthesis. This implies a focus on optimizing the generation process to minimize latency, which is crucial for interactive applications or scenarios requiring immediate feedback.  The paper might delve into specific architectural choices, such as model compression techniques or specialized hardware acceleration (e.g., using GPUs or specialized ASICs), to achieve the desired performance.  **Data parallelism and model parallelism** are potentially used for scaling up the generation process. The success of real-time generation is heavily influenced by the **trade-off between generation speed and quality**, requiring careful consideration of algorithmic complexity and resource allocation. The research could also explore novel methods for accelerating the generation process, such as exploiting sparsity in the model or employing approximate computation techniques.

#### AI+Physical World
**AI's intersection with the physical world** marks a transformative shift, enabling digital systems to interact with and understand real-world environments. This convergence fuels advancements in robotics, autonomous vehicles, and augmented reality, blurring the lines between virtual and physical domains. **Generative AI** models, particularly those conditioned on multimodal inputs like images, depth maps, and semantic segmentations, are instrumental in bridging this gap, allowing for the creation of realistic simulations and enabling AI agents to learn and operate effectively in complex physical settings. **Challenges** include ensuring robustness to noisy sensor data, maintaining physical plausibility in generated content, and addressing safety concerns in real-world deployments. Future directions involve exploring novel sensor modalities, developing more efficient and interpretable models, and establishing robust evaluation metrics for AI systems operating in the physical world.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.14492/x2.png)

> 🔼 Cosmos-Transfer1 uses multiple control branches to process different input modalities (segmentation, depth, and edge).  A spatiotemporal control map assigns weights to each modality's output at each spatial location and time step, allowing the model to emphasize certain modalities in specific areas. This adaptive weighting scheme enables fine-grained control over world generation, maximizing output quality by using the most relevant information for each region. The weighted outputs of the control branches are combined and fed into the main generation branch. 
> <details>
> <summary>read the caption</summary>
> Figure 2: Cosmos-Transfer1 is a world generator with adaptive multimodal control. It contains multiple control branches to extract control information from different modality inputs such as segmentation, depth, and edge. We apply spatiotemporal control maps 𝐰={𝐰1,𝐰2,…,𝐰N}𝐰subscript𝐰1subscript𝐰2…subscript𝐰𝑁\mathbf{w}=\{\mathbf{w}_{1},\mathbf{w}_{2},...,\mathbf{w}_{N}\}bold_w = { bold_w start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , bold_w start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT , … , bold_w start_POSTSUBSCRIPT italic_N end_POSTSUBSCRIPT } to weight the outputs computed by different control branches before channeling them back to the main generation branch. The spatiotemporal control map allows the model to leverage the most relevant modalities in different regions for optimal output quality.
> </details>



![](https://arxiv.org/html/2503.14492/x3.png)

> 🔼 This figure shows the input and output videos generated by the Cosmos-Transfer1-7B model under various settings.  The model was given the same text prompt for each condition. The four conditions tested show how each individual modality (visual, edge, depth, and segmentation) affects the final output.  Cosmos-Transfer1-7B [Vis] primarily preserves the overall colors and composition of the input video, while modifying texture and detail.  Cosmos-Transfer1-7B [Edge] maintains the main object boundaries, but modifies colors and textures more significantly.  Cosmos-Transfer1-7B [Depth] focuses on maintaining the overall 3D structure and geometry of the scene, allowing other aspects to vary more freely.  Finally, Cosmos-Transfer1-7B [Seg] prioritizes the preservation of semantic information, preserving scene structure and main object categories, and allowing other aspects to vary more freely.
> <details>
> <summary>read the caption</summary>
> Figure 3: Input and generated videos from Cosmos-Transfer1-7B operating on individual modality settings using the same prompt. In particular, Cosmos-Transfer1-7B [Vis] preserves the colors and overall composition while altering texture details. On the other hand, Cosmos-Transfer1-7B [Edge] maintains the object boundaries while changing colors. Similarly, Cosmos-Transfer1-7B [Depth] preserves the scene geometry, while Cosmos-Transfer1-7B [Seg] preserves the scene semantics.
> </details>



![](https://arxiv.org/html/2503.14492/x4.png)

> 🔼 Figure 4 presents a comparison of input and output videos generated using two different versions of the Cosmos-Transfer1-7B-Sample-AV model, each conditioned on a single modality: HDMap and LiDAR.  The left column shows the input videos. The Cosmos-Transfer1-7B-Sample-AV model with HDMap as input successfully preserves the road layout and key structural features of the driving scene.  The model with LiDAR as input accurately preserves semantic details like the presence and positioning of vehicles, although some details of the road layout might not be as precise.
> <details>
> <summary>read the caption</summary>
> Figure 4: Input and generated videos from Cosmos-Transfer1-7B-Sample-AV operating on individual modality settings. Cosmos-Transfer1-7B-Sample-AV [HDMap] preserves the original road layout of a driving scene while Cosmos-Transfer1-7B-Sample-AV [LiDAR] preserves the input semantic details.
> </details>



![](https://arxiv.org/html/2503.14492/x5.png)

> 🔼 This figure demonstrates the capability of Cosmos-Transfer1-7B-4KUpscaler to enhance video resolution.  The model takes a 720p input video (generated by the model in the top row, and a real video in the bottom row) and upscales it to 4K resolution. The upscaling process not only increases the resolution but also improves the visual quality by adding realistic reflections and sharpening textures, making the generated 4k video more realistic and detailed.
> <details>
> <summary>read the caption</summary>
> Figure 5: Cosmos-Transfer1-7B-4KUpscaler upscales videos from 720p to 4k resolution. The input video in the first row is a generated video, while the second row is a real video. Note how the model adds realistic reflections and sharpens the textures in the input.
> </details>



![](https://arxiv.org/html/2503.14492/x6.png)

> 🔼 Figure 6 illustrates the concept of adaptive multimodal control in Cosmos-Transfer1.  The image shows spatiotemporal control weight maps applied to different modalities (visual, edge, depth, and segmentation). Black pixels represent a weight of 0, meaning no influence from that modality, while white pixels have a weight of 0.5, indicating moderate influence. The example focuses on a scene described as a bicycle repair shop. The foreground, controlled primarily by visual and edge information, retains details like the man's blue shirt and skin tone.  The background, controlled by depth and segmentation, shows objects in consistent positions but with randomized colors and textures (e.g., a red toolbox instead of a realistic one). Notably, the model even adds a new tool rack to the background, demonstrating its ability to generate novel elements.
> <details>
> <summary>read the caption</summary>
> Figure 6: Diagram of spatiotemporal control weighting by different modalities (Vis, Edge, Depth and Segmentation). The control weight maps are 0.00.00.00.0 in black pixel areas, and 0.50.50.50.5 in white areas. We note that while the caption broadly specifies a bicycle repair shop scene, the blue shirt with a white logo and the skin color of the man are maintained, due to these pixels being controlled by Vis and Edge. On the other hand, for the background controlled by Depth and Segmentation, the objects are positioned in the scene consistently but have their colors and textures randomized (e.g. red toolbox, yellow tripod, white repair stand). A new tool rack on the wall on the right is also added by the model.
> </details>



![](https://arxiv.org/html/2503.14492/x7.png)

> 🔼 Figure 7 displays the correlation analysis between the control weights assigned to various modalities (Visual, Edge, Depth, and Segmentation) within the foreground and background regions of generated videos and the corresponding ground truth modalities.  Separate graphs illustrate these correlations. The x-axis represents the weight assigned to each modality, while the y-axis shows the alignment score measured by different metrics specific to each modality (e.g., Blur SSIM for Visual). The results reveal the influence of foreground and background weight settings on the final video quality and alignment with control inputs. The positive correlations indicate that increasing the weight of certain modalities, especially in the appropriate regions, improves alignment with the ground truth. This suggests that the model's ability to adhere to control signals depends significantly on how the control weights are distributed spatially.
> <details>
> <summary>read the caption</summary>
> Figure 7: Correlations of modality weights on foreground (FG) region (for Vis and Edge) or background (BG) region (for Depth and Segmentation) with ground truth modality.
> </details>



![](https://arxiv.org/html/2503.14492/x8.png)

> 🔼 This figure showcases the results of Cosmos-Transfer1, a model for generating robotic manipulation videos. The leftmost column shows videos from NVIDIA Isaac Lab as input. The remaining columns present outputs from Cosmos-Transfer1-7B under various conditions. Each row represents a single scenario. The top row uses only segmentation as a condition with a weight of 1. The bottom row uses a combination of segmentation, edge, and visual information, employing a spatiotemporal control map that assigns custom weights to the foreground (robot) and background, assigning a weight of 1 only to the background. This comparison highlights how the spatiotemporal control map improves the fidelity of the robot in the foreground by leveraging multiple input modalities.
> <details>
> <summary>read the caption</summary>
> Figure 8: Example results of Cosmos-Transfer1 for robotic data generation. The left column displays input videos generated by NVIDIA Isaac Lab, while the right three columns show results from Cosmos-Transfer1-7B with different condition modalities and spatiotemporal control maps. For each example, the top row (single) uses Segmentation as the condition modality with an overall constraint weight of 1. The bottom row combines Segmentation, Edge, and Vis as conditions, applying a spatiotemporal control map scheme. Specifically, a combination of Edge, Segmentation and Vis are used with a customized control weight on the foreground (robot region), while only segmentation with a control weight of 1 is applied to the background. These results demonstrate that Cosmos-Transfer1-7B with the spatiotemporal control map enhances the fidelity of the foreground robot.
> </details>



![](https://arxiv.org/html/2503.14492/x9.png)

> 🔼 Figure 9 displays a comparison between the video generation results obtained using Cosmos-Transfer1-7B, a diffusion-based model, with either depth or segmentation as the sole condition and when both are used simultaneously.  The highlighted regions in each example showcase the superior generation quality when both depth and segmentation are used as inputs, demonstrating the improvements and additional details that result from incorporating multiple control signals. The figure visually emphasizes the increased realism and accuracy in those regions.
> <details>
> <summary>read the caption</summary>
> Figure 9: Comparison of the generation results conditioned on depth and segmentation of Cosmos-Transfer1-7B. In each example, the highlighted regions illustrate the enhancements achieved by incorporating multiple control signals over relying on a single one.
> </details>



![](https://arxiv.org/html/2503.14492/x10.png)

> 🔼 Figure 10 demonstrates the impact of using both HDMap and LiDAR data as control signals for Cosmos-Transfer1-7B-Sample-AV, a world generation model.  The figure shows five rows of images. The first row displays video frames generated using only HDMap data as a control signal. The second row showcases frames generated using only LiDAR data. The third and fourth rows highlight the limitations of using just one data source. The HDMap-only example (row 3) lacks fine details and accurate representations of objects, especially moving vehicles. The LiDAR-only example (row 4) accurately shows traffic cones, but the lane markings are incorrect. The fifth row presents the results when using both HDMap and LiDAR. This combination allows the model to create a more accurate and detailed scene, improving lane markings and object details.
> <details>
> <summary>read the caption</summary>
> Figure 10: Comparison of the generation results conditioned on HDMap and LiDAR of Cosmos-Transfer1-7B-Sample-AV. The highlighted regions illustrate the enhancements achieved by incorporating multiple control signals compared to relying on a single one. 1st row: HDMap condition. 2nd row: LiDAR condition. 3rd row: Video generated using only HDMap. 4th row: Video generated using only LiDAR, where traffic cones are introduced by LiDAR, but lane markings are incorrect. 5th row: Video generated using both HDMap and LiDAR, where the lane layout is improved and more detailed objects are synthesized.
> </details>



![](https://arxiv.org/html/2503.14492/x11.png)

> 🔼 Figure 11 showcases the capabilities of Cosmos-Transfer1-7B-Sample-AV, a model designed for autonomous driving applications, in generating diverse driving scenarios. The first row displays the input control signals: a high-definition map (HDMap) combined with 3D bounding boxes, and LiDAR data.  The subsequent rows (2nd-5th) present videos generated by the model using four different text prompts. These prompts describe varying weather conditions and times of day: a foggy morning, a sunny afternoon, a snowy day, and a scene with a fire.  Each generated video demonstrates the model's ability to create realistic and diverse driving scenes based on both the control signals and the textual descriptions.
> <details>
> <summary>read the caption</summary>
> Figure 11: 1st row: Control signals (left: HDMap + 3DBbox, right: LiDAR) to Cosmos-Transfer1-7B-Sample-AV. 2nd-5th rows: Video generated by different text prompts listed as following: The scene unfolds on a foggy morning, with a thick layer of mist reducing visibility…; The scene is bathed in the warm, golden hues of the late afternoon sun, casting long shadows on the road…; The street is blanketed in heavy snowfall, with large snowflakes continuously falling, partially obscuring visibility…; The scene unfolds in a chaotic and intense environment as a fire engulfs the houses on either side of the street…
> </details>



![](https://arxiv.org/html/2503.14492/x12.png)

> 🔼 Figure 12 demonstrates the capability of Cosmos-Transfer1-7B to generate diverse urban driving scenes based on LiDAR data simulated by NVIDIA Omniverse. The first row shows the input LiDAR data, while the subsequent rows (2nd-5th) present video outputs generated using different textual prompts, each describing a specific time of day, weather condition, or environment (e.g., golden hour, nighttime, heavy rainfall, jungle-style urban environment).  This showcases the model's ability to adapt its output based on varying textual descriptions while maintaining the scene's underlying structure as informed by the input LiDAR data. The results highlight Cosmos-Transfer1-7B's versatility in creating realistic and diverse driving scenarios for applications like autonomous vehicle training and simulation.
> <details>
> <summary>read the caption</summary>
> Figure 12: 1st row: LiDAR simulated by NVIDIA Omniverse as the control signal to Cosmos-Transfer1-7B. 2nd-5th rows: Videos generated by different text prompts listed as following: The video showcases an urban driving scene during the golden hour…; The video portrays a nighttime driving scene in an urban environment…; The video captures an urban driving scene under heavy rainfall…; The video depicts a thrilling driving scene in a jungle-style urban environment…
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T2.6.6">
<tr class="ltx_tr" id="S5.T2.6.6.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="8" id="S5.T2.6.6.7.1">Control Weights</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T2.6.6.7.2">
<span class="ltx_text" id="S5.T2.6.6.7.2.1"></span> <span class="ltx_text" id="S5.T2.6.6.7.2.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T2.6.6.7.2.2.1">
<span class="ltx_tr" id="S5.T2.6.6.7.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.6.6.7.2.2.1.1.1">Vis</span></span>
<span class="ltx_tr" id="S5.T2.6.6.7.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.6.6.7.2.2.1.2.1">Alignment</span></span>
</span></span><span class="ltx_text" id="S5.T2.6.6.7.2.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T2.6.6.7.3">
<span class="ltx_text" id="S5.T2.6.6.7.3.1"></span> <span class="ltx_text" id="S5.T2.6.6.7.3.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T2.6.6.7.3.2.1">
<span class="ltx_tr" id="S5.T2.6.6.7.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.6.6.7.3.2.1.1.1">Edge</span></span>
<span class="ltx_tr" id="S5.T2.6.6.7.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.6.6.7.3.2.1.2.1">Alignment</span></span>
</span></span><span class="ltx_text" id="S5.T2.6.6.7.3.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T2.6.6.7.4">
<span class="ltx_text" id="S5.T2.6.6.7.4.1"></span> <span class="ltx_text" id="S5.T2.6.6.7.4.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T2.6.6.7.4.2.1">
<span class="ltx_tr" id="S5.T2.6.6.7.4.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.6.6.7.4.2.1.1.1">Depth</span></span>
<span class="ltx_tr" id="S5.T2.6.6.7.4.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.6.6.7.4.2.1.2.1">Alignment</span></span>
</span></span><span class="ltx_text" id="S5.T2.6.6.7.4.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S5.T2.6.6.7.5">
<span class="ltx_text" id="S5.T2.6.6.7.5.1"></span> <span class="ltx_text" id="S5.T2.6.6.7.5.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T2.6.6.7.5.2.1">
<span class="ltx_tr" id="S5.T2.6.6.7.5.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.6.6.7.5.2.1.1.1">Segmentation</span></span>
<span class="ltx_tr" id="S5.T2.6.6.7.5.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.6.6.7.5.2.1.2.1">Alignment</span></span>
</span></span><span class="ltx_text" id="S5.T2.6.6.7.5.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T2.6.6.7.6">Diversity</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.6.6.7.7">
<span class="ltx_text" id="S5.T2.6.6.7.7.1"></span> <span class="ltx_text" id="S5.T2.6.6.7.7.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T2.6.6.7.7.2.1">
<span class="ltx_tr" id="S5.T2.6.6.7.7.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.6.6.7.7.2.1.1.1">Overall</span></span>
<span class="ltx_tr" id="S5.T2.6.6.7.7.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.6.6.7.7.2.1.2.1">Quality</span></span>
</span></span><span class="ltx_text" id="S5.T2.6.6.7.7.3"></span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.6.6.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="4" id="S5.T2.6.6.6.7">FG</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="4" id="S5.T2.6.6.6.8">BG</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S5.T2.1.1.1.1">
<span class="ltx_text" id="S5.T2.1.1.1.1.2"></span> <span class="ltx_text" id="S5.T2.1.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T2.1.1.1.1.1.1">
<span class="ltx_tr" id="S5.T2.1.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.1.1.1.1.1.1.2.1">Blur</span></span>
<span class="ltx_tr" id="S5.T2.1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.1.1.1.1.1.1.1.1">SSIM <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.1.1.1.1.1.1.1.1.m1.1"><semantics id="S5.T2.1.1.1.1.1.1.1.1.m1.1a"><mo id="S5.T2.1.1.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T2.1.1.1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.1.1.1.1.1.1.1.1.m1.1b"><ci id="S5.T2.1.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S5.T2.1.1.1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.1.1.1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.1.1.1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="S5.T2.1.1.1.1.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S5.T2.2.2.2.2">
<span class="ltx_text" id="S5.T2.2.2.2.2.2"></span> <span class="ltx_text" id="S5.T2.2.2.2.2.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T2.2.2.2.2.1.1">
<span class="ltx_tr" id="S5.T2.2.2.2.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.2.2.2.2.1.1.2.1">Edge</span></span>
<span class="ltx_tr" id="S5.T2.2.2.2.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.2.2.2.2.1.1.1.1">F1 <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.2.2.2.2.1.1.1.1.m1.1"><semantics id="S5.T2.2.2.2.2.1.1.1.1.m1.1a"><mo id="S5.T2.2.2.2.2.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T2.2.2.2.2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.2.2.2.2.1.1.1.1.m1.1b"><ci id="S5.T2.2.2.2.2.1.1.1.1.m1.1.1.cmml" xref="S5.T2.2.2.2.2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.2.2.2.2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.2.2.2.2.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="S5.T2.2.2.2.2.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S5.T2.3.3.3.3">
<span class="ltx_text" id="S5.T2.3.3.3.3.2"></span> <span class="ltx_text" id="S5.T2.3.3.3.3.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T2.3.3.3.3.1.1">
<span class="ltx_tr" id="S5.T2.3.3.3.3.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.3.3.3.3.1.1.2.1">Depth</span></span>
<span class="ltx_tr" id="S5.T2.3.3.3.3.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.3.3.3.3.1.1.1.1">si-RSME <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.3.3.3.3.1.1.1.1.m1.1"><semantics id="S5.T2.3.3.3.3.1.1.1.1.m1.1a"><mo id="S5.T2.3.3.3.3.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T2.3.3.3.3.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.3.3.3.3.1.1.1.1.m1.1b"><ci id="S5.T2.3.3.3.3.1.1.1.1.m1.1.1.cmml" xref="S5.T2.3.3.3.3.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.3.3.3.3.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.3.3.3.3.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="S5.T2.3.3.3.3.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S5.T2.4.4.4.4">
<span class="ltx_text" id="S5.T2.4.4.4.4.2"></span> <span class="ltx_text" id="S5.T2.4.4.4.4.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T2.4.4.4.4.1.1">
<span class="ltx_tr" id="S5.T2.4.4.4.4.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.4.4.4.4.1.1.2.1">Mask</span></span>
<span class="ltx_tr" id="S5.T2.4.4.4.4.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.4.4.4.4.1.1.1.1">mIoU <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.4.4.4.4.1.1.1.1.m1.1"><semantics id="S5.T2.4.4.4.4.1.1.1.1.m1.1a"><mo id="S5.T2.4.4.4.4.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T2.4.4.4.4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.4.4.4.4.1.1.1.1.m1.1b"><ci id="S5.T2.4.4.4.4.1.1.1.1.m1.1.1.cmml" xref="S5.T2.4.4.4.4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.4.4.4.4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.4.4.4.4.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="S5.T2.4.4.4.4.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S5.T2.5.5.5.5">
<span class="ltx_text" id="S5.T2.5.5.5.5.2"></span> <span class="ltx_text" id="S5.T2.5.5.5.5.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T2.5.5.5.5.1.1">
<span class="ltx_tr" id="S5.T2.5.5.5.5.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.5.5.5.5.1.1.2.1">Diversity</span></span>
<span class="ltx_tr" id="S5.T2.5.5.5.5.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.5.5.5.5.1.1.1.1">LPIPS <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.5.5.5.5.1.1.1.1.m1.1"><semantics id="S5.T2.5.5.5.5.1.1.1.1.m1.1a"><mo id="S5.T2.5.5.5.5.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T2.5.5.5.5.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.5.5.5.5.1.1.1.1.m1.1b"><ci id="S5.T2.5.5.5.5.1.1.1.1.m1.1.1.cmml" xref="S5.T2.5.5.5.5.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.5.5.5.5.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.5.5.5.5.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="S5.T2.5.5.5.5.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.6.6">
<span class="ltx_text" id="S5.T2.6.6.6.6.2"></span> <span class="ltx_text" id="S5.T2.6.6.6.6.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T2.6.6.6.6.1.1">
<span class="ltx_tr" id="S5.T2.6.6.6.6.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.6.6.6.6.1.1.2.1">Quality</span></span>
<span class="ltx_tr" id="S5.T2.6.6.6.6.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.6.6.6.6.1.1.1.1">Score <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.6.6.6.6.1.1.1.1.m1.1"><semantics id="S5.T2.6.6.6.6.1.1.1.1.m1.1a"><mo id="S5.T2.6.6.6.6.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T2.6.6.6.6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.6.6.6.6.1.1.1.1.m1.1b"><ci id="S5.T2.6.6.6.6.1.1.1.1.m1.1.1.cmml" xref="S5.T2.6.6.6.6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.6.6.6.6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.6.6.6.6.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="S5.T2.6.6.6.6.3"></span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.6.6.8">
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.8.1">Vis</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.8.2">Edge</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.8.3">Depth</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.6.6.8.4">Seg</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.8.5">Vis</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.8.6">Edge</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.8.7">Depth</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.6.6.8.8">Seg</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.8.9">FG</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.8.10">BG</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.8.11">FG</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.8.12">BG</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.8.13">FG</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.8.14">BG</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.8.15">FG</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.6.6.8.16">BG</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.8.17">FG</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.8.18">BG</td>
<td class="ltx_td" id="S5.T2.6.6.8.19"></td>
</tr>
<tr class="ltx_tr" id="S5.T2.6.6.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.9.1">0.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.9.2">0.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.9.3">0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.6.6.9.4">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.9.5">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.9.6">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.9.7">0.5</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.6.6.9.8">0.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.9.9"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.9.9.1">0.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.9.10">0.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.9.11"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.9.11.1">0.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.9.12">0.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.9.13"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.9.13.1">0.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.9.14">0.52</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.9.15"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.6.6.9.15.1">0.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.6.6.9.16">0.68</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.9.17">0.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.9.18"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.9.18.1">0.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.9.19"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.9.19.1">8.29</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.6.6.10">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.6.6.10.1">0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.6.6.10.2">0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.6.6.10.3">0.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.6.6.10.4">0.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.6.6.10.5">0.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.6.6.10.6">0.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.6.6.10.7">0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.6.6.10.8">0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.6.6.10.9">0.68</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.6.6.10.10"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.10.10.1">0.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.6.6.10.11">0.17</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.6.6.10.12"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.10.12.1">0.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.6.6.10.13">0.38</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.6.6.10.14"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.10.14.1">0.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.6.6.10.15"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.6.6.10.15.1">0.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.6.6.10.16"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.10.16.1">0.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.6.6.10.17"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.10.17.1">0.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.6.6.10.18">0.03</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.6.6.10.19">8.08</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a quantitative analysis of the Cosmos-Transfer1-7B model's performance on the TransferBench dataset when using spatiotemporal weights derived from the SalientObject algorithm.  The table compares the model's performance across different metrics (Blur SSIM, Edge F1, Depth si-RMSE, Mask mIoU, Diversity LPIPS, and Quality Score) when various weighting schemes are applied to the foreground and background regions of the image. The first eight columns indicate the specific weight assigned to each of the four modalities (Vis, Edge, Depth, Segmentation) in both foreground and background regions. The remaining columns show the resulting performance metrics for each region. This detailed breakdown allows for a nuanced understanding of how different weighting strategies impact the model's ability to adhere to control signals and generate high-quality, diverse outputs.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative evaluation on TransferBench for Cosmos-Transfer1-7B with spatiotemporal weights derived from our SalientObject algorithm. The leftmost eight columns specify the weight design for the four modalities respectively. For each metric, “FG” denotes the result in that metric computed in the foreground region, and “BG” stands for background.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.7.7">
<tr class="ltx_tr" id="S5.T3.7.7.8">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T3.7.7.8.1" rowspan="2"><span class="ltx_text" id="S5.T3.7.7.8.1.1" style="font-size:80%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.7.7.8.2">
<span class="ltx_text" id="S5.T3.7.7.8.2.1"></span><span class="ltx_text" id="S5.T3.7.7.8.2.2" style="font-size:80%;"> </span><span class="ltx_text" id="S5.T3.7.7.8.2.3" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T3.7.7.8.2.3.1">
<span class="ltx_tr" id="S5.T3.7.7.8.2.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.7.7.8.2.3.1.1.1">Vis</span></span>
<span class="ltx_tr" id="S5.T3.7.7.8.2.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.7.7.8.2.3.1.2.1">Alignment</span></span>
</span></span><span class="ltx_text" id="S5.T3.7.7.8.2.4"></span><span class="ltx_text" id="S5.T3.7.7.8.2.5" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.7.7.8.3">
<span class="ltx_text" id="S5.T3.7.7.8.3.1"></span><span class="ltx_text" id="S5.T3.7.7.8.3.2" style="font-size:80%;"> </span><span class="ltx_text" id="S5.T3.7.7.8.3.3" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T3.7.7.8.3.3.1">
<span class="ltx_tr" id="S5.T3.7.7.8.3.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.7.7.8.3.3.1.1.1">Edge</span></span>
<span class="ltx_tr" id="S5.T3.7.7.8.3.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.7.7.8.3.3.1.2.1">Alignment</span></span>
</span></span><span class="ltx_text" id="S5.T3.7.7.8.3.4"></span><span class="ltx_text" id="S5.T3.7.7.8.3.5" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.7.7.8.4">
<span class="ltx_text" id="S5.T3.7.7.8.4.1"></span><span class="ltx_text" id="S5.T3.7.7.8.4.2" style="font-size:80%;"> </span><span class="ltx_text" id="S5.T3.7.7.8.4.3" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T3.7.7.8.4.3.1">
<span class="ltx_tr" id="S5.T3.7.7.8.4.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.7.7.8.4.3.1.1.1">Depth</span></span>
<span class="ltx_tr" id="S5.T3.7.7.8.4.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.7.7.8.4.3.1.2.1">Alignment</span></span>
</span></span><span class="ltx_text" id="S5.T3.7.7.8.4.4"></span><span class="ltx_text" id="S5.T3.7.7.8.4.5" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.7.7.8.5">
<span class="ltx_text" id="S5.T3.7.7.8.5.1"></span><span class="ltx_text" id="S5.T3.7.7.8.5.2" style="font-size:80%;"> </span><span class="ltx_text" id="S5.T3.7.7.8.5.3" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T3.7.7.8.5.3.1">
<span class="ltx_tr" id="S5.T3.7.7.8.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.7.7.8.5.3.1.1.1">Segmentation</span></span>
<span class="ltx_tr" id="S5.T3.7.7.8.5.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.7.7.8.5.3.1.2.1">Alignment</span></span>
</span></span><span class="ltx_text" id="S5.T3.7.7.8.5.4"></span><span class="ltx_text" id="S5.T3.7.7.8.5.5" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T3.7.7.8.6">
<span class="ltx_text" id="S5.T3.7.7.8.6.1"></span><span class="ltx_text" id="S5.T3.7.7.8.6.2" style="font-size:80%;"> </span><span class="ltx_text" id="S5.T3.7.7.8.6.3" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T3.7.7.8.6.3.1">
<span class="ltx_tr" id="S5.T3.7.7.8.6.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.7.7.8.6.3.1.1.1">FG Segmentation</span></span>
<span class="ltx_tr" id="S5.T3.7.7.8.6.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.7.7.8.6.3.1.2.1">Alignment</span></span>
</span></span><span class="ltx_text" id="S5.T3.7.7.8.6.4"></span><span class="ltx_text" id="S5.T3.7.7.8.6.5" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.7.7.8.7"><span class="ltx_text" id="S5.T3.7.7.8.7.1" style="font-size:80%;">Diversity</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.7.7.8.8">
<span class="ltx_text" id="S5.T3.7.7.8.8.1"></span><span class="ltx_text" id="S5.T3.7.7.8.8.2" style="font-size:80%;"> </span><span class="ltx_text" id="S5.T3.7.7.8.8.3" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T3.7.7.8.8.3.1">
<span class="ltx_tr" id="S5.T3.7.7.8.8.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.7.7.8.8.3.1.1.1">Overall</span></span>
<span class="ltx_tr" id="S5.T3.7.7.8.8.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.7.7.8.8.3.1.2.1">Quality</span></span>
</span></span><span class="ltx_text" id="S5.T3.7.7.8.8.4"></span><span class="ltx_text" id="S5.T3.7.7.8.8.5" style="font-size:80%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.7.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.1.1">
<span class="ltx_text" id="S5.T3.1.1.1.1.2"></span><span class="ltx_text" id="S5.T3.1.1.1.1.3" style="font-size:80%;"> </span><span class="ltx_text" id="S5.T3.1.1.1.1.1" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T3.1.1.1.1.1.1">
<span class="ltx_tr" id="S5.T3.1.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.1.1.1.1.1.1.2.1">Blur</span></span>
<span class="ltx_tr" id="S5.T3.1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.1.1.1.1.1.1.1.1">SSIM <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.1.1.1.1.1.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.1.1.1.1.1.m1.1a"><mo id="S5.T3.1.1.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.1.1.1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.1.1.1.1.1.m1.1b"><ci id="S5.T3.1.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="S5.T3.1.1.1.1.4"></span><span class="ltx_text" id="S5.T3.1.1.1.1.5" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.2">
<span class="ltx_text" id="S5.T3.2.2.2.2.2"></span><span class="ltx_text" id="S5.T3.2.2.2.2.3" style="font-size:80%;"> </span><span class="ltx_text" id="S5.T3.2.2.2.2.1" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T3.2.2.2.2.1.1">
<span class="ltx_tr" id="S5.T3.2.2.2.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.2.2.2.2.1.1.2.1">Edge</span></span>
<span class="ltx_tr" id="S5.T3.2.2.2.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.2.2.2.2.1.1.1.1">F1 <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.2.2.2.2.1.1.1.1.m1.1"><semantics id="S5.T3.2.2.2.2.1.1.1.1.m1.1a"><mo id="S5.T3.2.2.2.2.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.2.2.2.2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.2.2.1.1.1.1.m1.1b"><ci id="S5.T3.2.2.2.2.1.1.1.1.m1.1.1.cmml" xref="S5.T3.2.2.2.2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.2.2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.2.2.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="S5.T3.2.2.2.2.4"></span><span class="ltx_text" id="S5.T3.2.2.2.2.5" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.3.3.3">
<span class="ltx_text" id="S5.T3.3.3.3.3.2"></span><span class="ltx_text" id="S5.T3.3.3.3.3.3" style="font-size:80%;"> </span><span class="ltx_text" id="S5.T3.3.3.3.3.1" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T3.3.3.3.3.1.1">
<span class="ltx_tr" id="S5.T3.3.3.3.3.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.3.3.3.3.1.1.2.1">Depth</span></span>
<span class="ltx_tr" id="S5.T3.3.3.3.3.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.3.3.3.3.1.1.1.1">si-RMSE <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.3.3.3.3.1.1.1.1.m1.1"><semantics id="S5.T3.3.3.3.3.1.1.1.1.m1.1a"><mo id="S5.T3.3.3.3.3.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.3.3.3.3.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.3.3.3.3.1.1.1.1.m1.1b"><ci id="S5.T3.3.3.3.3.1.1.1.1.m1.1.1.cmml" xref="S5.T3.3.3.3.3.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.3.3.3.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.3.3.3.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="S5.T3.3.3.3.3.4"></span><span class="ltx_text" id="S5.T3.3.3.3.3.5" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.4.4.4">
<span class="ltx_text" id="S5.T3.4.4.4.4.2"></span><span class="ltx_text" id="S5.T3.4.4.4.4.3" style="font-size:80%;"> </span><span class="ltx_text" id="S5.T3.4.4.4.4.1" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T3.4.4.4.4.1.1">
<span class="ltx_tr" id="S5.T3.4.4.4.4.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.4.4.4.4.1.1.2.1">Mask</span></span>
<span class="ltx_tr" id="S5.T3.4.4.4.4.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.4.4.4.4.1.1.1.1">mIoU <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.4.4.4.4.1.1.1.1.m1.1"><semantics id="S5.T3.4.4.4.4.1.1.1.1.m1.1a"><mo id="S5.T3.4.4.4.4.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.4.4.4.4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.4.4.4.4.1.1.1.1.m1.1b"><ci id="S5.T3.4.4.4.4.1.1.1.1.m1.1.1.cmml" xref="S5.T3.4.4.4.4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.4.4.4.4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.4.4.4.4.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="S5.T3.4.4.4.4.4"></span><span class="ltx_text" id="S5.T3.4.4.4.4.5" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.5.5.5.5">
<span class="ltx_text" id="S5.T3.5.5.5.5.2"></span><span class="ltx_text" id="S5.T3.5.5.5.5.3" style="font-size:80%;"> </span><span class="ltx_text" id="S5.T3.5.5.5.5.1" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T3.5.5.5.5.1.1">
<span class="ltx_tr" id="S5.T3.5.5.5.5.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.5.5.5.5.1.1.2.1">FG Mask</span></span>
<span class="ltx_tr" id="S5.T3.5.5.5.5.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.5.5.5.5.1.1.1.1">mIoU <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.5.5.5.5.1.1.1.1.m1.1"><semantics id="S5.T3.5.5.5.5.1.1.1.1.m1.1a"><mo id="S5.T3.5.5.5.5.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.5.5.5.5.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.5.5.5.5.1.1.1.1.m1.1b"><ci id="S5.T3.5.5.5.5.1.1.1.1.m1.1.1.cmml" xref="S5.T3.5.5.5.5.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.5.5.5.5.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.5.5.5.5.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="S5.T3.5.5.5.5.4"></span><span class="ltx_text" id="S5.T3.5.5.5.5.5" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.6.6">
<span class="ltx_text" id="S5.T3.6.6.6.6.2"></span><span class="ltx_text" id="S5.T3.6.6.6.6.3" style="font-size:80%;"> </span><span class="ltx_text" id="S5.T3.6.6.6.6.1" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T3.6.6.6.6.1.1">
<span class="ltx_tr" id="S5.T3.6.6.6.6.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.6.6.6.6.1.1.2.1">Diversity</span></span>
<span class="ltx_tr" id="S5.T3.6.6.6.6.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.6.6.6.6.1.1.1.1">LPIPS <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.6.6.6.6.1.1.1.1.m1.1"><semantics id="S5.T3.6.6.6.6.1.1.1.1.m1.1a"><mo id="S5.T3.6.6.6.6.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.6.6.6.6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.6.6.6.6.1.1.1.1.m1.1b"><ci id="S5.T3.6.6.6.6.1.1.1.1.m1.1.1.cmml" xref="S5.T3.6.6.6.6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.6.6.6.6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.6.6.6.6.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="S5.T3.6.6.6.6.4"></span><span class="ltx_text" id="S5.T3.6.6.6.6.5" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.7.7.7">
<span class="ltx_text" id="S5.T3.7.7.7.7.2"></span><span class="ltx_text" id="S5.T3.7.7.7.7.3" style="font-size:80%;"> </span><span class="ltx_text" id="S5.T3.7.7.7.7.1" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T3.7.7.7.7.1.1">
<span class="ltx_tr" id="S5.T3.7.7.7.7.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.7.7.7.7.1.1.2.1">Quality</span></span>
<span class="ltx_tr" id="S5.T3.7.7.7.7.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.7.7.7.7.1.1.1.1">Score <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.7.7.7.7.1.1.1.1.m1.1"><semantics id="S5.T3.7.7.7.7.1.1.1.1.m1.1a"><mo id="S5.T3.7.7.7.7.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.7.7.7.7.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.7.7.7.7.1.1.1.1.m1.1b"><ci id="S5.T3.7.7.7.7.1.1.1.1.m1.1.1.cmml" xref="S5.T3.7.7.7.7.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.7.7.7.7.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.7.7.7.7.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="S5.T3.7.7.7.7.4"></span><span class="ltx_text" id="S5.T3.7.7.7.7.5" style="font-size:80%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.7.9">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T3.7.7.9.1"><span class="ltx_text" id="S5.T3.7.7.9.1.1" style="font-size:80%;">Cosmos-Transfer1-7B [Vis]</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.7.9.2"><span class="ltx_text ltx_font_bold" id="S5.T3.7.7.9.2.1" style="font-size:80%;">0.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.7.9.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.7.7.9.3.1" style="font-size:80%;">0.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.7.9.4"><span class="ltx_text ltx_font_bold" id="S5.T3.7.7.9.4.1" style="font-size:80%;">0.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.7.9.5"><span class="ltx_text ltx_font_bold" id="S5.T3.7.7.9.5.1" style="font-size:80%;">0.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.7.7.9.6"><span class="ltx_text" id="S5.T3.7.7.9.6.1" style="font-size:80%;">0.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.7.9.7"><span class="ltx_text" id="S5.T3.7.7.9.7.1" style="font-size:80%;">0.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.7.9.8"><span class="ltx_text" id="S5.T3.7.7.9.8.1" style="font-size:80%;">9.11</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.7.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.7.7.10.1"><span class="ltx_text" id="S5.T3.7.7.10.1.1" style="font-size:80%;">Cosmos-Transfer1-7B [Edge]</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.10.2"><span class="ltx_text" id="S5.T3.7.7.10.2.1" style="font-size:80%;">0.63</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.10.3"><span class="ltx_text ltx_font_bold" id="S5.T3.7.7.10.3.1" style="font-size:80%;">0.40</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.10.4"><span class="ltx_text" id="S5.T3.7.7.10.4.1" style="font-size:80%;">1.01</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.10.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.7.7.10.5.1" style="font-size:80%;">0.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.7.7.10.6"><span class="ltx_text" id="S5.T3.7.7.10.6.1" style="font-size:80%;">0.57</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.10.7"><span class="ltx_text" id="S5.T3.7.7.10.7.1" style="font-size:80%;">0.36</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.10.8"><span class="ltx_text" id="S5.T3.7.7.10.8.1" style="font-size:80%;">7.70</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.7.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.7.7.11.1"><span class="ltx_text" id="S5.T3.7.7.11.1.1" style="font-size:80%;">Cosmos-Transfer1-7B [Depth]</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.11.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.7.7.11.2.1" style="font-size:80%;">0.66</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.11.3"><span class="ltx_text" id="S5.T3.7.7.11.3.1" style="font-size:80%;">0.13</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.11.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.7.7.11.4.1" style="font-size:80%;">0.84</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.11.5"><span class="ltx_text" id="S5.T3.7.7.11.5.1" style="font-size:80%;">0.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.7.7.11.6"><span class="ltx_text" id="S5.T3.7.7.11.6.1" style="font-size:80%;">0.57</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.11.7"><span class="ltx_text" id="S5.T3.7.7.11.7.1" style="font-size:80%;">0.43</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.11.8"><span class="ltx_text" id="S5.T3.7.7.11.8.1" style="font-size:80%;">9.17</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.7.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.7.7.12.1"><span class="ltx_text" id="S5.T3.7.7.12.1.1" style="font-size:80%;">Cosmos-Transfer1-7B [Seg]</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.12.2"><span class="ltx_text" id="S5.T3.7.7.12.2.1" style="font-size:80%;">0.47</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.12.3"><span class="ltx_text" id="S5.T3.7.7.12.3.1" style="font-size:80%;">0.10</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.12.4"><span class="ltx_text" id="S5.T3.7.7.12.4.1" style="font-size:80%;">1.34</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.12.5"><span class="ltx_text" id="S5.T3.7.7.12.5.1" style="font-size:80%;">0.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.7.7.12.6"><span class="ltx_text" id="S5.T3.7.7.12.6.1" style="font-size:80%;">0.54</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.12.7"><span class="ltx_text ltx_font_bold" id="S5.T3.7.7.12.7.1" style="font-size:80%;">0.60</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.12.8"><span class="ltx_text" id="S5.T3.7.7.12.8.1" style="font-size:80%;">9.29</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.7.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.7.7.13.1"><span class="ltx_text" id="S5.T3.7.7.13.1.1" style="font-size:80%;">Cosmos-Transfer1-7B, Setting1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.13.2"><span class="ltx_text" id="S5.T3.7.7.13.2.1" style="font-size:80%;">0.51</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.13.3"><span class="ltx_text" id="S5.T3.7.7.13.3.1" style="font-size:80%;">0.12</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.13.4"><span class="ltx_text" id="S5.T3.7.7.13.4.1" style="font-size:80%;">1.30</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.13.5"><span class="ltx_text" id="S5.T3.7.7.13.5.1" style="font-size:80%;">0.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.7.7.13.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.7.7.13.6.1" style="font-size:80%;">0.61</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.13.7"><span class="ltx_text" id="S5.T3.7.7.13.7.1" style="font-size:80%;">0.57</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.13.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.7.7.13.8.1" style="font-size:80%;">9.57</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.7.14">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T3.7.7.14.1"><span class="ltx_text" id="S5.T3.7.7.14.1.1" style="font-size:80%;">Cosmos-Transfer1-7B, Setting2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.7.7.14.2"><span class="ltx_text" id="S5.T3.7.7.14.2.1" style="font-size:80%;">0.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.7.7.14.3"><span class="ltx_text" id="S5.T3.7.7.14.3.1" style="font-size:80%;">0.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.7.7.14.4"><span class="ltx_text" id="S5.T3.7.7.14.4.1" style="font-size:80%;">1.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.7.7.14.5"><span class="ltx_text" id="S5.T3.7.7.14.5.1" style="font-size:80%;">0.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.7.7.14.6"><span class="ltx_text ltx_font_bold" id="S5.T3.7.7.14.6.1" style="font-size:80%;">0.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.7.7.14.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.7.7.14.7.1" style="font-size:80%;">0.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.7.7.14.8"><span class="ltx_text ltx_font_bold" id="S5.T3.7.7.14.8.1" style="font-size:80%;">10.42</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different Cosmos-Transfer1 model variations on a Sim2Real robotics data generation task.  It assesses the performance of single-modality control models (using only one input type like visual, edge, depth, or segmentation) against two multimodal control models that leverage combinations of these inputs. The multimodal models use distinct spatiotemporal control maps to differentially weight the input modalities. The table evaluates performance using metrics such as Blur SSIM, Edge F1, Depth si-RMSE, Mask mIoU, and Diversity LPIPS, as well as an overall Quality score.  Best and second-best results are highlighted for easier interpretation. The purpose is to demonstrate the impact of using multiple modalities and adaptive weighting schemes for improved realism and control in generating simulated robotics data.
> <details>
> <summary>read the caption</summary>
> Table 3: Quantitative evaluation of Cosmos-Transfer1 on robotics Sim2Real data generation task, including single-control models and two multimodal control variants with different spatiotemporal control maps. Best results are in bold; second-best are underlined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T4.3.3">
<tr class="ltx_tr" id="S5.T4.3.3.3">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.3.3.3.4">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.1.1">3D-Bbox mAP <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.1.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.1.m1.1a"><mo id="S5.T4.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.1.m1.1b"><ci id="S5.T4.1.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.2.2.2.2">Lane mIoU <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.2.2.2.2.m1.1"><semantics id="S5.T4.2.2.2.2.m1.1a"><mo id="S5.T4.2.2.2.2.m1.1.1" stretchy="false" xref="S5.T4.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.2.m1.1b"><ci id="S5.T4.2.2.2.2.m1.1.1.cmml" xref="S5.T4.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.3.3.3.3">Reprojection Err. <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.3.3.3.3.m1.1"><semantics id="S5.T4.3.3.3.3.m1.1a"><mo id="S5.T4.3.3.3.3.m1.1.1" stretchy="false" xref="S5.T4.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.3.3.m1.1b"><ci id="S5.T4.3.3.3.3.m1.1.1.cmml" xref="S5.T4.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.3.3.4.1">Cosmos-Transfer1-7B-Sample-AV [HDMap]</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.4.2">41.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.4.3">50.37</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.4.4">9.46</td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3.5">
<td class="ltx_td ltx_align_left" id="S5.T4.3.3.5.1">Cosmos-Transfer1-7B-Sample-AV [LiDAR]</td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.5.2"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.5.2.1">46.50</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.5.3">48.19</td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.5.4"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.5.4.1">8.60</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T4.3.3.6.1">Cosmos-Transfer1-7B-Sample-AV</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.3.3.6.2">44.66</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.3.3.6.3"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.6.3.1">51.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.3.3.6.4">8.67</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents a quantitative comparison of the Cosmos-Transfer1-7B-Sample-AV model's performance on autonomous driving video generation.  It evaluates three different model configurations: using only HDMap as a control signal, using only LiDAR as a control signal, and using both HDMap and LiDAR as combined control signals. The evaluation metrics include 3D bounding box mean Average Precision (mAP), lane mean Intersection over Union (mIoU), and photometric reprojection error.  This allows assessing how well the generated videos align with the control signals and the overall quality of the generated data for autonomous driving applications. The best results for each metric across all model configurations are highlighted in bold.
> <details>
> <summary>read the caption</summary>
> Table 4: Quantitative evaluation of Cosmos-Transfer1-7B-Sample-AV on the autonomous driving video generation task. We compare the results of both single-control models and multimodal control variant over various metrics. Best results are in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T5.5">
<tr class="ltx_tr" id="S6.T5.5.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T5.5.1.1">Number of GPUs</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T5.5.1.2">1</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T5.5.1.3">4</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T5.5.1.4">8</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T5.5.1.5">16</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T5.5.1.6">32</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T5.5.1.7">64</td>
</tr>
<tr class="ltx_tr" id="S6.T5.5.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.5.2.1">Diffusion only</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.5.2.2">141.0 s</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.5.2.3">39.3 s</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.5.2.4">20.1 s</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.5.2.5">10.3 s</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.5.2.6">5.4 s</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.5.2.7">3.5 s</td>
</tr>
<tr class="ltx_tr" id="S6.T5.5.3">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.5.3.1">End-to-end</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.5.3.2">141.7 s</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.5.3.3">40.0 s</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.5.3.4">20.8 s</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.5.3.5">11.0 s</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.5.3.6">6.1 s</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.5.3.7">4.2 s</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the computation time required to generate a 5-second video using the Cosmos-Transfer1-7B model under various levels of parallelism.  It demonstrates the significant speedup achievable by increasing the number of GPUs used for processing. The results highlight the scalability of the model and its ability to achieve real-time generation speeds when utilizing a sufficient number of GPUs (specifically, 64 B200 GPUs). The table compares the diffusion-only computation time against the end-to-end runtime (including all aspects of video generation).
> <details>
> <summary>read the caption</summary>
> Table 5: Computation time for generating a 5-second video with Cosmos-Transfer1-7B under different parallelism settings. End-to-end runtime dips below 5 seconds when scaled up to 64 B200 GPUs and reach real-time generation throughput.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.14492/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14492/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14492/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14492/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14492/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14492/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14492/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14492/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14492/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14492/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14492/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14492/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14492/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14492/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14492/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14492/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14492/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14492/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14492/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14492/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}