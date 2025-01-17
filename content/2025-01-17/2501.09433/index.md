---
title: "CaPa: Carve-n-Paint Synthesis for Efficient 4K Textured Mesh Generation"
summary: "CaPa: Carve-n-Paint Synthesis generates hyper-realistic 4K textured meshes in under 30 seconds, setting a new standard for efficient 3D asset creation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 Graphics AI Lab, NC Research",]
showSummary: true
date: 2025-01-16
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.09433 {{< /keyword >}}
{{< keyword icon="writer" >}} Hwan Heo et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.09433" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.09433" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.09433/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Generating high-quality 3D assets is crucial for many applications but existing methods are often slow, inefficient, or produce low-fidelity results.  Current approaches struggle with multi-view inconsistencies, slow generation times, and issues with surface reconstruction.  These challenges hinder the progress of 3D generative models and limit their practical applications.

CaPa tackles these problems with a two-stage "carve-and-paint" approach.  It uses a 3D latent diffusion model to generate geometry guided by multi-view inputs, ensuring structural consistency.  A novel Spatially Decoupled Attention then synthesizes high-resolution textures.  Finally, a 3D-aware occlusion inpainting algorithm fills untextured regions, resulting in high-quality outputs.  CaPa excels in both texture fidelity and geometric stability, generating ready-to-use 3D assets in under 30 seconds.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} CaPa, a two-stage framework, efficiently generates high-fidelity 3D assets by decoupling geometry and texture synthesis. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Spatially Decoupled Cross Attention synthesizes high-resolution textures (up to 4K) and resolves multi-view inconsistencies. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} 3D-aware occlusion inpainting generates cohesive results across the entire model, even in complex scenarios. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it presents **CaPa**, a novel and efficient method for generating high-quality 3D assets. This addresses a critical need in various fields, such as gaming, film, and VR/AR, where high-quality 3D models are in high demand. The efficiency of CaPa makes it particularly relevant to researchers working on scalable and practical solutions for 3D content creation, opening up new avenues for research in areas such as geometry and texture generation and improving the overall quality and speed of 3D asset production.

------
#### Visual Insights



![](https://arxiv.org/html/2501.09433/x1.png)

> 🔼 CaPa, a novel framework for efficient 4K textured mesh generation, is depicted.  The pipeline begins with multi-view images as input, which guide a 3D latent diffusion model (trained using ShapeVAE) to generate a 3D geometry. Four orthogonal views of this geometry are then rendered and used as input for a texture synthesis stage employing spatially decoupled attention.  This attention mechanism ensures high-quality textures while preventing inconsistencies across different views (the 'Janus problem'). Finally, a 3D-aware occlusion inpainting algorithm is applied to fill in any missing or incomplete texture regions, resulting in a hyper-quality textured mesh.
> <details>
> <summary>read the caption</summary>
> Figure 1: CaPa pipeline. We first generate 3D geometry using a 3D latent diffusion model. Using the learned 3D latent space with ShapeVAE, we train a 3D Latent Diffusion Model that generates 3D geometries, guided by multi-view images to ensure alignment between the generated shape and texture. After the 3D geometry is created, we render four orthogonal views of the mesh, which serve as inputs for texture generation. To produce a high-quality texture while preventing the Janus problem, we utilize a novel, model-agnostic spatially decoupled attention. Finally, we obtain a hyper-quality textured mesh through back projection and a 3D-aware occlusion inpainting algorithm.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.10">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.5.5.6"><span class="ltx_text" id="S4.T1.5.5.6.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.3.3.3">
<span class="ltx_text" id="S4.T1.3.3.3.1" style="font-size:90%;">CLIP (</span><math alttext="\rm I" class="ltx_Math" display="inline" id="S4.T1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.m1.1a"><mi id="S4.T1.1.1.1.m1.1.1" mathsize="90%" mathvariant="normal" xref="S4.T1.1.1.1.m1.1.1.cmml">I</mi><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1">I</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.m1.1c">\rm I</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.m1.1d">roman_I</annotation></semantics></math><span class="ltx_text" id="S4.T1.3.3.3.2" style="font-size:90%;">-</span><math alttext="\rm I" class="ltx_Math" display="inline" id="S4.T1.2.2.2.m2.1"><semantics id="S4.T1.2.2.2.m2.1a"><mi id="S4.T1.2.2.2.m2.1.1" mathsize="90%" mathvariant="normal" xref="S4.T1.2.2.2.m2.1.1.cmml">I</mi><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.m2.1b"><ci id="S4.T1.2.2.2.m2.1.1.cmml" xref="S4.T1.2.2.2.m2.1.1">I</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.m2.1c">\rm I</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.m2.1d">roman_I</annotation></semantics></math><span class="ltx_text" id="S4.T1.3.3.3.3" style="font-size:90%;">) </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.m3.1"><semantics id="S4.T1.3.3.3.m3.1a"><mo id="S4.T1.3.3.3.m3.1.1" mathsize="90%" stretchy="false" xref="S4.T1.3.3.3.m3.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.m3.1b"><ci id="S4.T1.3.3.3.m3.1.1.cmml" xref="S4.T1.3.3.3.m3.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.m3.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.m3.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.4.4.4">
<span class="ltx_text" id="S4.T1.4.4.4.1" style="font-size:90%;">FID </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.m1.1a"><mo id="S4.T1.4.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.m1.1b"><ci id="S4.T1.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.5.5.5">
<span class="ltx_text" id="S4.T1.5.5.5.1" style="font-size:90%;">Time </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.5.5.5.m1.1"><semantics id="S4.T1.5.5.5.m1.1a"><mo id="S4.T1.5.5.5.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.m1.1b"><ci id="S4.T1.5.5.5.m1.1.1.cmml" xref="S4.T1.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.6.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.2"><span class="ltx_text" id="S4.T1.6.6.2.1" style="font-size:90%;">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.3"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.3.1" style="font-size:90%;">86.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.4"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.4.1" style="font-size:90%;">47.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.6.1.1" style="font-size:90%;"><math alttext="\sim" class="ltx_Math" display="inline" id="S4.T1.6.6.1.1.m1.1"><semantics id="S4.T1.6.6.1.1.m1.1a"><mo id="S4.T1.6.6.1.1.m1.1.1" xref="S4.T1.6.6.1.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.1.1.m1.1b"><csymbol cd="latexml" id="S4.T1.6.6.1.1.m1.1.1.cmml" xref="S4.T1.6.6.1.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.1.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.1.1.m1.1d">∼</annotation></semantics></math>30 seconds</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7">
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.2">
<span class="ltx_text" id="S4.T1.7.7.2.1" style="font-size:90%;">DreamCraft3D </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.7.7.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.09433v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a><span class="ltx_text" id="S4.T1.7.7.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.3"><span class="ltx_text" id="S4.T1.7.7.3.1" style="font-size:90%;">77.61</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.4"><span class="ltx_text" id="S4.T1.7.7.4.1" style="font-size:90%;">75.66</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="S4.T1.7.7.1.m1.1"><semantics id="S4.T1.7.7.1.m1.1a"><mo id="S4.T1.7.7.1.m1.1.1" mathsize="90%" xref="S4.T1.7.7.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.1.m1.1b"><csymbol cd="latexml" id="S4.T1.7.7.1.m1.1.1.cmml" xref="S4.T1.7.7.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.1.m1.1d">∼</annotation></semantics></math><span class="ltx_text" id="S4.T1.7.7.1.1" style="font-size:90%;">3 hours</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8">
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.2">
<span class="ltx_text" id="S4.T1.8.8.2.1" style="font-size:90%;">Unique3D </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.8.8.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.09433v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a><span class="ltx_text" id="S4.T1.8.8.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.8.8.3.1" style="font-size:90%;">81.92</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.8.8.4.1" style="font-size:90%;">67.17</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="S4.T1.8.8.1.m1.1"><semantics id="S4.T1.8.8.1.m1.1a"><mo id="S4.T1.8.8.1.m1.1.1" mathsize="90%" xref="S4.T1.8.8.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T1.8.8.1.m1.1b"><csymbol cd="latexml" id="S4.T1.8.8.1.m1.1.1.cmml" xref="S4.T1.8.8.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.8.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.8.1.m1.1d">∼</annotation></semantics></math><span class="ltx_text" id="S4.T1.8.8.1.1" style="font-size:90%;">2 minutes</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.9">
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.2">
<span class="ltx_text" id="S4.T1.9.9.2.1" style="font-size:90%;">Era3D </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.9.9.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.09433v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S4.T1.9.9.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.3"><span class="ltx_text" id="S4.T1.9.9.3.1" style="font-size:90%;">66.81</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.4"><span class="ltx_text" id="S4.T1.9.9.4.1" style="font-size:90%;">89.18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="S4.T1.9.9.1.m1.1"><semantics id="S4.T1.9.9.1.m1.1a"><mo id="S4.T1.9.9.1.m1.1.1" mathsize="90%" xref="S4.T1.9.9.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T1.9.9.1.m1.1b"><csymbol cd="latexml" id="S4.T1.9.9.1.m1.1.1.cmml" xref="S4.T1.9.9.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.9.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.9.1.m1.1d">∼</annotation></semantics></math><span class="ltx_text" id="S4.T1.9.9.1.1" style="font-size:90%;">10 minutes</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.10">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.10.2">
<span class="ltx_text" id="S4.T1.10.10.2.1" style="font-size:90%;">SF3D </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.10.10.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.09433v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a><span class="ltx_text" id="S4.T1.10.10.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.10.3"><span class="ltx_text" id="S4.T1.10.10.3.1" style="font-size:90%;">70.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.10.4"><span class="ltx_text" id="S4.T1.10.10.4.1" style="font-size:90%;">84.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.10.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="S4.T1.10.10.1.m1.1"><semantics id="S4.T1.10.10.1.m1.1a"><mo id="S4.T1.10.10.1.m1.1.1" mathsize="90%" xref="S4.T1.10.10.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T1.10.10.1.m1.1b"><csymbol cd="latexml" id="S4.T1.10.10.1.m1.1.1.cmml" xref="S4.T1.10.10.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.10.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.10.1.m1.1d">∼</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.1.1" style="font-size:90%;">10 seconds</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of CaPa against several state-of-the-art image-to-3D generation methods.  The evaluation metrics used are CLIP score (higher is better, indicating better alignment between generated images and input text descriptions) and FID score (lower is better, indicating higher image quality and less divergence from real images). Generation time is also included.  The results show that CaPa significantly outperforms other methods in both CLIP and FID scores, while maintaining a reasonable generation time.
> <details>
> <summary>read the caption</summary>
> Table 1:  Quantitative results.  CaPa outperforms all the competitors by a significant margin in both CLIP score and FID score, with a reasonable generation time.
> </details>





### In-depth insights


#### CaPa: 3D Mesh Synthesis
CaPa, a novel framework for 3D mesh synthesis, presents a compelling approach to generating high-fidelity textured meshes efficiently.  Its **two-stage process**, decoupling geometry and texture synthesis, addresses limitations of previous methods.  The **geometry generation stage**, leveraging a 3D latent diffusion model guided by multi-view inputs, ensures structural consistency. This is followed by a **texture synthesis stage**, employing spatially decoupled cross-attention for high-resolution (up to 4K) textures, effectively mitigating multi-view inconsistencies.  Furthermore, CaPa incorporates a **3D-aware occlusion inpainting algorithm**, enhancing texture completeness. The results demonstrate that CaPa surpasses state-of-the-art methods in both texture fidelity and geometric stability, generating high-quality 3D assets in under 30 seconds. This combination of speed, fidelity, and robustness positions CaPa as a significant advancement in practical and scalable 3D asset generation.

#### Multi-view 3D Diffusion
Multi-view 3D diffusion models address a critical challenge in 3D asset generation: creating consistent representations from multiple viewpoints.  Standard approaches often struggle with inconsistencies, resulting in artifacts like the "Janus problem."  **Multi-view methods strive to overcome this by explicitly incorporating information from several camera angles during the diffusion process.** This can involve concatenating features from multiple views, using attention mechanisms to relate information across views, or employing specialized architectures that explicitly model 3D structure and view relationships.  The advantages are significant: improved consistency across views, more realistic and complete 3D models, and reduced artifacts. However, **challenges remain, particularly regarding computational cost and the scalability to high-resolution outputs.**  Efficiently handling multiple views without a massive increase in parameters is a key research area. The choice of appropriate architecture and the method for integrating multi-view information significantly impact the model's performance and the quality of generated assets.  Furthermore, **the availability of large-scale, high-quality multi-view datasets is crucial for training effective multi-view 3D diffusion models.**  Future research should focus on developing more efficient architectures and exploring innovative data augmentation techniques to address these limitations.

#### 4K Texture Synthesis
The concept of "4K Texture Synthesis" within the context of a research paper likely refers to the generation of high-resolution textures for 3D models.  This is a significant challenge in computer graphics because **high-resolution textures require substantial computational resources and memory**.  The paper likely explores methods to achieve this efficiently, possibly through techniques like **generative adversarial networks (GANs) or diffusion models**.  A key aspect is likely the trade-off between quality, speed, and memory usage.  The approach might involve techniques for **downsampling textures during training to manage computational needs, followed by upsampling to 4K for final output**.  **Efficiency is crucial**; methods which enable rapid 4K texture generation without significant performance compromise would be a major contribution.  The research may delve into **novel architectures, loss functions, or training strategies** to achieve this high-resolution texture synthesis with reduced resource demands and superior quality compared to existing methods.  The paper will likely showcase results and compare them to state-of-the-art methods to highlight any significant improvements in quality or performance metrics.

#### Occlusion Inpainting
The research paper section on "Occlusion Inpainting" addresses a critical challenge in multi-view 3D reconstruction: filling in missing texture information from occluded regions.  The authors propose a novel **3D-aware occlusion inpainting algorithm** that surpasses previous approaches by efficiently identifying and addressing untextured areas.  Instead of directly using standard 2D inpainting methods, which often struggle with spatial coherence in 3D, the algorithm utilizes **k-means clustering** to group occluded regions based on their surface normals and spatial coordinates, generating specialized UV maps for each cluster. This approach facilitates a more accurate representation of the occluded regions, enabling the use of a 2D diffusion model for inpainting while preserving surface locality.  The resulting cohesive textures significantly improve the overall quality of the generated 3D model.  The **model-agnostic nature** of this approach is also a significant advantage, allowing easy integration with various pre-trained diffusion models. The effectiveness is further highlighted by its superior performance to previous methods. This intelligent approach demonstrates a significant advancement in efficient and high-quality 3D asset generation, especially in handling complex occlusion scenarios.

#### Future of CaPa
The future of CaPa hinges on addressing its current limitations while expanding its capabilities.  **Improving PBR material understanding** is crucial; integrating with advanced material-aware diffusion models could significantly enhance realism.  **Addressing the Janus problem more robustly**, perhaps through innovative multi-view consistency techniques beyond spatially decoupled attention, is key.  **Scaling to even higher resolutions** (beyond 4K) while maintaining speed and efficiency will be a significant challenge requiring optimization across all stages of the pipeline. Exploring different mesh representations could potentially improve efficiency and geometry fidelity. Finally, **extending CaPa's functionality** to encompass novel applications such as interactive 3D modeling and animation, would demonstrate its versatility and further solidify its place as a leading 3D asset generation framework.  This will likely involve investigating more sophisticated methods for handling complex geometries and textural details while keeping the process rapid and user-friendly.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.09433/x2.png)

> 🔼 This figure illustrates the Spatially Decoupled Cross Attention mechanism.  The core idea is to improve multi-view texture generation by decoupling the attention process for each view. Instead of a single attention mechanism processing all views simultaneously, this method replicates the hidden feature channels within the denoising U-Net. Each set of duplicated channels then focuses exclusively on a single view's information. This allows the model to generate more consistent and higher-quality textures across different perspectives without sacrificing efficiency. The model-agnostic nature means it works with existing models like ControlNet, further enhancing texture fidelity by aligning the generated textures with the input geometry.
> <details>
> <summary>read the caption</summary>
> Figure 2: Spatially Decoupled Cross Attention. To produce high-quality multi-view images for a given geometry, we design a model-agnostic Spatially Decoupled Cross Attention. During cross-attention in denoising U-Net, we replicate hidden feature channels so that each duplicated channels focuses solely on the designated view. Since the design is model-agnostic, we can utilize an external ControlNet to guide the textures aligned with the input mesh.
> </details>



![](https://arxiv.org/html/2501.09433/x3.png)

> 🔼 CaPa uses a novel 3D-aware occlusion inpainting algorithm to address the problem of incomplete textures caused by occlusions in multi-view 3D models.  First, it clusters the surface normals and spatial coordinates of occluded faces to identify distinct occluded regions.  Then, it uses the cluster centers as viewpoints to generate specialized UV maps that preserve surface locality.  Finally, these UV maps are used to guide a 2D diffusion-based inpainting process, effectively filling the occluded regions in the texture. Importantly, these specialized UV maps are only used for inpainting and not the final texture.
> <details>
> <summary>read the caption</summary>
> Figure 3: 3D-Aware Occlusion Inpainting. First, we cluster the normal and spatial coordinates of the occluded face. Using clustered centers as viewpoints, we create specialized UV maps through projection mapping. This approach captures surface locality, allowing 2D diffusion-based inpainting to effectively fill occluded regions. Note that this UV map is utilized solely for occlusion.
> </details>



![](https://arxiv.org/html/2501.09433/extracted/6135590/figs/other_texture.png)

> 🔼 This figure compares CaPa's texturing results with two other state-of-the-art methods (SyncMVD and FlashTex).  It highlights CaPa's ability to generate high-quality textures that are consistent across multiple views, unlike the other methods which suffer from the 'Janus problem' (inconsistent textures across different viewpoints).  The Janus problem leads to visible artifacts and inconsistencies in the final 3D model.  CaPa effectively addresses the Janus problem by generating textures with consistent identity (ID), resulting in a more visually appealing and coherent 3D model.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparison of Texturing Method. Unlike prior works, CaPa effectively resolved the Janus problem with consistent ID.
> </details>



![](https://arxiv.org/html/2501.09433/x4.png)

> 🔼 This figure compares CaPa's image-to-3D generation results with several state-of-the-art methods.  All models' outputs were converted to polygonal meshes using the original code provided by the respective authors. The comparison highlights CaPa's superior performance in terms of both geometry stability and texture quality, particularly noticeable in the less-commonly-seen back and side views.  CaPa produces meshes with noticeably better visual fidelity and texture coherence.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative Comparison of Image-to-3D Generation. We compare CaPa with state-of-the-art Image-to-3D methods. Here, all the assets are converted to polygonal mesh, using its official code. The proposed CaPa significantly outperforms both geometry stability and texture quality, especially for the back and side view’s visual fidelity and texture coherence.
> </details>



![](https://arxiv.org/html/2501.09433/x5.png)

> 🔼 This figure presents an ablation study evaluating the impact of three key components of the CaPa model on 3D asset generation: multi-view guidance for geometry generation, spatially decoupled attention for texture synthesis, and 3D-aware occlusion inpainting.  Subfigure (a) compares geometry quality with and without multi-view guidance, showcasing improved results with the guidance. Subfigure (b) compares texture quality with and without spatially decoupled attention, highlighting its effectiveness in preventing the Janus problem (texture inconsistencies across views). Finally, subfigure (c) compares the performance of the proposed occlusion inpainting method with a state-of-the-art technique, demonstrating superior results in terms of texture fidelity.
> <details>
> <summary>read the caption</summary>
> Figure 6: Ablation Study. (a) demonstrates that using multi-view guidance significantly increases the geometry quality. (b) shows our Spatially Decoupled Attention effectively resolves the Janus problem, achieving high-fidelity texture coherence, (c) reveals our occlusion inpainting outperforms previous inpainting methods like UV-ControlNet, presented in Paint3D [59].
> </details>



![](https://arxiv.org/html/2501.09433/extracted/6135590/figs/scalability.png)

> 🔼 Figure 7 demonstrates CaPa's versatility and scalability by showcasing three examples. (a) shows a standard CaPa-generated output. (b) illustrates how CaPa seamlessly integrates with 3D inpainting by using a text prompt ('orange sofa, orange pulp') to modify the existing model, demonstrating its ability to adapt to new styles.  (c) highlights CaPa's model-agnostic nature by applying a pre-trained LoRA (Low-Rank Adaptation) for 'balloon style' without requiring additional 3D-specific training, thus showcasing its compatibility with external models and ease of customization.
> <details>
> <summary>read the caption</summary>
> Figure 7: Scalability of CaPa. (a) Original result of CaPa. (b) 3D inpainting result using text-prompt (“orange sofa, orange pulp”). CaPa’s texture generation extends smoothly to 3D inpainting, stylizing the generated asset. (c) CaPa w/ LoRA [14] adaptation. The model-agnostic approach allows CaPa to leverage pre-trained LoRA (balloon style) without additional 3D-specific retraining.
> </details>



![](https://arxiv.org/html/2501.09433/x6.png)

> 🔼 Figure 8 showcases the results of CaPa when integrated with Physically Based Rendering (PBR) material capabilities.  The images demonstrate CaPa's ability to generate high-quality textures that adapt to different lighting conditions. Three lighting scenarios are shown: 'city', 'studio', and 'night', all using Blender's default settings. The results highlight CaPa's potential for creating realistic 3D assets with accurate material properties and lighting interactions.
> <details>
> <summary>read the caption</summary>
> Figure 8: Result of the CaPa with PBR Understanding. We demonstrate CaPa’s capability for disentangling physically based rendering (PBR) materials. The figure shows PBR-aware generation results under various lighting conditions: ‘city,’ ‘studio,’ and ‘night,’ using Blender’s default environment settings [7]. As shown, CaPa effectively adapts to different light environments, highlighting its potential for PBR-aware asset generation.
> </details>



![](https://arxiv.org/html/2501.09433/x7.png)

> 🔼 Figure 10 showcases the diverse range of 3D assets CaPa can generate from text and image inputs.  The examples illustrate CaPa's ability to produce high-quality, detailed models across a variety of object categories, including animals (tigers, dragons), accessories (handbags), characters (cartoon figures, superheroes), and household items. The figure highlights CaPa's flexibility and its potential for practical applications in 3D asset creation for games, films, and VR/AR experiences.
> <details>
> <summary>read the caption</summary>
> Figure 9: Additional Image-to-3D Results of CaPa. CaPa can generate diverse objects from textual, and visual input. The result demonstrates our diversity across the various categories, marking a significant advancement in practical 3D asset generation methodologies.
> </details>



![](https://arxiv.org/html/2501.09433/x8.png)

> 🔼 Figure 10 presents a detailed comparison of 3D model generation results from CaPa against several state-of-the-art methods.  The comparison highlights CaPa's superior performance in terms of both geometry stability and texture quality, particularly noticeable in the back and side views where other methods often exhibit significant degradation. The figure shows multiple views of several different 3D models, allowing for a visual assessment of the quality and consistency across various perspectives. This demonstrates CaPa's ability to produce high-fidelity 3D assets which are structurally sound and maintain texture detail from different viewpoints.
> <details>
> <summary>read the caption</summary>
> Figure 10: Additional Comparison of Image-to-3D Generation. CaPa significantly outperforms both geometry stability and texture quality, especially for the back and side view’s visual fidelity and texture coherence.
> </details>



![](https://arxiv.org/html/2501.09433/x9.png)

> 🔼 This figure demonstrates the effectiveness of the proposed spatially decoupled cross-attention mechanism in preventing the Janus artifact, a common issue in multi-view 3D texture generation.  Each row shows a comparison of three different approaches for generating textures: (a) using the spatially decoupled cross-attention, (b) without using the spatially decoupled cross-attention (resulting in the Janus artifact), and (c) a mesh rendering of the current view for better visualization.  The comparison highlights how the proposed method improves multi-view consistency and eliminates texture discrepancies.
> <details>
> <summary>read the caption</summary>
> Figure 11: Impact of Spatially Decoupled Cross Attention on Janus Artifacts. In this additional figure, We demonstrate the capability of Janus prevention in the proposed spatially decoupled cross-attention mechanism. Each row depicts, (a) with spatially decoupled cross attention, (b) without spatially decoupled cross attention, and (c) a mesh rendering of the current view, respectively.
> </details>



![](https://arxiv.org/html/2501.09433/x10.png)

> 🔼 This figure compares three different occlusion inpainting methods: the authors' proposed 3D-aware approach, automatic view selection, and UV ControlNet. Each method's results are shown for various objects with challenging occlusions, demonstrating the strengths and limitations of each approach in terms of texture fidelity, seam visibility, and overall visual coherence.
> <details>
> <summary>read the caption</summary>
> Figure 12: Qualitative results for different occlusion inpainting methods. (a) shows results from our 3D-aware occlusion inpainting method, (b) uses automatic view selection, and (c) employs UV ControlNet.
> </details>



![](https://arxiv.org/html/2501.09433/x11.png)

> 🔼 This figure showcases various 3D models generated by CaPa from text prompts.  It highlights CaPa's ability to create high-resolution textures that seamlessly integrate with well-defined 3D geometries.  The examples demonstrate CaPa's versatility in generating a wide range of objects, from skulls and anthropomorphic animals to furniture and fictional characters.  The detailed textures and sharp geometries demonstrate the system's effectiveness and its capability to produce high-quality 3D assets suitable for various applications.
> <details>
> <summary>read the caption</summary>
> Figure 13: Text-to-3D Results of CaPa. CaPa can generate diverse objects from textual, and visual input. The result underscores CaPa’s strengths in generating high-resolution textures that align with well-defined geometries.
> </details>



![](https://arxiv.org/html/2501.09433/extracted/6135590/figs/remeshing_draft.png)

> 🔼 This figure demonstrates the remeshing process employed in the CaPa framework.  The original polygonal mesh (a) is shown, alongside the results after remeshing with quadrilateral faces (b) and triangular faces (c).  Remeshing is a crucial step in producing high-quality 3D models suitable for various applications, enhancing the mesh quality and resolving issues such as non-manifold geometry.  Quadrilateral remeshing offers a more structured and uniform mesh ideal for texturing and subsequent processing, while triangular remeshing is more flexible. The figure showcases the improved mesh quality and regularity achieved through these remeshing techniques.
> <details>
> <summary>read the caption</summary>
> Figure 14: Results of Our Remeshing Algorithm. We employ a carefully designed remeshing scheme after geometry generation for better practical usage for broader applications. (a) shows the original polygonal mesh, (b) shows remeshed output of quadrilateral faces, and (c) shows remeshed output of triangular faces.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.3.3.4"><span class="ltx_text" id="S4.T2.3.3.4.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1">
<span class="ltx_text" id="S4.T2.1.1.1.1" style="font-size:90%;">FID </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.2.2">
<span class="ltx_text" id="S4.T2.2.2.2.1" style="font-size:90%;">KID </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.3.3.3">
<span class="ltx_text" id="S4.T2.3.3.3.1" style="font-size:90%;">Time </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.m1.1a"><mo id="S4.T2.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.m1.1b"><ci id="S4.T2.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.4.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.2"><span class="ltx_text" id="S4.T2.4.4.2.1" style="font-size:90%;">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.3"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.3.1" style="font-size:90%;">55.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.1" style="font-size:90%;">13.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="S4.T2.4.4.1.m1.1"><semantics id="S4.T2.4.4.1.m1.1a"><mo id="S4.T2.4.4.1.m1.1.1" mathsize="90%" xref="S4.T2.4.4.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.1.m1.1b"><csymbol cd="latexml" id="S4.T2.4.4.1.m1.1.1.cmml" xref="S4.T2.4.4.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.1.m1.1d">∼</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.1.1" style="font-size:90%;">5 sec.</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5">
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.2">
<span class="ltx_text" id="S4.T2.5.5.2.1" style="font-size:90%;">Automatic View-Selection </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.5.5.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.09433v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a><span class="ltx_text" id="S4.T2.5.5.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.5.5.3.1" style="font-size:90%;">62.31</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.5.5.4.1" style="font-size:90%;">15.83</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="S4.T2.5.5.1.m1.1"><semantics id="S4.T2.5.5.1.m1.1a"><mo id="S4.T2.5.5.1.m1.1.1" mathsize="90%" xref="S4.T2.5.5.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.1.m1.1b"><csymbol cd="latexml" id="S4.T2.5.5.1.m1.1.1.cmml" xref="S4.T2.5.5.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.1.m1.1d">∼</annotation></semantics></math><span class="ltx_text" id="S4.T2.5.5.1.1" style="font-size:90%;">20 sec.</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.2">
<span class="ltx_text" id="S4.T2.6.6.2.1" style="font-size:90%;">UV-ControlNet </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.6.6.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.09433v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a><span class="ltx_text" id="S4.T2.6.6.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.3"><span class="ltx_text" id="S4.T2.6.6.3.1" style="font-size:90%;">128.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.4"><span class="ltx_text" id="S4.T2.6.6.4.1" style="font-size:90%;">37.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="S4.T2.6.6.1.m1.1"><semantics id="S4.T2.6.6.1.m1.1a"><mo id="S4.T2.6.6.1.m1.1.1" mathsize="90%" xref="S4.T2.6.6.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.1.m1.1b"><csymbol cd="latexml" id="S4.T2.6.6.1.m1.1.1.cmml" xref="S4.T2.6.6.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.1.m1.1d">∼</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.1.1" style="font-size:90%;">5 sec.</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different occlusion inpainting methods, focusing on their ability to restore occluded regions in 3D textures while maintaining semantic consistency and contextual alignment.  The results are measured using FID and KID scores, which evaluate the visual fidelity and semantic similarity between the original and inpainted textures. Lower FID and KID scores indicate better performance. The table highlights the superior performance of the proposed 3D-aware occlusion inpainting method compared to alternative approaches, demonstrating its ability to reconstruct occluded areas effectively without introducing significant visual artifacts.
> <details>
> <summary>read the caption</summary>
> Table 2:  Quantitative Comparison of Occlusion Inpainting.  Our 3D-aware inpainting restores occlusions with minimal semantic drift and improves contextual alignment efficiently.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T3.3.3.4"><span class="ltx_text" id="A2.T3.3.3.4.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T3.3.3.3">
<span class="ltx_text" id="A2.T3.3.3.3.1" style="font-size:90%;">CLIP (</span><math alttext="\rm N" class="ltx_Math" display="inline" id="A2.T3.1.1.1.m1.1"><semantics id="A2.T3.1.1.1.m1.1a"><mi id="A2.T3.1.1.1.m1.1.1" mathsize="90%" mathvariant="normal" xref="A2.T3.1.1.1.m1.1.1.cmml">N</mi><annotation-xml encoding="MathML-Content" id="A2.T3.1.1.1.m1.1b"><ci id="A2.T3.1.1.1.m1.1.1.cmml" xref="A2.T3.1.1.1.m1.1.1">N</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.1.1.1.m1.1c">\rm N</annotation><annotation encoding="application/x-llamapun" id="A2.T3.1.1.1.m1.1d">roman_N</annotation></semantics></math><span class="ltx_text" id="A2.T3.3.3.3.2" style="font-size:90%;">-</span><math alttext="\rm I" class="ltx_Math" display="inline" id="A2.T3.2.2.2.m2.1"><semantics id="A2.T3.2.2.2.m2.1a"><mi id="A2.T3.2.2.2.m2.1.1" mathsize="90%" mathvariant="normal" xref="A2.T3.2.2.2.m2.1.1.cmml">I</mi><annotation-xml encoding="MathML-Content" id="A2.T3.2.2.2.m2.1b"><ci id="A2.T3.2.2.2.m2.1.1.cmml" xref="A2.T3.2.2.2.m2.1.1">I</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.2.2.2.m2.1c">\rm I</annotation><annotation encoding="application/x-llamapun" id="A2.T3.2.2.2.m2.1d">roman_I</annotation></semantics></math><span class="ltx_text" id="A2.T3.3.3.3.3" style="font-size:90%;">) </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T3.3.3.3.m3.1"><semantics id="A2.T3.3.3.3.m3.1a"><mo id="A2.T3.3.3.3.m3.1.1" mathsize="90%" stretchy="false" xref="A2.T3.3.3.3.m3.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T3.3.3.3.m3.1b"><ci id="A2.T3.3.3.3.m3.1.1.cmml" xref="A2.T3.3.3.3.m3.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.3.3.3.m3.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T3.3.3.3.m3.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T3.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A2.T3.3.4.1.1"><span class="ltx_text" id="A2.T3.3.4.1.1.1" style="font-size:90%;">w/ Spatially Decoupled Attention</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.3.4.1.2"><span class="ltx_text ltx_font_bold" id="A2.T3.3.4.1.2.1" style="font-size:90%;">85.37</span></td>
</tr>
<tr class="ltx_tr" id="A2.T3.3.5.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="A2.T3.3.5.2.1"><span class="ltx_text" id="A2.T3.3.5.2.1.1" style="font-size:90%;">w/o Spatially Decoupled Attention</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T3.3.5.2.2"><span class="ltx_text" id="A2.T3.3.5.2.2.1" style="font-size:90%;">81.28</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative analysis of the Janus effect, a common artifact in multi-view 3D generation where inconsistencies appear between different views of a generated object.  The Janus effect is evaluated by calculating the CLIP (Contrastive Language–Image Pre-training) similarity score between the rendered normal maps (representing the surface geometry) and the generated textures.  A higher CLIP score indicates better alignment and consistency between the geometry and texture across multiple views, suggesting a reduction in Janus artifacts. The table compares the average CLIP scores obtained with and without the proposed spatially decoupled cross-attention mechanism, demonstrating the effectiveness of this mechanism in mitigating the Janus effect.
> <details>
> <summary>read the caption</summary>
> Table 3:  Quantitative analysis of Janus Artifacts, measuring a CLIP score between rendered normals and textures across random views.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.09433/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09433/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09433/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09433/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09433/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09433/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09433/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09433/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09433/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09433/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09433/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09433/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09433/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09433/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09433/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09433/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09433/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09433/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09433/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}