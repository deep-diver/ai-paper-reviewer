---
title: "Cobra: Efficient Line Art COlorization with BRoAder References"
summary: "Cobra: Efficient line art colorization by integrating extensive references and maintaining high speed and user control."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Tsinghua University",]
showSummary: true
date: 2025-04-16
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.12240 {{< /keyword >}}
{{< keyword icon="writer" >}} Junhao Zhuang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.12240" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.12240" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.12240/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Comic production demands efficient, accurate line art colorization with contextual consistency and control. Existing diffusion models struggle with extensive references, slow inference, and flexibility. Current methods don't fully support long-context references, diverse inputs like color hints, and efficient processing, thus needing better solutions.



This paper presents Cobra, a novel framework for long-context comic line art colorization, enabling high precision, efficiency, and flexible usability. It leverages a **Causal Sparse DiT architecture**, localized encoding, and supports color hints. It improves speed and interactivity, meeting demands, and outperforms existing methods.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Cobra introduces a Causal Sparse DiT architecture for efficient long-context reference handling. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Localized Reusable Position Encoding enables the use of an arbitrary number of reference images. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Cobra achieves state-of-the-art results in comic line art colorization regarding quality and speed. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **Cobra, a new approach to line art colorization**, addressing the need for efficient and controllable methods. The released code and models are valuable resources, enabling researchers to reproduce results and explore new applications. The work also sets a benchmark for future research in the field.

------
#### Visual Insights



![](https://arxiv.org/html/2504.12240/x1.png)

> 🔼 This figure demonstrates the capabilities of the Cobra framework for line art colorization.  It showcases how Cobra takes black and white line art (input) and, using a large pool of reference images, generates vibrant and detailed color illustrations (output). The example highlights Cobra's ability to maintain high precision, efficiency, and flexibility in handling the complexities of colorizing comic book style art, including diverse characters, backgrounds, and styles, while preserving fine-grained identity details.
> <details>
> <summary>read the caption</summary>
> Figure 1.  Cobra is a novel efficient long-context fine-grained ID preservation framework for line art colorization, achieving high precision, efficiency, and flexible usability for comic colorization. By effectively integrating extensive contextual references, it transforms black-and-white line art into vibrant illustrations.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.10.10">
<tr class="ltx_tr" id="S4.T1.10.10.11">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.10.10.11.1" rowspan="2"><span class="ltx_text" id="S4.T1.10.10.11.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.10.10.11.2" rowspan="2"><span class="ltx_text" id="S4.T1.10.10.11.2.1">Reference-based</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="5" id="S4.T1.10.10.11.3">Line Art</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S4.T1.10.10.11.4">Line Art + Shadow</td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.10.10">
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.1">CLIP-IS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.2.2">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T1.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.3.3">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T1.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.4">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.4.m1.1a"><mo id="S4.T1.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T1.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.4.m1.1b"><ci id="S4.T1.4.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.5.5.5.5">AS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.5.5.5.5.m1.1"><semantics id="S4.T1.5.5.5.5.m1.1a"><mo id="S4.T1.5.5.5.5.m1.1.1" stretchy="false" xref="S4.T1.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.5.m1.1b"><ci id="S4.T1.5.5.5.5.m1.1.1.cmml" xref="S4.T1.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.6.6">CLIP-IS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.6.6.6.6.m1.1"><semantics id="S4.T1.6.6.6.6.m1.1a"><mo id="S4.T1.6.6.6.6.m1.1.1" stretchy="false" xref="S4.T1.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.6.m1.1b"><ci id="S4.T1.6.6.6.6.m1.1.1.cmml" xref="S4.T1.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.7">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.7.7.7.7.m1.1"><semantics id="S4.T1.7.7.7.7.m1.1a"><mo id="S4.T1.7.7.7.7.m1.1.1" stretchy="false" xref="S4.T1.7.7.7.7.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.7.7.m1.1b"><ci id="S4.T1.7.7.7.7.m1.1.1.cmml" xref="S4.T1.7.7.7.7.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.7.7.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.7.7.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.8.8">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.8.8.8.8.m1.1"><semantics id="S4.T1.8.8.8.8.m1.1a"><mo id="S4.T1.8.8.8.8.m1.1.1" stretchy="false" xref="S4.T1.8.8.8.8.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.8.8.8.8.m1.1b"><ci id="S4.T1.8.8.8.8.m1.1.1.cmml" xref="S4.T1.8.8.8.8.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.8.8.8.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.8.8.8.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.9.9">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.9.9.9.9.m1.1"><semantics id="S4.T1.9.9.9.9.m1.1a"><mo id="S4.T1.9.9.9.9.m1.1.1" stretchy="false" xref="S4.T1.9.9.9.9.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.9.9.9.9.m1.1b"><ci id="S4.T1.9.9.9.9.m1.1.1.cmml" xref="S4.T1.9.9.9.9.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.9.9.9.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.9.9.9.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.10">AS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.10.10.10.10.m1.1"><semantics id="S4.T1.10.10.10.10.m1.1a"><mo id="S4.T1.10.10.10.10.m1.1.1" stretchy="false" xref="S4.T1.10.10.10.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.10.10.10.10.m1.1b"><ci id="S4.T1.10.10.10.10.m1.1.1.cmml" xref="S4.T1.10.10.10.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.10.10.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.10.10.10.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.10.12">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.10.10.12.1">MC-v2</td>
<td class="ltx_td ltx_border_r ltx_border_tt" id="S4.T1.10.10.12.2"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.10.10.12.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.10.10.12.4">-</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.10.10.12.5">-</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.10.10.12.6">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.10.10.12.7">-</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.10.10.12.8">0.8635</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.10.10.12.9">44.09</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.10.10.12.10">15.57</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.10.10.12.11">0.7630</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.10.10.12.12">4.531</td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.10.13">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.10.10.13.1">IP-Adapter</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.10.10.13.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.13.3">0.8284</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.13.4">76.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.13.5">8.111</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.13.6">0.5561</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.10.10.13.7">4.511</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.13.8">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.13.9">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.13.10">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.13.11">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.13.12">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.10.14">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.10.10.14.1">ColorFlow</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.10.10.14.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.14.3">0.9030</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.14.4">26.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.14.5">15.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.14.6">0.8045</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.10.10.14.7">4.630</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.14.8">0.9198</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.14.9">21.79</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.14.10">18.49</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.14.11">0.8631</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.14.12">4.657</td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.10.15">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T1.10.10.15.1">Cobra</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T1.10.10.15.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.10.10.15.3"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.15.3.1">0.9176</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.10.10.15.4"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.15.4.1">20.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.10.10.15.5"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.15.5.1">16.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.10.10.15.6"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.15.6.1">0.8141</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T1.10.10.15.7"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.15.7.1">4.641</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.10.10.15.8"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.15.8.1">0.9264</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.10.10.15.9"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.15.9.1">18.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.10.10.15.10"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.15.10.1">18.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.10.10.15.11"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.15.11.1">0.8694</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.10.10.15.12"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.15.12.1">4.674</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of the Cobra model's performance against other state-of-the-art comic colorization techniques.  The comparison uses five metrics: CLIP-IS (evaluates image-text similarity), FID (measures the distribution difference between generated and real images), PSNR (assesses pixel-wise difference), SSIM (measures structural similarity), and AS (evaluates aesthetic quality). Results are shown for both line art and line art with shadows, offering a comprehensive evaluation of Cobra's ability to accurately colorize comics.
> <details>
> <summary>read the caption</summary>
> Table 1. Quantitative comparison of Cobra  with state-of-the-art comic colorization methods, including CLIP-IS (Radford et al., 2021), FID (Heusel et al., 2017), PSNR (Wikipedia contributors, 2024), SSIM (Wang et al., 2004), and AS (Schuhmann et al., 2022) metrics for both line art and line art with shadows.
> </details>





### In-depth insights


#### Long-Context ID
**Long-context ID preservation** in image colorization, especially within comic art, is vital for maintaining character consistency across different panels and pages. This requires drawing upon a broad range of references, not just a few isolated examples. The challenge lies in efficiently processing and leveraging this extensive context without introducing computational bottlenecks. Methods must effectively manage hundreds of reference images while ensuring that the core visual identity of characters and objects is accurately transferred to the target artwork. This demands sophisticated attention mechanisms that can discern relevant color cues from a vast reference pool and prevent color bleeding or inconsistencies. Solutions should balance the need for detailed contextual guidance with the imperative of fast inference times, making them practical for industrial-scale comic production. Furthermore, they must support varied inputs, such as color hints, offering artists flexible control over the final output. Successful approaches in **long-context ID** understand that color decisions are not made in isolation; they are influenced by the broader narrative and visual context of the entire comic.

#### Causal Sparse DiT
**Causal Sparse DiT** appears to be a novel architectural component, likely a variation of the Diffusion Transformer (DiT), designed for efficient processing of long-context information, potentially in image generation or related tasks. The 'Causal' aspect suggests a unidirectional information flow, possibly inspired by causal attention mechanisms in language models, preventing information leakage from future tokens and enforcing a specific generation order. This could be crucial for maintaining consistency and avoiding artifacts in image synthesis. The 'Sparse' attribute implies a reduction in computational complexity compared to standard DiT architectures. This might involve techniques like sparse attention, where attention is only computed for a subset of relevant features, significantly decreasing the quadratic cost associated with full attention. By combining causality and sparsity, the architecture aims to achieve a balance between capturing long-range dependencies and maintaining computational efficiency, making it suitable for tasks that require processing large amounts of data while preserving coherence.

#### Reuse Encoding
**Reusing encodings** in neural networks, particularly in generative models like diffusion models for image processing, can offer several advantages. Primarily, it addresses the **computational burden** associated with encoding high-dimensional data repeatedly. Instead of re-encoding similar input features across multiple steps, pre-computed encodings can be cached and reused. This technique could significantly **reduce inference time** and memory footprint. Furthermore, reusing encodings aligns with the principles of **efficient transfer learning**, allowing models to leverage pre-trained features from other tasks or datasets. Localized Reusable Position Encoding could be a key enabler to reduce complexity and computation overheads of various models that are based on attention mechanism.

#### Cobra-Bench
The 'Cobra-Bench' benchmark, as described in this paper, seems to be a specifically designed dataset tailored for evaluating **multi-reference-based comic line art colorization**. It's comprised of 30 comic chapters, with each containing 50 line art images and 100 reference images. The inclusion of both standard and shadowed forms is noteworthy. This shows a **commitment to mimicking real-world scenarios**. Further strengthening the benchmark is the use of five evaluation metrics: CLIP-IS, FID, Aesthetic Score, PSNR, and SSIM. This selection provides a **robust and multi-faceted assessment** of colorization quality, covering perceptual, aesthetic, and structural aspects. **The construction of a benchmark specific to this niche task** highlights the authors' dedication to creating a solid foundation for future research and comparison in the field of comic art colorization.

#### Style Transfer?
While this paper doesn't explicitly delve into style transfer as a core mechanism, one could argue it implicitly tackles aspects of it. The use of **multiple reference images** subtly shapes the colorization style. The model learns to blend colors not just from single examples, but from a broader palette, reflecting a learned 'style'. However, Cobra's **limitation in generalizing styles across different characters**, as noted in the paper, underscores its weakness as a true style transfer tool. A pure style transfer method would ideally impose the stylistic features of one image (or set of images) onto a different subject. Cobra focuses on **color consistency and detail preservation** for the same character rather than abstracting stylistic elements. Future research could explore how to modify Cobra's architecture to more effectively abstract and transfer style independently of character identity.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.12240/x2.png)

> 🔼 Cobra, a novel framework for efficient long-context line art colorization, is illustrated.  The figure details how Cobra uses many reference images to colorize comic-style line art.  It leverages localized reusable positional encoding to handle an arbitrary number of references and maintain proper aspect ratios.  Furthermore, a Causal Sparse DiT architecture efficiently manages long-context references for enhanced identity preservation and color accuracy, reducing computational cost. Optional color hints add user control and flexibility. The overall outcome is high-quality colorization ideal for industrial applications.
> <details>
> <summary>read the caption</summary>
> Figure 2.  The overview of Cobra. This figure depicts the framework of Cobra, which utilizes a large collection of retrieved reference images to guide the colorization of comic line art. The framework effectively manages an arbitrary number of contextual image references through localized reusable positional encoding, ensuring appropriate aspect ratios and resolutions. Additionally, the causal sparse DiT architecture processes long contextual references, enhancing identity preservation and color accuracy while reducing computational complexity. The integration of optional color hints further ensures user flexibility, culminating in high-quality coloring that is highly suitable for industrial applications.
> </details>



![](https://arxiv.org/html/2504.12240/x3.png)

> 🔼 Figure 3 illustrates how Cobra improves efficiency by modifying the attention mechanism.  Traditional full attention calculates relationships between all pairs of elements (e.g., reference images and line art), leading to high computational cost, especially with many references.  Cobra's Causal Sparse Attention eliminates redundant pairwise calculations among reference images.  It uses unidirectional causal attention (information flows in one direction, like in a sentence) and a KV-Cache (key-value cache to store and reuse intermediate results) which significantly improves speed and reduces memory usage, while still effectively transmitting crucial color identity information.
> <details>
> <summary>read the caption</summary>
> Figure 3.  Illustration of the transition from Full Attention to Causal Sparse Attention. This figure highlights the reduction in computational complexity achieved by excluding pairwise calculations among reference images. Additionally, the application of unidirectional causal attention, along with the use of KV-Cache, further enhances computational efficiency while ensuring effective transmission of essential color ID information.
> </details>



![](https://arxiv.org/html/2504.12240/x4.png)

> 🔼 Figure 4 illustrates the technique of line art style augmentation used in the Cobra model.  It shows how outputs from two different line art extractors are blended together. This process enhances the model's ability to handle diverse artistic styles in the input line art, making the Line Art Guider more robust and less sensitive to variations in style.
> <details>
> <summary>read the caption</summary>
> Figure 4. An example of line art style augmentation, demonstrating the blending of outputs from two distinct line art extractors. This strategy improves the robustness of the Line Art Guider to diverse artistic styles.
> </details>



![](https://arxiv.org/html/2504.12240/x5.png)

> 🔼 Figure 5 illustrates the Hint Point Sampling Strategy employed to mitigate ambiguity in color hint placement during training.  The strategy limits the variance of RGB pixel values within each hint point to a maximum of 0.01. This constraint prevents hint points from being inadvertently placed on edges, where color transitions are ambiguous and potentially lead to erroneous colorization results. The figure also visually represents the distribution of 30,000 randomly selected hint points, showcasing the strategy's effectiveness in achieving a balanced and meaningful distribution of hints across the image.
> <details>
> <summary>read the caption</summary>
> Figure 5. Hint Point Sampling Strategy. This method reduces ambiguity by limiting the RGB pixel value variance within hint points to 0.01, effectively preventing hint points from being placed at edge intersections during training. Additionally, we visualize 30,000 randomly sampled hint points to demonstrate their distribution.
> </details>



![](https://arxiv.org/html/2504.12240/x6.png)

> 🔼 Figure 6 presents a qualitative comparison of line art colorization results generated by Cobra and other existing methods.  It showcases several examples of complex line art illustrations (comics) and their corresponding colorized versions. The figure directly highlights Cobra's superior performance in accurately maintaining consistent colors for specific objects and characters (color ID preservation), while simultaneously producing high-quality, visually appealing colorized images, even when the line art is intricate or contains many elements.  This demonstrates that Cobra is robust and effective in handling the challenges of industrial-scale comic colorization tasks.
> <details>
> <summary>read the caption</summary>
> Figure 6. Qualitative results of line art colorization, highlighting how Cobra  outperforms other methods by accurately preserving color IDs and providing high-quality results, even in complex scenarios.
> </details>



![](https://arxiv.org/html/2504.12240/x7.png)

> 🔼 Figure 7 presents a comparative analysis of line art colorization results, focusing on scenes containing shadows.  It showcases Cobra's performance against other methods by visually demonstrating its superior ability to accurately reproduce colors (color fidelity) and generate fine details within the colored images. The examples highlight Cobra's robustness and practical applicability by handling complex scenarios involving shadows effectively and accurately.
> <details>
> <summary>read the caption</summary>
> Figure 7. Qualitative results of line art with shadows, showcasing Cobra ’s superior ability to maintain color fidelity and enhance detail, demonstrating its robustness and effectiveness in real-world applications.
> </details>



![](https://arxiv.org/html/2504.12240/x8.png)

> 🔼 Figure 8 showcases the interactive colorization capabilities of the Cobra model.  Users can directly input color adjustments to specific regions of the line art by providing color hints.  The figure demonstrates that Cobra accurately incorporates these hints, modifying the colors in the indicated areas while maintaining the overall consistency and stability of the colorization across the rest of the image. This illustrates Cobra's flexibility and its ability to support user-guided color control.
> <details>
> <summary>read the caption</summary>
> Figure 8. Interactive line art colorization using color hints, demonstrating how Cobra  allows users to specify color adjustments in designated areas, enhancing control over the colorization process while maintaining overall stability.
> </details>



![](https://arxiv.org/html/2504.12240/x9.png)

> 🔼 This figure shows a comparison of inference time for three different attention mechanisms used in the Cobra model: Full Attention, Sparse Attention, and Causal Sparse Attention (with KV-Cache).  The x-axis represents the number of reference images used, and the y-axis represents the inference time per step.  The graph visually demonstrates the significant improvement in inference speed achieved by Sparse Attention and, especially, Causal Sparse Attention as the number of reference images increases.  This highlights the efficiency gains of the proposed Causal Sparse Attention method, which is crucial for handling the large number of reference images used in the Cobra model for line art colorization.
> <details>
> <summary>read the caption</summary>
> Figure 9. Evaluation of inference time efficiency for Full Attention, Sparse Attention, and Causal Sparse Attention (with KV-Cache) across different counts of reference images.
> </details>



![](https://arxiv.org/html/2504.12240/x10.png)

> 🔼 Figure 10 demonstrates the limitations of the Cobra model in terms of color identity preservation when dealing with references featuring different characters.  While Cobra successfully maintains consistent coloring (Result A) when the references show the same character, the model struggles to do so (Result B) when the references include different characters. This indicates that the model's ability to preserve color identity is strongly tied to character consistency within the reference images, and it may not generalize well to scenarios involving character variations.
> <details>
> <summary>read the caption</summary>
> Figure 10. Limitation of Cobra . Cobra  preserves color identity when references share the same character (Result A), but fails when references depict different characters (Result B).
> </details>



![](https://arxiv.org/html/2504.12240/x11.png)

> 🔼 Figure 11 presents several examples of comic line art colorization using the Cobra method.  The figure shows a series of panels, each including the original black-and-white line art, a selection of reference images used for colorization, and the resulting colorized image. This visualization helps demonstrate Cobra's ability to effectively use a range of reference images to accurately and consistently colorize complex line art illustrations found in comics, handling varied characters, objects, and backgrounds.
> <details>
> <summary>read the caption</summary>
> Figure 11. Additional results of colorization for comic line art.
> </details>



![](https://arxiv.org/html/2504.12240/x12.png)

> 🔼 Figure 12 presents supplementary findings showcasing Cobra's capability in anime video colorization.  It displays a sequence of frames from an anime video, alongside their corresponding line art versions and the colorized outputs generated by the Cobra model.  This visually demonstrates Cobra's ability to maintain color consistency and stylistic coherence across multiple frames of a video sequence, highlighting its effectiveness in dynamic content.
> <details>
> <summary>read the caption</summary>
> Figure 12. Additional results of line art colorization for an anime video.
> </details>



![](https://arxiv.org/html/2504.12240/x13.png)

> 🔼 Figure 13 showcases the results of Cobra's colorization technique applied to comic book line art that includes shaded areas or shadows.  The figure presents several examples of original line art, the reference images used for colorization, and the final colored output produced by Cobra. This visually demonstrates Cobra's ability to handle the added complexity of shadows while maintaining color consistency and accuracy compared to the reference images. The examples show diverse styles of comic art and characters to illustrate the model's adaptability.
> <details>
> <summary>read the caption</summary>
> Figure 13. Additional results of colorization for comic line art with shadow.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.4.4">
<tr class="ltx_tr" id="S4.T2.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T2.4.4.4.5">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.4.4.4.6">CLIP-IS</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.1">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.2.2.2">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.3.3.3">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.3.m1.1a"><mo id="S4.T2.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.m1.1b"><ci id="S4.T2.3.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.4.4.4.4">AS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.4.m1.1"><semantics id="S4.T2.4.4.4.4.m1.1a"><mo id="S4.T2.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T2.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.4.m1.1b"><ci id="S4.T2.4.4.4.4.m1.1.1.cmml" xref="S4.T2.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.4.4.4.7">Time(s)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.4.4.4.8">Mem(GB)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.4.4.5.1">ColorFlow (12 refs)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.5.2">0.9030</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.5.3">26.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.5.4">15.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.5.5">0.8045</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.4.4.5.6">4.630</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.5.7">1.03</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.5.8">36.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.4.4.6.1">Cobra (12 refs)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.6.2"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.6.2.1">0.9132</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.6.3"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.6.3.1">21.86</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.6.4"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.6.4.1">15.94</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.6.5"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.6.5.1">0.8136</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.4.6.6"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.6.6.1">4.642</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.6.7"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.6.7.1">0.31</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.6.8"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.6.8.1">9.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.4.4.7.1">ColorFlow (2 refs)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.7.2">0.8798</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.7.3">32.55</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.7.4">14.88</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.7.5">0.8013</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.4.4.7.6">4.591</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.7.7">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.7.8">-</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.8">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T2.4.4.8.1">Cobra (2 refs)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.4.8.2"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.8.2.1">0.8989</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.4.8.3"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.8.3.1">26.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.4.8.4"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.8.4.1">15.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.4.8.5"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.8.5.1">0.8120</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.4.4.8.6"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.8.6.1">4.611</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.4.8.7">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.4.8.8">-</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a quantitative comparison of the performance of ColorFlow and Cobra on line art colorization tasks. It shows the performance metrics for both models using different numbers of references (2 and 12) at a resolution of 640x1024.  The metrics used include CLIP-IS, FID, PSNR, SSIM, and AS to assess the quality of the generated colorizations.  The table also includes the inference time and memory usage for each model and reference count to show efficiency differences.
> <details>
> <summary>read the caption</summary>
> Table 2. Quantitative comparison of ColorFlow and Cobra on colorization.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.3.3">
<tr class="ltx_tr" id="S4.T3.3.3.3">
<td class="ltx_td ltx_border_r ltx_border_tt" id="S4.T3.3.3.3.4"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.1">Color IDs consistency<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.2.2.2.2">Color plausibility<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.3.3.3">Aesthetic quality<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T3.3.3.4.1"><em class="ltx_emph ltx_font_italic" id="S4.T3.3.3.4.1.1">Cobra</em></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.3.4.2"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.4.2.1">79.1%</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.3.4.3"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.4.3.1">69.3%</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.3.4.4"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.4.4.1">73.2%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.5">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T3.3.3.5.1">ColorFlow</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.3.3.5.2">20.9%</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.3.3.5.3">30.7%</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.3.3.5.4">26.8%</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This user study compares Cobra and ColorFlow across three aspects of image quality: the consistency of color IDs within the context, the plausibility of object colors, and the overall aesthetic appeal.  The results are presented as percentages reflecting the proportion of votes each method received for each of the three qualities.  A higher percentage indicates a stronger preference for that method in that specific aspect. The study aims to provide a user-centered evaluation of the colorization algorithms.
> <details>
> <summary>read the caption</summary>
> Table 3.  Results of the User Study. The table presents the voting rates for Cobra and ColorFlow based on contextual color IDs consistency, plausibility of object colors, and overall aesthetic quality.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.5.5">
<tr class="ltx_tr" id="S4.T4.5.5.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T4.5.5.5.6">Number</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.1">CLIP-IS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.2.2.2.2">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.2.m1.1a"><mo id="S4.T4.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T4.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.2.m1.1b"><ci id="S4.T4.2.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.3.3.3.3">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.3.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.3.m1.1a"><mo id="S4.T4.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T4.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.3.m1.1b"><ci id="S4.T4.3.3.3.3.m1.1.1.cmml" xref="S4.T4.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.4.4.4.4">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.4.4.4.4.m1.1"><semantics id="S4.T4.4.4.4.4.m1.1a"><mo id="S4.T4.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T4.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.4.m1.1b"><ci id="S4.T4.4.4.4.4.m1.1.1.cmml" xref="S4.T4.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.5.5.5.5">AS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.5.5.5.5.m1.1"><semantics id="S4.T4.5.5.5.5.m1.1a"><mo id="S4.T4.5.5.5.5.m1.1.1" stretchy="false" xref="S4.T4.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.5.5.5.5.m1.1b"><ci id="S4.T4.5.5.5.5.m1.1.1.cmml" xref="S4.T4.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T4.5.5.6.1">4</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.5.5.6.2">0.9083</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.5.5.6.3">23.18</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.5.5.6.4">15.61</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.5.5.6.5">0.8133</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.5.5.6.6">4.634</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.5.5.7.1">12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.5.7.2">0.9132</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.5.7.3">21.86</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.5.7.4">15.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.5.7.5">0.8136</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.5.7.6">4.642</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5.8">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.5.5.8.1">24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.5.8.2">0.9176</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.5.8.3">20.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.5.8.4">16.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.5.8.5">0.8141</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.5.8.6">4.641</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5.9">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T4.5.5.9.1">36</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.5.5.9.2"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.9.2.1">0.9183</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.5.5.9.3"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.9.3.1">20.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.5.5.9.4"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.9.4.1">16.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.5.5.9.5"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.9.5.1">0.8142</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.5.5.9.6"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.9.6.1">4.649</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment designed to assess how the number of reference images affects the performance of the Cobra model in line art colorization.  The experiment systematically varied the number of reference images provided to the model, and for each count, several key metrics were calculated to evaluate the quality of the colorization results. These metrics likely include measures of perceptual similarity to ground truth (e.g., CLIP-IS), pixel-wise accuracy (e.g., PSNR, SSIM), and possibly an aesthetic score.  The results shown in the table demonstrate how the performance of the model improves consistently as more reference images are given, suggesting that a larger number of references enhances the accuracy and quality of line art colorization.
> <details>
> <summary>read the caption</summary>
> Table 4. Impact of reference image count on the performance of Cobra  in line art colorization, demonstrating consistent improvements as the number of reference images increases.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T5.4.4">
<tr class="ltx_tr" id="S4.T5.4.4.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T5.4.4.4.5">Attention Type</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.2.2.2">Time(s)<math alttext="/" class="ltx_Math" display="inline" id="S4.T5.1.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.1.m1.1.1" xref="S4.T5.1.1.1.1.m1.1.1.cmml">/</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.1.m1.1b"><divide id="S4.T5.1.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.1.m1.1.1"></divide></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.1.m1.1c">/</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.1.m1.1d">/</annotation></semantics></math>step<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.2.2.2.2.m2.1"><semantics id="S4.T5.2.2.2.2.m2.1a"><mo id="S4.T5.2.2.2.2.m2.1.1" stretchy="false" xref="S4.T5.2.2.2.2.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.2.m2.1b"><ci id="S4.T5.2.2.2.2.m2.1.1.cmml" xref="S4.T5.2.2.2.2.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.2.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.2.m2.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.3.3.3">Computation(TFlops)<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.3.3.3.3.m1.1"><semantics id="S4.T5.3.3.3.3.m1.1a"><mo id="S4.T5.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T5.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.3.3.3.3.m1.1b"><ci id="S4.T5.3.3.3.3.m1.1.1.cmml" xref="S4.T5.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.4.4.4.4">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.4.4.4.4.m1.1"><semantics id="S4.T5.4.4.4.4.m1.1a"><mo id="S4.T5.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T5.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.4.4.4.4.m1.1b"><ci id="S4.T5.4.4.4.4.m1.1.1.cmml" xref="S4.T5.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.4.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T5.4.4.5.1">Full Attention</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.4.4.5.2">1.99</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.4.4.5.3">38.2</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.4.4.5.4">-</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.4.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.4.4.6.1">Sparse Attention</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.4.6.2">0.81</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.4.6.3">14.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.4.6.4">21.07</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.4.7">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T5.4.4.7.1">Causal Sparse Attention</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.4.4.7.2"><span class="ltx_text ltx_font_bold" id="S4.T5.4.4.7.2.1">0.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.4.4.7.3"><span class="ltx_text ltx_font_bold" id="S4.T5.4.4.7.3.1">9.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.4.4.7.4"><span class="ltx_text ltx_font_bold" id="S4.T5.4.4.7.4.1">20.98</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of three different attention mechanisms used in the Cobra model for line art colorization.  Specifically, it shows the inference time per step, the computational cost in TeraFLOPS (trillions of floating point operations), and the Fréchet Inception Distance (FID) score, which measures the quality of the generated images, for Full Attention, Sparse Attention, and Causal Sparse Attention. All results are obtained using 24 reference images and FP16 (half-precision floating-point) computations.
> <details>
> <summary>read the caption</summary>
> Table 5. Performance comparison of three attention variants (Full, Sparse, and Causal Sparse Attention) with 24 reference images under FP16 precision.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.12240/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12240/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12240/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12240/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12240/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12240/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12240/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12240/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12240/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12240/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12240/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}