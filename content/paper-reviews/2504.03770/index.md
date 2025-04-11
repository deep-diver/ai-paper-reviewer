---
title: "JailDAM: Jailbreak Detection with Adaptive Memory for Vision-Language Model"
summary: "Jailbreak detection in vision-language models via adaptive memory network, enhancing accuracy and speed."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Theory", "Safety", "🏢 University of Southern California",]
showSummary: true
date: 2025-04-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.03770 {{< /keyword >}}
{{< keyword icon="writer" >}} Yi Nian et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-08 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.03770" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.03770" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.03770/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

MLLMs are at risk of generating harmful content through jailbreak attacks, where intentional manipulations bypass safety mechanisms. Existing jailbreak detection methods face challenges, such as **reliance on model hidden states, computational overhead from uncertainty-based analysis, and the requirement of fully labeled harmful datasets**, which are often scarce in real-world settings. Addressing these issues is critical to ensuring the responsible deployment of MLLMs. 



This paper introduces JAILDAM, a **test-time adaptive framework** that uses a memory-based approach guided by policy-driven unsafe knowledge representations. This framework improves generalization to unseen jailbreak strategies while maintaining efficiency. JAILDAM delivers **state-of-the-art performance in harmful content detection**, improving both accuracy and speed. It ensures robust handling of new jailbreak strategies that emerge post-deployment.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces JAILDAM, a black-box jailbreak detection framework for vision-language models, enhancing accuracy and speed. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Employs policy-driven memory and test-time adaptation, eliminating reliance on labeled harmful data. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Achieves state-of-the-art performance on VLM jailbreak benchmarks, improving detection accuracy and efficiency. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research addresses the critical issue of **jailbreak attacks in MLLMs**, providing a novel defense mechanism that enhances model robustness and promotes responsible AI development. It has a potential impact on safety issues and opens new avenues for further investigation in defense methods.

------
#### Visual Insights



![](https://arxiv.org/html/2504.03770/x1.png)

> 🔼 Figure 1 illustrates the JailDAM framework's two main stages: training and inference.  During training (A), safe text and image data are encoded using CLIP, and attention scores are calculated against a memory bank representing unsafe concepts (derived from safety guidelines, not explicit harmful data). An autoencoder learns to reconstruct these features, associating safe inputs with the unsafe concepts in the memory bank. In the inference stage (B), a new input undergoes the same CLIP encoding and attention score calculation. The autoencoder reconstructs the input features, and a high reconstruction error suggests potential harm. If the input's similarity to the memory bank is low, the least-frequently used unsafe concept in the memory bank is updated with a residual representation of the input, allowing the system to adapt to previously unseen attack strategies.
> <details>
> <summary>read the caption</summary>
> Figure 1: JailDAM overview (see §3). (A) Training: We encode safe text and images with CLIP, computing attention scores against a policy-driven unsafe memory bank. An autoencoder learns to reconstruct these features, linking benign inputs to unsafe concepts—without explicit harmful data. (B) Inference: For each new input, we compute attention scores and measure the autoencoder’s reconstruction error; high error indicates potential harm. If similarity to the memory bank is low, JailDAM updates the least-used concept with a residual representation, adapting to new attacks over time.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.1.1">
<tr class="ltx_tr" id="S1.T1.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S1.T1.1.1.1.1">
<span class="ltx_text" id="S1.T1.1.1.1.1.1"></span> <span class="ltx_text" id="S1.T1.1.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.1.1.2.1">
<span class="ltx_tr" id="S1.T1.1.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.1.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.1.1.2.1.1.1.1">Detection Method</span></span></span>
</span></span><span class="ltx_text" id="S1.T1.1.1.1.1.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.1.2.1">Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.1.1.1.3">
<span class="ltx_text" id="S1.T1.1.1.1.3.1"></span><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.1.3.2"> <span class="ltx_text" id="S1.T1.1.1.1.3.2.1">
<span class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.1.3.2.1.1">
<span class="ltx_tr" id="S1.T1.1.1.1.3.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.1.3.2.1.1.1.1">Training</span></span>
<span class="ltx_tr" id="S1.T1.1.1.1.3.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.1.3.2.1.1.2.1">Cost</span></span>
</span></span><span class="ltx_text" id="S1.T1.1.1.1.3.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.1.1.1.4">
<span class="ltx_text" id="S1.T1.1.1.1.4.1"></span><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.1.4.2"> <span class="ltx_text" id="S1.T1.1.1.1.4.2.1">
<span class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.1.4.2.1.1">
<span class="ltx_tr" id="S1.T1.1.1.1.4.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.1.4.2.1.1.1.1">Model</span></span>
<span class="ltx_tr" id="S1.T1.1.1.1.4.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.1.4.2.1.1.2.1">Agnostic</span></span>
</span></span><span class="ltx_text" id="S1.T1.1.1.1.4.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.1.1.1.5">
<span class="ltx_text" id="S1.T1.1.1.1.5.1"></span><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.1.5.2"> <span class="ltx_text" id="S1.T1.1.1.1.5.2.1">
<span class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.1.5.2.1.1">
<span class="ltx_tr" id="S1.T1.1.1.1.5.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.1.5.2.1.1.1.1">Zero Harmful</span></span>
<span class="ltx_tr" id="S1.T1.1.1.1.5.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.1.5.2.1.1.2.1">Training Data</span></span>
</span></span><span class="ltx_text" id="S1.T1.1.1.1.5.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.1.1.1.6">
<span class="ltx_text" id="S1.T1.1.1.1.6.1"></span><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.1.6.2"> <span class="ltx_text" id="S1.T1.1.1.1.6.2.1">
<span class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.1.6.2.1.1">
<span class="ltx_tr" id="S1.T1.1.1.1.6.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.1.6.2.1.1.1.1">Black-box</span></span>
<span class="ltx_tr" id="S1.T1.1.1.1.6.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.1.6.2.1.1.2.1">Compatible</span></span>
</span></span><span class="ltx_text" id="S1.T1.1.1.1.6.2.2"></span></span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S1.T1.1.1.2.1">Llavaguard <cite class="ltx_cite ltx_citemacro_citep">(Helff et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.03770v1#bib.bib8" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.2.2">Fine-tuning-based</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.2.3">High</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.2.4">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.2.5">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.2.6">✗</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.1.1.3.1">VLGuard <cite class="ltx_cite ltx_citemacro_citep">(Zong et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.03770v1#bib.bib48" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.3.2">Fine-tuning-based</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.3.3">High</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.3.4">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.3.5">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.3.6">✗</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.1.1.4.1">JailGuard <cite class="ltx_cite ltx_citemacro_citep">(Zhang et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.03770v1#bib.bib45" title="">2023a</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.4.2">Uncertainty-based</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.4.3">Zero</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.4.4">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.4.5">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.4.6">✗</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.1.1.5.1">HiddenDetect <cite class="ltx_cite ltx_citemacro_citep">(Jiang et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.03770v1#bib.bib12" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.5.2">Hidden states-based</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.5.3">Zero</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.5.4">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.5.5">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.5.6">✗</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.1.1.6.1">NEARSIDE <cite class="ltx_cite ltx_citemacro_citep">(Huang et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.03770v1#bib.bib10" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.6.2">Hidden states-based</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.6.3">Medium</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.6.4">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.6.5">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.6.6">✗</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.1.1.7.1">GradSafe <cite class="ltx_cite ltx_citemacro_citep">(Xie et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.03770v1#bib.bib36" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.7.2">Hidden states-based</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.7.3">Zero</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.7.4">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.7.5">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.7.6">✗</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.1.1.8.1"><span class="ltx_text ltx_font_smallcaps" id="S1.T1.1.1.8.1.1">JailDAM</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.8.2">Adaptive Memory</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.8.3">Low</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.8.4">✔</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.8.5">✔</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.8.6">✔</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.9">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt ltx_border_tt" id="S1.T1.1.1.9.1">
<span class="ltx_text" id="S1.T1.1.1.9.1.1"></span> <span class="ltx_text" id="S1.T1.1.1.9.1.2">
<span class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.9.1.2.1">
<span class="ltx_tr" id="S1.T1.1.1.9.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.9.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.9.1.2.1.1.1.1">Defense Method</span></span></span>
</span></span><span class="ltx_text" id="S1.T1.1.1.9.1.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S1.T1.1.1.9.2"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.9.2.1">Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S1.T1.1.1.9.3">
<span class="ltx_text" id="S1.T1.1.1.9.3.1"></span><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.9.3.2"> <span class="ltx_text" id="S1.T1.1.1.9.3.2.1">
<span class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.9.3.2.1.1">
<span class="ltx_tr" id="S1.T1.1.1.9.3.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.9.3.2.1.1.1.1">Training</span></span>
<span class="ltx_tr" id="S1.T1.1.1.9.3.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.9.3.2.1.1.2.1">Cost</span></span>
</span></span><span class="ltx_text" id="S1.T1.1.1.9.3.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S1.T1.1.1.9.4">
<span class="ltx_text" id="S1.T1.1.1.9.4.1"></span><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.9.4.2"> <span class="ltx_text" id="S1.T1.1.1.9.4.2.1">
<span class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.9.4.2.1.1">
<span class="ltx_tr" id="S1.T1.1.1.9.4.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.9.4.2.1.1.1.1">Model</span></span>
<span class="ltx_tr" id="S1.T1.1.1.9.4.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.9.4.2.1.1.2.1">Agnostic</span></span>
</span></span><span class="ltx_text" id="S1.T1.1.1.9.4.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S1.T1.1.1.9.5">
<span class="ltx_text" id="S1.T1.1.1.9.5.1"></span><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.9.5.2"> <span class="ltx_text" id="S1.T1.1.1.9.5.2.1">
<span class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.9.5.2.1.1">
<span class="ltx_tr" id="S1.T1.1.1.9.5.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.9.5.2.1.1.1.1">Zero Harmful</span></span>
<span class="ltx_tr" id="S1.T1.1.1.9.5.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.9.5.2.1.1.2.1">Training Data</span></span>
</span></span><span class="ltx_text" id="S1.T1.1.1.9.5.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S1.T1.1.1.9.6">
<span class="ltx_text" id="S1.T1.1.1.9.6.1"></span><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.9.6.2"> <span class="ltx_text" id="S1.T1.1.1.9.6.2.1">
<span class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.9.6.2.1.1">
<span class="ltx_tr" id="S1.T1.1.1.9.6.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.9.6.2.1.1.1.1">Black-box</span></span>
<span class="ltx_tr" id="S1.T1.1.1.9.6.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.9.6.2.1.1.2.1">Compatible</span></span>
</span></span><span class="ltx_text" id="S1.T1.1.1.9.6.2.2"></span></span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.10">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S1.T1.1.1.10.1">FSD <cite class="ltx_cite ltx_citemacro_citep">(Gong et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.03770v1#bib.bib6" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.10.2">Prompt-based</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.10.3">Zero</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.10.4">✔</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.10.5">✔</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.10.6">✔</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.1.1.11.1">AdaShield-S <cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.03770v1#bib.bib32" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.11.2">Prompt-based</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.11.3">Zero</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.11.4">✔</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.11.5">✔</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.11.6">✔</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.1.1.12.1">Adashield-A <cite class="ltx_cite ltx_citemacro_citep">(Gong et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.03770v1#bib.bib6" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.12.2">Prompt-based</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.12.3">Medium</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.12.4">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.12.5">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.12.6">✔</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.13">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S1.T1.1.1.13.1"><span class="ltx_text ltx_font_smallcaps" id="S1.T1.1.1.13.1.1">JailDAM-D</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.1.1.13.2">Memory+Prompt</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.1.1.13.3">Low</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.1.1.13.4">✔</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.1.1.13.5">✔</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.1.1.13.6">✔</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares the proposed JailDAM method with existing jailbreak detection and defense methods for vision-language models (VLMs).  It contrasts the methods across several key aspects:  The type of method used (e.g., fine-tuning, uncertainty-based), the computational cost involved (low, medium, high), whether the model's internal workings are required (black-box compatible or not), whether agnostic training is possible, and the quantity of harmful training data needed. This allows for a comprehensive comparison of JailDAM's strengths and weaknesses relative to state-of-the-art techniques.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of our work and existing works
> </details>





### In-depth insights


#### Adaptive Memory
Adaptive memory, as a concept, suggests a system that dynamically adjusts its parameters or content in response to new data or experiences. In the context of AI safety and jailbreak detection, this could involve a memory module that **learns and updates representations of harmful concepts** over time, improving the system's ability to recognize and block malicious inputs. The adaptation could occur at different levels, such as adjusting the weights assigned to different memory entries or adding new entries to represent novel attack patterns. **The ability to adapt is crucial** for maintaining robustness against evolving threats, as attackers continuously devise new ways to bypass existing defenses.

#### Jailbreak Detect
**Jailbreak detection** is a crucial area in AI safety, aiming to identify inputs that bypass a model's safety mechanisms. This is especially important for vision-language models (VLMs), where malicious actors may use crafted images or text prompts to elicit harmful responses. Effective jailbreak detection systems should be **robust**, **efficient**, and **generalizable**, capable of identifying a wide range of attack strategies without relying on model internals. **Adaptive mechanisms** are essential to keep up with the evolving landscape of jailbreak techniques, and recent research focuses on developing methods that can detect and mitigate these attacks without requiring extensive labeled data or computational resources. 

#### Vision Robustness
**Vision robustness** is critical in vision-language models (MLLMs) for real-world deployment, ensuring consistent performance despite variations in input image quality, style, or adversarial perturbations. Achieving it requires models to be **invariant to irrelevant image transformations** and **sensitive to subtle but important details**. Evaluating vision robustness involves testing models against datasets with corrupted images, stylistic variations, and adversarial attacks. Improving it necessitates techniques like **adversarial training**, **data augmentation with diverse image transformations**, and **architectural designs that promote feature invariance**, such as contrastive learning and self-supervised pre-training. It is a key property for robust MLLMs.

#### Black-box safe?
**Black-box safety** in vision-language models (MLLMs) is crucial, as many deployed systems only offer input-output access. JAILDAM addresses this by focusing on a **detection framework** that doesn't rely on model internals, ensuring applicability to proprietary models. This contrasts with methods needing hidden states, which are impractical for real-world scenarios. JAILDAM leverages a **policy-driven memory approach**, adapting to new attacks without explicit exposure to harmful data, further enhancing its robustness in black-box settings. This design choice ensures **broad applicability** across diverse MLLM deployments, making it a practical solution for safeguarding against jailbreak attempts.

#### Policy-driven
**Policy-driven approaches** are crucial for ensuring AI systems align with ethical and societal values. They enable the **dynamic adaptation of AI behavior** based on predefined guidelines, addressing the limitations of static, data-dependent training. By incorporating policies, AI can navigate complex scenarios and make decisions consistent with human intentions, even when faced with unseen data or evolving circumstances. This approach fosters **transparency and accountability**, allowing for the specification of acceptable and unacceptable actions, ultimately promoting responsible AI deployment.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.03770/x2.png)

> 🔼 This figure illustrates the process of creating a memory bank of unsafe concepts, which is a crucial component of the JAILDAM framework.  The process begins with utilizing GPT-40, a large language model, to interpret and generate structured representations of unsafe knowledge based on provided harmful content policies.  These policies define various categories of harmful content (e.g., hate speech, violence, illegal activities). GPT-40 extracts key concepts within each category, focusing on crucial features, broader categories (superclasses), and typical contexts where such harmful content might appear. These extracted concepts form the memory bank, which serves as a reference point during the detection of potential jailbreaks.
> <details>
> <summary>read the caption</summary>
> Figure 2: The pipeline of concepts and memory bank generation by GPT-4o.
> </details>



![](https://arxiv.org/html/2504.03770/x3.png)

> 🔼 JAILDAM-D is a defense framework composed of two stages. First, the input is evaluated by JAILDAM to determine if it contains harmful content or attack patterns. If harmful content is detected, a defense prompt is automatically added before the original query to warn the target VLM of the potential risks and instruct it to refuse to respond to the harmful request. If the input is determined to be benign, it proceeds to the target VLM without any modifications, allowing the model to respond normally.
> <details>
> <summary>read the caption</summary>
> Figure 3: JailDAM-D (see §3.6), an end-to-end jailbreak defense framework
> </details>



![](https://arxiv.org/html/2504.03770/x4.png)

> 🔼 This radar chart visualizes the performance of four attack defense methods (Vanilla, FSD, AdaShield-S, AdaShield-A, and JailDAM-D) across four different Vision-Language Models (VLMs): LLaVA-1.5-7B, LLaVA-1.5-13B, CogVLM-chat, and GPT40-mini.  Each axis represents a different dataset (MM-SafetyBench, FigStep, JailBreakV-28K) and shows the F1-score achieved by each defense method on that dataset.  The chart effectively compares the overall effectiveness of the defense methods in mitigating jailbreak attacks, revealing that JailDAM-D generally outperforms the others, with the exception of the CogVLM-chat model tested on the JailBreakV-28K dataset where AdaShield-A achieves a perfect score.
> <details>
> <summary>read the caption</summary>
> Figure 4: The radar diagrams about F1-score of 4 attack defense methods on 4 VLMs. JailDAM-D outperforms other methods in most settings, except on CogVLM-chat with JailBreakV-28K, where Adashield-A (Wang et al., 2024) achieves a perfect score.
> </details>



![](https://arxiv.org/html/2504.03770/x5.png)

> 🔼 This figure presents a comparison of the computational time required for model training, detection task inference, and defense task inference across various methods.  The methods compared are Adashield-S (A-S), Adashield-A (A-A), JailGuard (JG), HiddenDetect (HD), GradSafe (GS), LlavaGuard (LG), and VLGuard (VG).  The figure uses a logarithmic scale to visualize the wide range of time costs, effectively showing how some methods are orders of magnitude more efficient than others in specific tasks.  The bars visually represent the time spent on each stage for each method, providing a direct comparison of their computational efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 5: Time cost on model training, detection task inference, and defense task inference. In here, A-S: Adashield-S, A-A: Adashield-A, JG: JailGuard, HD: HiddenDetect, GS: GradSafe,LG: LlavaGuard, VG: VLGuard
> </details>



![](https://arxiv.org/html/2504.03770/x6.png)

> 🔼 This figure shows the Area Under the Receiver Operating Characteristic curve (AUROC) for the jailbreak detection task using different concept pool sizes.  The x-axis represents the number of concepts per harmful category in the memory bank used by the model, ranging from 5 to 100. The y-axis shows the AUROC, a metric that measures the model's ability to distinguish between safe and harmful inputs. The results are shown separately for three datasets: MM-SafetyBench, FigStep, and JailBreakV-28K, illustrating how the performance varies with different concept pool sizes and datasets.  The figure suggests an optimal size of concepts per harmful category balancing model performance and efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 6: AUROC of detection task on different concept sizes
> </details>



![](https://arxiv.org/html/2504.03770/x7.png)

> 🔼 This prompt instructs GPT-40 to generate a list of 40-50 key concepts for a given harmful content category.  These concepts should be concise (1-4 words) and fall into three categories: Important Features (key characteristics), Superclasses (higher-level categories the issue belongs to), and Commonly Seen Contexts (typical scenarios where this issue appears).  The prompt provides an example output format to ensure consistency and clarity.
> <details>
> <summary>read the caption</summary>
> Figure 7: Concepts Generation Prompt
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<td class="ltx_td ltx_border_r" id="S4.T2.1.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.1.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_text" id="S4.T2.1.1.1.2.1"></span><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.2.2"> <span class="ltx_text" id="S4.T2.1.1.1.2.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.1.2.2.1.1">
<span class="ltx_tr" id="S4.T2.1.1.1.2.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.2.2.1.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">Actually</span></span>
<span class="ltx_tr" id="S4.T2.1.1.1.2.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.2.2.1.1.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">Harmful</span></span>
</span></span><span class="ltx_text" id="S4.T2.1.1.1.2.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_text" id="S4.T2.1.1.1.3.1"></span><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.3.2"> <span class="ltx_text" id="S4.T2.1.1.1.3.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.1.3.2.1.1">
<span class="ltx_tr" id="S4.T2.1.1.1.3.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.3.2.1.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">Actually</span></span>
<span class="ltx_tr" id="S4.T2.1.1.1.3.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.3.2.1.1.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">Benign</span></span>
</span></span><span class="ltx_text" id="S4.T2.1.1.1.3.2.2"></span></span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_text" id="S4.T2.1.1.2.1.1"></span><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.2.1.2"> <span class="ltx_text" id="S4.T2.1.1.2.1.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.2.1.2.1.1">
<span class="ltx_tr" id="S4.T2.1.1.2.1.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.2.1.2.1.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">Predict as</span></span>
<span class="ltx_tr" id="S4.T2.1.1.2.1.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.2.1.2.1.1.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">Harmful</span></span>
</span></span><span class="ltx_text" id="S4.T2.1.1.2.1.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.2.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">TP</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">FP</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.3.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_text" id="S4.T2.1.1.3.1.1"></span><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.3.1.2"> <span class="ltx_text" id="S4.T2.1.1.3.1.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.3.1.2.1.1">
<span class="ltx_tr" id="S4.T2.1.1.3.1.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.3.1.2.1.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">Predict as</span></span>
<span class="ltx_tr" id="S4.T2.1.1.3.1.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.3.1.2.1.1.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">Benign</span></span>
</span></span><span class="ltx_text" id="S4.T2.1.1.3.1.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.3.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">FN</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">TN</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a confusion matrix used to evaluate the performance of the proposed method in both attack detection and attack defense tasks.  The rows represent the model's predictions (Harmful or Benign), while the columns represent the actual labels. This allows for the calculation of key metrics such as True Positives (TP), True Negatives (TN), False Positives (FP), and False Negatives (FN), which are then used to assess the model's accuracy and effectiveness in identifying and mitigating harmful content.
> <details>
> <summary>read the caption</summary>
> Table 2: Confusion Matrix for Attack Detection and Attack Defense.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.8.8">
<tr class="ltx_tr" id="S4.T3.8.8.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T3.8.8.9.1" rowspan="2" style="padding:2.5pt 0.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.9.1.1">Method</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" id="S4.T3.8.8.9.2" rowspan="2" style="padding:2.5pt 0.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.9.2.1">Model</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S4.T3.8.8.9.3" style="padding:2.5pt 0.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.9.3.1">Overall</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S4.T3.8.8.9.4" style="padding:2.5pt 0.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.9.4.1">MM-SafetyBench</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S4.T3.8.8.9.5" style="padding:2.5pt 0.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.9.5.1">FigStep</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S4.T3.8.8.9.6" style="padding:2.5pt 0.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.9.6.1">JailBreakV-28K</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.1.1" style="padding:2.5pt 0.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1">AUROC(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.2.2.2.2" style="padding:2.5pt 0.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.2.2.1">AUPRC(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.1.m1.1"><semantics id="S4.T3.2.2.2.2.1.m1.1a"><mo id="S4.T3.2.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.1.m1.1b"><ci id="S4.T3.2.2.2.2.1.m1.1.1.cmml" xref="S4.T3.2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.1.m1.1d">↑</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.3.3.3.3" style="padding:2.5pt 0.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.3.3.1">AUROC(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.1.m1.1"><semantics id="S4.T3.3.3.3.3.1.m1.1a"><mo id="S4.T3.3.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T3.3.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.1.m1.1b"><ci id="S4.T3.3.3.3.3.1.m1.1.1.cmml" xref="S4.T3.3.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.1.m1.1d">↑</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.4.4.4.4" style="padding:2.5pt 0.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.4.4.1">AUPRC(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.4.1.m1.1"><semantics id="S4.T3.4.4.4.4.1.m1.1a"><mo id="S4.T3.4.4.4.4.1.m1.1.1" stretchy="false" xref="S4.T3.4.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.4.1.m1.1b"><ci id="S4.T3.4.4.4.4.1.m1.1.1.cmml" xref="S4.T3.4.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.4.1.m1.1d">↑</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.5.5.5.5" style="padding:2.5pt 0.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.5.5.1">AUROC(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.5.5.5.5.1.m1.1"><semantics id="S4.T3.5.5.5.5.1.m1.1a"><mo id="S4.T3.5.5.5.5.1.m1.1.1" stretchy="false" xref="S4.T3.5.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.5.1.m1.1b"><ci id="S4.T3.5.5.5.5.1.m1.1.1.cmml" xref="S4.T3.5.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.5.1.m1.1d">↑</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.6.6.6.6" style="padding:2.5pt 0.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.6.6.1">AUPRC(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.6.6.6.6.1.m1.1"><semantics id="S4.T3.6.6.6.6.1.m1.1a"><mo id="S4.T3.6.6.6.6.1.m1.1.1" stretchy="false" xref="S4.T3.6.6.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.6.1.m1.1b"><ci id="S4.T3.6.6.6.6.1.m1.1.1.cmml" xref="S4.T3.6.6.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.6.1.m1.1d">↑</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.7.7.7.7" style="padding:2.5pt 0.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.7.7.1">AUROC(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.7.7.7.7.1.m1.1"><semantics id="S4.T3.7.7.7.7.1.m1.1a"><mo id="S4.T3.7.7.7.7.1.m1.1.1" stretchy="false" xref="S4.T3.7.7.7.7.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.7.7.1.m1.1b"><ci id="S4.T3.7.7.7.7.1.m1.1.1.cmml" xref="S4.T3.7.7.7.7.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.7.7.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.7.7.1.m1.1d">↑</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.8.8.8.8" style="padding:2.5pt 0.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.8.8.1">AUPRC(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.8.8.8.8.1.m1.1"><semantics id="S4.T3.8.8.8.8.1.m1.1a"><mo id="S4.T3.8.8.8.8.1.m1.1.1" stretchy="false" xref="S4.T3.8.8.8.8.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.8.8.8.8.1.m1.1b"><ci id="S4.T3.8.8.8.8.1.m1.1.1.cmml" xref="S4.T3.8.8.8.8.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.8.8.8.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.8.8.8.1.m1.1d">↑</annotation></semantics></math>)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.8.8.10.1" style="padding:2.5pt 0.6pt;">Jailguard-13B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.8.8.10.2" style="padding:2.5pt 0.6pt;">MiniGPT-4-Vicuna-13B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.8.8.10.3" style="padding:2.5pt 0.6pt;">0.4768</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.8.8.10.4" style="padding:2.5pt 0.6pt;">0.6729</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.8.8.10.5" style="padding:2.5pt 0.6pt;">0.4706</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.8.8.10.6" style="padding:2.5pt 0.6pt;">0.7500</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.8.8.10.7" style="padding:2.5pt 0.6pt;">0.5179</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.8.8.10.8" style="padding:2.5pt 0.6pt;">0.3337</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.8.8.10.9" style="padding:2.5pt 0.6pt;">0.8029</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.8.8.10.10" style="padding:2.5pt 0.6pt;">0.7475</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.11.1" style="padding:2.5pt 0.6pt;">Llavaguard-7B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.11.2" style="padding:2.5pt 0.6pt;">Qwen2-7B-Instruct</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.11.3" style="padding:2.5pt 0.6pt;">0.7551</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.11.4" style="padding:2.5pt 0.6pt;">0.8412</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.11.5" style="padding:2.5pt 0.6pt;">0.7427</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.11.6" style="padding:2.5pt 0.6pt;">0.8729</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.11.7" style="padding:2.5pt 0.6pt;">0.8360</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.11.8" style="padding:2.5pt 0.6pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.8.8.11.8.1">0.7231</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.11.9" style="padding:2.5pt 0.6pt;">0.8426</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.11.10" style="padding:2.5pt 0.6pt;">0.8589</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.12.1" style="padding:2.5pt 0.6pt;">Llavaguard-13B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.12.2" style="padding:2.5pt 0.6pt;">Llama-2-13B-hf</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.12.3" style="padding:2.5pt 0.6pt;">0.3797</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.12.4" style="padding:2.5pt 0.6pt;">0.6079</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.12.5" style="padding:2.5pt 0.6pt;">0.3856</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.12.6" style="padding:2.5pt 0.6pt;">0.7335</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.12.7" style="padding:2.5pt 0.6pt;">0.3413</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.12.8" style="padding:2.5pt 0.6pt;">0.3247</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.12.9" style="padding:2.5pt 0.6pt;">0.4347</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.12.10" style="padding:2.5pt 0.6pt;">0.5660</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.13.1" style="padding:2.5pt 0.6pt;">VLGuard-7B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.13.2" style="padding:2.5pt 0.6pt;">LLaVA-v1.5-7B-Mixed</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.13.3" style="padding:2.5pt 0.6pt;">0.6096</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.13.4" style="padding:2.5pt 0.6pt;">0.6782</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.13.5" style="padding:2.5pt 0.6pt;">0.6106</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.13.6" style="padding:2.5pt 0.6pt;">0.8020</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.13.7" style="padding:2.5pt 0.6pt;">0.6106</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.13.8" style="padding:2.5pt 0.6pt;">0.3817</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.13.9" style="padding:2.5pt 0.6pt;">0.6072</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.13.10" style="padding:2.5pt 0.6pt;">0.6474</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.14.1" style="padding:2.5pt 0.6pt;">VLGuard-13B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.14.2" style="padding:2.5pt 0.6pt;">LLaVA-v1.5-13B-Mixed</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.14.3" style="padding:2.5pt 0.6pt;">0.5048</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.14.4" style="padding:2.5pt 0.6pt;">0.6306</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.14.5" style="padding:2.5pt 0.6pt;">0.5048</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.14.6" style="padding:2.5pt 0.6pt;">0.7610</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.14.7" style="padding:2.5pt 0.6pt;">0.5048</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.14.8" style="padding:2.5pt 0.6pt;">0.3268</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.14.9" style="padding:2.5pt 0.6pt;">0.5048</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.14.10" style="padding:2.5pt 0.6pt;">0.5929</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.15.1" style="padding:2.5pt 0.6pt;">HiddenDetect-7B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.15.2" style="padding:2.5pt 0.6pt;">LLaVA-v1.6-Vicuna-7B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.15.3" style="padding:2.5pt 0.6pt;">0.8050</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.15.4" style="padding:2.5pt 0.6pt;">0.8056</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.15.5" style="padding:2.5pt 0.6pt;">0.8269</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.15.6" style="padding:2.5pt 0.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.15.6.1">0.9353</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.15.7" style="padding:2.5pt 0.6pt;">0.5773</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.15.8" style="padding:2.5pt 0.6pt;">0.3238</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.15.9" style="padding:2.5pt 0.6pt;">0.8330</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.15.10" style="padding:2.5pt 0.6pt;">0.8770</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.16">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.16.1" style="padding:2.5pt 0.6pt;">HiddenDetect-13B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.16.2" style="padding:2.5pt 0.6pt;">LLaVA-v1.6-Vicuna-13B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.16.3" style="padding:2.5pt 0.6pt;">0.8425</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.16.4" style="padding:2.5pt 0.6pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.8.8.16.4.1">0.8541</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.16.5" style="padding:2.5pt 0.6pt;">0.8302</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.16.6" style="padding:2.5pt 0.6pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.8.8.16.6.1">0.9333</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.16.7" style="padding:2.5pt 0.6pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.8.8.16.7.1">0.8615</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.16.8" style="padding:2.5pt 0.6pt;">0.5753</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.16.9" style="padding:2.5pt 0.6pt;">0.8633</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.16.10" style="padding:2.5pt 0.6pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.8.8.16.10.1">0.8885</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.17">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.17.1" style="padding:2.5pt 0.6pt;">GradSafe-7B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.17.2" style="padding:2.5pt 0.6pt;">LLaVA-v1.5-Vicuna-7B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.17.3" style="padding:2.5pt 0.6pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.8.8.17.3.1">0.8513</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.17.4" style="padding:2.5pt 0.6pt;">0.8166</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.17.5" style="padding:2.5pt 0.6pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.8.8.17.5.1">0.8514</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.17.6" style="padding:2.5pt 0.6pt;">0.8752</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.17.7" style="padding:2.5pt 0.6pt;">0.6804</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.17.8" style="padding:2.5pt 0.6pt;">0.2370</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.17.9" style="padding:2.5pt 0.6pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.8.8.17.9.1">0.9082</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.17.10" style="padding:2.5pt 0.6pt;">0.8816</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.18.1" style="padding:2.5pt 0.6pt;">GradSafe-13B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.18.2" style="padding:2.5pt 0.6pt;">LLaVA-v1.5-Vicuna-13B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.18.3" style="padding:2.5pt 0.6pt;">0.6723</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.18.4" style="padding:2.5pt 0.6pt;">0.7533</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.18.5" style="padding:2.5pt 0.6pt;">0.7485</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.18.6" style="padding:2.5pt 0.6pt;">0.8004</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.18.7" style="padding:2.5pt 0.6pt;">0.4131</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.8.8.18.8" style="padding:2.5pt 0.6pt;">0.5933</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.18.9" style="padding:2.5pt 0.6pt;">0.5920</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.8.8.18.10" style="padding:2.5pt 0.6pt;">0.7038</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.19" style="background-color:#CDD8E1;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T3.8.8.19.1" style="padding:2.5pt 0.6pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.8.8.19.1.1" style="background-color:#CDD8E1;">JailDAM</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.8.8.19.2" style="padding:2.5pt 0.6pt;"><span class="ltx_text" id="S4.T3.8.8.19.2.1" style="background-color:#CDD8E1;">Memory Network</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T3.8.8.19.3" style="padding:2.5pt 0.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.19.3.1" style="background-color:#CDD8E1;">0.9550</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.8.8.19.4" style="padding:2.5pt 0.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.19.4.1" style="background-color:#CDD8E1;">0.9530</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T3.8.8.19.5" style="padding:2.5pt 0.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.19.5.1" style="background-color:#CDD8E1;">0.9472</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.8.8.19.6" style="padding:2.5pt 0.6pt;"><span class="ltx_text" id="S4.T3.8.8.19.6.1" style="background-color:#CDD8E1;">0.9155</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T3.8.8.19.7" style="padding:2.5pt 0.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.19.7.1" style="background-color:#CDD8E1;">0.9608</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.8.8.19.8" style="padding:2.5pt 0.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.19.8.1" style="background-color:#CDD8E1;">0.9616</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T3.8.8.19.9" style="padding:2.5pt 0.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.19.9.1" style="background-color:#CDD8E1;">0.9465</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T3.8.8.19.10" style="padding:2.5pt 0.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.19.10.1" style="background-color:#CDD8E1;">0.9464</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the Area Under the Receiver Operating Characteristic curve (AUROC) and the Area Under the Precision-Recall curve (AUPRC) for several methods on three different datasets.  It compares the performance of a model-agnostic approach (JailDAM), and model-specific methods (JailGuard, Llavaguard, VLGuard, and HiddenDetect).  The best and second-best performance values are highlighted in bold and underlined, respectively, to easily identify the top-performing methods for each dataset and metric.
> <details>
> <summary>read the caption</summary>
> Table 3: The AUROC and AUPRC of Attack Detection, which include the performances from model agnostic method, JailDAM and model specific method, including JailGuard, Llavaguard, VLGuard and HiddenDetect. The bolded value represents the best performance and underline indicates the second-best performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.9.9">
<tr class="ltx_tr" id="S4.T4.9.9.10">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.9.9.10.1" rowspan="2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.10.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T4.9.9.10.2" rowspan="2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.10.2.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T4.9.9.10.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.10.3.1">MMsafetyBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T4.9.9.10.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.10.4.1">FigStep</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T4.9.9.10.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.10.5.1">JailBreakV-28K</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.1">F1(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.2.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.2.2.1">Precision(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.2.1.m1.1"><semantics id="S4.T4.2.2.2.2.1.m1.1a"><mo id="S4.T4.2.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T4.2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.2.1.m1.1b"><ci id="S4.T4.2.2.2.2.1.m1.1.1.cmml" xref="S4.T4.2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.2.1.m1.1d">↑</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.3.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.3.3.1">Recall(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.3.3.3.3.1.m1.1"><semantics id="S4.T4.3.3.3.3.1.m1.1a"><mo id="S4.T4.3.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T4.3.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.3.1.m1.1b"><ci id="S4.T4.3.3.3.3.1.m1.1.1.cmml" xref="S4.T4.3.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.3.1.m1.1d">↑</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.4.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.4.4.1">F1(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.4.4.4.4.1.m1.1"><semantics id="S4.T4.4.4.4.4.1.m1.1a"><mo id="S4.T4.4.4.4.4.1.m1.1.1" stretchy="false" xref="S4.T4.4.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.4.1.m1.1b"><ci id="S4.T4.4.4.4.4.1.m1.1.1.cmml" xref="S4.T4.4.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.4.1.m1.1d">↑</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.5.5.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.5.5.1">Precision(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.5.5.5.5.1.m1.1"><semantics id="S4.T4.5.5.5.5.1.m1.1a"><mo id="S4.T4.5.5.5.5.1.m1.1.1" stretchy="false" xref="S4.T4.5.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.5.5.5.5.1.m1.1b"><ci id="S4.T4.5.5.5.5.1.m1.1.1.cmml" xref="S4.T4.5.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.5.5.5.1.m1.1d">↑</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.6.6.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.6.6.6.6.1">Recall(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.6.6.6.6.1.m1.1"><semantics id="S4.T4.6.6.6.6.1.m1.1a"><mo id="S4.T4.6.6.6.6.1.m1.1.1" stretchy="false" xref="S4.T4.6.6.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.6.6.6.6.1.m1.1b"><ci id="S4.T4.6.6.6.6.1.m1.1.1.cmml" xref="S4.T4.6.6.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.6.6.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.6.6.6.6.1.m1.1d">↑</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.7.7.7.7" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.7.7.7.7.1">F1(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.7.7.7.7.1.m1.1"><semantics id="S4.T4.7.7.7.7.1.m1.1a"><mo id="S4.T4.7.7.7.7.1.m1.1.1" stretchy="false" xref="S4.T4.7.7.7.7.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.7.7.7.7.1.m1.1b"><ci id="S4.T4.7.7.7.7.1.m1.1.1.cmml" xref="S4.T4.7.7.7.7.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.7.7.7.7.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.7.7.7.7.1.m1.1d">↑</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.8.8.8.8" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.8.8.8.8.1">Precision(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.8.8.8.8.1.m1.1"><semantics id="S4.T4.8.8.8.8.1.m1.1a"><mo id="S4.T4.8.8.8.8.1.m1.1.1" stretchy="false" xref="S4.T4.8.8.8.8.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.8.8.8.8.1.m1.1b"><ci id="S4.T4.8.8.8.8.1.m1.1.1.cmml" xref="S4.T4.8.8.8.8.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.8.8.8.8.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.8.8.8.8.1.m1.1d">↑</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.9.9" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.9.9.1">Recall(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.9.9.9.9.1.m1.1"><semantics id="S4.T4.9.9.9.9.1.m1.1a"><mo id="S4.T4.9.9.9.9.1.m1.1.1" stretchy="false" xref="S4.T4.9.9.9.9.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.9.9.9.9.1.m1.1b"><ci id="S4.T4.9.9.9.9.1.m1.1.1.cmml" xref="S4.T4.9.9.9.9.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.9.9.9.9.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.9.9.9.9.1.m1.1d">↑</annotation></semantics></math>)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.11">
<td class="ltx_td ltx_border_t" id="S4.T4.9.9.11.1" style="padding-left:2.8pt;padding-right:2.8pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.9.9.11.2" style="padding-left:2.8pt;padding-right:2.8pt;">Vanilla</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.11.3" style="padding-left:2.8pt;padding-right:2.8pt;">0.4418</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.11.4" style="padding-left:2.8pt;padding-right:2.8pt;">1.0000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.11.5" style="padding-left:2.8pt;padding-right:2.8pt;">0.2835</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.11.6" style="padding-left:2.8pt;padding-right:2.8pt;">0.6842</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.11.7" style="padding-left:2.8pt;padding-right:2.8pt;">1.0000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.11.8" style="padding-left:2.8pt;padding-right:2.8pt;">0.5200</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.11.9" style="padding-left:2.8pt;padding-right:2.8pt;">0.6786</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.11.10" style="padding-left:2.8pt;padding-right:2.8pt;">1.0000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.11.11" style="padding-left:2.8pt;padding-right:2.8pt;">0.5136</td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.12">
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.12.1" style="padding-left:2.8pt;padding-right:2.8pt;">LLaVA</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.9.9.12.2" style="padding-left:2.8pt;padding-right:2.8pt;">FSD</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.12.3" style="padding-left:2.8pt;padding-right:2.8pt;">0.5387</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.12.4" style="padding-left:2.8pt;padding-right:2.8pt;">0.9759</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.12.5" style="padding-left:2.8pt;padding-right:2.8pt;">0.3720</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.12.6" style="padding-left:2.8pt;padding-right:2.8pt;">0.7137</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.12.7" style="padding-left:2.8pt;padding-right:2.8pt;">0.9838</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.12.8" style="padding-left:2.8pt;padding-right:2.8pt;">0.5600</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.12.9" style="padding-left:2.8pt;padding-right:2.8pt;">0.7027</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.12.10" style="padding-left:2.8pt;padding-right:2.8pt;">0.9835</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.12.11" style="padding-left:2.8pt;padding-right:2.8pt;">0.5467</td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.13">
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.13.1" style="padding-left:2.8pt;padding-right:2.8pt;">1.5-7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.9.9.13.2" style="padding-left:2.8pt;padding-right:2.8pt;">AdaShield-S</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.13.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.9.9.13.3.1">0.9306</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.13.4" style="padding-left:2.8pt;padding-right:2.8pt;">0.8748</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.13.5" style="padding-left:2.8pt;padding-right:2.8pt;">0.9939</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.13.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.9.9.13.6.1">0.9336</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.13.7" style="padding-left:2.8pt;padding-right:2.8pt;">0.8755</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.13.8" style="padding-left:2.8pt;padding-right:2.8pt;">1.0000</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.13.9" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.9.9.13.9.1">0.8514</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.13.10" style="padding-left:2.8pt;padding-right:2.8pt;">0.8562</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.13.11" style="padding-left:2.8pt;padding-right:2.8pt;">0.8467</td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.14">
<td class="ltx_td" id="S4.T4.9.9.14.1" style="padding-left:2.8pt;padding-right:2.8pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.9.9.14.2" style="padding-left:2.8pt;padding-right:2.8pt;">AdaShield-A</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.14.3" style="padding-left:2.8pt;padding-right:2.8pt;">0.9151</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.14.4" style="padding-left:2.8pt;padding-right:2.8pt;">0.9741</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.14.5" style="padding-left:2.8pt;padding-right:2.8pt;">0.8628</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.14.6" style="padding-left:2.8pt;padding-right:2.8pt;">0.8262</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.14.7" style="padding-left:2.8pt;padding-right:2.8pt;">0.9692</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.14.8" style="padding-left:2.8pt;padding-right:2.8pt;">0.7200</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.14.9" style="padding-left:2.8pt;padding-right:2.8pt;">0.7714</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.14.10" style="padding-left:2.8pt;padding-right:2.8pt;">0.9656</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.14.11" style="padding-left:2.8pt;padding-right:2.8pt;">0.6423</td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.15">
<td class="ltx_td" id="S4.T4.9.9.15.1" style="padding-left:2.8pt;padding-right:2.8pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.9.9.15.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T4.9.9.15.2.1" style="background-color:#CDD8E1;">JailDAM-D</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.15.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.15.3.1" style="background-color:#CDD8E1;">0.9752</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.15.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.T4.9.9.15.4.1" style="background-color:#CDD8E1;">0.9806</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.15.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.T4.9.9.15.5.1" style="background-color:#CDD8E1;">0.9699</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.15.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.15.6.1" style="background-color:#CDD8E1;">0.9804</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.15.7" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.T4.9.9.15.7.1" style="background-color:#CDD8E1;">0.9808</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.15.8" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.T4.9.9.15.8.1" style="background-color:#CDD8E1;">0.9800</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.15.9" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.15.9.1" style="background-color:#CDD8E1;">0.9799</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.15.10" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.T4.9.9.15.10.1" style="background-color:#CDD8E1;">0.9808</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.15.11" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.T4.9.9.15.11.1" style="background-color:#CDD8E1;">0.9790</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.16">
<td class="ltx_td ltx_border_t" id="S4.T4.9.9.16.1" style="padding-left:2.8pt;padding-right:2.8pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.9.9.16.2" style="padding-left:2.8pt;padding-right:2.8pt;">Vanilla</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.16.3" style="padding-left:2.8pt;padding-right:2.8pt;">0.4192</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.16.4" style="padding-left:2.8pt;padding-right:2.8pt;">1.0000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.16.5" style="padding-left:2.8pt;padding-right:2.8pt;">0.2652</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.16.6" style="padding-left:2.8pt;padding-right:2.8pt;">0.6301</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.16.7" style="padding-left:2.8pt;padding-right:2.8pt;">1.0000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.16.8" style="padding-left:2.8pt;padding-right:2.8pt;">0.4600</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.16.9" style="padding-left:2.8pt;padding-right:2.8pt;">0.7013</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.16.10" style="padding-left:2.8pt;padding-right:2.8pt;">1.0000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.16.11" style="padding-left:2.8pt;padding-right:2.8pt;">0.5400</td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.17">
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.17.1" style="padding-left:2.8pt;padding-right:2.8pt;">LLaVA</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.9.9.17.2" style="padding-left:2.8pt;padding-right:2.8pt;">FSD</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.17.3" style="padding-left:2.8pt;padding-right:2.8pt;">0.5022</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.17.4" style="padding-left:2.8pt;padding-right:2.8pt;">0.9735</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.17.5" style="padding-left:2.8pt;padding-right:2.8pt;">0.3384</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.17.6" style="padding-left:2.8pt;padding-right:2.8pt;">0.7457</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.17.7" style="padding-left:2.8pt;padding-right:2.8pt;">0.9849</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.17.8" style="padding-left:2.8pt;padding-right:2.8pt;">0.6000</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.17.9" style="padding-left:2.8pt;padding-right:2.8pt;">0.7711</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.17.10" style="padding-left:2.8pt;padding-right:2.8pt;">0.9857</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.17.11" style="padding-left:2.8pt;padding-right:2.8pt;">0.6333</td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.18">
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.18.1" style="padding-left:2.8pt;padding-right:2.8pt;">1.5-13B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.9.9.18.2" style="padding-left:2.8pt;padding-right:2.8pt;">AdaShield-S</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.18.3" style="padding-left:2.8pt;padding-right:2.8pt;">0.7346</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.18.4" style="padding-left:2.8pt;padding-right:2.8pt;">0.9237</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.18.5" style="padding-left:2.8pt;padding-right:2.8pt;">0.6098</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.18.6" style="padding-left:2.8pt;padding-right:2.8pt;">0.7859</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.18.7" style="padding-left:2.8pt;padding-right:2.8pt;">0.9310</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.18.8" style="padding-left:2.8pt;padding-right:2.8pt;">0.6800</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.18.9" style="padding-left:2.8pt;padding-right:2.8pt;">0.8134</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.18.10" style="padding-left:2.8pt;padding-right:2.8pt;">0.9346</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.18.11" style="padding-left:2.8pt;padding-right:2.8pt;">0.7200</td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.19">
<td class="ltx_td" id="S4.T4.9.9.19.1" style="padding-left:2.8pt;padding-right:2.8pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.9.9.19.2" style="padding-left:2.8pt;padding-right:2.8pt;">AdaShield-A</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.19.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.9.9.19.3.1">0.8552</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.19.4" style="padding-left:2.8pt;padding-right:2.8pt;">1.0000</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.19.5" style="padding-left:2.8pt;padding-right:2.8pt;">0.7470</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.19.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.9.9.19.6.1">0.9691</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.19.7" style="padding-left:2.8pt;padding-right:2.8pt;">1.0000</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.19.8" style="padding-left:2.8pt;padding-right:2.8pt;">0.9400</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.19.9" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.9.9.19.9.1">0.8504</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.19.10" style="padding-left:2.8pt;padding-right:2.8pt;">1.0000</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.19.11" style="padding-left:2.8pt;padding-right:2.8pt;">0.7398</td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.20">
<td class="ltx_td" id="S4.T4.9.9.20.1" style="padding-left:2.8pt;padding-right:2.8pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.9.9.20.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T4.9.9.20.2.1" style="background-color:#CDD8E1;">JailDAM-D</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.20.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.20.3.1" style="background-color:#CDD8E1;">0.9820</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.20.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.T4.9.9.20.4.1" style="background-color:#CDD8E1;">0.9902</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.20.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.T4.9.9.20.5.1" style="background-color:#CDD8E1;">0.9738</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.20.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.20.6.1" style="background-color:#CDD8E1;">0.9892</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.20.7" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.T4.9.9.20.7.1" style="background-color:#CDD8E1;">0.9904</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.20.8" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.T4.9.9.20.8.1" style="background-color:#CDD8E1;">0.9880</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.20.9" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.20.9.1" style="background-color:#CDD8E1;">0.9833</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.20.10" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.T4.9.9.20.10.1" style="background-color:#CDD8E1;">0.9903</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.20.11" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.T4.9.9.20.11.1" style="background-color:#CDD8E1;">0.9764</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.21">
<td class="ltx_td ltx_border_t" id="S4.T4.9.9.21.1" style="padding-left:2.8pt;padding-right:2.8pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.9.9.21.2" style="padding-left:2.8pt;padding-right:2.8pt;">Vanilla</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.21.3" style="padding-left:2.8pt;padding-right:2.8pt;">0.2507</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.21.4" style="padding-left:2.8pt;padding-right:2.8pt;">1.0000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.21.5" style="padding-left:2.8pt;padding-right:2.8pt;">0.1433</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.21.6" style="padding-left:2.8pt;padding-right:2.8pt;">0.3051</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.21.7" style="padding-left:2.8pt;padding-right:2.8pt;">1.0000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.21.8" style="padding-left:2.8pt;padding-right:2.8pt;">0.1800</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.21.9" style="padding-left:2.8pt;padding-right:2.8pt;">0.5714</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.21.10" style="padding-left:2.8pt;padding-right:2.8pt;">1.0000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.21.11" style="padding-left:2.8pt;padding-right:2.8pt;">0.4000</td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.22">
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.22.1" style="padding-left:2.8pt;padding-right:2.8pt;">CogVLM</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.9.9.22.2" style="padding-left:2.8pt;padding-right:2.8pt;">FSD</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.22.3" style="padding-left:2.8pt;padding-right:2.8pt;">0.5105</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.22.4" style="padding-left:2.8pt;padding-right:2.8pt;">0.9387</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.22.5" style="padding-left:2.8pt;padding-right:2.8pt;">0.3506</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.22.6" style="padding-left:2.8pt;padding-right:2.8pt;">0.5417</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.22.7" style="padding-left:2.8pt;padding-right:2.8pt;">0.9432</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.22.8" style="padding-left:2.8pt;padding-right:2.8pt;">0.3800</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.22.9" style="padding-left:2.8pt;padding-right:2.8pt;">0.7237</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.22.10" style="padding-left:2.8pt;padding-right:2.8pt;">0.9620</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.22.11" style="padding-left:2.8pt;padding-right:2.8pt;">0.5800</td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.23">
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.23.1" style="padding-left:2.8pt;padding-right:2.8pt;">chat-v1.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.9.9.23.2" style="padding-left:2.8pt;padding-right:2.8pt;">AdaShield-S</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.23.3" style="padding-left:2.8pt;padding-right:2.8pt;">0.8710</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.23.4" style="padding-left:2.8pt;padding-right:2.8pt;">0.9665</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.23.5" style="padding-left:2.8pt;padding-right:2.8pt;">0.7927</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.23.6" style="padding-left:2.8pt;padding-right:2.8pt;">0.9864</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.23.7" style="padding-left:2.8pt;padding-right:2.8pt;">0.9732</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.23.8" style="padding-left:2.8pt;padding-right:2.8pt;">1.0000</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.23.9" style="padding-left:2.8pt;padding-right:2.8pt;">0.8329</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.23.10" style="padding-left:2.8pt;padding-right:2.8pt;">0.9639</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.23.11" style="padding-left:2.8pt;padding-right:2.8pt;">0.7333</td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.24">
<td class="ltx_td" id="S4.T4.9.9.24.1" style="padding-left:2.8pt;padding-right:2.8pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.9.9.24.2" style="padding-left:2.8pt;padding-right:2.8pt;">AdaShield-A</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.24.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.9.9.24.3.1">0.9368</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.24.4" style="padding-left:2.8pt;padding-right:2.8pt;">1.0000</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.24.5" style="padding-left:2.8pt;padding-right:2.8pt;">0.8811</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.24.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.24.6.1">1.0000</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.24.7" style="padding-left:2.8pt;padding-right:2.8pt;">1.0000</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.24.8" style="padding-left:2.8pt;padding-right:2.8pt;">1.0000</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.24.9" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.24.9.1">0.9793</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.24.10" style="padding-left:2.8pt;padding-right:2.8pt;">1.0000</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.24.11" style="padding-left:2.8pt;padding-right:2.8pt;">0.9594</td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.25">
<td class="ltx_td" id="S4.T4.9.9.25.1" style="padding-left:2.8pt;padding-right:2.8pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.9.9.25.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T4.9.9.25.2.1" style="background-color:#CDD8E1;">JailDAM-D</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.25.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.25.3.1" style="background-color:#CDD8E1;">0.9494</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.25.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.T4.9.9.25.4.1" style="background-color:#CDD8E1;">0.9796</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.25.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.T4.9.9.25.5.1" style="background-color:#CDD8E1;">0.9211</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.25.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.9.9.25.6.1" style="background-color:#CDD8E1;">0.9872</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.25.7" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.T4.9.9.25.7.1" style="background-color:#CDD8E1;">0.9810</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.25.8" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.T4.9.9.25.8.1" style="background-color:#CDD8E1;">0.9934</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.25.9" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.9.9.25.9.1" style="background-color:#CDD8E1;">0.8478</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.25.10" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.T4.9.9.25.10.1" style="background-color:#CDD8E1;">0.9750</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.25.11" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.T4.9.9.25.11.1" style="background-color:#CDD8E1;">0.7500</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.26">
<td class="ltx_td ltx_border_t" id="S4.T4.9.9.26.1" style="padding-left:2.8pt;padding-right:2.8pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.9.9.26.2" style="padding-left:2.8pt;padding-right:2.8pt;">Vanilla</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.26.3" style="padding-left:2.8pt;padding-right:2.8pt;">0.6502</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.26.4" style="padding-left:2.8pt;padding-right:2.8pt;">1.0000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.26.5" style="padding-left:2.8pt;padding-right:2.8pt;">0.4817</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.26.6" style="padding-left:2.8pt;padding-right:2.8pt;">0.7805</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.26.7" style="padding-left:2.8pt;padding-right:2.8pt;">1.0000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.26.8" style="padding-left:2.8pt;padding-right:2.8pt;">0.6400</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.26.9" style="padding-left:2.8pt;padding-right:2.8pt;">0.9091</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.26.10" style="padding-left:2.8pt;padding-right:2.8pt;">1.0000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.26.11" style="padding-left:2.8pt;padding-right:2.8pt;">0.8333</td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.27">
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.27.1" style="padding-left:2.8pt;padding-right:2.8pt;">GPT4o</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.9.9.27.2" style="padding-left:2.8pt;padding-right:2.8pt;">FSD</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.27.3" style="padding-left:2.8pt;padding-right:2.8pt;">0.8157</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.27.4" style="padding-left:2.8pt;padding-right:2.8pt;">0.9869</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.27.5" style="padding-left:2.8pt;padding-right:2.8pt;">0.6951</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.27.6" style="padding-left:2.8pt;padding-right:2.8pt;">0.8461</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.27.7" style="padding-left:2.8pt;padding-right:2.8pt;">0.9877</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.27.8" style="padding-left:2.8pt;padding-right:2.8pt;">0.7400</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.27.9" style="padding-left:2.8pt;padding-right:2.8pt;">0.9316</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.27.10" style="padding-left:2.8pt;padding-right:2.8pt;">0.9897</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.27.11" style="padding-left:2.8pt;padding-right:2.8pt;">0.8800</td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.28">
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.28.1" style="padding-left:2.8pt;padding-right:2.8pt;">mini</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.9.9.28.2" style="padding-left:2.8pt;padding-right:2.8pt;">AdaShield-S</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.28.3" style="padding-left:2.8pt;padding-right:2.8pt;">0.8320</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.28.4" style="padding-left:2.8pt;padding-right:2.8pt;">0.7652</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.28.5" style="padding-left:2.8pt;padding-right:2.8pt;">0.9116</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.28.6" style="padding-left:2.8pt;padding-right:2.8pt;">0.7693</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.28.7" style="padding-left:2.8pt;padding-right:2.8pt;">0.7409</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.28.8" style="padding-left:2.8pt;padding-right:2.8pt;">0.8000</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.28.9" style="padding-left:2.8pt;padding-right:2.8pt;">0.8572</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.28.10" style="padding-left:2.8pt;padding-right:2.8pt;">0.7743</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.28.11" style="padding-left:2.8pt;padding-right:2.8pt;">0.9600</td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.29">
<td class="ltx_td" id="S4.T4.9.9.29.1" style="padding-left:2.8pt;padding-right:2.8pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.9.9.29.2" style="padding-left:2.8pt;padding-right:2.8pt;">AdaShield-A</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.29.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.9.9.29.3.1">0.9494</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.29.4" style="padding-left:2.8pt;padding-right:2.8pt;">1.0000</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.29.5" style="padding-left:2.8pt;padding-right:2.8pt;">0.9037</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.29.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.9.9.29.6.1">0.9189</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.29.7" style="padding-left:2.8pt;padding-right:2.8pt;">1.0000</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.29.8" style="padding-left:2.8pt;padding-right:2.8pt;">0.8500</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.29.9" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.9.9.29.9.1">0.9877</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.29.10" style="padding-left:2.8pt;padding-right:2.8pt;">1.0000</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.29.11" style="padding-left:2.8pt;padding-right:2.8pt;">0.9757</td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.30">
<td class="ltx_td ltx_border_bb" id="S4.T4.9.9.30.1" style="padding-left:2.8pt;padding-right:2.8pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.9.9.30.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T4.9.9.30.2.1" style="background-color:#CDD8E1;">JailDAM-D</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.9.30.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.30.3.1" style="background-color:#CDD8E1;">0.9870</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.9.30.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.T4.9.9.30.4.1" style="background-color:#CDD8E1;">0.9903</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.9.30.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.T4.9.9.30.5.1" style="background-color:#CDD8E1;">0.9836</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.9.30.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.30.6.1" style="background-color:#CDD8E1;">0.9786</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.9.30.7" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.T4.9.9.30.7.1" style="background-color:#CDD8E1;">0.9902</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.9.30.8" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.T4.9.9.30.8.1" style="background-color:#CDD8E1;">0.9672</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.9.30.9" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.9.9.30.9.1" style="background-color:#CDD8E1;">0.9952</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.9.30.10" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.T4.9.9.30.10.1" style="background-color:#CDD8E1;">0.9905</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.9.30.11" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.T4.9.9.30.11.1" style="background-color:#CDD8E1;">1.0000</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents the performance of several defense methods in preventing vision-language models from generating harmful responses to malicious inputs.  The metrics used to assess performance are the F1-score, precision, and recall. Results are shown for three different datasets and several model sizes (7B and 13B parameters).  The best F1-score in each evaluation is bolded, and the second best is underlined, providing a clear comparison of each method's effectiveness across various scenarios.
> <details>
> <summary>read the caption</summary>
> Table 4: F1-score, Precision, Recall of defense methods on Attack Defense task. In here, we have bolded value as the best F1-Score and underline as the second-best F1-Score.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T5.6.6">
<tr class="ltx_tr" id="S4.T5.6.6.7">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T5.6.6.7.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.6.7.1.1">Adaptation</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S4.T5.6.6.7.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.6.6.7.2.1">
<span class="ltx_p" id="S4.T5.6.6.7.2.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.6.7.2.1.1.1">Metric</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S4.T5.6.6.7.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.6.6.7.3.1">
<span class="ltx_p" id="S4.T5.6.6.7.3.1.1" style="width:51.2pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.6.7.3.1.1.1">MS</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S4.T5.6.6.7.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.6.6.7.4.1">
<span class="ltx_p" id="S4.T5.6.6.7.4.1.1" style="width:51.2pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.6.7.4.1.1.1">FS</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="S4.T5.6.6.7.5" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.6.6.7.5.1">
<span class="ltx_p" id="S4.T5.6.6.7.5.1.1" style="width:51.2pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.6.7.5.1.1.1">JBV</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.6.6.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.6.6.8.1" rowspan="2" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S4.T5.6.6.8.1.1">W/O</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T5.6.6.8.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.6.6.8.2.1">
<span class="ltx_p" id="S4.T5.6.6.8.2.1.1" style="width:42.7pt;">AUROC</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T5.6.6.8.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.6.6.8.3.1">
<span class="ltx_p" id="S4.T5.6.6.8.3.1.1" style="width:51.2pt;">0.9044</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T5.6.6.8.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.6.6.8.4.1">
<span class="ltx_p" id="S4.T5.6.6.8.4.1.1" style="width:51.2pt;">0.8379</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S4.T5.6.6.8.5" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.6.6.8.5.1">
<span class="ltx_p" id="S4.T5.6.6.8.5.1.1" style="width:51.2pt;">0.8526</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.6.6.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T5.6.6.9.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.6.6.9.1.1">
<span class="ltx_p" id="S4.T5.6.6.9.1.1.1" style="width:42.7pt;">AUPRC</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T5.6.6.9.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.6.6.9.2.1">
<span class="ltx_p" id="S4.T5.6.6.9.2.1.1" style="width:51.2pt;">0.8854</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T5.6.6.9.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.6.6.9.3.1">
<span class="ltx_p" id="S4.T5.6.6.9.3.1.1" style="width:51.2pt;">0.8119</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T5.6.6.9.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.6.6.9.4.1">
<span class="ltx_p" id="S4.T5.6.6.9.4.1.1" style="width:51.2pt;">0.7677</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T5.3.3.3.4" rowspan="2" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="S4.T5.3.3.3.4.1">With</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T5.3.3.3.5" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.3.3.3.5.1">
<span class="ltx_p" id="S4.T5.3.3.3.5.1.1" style="width:42.7pt;">AUROC</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T5.1.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.1.1.1">
<span class="ltx_p" id="S4.T5.1.1.1.1.1.1" style="width:51.2pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.1.1.1">0.9472</span> (<math alttext="\uparrow" class="ltx_centering" display="inline" id="S4.T5.1.1.1.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T5.1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T5.2.2.2.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.2.2.2.2.1">
<span class="ltx_p" id="S4.T5.2.2.2.2.1.1" style="width:51.2pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.2.2.1.1.1">0.9449</span> (<math alttext="\uparrow" class="ltx_centering" display="inline" id="S4.T5.2.2.2.2.1.1.m1.1"><semantics id="S4.T5.2.2.2.2.1.1.m1.1a"><mo id="S4.T5.2.2.2.2.1.1.m1.1.1" stretchy="false" xref="S4.T5.2.2.2.2.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.2.1.1.m1.1b"><ci id="S4.T5.2.2.2.2.1.1.m1.1.1.cmml" xref="S4.T5.2.2.2.2.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.2.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.2.1.1.m1.1d">↑</annotation></semantics></math>)</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S4.T5.3.3.3.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.3.3.3.3.1">
<span class="ltx_p" id="S4.T5.3.3.3.3.1.1" style="width:51.2pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.3.3.1.1.1">0.8734</span> (<math alttext="\uparrow" class="ltx_centering" display="inline" id="S4.T5.3.3.3.3.1.1.m1.1"><semantics id="S4.T5.3.3.3.3.1.1.m1.1a"><mo id="S4.T5.3.3.3.3.1.1.m1.1.1" stretchy="false" xref="S4.T5.3.3.3.3.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.3.3.3.3.1.1.m1.1b"><ci id="S4.T5.3.3.3.3.1.1.m1.1.1.cmml" xref="S4.T5.3.3.3.3.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.3.3.3.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.3.3.3.1.1.m1.1d">↑</annotation></semantics></math>)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.6.6.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T5.6.6.6.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.6.6.6.4.1">
<span class="ltx_p" id="S4.T5.6.6.6.4.1.1" style="width:42.7pt;">AUPRC</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T5.4.4.4.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.4.4.4.1.1">
<span class="ltx_p" id="S4.T5.4.4.4.1.1.1" style="width:51.2pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.4.4.1.1.1.1">0.9155</span> (<math alttext="\uparrow" class="ltx_centering" display="inline" id="S4.T5.4.4.4.1.1.1.m1.1"><semantics id="S4.T5.4.4.4.1.1.1.m1.1a"><mo id="S4.T5.4.4.4.1.1.1.m1.1.1" stretchy="false" xref="S4.T5.4.4.4.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.4.4.4.1.1.1.m1.1b"><ci id="S4.T5.4.4.4.1.1.1.m1.1.1.cmml" xref="S4.T5.4.4.4.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.4.4.4.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.4.4.4.1.1.1.m1.1d">↑</annotation></semantics></math>)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T5.5.5.5.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.5.5.5.2.1">
<span class="ltx_p" id="S4.T5.5.5.5.2.1.1" style="width:51.2pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.5.5.2.1.1.1">0.9121</span> (<math alttext="\uparrow" class="ltx_centering" display="inline" id="S4.T5.5.5.5.2.1.1.m1.1"><semantics id="S4.T5.5.5.5.2.1.1.m1.1a"><mo id="S4.T5.5.5.5.2.1.1.m1.1.1" stretchy="false" xref="S4.T5.5.5.5.2.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.5.5.5.2.1.1.m1.1b"><ci id="S4.T5.5.5.5.2.1.1.m1.1.1.cmml" xref="S4.T5.5.5.5.2.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.5.5.5.2.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.5.5.5.2.1.1.m1.1d">↑</annotation></semantics></math>)</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T5.6.6.6.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.6.6.6.3.1">
<span class="ltx_p" id="S4.T5.6.6.6.3.1.1" style="width:51.2pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.6.6.3.1.1.1">0.8750</span> (<math alttext="\uparrow" class="ltx_centering" display="inline" id="S4.T5.6.6.6.3.1.1.m1.1"><semantics id="S4.T5.6.6.6.3.1.1.m1.1a"><mo id="S4.T5.6.6.6.3.1.1.m1.1.1" stretchy="false" xref="S4.T5.6.6.6.3.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.6.6.6.3.1.1.m1.1b"><ci id="S4.T5.6.6.6.3.1.1.m1.1.1.cmml" xref="S4.T5.6.6.6.3.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.6.6.6.3.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.6.6.6.3.1.1.m1.1d">↑</annotation></semantics></math>)</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted to evaluate the effectiveness of the test-time adaptation mechanism in the JAILDAM model.  The study compares the model's performance on three different datasets (MM-SafetyBench, FigStep, and JailBreakV-28K) with and without the test-time adaptation enabled.  The metrics used for comparison are AUROC (Area Under the Receiver Operating Characteristic curve) and AUPRC (Area Under the Precision-Recall curve).  The abbreviations MS, FS, and JBV represent the three datasets, respectively.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation study on adaptation effectiveness. In here, MS: MM-SafetyBench, FS: FigStep, JBV: JailBreakV-28K
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.03770/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03770/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03770/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03770/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03770/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03770/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03770/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03770/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03770/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03770/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03770/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03770/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03770/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03770/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03770/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03770/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03770/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03770/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03770/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03770/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}