---
title: "HumanDreamer-X: Photorealistic Single-image Human Avatars Reconstruction via Gaussian Restoration"
summary: "HumanDreamer-X enhances 3D human avatar creation from single images via Gaussian Restoration, boosting geometric consistency and visual fidelity."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 Peking University",]
showSummary: true
date: 2025-04-04
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.03536 {{< /keyword >}}
{{< keyword icon="writer" >}} Boyuan Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-07 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.03536" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.03536" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.03536/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Creating 3D human avatars from a single image is valuable but challenging. Current methods generate multiple views and reconstruct, but geometric inconsistencies lead to fragmented models. **To solve this, this paper presents HumanDreamer-X, a unified framework integrating multi-view generation and reconstruction. It uses 3D Gaussian Splatting for initial geometry and refines it with HumanFixer, ensuring photorealistic results.** 



HumanDreamer-X also addresses challenges with attention mechanisms in multi-view human generation, proposing a strategy that enhances geometric consistency. **Experiments show that HumanDreamer-X significantly improves generation and reconstruction quality, achieving better PSNR scores, generalization on diverse data, and applicability to various backbone models.**

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} HumanDreamer-X, a new framework integrating multi-view human generation and reconstruction, is introduced. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} An attention modulation strategy effectively enhances geometric detail and identity consistency across multiple views. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments demonstrate significant improvements in generation and reconstruction quality using the proposed approach. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel method for generating high-quality 3D human avatars from single images, which is crucial for applications in VR/AR and digital content creation. The novel framework significantly improves the geometric and visual fidelity of reconstructed 3D models. **The unified approach has better performance compared to the existing decoupled methods.**

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.4">
<tr class="ltx_tr" id="S3.T1.4.4">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.4.4.5">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.4.4.6">Testset</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1">PSNR <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.2.2">SSIM <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.m1.1a"><mo id="S3.T1.2.2.2.m1.1.1" stretchy="false" xref="S3.T1.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.m1.1b"><ci id="S3.T1.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.3.3.3">LPIPS <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.3.3.3.m1.1"><semantics id="S3.T1.3.3.3.m1.1a"><mo id="S3.T1.3.3.3.m1.1.1" stretchy="false" xref="S3.T1.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.m1.1b"><ci id="S3.T1.3.3.3.m1.1.1.cmml" xref="S3.T1.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.4.4.4">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.4.4.4.m1.1"><semantics id="S3.T1.4.4.4.m1.1a"><mo id="S3.T1.4.4.4.m1.1.1" stretchy="false" xref="S3.T1.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.m1.1b"><ci id="S3.T1.4.4.4.m1.1.1.cmml" xref="S3.T1.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.4.5.1">PSHuman <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03536v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.5.2" rowspan="3"><span class="ltx_text" id="S3.T1.4.5.2.1">CustomHumans</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.5.3">21.998</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.5.4">0.826</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.5.5">0.1945</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.5.6">103.808</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.6">
<td class="ltx_td ltx_align_left" id="S3.T1.4.6.1">Champ <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03536v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">66</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.6.2">20.228</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.6.3"><span class="ltx_text ltx_font_bold" id="S3.T1.4.6.3.1">0.889</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.6.4">0.2438</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.6.5">115.031</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.7">
<td class="ltx_td ltx_align_left" id="S3.T1.4.7.1">HumanFixer (Ours)</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.7.2"><span class="ltx_text ltx_font_bold" id="S3.T1.4.7.2.1">25.618</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.7.3">0.882</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.7.4"><span class="ltx_text ltx_font_bold" id="S3.T1.4.7.4.1">0.0687</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.7.5"><span class="ltx_text ltx_font_bold" id="S3.T1.4.7.5.1">87.149</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.4.8.1">Champ <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03536v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">66</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.4.8.2" rowspan="2"><span class="ltx_text" id="S3.T1.4.8.2.1">THuman2.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.8.3">17.547</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.8.4">0.859</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.8.5">0.2701</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.8.6">129.629</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.9">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.4.9.1">HumanFixer (Ours)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.4.9.2"><span class="ltx_text ltx_font_bold" id="S3.T1.4.9.2.1">23.741</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.4.9.3"><span class="ltx_text ltx_font_bold" id="S3.T1.4.9.3.1">0.889</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.4.9.4"><span class="ltx_text ltx_font_bold" id="S3.T1.4.9.4.1">0.0720</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.4.9.5"><span class="ltx_text ltx_font_bold" id="S3.T1.4.9.5.1">94.570</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of HumanDreamer-X against other state-of-the-art (SOTA) methods in multi-view video generation.  Metrics include PSNR (Peak Signal-to-Noise Ratio), SSIM (Structural Similarity Index), LPIPS (Learned Perceptual Image Patch Similarity), and FID (Fréchet Inception Distance). Higher PSNR and SSIM values, and lower LPIPS and FID values, indicate better video quality.  The table shows results on two datasets, CustomHumans and THuman2.1.
> <details>
> <summary>read the caption</summary>
> Table 1: Multi-view video generation comparison of other SOTA method. Bold indicate the best result.
> </details>





### In-depth insights


#### Gaussian Refinement
**Gaussian refinement** could refer to a process of iteratively improving the quality of a 3D Gaussian Splatting (3DGS) model. This iterative process would likely involve alternating between rendering the current Gaussian representation and updating the parameters of the Gaussians based on a loss function that encourages both accurate reconstruction of the input images and certain priors. The refinement might focus on optimizing the shape, position, color, and opacity of the Gaussians, potentially incorporating techniques like adaptive density control to add or remove Gaussians as needed. Such refinement strategies are crucial for achieving high-fidelity representations, especially when dealing with noisy or incomplete input data.

#### Attention Matters
Attention mechanisms play a crucial role in various deep learning tasks. **Effective attention allocation is paramount for models to focus on relevant information and ignore irrelevant details**, leading to improved performance. Inconsistent or poorly distributed attention can hinder learning and result in suboptimal outcomes. **Exploring and mitigating inherent challenges related to attention layers** is essential for ensuring robust performance. By investigating attention mechanisms and proposing effective strategies, it becomes possible to improve the quality and consistency of generated content, leading to better geometric and identity preservation.

#### Unified Pipeline
The concept of a 'Unified Pipeline' suggests a streamlined approach to address complexities in human avatar creation. **Integration** is key, merging traditionally separate stages like multi-view image generation and 3D reconstruction. This tackles inconsistencies common in decoupled methods, where errors in initial stages propagate and amplify. By unifying these processes, the pipeline allows for **mutual enhancement**, leveraging the strengths of each component. For example, initial 3D reconstruction provides geometric priors that guide subsequent image generation, leading to more consistent and realistic avatars. This unified approach contrasts sharply with earlier methods that relied on sequential application of independent modules, often resulting in fragmented or blurry reconstructions due to the lack of feedback and error correction between stages. The goal is to ensure geometric and visual consistency throughout the entire process, producing high-quality, animatable 3D avatars suitable for a wide array of applications. **Attention mechanisms** are also improved to handle the unique issues of multi-view consistency.

#### In-the-wild Data
Analyzing research on "in-the-wild" data emphasizes the challenges of applying models trained in controlled settings to real-world, unconstrained environments. **Data diversity is key**: models must generalize across varying lighting, viewpoints, occlusions, and subject appearances. Overfitting to specific datasets is a major concern; robust techniques are needed to handle noisy or incomplete data. Evaluation metrics must reflect real-world performance, moving beyond standard benchmarks. **In-the-wild data often lacks high-quality ground truth**, necessitating reliance on proxy measures or unsupervised evaluation methods. The research should consider methods for domain adaptation and transfer learning to improve model performance in these diverse settings, focusing on adaptability and resilience. Effective handling of "in-the-wild" data is crucial for the practical deployment of computer vision models.

#### HumanDreamer-X
From the context, HumanDreamer-X is presented as a **novel framework** designed to reconstruct photorealistic single-image human avatars. It appears to address the challenges of existing methods that struggle with geometric inconsistencies and visual fidelity when generating avatars from single images. The core idea revolves around a **unified pipeline integrating multi-view human generation and 3D reconstruction**, aiming to enhance both geometric detail and visual quality. The use of **3D Gaussian Splatting (3DGS)** as an explicit 3D representation seems crucial, providing initial geometry and appearance priors.  Further refinement is achieved through a trained model called **HumanFixer**, which restores 3DGS renderings to a photorealistic level. Addressing attention mechanism limitations in multi-view human generation is also a significant aspect, with the introduction of an attention modulation strategy to improve geometric detail identity consistency. The emphasis on geometric consistency and visual fidelity suggests a focus on creating avatars that are not only visually appealing but also structurally sound and suitable for downstream tasks like animation. The reported improvements in PSNR metrics highlight the quantitative benefits of HumanDreamer-X, alongside generalization capabilities on in-the-wild data, showing the method's robustness across diverse scenarios. Ultimately, HumanDreamer-X seems like a promising approach for high-quality, animatable human avatar creation from single images.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T2.6">
<tr class="ltx_tr" id="S3.T2.4.4">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T2.4.4.5">Gen Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.4.4.6">Recon Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.4.4.7">Testset</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.1">PSNR <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.m1.1a"><mo id="S3.T2.1.1.1.m1.1.1" stretchy="false" xref="S3.T2.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.m1.1b"><ci id="S3.T2.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.2.2.2">SSIM <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.2.2.2.m1.1"><semantics id="S3.T2.2.2.2.m1.1a"><mo id="S3.T2.2.2.2.m1.1.1" stretchy="false" xref="S3.T2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.m1.1b"><ci id="S3.T2.2.2.2.m1.1.1.cmml" xref="S3.T2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.3.3.3">LPIPS <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.3.3.3.m1.1"><semantics id="S3.T2.3.3.3.m1.1a"><mo id="S3.T2.3.3.3.m1.1.1" stretchy="false" xref="S3.T2.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.3.m1.1b"><ci id="S3.T2.3.3.3.m1.1.1.cmml" xref="S3.T2.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.4.4.4">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.4.4.4.m1.1"><semantics id="S3.T2.4.4.4.m1.1a"><mo id="S3.T2.4.4.4.m1.1.1" stretchy="false" xref="S3.T2.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.4.4.4.m1.1b"><ci id="S3.T2.4.4.4.m1.1.1.cmml" xref="S3.T2.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.6.7.1">PSHuman</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.7.2">PSHuman</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.7.3" rowspan="5"><span class="ltx_text" id="S3.T2.6.7.3.1">CustomHumans</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.7.4">20.089</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.7.5">0.8439</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.7.6">0.1770</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.7.7">87.816</td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.8">
<td class="ltx_td ltx_align_left" id="S3.T2.6.8.1">Champ</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.8.2">GaussianAvatar</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.8.3">19.673</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.8.4">0.8789</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.8.5">0.2643</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.8.6">164.554</td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.9">
<td class="ltx_td ltx_align_left" id="S3.T2.6.9.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S3.T2.6.9.1.1">HumanDreamer-X</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.9.2">GaussianAvatar</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.9.3"><span class="ltx_text ltx_font_bold" id="S3.T2.6.9.3.1">23.639</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.9.4">0.9100</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.9.5">0.2427</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.9.6">114.804</td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.10">
<td class="ltx_td ltx_align_left" id="S3.T2.6.10.1">Champ</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.10.2">Animatable gaussians</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.10.3">16.853</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.10.4">0.9157</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.10.5">0.1251</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.10.6">122.752</td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.11">
<td class="ltx_td ltx_align_left" id="S3.T2.6.11.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S3.T2.6.11.1.1">HumanDreamer-X</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.11.2">Animatable gaussians</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.11.3">22.631</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.11.4"><span class="ltx_text ltx_font_bold" id="S3.T2.6.11.4.1">0.9458</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.11.5"><span class="ltx_text ltx_font_bold" id="S3.T2.6.11.5.1">0.0729</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.11.6"><span class="ltx_text ltx_font_bold" id="S3.T2.6.11.6.1">71.250</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.5.5.1">SiTH<sup class="ltx_sup" id="S3.T2.5.5.1.1">∗</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.5.2">SiTH</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.5.5.3" rowspan="6"><span class="ltx_text" id="S3.T2.5.5.3.1">THuman2.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.5.4">18.458</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.5.5">0.8200</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.5.6">0.1004</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.5.7">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.6">
<td class="ltx_td ltx_align_left" id="S3.T2.6.6.1">PSHuman<sup class="ltx_sup" id="S3.T2.6.6.1.1">∗</sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.6.2">PSHuman</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.6.3">20.855</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.6.4">0.8636</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.6.5"><span class="ltx_text ltx_font_bold" id="S3.T2.6.6.5.1">0.0764</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.6.6">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.12">
<td class="ltx_td ltx_align_left" id="S3.T2.6.12.1">Champ</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.12.2">GaussianAvatar</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.12.3">18.264</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.12.4">0.8842</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.12.5">0.2639</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.12.6">129.413</td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.13">
<td class="ltx_td ltx_align_left" id="S3.T2.6.13.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S3.T2.6.13.1.1">HumanDreamer-X</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.13.2">GaussianAvatar</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.13.3">19.328</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.13.4">0.8945</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.13.5">0.2578</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.13.6">132.200</td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.14">
<td class="ltx_td ltx_align_left" id="S3.T2.6.14.1">Champ</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.14.2">Animatable gaussians</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.14.3">18.908</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.14.4">0.9328</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.14.5">0.1278</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.14.6">176.836</td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.15">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.6.15.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S3.T2.6.15.1.1">HumanDreamer-X</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.6.15.2">Animatable gaussians</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.6.15.3"><span class="ltx_text ltx_font_bold" id="S3.T2.6.15.3.1">21.091</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.6.15.4"><span class="ltx_text ltx_font_bold" id="S3.T2.6.15.4.1">0.9403</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.6.15.5">0.0968</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.6.15.6"><span class="ltx_text ltx_font_bold" id="S3.T2.6.15.6.1">78.174</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of 3D human reconstruction results using different methods.  It contrasts the performance of HumanDreamer-X against several state-of-the-art baselines across various metrics, including Peak Signal-to-Noise Ratio (PSNR), Structural Similarity Index (SSIM), Learned Perceptual Image Patch Similarity (LPIPS), and Fréchet Inception Distance (FID). The results are shown for two different datasets: CustomHumans and THuman2.1. Note that some FID scores are marked with an asterisk (*).  This is because the results for PSHuman on the THuman2.1 dataset are derived using only 60 samples from the original dataset, as reported in the cited paper.
> <details>
> <summary>read the caption</summary>
> Table 2: 3D reconstruction comparison. * denotes the metric is from PSHuman[27], which choose 60 samples from THuman2.1.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.4.4">
<tr class="ltx_tr" id="S4.T3.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.4.4.4.5">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.1">PSNR <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.2.2.2.2">SSIM <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.3.3.3">LPIPS <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T3.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.4.4.4">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.4.m1.1"><semantics id="S4.T3.4.4.4.4.m1.1a"><mo id="S4.T3.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T3.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.4.m1.1b"><ci id="S4.T3.4.4.4.4.m1.1.1.cmml" xref="S4.T3.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.4.4.5.1">w/o attention mask (non-cyclic)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.5.2">25.514</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.5.3"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.5.3.1">0.885</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.5.4">0.0704</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.5.5">95.065</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.6">
<td class="ltx_td ltx_align_left" id="S4.T3.4.4.6.1">w/o attention mask (cyclic)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.6.2"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.6.2.1">25.667</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.6.3">0.800</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.6.4">0.1453</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.6.5">106.705</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.7">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.4.4.7.1">w attention mask (cyclic)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.4.7.2">25.618</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.4.7.3">0.882</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.4.7.4"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.7.4.1">0.0687</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.4.7.5"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.7.5.1">87.149</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of the attention modulation mechanism on the quality of generated videos within the HumanDreamer-X framework.  Specifically, it compares results from using cyclic videos (with and without the attention mask) to results using non-cyclic videos.  The results are evaluated using metrics like PSNR, SSIM, LPIPS, and FID to demonstrate the effectiveness of the proposed attention modulation technique in improving video generation quality.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study of attention modulation on CustomHumans subset about generation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.4.4">
<tr class="ltx_tr" id="S4.T4.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.4.4.4.5">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.1">PSNR <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.2.2.2.2">SSIM <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.2.m1.1a"><mo id="S4.T4.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T4.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.2.m1.1b"><ci id="S4.T4.2.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.3.3.3.3">LPIPS <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.3.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.3.m1.1a"><mo id="S4.T4.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T4.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.3.m1.1b"><ci id="S4.T4.3.3.3.3.m1.1.1.cmml" xref="S4.T4.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.4.4.4.4">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.4.4.4.4.m1.1"><semantics id="S4.T4.4.4.4.4.m1.1a"><mo id="S4.T4.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T4.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.4.m1.1b"><ci id="S4.T4.4.4.4.4.m1.1.1.cmml" xref="S4.T4.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.4.4.5.1">w/o attention mask (non-cyclic)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.5.2">21.309</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.5.3">0.9398</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.5.4">0.0867</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.5.5">112.812</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.6">
<td class="ltx_td ltx_align_left" id="S4.T4.4.4.6.1">w/o attention mask (cyclic)</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.6.2">20.867</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.6.3">0.9351</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.6.4">0.0955</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.6.5">139.693</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.7">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.4.4.7.1">w attention mask (cyclic)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.4.7.2"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.7.2.1">22.631</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.4.7.3"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.7.3.1">0.9458</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.4.7.4"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.7.4.1">0.0729</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.4.7.5"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.7.5.1">71.250</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of the attention modulation technique on 3D human reconstruction performance.  Specifically, it focuses on the CustomHumans dataset and utilizes the Animatable Gaussians [28] method for reconstruction.  The study compares the performance with and without attention modulation, examining the effects on PSNR, SSIM, LPIPS, and FID metrics.  Results are shown for cyclic and non-cyclic video sequences to explore the effect of cyclical frame relationships.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study of attention modulation on CustomHumans subset about reconstruction using Animatable Gaussians [28].
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.03536/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03536/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03536/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03536/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03536/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03536/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03536/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03536/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03536/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03536/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03536/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}