---
title: "MeshCraft: Exploring Efficient and Controllable Mesh Generation with Flow-based DiTs"
summary: "MeshCraft: Efficient, controllable mesh generation using flow-based DiTs, outperforming auto-regressive methods in speed and user control."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 Tsinghua University",]
showSummary: true
date: 2025-03-29
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.23022 {{< /keyword >}}
{{< keyword icon="writer" >}} Xianglong He et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-01 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.23022" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.23022" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.23022/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Achieving optimal mesh topology through AI models has long been a pursuit, but previous methods face limitations such as slow generation speeds and uncontrollable face counts. Existing methods rely on token-by-token predictions, leading to inefficiency and restricted user control. Therefore, there is a need for faster methods with better user control.



This paper introduces MeshCraft, a novel framework for efficient and controllable mesh generation, leveraging continuous spatial diffusion to generate triangle faces. MeshCraft uses a transformer-based VAE and a flow-based diffusion transformer conditioned on the number of faces. This method demonstrates superior speed and controllability, achieving new state-of-the-art results on the ShapeNet dataset and superior performance on the Objaverse dataset.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MeshCraft achieves high-fidelity mesh generation significantly faster than auto-regressive methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The framework enables precise user control over the number of faces in the generated 3D meshes. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} MeshCraft demonstrates superior performance on both ShapeNet and Objaverse datasets, showcasing its potential as a generic mesh generator. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces MeshCraft, a novel framework that **enables efficient and controllable mesh generation**. This is important for researchers because it **overcomes the limitations of existing methods and opens new avenues for AI-driven 3D content creation**.

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.2.2.3"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.3.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.1">Tri. Accu.<math alttext="(\%)\uparrow" class="ltx_math_unparsed" display="inline" id="S4.T1.1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.1.m1.1a"><mrow id="S4.T1.1.1.1.1.1.m1.1b"><mrow id="S4.T1.1.1.1.1.1.m1.1.1"><mo id="S4.T1.1.1.1.1.1.m1.1.1.1" stretchy="false">(</mo><mo id="S4.T1.1.1.1.1.1.m1.1.1.2">%</mo><mo id="S4.T1.1.1.1.1.1.m1.1.1.3" stretchy="false">)</mo></mrow><mo id="S4.T1.1.1.1.1.1.m1.1.2" stretchy="false">↑</mo></mrow><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.1.m1.1c">(\%)\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.1.m1.1d">( % ) ↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.2.1">L2 Dist.<math alttext="(\times 10^{-2})\downarrow" class="ltx_math_unparsed" display="inline" id="S4.T1.2.2.2.2.1.m1.1"><semantics id="S4.T1.2.2.2.2.1.m1.1a"><mrow id="S4.T1.2.2.2.2.1.m1.1b"><mrow id="S4.T1.2.2.2.2.1.m1.1.1"><mo id="S4.T1.2.2.2.2.1.m1.1.1.1" stretchy="false">(</mo><mo id="S4.T1.2.2.2.2.1.m1.1.1.2" lspace="0em" rspace="0.222em">×</mo><msup id="S4.T1.2.2.2.2.1.m1.1.1.3"><mn id="S4.T1.2.2.2.2.1.m1.1.1.3.2">10</mn><mrow id="S4.T1.2.2.2.2.1.m1.1.1.3.3"><mo id="S4.T1.2.2.2.2.1.m1.1.1.3.3a">−</mo><mn id="S4.T1.2.2.2.2.1.m1.1.1.3.3.2">2</mn></mrow></msup><mo id="S4.T1.2.2.2.2.1.m1.1.1.4" stretchy="false">)</mo></mrow><mo id="S4.T1.2.2.2.2.1.m1.1.2" stretchy="false">↓</mo></mrow><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.1.m1.1c">(\times 10^{-2})\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.1.m1.1d">( × 10 start_POSTSUPERSCRIPT - 2 end_POSTSUPERSCRIPT ) ↓</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.2.2.3.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.3.1.1">MeshGPT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.23022v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.3.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.3.1.2.1">99.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.3.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.3.1.3.1">0.00</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.4.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.4.2.1">PivotMesh <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.23022v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.4.2.2">98.88</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.4.2.3">0.86</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.5.3">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.2.2.5.3.1"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.5.3.1.1">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.2.2.5.3.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.2.2.5.3.2.1">99.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.2.2.5.3.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.2.2.5.3.3.1">0.06</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents the reconstruction performance results on the ShapeNet dataset.  The table compares the proposed method's performance with existing state-of-the-art methods. The key metric used for comparison is the reconstruction error, specifically the L2 distance between the original and reconstructed meshes.  It also includes the triangle accuracy which shows how well the model has reconstructed the triangular facets of the mesh. Notably, the table highlights that even though the proposed autoencoder uses a continuous latent space representation (instead of the vector quantization used by prior works), it still achieves comparable reconstruction performance.
> <details>
> <summary>read the caption</summary>
> Table 1: Reconstruction performance on ShapeNet dataset. Our continuous auto-encoder behaves competitively with prior works using the vector quantization.
> </details>





### In-depth insights


#### Flow-based DiTs
Flow-based diffusion transformers (DiTs) represent a significant advancement in generative modeling. **Unlike traditional diffusion models that rely on iterative denoising processes**, flow-based DiTs aim for more direct and efficient generation by mapping data to a latent space with a well-defined probability distribution, often a Gaussian. This allows for sampling new data points through a deterministic flow, potentially leading to **faster inference times**. The 'flow-based' aspect refers to the use of techniques like normalizing flows to learn an invertible mapping between the data and the latent space, enabling both encoding and decoding. In the context of mesh generation, this could mean learning a continuous representation of mesh topologies, allowing for controlled generation by manipulating the latent space. The DiT architecture, characterized by the use of transformers, brings the benefits of **attention mechanisms to capture long-range dependencies** within the mesh structure, potentially resulting in more coherent and realistic 3D models. Key advantages include the potential for controllability (e.g., guiding the generation process with constraints on the number of faces or desired geometric features) and the possibility of **learning disentangled representations** that allow for manipulating individual aspects of the mesh.

#### VAE & Diffusion
The convergence of VAEs and diffusion models represents a powerful paradigm in generative modeling, leveraging the strengths of both approaches. **VAEs excel at learning compressed latent spaces**, enabling efficient representation and manipulation of complex data distributions. However, their generative capacity can be limited by the information bottleneck imposed by the encoder-decoder architecture. **Diffusion models, on the other hand, shine in generating high-fidelity samples** by learning to reverse a gradual noising process. By integrating VAEs and diffusion models, one can harness the benefits of both worlds. For example, a VAE can be used to learn a meaningful latent space, which then serves as the target for a diffusion model. This approach allows for **efficient sampling from a well-structured latent space while retaining the ability to generate high-quality, diverse samples**. Further exploration includes using diffusion models for regularizing the VAE latent space or employing VAEs as efficient proposal distributions within a diffusion framework.

#### Fast Generation
The pursuit of "Fast Generation" in 3D mesh creation is paramount, addressing the inherent slowness of auto-regressive methods like MeshGPT. **Diffusion models**, leveraging continuous spatial diffusion, offer a viable path to speedier generation by processing the entire mesh topology simultaneously, a departure from token-by-token prediction. Techniques like rectified flow, by streamlining the diffusion process, further amplify the speed gains. A crucial aspect is trading off complexity for speed. Simplifications in mesh representation, such as face-level tokens, curtail the computational burden, potentially sacrificing fine details. Optimizing model architecture is necessary like with SiT. The ideal solution balances fidelity with speed, empowering artists to generate numerous iterations rapidly.  Effective conditional guidance and user controls are essential. **Masking strategies**, and diffusion-based approaches stand out.

#### MeshCraft Details
**MeshCraft likely focuses on the technical implementation of the framework.** It probably delves into the architecture of the VAE (Variational Autoencoder) used for encoding and decoding meshes, providing details on the transformer network, loss functions, and training procedures. Details of the **flow-based diffusion transformer** would likely be covered, emphasizing the network architecture and conditioning strategies employed for controlling the generation process. Hyperparameter settings, dataset preprocessing steps, and specific implementation choices that contribute to the efficiency and controllability of MeshCraft are important details to look for. **The choice of loss functions and the training regime is critical for the performance** and how those are defined specifically for meshes are a central point to analyze.

#### Controllability
The aspect of "Controllability" in mesh generation is crucial for practical applications. Users often require precise control over the output, such as the number of faces or specific geometric features. **AI models should allow users to guide the generation process** based on various conditions like number of faces. Effective controllability reduces the need for manual adjustments. **It enables artists to iterate and refine designs efficiently**. Incorporating techniques like classifier-free guidance and adaptive sampling weights can improve controllability. **User-friendly interfaces and intuitive parameters are essential for accessibility**. Overly complex controls can hinder usability. Balancing flexibility with ease of use is key. Evaluating controllability involves assessing how well the model adheres to user-defined constraints and generates meshes. **It meet specific requirements while maintaining overall quality and diversity**.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.10.10.10">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.10.10.10.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.10.10.10.10.11"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.10.11.1">Class</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.10.10.10.10.12"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.10.12.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.1.1">COV<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.2.2.1">MMD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.2.1.m1.1"><semantics id="S4.T2.2.2.2.2.2.1.m1.1a"><mo id="S4.T2.2.2.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.2.1.m1.1b"><ci id="S4.T2.2.2.2.2.2.1.m1.1.1.cmml" xref="S4.T2.2.2.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.10.10.10.10.13"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.10.13.1">1-NNA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.3.3.3.3.3"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.3.3.3.1">JSD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.3.1.m1.1"><semantics id="S4.T2.3.3.3.3.3.1.m1.1a"><mo id="S4.T2.3.3.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.3.1.m1.1b"><ci id="S4.T2.3.3.3.3.3.1.m1.1.1.cmml" xref="S4.T2.3.3.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.3.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.4.4.4.4"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.4.4.1">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.4.4.1.m1.1"><semantics id="S4.T2.4.4.4.4.4.1.m1.1a"><mo id="S4.T2.4.4.4.4.4.1.m1.1.1" stretchy="false" xref="S4.T2.4.4.4.4.4.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.4.4.1.m1.1b"><ci id="S4.T2.4.4.4.4.4.1.m1.1.1.cmml" xref="S4.T2.4.4.4.4.4.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.4.4.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.4.4.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T2.5.5.5.5.5"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.5.5.5.1">KID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.5.5.5.5.5.1.m1.1"><semantics id="S4.T2.5.5.5.5.5.1.m1.1a"><mo id="S4.T2.5.5.5.5.5.1.m1.1.1" stretchy="false" xref="S4.T2.5.5.5.5.5.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.5.5.1.m1.1b"><ci id="S4.T2.5.5.5.5.5.1.m1.1.1.cmml" xref="S4.T2.5.5.5.5.5.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.5.5.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.5.5.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.10.10.10.10.14"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.10.14.1">Class</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.10.10.10.10.15"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.10.15.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.6.6.6.6.6"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.6.6.6.1">COV<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.6.6.6.6.6.1.m1.1"><semantics id="S4.T2.6.6.6.6.6.1.m1.1a"><mo id="S4.T2.6.6.6.6.6.1.m1.1.1" stretchy="false" xref="S4.T2.6.6.6.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.6.6.1.m1.1b"><ci id="S4.T2.6.6.6.6.6.1.m1.1.1.cmml" xref="S4.T2.6.6.6.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.6.6.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.7.7.7.7.7"><span class="ltx_text ltx_font_bold" id="S4.T2.7.7.7.7.7.1">MMD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.7.7.7.7.7.1.m1.1"><semantics id="S4.T2.7.7.7.7.7.1.m1.1a"><mo id="S4.T2.7.7.7.7.7.1.m1.1.1" stretchy="false" xref="S4.T2.7.7.7.7.7.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.7.7.7.1.m1.1b"><ci id="S4.T2.7.7.7.7.7.1.m1.1.1.cmml" xref="S4.T2.7.7.7.7.7.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.7.7.7.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.7.7.7.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.10.10.10.10.16"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.10.16.1">1-NNA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.8.8.8.8.8"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.8.8.8.1">JSD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.8.8.8.8.8.1.m1.1"><semantics id="S4.T2.8.8.8.8.8.1.m1.1a"><mo id="S4.T2.8.8.8.8.8.1.m1.1.1" stretchy="false" xref="S4.T2.8.8.8.8.8.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.8.8.8.8.8.1.m1.1b"><ci id="S4.T2.8.8.8.8.8.1.m1.1.1.cmml" xref="S4.T2.8.8.8.8.8.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.8.8.8.8.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.8.8.8.8.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.9.9.9.9.9"><span class="ltx_text ltx_font_bold" id="S4.T2.9.9.9.9.9.1">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.9.9.9.9.9.1.m1.1"><semantics id="S4.T2.9.9.9.9.9.1.m1.1a"><mo id="S4.T2.9.9.9.9.9.1.m1.1.1" stretchy="false" xref="S4.T2.9.9.9.9.9.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.9.9.9.9.9.1.m1.1b"><ci id="S4.T2.9.9.9.9.9.1.m1.1.1.cmml" xref="S4.T2.9.9.9.9.9.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.9.9.9.9.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.9.9.9.9.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.10.10.10.10.10"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.10.10.1">KID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.10.10.10.10.10.1.m1.1"><semantics id="S4.T2.10.10.10.10.10.1.m1.1a"><mo id="S4.T2.10.10.10.10.10.1.m1.1.1" stretchy="false" xref="S4.T2.10.10.10.10.10.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.10.10.10.10.10.1.m1.1b"><ci id="S4.T2.10.10.10.10.10.1.m1.1.1.cmml" xref="S4.T2.10.10.10.10.10.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.10.10.10.10.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.10.10.10.10.1.m1.1d">↓</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.10.10.10.11.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.11.1.1" rowspan="4"><span class="ltx_text" id="S4.T2.10.10.10.11.1.1.1">Chair</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.11.1.2">MeshGPT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.23022v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.11.1.3">45.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.11.1.4">10.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.11.1.5">60.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.11.1.6">11.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.11.1.7">25.43</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.10.10.10.11.1.8">4.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.11.1.9" rowspan="4"><span class="ltx_text" id="S4.T2.10.10.10.11.1.9.1">Table</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.11.1.10">MeshGPT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.23022v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.11.1.11">48.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.11.1.12">9.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.11.1.13"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.11.1.13.1">57.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.11.1.14"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.11.1.14.1">8.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.11.1.15"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.11.1.15.1">21.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.11.1.16">2.99</td>
</tr>
<tr class="ltx_tr" id="S4.T2.10.10.10.12.2">
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.12.2.1">PivotMesh <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.23022v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.12.2.2">47.99</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.12.2.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.12.2.3.1">10.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.12.2.4">60.06</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.12.2.5">13.51</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.12.2.6">34.40</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.10.10.10.12.2.7">10.33</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.12.2.8">PivotMesh <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.23022v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.12.2.9">47.42</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.12.2.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.12.2.10.1">9.08</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.12.2.11">58.35</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.12.2.12">10.42</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.12.2.13">24.97</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.12.2.14">7.99</td>
</tr>
<tr class="ltx_tr" id="S4.T2.10.10.10.13.3">
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.13.3.1">MeshXL* <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.23022v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.13.3.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.13.3.2.1">49.43</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.13.3.3">10.17</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.13.3.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.13.3.4.1">56.90</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.13.3.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.13.3.5.1">11.37</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.13.3.6"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.13.3.6.1">20.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.10.10.10.13.3.7"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.13.3.7.1">1.70</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.13.3.8">MeshXL* <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.23022v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.13.3.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.13.3.9.1">50.98</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.13.3.10">9.38</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.13.3.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.13.3.11.1">57.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.13.3.12">9.07</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.13.3.13">22.08</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.13.3.14"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.13.3.14.1">2.88</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.10.10.10.14.4">
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.14.4.1"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.14.4.1.1">Ours</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.14.4.2"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.14.4.2.1">51.44</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.14.4.3"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.14.4.3.1">9.61</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.14.4.4"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.14.4.4.1">54.31</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.14.4.5"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.14.4.5.1">11.03</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.14.4.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.14.4.6.1">20.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.10.10.10.14.4.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.14.4.7.1">1.76</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.14.4.8"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.14.4.8.1">Ours</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.14.4.9"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.14.4.9.1">55.42</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.14.4.10"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.14.4.10.1">8.74</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.14.4.11"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.14.4.11.1">54.26</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.14.4.12"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.14.4.12.1">8.73</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.14.4.13"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.14.4.13.1">16.63</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.14.4.14"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.14.4.14.1">1.70</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.10.10.10.15.5">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.10.10.10.15.5.1" rowspan="4"><span class="ltx_text" id="S4.T2.10.10.10.15.5.1.1">Bench</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.15.5.2">MeshGPT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.23022v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.15.5.3">56.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.15.5.4">8.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.15.5.5">58.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.15.5.6">28.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.15.5.7">66.30</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.10.10.10.15.5.8">9.45</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.10.10.10.15.5.9" rowspan="4"><span class="ltx_text" id="S4.T2.10.10.10.15.5.9.1">Lamp</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.15.5.10">MeshGPT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.23022v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.15.5.11">43.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.15.5.12">20.82</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.15.5.13">60.37</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.15.5.14"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.15.5.14.1">36.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.15.5.15">73.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.15.5.16">6.04</td>
</tr>
<tr class="ltx_tr" id="S4.T2.10.10.10.16.6">
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.16.6.1">PivotMesh <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.23022v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.16.6.2"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.16.6.2.1">59.09</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.16.6.3">8.25</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.16.6.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.16.6.4.1">48.48</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.16.6.5"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.16.6.5.1">25.76</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.16.6.6">64.48</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.10.10.10.16.6.7">5.17</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.16.6.8">PivotMesh <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.23022v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.16.6.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.16.6.9.1">50.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.16.6.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.16.6.10.1">19.17</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.16.6.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.16.6.11.1">56.71</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.16.6.12">39.75</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.16.6.13">67.76</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.16.6.14">7.09</td>
</tr>
<tr class="ltx_tr" id="S4.T2.10.10.10.17.7">
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.17.7.1">MeshXL* <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.23022v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.17.7.2"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.17.7.2.1">59.09</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.17.7.3"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.17.7.3.1">7.74</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.17.7.4">53.79</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.17.7.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.17.7.5.1">26.37</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.17.7.6"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.17.7.6.1">19.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.10.10.10.17.7.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.17.7.7.1">3.44</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.17.7.8">MeshXL* <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.23022v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.17.7.9">42.68</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.17.7.10">21.64</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.17.7.11">63.41</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.17.7.12"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.17.7.12.1">35.96</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.17.7.13"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.17.7.13.1">62.46</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.17.7.14"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.17.7.14.1">5.32</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.10.10.10.18.8">
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.10.10.10.18.8.1"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.18.8.1.1">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.10.10.10.18.8.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.18.8.2.1">57.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.10.10.10.18.8.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.18.8.3.1">7.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.10.10.10.18.8.4"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.18.8.4.1">50.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.10.10.10.18.8.5">27.17</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.10.10.10.18.8.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.18.8.6.1">59.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T2.10.10.10.18.8.7"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.18.8.7.1">1.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.10.10.10.18.8.8"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.18.8.8.1">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.10.10.10.18.8.9"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.18.8.9.1">62.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.10.10.10.18.8.10"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.18.8.10.1">18.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.10.10.10.18.8.11"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.18.8.11.1">48.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.10.10.10.18.8.12">37.33</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.10.10.10.18.8.13"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.18.8.13.1">62.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.10.10.10.18.8.14"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.18.8.14.1">2.17</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a quantitative comparison of MeshCraft against three other state-of-the-art mesh generation methods (MeshGPT, PivotMesh, and MeshXL) on the ShapeNet dataset.  The comparison uses several metrics to evaluate shape quality, visual fidelity, and compactness of generated meshes.  These metrics include Coverage (COV), Maximum Mean Discrepancy (MMD), 1-Nearest Neighbor Accuracy (1-NNA), Jensen-Shannon Divergence (JSD), Fréchet Inception Distance (FID), and Kernel Inception Distance (KID).  Note that MMD values are multiplied by 1000, while COV and 1-NNA values are multiplied by 100 for easier interpretation.  Results marked with an asterisk (*) indicate that pre-trained models were used for the comparison. The table clearly shows MeshCraft's superior performance across all metrics, highlighting its efficacy and efficiency.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative results on ShapeNet dataset. MeshCraft outperforms the baselines on shape quality, visual and compactness metrics. MMD values are multiplied by 103superscript10310^{3}10 start_POSTSUPERSCRIPT 3 end_POSTSUPERSCRIPT. COV and 1-NNA are scaled by 102superscript10210^{2}10 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT. * stands for using the released pre-trained models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.2.2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.2.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.2.2.2.2.3"><span class="ltx_text ltx_font_bold" id="S5.T3.2.2.2.2.3.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.1.1.1">Tri. Accu.<math alttext="(\%)\uparrow" class="ltx_math_unparsed" display="inline" id="S5.T3.1.1.1.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.1.1.1.m1.1a"><mrow id="S5.T3.1.1.1.1.1.1.m1.1b"><mrow id="S5.T3.1.1.1.1.1.1.m1.1.1"><mo id="S5.T3.1.1.1.1.1.1.m1.1.1.1" stretchy="false">(</mo><mo id="S5.T3.1.1.1.1.1.1.m1.1.1.2">%</mo><mo id="S5.T3.1.1.1.1.1.1.m1.1.1.3" stretchy="false">)</mo></mrow><mo id="S5.T3.1.1.1.1.1.1.m1.1.2" stretchy="false">↑</mo></mrow><annotation encoding="application/x-tex" id="S5.T3.1.1.1.1.1.1.m1.1c">(\%)\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.1.1.1.m1.1d">( % ) ↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.2.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S5.T3.2.2.2.2.2.1">L2 Dist.<math alttext="(\times 10^{-2})\downarrow" class="ltx_math_unparsed" display="inline" id="S5.T3.2.2.2.2.2.1.m1.1"><semantics id="S5.T3.2.2.2.2.2.1.m1.1a"><mrow id="S5.T3.2.2.2.2.2.1.m1.1b"><mrow id="S5.T3.2.2.2.2.2.1.m1.1.1"><mo id="S5.T3.2.2.2.2.2.1.m1.1.1.1" stretchy="false">(</mo><mo id="S5.T3.2.2.2.2.2.1.m1.1.1.2" lspace="0em" rspace="0.222em">×</mo><msup id="S5.T3.2.2.2.2.2.1.m1.1.1.3"><mn id="S5.T3.2.2.2.2.2.1.m1.1.1.3.2">10</mn><mrow id="S5.T3.2.2.2.2.2.1.m1.1.1.3.3"><mo id="S5.T3.2.2.2.2.2.1.m1.1.1.3.3a">−</mo><mn id="S5.T3.2.2.2.2.2.1.m1.1.1.3.3.2">2</mn></mrow></msup><mo id="S5.T3.2.2.2.2.2.1.m1.1.1.4" stretchy="false">)</mo></mrow><mo id="S5.T3.2.2.2.2.2.1.m1.1.2" stretchy="false">↓</mo></mrow><annotation encoding="application/x-tex" id="S5.T3.2.2.2.2.2.1.m1.1c">(\times 10^{-2})\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.2.2.2.1.m1.1d">( × 10 start_POSTSUPERSCRIPT - 2 end_POSTSUPERSCRIPT ) ↓</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.2.2.2.3.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.3.1.1">KL (4-dim)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.3.1.2">90.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.3.1.3">0.63</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.2.2.4.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.4.2.1">KL (8-dim)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.4.2.2">99.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.4.2.3">0.12</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.2.2.5.3">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.2.2.2.5.3.1">RVQ <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.23022v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.2.2.2.5.3.2">65.12</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.2.2.2.5.3.3">8.63</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative analysis of the MeshCraft model's performance on the Objaverse dataset.  It compares the model's reconstruction accuracy (measured by Tri. Accu. and L2 Dist.) across different configurations, specifically focusing on the impact of the dimensionality of the KL regularization in the autoencoder (4-dim vs. 8-dim) and the use of a Residual Vector Quantization (RVQ) method. The table helps to evaluate the effectiveness of the different model choices in terms of generating accurate and high-fidelity 3D mesh reconstructions on a challenging and diverse dataset.
> <details>
> <summary>read the caption</summary>
> Table 3: Reconstruction performance study on Objverse.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T4.2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.2.2.2.3"><span class="ltx_text ltx_font_bold" id="S5.T4.2.2.2.3.1">CFG</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.1.1">COV<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.1.1.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.1.1.m1.1a"><mo id="S5.T4.1.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T4.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.1.1.m1.1b"><ci id="S5.T4.1.1.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S5.T4.2.2.2.2.1">MMD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.2.2.2.2.1.m1.1"><semantics id="S5.T4.2.2.2.2.1.m1.1a"><mo id="S5.T4.2.2.2.2.1.m1.1.1" stretchy="false" xref="S5.T4.2.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.2.1.m1.1b"><ci id="S5.T4.2.2.2.2.1.m1.1.1.cmml" xref="S5.T4.2.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.2.2.2.4"><span class="ltx_text ltx_font_bold" id="S5.T4.2.2.2.4.1">1-NNA</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.2.2.3.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.3.1.1">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.3.1.2">30.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.3.1.3">12.61</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.3.1.4">84.75</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.2.4.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.4.2.1">1.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.4.2.2">38.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.4.2.3">11.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.4.2.4">75.00</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.2.5.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.5.3.1">2.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.5.3.2">44.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.5.3.3">10.72</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.5.3.4">67.65</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.2.6.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.6.4.1">3.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.6.4.2">48.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.6.4.3">10.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.6.4.4">61.05</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.2.7.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.7.5.1">4.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.7.5.2">50.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.7.5.3">9.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.7.5.4">58.40</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.2.8.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.8.6.1">5.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.8.6.2">51.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.8.6.3">10.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.8.6.4">57.55</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.2.9.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.9.7.1">6.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.9.7.2">51.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.9.7.3">9.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.9.7.4"><span class="ltx_text ltx_font_bold" id="S5.T4.2.2.9.7.4.1">56.55</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.2.10.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.10.8.1">7.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.10.8.2">51.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.10.8.3"><span class="ltx_text ltx_font_bold" id="S5.T4.2.2.10.8.3.1">9.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.10.8.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.2.2.10.8.4.1">56.70</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.2.11.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.11.9.1">8.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.11.9.2"><span class="ltx_text ltx_font_bold" id="S5.T4.2.2.11.9.2.1">53.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.11.9.3">9.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.11.9.4">56.85</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.2.12.10">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.12.10.1">9.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.12.10.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.2.2.12.10.2.1">52.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.12.10.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.2.2.12.10.3.1">9.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.12.10.4">56.75</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.2.13.11">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.2.2.13.11.1">10.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.2.2.13.11.2">52.30</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.2.2.13.11.3">9.86</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.2.2.13.11.4">57.90</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the quantitative results of mesh generation on the ShapeNet dataset, showing the impact of different classifier-free guidance (CFG) weights on the face number condition.  Specifically, it demonstrates how varying weights (w1 and w2) influence the quality of generated meshes when conditioned on both the desired number of faces and image input. The metrics used likely include those common in 3D mesh generation evaluation, possibly assessing aspects such as shape accuracy and visual fidelity. The table helps analyze the optimal CFG weights for balancing the influence of the face number and image conditions to achieve the best mesh generation results.
> <details>
> <summary>read the caption</summary>
> Table 4: Effects of CFG weights over the face number condition to mesh generation results on ShapeNet dataset.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.23022/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23022/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23022/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23022/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23022/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23022/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23022/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23022/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23022/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23022/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23022/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23022/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23022/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23022/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23022/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}