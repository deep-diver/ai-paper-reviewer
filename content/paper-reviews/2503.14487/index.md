---
title: "DiffMoE: Dynamic Token Selection for Scalable Diffusion Transformers"
summary: "DiffMoE: Dynamically selects tokens for scalable diffusion transformers, unlocking new efficiency levels in image generation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Tsinghua University",]
showSummary: true
date: 2025-03-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.14487 {{< /keyword >}}
{{< keyword icon="writer" >}} Minglei Shi et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.14487" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.14487" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.14487/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Diffusion Transformers excel in visual generation but treat all inputs uniformly, missing heterogeneity benefits. Mixture-of-Experts (MoE) aims to fix this, but struggles with limited token access and fixed patterns. **The current MoE limits token selection within individual samples and noise levels. Dense and TC-MoE isolate tokens while EC-DiT restricts intra-sample interaction.** Thus, it hinders model capture of heterogeneity in the diffusion process.



To solve these issues, DiffMoE was introduced. **DiffMoE uses a batch-level global token pool for enhanced cross-sample interaction. A capacity predictor dynamically allocates resources. This leads to state-of-the-art performance, outperforming dense architectures with 3× activated parameters while maintaining 1×.** DiffMoE's method extends to text-to-image tasks and is broadly applicable across diffusion models.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Global token accessibility is crucial for MoE success in diffusion models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} DiffMoE architecture achieves state-of-the-art performance with dynamic computation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Capacity predictor dynamically adjusts computational resource allocation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work on dynamic token selection addresses **scalability and efficiency** in diffusion models, offering state-of-the-art image generation. It opens avenues for new architectures in AI, potentially impacting **various applications beyond image synthesis.**

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T8.1">
<tr class="ltx_tr" id="A1.T8.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T8.1.1.2">Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.1.1.3"># A.A.P.</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T8.1.1.4">Training Strategy</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T8.1.1.5">Inference Strategy</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T8.1.1.1">FID50K <math alttext="\downarrow" class="ltx_Math" display="inline" id="A1.T8.1.1.1.m1.1"><semantics id="A1.T8.1.1.1.m1.1a"><mo id="A1.T8.1.1.1.m1.1.1" stretchy="false" xref="A1.T8.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A1.T8.1.1.1.m1.1b"><ci id="A1.T8.1.1.1.m1.1.1.cmml" xref="A1.T8.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A1.T8.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T8.1.2.1">TC-DiT-L-E16-Flow</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.2.2">458M</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T8.1.2.3">L1: Isolated</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T8.1.2.4">L1: Isolated</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T8.1.2.5">19.06</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.3">
<td class="ltx_td ltx_align_left" id="A1.T8.1.3.1">Dense-DiT-L-Flow</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.3.2">458M</td>
<td class="ltx_td ltx_align_left" id="A1.T8.1.3.3">L1: Isolated</td>
<td class="ltx_td ltx_align_left" id="A1.T8.1.3.4">L1: Isolated</td>
<td class="ltx_td ltx_align_left" id="A1.T8.1.3.5">17.01</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.4">
<td class="ltx_td ltx_align_left" id="A1.T8.1.4.1">EC-DiT-L-E16-Flow</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.4.2">458M</td>
<td class="ltx_td ltx_align_left" id="A1.T8.1.4.3">L2: Local</td>
<td class="ltx_td ltx_align_left" id="A1.T8.1.4.4">L2: Local Static TopK Routing</td>
<td class="ltx_td ltx_align_left" id="A1.T8.1.4.5">16.12</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.5">
<td class="ltx_td ltx_align_left" id="A1.T8.1.5.1">EC-DiT-L-E16-Flow</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.5.2">458M</td>
<td class="ltx_td ltx_align_left" id="A1.T8.1.5.3">L2: Local</td>
<td class="ltx_td ltx_align_left" id="A1.T8.1.5.4">L2: Local Dynamic Intra-sample Routing</td>
<td class="ltx_td ltx_align_left" id="A1.T8.1.5.5">23.74</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.6">
<td class="ltx_td ltx_align_left" id="A1.T8.1.6.1">DiffMoE-L-E16-Flow</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.6.2">458M</td>
<td class="ltx_td ltx_align_left" id="A1.T8.1.6.3">L3: Global</td>
<td class="ltx_td ltx_align_left" id="A1.T8.1.6.4">L3: Global Static TopK Routing</td>
<td class="ltx_td ltx_align_left" id="A1.T8.1.6.5">15.25</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T8.1.7.1">Dense-DiT-XL-Flow</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.7.2">675M</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T8.1.7.3">L1: Isolated</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T8.1.7.4">L1: Isolated</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T8.1.7.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T8.1.7.5.1">14.77</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.8" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A1.T8.1.8.1"><span class="ltx_text" id="A1.T8.1.8.1.1" style="background-color:#E6E6E6;">DiffMoE-L-E16-Flow</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T8.1.8.2"><span class="ltx_text" id="A1.T8.1.8.2.1" style="background-color:#E6E6E6;">454M</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A1.T8.1.8.3"><span class="ltx_text" id="A1.T8.1.8.3.1" style="background-color:#E6E6E6;">L3: Global</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A1.T8.1.8.4"><span class="ltx_text" id="A1.T8.1.8.4.1" style="background-color:#E6E6E6;">L3: Global Dynamic Cross-sample Routing</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A1.T8.1.8.5"><span class="ltx_text ltx_font_bold" id="A1.T8.1.8.5.1" style="background-color:#E6E6E6;">14.41</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table details the different configurations used for training the DiffMoE model for class-conditional image generation.  It lists hyperparameters such as the number of activated parameters, total parameters, number of blocks, hidden dimension, number of heads, and the number of experts.  These configurations represent different model sizes and complexities, allowing for a comparative analysis of performance across varying computational budgets. Refer to Appendix C for a detailed explanation of how activated parameters were calculated.
> <details>
> <summary>read the caption</summary>
> Table 1: DiffMoE Model Configurations. Hyperparameter settings and computational specifications for class-conditional models. See Appendix C for activated parameter calculations.
> </details>





### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.14487/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14487/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14487/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14487/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14487/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14487/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14487/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14487/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14487/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14487/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14487/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14487/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14487/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14487/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14487/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14487/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14487/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14487/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14487/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14487/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}