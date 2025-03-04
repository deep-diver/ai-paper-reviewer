---
title: "Direct Discriminative Optimization: Your Likelihood-Based Visual Generative Model is Secretly a GAN Discriminator"
summary: "Likelihood-based generative models get a GAN-like boost via a new Direct Discriminative Optimization, ditching the joint training complexity."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 NVIDIA Research",]
showSummary: true
date: 2025-03-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.01103 {{< /keyword >}}
{{< keyword icon="writer" >}} Kaiwen Zheng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.01103" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.01103" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.01103/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Likelihood-based generative models**, like diffusion and autoregressive models, have shown great image generation quality. However, maximizing likelihood estimation suffers from a mode-covering tendency, which affects image quality when the model has limited capacity. Traditional GANs, which don't rely on likelihoods, avoid this but are complex to train and integrate with models needing iterative processes. To solve this, **Direct Discriminative Optimization (DDO)** bridges likelihood-based training and GAN objectives for enhanced generative models. 



DDO cleverly parameterizes a discriminator using the **likelihood ratio between a learnable target model and a fixed reference model**. This method avoids joint training of generator and discriminator networks, allowing **direct and efficient fine-tuning of pre-trained models**.  Iterative DDO refinement enhances performance, significantly improving diffusion and autoregressive models on standard benchmarks while simplifying the training process and lowering computational costs.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Direct Discriminative Optimization (DDO) bridges likelihood-based training and GAN objectives. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} DDO parameterizes a discriminator implicitly using likelihood ratios, enabling efficient fine-tuning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Iterative DDO refinement significantly boosts the performance of diffusion and autoregressive models. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it introduces **DDO**, a novel approach that enhances generative model performance without complex GAN setups. **DDO's efficiency and effectiveness** offer new avenues for improving visual generation, potentially impacting various research directions by providing a simpler more effective alternative to refine pre-trained models.

------
#### Visual Insights



![](https://arxiv.org/html/2503.01103/x3.png)

> 🔼 This figure provides a visual illustration of Direct Discriminative Optimization (DDO).  Panel (a) shows a comparison of models trained with maximum likelihood estimation (MLE) versus those trained with DDO. The MLE models show a dispersed density, indicating that they struggle to capture the important modes of the data distribution.  In contrast, the DDO method demonstrates a contrastive force, pulling the model's distribution closer to the true data distribution. Panel (b) highlights how the DDO fine-tuned model significantly improves, concentrating its density more effectively on the main mode of the data, leading to superior sample quality.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Toy example illustrating DDO. (a) Models pretrained via maximum likelihood estimation (MLE) exhibit dispersed density, while DDO imposes contrastive forces toward the data distribution. (b) The finetuned model concentrates better on the main mode.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T1.6.4">
<tr class="ltx_tr" id="S5.T1.6.4.5">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.6.4.5.1" rowspan="2"><span class="ltx_text" id="S5.T1.6.4.5.1.1">Type</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T1.6.4.5.2" rowspan="2"><span class="ltx_text" id="S5.T1.6.4.5.2.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.6.4.5.3" rowspan="2"><span class="ltx_text" id="S5.T1.6.4.5.3.1">NFE</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.6.4.5.4">Uncond</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_tt" id="S5.T1.6.4.5.5">Cond    <span class="ltx_rule" style="width:0.0pt;height:0.0pt;position:relative; bottom:-3.9pt;background:black;display:inline-block;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.4.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.1.1.1">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.3.1.1.1.m1.1"><semantics id="S5.T1.3.1.1.1.m1.1a"><mo id="S5.T1.3.1.1.1.m1.1.1" stretchy="false" xref="S5.T1.3.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.3.1.1.1.m1.1b"><ci id="S5.T1.3.1.1.1.m1.1.1.cmml" xref="S5.T1.3.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.3.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.3.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.2.2.2">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.4.2.2.2.m1.1"><semantics id="S5.T1.4.2.2.2.m1.1a"><mo id="S5.T1.4.2.2.2.m1.1.1" stretchy="false" xref="S5.T1.4.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.4.2.2.2.m1.1b"><ci id="S5.T1.4.2.2.2.m1.1.1.cmml" xref="S5.T1.4.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.4.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.4.2.2.2.m1.1d">↓</annotation></semantics></math> <span class="ltx_rule" style="width:0.0pt;height:11.2pt;background:black;display:inline-block;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.3.3.1" rowspan="7"><span class="ltx_text" id="S5.T1.5.3.3.1.1">GAN<sup class="ltx_sup" id="S5.T1.5.3.3.1.1.1">†</sup></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.5.3.3.2">StyleGAN2-ADA <cite class="ltx_cite ltx_citemacro_citep">(Karras et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib34" title="">2020</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.3.3.3">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.3.3.4">2.92</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.3.3.5">2.42</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.4.6">
<td class="ltx_td ltx_align_left" id="S5.T1.6.4.6.1">StyleGAN-XL <cite class="ltx_cite ltx_citemacro_citep">(Sauer et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib60" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.6.2">1</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.6.3">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.6.4">1.85</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.4.7">
<td class="ltx_td ltx_align_left" id="S5.T1.6.4.7.1">R3GAN <cite class="ltx_cite ltx_citemacro_citep">(Huang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib31" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.7.2">1</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.7.3">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.7.4">1.96</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.4.8">
<td class="ltx_td ltx_align_left" id="S5.T1.6.4.8.1">CTM <cite class="ltx_cite ltx_citemacro_citep">(Kim et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib39" title="">2023b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.8.2">1</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.8.3">1.98</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.8.4">1.73</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.4.9">
<td class="ltx_td ltx_align_left" id="S5.T1.6.4.9.1">GDD-I <cite class="ltx_cite ltx_citemacro_citep">(Zheng &amp; Yang, <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib76" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.9.2">1</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.9.3">1.54</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.9.4">1.44</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.4.10">
<td class="ltx_td ltx_align_left" id="S5.T1.6.4.10.1">CAF <cite class="ltx_cite ltx_citemacro_citep">(Park et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib54" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.10.2">1</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.10.3">1.48</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.10.4">1.39</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.4.4">
<td class="ltx_td ltx_align_left" id="S5.T1.6.4.4.1">SiD<sup class="ltx_sup" id="S5.T1.6.4.4.1.1">2</sup>A <cite class="ltx_cite ltx_citemacro_citep">(Zhou et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib81" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.4.2">1</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.4.3">1.50</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.4.4">1.40</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.4.11">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.6.4.11.1" rowspan="12"><span class="ltx_text" id="S5.T1.6.4.11.1.1">Diffusion</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.6.4.11.2">DDPM <cite class="ltx_cite ltx_citemacro_citep">(Ho et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib29" title="">2020</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.6.4.11.3">1000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.6.4.11.4">3.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.6.4.11.5">-</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.4.12">
<td class="ltx_td ltx_align_left" id="S5.T1.6.4.12.1">iDDPM <cite class="ltx_cite ltx_citemacro_citep">(Nichol &amp; Dhariwal, <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib52" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.12.2">4000</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.12.3">2.90</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.12.4">-</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.4.13">
<td class="ltx_td ltx_align_left" id="S5.T1.6.4.13.1">DDIM <cite class="ltx_cite ltx_citemacro_citep">(Ho et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib29" title="">2020</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.13.2">100</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.13.3">4.16</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.13.4">-</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.4.14">
<td class="ltx_td ltx_align_left" id="S5.T1.6.4.14.1">DPM-Solver <cite class="ltx_cite ltx_citemacro_citep">(Lu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib49" title="">2022b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.14.2">48</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.14.3">2.65</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.14.4">-</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.4.15">
<td class="ltx_td ltx_align_left" id="S5.T1.6.4.15.1">DPM-Solver-v3 <cite class="ltx_cite ltx_citemacro_citep">(Zheng et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib77" title="">2023a</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.15.2">12</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.15.3">2.24</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.15.4">-</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.4.16">
<td class="ltx_td ltx_align_left" id="S5.T1.6.4.16.1">NCSN++ <cite class="ltx_cite ltx_citemacro_citep">(Song et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib62" title="">2021b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.16.2">2000</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.16.3">2.20</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.16.4">-</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.4.17">
<td class="ltx_td ltx_align_left" id="S5.T1.6.4.17.1">LSGM <cite class="ltx_cite ltx_citemacro_citep">(Vahdat et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib65" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.17.2">138</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.17.3">2.10</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.17.4">-</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.4.18">
<td class="ltx_td ltx_align_left" id="S5.T1.6.4.18.1">VDM <cite class="ltx_cite ltx_citemacro_citep">(Kingma et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib43" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.18.2">1000</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.18.3">4.00</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.18.4">-</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.4.19">
<td class="ltx_td ltx_align_left" id="S5.T1.6.4.19.1">Flow Matching <cite class="ltx_cite ltx_citemacro_citep">(Lipman et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib46" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.19.2">142</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.19.3">6.35</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.19.4">-</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.4.20">
<td class="ltx_td ltx_align_left" id="S5.T1.6.4.20.1">i-DODE <cite class="ltx_cite ltx_citemacro_citep">(Zheng et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib78" title="">2023b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.20.2">215</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.20.3">3.76</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.20.4">-</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.4.21">
<td class="ltx_td ltx_align_left" id="S5.T1.6.4.21.1">EDM <cite class="ltx_cite ltx_citemacro_citep">(Karras et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib35" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.21.2">35</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.21.3">1.97</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.21.4">1.79</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.4.22">
<td class="ltx_td ltx_align_left" id="S5.T1.6.4.22.1">+ DG <cite class="ltx_cite ltx_citemacro_citep">(Kim et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib38" title="">2023a</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.22.2">53</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.22.3">1.77</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.22.4">1.64</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.4.23">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.6.4.23.1" rowspan="2"><span class="ltx_text" id="S5.T1.6.4.23.1.1">Ours</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.6.4.23.2">EDM (retested)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.6.4.23.3">35</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.6.4.23.4">1.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.6.4.23.5">1.85</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.4.24">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T1.6.4.24.1">+ DDO</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.6.4.24.2">35</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.6.4.24.3"><span class="ltx_text ltx_font_bold" id="S5.T1.6.4.24.3.1">1.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.6.4.24.4"><span class="ltx_text ltx_font_bold" id="S5.T1.6.4.24.4.1">1.30</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comparison of FID scores achieved by various generative models on the CIFAR-10 dataset.  It breaks down results into unconditional image generation (where the model generates images without any class label guidance) and class-conditional image generation (where the model generates images of a specific class, given a class label).  The table includes both standard generative adversarial networks (GANs) and diffusion models. Notably, it also highlights diffusion models that incorporate auxiliary GAN loss during training, a technique known as diffusion distillation, demonstrating the impact of this approach on model performance.  FID (Fréchet Inception Distance) is a metric used to quantify the quality of generated images by comparing their feature statistics to those of real images; lower FID indicates better image quality. 
> <details>
> <summary>read the caption</summary>
> Table 1: Results on unconditional and class-conditional CIFAR-10. †Including diffusion distillation methods with auxiliary GAN loss.
> </details>





### In-depth insights


#### MLE vs. GANs
**Maximum Likelihood Estimation (MLE)**, while foundational for generative models, suffers from a key limitation: **mode-covering**. This means MLE-trained models tend to spread their probability mass thinly, leading to blurry or overly generic samples, especially with limited model capacity. **Generative Adversarial Networks (GANs)**, on the other hand, excel at producing sharp, realistic samples, theoretically grounded in minimizing Jensen-Shannon divergence or Wasserstein distance. GANs, however, introduce their own challenges, primarily **training instability and mode collapse**, where the generator focuses on a limited subset of the data distribution, sacrificing diversity. Therefore MLE tends to create blurry images, while GANs are too specific and have issues with diversity.

#### Likelihood Ratio
The likelihood ratio is a **fundamental concept** in statistical inference and signal detection theory. It quantifies the relative likelihood of observing the data under two competing hypotheses: the null hypothesis and the alternative hypothesis. A **high likelihood ratio** suggests that the data is more consistent with the alternative hypothesis, while a **low likelihood ratio** favors the null hypothesis. In generative modeling, it plays a crucial role in discriminator design, as the ratio helps to distinguish between the model and data distributions. The **log-likelihood ratio** is often used for computational stability and ease of analysis. Models can be further analyzed and improved using the ratio **as a metric for evaluating** the goodness of fit. However, the accuracy of the ratio depends on the **accuracy of the likelihood estimates** under both hypotheses.

#### Iterative DDO
Iterative DDO, as suggested, likely involves **repeated application of the Direct Discriminative Optimization (DDO) technique to refine a generative model progressively**. This approach could be beneficial because each DDO application nudges the model closer to the true data distribution. It may be necessary because a single application of DDO might not fully overcome limitations of the initial pre-trained model or due to approximations made in the objective. **Self-play**, by using the model refined in the last iteration, can be performed in the iterative process to allow for progressive model refinement. Each round involving only a fraction of pretraining epochs can be efficient. This iterative process can also offer a way to **mitigate the risk of overfitting or instability**, as each round involves only a small adjustment based on the discriminator signal. The framework must converge to an optimal point for the whole iteration to be helpful, therefore it is crucial to keep a closer look to the gradient during the iterative refinement process.

#### Align & Diversity
**Aligning generative models with real-world data distributions is crucial for producing realistic and diverse outputs**. Diversity ensures the model captures the full spectrum of the data, preventing mode collapse and generating varied samples. **Alignment, on the other hand, focuses on matching the generated samples to the true data manifold**, minimizing artifacts and improving fidelity. A successful generative model should strike a balance, generating high-quality, diverse samples that accurately reflect the underlying data distribution, avoiding the generation of unrealistic or out-of-distribution samples. **Techniques like adversarial training and diverse loss functions are employed to encourage both alignment and diversity**, while careful evaluation metrics are needed to assess the model's ability to achieve this delicate equilibrium.

#### Beyond Images
The progression from images signifies a pivotal shift towards more intricate data modalities. **Expanding beyond static visuals** unlocks potential for models to grasp temporal dynamics inherent in videos. The comprehension of motion is paramount, demanding architectures that can discern nuanced changes. Moreover, modalities like audio may enrich the understanding of scenes. **Fusing visual and auditory information** mirrors human cognition, enabling context-aware reasoning. Generative models can extrapolate from existing frames, creating cohesive narratives. **The synthesis of realistic videos** is a computationally intensive task, requiring efficient algorithms. Furthermore, **the ability to generate novel scenes** poses challenges, as it requires an understanding of spatial relationships. Datasets must encompass diversity, reflecting the complexity of real-world phenomena. **Evaluating the fidelity of generated videos** involves subjective assessments and objective metrics. These assessments capture both the visual quality and the semantic coherence of video content. 


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.01103/x4.png)

> 🔼 This figure illustrates the Direct Discriminative Optimization (DDO) framework.  It shows three key components: (1) Two models are involved: a pretrained reference model (θref) that remains frozen during training, and a target model (θ) that is initially the same as the reference model but will be updated.  (2) Data sources consist of real data samples (from pdata) and synthetic samples generated by the reference model (from pθref). (3) The training objective is a GAN loss where the discriminator is implicitly defined by the likelihood ratio of the target and reference models. The goal is to train the target model (θ) to better match the true data distribution (pdata) by discriminating between real and fake samples.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Illustration of DDO. (1) Models. θrefsubscript𝜃ref\theta_{\text{ref}}italic_θ start_POSTSUBSCRIPT ref end_POSTSUBSCRIPT is the (pretrained) reference model frozen during training. θ𝜃\thetaitalic_θ is the learnable model initialized as θrefsubscript𝜃ref\theta_{\text{ref}}italic_θ start_POSTSUBSCRIPT ref end_POSTSUBSCRIPT. (2) Data. Samples from pdatasubscript𝑝datap_{\text{data}}italic_p start_POSTSUBSCRIPT data end_POSTSUBSCRIPT are drawn from the training dataset. Samples from pθrefsubscript𝑝subscript𝜃refp_{\theta_{\text{ref}}}italic_p start_POSTSUBSCRIPT italic_θ start_POSTSUBSCRIPT ref end_POSTSUBSCRIPT end_POSTSUBSCRIPT are generated by the reference model, either offline or online. (3) Objective. The target model θ𝜃\thetaitalic_θ is optimized by applying the GAN discriminator loss with the implicitly parameterized discriminator dθsubscript𝑑𝜃d_{\theta}italic_d start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT to distinguish between real samples from pdatasubscript𝑝datap_{\text{data}}italic_p start_POSTSUBSCRIPT data end_POSTSUBSCRIPT and fake samples from pθrefsubscript𝑝subscript𝜃refp_{\theta_{\text{ref}}}italic_p start_POSTSUBSCRIPT italic_θ start_POSTSUBSCRIPT ref end_POSTSUBSCRIPT end_POSTSUBSCRIPT.
> </details>



![](https://arxiv.org/html/2503.01103/x5.png)

> 🔼 This figure compares Direct Discriminative Optimization (DDO) with Direct Preference Optimization (DPO).  It illustrates the key differences in their methodologies. DPO uses paired human preference data to align a language model with human preferences by expressing the reward model as a likelihood ratio. DDO, in contrast, uses unpaired data from the data distribution and the pretrained model to improve the target model by implicitly parameterizing a discriminator using the likelihood ratio. This allows for direct and efficient finetuning of the pretrained model without the need for additional networks or alternating optimization processes. The figure visually represents these differences and highlights how DDO achieves model alignment using an implicitly defined discriminator.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Comparison with DPO.
> </details>



![](https://arxiv.org/html/2503.01103/extracted/6246558/figures/cifar10-32x32-uncond.jpg)

> 🔼 Figure 4 compares the number of parameters and the inference time required for different image generation methods.  The methods compared include several guidance techniques (Classifier-Free Guidance, Discriminator Guidance, and Autoguidance) as well as the proposed Direct Discriminative Optimization (DDO) method.  The baseline model is also shown.  The evaluation is performed on two different datasets: CIFAR-10 and ImageNet-64, with Discriminator Guidance evaluated on class-conditional CIFAR-10 and Autoguidance on ImageNet-64. This allows for a direct comparison of the computational efficiency and model complexity associated with various approaches to improving image generation quality.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Comparison of model parameter counts and inference time across different guidance methods and DDO. For DG, we measure the statistics on class-conditional CIFAR-10. For AG, we measure the statistics on ImageNet-64.
> </details>



![](https://arxiv.org/html/2503.01103/extracted/6246558/figures/cifar10-32x32-uncond-r12.jpg)

> 🔼 This figure shows the results of applying Direct Discriminative Optimization (DDO) to diffusion models. Specifically, it illustrates (a) the impact of iterative refinement (self-play) on model performance across multiple rounds, and training curves under different hyperparameter settings (b) α and (c) β. The plots in (b) and (c) show how the FID (Fréchet Inception Distance) score changes with the number of iterations during training for different values of α and β, demonstrating the effect of these hyperparameters on model performance.
> <details>
> <summary>read the caption</summary>
> Figure 5:  Illustrations on diffusion models. (a) Multi-round refinement and (b)(c) training curves under different α,β𝛼𝛽\alpha,\betaitalic_α , italic_β.
> </details>



![](https://arxiv.org/html/2503.01103/extracted/6246558/figures/cifar10-32x32-cond.jpg)

> 🔼 Figure 6 presents an analysis of autoregressive models, specifically focusing on the impact of hyperparameters on model performance. Subfigures (a) and (b) show FID (Fréchet Inception Distance) and IS (Inception Score) trade-off curves for different autoregressive models (VAR-d16 and VAR-d30). These curves illustrate the balance between image diversity (IS) and image quality (FID) at varying guidance scales. Subfigure (c) explores the effect of hyperparameter α on model performance, while keeping β constant at 0.02. This analysis reveals how adjustments to α influence the FID and IS, offering insights into optimizing the generation process.
> <details>
> <summary>read the caption</summary>
> Figure 6:  Illustrations on autoregressive models. (a)(b) FID-IS trade-off curves and (c) the impact of α𝛼\alphaitalic_α under β=0.02𝛽0.02\beta=0.02italic_β = 0.02.
> </details>



![](https://arxiv.org/html/2503.01103/extracted/6246558/figures/cifar10-32x32-cond-r16.jpg)

> 🔼 This figure displays several randomly generated images from the Enhanced Diffusion Model (EDM) trained on the CIFAR-10 dataset.  The generation process is unconditional, meaning that no specific class label or other guidance was provided to the model during generation.  The FID score (Fréchet Inception Distance) of 1.97 indicates the model's performance, with lower scores suggesting better image quality and similarity to real images from the CIFAR-10 dataset.
> <details>
> <summary>read the caption</summary>
> Figure 7: Random samples of EDM (CIFAR-10, Unconditional), FID 1.97.
> </details>



![](https://arxiv.org/html/2503.01103/extracted/6246558/figures/img64-s-base-64x64.jpg)

> 🔼 This figure displays 100 randomly generated images from the EDM (Energy-based Diffusion Model) model after being fine-tuned using the Direct Discriminative Optimization (DDO) method.  The model was trained on the CIFAR-10 dataset in an unconditional setting (meaning no class labels were provided during training, allowing the model to generate images from all classes).  The FID (Fréchet Inception Distance) score of 1.38 indicates a high level of image quality and realism, suggesting that the DDO fine-tuning significantly improved the model's generation capabilities compared to the original EDM model.
> <details>
> <summary>read the caption</summary>
> Figure 8: Random samples of EDM + DDO (CIFAR-10, Unconditional), FID 1.38.
> </details>



![](https://arxiv.org/html/2503.01103/extracted/6246558/figures/img64-s-r24-64x64.jpg)

> 🔼 This figure displays random image samples generated by the Enhanced Diffusion Model (EDM) when trained on the CIFAR-10 dataset in a class-conditional setting.  The Fréchet Inception Distance (FID) score achieved by this model is 1.85, indicating its performance in generating realistic and diverse images.  Each image is an example of the model's output for a given class label.
> <details>
> <summary>read the caption</summary>
> Figure 9: Random samples of EDM (CIFAR-10, Class-conditional), FID 1.85.
> </details>



![](https://arxiv.org/html/2503.01103/extracted/6246558/figures/image_grid.jpg)

> 🔼 This figure displays several randomly generated images from a class-conditional generative model trained on the CIFAR-10 dataset. The model is a diffusion model enhanced with Direct Discriminative Optimization (DDO), which aims to improve its performance beyond the limitations of maximum likelihood estimation. The FID (Fréchet Inception Distance) score for these samples is 1.30, indicating high visual quality and diversity.
> <details>
> <summary>read the caption</summary>
> Figure 10: Random samples of EDM + DDO (CIFAR-10, Class-conditional), FID 1.30.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T2.8.4">
<tr class="ltx_tr" id="S5.T2.5.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.5.1.1.2">Type</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T2.5.1.1.3">Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.5.1.1.4">NFE</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.5.1.1.1">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.5.1.1.1.m1.1"><semantics id="S5.T2.5.1.1.1.m1.1a"><mo id="S5.T2.5.1.1.1.m1.1.1" stretchy="false" xref="S5.T2.5.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.5.1.1.1.m1.1b"><ci id="S5.T2.5.1.1.1.m1.1.1.cmml" xref="S5.T2.5.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.5.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.5.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.6.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.2.2.1" rowspan="7"><span class="ltx_text" id="S5.T2.6.2.2.1.1">GAN<sup class="ltx_sup" id="S5.T2.6.2.2.1.1.1">†</sup></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.6.2.2.2">StyleGAN-XL <cite class="ltx_cite ltx_citemacro_citep">(Sauer et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib60" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.2.2.3">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.2.2.4">1.51</td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.4.5">
<td class="ltx_td ltx_align_left" id="S5.T2.8.4.5.1">CTM <cite class="ltx_cite ltx_citemacro_citep">(Kim et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib39" title="">2023b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.5.2">1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.5.3">1.92</td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.4.6">
<td class="ltx_td ltx_align_left" id="S5.T2.8.4.6.1">CAF <cite class="ltx_cite ltx_citemacro_citep">(Park et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib54" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.6.2">1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.6.3">1.69</td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.4.7">
<td class="ltx_td ltx_align_left" id="S5.T2.8.4.7.1">DMD2 <cite class="ltx_cite ltx_citemacro_citep">(Yin et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib74" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.7.2">1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.7.3">1.28</td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.4.8">
<td class="ltx_td ltx_align_left" id="S5.T2.8.4.8.1">PaGoDA <cite class="ltx_cite ltx_citemacro_citep">(Kim et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib40" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.8.2">1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.8.3">1.21</td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.4.9">
<td class="ltx_td ltx_align_left" id="S5.T2.8.4.9.1">GDD-I <cite class="ltx_cite ltx_citemacro_citep">(Zheng &amp; Yang, <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib76" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.9.2">1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.9.3">1.16</td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.3.3">
<td class="ltx_td ltx_align_left" id="S5.T2.7.3.3.1">SiD<sup class="ltx_sup" id="S5.T2.7.3.3.1.1">2</sup>A <cite class="ltx_cite ltx_citemacro_citep">(Zhou et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib81" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.3.2">1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.3.3">1.11</td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.4.10">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.4.10.1" rowspan="13"><span class="ltx_text" id="S5.T2.8.4.10.1.1">Diffusion</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.8.4.10.2">DDPM <cite class="ltx_cite ltx_citemacro_citep">(Ho et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib29" title="">2020</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.4.10.3">250</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.4.10.4">11.0</td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.4.11">
<td class="ltx_td ltx_align_left" id="S5.T2.8.4.11.1">iDDPM <cite class="ltx_cite ltx_citemacro_citep">(Nichol &amp; Dhariwal, <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib52" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.11.2">250</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.11.3">2.92</td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.4.12">
<td class="ltx_td ltx_align_left" id="S5.T2.8.4.12.1">ADM <cite class="ltx_cite ltx_citemacro_citep">(Dhariwal &amp; Nichol, <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib18" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.12.2">250</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.12.3">2.07</td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.4.13">
<td class="ltx_td ltx_align_left" id="S5.T2.8.4.13.1">RIN <cite class="ltx_cite ltx_citemacro_citep">(Jabri et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib32" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.13.2">1000</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.13.3">1.23</td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.4.14">
<td class="ltx_td ltx_align_left" id="S5.T2.8.4.14.1">EDM <cite class="ltx_cite ltx_citemacro_citep">(Karras et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib35" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.14.2">511</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.14.3">1.36</td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.4.15">
<td class="ltx_td ltx_align_left" id="S5.T2.8.4.15.1">VDM++ <cite class="ltx_cite ltx_citemacro_citep">(Kingma &amp; Gao, <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib41" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.15.2">511</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.15.3">1.43</td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.4.16">
<td class="ltx_td ltx_align_left" id="S5.T2.8.4.16.1">DisCo-Diff <cite class="ltx_cite ltx_citemacro_citep">(Xu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib73" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.16.2">623</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.16.3">1.22</td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.4.17">
<td class="ltx_td ltx_align_left" id="S5.T2.8.4.17.1">EDM2-S <cite class="ltx_cite ltx_citemacro_citep">(Karras et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib37" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.17.2">63</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.17.3">1.58</td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.4.18">
<td class="ltx_td ltx_align_left" id="S5.T2.8.4.18.1">+ CFG</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.18.2">126</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.18.3">1.48</td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.4.19">
<td class="ltx_td ltx_align_left" id="S5.T2.8.4.19.1">+ AG <cite class="ltx_cite ltx_citemacro_citep">(Karras et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib36" title="">2024a</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.19.2">126</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.19.3">1.01</td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.4.20">
<td class="ltx_td ltx_align_left" id="S5.T2.8.4.20.1">EDM2-M</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.20.2">63</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.20.3">1.43</td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.4.21">
<td class="ltx_td ltx_align_left" id="S5.T2.8.4.21.1">EDM2-L</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.21.2">63</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.21.3">1.33</td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.4.22">
<td class="ltx_td ltx_align_left" id="S5.T2.8.4.22.1">EDM2-XL</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.22.2">63</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.22.3">1.33</td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.4.4">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.8.4.4.2" rowspan="2"><span class="ltx_text" id="S5.T2.8.4.4.2.1">Ours</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.8.4.4.1">EDM2-S (retested<sup class="ltx_sup" id="S5.T2.8.4.4.1.1">‡</sup>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.4.4.3">63</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.4.4.4">1.60</td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.4.23">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T2.8.4.23.1">+ DDO</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.8.4.23.2">63</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.8.4.23.3"><span class="ltx_text ltx_font_bold" id="S5.T2.8.4.23.3.1">0.97</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the Fréchet Inception Distance (FID) scores achieved by various generative models on the class-conditional ImageNet-64 dataset.  The models compared include several state-of-the-art GANs and diffusion models, both with and without additional techniques like classifier-free guidance (CFG) or discriminator guidance (DG).  Some models also incorporate diffusion distillation with an auxiliary GAN loss.  A key observation noted is the importance of strict class balance for accurate FID calculation on ImageNet-64, with a modified sampling process employed for improved results.
> <details>
> <summary>read the caption</summary>
> Table 2: Results on class-conditional ImageNet-64. †Including diffusion distillation methods with auxiliary GAN loss. ‡We find strict class balance crucial for FID on ImageNet and slightly modify the original sampling script to ensure this.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.4.2">
<tr class="ltx_tr" id="S5.T3.4.2.3">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.4.2.3.1" rowspan="2"><span class="ltx_text" id="S5.T3.4.2.3.1.1">Type</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T3.4.2.3.2" rowspan="2"><span class="ltx_text" id="S5.T3.4.2.3.2.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T3.4.2.3.3">w/o G</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_tt" id="S5.T3.4.2.3.4">w/ G    <span class="ltx_rule" style="width:0.0pt;height:0.0pt;position:relative; bottom:-3.9pt;background:black;display:inline-block;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.2.2.3">NFE</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.1.1.1">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.3.1.1.1.m1.1"><semantics id="S5.T3.3.1.1.1.m1.1a"><mo id="S5.T3.3.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.3.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.3.1.1.1.m1.1b"><ci id="S5.T3.3.1.1.1.m1.1.1.cmml" xref="S5.T3.3.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.2.2.2">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.4.2.2.2.m1.1"><semantics id="S5.T3.4.2.2.2.m1.1a"><mo id="S5.T3.4.2.2.2.m1.1.1" stretchy="false" xref="S5.T3.4.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.4.2.2.2.m1.1b"><ci id="S5.T3.4.2.2.2.m1.1.1.cmml" xref="S5.T3.4.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.4.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.4.2.2.2.m1.1d">↓</annotation></semantics></math> <span class="ltx_rule" style="width:0.0pt;height:11.2pt;background:black;display:inline-block;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.2.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.2.4.1" rowspan="3"><span class="ltx_text" id="S5.T3.4.2.4.1.1">GAN</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.4.2.4.2">BigGAN <cite class="ltx_cite ltx_citemacro_citep">(Brock, <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib9" title="">2018</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.2.4.3">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.2.4.4">6.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.2.4.5">-</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.2.5">
<td class="ltx_td ltx_align_left" id="S5.T3.4.2.5.1">GigaGAN <cite class="ltx_cite ltx_citemacro_citep">(Kang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib33" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.5.2">1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.5.3">3.45</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.5.4">-</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.2.6">
<td class="ltx_td ltx_align_left" id="S5.T3.4.2.6.1">StyleGAN-XL <cite class="ltx_cite ltx_citemacro_citep">(Sauer et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib60" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.6.2">1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.6.3">2.30</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.6.4">-</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.2.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.2.7.1" rowspan="4"><span class="ltx_text" id="S5.T3.4.2.7.1.1">Diffusion</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.4.2.7.2">ADM <cite class="ltx_cite ltx_citemacro_citep">(Dhariwal &amp; Nichol, <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib18" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.2.7.3">250</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.2.7.4">10.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.2.7.5">4.59</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.2.8">
<td class="ltx_td ltx_align_left" id="S5.T3.4.2.8.1">LDM-4 <cite class="ltx_cite ltx_citemacro_citep">(Rombach et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib58" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.8.2">250</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.8.3">10.56</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.8.4">3.60</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.2.9">
<td class="ltx_td ltx_align_left" id="S5.T3.4.2.9.1">DiT-XL/2 <cite class="ltx_cite ltx_citemacro_citep">(Peebles &amp; Xie, <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib55" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.9.2">250</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.9.3">9.62</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.9.4">2.27</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.2.10">
<td class="ltx_td ltx_align_left" id="S5.T3.4.2.10.1">SiT-XL <cite class="ltx_cite ltx_citemacro_citep">(Ma et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib51" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.10.2">250</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.10.3">8.3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.10.4">2.06</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.2.11">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.2.11.1" rowspan="6"><span class="ltx_text" id="S5.T3.4.2.11.1.1">Autoregressive</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.4.2.11.2">VQGAN <cite class="ltx_cite ltx_citemacro_citep">(Esser et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib21" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.2.11.3">256</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.2.11.4">15.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.2.11.5">-</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.2.12">
<td class="ltx_td ltx_align_left" id="S5.T3.4.2.12.1">ViT-VQGAN <cite class="ltx_cite ltx_citemacro_citep">(Yu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib75" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.12.2">1024</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.12.3">4.17</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.12.4">-</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.2.13">
<td class="ltx_td ltx_align_left" id="S5.T3.4.2.13.1">LlamaGen-3B <cite class="ltx_cite ltx_citemacro_citep">(Sun et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib63" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.13.2">256</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.13.3">13.58</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.13.4">3.05</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.2.14">
<td class="ltx_td ltx_align_left" id="S5.T3.4.2.14.1">Open-MAGVIT2-XL <cite class="ltx_cite ltx_citemacro_citep">(Luo et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib50" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.14.2">256</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.14.3">9.63</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.14.4">2.33</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.2.15">
<td class="ltx_td ltx_align_left" id="S5.T3.4.2.15.1">VAR-d16 <cite class="ltx_cite ltx_citemacro_citep">(Tian et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib64" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.15.2">10</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.15.3">3.62</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.15.4">3.30</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.2.16">
<td class="ltx_td ltx_align_left" id="S5.T3.4.2.16.1">VAR-d30</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.16.2">10</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.16.3">2.17</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.16.4">1.90</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.2.17">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.4.2.17.1" rowspan="5"><span class="ltx_text" id="S5.T3.4.2.17.1.1">Ours</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.4.2.17.2">VAR-d16 (w/o sampling tricks)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.2.17.3">10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.2.17.4">11.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.2.17.5">3.71</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.2.18">
<td class="ltx_td ltx_align_left" id="S5.T3.4.2.18.1">+ DDO</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.18.2">10</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.18.3"><span class="ltx_text ltx_font_bold" id="S5.T3.4.2.18.3.1">3.12</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.18.4"><span class="ltx_text ltx_font_bold" id="S5.T3.4.2.18.4.1">2.54</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.2.19">
<td class="ltx_td ltx_align_left" id="S5.T3.4.2.19.1">VAR-d30 (w/o sampling tricks)</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.19.2">10</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.19.3">4.74</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.19.4">1.92</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.2.20">
<td class="ltx_td ltx_align_left" id="S5.T3.4.2.20.1">+ CCA <cite class="ltx_cite ltx_citemacro_citep">(Chen et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01103v1#bib.bib13" title="">2024a</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.20.2">10</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.20.3">2.54</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.2.20.4">-</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.2.21">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T3.4.2.21.1">+ DDO</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.4.2.21.2">10</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.4.2.21.3"><span class="ltx_text ltx_font_bold" id="S5.T3.4.2.21.3.1">1.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.4.2.21.4"><span class="ltx_text ltx_font_bold" id="S5.T3.4.2.21.4.1">1.73</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments conducted on the ImageNet 256x256 dataset using class-conditional models.  It compares the performance of various generative models, specifically focusing on the Fréchet Inception Distance (FID) metric.  The models are categorized into GANs, Diffusion models, and Autoregressive models.  The table shows FID scores achieved with and without the use of classifier-free guidance (CFG) and other guidance methods, denoted as 'G'. The number of function evaluations (NFE) required during inference is also reported; note that the NFE is doubled when guidance techniques are used.
> <details>
> <summary>read the caption</summary>
> Table 3: Results on class-conditional ImageNet 256×\times× 256. “G” denotes guidance, including both classifier guidance and CFG. We report the NFE without guidance, which is doubled with guidance.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.01103/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01103/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01103/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01103/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01103/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01103/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01103/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01103/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01103/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01103/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01103/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01103/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01103/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01103/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01103/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01103/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01103/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01103/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01103/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01103/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}