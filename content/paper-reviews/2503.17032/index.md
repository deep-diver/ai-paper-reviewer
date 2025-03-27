---
title: "TaoAvatar: Real-Time Lifelike Full-Body Talking Avatars for Augmented Reality via 3D Gaussian Splatting"
summary: "TaoAvatar: Lifelike talking avatars in AR, using 3D Gaussian Splatting for real-time rendering and high fidelity."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 Alibaba Group",]
showSummary: true
date: 2025-03-21
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.17032 {{< /keyword >}}
{{< keyword icon="writer" >}} Jianchuan Chen et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-24 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.17032" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.17032" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.17032/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Creating realistic 3D talking avatars is crucial for AR/VR applications. Existing methods struggle with fine-grained control of facial expressions and body movements, lack sufficient detail, and can't run in real-time on mobile devices. Current solutions are also depend on high-precision scans and manual effort.



This paper presents TaoAvatar, a new method using **3D Gaussian Splatting** for high-fidelity, lightweight full-body talking avatars. It employs a teacher-student framework for non-rigid deformation baking and introduces lightweight blend shapes for efficient rendering on mobile devices. The authors also introduce TalkBody4D, a new dataset for full-body talking scenarios.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces a teacher-student framework for creating lightweight, high-fidelity 3DGS-based full-body talking avatars. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Proposes non-rigid deformation baking and lightweight blend shape compensations for efficient rendering on mobile and AR devices. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Contributes a new multi-view dataset, TalkBody4D, for full-body talking scenarios with diverse expressions and gestures. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers as it presents a novel method for creating **high-fidelity, real-time full-body talking avatars**, addressing the limitations of existing methods. The new dataset will help advance research, and the potential applications, especially in AR, are significant. This work opens avenues for future research in efficient avatar rendering and animation.

------
#### Visual Insights



![](https://arxiv.org/html/2503.17032/x2.png)

> 🔼 This figure demonstrates the TaoAvatar system's pipeline.  (a) shows the input: multiple views of a person captured from different angles. (b) shows the output: a photorealistic, full-body, 3D avatar that can be manipulated in real-time, featuring realistic facial expressions and body movements.  This avatar is topologically consistent, meaning its 3D structure is accurate and reliable. Finally, (c) shows that this avatar is runnable on various AR devices such as Apple Vision Pro, making it highly portable and accessible. The system achieves high-quality rendering at real-time speeds with low storage needs.
> <details>
> <summary>read the caption</summary>
> Figure 1: TaoAvatar generates photorealistic, topology-consistent 3D full-body avatars from multi-view sequences. It provides high-quality, real-time rendering with low storage requirements, compatible across various mobile and AR devices like the Apple Vision Pro.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.6.6">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.6.6.7.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="S4.T1.6.6.7.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S4.T1.6.6.7.1.2">Novel View</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S4.T1.6.6.7.1.3">Novel Gestures and Expression</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.6.7.1.4">Speed</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.6.6.7">Model</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.1.1">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.2.2">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T1.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.3.3.3.3">LPIPS<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T1.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.4.4">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.4.m1.1a"><mo id="S4.T1.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T1.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.4.m1.1b"><ci id="S4.T1.4.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.5.5">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.5.5.5.5.m1.1"><semantics id="S4.T1.5.5.5.5.m1.1a"><mo id="S4.T1.5.5.5.5.m1.1.1" stretchy="false" xref="S4.T1.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.5.m1.1b"><ci id="S4.T1.5.5.5.5.m1.1.1.cmml" xref="S4.T1.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.6.6.6">LPIPS<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.6.6.6.6.m1.1"><semantics id="S4.T1.6.6.6.6.m1.1a"><mo id="S4.T1.6.6.6.6.m1.1.1" stretchy="false" xref="S4.T1.6.6.6.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.6.m1.1b"><ci id="S4.T1.6.6.6.6.m1.1.1.cmml" xref="S4.T1.6.6.6.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.6.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.6.8">FPS</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.8.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.6.8.2.1">GaussianAvatar<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17032v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.8.2.2">26.58 (23.57)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.8.2.3">.9313 (.8159)</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.6.8.2.4">.10577 (.25242)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.8.2.5">25.99 (23.15)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.8.2.6">.9232 (.8092)</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.6.8.2.7">.12265 (.26207)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.8.2.8">54</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.9.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.6.9.3.1">3DGS-Avatar<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17032v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">46</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.9.3.2">28.91 (23.95)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.9.3.3">.9411 (.8303)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.6.9.3.4">.07984 (.20450)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.9.3.5">26.46 (23.32)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.9.3.6">.9157 (.8184)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.6.9.3.7">.11804 (.21632)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.9.3.8">55</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.10.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.6.10.4.1">MeshAvatar<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17032v1#bib.bib10" title=""><span class="ltx_text" style="font-size:90%;">10</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.10.4.2">28.53 (24.55)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.10.4.3">.9360 (.8083)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.6.10.4.4">.09470 (.25572)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.10.4.5">27.08 (23.58)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.10.4.6">.9229 (.7965)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.6.10.4.7">.10783 (.24947)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.10.4.8">22</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.11.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.6.11.5.1">AnimatableGS<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17032v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.11.5.2">32.50 (26.42)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.11.5.3">.9599 (.8587)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.6.11.5.4">.06695 (.19535)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.11.5.5">28.05 (23.68)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.11.5.6">.9328 (.8142)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.6.11.5.7">.09191 (.22673)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.11.5.8">16</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.12.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.6.12.6.1">Ours (Teacher)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.12.6.2">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.6.12.6.2.1">33.45</span> (<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.6.12.6.2.2">27.01</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.12.6.3">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.6.12.6.3.1">.9649</span> (<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.6.12.6.3.2">.8741</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.6.12.6.4">
<span class="ltx_text ltx_font_bold" id="S4.T1.6.6.12.6.4.1">.04986</span> (<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.6.12.6.4.2">.15613</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.12.6.5">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.6.12.6.5.1">28.28</span> (<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.6.12.6.5.2">24.28</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.12.6.6">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.6.12.6.6.1">.9336</span> (<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.6.12.6.6.2">.8291</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.6.12.6.7">
<span class="ltx_text ltx_font_bold" id="S4.T1.6.6.12.6.7.1">.07385</span> (<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.6.12.6.7.2">.18176</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.12.6.8">16</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.13.7">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.6.6.13.7.1">Ours (Student)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.6.13.7.2">
<span class="ltx_text ltx_font_bold" id="S4.T1.6.6.13.7.2.1">33.81</span> (<span class="ltx_text ltx_font_bold" id="S4.T1.6.6.13.7.2.2">27.80</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.6.13.7.3">
<span class="ltx_text ltx_font_bold" id="S4.T1.6.6.13.7.3.1">.9689</span> (<span class="ltx_text ltx_font_bold" id="S4.T1.6.6.13.7.3.2">.8975</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.6.6.13.7.4">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.6.13.7.4.1">.06437</span> (<span class="ltx_text ltx_font_bold" id="S4.T1.6.6.13.7.4.2">.14218</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.6.13.7.5">
<span class="ltx_text ltx_font_bold" id="S4.T1.6.6.13.7.5.1">28.38</span> (<span class="ltx_text ltx_font_bold" id="S4.T1.6.6.13.7.5.2">24.99</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.6.13.7.6">
<span class="ltx_text ltx_font_bold" id="S4.T1.6.6.13.7.6.1">.9389</span> (<span class="ltx_text ltx_font_bold" id="S4.T1.6.6.13.7.6.2">.8525</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.6.6.13.7.7">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.6.13.7.7.1">.08874</span> (<span class="ltx_text ltx_font_bold" id="S4.T1.6.6.13.7.7.2">.13364</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.6.13.7.8"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.13.7.8.1">156</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of different methods for generating full-body talking avatars.  Metrics include PSNR, SSIM, and LPIPS, evaluating both overall image quality and the quality of the facial region specifically.  Inference speed (frames per second, or FPS) is also reported, using an Nvidia RTX4090 GPU at a rendering resolution of 1500x2000 pixels.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparisons on full-body talking task. The results inside the parentheses are evaluated for the face area, and the inference speed is evaluated on Nvidia RTX4090 when rendering images at a resolution of 1500 × 2000.
> </details>





### In-depth insights


#### Lifelike Avatars
Lifelike avatars represent a significant pursuit in computer graphics and AR/VR, aiming to create digital representations that closely mimic real humans. This involves capturing realistic appearance, motion, and behavior. Challenges include **achieving high fidelity in rendering**, accurately capturing subtle facial expressions and body language, and ensuring real-time performance, especially on mobile devices. Advances in 3D scanning, neural rendering (NeRFs), and 3D Gaussian Splatting (3DGS) are driving progress. Key considerations are **topology consistency, detail preservation, and computational efficiency** for seamless integration into interactive applications. The creation of such avatars also brings ethical concerns around identity and authenticity.

#### 3DGS & SMPLX++
Combining **3D Gaussian Splatting (3DGS)** and **SMPLX++** models for realistic avatar creation is a smart move. 3DGS excels at high-quality rendering and real-time performance, while SMPLX++ provides a parametric human model with clothes and hair. This pairing can result in detailed and animatable avatars. The challenge lies in efficiently integrating these two different representations. One way to integrate them would be using 3DGS to enhance the visual realism of SMPLX++ avatars. Another approach would be to use SMPLX++ to guide the placement and deformation of Gaussians in the 3DGS scene. Another major issue is optimizing the model for real-time performance on mobile devices. Efficient data structures and rendering techniques are essential. Also, the model needs to be robust to varying lighting conditions and viewpoints. Addressing these challenges could lead to significant advancements in avatar technology.

#### Distill Deform
The concept of 'Distill Deform,' likely refers to a process where a complex deformation field or model is simplified into a more manageable representation, often for efficiency. This distillation could involve **transferring knowledge** from a larger, high-capacity model (teacher) to a smaller, more efficient model (student). The deformation itself might be represented initially by a neural network with many layers, and the distillation step aims to **compress** this representation. Another part may involve extracting the most salient features and discarding less important information. This could involve techniques like **parameter pruning**, **knowledge distillation**, or even approximating the deformation with a simpler functional form. The goal here is to achieve a balance between **accuracy** and **computational efficiency**, making the model more suitable for real-time applications or deployment on resource-constrained devices. The 'Distill Deform' process is crucial for creating practical solutions that can perform well without being overly complex.

#### AR on Mobile
While the provided document doesn't explicitly discuss "AR on Mobile," its content strongly implies the challenges and advancements in enabling augmented reality experiences on mobile devices. Key considerations revolve around **computational constraints**. Mobile AR demands lightweight algorithms and efficient rendering techniques like 3D Gaussian Splatting, essential for real-time performance. **High-fidelity avatars**, as presented in the paper, require intricate detail, making optimization crucial for mobile deployment. The method of **teacher-student learning** is an intelligent way to distill complex models into smaller networks. These networks will not be computationally expensive, making them easier to deploy for AR in mobile. Another important aspect is **sensor input.**

#### TalkingBody4D
**TalkBody4D** represents a novel dataset tailored for full-body talking avatar research. It seems to address the limitations of existing datasets by focusing on realistic, everyday talking scenarios. **A key strength lies in capturing rich mouth movements and diverse gestures synchronized with audio**, crucial for lifelike avatar behavior. This contrasts with datasets emphasizing general motion, potentially lacking the nuances of conversational body language. **The dataset's multi-view nature (60 views) and high resolution (4K) are significant**, allowing for detailed model training and evaluation. The inclusion of both full-body and face-region views suggests an understanding of the importance of both global body pose and fine-grained facial expressions in communication. The provision of SMPLX registrations is beneficial, streamlining the process of integrating the dataset with parametric avatar models. However, its composition (4 identities, 2 outfits each) might be a limiting factor; expanded diversity could enhance the generalizability of models trained on it. Future research could explore using this dataset to investigate the relationship between speech, gesture, and body pose in creating more believable and engaging talking avatars.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.17032/x3.png)

> 🔼 This figure illustrates the three main stages of the TaoAvatar method.  (a) shows the creation of a personalized clothed human model (SMPLX++) with Gaussian textures bound to its surface. (b) details the training of a StyleUnet (teacher network) to learn complex, pose-dependent non-rigid deformations. These deformations are then distilled into a simpler MLP (student network) for efficient real-time processing. (c) shows how learnable Gaussian blend shapes are added to further refine the avatar's appearance, resulting in high-fidelity rendering.
> <details>
> <summary>read the caption</summary>
> Figure 2: Illustration of our Method. Our pipeline begins by reconstructing (a) a cloth-extended SMPLX mesh with aligned Gaussian textures. To address complex dynamic non-rigid deformations, (b) we employ a teacher StyleUnet to learn pose-dependent non-rigid maps, which are then baked into a lightweight student MLP to infer non-rigid deformations of our template mesh. For high-fidelity rendering, (c) we introduce learnable Gaussian blend shapes to enhance appearance details.
> </details>



![](https://arxiv.org/html/2503.17032/x4.png)

> 🔼 This figure presents a qualitative comparison of full-body talking avatar generation results across different methods, including the authors' proposed method (Ours) and several state-of-the-art baselines. Each row represents a different pose and expression from a single video sequence, showcasing the performance of each approach. The comparison highlights the superiority of the authors' method in capturing the fine details of the clothing, including natural folds and wrinkles, and in rendering more realistic and expressive facial features. This visual comparison underscores the effectiveness of the proposed approach in achieving high-fidelity, real-time avatar generation.
> <details>
> <summary>read the caption</summary>
> Figure 3: Qualitative comparisons on full-body talking tasks. Our method outperforms state-of-the-art methods by producing clearer clothing dynamics and enhanced facial details.
> </details>



![](https://arxiv.org/html/2503.17032/x5.png)

> 🔼 Figure 4 showcases the robustness of the proposed method in handling challenging scenarios.  It presents several examples of avatar reconstructions under extreme poses and exaggerated facial expressions, highlighting the method's ability to maintain high-quality rendering even in these difficult conditions. The images visually demonstrate the superior performance of the TaoAvatar model compared to existing techniques in accurately representing detailed facial features and clothing dynamics, irrespective of complex body movements.
> <details>
> <summary>read the caption</summary>
> Figure 4: Results in challenging scenarios. Our method can obtain high-quality reconstruction even for challenging pose and expressions.
> </details>



![](https://arxiv.org/html/2503.17032/x6.png)

> 🔼 This figure showcases TaoAvatar's capability to generate realistic animations using only skeleton and expression parameters.  Different individuals are shown performing the same actions, highlighting the model's ability to capture and reproduce nuanced movements and expressions consistently across various subjects.
> <details>
> <summary>read the caption</summary>
> Figure 5: Novel pose and expression animation. TaoAvatar can be driven by the same skeleton and expression parameters vividly.
> </details>



![](https://arxiv.org/html/2503.17032/x8.png)

> 🔼 This ablation study visualizes the impact of different components of the proposed method on the final avatar quality.  By comparing the results with and without certain modules (like mesh non-rigid deformation or Gaussian non-rigid deformation), the figure highlights their individual contributions to generating high-fidelity avatars. Red and green boxes specifically point out artifacts present in the results and how these artifacts are addressed in the improved versions, providing a clear visual demonstration of the effectiveness of each component.
> <details>
> <summary>read the caption</summary>
> Figure 6: Ablation Study. Red and Green boxes show artifacts and their improved counterparts.
> </details>



![](https://arxiv.org/html/2503.17032/x9.png)

> 🔼 This figure illustrates the process of reconstructing a personalized clothed human model, called SMPLX++, which serves as the foundation for creating the 3D avatar.  The pipeline begins with multi-view images of a person. These images are used to reconstruct a 3D mesh using NeuS2, a neural radiance field method.  Next, the non-body components (like clothing and hair) are segmented and separated from the body mesh. The SMPLX model (a parametric human body model) parameters are estimated for a reference frame (usually a T-pose) and the skinning weights are propagated from the body mesh to the non-body components. Inverse skinning is then applied to transform the non-body components back to the reference pose. Finally, the body mesh and non-body components are combined to create the complete clothed parametric model SMPLX++.
> <details>
> <summary>read the caption</summary>
> Figure 7: The Pipeline of the Template SMPLX++ Reconstruction.
> </details>



![](https://arxiv.org/html/2503.17032/x10.png)

> 🔼 Figure 8 displays a comparison of different template meshes used to represent human avatars.  It showcases the original SMPL-X model, the MeshAvatar template, the AnimatableGS template, and the novel SMPLX++ template developed by the authors. The visual differences highlight the improvements in detail and clothing representation achieved by the SMPLX++ template, which forms the foundation of the authors' proposed method for creating high-fidelity, real-time avatars.
> <details>
> <summary>read the caption</summary>
> Figure 8: Template Comparison.
> </details>



![](https://arxiv.org/html/2503.17032/x11.png)

> 🔼 This figure shows the relighting visualization process.  The input is a raw rendered image, and the method uses the rendered normal map and an environment map to perform image-based relighting. The resulting image is more realistic and integrates better with the surrounding environment.
> <details>
> <summary>read the caption</summary>
> Figure 9: Relighting Visualisation.
> </details>



![](https://arxiv.org/html/2503.17032/x12.png)

> 🔼 This figure details the architecture of the mesh non-rigid deformation field, a key component in TaoAvatar's system for creating lifelike full-body avatars.  It showcases the network's input (pose and vertex coordinates), the processing steps involving two separate MLPs (Multilayer Perceptrons) to handle body and clothing deformations separately and the final output (the non-rigid deformation). The inclusion of a 'cloth mask' highlights the method's ability to specifically apply clothing deformation where needed.
> <details>
> <summary>read the caption</summary>
> Figure 10: Network Architecture of Mesh Nonrigid Deformation Field.
> </details>



![](https://arxiv.org/html/2503.17032/x13.png)

> 🔼 This figure shows an ablation study on the effect of adding a normal loss during the training process.  The normal loss helps to improve the accuracy of the rendered normal maps by promoting smoother and more realistic-looking normal vectors. The comparison shows a significant improvement in the quality of the normals when the normal loss is included, resulting in better rendering quality and realism.
> <details>
> <summary>read the caption</summary>
> Figure 11: The Impact of Normal Loss.
> </details>



![](https://arxiv.org/html/2503.17032/x14.png)

> 🔼 This figure shows a qualitative comparison of the results obtained from the teacher and student networks during the 'baking' process.  The images compare the ground truth, the teacher network output, and the student network output.  It visually demonstrates how the student network, a lightweight model, effectively learns and reproduces the complex non-rigid deformations initially learned by the more computationally expensive teacher network. The comparison shows the accuracy of the student network in approximating the deformations from the teacher network across different poses and includes a detailed look at the generated semantic maps (Sem. Et, Sem. Es) and Gaussian non-rigid deformation maps (Gau. Non. ∆Uf, Mesh Non. ∆V).
> <details>
> <summary>read the caption</summary>
> Figure 12: Qualitative Visualization of Baking.
> </details>



![](https://arxiv.org/html/2503.17032/x15.png)

> 🔼 This figure illustrates the complete pipeline for creating a 3D digital human agent that can interact in real time on Apple Vision Pro.  It shows how user audio input is processed through Automatic Speech Recognition (ASR), converted into text, and then interpreted by a large language model (LLM). The LLM's response generates text, which is then converted to speech via Text-to-Speech (TTS) and finally used to drive the facial expressions and body movements of the 3D avatar using a Body Motion Library and Audio2BS.
> <details>
> <summary>read the caption</summary>
> Figure 13: 3D Digital Human Agent Pipeline.
> </details>



![](https://arxiv.org/html/2503.17032/x16.png)

> 🔼 This ablation study visualizes the effect of including the semantic loss (Lsem) during the baking process of the neural network.  It shows a comparison of the rendered images with and without the semantic loss. The images demonstrate the improvements in detail and accuracy achieved by incorporating Lsem, particularly in areas where clothing and body intersect. The results highlight the importance of Lsem for resolving inconsistencies in the Gaussian splatting representation.
> <details>
> <summary>read the caption</summary>
> Figure 14: Ablation Study on Semantic Loss during Baking.
> </details>



![](https://arxiv.org/html/2503.17032/x17.png)

> 🔼 This figure provides a detailed qualitative comparison of the results produced by different methods for generating talking avatars. It showcases the level of detail achieved in face regions by comparing the results of the teacher model, the student model, and other state-of-the-art methods such as GaussianAvatar, MeshAvatar, 3DGS-Avatar, and AnimatableGS against the ground truth. This visual comparison highlights the superior detail achieved by the proposed model, especially in terms of facial expressions and textural details.
> <details>
> <summary>read the caption</summary>
> Figure 15: Qualitative Comparison of Details.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.3.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T2.3.3.3.4">Model</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.1">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.2.2.2">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.3.3.3">LPIPS<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.3.m1.1a"><mo id="S4.T2.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.m1.1b"><ci id="S4.T2.3.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.3.3.4.1.1">GaussianAvatar<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17032v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.4.1.2">25.94 (24.33)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.4.1.3">.9294 (.8251)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.4.1.4">.10478 (.24179)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.5.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.3.3.5.2.1">3DGS-Avatar<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17032v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">46</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.5.2.2">30.04 (25.08)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.5.2.3">.9403 (.8458)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.5.2.4">.08471 (.18044)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.6.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.3.3.6.3.1">MeshAvatar<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17032v1#bib.bib10" title=""><span class="ltx_text" style="font-size:90%;">10</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.6.3.2">28.51 (24.94)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.6.3.3">.9334 (.8100)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.6.3.4">.08846 (.23517)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.7.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.3.3.7.4.1">AnimatableGS<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17032v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.7.4.2">31.81 (26.79)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.7.4.3">.9493 (.8608)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.7.4.4">.07586 (.19521)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.8.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.3.3.8.5.1">Ours (Teacher)</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.8.5.2">
<span class="ltx_text ltx_font_bold" id="S4.T2.3.3.8.5.2.1">32.80</span> (<span class="ltx_text ltx_font_bold" id="S4.T2.3.3.8.5.2.2">27.40</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.8.5.3">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.8.5.3.1">.9533</span> (<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.8.5.3.2">.8768</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.8.5.4">
<span class="ltx_text ltx_font_bold" id="S4.T2.3.3.8.5.4.1">.05581</span> (<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.8.5.4.2">.14996</span>)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.9.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T2.3.3.9.6.1">Ours (Student)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.9.6.2">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.9.6.2.1">32.72</span> (<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.9.6.2.2">27.35</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.9.6.3">
<span class="ltx_text ltx_font_bold" id="S4.T2.3.3.9.6.3.1">.9579</span> (<span class="ltx_text ltx_font_bold" id="S4.T2.3.3.9.6.3.2">.8836</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.9.6.4">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.9.6.4.1">.07326</span> (<span class="ltx_text ltx_font_bold" id="S4.T2.3.3.9.6.4.2">.13914</span>)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different methods for reconstructing human avatars performing complex motions and exaggerated expressions.  The metrics used are PSNR, SSIM, and LPIPS, evaluating the quality of the rendered images.  Results are shown for the full body and, separately, for the face (particularly focusing on exaggerated expressions). Higher PSNR and SSIM values and lower LPIPS values indicate better reconstruction quality.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative comparisons about complex motions and expressions reconstruction. The results inside the parentheses are evaluated for face regions with exaggerated expressions.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.5.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.5.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T3.5.5.5.6">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1.1">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.1.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.1.m1.1a"><mo id="S5.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.1.m1.1b"><ci id="S5.T3.1.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.2.2.2.2">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.2.2.2.2.m1.1"><semantics id="S5.T3.2.2.2.2.m1.1a"><mo id="S5.T3.2.2.2.2.m1.1.1" stretchy="false" xref="S5.T3.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.2.2.m1.1b"><ci id="S5.T3.2.2.2.2.m1.1.1.cmml" xref="S5.T3.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T3.3.3.3.3">LPIPS<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.3.3.3.3.m1.1"><semantics id="S5.T3.3.3.3.3.m1.1a"><mo id="S5.T3.3.3.3.3.m1.1.1" stretchy="false" xref="S5.T3.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.3.3.3.3.m1.1b"><ci id="S5.T3.3.3.3.3.m1.1.1.cmml" xref="S5.T3.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.4.4.4.4">P2S<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.4.4.4.4.m1.1"><semantics id="S5.T3.4.4.4.4.m1.1a"><mo id="S5.T3.4.4.4.4.m1.1.1" stretchy="false" xref="S5.T3.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.4.4.4.4.m1.1b"><ci id="S5.T3.4.4.4.4.m1.1.1.cmml" xref="S5.T3.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.5.5.5.5">Chamfer<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.5.5.5.5.m1.1"><semantics id="S5.T3.5.5.5.5.m1.1a"><mo id="S5.T3.5.5.5.5.m1.1.1" stretchy="false" xref="S5.T3.5.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.5.5.5.5.m1.1b"><ci id="S5.T3.5.5.5.5.m1.1.1.cmml" xref="S5.T3.5.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.5.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.5.5.5.5.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.5.5.6.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.5.5.6.1.1">w SMPLX</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.5.6.1.2">28.47</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.5.6.1.3">.9476</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.5.5.6.1.4">.07899</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.5.6.1.5">.7690</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.5.6.1.6">.9995</td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.5.7.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T3.5.5.7.2.1">w/o Mesh Non.</th>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.7.2.2">32.10</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.7.2.3">.9734</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.5.5.7.2.4">.03814</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.7.2.5">.4877</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.7.2.6">.5007</td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.5.8.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T3.5.5.8.3.1">w/o Gau Non.</th>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.8.3.2">31.16</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.8.3.3">.9686</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.5.5.8.3.4">.03932</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.8.3.5">.2968</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.8.3.6">.3068</td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.5.9.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T3.5.5.9.4.1">w/o Teacher</th>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.9.4.2">32.67</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.9.4.3">.9751</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.5.5.9.4.4">.03769</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.9.4.5">.5236</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.9.4.6">.5359</td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.5.10.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T3.5.5.10.5.1">Full</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.5.5.10.5.2"><span class="ltx_text ltx_font_bold" id="S5.T3.5.5.10.5.2.1">33.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.5.5.10.5.3"><span class="ltx_text ltx_font_bold" id="S5.T3.5.5.10.5.3.1">.9772</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.5.5.10.5.4"><span class="ltx_text ltx_font_bold" id="S5.T3.5.5.10.5.4.1">.03464</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.5.5.10.5.5"><span class="ltx_text ltx_font_bold" id="S5.T3.5.5.10.5.5.1">.2953</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.5.5.10.5.6"><span class="ltx_text ltx_font_bold" id="S5.T3.5.5.10.5.6.1">.3052</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted to analyze the impact of different components on the overall performance of the proposed method.  The study focuses on evaluating the quality of the reconstructed mesh geometry by comparing it to a pseudo-ground truth mesh generated using NeuS2 [54].  Different configurations are tested, systematically removing or modifying certain elements to assess their contribution to the final output.  The results highlight the importance of each component, helping determine the effectiveness and robustness of the approach.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation Study. We use the mesh reconstructed by NeuS2 [54] as a pseudo-truth for geometry evaluation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T4.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.2.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T4.2.1.1.1.1" rowspan="2"><span class="ltx_text" id="A1.T4.2.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T4.2.1.1.1.2" rowspan="2"><span class="ltx_text" id="A1.T4.2.1.1.1.2.1">Template</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T4.2.1.1.1.3" rowspan="2"><span class="ltx_text" id="A1.T4.2.1.1.1.3.1">Non-rigid</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="A1.T4.2.1.1.1.4">Gaussian/Face Num.</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="A1.T4.2.1.1.1.5">Quality</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="A1.T4.2.1.1.1.6">Controllability</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.2.1.1.1.7">Speed</td>
</tr>
<tr class="ltx_tr" id="A1.T4.2.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.2.1.2.2.1">Head</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.2.1.2.2.2">Body</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.2.1.2.2.3">Head</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.2.1.2.2.4">Body</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.2.1.2.2.5">Head</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.2.1.2.2.6">Body</td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.1.2.2.7">(Inference)</td>
</tr>
<tr class="ltx_tr" id="A1.T4.2.1.3.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.2.1.3.3.1">3DGS-Avatar <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17032v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">46</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.2.1.3.3.2">SMPLX</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.2.1.3.3.3">MLP</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.2.1.3.3.4">19k</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.2.1.3.3.5">181k</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.2.1.3.3.6">low</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.2.1.3.3.7">low</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.2.1.3.3.8">low</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.2.1.3.3.9">low</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.2.1.3.3.10">54</td>
</tr>
<tr class="ltx_tr" id="A1.T4.2.1.4.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.2.1.4.4.1">GaussianAvatar <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17032v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.2.1.4.4.2">SMPLX</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.2.1.4.4.3">Unet</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.2.1.4.4.4">45k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.2.1.4.4.5">146k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.2.1.4.4.6">low</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.2.1.4.4.7">low</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.2.1.4.4.8">low</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.2.1.4.4.9">medium</td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.1.4.4.10">55</td>
</tr>
<tr class="ltx_tr" id="A1.T4.2.1.5.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.2.1.5.5.1">MeshAvatar <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17032v1#bib.bib10" title=""><span class="ltx_text" style="font-size:90%;">10</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.2.1.5.5.2">Mesh (Implicit)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.2.1.5.5.3">StyleUnet</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.2.1.5.5.4">5k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.2.1.5.5.5">50k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.2.1.5.5.6">low</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.2.1.5.5.7">medium</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.2.1.5.5.8">low</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.2.1.5.5.9">medium</td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.1.5.5.10">22</td>
</tr>
<tr class="ltx_tr" id="A1.T4.2.1.6.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.2.1.6.6.1">AnimatableGS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17032v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.2.1.6.6.2">Mesh (Implicit)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.2.1.6.6.3">StyleUnet</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.2.1.6.6.4">18k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.2.1.6.6.5">246k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.2.1.6.6.6">low</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.2.1.6.6.7">high</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.2.1.6.6.8">low</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.2.1.6.6.9">high</td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.1.6.6.10">16</td>
</tr>
<tr class="ltx_tr" id="A1.T4.2.1.7.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.2.1.7.7.1">Ours (Teacher)</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.2.1.7.7.2">SMPLX++</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.2.1.7.7.3">StyleUnet</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.2.1.7.7.4">19k</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.2.1.7.7.5">250k</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.2.1.7.7.6">medium</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.2.1.7.7.7">high</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.2.1.7.7.8">medium</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.2.1.7.7.9">high</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.2.1.7.7.10">16</td>
</tr>
<tr class="ltx_tr" id="A1.T4.2.1.8.8">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T4.2.1.8.8.1">Ours (Student)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T4.2.1.8.8.2">SMPLX++</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T4.2.1.8.8.3">MLP+BS</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T4.2.1.8.8.4">70k</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T4.2.1.8.8.5">200k</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T4.2.1.8.8.6">high</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T4.2.1.8.8.7">high</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T4.2.1.8.8.8">high</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T4.2.1.8.8.9">high</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.2.1.8.8.10">156</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 4 provides a comparison of several state-of-the-art methods for generating full-body avatars.  It contrasts different aspects of each method, including the type of template used (SMPLX or a customized version), the method used for non-rigid deformation modeling (MLP, StyleUnet), the number of Gaussians or parameters used, the overall quality of the resulting avatar, the level of controllability afforded to the user, the complexity of the body representation, and the speed of inference. This allows for a quantitative assessment of the trade-offs between accuracy, controllability, realism, and computational efficiency in different approaches.
> <details>
> <summary>read the caption</summary>
> Table 4: Summary about these State-of-the-art Methods of Full-body Avatars.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.17032/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17032/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17032/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17032/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17032/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17032/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17032/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17032/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17032/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17032/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17032/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17032/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17032/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17032/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17032/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17032/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17032/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17032/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}