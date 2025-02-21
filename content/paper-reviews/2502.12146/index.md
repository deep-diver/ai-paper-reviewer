---
title: "Diffusion-Sharpening: Fine-tuning Diffusion Models with Denoising Trajectory Sharpening"
summary: "Diffusion-Sharpening enhances diffusion model fine-tuning by optimizing sampling trajectories, achieving faster convergence and high inference efficiency without extra NFEs, leading to improved alignm..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Peking University",]
showSummary: true
date: 2025-02-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.12146 {{< /keyword >}}
{{< keyword icon="writer" >}} Ye Tian et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.12146" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.12146" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.12146/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Fine-tuning diffusion models to match user preferences is challenging. Existing methods either focus on single timesteps (neglecting trajectory-level alignment) or incur high computational costs. This paper introduces Diffusion-Sharpening, a new fine-tuning approach that directly optimizes the entire sampling trajectory during training. This is achieved using a path integral framework that leverages reward feedback and amortizes inference costs.

Diffusion-Sharpening boasts superior training efficiency (faster convergence) and best inference efficiency (no extra NFEs).  Experiments across various metrics (text alignment, compositional abilities, user preferences) demonstrate that Diffusion-Sharpening surpasses existing RL-based fine-tuning and sampling trajectory optimization methods.  The method's efficiency and scalability make it highly suitable for fine-tuning large diffusion models.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Diffusion-Sharpening significantly improves the training and inference efficiency of diffusion models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The proposed method outperforms existing fine-tuning and trajectory optimization methods across multiple metrics. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Diffusion-Sharpening offers a scalable solution for future diffusion model fine-tuning. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because **it offers a novel and efficient fine-tuning approach for diffusion models**, addressing the limitations of existing methods in terms of training efficiency and inference cost.  Its impact lies in improving the alignment of generated outputs with user preferences, **enabling more precise control over the generation process and opening new avenues for research in generative AI**. The proposed method's scalability and efficiency make it highly relevant to current research trends focusing on improving the performance of large generative models.

------
#### Visual Insights



![](https://arxiv.org/html/2502.12146/x1.png)

> 🔼 Figure 1 illustrates three distinct approaches to optimizing diffusion models using reward signals.  (i) Diffusion Reinforcement Learning focuses on optimizing a single timestep using reinforcement learning techniques, ignoring the trajectory leading up to that step. (ii) Diffusion Sampling Trajectory Optimization extends optimization to the entire sampling trajectory, but this method involves high computational costs. (iii) Diffusion Sharpening, the proposed method, optimizes the sampling trajectory in a more efficient manner using a path integral framework that leverages reward feedback during training to select optimal trajectories and amortizes inference costs.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparison of Three Diffusion-Based Methods for Reward-Driven Optimization: (i) Diffusion Reinforcement Learning, (ii) Diffusion Sampling Trajectory Optimization, and (iii) Diffusion Sharpening.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.1.1">
<tr class="ltx_tr" id="S4.T1.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.1.1.2.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.2.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.2.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.2.2.1">CLIP Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S4.T1.1.1.2.3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.2.3.1">T2I-Compbench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.2.4" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.2.4.1">Aesthetic</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.2.5" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.2.5.1">ImageReward</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.2.6" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.2.6.1">MLLM</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.3.1.1">Color</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.3.2.1">Shape</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.3.3.1">Texture</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.4"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.3.4.1">Spatial</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.3.5.1">Non-Spatial</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.6"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.3.6.1">Complex</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.1.4.1">SDXL</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.2">0.322</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3">0.6369</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.4">0.5408</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.5">0.5637</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.6">0.2032</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.7">0.3110</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.8">0.4091</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.9">5.531</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.10">0.780</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.11">0.780</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.5">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="11" id="S4.T1.1.1.5.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T1.1.1.5.1.1" style="color:#5A5A5A;">Fine-tuning based Methods</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.1.6.1">Standard Fine-tuning</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.6.2">0.325</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.6.3">0.6437</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.6.4">0.5771</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.6.5">0.5692</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.6.6">0.2084</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.6.7">0.3147</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.6.8">0.4100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.6.9">5.556</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.6.10">0.791</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.6.11">0.784</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.7">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.7.1">Diffusion DPO <cite class="ltx_cite ltx_citemacro_citep">(Wallace et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12146v1#bib.bib34" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.2">0.334</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.3">0.6602</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.4">0.5553</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.5">0.5640</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.6">0.2112</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7">0.3180</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.8">0.4055</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.9">5.754</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.10">1.352</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.11">0.864</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.8">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.8.1">DDPO <cite class="ltx_cite ltx_citemacro_citep">(Black et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12146v1#bib.bib1" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.2">0.324</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.3">0.6435</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.4">0.5365</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.5">0.5531</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.6">0.2030</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.7">0.3142</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8">0.4024</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.9">5.640</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.10">0.910</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.11">0.791</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.9">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.9.1">D3PO <cite class="ltx_cite ltx_citemacro_citep">(Yang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12146v1#bib.bib37" title="">2024a</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.2">0.328</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.3">0.6434</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.4">0.5435</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.5">0.5657</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.6">0.2114</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.7">0.3153</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.8">0.4102</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9">5.528</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.10">0.982</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.11">0.785</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.10">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.10.1"><span class="ltx_text" id="S4.T1.1.1.10.1.1" style="color:#000000;">IterPO <cite class="ltx_cite ltx_citemacro_citep">(Zhang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12146v1#bib.bib43" title="">2024b</a>)</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.2">0.335</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.3">0.6637</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.4">0.5593</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.5">0.6167</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.6">0.2128</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.7">0.3207</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.8">0.4377</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.9">5.923</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.10">1.408</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.11">0.884</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.11">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="11" id="S4.T1.1.1.11.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T1.1.1.11.1.1" style="color:#5A5A5A;">Sampling Trajectory Optimization Methods</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.1.1.1">Free<sup class="ltx_sup" id="S4.T1.1.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T1.1.1.1.1.1.1">2</span></sup>Guide <cite class="ltx_cite ltx_citemacro_citep">(Kim et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12146v1#bib.bib15" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.1.2">0.325</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.1.3">0.6321</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.1.4">0.5386</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.1.5">0.5548</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.1.6">0.2050</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.1.7">0.3125</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.1.8">0.4082</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.1.9">5.560</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.1.10">0.873</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.1.11">0.786</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.12">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.12.1">Demon <cite class="ltx_cite ltx_citemacro_citep">(Yeh et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12146v1#bib.bib40" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.2">0.325</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.3">0.6502</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.4">0.5507</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.5">0.5602</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.6">0.2150</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.7">0.3158</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.8">0.4070</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.9">5.630</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.10">1.243</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.11">0.300</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.13">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.13.1">Inference Scaling <cite class="ltx_cite ltx_citemacro_citep">(Ma et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12146v1#bib.bib20" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.2">0.328</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.3">0.6550</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.4">0.5527</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.5">0.5700</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.6">0.2204</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.7">0.3168</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.8">0.4265</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.9">5.752</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.10">1.329</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.11">0.872</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.14">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.1.14.1">SFT Diffusion Sharpening</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.14.2">0.334</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.14.3">0.6578</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.14.4">0.5692</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.14.5">0.5733</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.14.6">0.2120</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.14.7">0.3185</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.14.8">0.4125</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.14.9">5.785</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.14.10">1.301</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.14.11">0.864</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.15">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.1.1.15.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.15.1.1">RLHF Diffusion Sharpening</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.15.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.15.2.1">0.338</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.15.3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.15.3.1">0.6841</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.15.4"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.15.4.1">0.5680</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.15.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.15.5.1">0.6401</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.15.6"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.15.6.1">0.2134</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.15.7"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.15.7.1">0.3220</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.15.8"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.15.8.1">0.4498</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.15.9"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.15.9.1">5.956</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.15.10"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.15.10.1">1.445</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.15.11"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.15.11.1">0.921</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comprehensive comparison of various diffusion models' performance across multiple evaluation metrics.  It compares standard fine-tuning methods, other reward-based fine-tuning methods, sampling trajectory optimization methods, and the proposed Diffusion-Sharpening approach (both SFT and RLHF versions).  The metrics used for comparison include CLIP Score, which assesses image-text alignment; aesthetic scores, reflecting overall visual quality; T2I-Compbench scores, evaluating compositional capabilities; and MLLM (Multimodal Large Language Model) grader scores, providing a holistic assessment across several dimensions.  The results showcase the strengths and weaknesses of each method in terms of training efficiency, inference efficiency, image quality, and alignment with user preferences.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of Model Performance across Multiple Metrics
> </details>





### In-depth insights


#### Trajectory Optimization
The concept of trajectory optimization in the context of diffusion models is crucial for enhancing the quality and efficiency of generated outputs.  **Existing methods often focus on single timesteps, neglecting the overall coherence and alignment across the entire denoising process.** This limitation leads to suboptimal results and high computational costs.  **Diffusion-Sharpening addresses this by directly optimizing the sampling trajectories during training**, enabling real-time adjustments during diffusion and leading to more consistent, high-quality outputs.  This approach leverages path integration to select optimal trajectories, providing feedback to guide the model toward improvements.  **A key advantage is the amortization of inference costs**, meaning the model learns efficient trajectories, avoiding the computationally expensive searches characteristic of other trajectory optimization approaches. By integrating reward feedback into the trajectory optimization process, **Diffusion-Sharpening achieves superior alignment with user preferences or predefined criteria**. This allows it to effectively fine-tune diffusion models for tasks requiring fine-grained or domain-specific control.

#### RLHF vs. SFT
The comparison of RLHF (Reinforcement Learning from Human Feedback) and SFT (Supervised Fine-Tuning) in the context of fine-tuning diffusion models is crucial.  **SFT uses a pre-existing dataset of image-text pairs to directly train or fine-tune the model**, leading to relatively fast and efficient training. However, **SFT's performance heavily relies on the quality and representativeness of the training data**. Biases in the dataset will directly translate into biases in the generated images.  **RLHF, on the other hand, employs a reward model that assesses generated images based on human preferences**, allowing for more flexible and nuanced control over the generated output.  **RLHF is iterative and computationally expensive**, requiring multiple stages of training and evaluation, including a training stage to optimize the reward model itself.  Despite the higher computational cost, **RLHF offers the potential to achieve superior alignment with human preferences** and to mitigate biases present in pre-existing datasets. The optimal choice between RLHF and SFT depends on the specific application, dataset availability, and computational resources.  In scenarios where high-quality, human-aligned results are paramount and computational cost is less of a concern, RLHF is preferable. Conversely, when computational resources are limited or a large, high-quality dataset is available, SFT might be a more viable option.

#### Reward Model Impact
The choice of reward model significantly impacts the performance of Diffusion-Sharpening.  **Different reward models capture different aspects of image quality and alignment with user preferences.** Using only CLIP scores, for example, might optimize for textual similarity but neglect other crucial factors like aesthetic appeal or compositional coherence.  In contrast, incorporating human feedback or more sophisticated metrics like MLLM evaluations provides a more holistic assessment leading to **substantial improvements in overall generation quality**. The paper highlights the flexibility of Diffusion-Sharpening by demonstrating its adaptability to diverse reward models, enabling researchers to tailor the fine-tuning process to specific applications and evaluation criteria.  **The results underscore the importance of selecting or designing reward models that comprehensively capture the desired qualities**, thereby maximizing the effectiveness of the Diffusion-Sharpening framework and improving the generated images' fidelity, alignment, and overall user satisfaction.

#### Efficiency Analysis
An efficiency analysis of the Diffusion-Sharpening model would ideally delve into both **training efficiency** and **inference efficiency**.  For training, the key metric would be the convergence rate, comparing the number of training steps needed to reach a satisfactory performance level against other fine-tuning methods.  Faster convergence translates to reduced computational costs and time. The analysis should also investigate the impact of hyperparameters such as the number of samples and trajectory steps on training efficiency.  Regarding inference, the critical factor is the number of forward diffusion steps (NFEs) required for generating a sample.  Diffusion-Sharpening aims to improve inference efficiency by optimizing sampling trajectories during training, reducing NFEs at inference time. A comparison with baselines like Demon and Inference Scaling, which directly optimize the sampling trajectory during inference but at high computational costs, would highlight the benefits of Diffusion-Sharpening's approach.  The analysis should quantify improvements in terms of inference time and NFE reduction. Ultimately, a comprehensive efficiency analysis would demonstrate the scalability and practicality of the Diffusion-Sharpening method by showing its superior performance in both training and inference compared to state-of-the-art approaches while maintaining high generative quality.

#### Future Directions
Future research could explore **extending Diffusion-Sharpening to other generative models**, such as those based on GANs or VAEs, to determine the broad applicability of trajectory optimization.  Investigating **alternative reward models** and their impact on generated outputs is crucial. This includes exploring methods beyond CLIP and developing reward functions sensitive to nuanced aspects of quality, such as composition and realism. A key area is improving the **scalability** of Diffusion-Sharpening for high-resolution images and complex generation tasks. This requires addressing computational challenges related to path integration and reward aggregation across many trajectories.  Finally, **in-depth investigations** into the theoretical properties of Diffusion-Sharpening, including convergence rates and generalization capabilities are needed.  This would enhance our understanding and lead to more efficient algorithms.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.12146/x2.png)

> 🔼 This figure illustrates the Diffusion Sharpening framework, showcasing its training, inference, and reward model selection processes.  Panel (i) details the training phase, emphasizing trajectory-level optimization and the use of sharpening loss to refine denoising trajectories. Panel (ii) depicts the inference stage, demonstrating how the sharpened denoising trajectory leads to improved generative output quality. Finally, Panel (iii) highlights the flexibility of the framework by demonstrating the capability to integrate diverse reward models such as CLIP scores, compositional metrics from MLLMs, and human preference models, offering a highly adaptable and configurable fine-tuning method.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of Our Diffusion Sharpening Framework: (i) Training, (ii) Inference, and (iii) Reward Model Selection
> </details>



![](https://arxiv.org/html/2502.12146/x3.png)

> 🔼 Figure 3 presents a qualitative comparison of image generation results obtained using different diffusion sharpening methods and reward models.  The figure is divided into four sections, each corresponding to a specific reward model: CLIP Score, Compositional Reward, MLLM, and Human Preferences. Within each section, multiple images generated by three different methods are displayed: a baseline model and the two proposed Diffusion Sharpening approaches (SFT and RLHF). This allows for a visual comparison of the impact of each method on the generated images under different reward structures. The purpose is to demonstrate the effectiveness of the SFT and RLHF Diffusion Sharpening methods in improving the quality and alignment of generated images according to diverse evaluation criteria.
> <details>
> <summary>read the caption</summary>
> Figure 3: Qualitative results comparing Diffusion Sharpening methods using different reward models. The images show the generated results with CLIP Score, Compositional Reward, MLLM, and Human Preferences as reward models, showcasing the effectiveness of SFT Diffusion Sharpening and RLHF Diffusion Sharpening in diffusion finetuning.
> </details>



![](https://arxiv.org/html/2502.12146/x4.png)

> 🔼 This figure displays the training loss curves for fine-tuning the SDXL model across three different datasets: JourneyDB, Text-to-Image-2M, and Pokemon.  Each curve represents the loss for a different fine-tuning method, comparing the standard baseline method against the SFT (Supervised Fine-Tuning) Diffusion-Sharpening approach.  The x-axis shows the number of training steps, and the y-axis shows the training loss. The plots illustrate how the loss changes over the course of training for each dataset and method, demonstrating the relative convergence speeds and final loss values.
> <details>
> <summary>read the caption</summary>
> Figure 4: SDXL Finetuning Loss across Difference Datasets. Here ”Diffusion-Sharpening” represents SFT Diffusion-Sharpening specifically.
> </details>



![](https://arxiv.org/html/2502.12146/x5.png)

> 🔼 This figure demonstrates the inference efficiency of the proposed Diffusion Sharpening method compared to other sampling trajectory optimization methods.  It shows how inference time (measured in number of function evaluations, or NFEs) impacts the CLIP score, a measure of image-text alignment quality.  Diffusion Sharpening achieves superior performance with significantly fewer NFEs compared to the alternatives like Demon and Inference Scaling, highlighting its computational efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 5: Inference Performance of Diffusion Sharpening.
> </details>



![](https://arxiv.org/html/2502.12146/x6.png)

> 🔼 This figure shows the reward curves during the fine-tuning process for both SFT and RLHF Diffusion Sharpening methods.  The x-axis represents the number of training steps, and the y-axis shows the average reward. The shaded area around the curves represents the standard deviation across multiple sampled trajectories at each step.  The plot visually demonstrates the convergence of both methods towards higher rewards as training progresses, indicating that the models are learning to generate more optimal trajectories.  The curves also show that the RLHF method reaches higher rewards faster than the SFT method.
> <details>
> <summary>read the caption</summary>
> Figure 6: Diffusion Sharpening Fine-tuning Reward Curve.
> </details>



![](https://arxiv.org/html/2502.12146/x7.png)

> 🔼 This figure presents the results of a user study comparing the performance of Diffusion-Sharpening with other methods.  Users were shown pairs of images generated by different models and asked to select their preferred image.  The results are displayed as a bar chart showing the percentage of times each model was chosen as preferred.  This allows for a direct comparison of the visual quality and user preference between Diffusion-Sharpening and other fine-tuning or optimization methods.
> <details>
> <summary>read the caption</summary>
> Figure 7: User Study about Comparision with Other Methods
> </details>



![](https://arxiv.org/html/2502.12146/x8.png)

> 🔼 This figure details the instructions given to a large language model (LLM) to evaluate images generated by a text-to-image model. The LLM is instructed to provide a score (0-10) and justification for five aspects of each image: accuracy to prompt, creativity and originality, visual quality and realism, consistency and cohesion, and emotional or thematic resonance.  The LLM should also provide a final weighted overall score for the image.
> <details>
> <summary>read the caption</summary>
> Figure 8: The detailed prompt for evaluation with the MMLLM Grader.
> </details>



![](https://arxiv.org/html/2502.12146/x9.png)

> 🔼 This figure displays a diverse set of images generated using the SFT Diffusion-Sharpening method. Each image showcases the method's ability to generate high-quality and detailed outputs across a variety of styles, themes, and subject matters.  The images demonstrate a balance between realism and creativity, and suggest the model's skill in achieving high levels of compositional coherence and artistic proficiency. The diverse subjects further demonstrate SFT Diffusion-Sharpening's capabilities for general image generation, rather than specialization in a specific domain or aesthetic.
> <details>
> <summary>read the caption</summary>
> Figure 9: More Qualitative Results for SFT Diffusion-Sharpening.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.1">Number of Steps</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.2.1">CLIP Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.3.1">ImageReward</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.4.1">MLLM</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.1">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.2">0.334</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.3">1.352</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.4">0.864</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3">
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.1">2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.2">0.336</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.3">1.355</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.4">0.891</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.4">
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.4.1.1">3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.4.2.1">0.338</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.3">1.445</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.4.4.1">0.921</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.5">
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.1">4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.2">0.336</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.3.1">1.446</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.4">0.911</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.6">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.6.1">8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.6.2">0.337</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.6.3">1.444</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.6.4">0.919</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study on the effect of varying the number of samples used during training of the Diffusion Sharpening model. It shows how different numbers of samples (1, 2, 3, 4, 8) affect the performance metrics of CLIP score, ImageReward, and MLLM, which evaluate different aspects of image generation quality. The purpose of this experiment is to determine the optimal number of samples that balances performance and computational cost.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance of Different Number of Samples in Training
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.1.1">
<tr class="ltx_tr" id="S4.T3.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1">Number of Steps</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.2.1">CLIP Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.3.1">ImageReward</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.4.1">MLLM</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.1">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.2">0.322</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.3">1.321</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.4">0.897</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.3">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.1">2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2">0.328</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.3">1.357</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.4">0.902</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.4">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.4.1.1">3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.4.2.1">0.338</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.4.3.1">1.445</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.4">0.921</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.5">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.1">4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.2">0.334</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.3">1.442</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.4"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.5.4.1">0.923</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.6">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.6.1">8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.6.2">0.321</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.6.3">1.376</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.6.4">0.912</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study on the effect of varying the number of steps (m) in the training process of the Diffusion-Sharpening model.  It shows how the model's performance, measured by CLIP Score, ImageReward, and MLLM scores, changes as the number of steps increases from 1 to 8. A value of 1 step represents standard end-to-end fine-tuning, while higher numbers of steps incorporate more trajectory-level optimization. The table helps to determine the optimal number of steps for balancing performance and computational cost.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance of Different Number of Steps in Training
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.12146/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12146/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12146/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12146/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12146/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12146/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12146/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12146/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12146/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12146/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12146/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12146/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12146/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12146/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12146/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12146/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}