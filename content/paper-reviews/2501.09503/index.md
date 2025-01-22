---
title: "AnyStory: Towards Unified Single and Multiple Subject Personalization in Text-to-Image Generation"
summary: "AnyStory: A unified framework enables high-fidelity personalized image generation for single and multiple subjects, addressing subject fidelity challenges in existing methods."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Alibaba Tongyi Lab",]
showSummary: true
date: 2025-01-16
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.09503 {{< /keyword >}}
{{< keyword icon="writer" >}} Junjie He et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.09503" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.09503" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.09503/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current large-scale generative models struggle with creating high-fidelity personalized images, especially those with multiple subjects.  Existing methods often suffer from subject fidelity issues, blending problems, or limitations in handling diverse object categories.  These limitations hinder the creation of complex and visually rich images tailored to specific subjects and scenarios. 



AnyStory overcomes these limitations with a novel "encode-then-route" approach.  It uses an enhanced encoder combining ReferenceNet and CLIP to robustly represent subjects.  A decoupled instance-aware router accurately guides subject condition injection in the latent space, minimizing blending and maximizing control.  This results in high-quality, personalized images, even with multiple subjects, demonstrating the approach's effectiveness across diverse scenarios and subject types. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} AnyStory provides a unified solution for both single and multi-subject personalization in text-to-image generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method utilizes an enhanced subject representation encoder and a decoupled instance-aware subject router for improved accuracy and flexibility. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} AnyStory demonstrates superior performance in preserving subject details, aligning text descriptions, and handling complex scenarios with multiple subjects. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it presents **AnyStory**, a novel approach that significantly advances personalized image generation.  It addresses the limitations of existing methods by achieving high-fidelity personalization for both single and multiple subjects, a significant challenge in the field.  The unified approach and innovative techniques (enhanced subject representation encoder and decoupled instance-aware subject router) open new avenues for research in  multi-subject generation and visual storytelling.  Researchers can leverage AnyStory's framework to develop more sophisticated and flexible image generation models for various applications.

------
#### Visual Insights



![](https://arxiv.org/html/2501.09503/x1.png)

> 🔼 AnyStory, a unified framework for single and multi-subject personalization in text-to-image generation, is illustrated.  The framework uses a two-stage process: First, it encodes the subject using a simplified ReferenceNet and CLIP vision encoder. Second, it uses a decoupled instance-aware subject router to inject subject conditions into the image generation process, guiding the placement and characteristics of subjects within the image. The training involves separate training of the subject encoder and the router.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Overview of AnyStory framework. AnyStory follows the “encode-then-route” conditional generation paradigm. It first utilizes a simplified ReferenceNet combined with a CLIP vision encoder to encode the subject (Sec. 3.2), and then employs a decoupled instance-aware subject router to guide the subject condition injection (Sec. 3.3). The training process is divided into two stages: the subject encoder training stage and the router training stage (Sec. 3.4). For brevity, we omit the text conditional branch here.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.4">
<tr class="ltx_tr" id="S3.T1.4.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.4.1.1" style="padding:0.7pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.1.1.1">
<span class="ltx_p" id="S3.T1.4.1.1.1.1" style="width:86.0pt;"><span class="ltx_text" id="S3.T1.4.1.1.1.1.1" style="font-size:70%;">Architecture</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.4.1.2" style="padding:0.7pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.1.2.1">
<span class="ltx_p" id="S3.T1.4.1.2.1.1" style="width:40.0pt;"><span class="ltx_text" id="S3.T1.4.1.2.1.1.1" style="font-size:70%;">#Params (B)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.4.1.3" style="padding:0.7pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.1.3.1">
<span class="ltx_p" id="S3.T1.4.1.3.1.1" style="width:60.0pt;"><span class="ltx_text" id="S3.T1.4.1.3.1.1.1" style="font-size:70%;">Speed (ms/img)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.4.2.1" style="padding:0.7pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.2.1.1">
<span class="ltx_p" id="S3.T1.4.2.1.1.1" style="width:86.0pt;"><span class="ltx_text" id="S3.T1.4.2.1.1.1.1" style="font-size:70%;">Original ReferenceNet </span><cite class="ltx_cite ltx_centering ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.4.2.1.1.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.09503v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a><span class="ltx_text" id="S3.T1.4.2.1.1.1.3.2" style="font-size:70%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.4.2.2" style="padding:0.7pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.2.2.1">
<span class="ltx_p" id="S3.T1.4.2.2.1.1" style="width:40.0pt;"><span class="ltx_text" id="S3.T1.4.2.2.1.1.1" style="font-size:70%;">2.57</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.4.2.3" style="padding:0.7pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.2.3.1">
<span class="ltx_p" id="S3.T1.4.2.3.1.1" style="width:60.0pt;"><span class="ltx_text" id="S3.T1.4.2.3.1.1.1" style="font-size:70%;">62.0</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.4.3.1" style="padding:0.7pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.3.1.1">
<span class="ltx_p" id="S3.T1.4.3.1.1.1" style="width:86.0pt;"><span class="ltx_text" id="S3.T1.4.3.1.1.1.1" style="font-size:70%;">Simplified ReferenceNet</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.4.3.2" style="padding:0.7pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.3.2.1">
<span class="ltx_p" id="S3.T1.4.3.2.1.1" style="width:40.0pt;"><span class="ltx_text" id="S3.T1.4.3.2.1.1.1" style="font-size:70%;">2.02</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.4.3.3" style="padding:0.7pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.4.3.3.1">
<span class="ltx_p" id="S3.T1.4.3.3.1.1" style="width:60.0pt;"><span class="ltx_text" id="S3.T1.4.3.3.1.1.1" style="font-size:70%;">53.2</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of the original ReferenceNet architecture from the paper [28] and a simplified version used in AnyStory.  It shows the number of parameters (in billions) and the inference speed (in milliseconds per image) for each architecture.  The measurements were obtained using an NVIDIA A100 GPU, a batch size of 1, and an input resolution of 64x64 in the latent space. The simplified version reduces computational cost without significant performance loss.
> <details>
> <summary>read the caption</summary>
> Table 1: Statistics of the simplified ReferenceNet. The speed is measured on an A100 GPU with a batch size of 1 and an input (latent) resolution of 64×64646464\times 6464 × 64.
> </details>





### In-depth insights


#### Unified Personalization
The concept of "Unified Personalization" in text-to-image generation suggests a system capable of handling both single and multiple subjects seamlessly.  This implies **overcoming the challenges of subject blending and fidelity loss** often seen when multiple subjects interact within a single image. A unified approach would likely involve a sophisticated encoding and routing mechanism that **accurately perceives and predicts the spatial location of each subject**, preventing overlap and ensuring individual subject details are preserved. This requires moving beyond simple subject masking techniques towards more intelligent methods that understand the complex relationships between subjects and their surroundings.  A successful unified personalization system should also offer **fine-grained control over individual subject attributes** such as pose, expression, and style, while maintaining consistency and coherence across the entire image. Achieving this would represent a significant advance in the field, enabling the creation of highly personalized and detailed scenes that accurately reflect the user's intent, regardless of the number of subjects involved.  **Key aspects to consider include the subject encoding method, routing algorithm, and loss function** employed for training and ensuring high-fidelity generation.

#### Subject Encoding
Subject encoding in text-to-image generation aims to create effective representations of specific subjects for personalized image synthesis.  **High-fidelity encoding is crucial** as it directly impacts the quality and accuracy of the generated images.  A challenge lies in balancing detail preservation with the ability to generalize across variations in pose, background, and viewpoint.  Methods often involve using powerful image encoders like ReferenceNet, possibly combined with CLIP, to capture both visual details and semantic concepts.  **The choice of encoder is a critical design decision**, impacting computational efficiency and the capacity to handle diverse subjects.  **Simplifications to the encoder architecture,** such as removing cross-attention layers, can improve efficiency while potentially reducing the richness of the subject representation.  The effectiveness of subject encoding significantly influences the downstream tasks of subject routing and the final image generation process.  Careful consideration must be given to the trade-off between detailed encoding for high-fidelity and generalized encoding enabling flexibility.

#### Instance-Aware Routing
Instance-aware routing, in the context of image generation, is a crucial mechanism for handling multiple subjects or objects within a single scene.  It addresses the challenge of **preventing unwanted blending or interference** between subjects by carefully controlling how their individual features are integrated into the image generation process.  The core idea is to **dynamically assign influence regions** or weights to each subject's representation, ensuring that each contributes to the final image in a spatially defined manner.  This approach moves beyond simpler methods that may rely on fixed masks or uniform blending, offering more **flexible and precise control** over the final output.  **Effective instance-aware routing** requires a system capable of accurately perceiving and predicting the locations of the subjects, often through an intermediate segmentation-like step, which guides the injection of subject-specific conditions within a generative model.  By decoupling subject features from background or global context, instance-aware routing also enables **fine-grained control** over individual subject attributes and relative positioning within the overall scene.

#### Experimental Results
A dedicated 'Experimental Results' section in a research paper would ideally present a rigorous evaluation of the proposed AnyStory model.  This would involve a multifaceted assessment, likely including **quantitative metrics** such as FID (Fréchet Inception Distance) and IS (Inception Score) to measure image quality and diversity.  The results should demonstrate AnyStory's **superior performance** compared to existing single and multi-subject personalization methods.  Furthermore, **ablation studies** should be included, systematically removing key components (e.g., ReferenceNet encoder, decoupled router) to isolate their individual contributions.  Crucially, the results should **visually showcase** AnyStory's effectiveness in generating high-fidelity images with correctly identified and distinct subjects, even under complex multi-subject scenarios.  Success would be demonstrated by the **absence of subject blending** and the accurate reflection of text prompts within the generated images. Finally, the discussion should analyze the model's limitations, highlighting areas for future work and improvement, and exploring any unexpected or counterintuitive results.

#### Future of AnyStory
The future of AnyStory hinges on addressing its current limitations and expanding its capabilities.  **Improving background control** is crucial; currently, AnyStory struggles to consistently personalize backgrounds, a key aspect of visual storytelling.  Future work should focus on integrating more sophisticated background generation techniques or allowing user-specified background input. **Enhanced subject fidelity and control** is another area ripe for development; while AnyStory excels at detailed subject representation, refining its ability to handle complex interactions, occlusions, and diverse subject types would improve the quality and variety of generated images.  **Expanding the range of supported subject types** beyond current examples is also important. Exploring more diverse datasets and potentially incorporating 3D modeling techniques could address this. Finally, **investigating the potential for improved efficiency** is vital. The 'encode-then-route' approach, while effective, may be computationally expensive. Optimizing model architecture or employing more efficient algorithms could make AnyStory more accessible for wider use.  Addressing these areas will solidify AnyStory's position as a leading personalized text-to-image generation model.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.09503/x2.png)

> 🔼 This figure demonstrates the impact of using a ReferenceNet encoder in AnyStory.  The left image shows the output when only a CLIP vision encoder is used, showing loss of fine details. The right image shows how incorporating ReferenceNet into the subject representation enhances the preservation of subject details and fidelity in the generated image.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Effect of ReferenceNet encoding. The ReferenceNet encoder enhances the preservation of subject details.
> </details>



![](https://arxiv.org/html/2501.09503/x3.png)

> 🔼 This figure demonstrates the AnyStory model's ability to avoid blending of subject characteristics when generating images with multiple subjects.  The router module, a key component of AnyStory, limits the influence of each subject's conditions to specific areas of the image. By confining these influences, the model produces cleaner, higher-quality images where subjects are distinct and well-defined, without unwanted blending or mixing of features.
> <details>
> <summary>read the caption</summary>
> Figure 3:  The effectiveness of the router. The router restricts the influence areas of the subject conditions, thereby avoiding the blending of characteristics between multiple subjects and improving the quality of the generated images.
> </details>



![](https://arxiv.org/html/2501.09503/x4.png)

> 🔼 This figure visualizes the attention maps generated by the model's routing module at various stages of the diffusion process.  Each row represents a different subject or entity in the image, showing how the model focuses on specific areas to condition generation. The maps illustrate the attention weights across the 70 cross-attention layers within the U-Net, revealing how the model progressively refines subject placement and boundaries during image generation. Yellow highlights indicate the areas where the model focuses most strongly. The background map is omitted for clarity; it's essentially the inverse of the combined subject maps.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Visualization of routing maps. We visualize the routing maps within each cross-attention layer in the U-Net at different diffusion time steps. There are a total of 70 cross-attention layers in the SDXL U-Net, and we sequentially display them in each subfigure in a top-to-bottom and left-to-right order (yellow represents the effective region). We utilize T=25𝑇25T=25italic_T = 25 steps of EDM sampling. Each complete row corresponds to one entity. The background routing map has been ignored, which is the complement of the routing maps of all subjects. Best viewed in color and zoomed in.
> </details>



![](https://arxiv.org/html/2501.09503/x7.png)

> 🔼 Figure 5 demonstrates the effectiveness of AnyStory's decoupled instance-aware subject router in controlling the influence area of subject conditions during image generation.  The figure shows coarse and refined routing maps at different diffusion time steps (t) for various subjects. Each row corresponds to a subject. The yellow regions in the maps highlight where the subject's features are injected into the image. The refined routing maps, generated by masked cross-attention, provide more precise localization of subject features compared to the coarse maps. This precise control prevents the blending of features from different subjects and leads to higher-quality image generation, especially in multi-subject scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 5: Effectiveness of the proposed router structure. For the meaning of each illustration, please refer to Fig. 4.
> </details>



![](https://arxiv.org/html/2501.09503/x8.png)

> 🔼 This figure showcases example image generation results from the AnyStory model.  It demonstrates the model's ability to generate diverse and high-quality images based on text prompts, showcasing a range of art styles, subjects, and compositions. The images highlight AnyStory's capacity for personalization, including the generation of single or multiple subjects with varying levels of detail and complexity.
> <details>
> <summary>read the caption</summary>
> Figure 6:  Example generations II from AnyStory.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_align_middle" id="S3.F5.tab1.1">
<tr class="ltx_tr" id="S3.F5.tab1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F5.tab1.1.1.1" style="padding:-4pt 0.2pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.F5.tab1.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F5.tab1.1.2.1" style="padding:-4pt 0.2pt;"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This figure visualizes the routing maps at different diffusion time steps during the denoising process. Each row corresponds to a single entity, showing how the routing maps evolve over time. The visualization uses yellow to represent the effective region of each subject's condition.  The figure helps demonstrate the effectiveness of the proposed router in accurately perceiving and locating the effect regions of each subject during the image generation process.
> <details>
> <summary>read the caption</summary>
> ((a)) Coarse routing maps
> </details>

{{< table-caption >}}
<table class="ltx_tabular" id="A1.T1.53">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T1.53.54.1">
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A1.T1.53.54.1.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.53.54.1.1.1">
<span class="ltx_p" id="A1.T1.53.54.1.1.1.1">Reference</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_t" id="A1.T1.53.54.1.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.53.54.1.2.1">
<span class="ltx_p" id="A1.T1.53.54.1.2.1.1">URL</span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T1.53.55.1">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="A1.T1.53.55.1.1" style="width:56.9pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A1.T1.53.55.1.2" style="width:426.8pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.1.1.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.1.1.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.1.1.1.1.g1" src="extracted/6135755/figures/appendix/ai-generated-dwarf-story-fantasy-8697130.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.1.1.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.1.1.2.1">
<span class="ltx_p" id="A1.T1.1.1.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/illustrations/ai-generated-dwarf-story-fantasy-8697130/" style="font-size:90%;" title="">https://pixabay.com/illustrations/ai-generated-dwarf-story-fantasy-8697130/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.2.2">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.2.2.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.2.2.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="298" id="A1.T1.2.2.1.1.g1" src="extracted/6135755/figures/appendix/girl-coat-night-night-city-8836068.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.2.2.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.2.2.2.1">
<span class="ltx_p" id="A1.T1.2.2.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/illustrations/girl-coat-night-night-city-8836068/" style="font-size:90%;" title="">https://pixabay.com/illustrations/girl-coat-night-night-city-8836068/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.3.3">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.3.3.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.3.3.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.3.3.1.1.g1" src="extracted/6135755/figures/appendix/man-warrior-art-character-cartoon-9093563.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.3.3.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.3.3.2.1">
<span class="ltx_p" id="A1.T1.3.3.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/vectors/man-warrior-art-character-cartoon-9093563/" style="font-size:90%;" title="">https://pixabay.com/vectors/man-warrior-art-character-cartoon-9093563/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.4.4">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.4.4.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.4.4.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.4.4.1.1.g1" src="extracted/6135755/figures/appendix/mario-figure-game-nintendo-super-1558068.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.4.4.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.4.4.2.1">
<span class="ltx_p" id="A1.T1.4.4.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/photos/mario-figure-game-nintendo-super-1558068/" style="font-size:90%;" title="">https://pixabay.com/photos/mario-figure-game-nintendo-super-1558068/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.5.5">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.5.5.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.5.5.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="298" id="A1.T1.5.5.1.1.g1" src="extracted/6135755/figures/appendix/panda-cartoon-2d-art-character-7918136.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.5.5.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.5.5.2.1">
<span class="ltx_p" id="A1.T1.5.5.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/illustrations/panda-cartoon-2d-art-character-7918136/" style="font-size:90%;" title="">https://pixabay.com/illustrations/panda-cartoon-2d-art-character-7918136/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.6.6">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.6.6.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.6.6.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.6.6.1.1.g1" src="extracted/6135755/figures/appendix/avocado-food-fruit-6931344.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.6.6.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.6.6.2.1">
<span class="ltx_p" id="A1.T1.6.6.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/illustrations/avocado-food-fruit-6931344/" style="font-size:90%;" title="">https://pixabay.com/illustrations/avocado-food-fruit-6931344/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.7.7">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.7.7.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.7.7.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="298" id="A1.T1.7.7.1.1.g1" src="extracted/6135755/figures/appendix/guy-anime-cartoon-chibi-character-7330732.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.7.7.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.7.7.2.1">
<span class="ltx_p" id="A1.T1.7.7.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/vectors/guy-anime-cartoon-chibi-character-7330732/" style="font-size:90%;" title="">https://pixabay.com/vectors/guy-anime-cartoon-chibi-character-7330732/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.8.8">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.8.8.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.8.8.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="298" id="A1.T1.8.8.1.1.g1" src="extracted/6135755/figures/appendix/guy-anime-cartoon-chibi-character-7330788.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.8.8.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.8.8.2.1">
<span class="ltx_p" id="A1.T1.8.8.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/vectors/guy-anime-cartoon-chibi-character-7330788/" style="font-size:90%;" title="">https://pixabay.com/vectors/guy-anime-cartoon-chibi-character-7330788/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.9.9">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.9.9.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.9.9.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.9.9.1.1.g1" src="extracted/6135755/figures/appendix/young-male-man-japanese-anime-3815077.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.9.9.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.9.9.2.1">
<span class="ltx_p" id="A1.T1.9.9.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/photos/young-male-man-japanese-anime-3815077/" style="font-size:90%;" title="">https://pixabay.com/photos/young-male-man-japanese-anime-3815077/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.10.10">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.10.10.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.10.10.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.10.10.1.1.g1" src="extracted/6135755/figures/appendix/young-male-man-japanese-anime-3816557.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.10.10.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.10.10.2.1">
<span class="ltx_p" id="A1.T1.10.10.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/photos/young-male-man-japanese-anime-3816557/" style="font-size:90%;" title="">https://pixabay.com/photos/young-male-man-japanese-anime-3816557/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.11.11">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.11.11.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.11.11.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.11.11.1.1.g1" src="extracted/6135755/figures/appendix/shark-jaws-fish-animal-marine-life-2317422.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.11.11.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.11.11.2.1">
<span class="ltx_p" id="A1.T1.11.11.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/illustrations/shark-jaws-fish-animal-marine-life-2317422/" style="font-size:90%;" title="">https://pixabay.com/illustrations/shark-jaws-fish-animal-marine-life-2317422/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.12.12">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.12.12.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.12.12.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="298" id="A1.T1.12.12.1.1.g1" src="extracted/6135755/figures/appendix/white-egg-with-face-illustration-WtolM5hsj14.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.12.12.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.12.12.2.1">
<span class="ltx_p" id="A1.T1.12.12.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://unsplash.com/photos/white-egg-with-face-illustration-WtolM5hsj14" style="font-size:90%;" title="">https://unsplash.com/photos/white-egg-with-face-illustration-WtolM5hsj14</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.13.13">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.13.13.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.13.13.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.13.13.1.1.g1" src="extracted/6135755/figures/appendix/alligator-crocodile-suit-cartoon-576481.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.13.13.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.13.13.2.1">
<span class="ltx_p" id="A1.T1.13.13.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/vectors/alligator-crocodile-suit-cartoon-576481/" style="font-size:90%;" title="">https://pixabay.com/vectors/alligator-crocodile-suit-cartoon-576481/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.14.14">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.14.14.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.14.14.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="301" id="A1.T1.14.14.1.1.g1" src="extracted/6135755/figures/appendix/snowman-winter-christmas-time-snow-7583640.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.14.14.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.14.14.2.1">
<span class="ltx_p" id="A1.T1.14.14.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/illustrations/snowman-winter-christmas-time-snow-7583640/" style="font-size:90%;" title="">https://pixabay.com/illustrations/snowman-winter-christmas-time-snow-7583640/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.15.15">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.15.15.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.15.15.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.15.15.1.1.g1" src="extracted/6135755/figures/appendix/monster-cartoon-funny-creature-8534186.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.15.15.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.15.15.2.1">
<span class="ltx_p" id="A1.T1.15.15.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/illustrations/monster-cartoon-funny-creature-8534186/" style="font-size:90%;" title="">https://pixabay.com/illustrations/monster-cartoon-funny-creature-8534186/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.16.16">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.16.16.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.16.16.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="301" id="A1.T1.16.16.1.1.g1" src="extracted/6135755/figures/appendix/a-cartoon-character-wearing-a-face-mask-and-running-6-adg66qleM.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.16.16.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.16.16.2.1">
<span class="ltx_p" id="A1.T1.16.16.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://unsplash.com/photos/a-cartoon-character-wearing-a-face-mask-and-running-6-adg66qleM" style="font-size:90%;" title="">https://unsplash.com/photos/a-cartoon-character-wearing-a-face-mask-and-running-6-adg66qleM</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.17.17">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.17.17.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.17.17.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="301" id="A1.T1.17.17.1.1.g1" src="extracted/6135755/figures/appendix/car-vehicle-drive-transportation-8316057.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.17.17.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.17.17.2.1">
<span class="ltx_p" id="A1.T1.17.17.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/illustrations/car-vehicle-drive-transportation-8316057/" style="font-size:90%;" title="">https://pixabay.com/illustrations/car-vehicle-drive-transportation-8316057/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.18.18">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.18.18.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.18.18.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.18.18.1.1.g1" src="extracted/6135755/figures/appendix/camel-desert-two-humped-animal-7751098.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.18.18.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.18.18.2.1">
<span class="ltx_p" id="A1.T1.18.18.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/vectors/camel-desert-two-humped-animal-7751098/" style="font-size:90%;" title="">https://pixabay.com/vectors/camel-desert-two-humped-animal-7751098/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.19.19">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.19.19.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.19.19.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="301" id="A1.T1.19.19.1.1.g1" src="extracted/6135755/figures/appendix/cartoon-samurai-characters-4790355.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.19.19.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.19.19.2.1">
<span class="ltx_p" id="A1.T1.19.19.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/illustrations/cartoon-samurai-characters-4790355/" style="font-size:90%;" title="">https://pixabay.com/illustrations/cartoon-samurai-characters-4790355/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.20.20">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.20.20.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.20.20.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.20.20.1.1.g1" src="extracted/6135755/figures/appendix/caveman-prehistoric-character-9211043.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.20.20.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.20.20.2.1">
<span class="ltx_p" id="A1.T1.20.20.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/illustrations/caveman-prehistoric-character-9211043/" style="font-size:90%;" title="">https://pixabay.com/illustrations/caveman-prehistoric-character-9211043/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.21.21">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.21.21.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.21.21.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="301" id="A1.T1.21.21.1.1.g1" src="extracted/6135755/figures/appendix/boy-walk-nature-anime-smile-8350034.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.21.21.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.21.21.2.1">
<span class="ltx_p" id="A1.T1.21.21.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/illustrations/boy-walk-nature-anime-smile-8350034/" style="font-size:90%;" title="">https://pixabay.com/illustrations/boy-walk-nature-anime-smile-8350034/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.22.22">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.22.22.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.22.22.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="298" id="A1.T1.22.22.1.1.g1" src="extracted/6135755/figures/appendix/fish-jaw-angry-cartoon-parrot-fish-1402423.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.22.22.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.22.22.2.1">
<span class="ltx_p" id="A1.T1.22.22.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/illustrations/fish-jaw-angry-cartoon-parrot-fish-1402423/" style="font-size:90%;" title="">https://pixabay.com/illustrations/fish-jaw-angry-cartoon-parrot-fish-1402423/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.23.23">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.23.23.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.23.23.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.23.23.1.1.g1" src="extracted/6135755/figures/appendix/fish-telescope-fish-cartoon-1450768.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.23.23.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.23.23.2.1">
<span class="ltx_p" id="A1.T1.23.23.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/illustrations/fish-telescope-fish-cartoon-1450768/" style="font-size:90%;" title="">https://pixabay.com/illustrations/fish-telescope-fish-cartoon-1450768/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.24.24">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.24.24.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.24.24.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.24.24.1.1.g1" src="extracted/6135755/figures/appendix/cat-pet-animal-kitty-kitten-cute-6484941.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.24.24.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.24.24.2.1">
<span class="ltx_p" id="A1.T1.24.24.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/vectors/cat-pet-animal-kitty-kitten-cute-6484941/" style="font-size:90%;" title="">https://pixabay.com/vectors/cat-pet-animal-kitty-kitten-cute-6484941/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.25.25">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.25.25.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.25.25.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="301" id="A1.T1.25.25.1.1.g1" src="extracted/6135755/figures/appendix/child-costume-bee-character-8320341.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.25.25.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.25.25.2.1">
<span class="ltx_p" id="A1.T1.25.25.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/vectors/child-costume-bee-character-8320341/" style="font-size:90%;" title="">https://pixabay.com/vectors/child-costume-bee-character-8320341/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.26.26">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.26.26.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.26.26.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="301" id="A1.T1.26.26.1.1.g1" src="extracted/6135755/figures/appendix/guy-anime-cartoon-chibi-character-7330758.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.26.26.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.26.26.2.1">
<span class="ltx_p" id="A1.T1.26.26.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/vectors/guy-anime-cartoon-chibi-character-7330758/" style="font-size:90%;" title="">https://pixabay.com/vectors/guy-anime-cartoon-chibi-character-7330758/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.27.27">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.27.27.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.27.27.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.27.27.1.1.g1" src="extracted/6135755/figures/appendix/girl-anime-chibi-cartoon-character-7346667.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.27.27.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.27.27.2.1">
<span class="ltx_p" id="A1.T1.27.27.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/vectors/girl-anime-chibi-cartoon-character-7346667/" style="font-size:90%;" title="">https://pixabay.com/vectors/girl-anime-chibi-cartoon-character-7346667/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.28.28">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.28.28.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.28.28.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.28.28.1.1.g1" src="extracted/6135755/figures/appendix/white-and-blue-cat-figurine-u3ZUSIH_eis.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.28.28.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.28.28.2.1">
<span class="ltx_p" id="A1.T1.28.28.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://unsplash.com/photos/white-and-blue-cat-figurine-u3ZUSIH_eis" style="font-size:90%;" title="">https://unsplash.com/photos/white-and-blue-cat-figurine-u3ZUSIH_eis</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.29.29">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.29.29.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.29.29.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="298" id="A1.T1.29.29.1.1.g1" src="extracted/6135755/figures/appendix/sock-monkey-plush-toy-on-brown-panel-5INN0oj12u4.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.29.29.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.29.29.2.1">
<span class="ltx_p" id="A1.T1.29.29.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://unsplash.com/photos/sock-monkey-plush-toy-on-brown-panel-5INN0oj12u4" style="font-size:90%;" title="">https://unsplash.com/photos/sock-monkey-plush-toy-on-brown-panel-5INN0oj12u4</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.30.30">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.30.30.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.30.30.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.30.30.1.1.g1" src="extracted/6135755/figures/appendix/karate-fighter-cartoon-character-8537724.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.30.30.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.30.30.2.1">
<span class="ltx_p" id="A1.T1.30.30.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/illustrations/karate-fighter-cartoon-character-8537724/" style="font-size:90%;" title="">https://pixabay.com/illustrations/karate-fighter-cartoon-character-8537724/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.31.31">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.31.31.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.31.31.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="301" id="A1.T1.31.31.1.1.g1" src="extracted/6135755/figures/appendix/ai-generated-giraffe-doctor-8647702.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.31.31.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.31.31.2.1">
<span class="ltx_p" id="A1.T1.31.31.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/illustrations/ai-generated-giraffe-doctor-8647702/" style="font-size:90%;" title="">https://pixabay.com/illustrations/ai-generated-giraffe-doctor-8647702/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.32.32">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.32.32.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.32.32.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.32.32.1.1.g1" src="extracted/6135755/figures/appendix/ai-generated-skull-character-8124354.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.32.32.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.32.32.2.1">
<span class="ltx_p" id="A1.T1.32.32.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/illustrations/ai-generated-skull-character-8124354/" style="font-size:90%;" title="">https://pixabay.com/illustrations/ai-generated-skull-character-8124354/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.33.33">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.33.33.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.33.33.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="301" id="A1.T1.33.33.1.1.g1" src="extracted/6135755/figures/appendix/a-red-robot-is-standing-on-a-pink-background-unt3066GV-E.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.33.33.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.33.33.2.1">
<span class="ltx_p" id="A1.T1.33.33.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://unsplash.com/photos/a-red-robot-is-standing-on-a-pink-background-unt3066GV-E" style="font-size:90%;" title="">https://unsplash.com/photos/a-red-robot-is-standing-on-a-pink-background-unt3066GV-E</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.34.34">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.34.34.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.34.34.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.34.34.1.1.g1" src="extracted/6135755/figures/appendix/cartoon-dinosaur-dragon-animal-8539364.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.34.34.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.34.34.2.1">
<span class="ltx_p" id="A1.T1.34.34.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/illustrations/cartoon-dinosaur-dragon-animal-8539364/" style="font-size:90%;" title="">https://pixabay.com/illustrations/cartoon-dinosaur-dragon-animal-8539364/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.35.35">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.35.35.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.35.35.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.35.35.1.1.g1" src="extracted/6135755/figures/appendix/man-book-read-hanfu-chinese-hanfu-7364886.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.35.35.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.35.35.2.1">
<span class="ltx_p" id="A1.T1.35.35.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/illustrations/man-book-read-hanfu-chinese-hanfu-7364886/" style="font-size:90%;" title="">https://pixabay.com/illustrations/man-book-read-hanfu-chinese-hanfu-7364886/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.36.36">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.36.36.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.36.36.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="301" id="A1.T1.36.36.1.1.g1" src="extracted/6135755/figures/appendix/muslim-hijab-child-cartoon-doodle-7747745.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.36.36.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.36.36.2.1">
<span class="ltx_p" id="A1.T1.36.36.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/vectors/muslim-hijab-child-cartoon-doodle-7747745/" style="font-size:90%;" title="">https://pixabay.com/vectors/muslim-hijab-child-cartoon-doodle-7747745/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.37.37">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.37.37.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.37.37.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.37.37.1.1.g1" src="extracted/6135755/figures/appendix/tambourine-musician-woman-character-9073083.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.37.37.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.37.37.2.1">
<span class="ltx_p" id="A1.T1.37.37.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/illustrations/tambourine-musician-woman-character-9073083/" style="font-size:90%;" title="">https://pixabay.com/illustrations/tambourine-musician-woman-character-9073083/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.38.38">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.38.38.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.38.38.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.38.38.1.1.g1" src="extracted/6135755/figures/appendix/ai-generated-man-agent-character-9050849.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.38.38.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.38.38.2.1">
<span class="ltx_p" id="A1.T1.38.38.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/illustrations/ai-generated-man-agent-character-9050849/" style="font-size:90%;" title="">https://pixabay.com/illustrations/ai-generated-man-agent-character-9050849/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.39.39">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.39.39.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.39.39.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.39.39.1.1.g1" src="extracted/6135755/figures/appendix/ai-generated-superhero-hero-heroine-7977051.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.39.39.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.39.39.2.1">
<span class="ltx_p" id="A1.T1.39.39.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/illustrations/ai-generated-superhero-hero-heroine-7977051/" style="font-size:90%;" title="">https://pixabay.com/illustrations/ai-generated-superhero-hero-heroine-7977051/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.40.40">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.40.40.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.40.40.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="301" id="A1.T1.40.40.1.1.g1" src="extracted/6135755/figures/appendix/a-woman-in-a-tan-jacket-and-tan-pants-QVyAUDUOlMw.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.40.40.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.40.40.2.1">
<span class="ltx_p" id="A1.T1.40.40.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://unsplash.com/photos/a-woman-in-a-tan-jacket-and-tan-pants-QVyAUDUOlMw" style="font-size:90%;" title="">https://unsplash.com/photos/a-woman-in-a-tan-jacket-and-tan-pants-QVyAUDUOlMw</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.41.41">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.41.41.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.41.41.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.41.41.1.1.g1" src="extracted/6135755/figures/appendix/a-woman-in-a-yellow-shirt-and-black-pants-rdHrrFA1KKg.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.41.41.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.41.41.2.1">
<span class="ltx_p" id="A1.T1.41.41.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://unsplash.com/photos/a-woman-in-a-yellow-shirt-and-black-pants-rdHrrFA1KKg" style="font-size:90%;" title="">https://unsplash.com/photos/a-woman-in-a-yellow-shirt-and-black-pants-rdHrrFA1KKg</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.42.42">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.42.42.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.42.42.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="298" id="A1.T1.42.42.1.1.g1" src="extracted/6135755/figures/appendix/fashion-boy-cartoon-spring-summer-8515751.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.42.42.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.42.42.2.1">
<span class="ltx_p" id="A1.T1.42.42.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/vectors/fashion-boy-cartoon-spring-summer-8515751/" style="font-size:90%;" title="">https://pixabay.com/vectors/fashion-boy-cartoon-spring-summer-8515751/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.43.43">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.43.43.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.43.43.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.43.43.1.1.g1" src="extracted/6135755/figures/appendix/woman-girl-fashion-model-female-8859569.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.43.43.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.43.43.2.1">
<span class="ltx_p" id="A1.T1.43.43.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/illustrations/woman-girl-fashion-model-female-8859569/" style="font-size:90%;" title="">https://pixabay.com/illustrations/woman-girl-fashion-model-female-8859569/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.44.44">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.44.44.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.44.44.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.44.44.1.1.g1" src="extracted/6135755/figures/appendix/woman-cartoon-character-anime-8926994.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.44.44.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.44.44.2.1">
<span class="ltx_p" id="A1.T1.44.44.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/illustrations/woman-cartoon-character-anime-8926994/" style="font-size:90%;" title="">https://pixabay.com/illustrations/woman-cartoon-character-anime-8926994/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.45.45">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.45.45.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.45.45.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.45.45.1.1.g1" src="extracted/6135755/figures/appendix/apple-red-delicious-fruit-vitamins-256268.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.45.45.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.45.45.2.1">
<span class="ltx_p" id="A1.T1.45.45.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/photos/apple-red-delicious-fruit-vitamins-256268/" style="font-size:90%;" title="">https://pixabay.com/photos/apple-red-delicious-fruit-vitamins-256268/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.46.46">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.46.46.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.46.46.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="297" id="A1.T1.46.46.1.1.g1" src="extracted/6135755/figures/appendix/apple-food-fresh-fruit-green-1239300.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.46.46.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.46.46.2.1">
<span class="ltx_p" id="A1.T1.46.46.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="tps://pixabay.com/photos/apple-food-fresh-fruit-green-1239300/" style="font-size:90%;" title="">tps://pixabay.com/photos/apple-food-fresh-fruit-green-1239300/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.47.47">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.47.47.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.47.47.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.47.47.1.1.g1" src="extracted/6135755/figures/appendix/fox-animal-wildlife-wild-mammal-9267914.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.47.47.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.47.47.2.1">
<span class="ltx_p" id="A1.T1.47.47.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/illustrations/fox-animal-wildlife-wild-mammal-9267914/" style="font-size:90%;" title="">https://pixabay.com/illustrations/fox-animal-wildlife-wild-mammal-9267914/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.48.48">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.48.48.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.48.48.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.48.48.1.1.g1" src="extracted/6135755/figures/appendix/christmas-deer-animal-rudolph-8380345.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.48.48.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.48.48.2.1">
<span class="ltx_p" id="A1.T1.48.48.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/illustrations/christmas-deer-animal-rudolph-8380345/" style="font-size:90%;" title="">https://pixabay.com/illustrations/christmas-deer-animal-rudolph-8380345/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.49.49">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.49.49.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.49.49.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="298" id="A1.T1.49.49.1.1.g1" src="extracted/6135755/figures/appendix/ai-generated-man-portrait-7953120.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.49.49.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.49.49.2.1">
<span class="ltx_p" id="A1.T1.49.49.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/illustrations/ai-generated-man-portrait-7953120/" style="font-size:90%;" title="">https://pixabay.com/illustrations/ai-generated-man-portrait-7953120/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.50.50">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.50.50.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.50.50.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.50.50.1.1.g1" src="extracted/6135755/figures/appendix/created-by-ai-hedgehog-cartoon-8635844.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.50.50.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.50.50.2.1">
<span class="ltx_p" id="A1.T1.50.50.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/illustrations/created-by-ai-hedgehog-cartoon-8635844/" style="font-size:90%;" title="">https://pixabay.com/illustrations/created-by-ai-hedgehog-cartoon-8635844/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.51.51">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.51.51.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.51.51.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.51.51.1.1.g1" src="extracted/6135755/figures/appendix/dragon-creature-baby-dragon-8480029.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.51.51.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.51.51.2.1">
<span class="ltx_p" id="A1.T1.51.51.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/vectors/dragon-creature-baby-dragon-8480029/" style="font-size:90%;" title="">https://pixabay.com/vectors/dragon-creature-baby-dragon-8480029/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.52.52">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="A1.T1.52.52.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.52.52.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.52.52.1.1.g1" src="extracted/6135755/figures/appendix/boy-cartoon-fashion-chibi-kawaii-8515729.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A1.T1.52.52.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.52.52.2.1">
<span class="ltx_p" id="A1.T1.52.52.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/vectors/boy-cartoon-fashion-chibi-kawaii-8515729/" style="font-size:90%;" title="">https://pixabay.com/vectors/boy-cartoon-fashion-chibi-kawaii-8515729/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.53.53">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b ltx_border_r" id="A1.T1.53.53.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.53.53.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="299" id="A1.T1.53.53.1.1.g1" src="extracted/6135755/figures/appendix/blonde-boy-cartoon-character-comic-1300066.png" width="299"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b" id="A1.T1.53.53.2" style="width:426.8pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T1.53.53.2.1">
<span class="ltx_p" id="A1.T1.53.53.2.1.1"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://pixabay.com/vectors/blonde-boy-cartoon-character-comic-1300066/" style="font-size:90%;" title="">https://pixabay.com/vectors/blonde-boy-cartoon-character-comic-1300066/</a></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table visualizes the refined routing maps generated by the AnyStory model during the image generation process. Each row represents a subject, and the columns display the routing maps at different stages of the diffusion process (different time steps).  The maps show the areas where the model focuses on injecting subject-specific information. The visualization helps illustrate the effectiveness of the model's instance-aware routing in controlling the impact of each subject's condition in the final generated image, thus preventing subject blending.
> <details>
> <summary>read the caption</summary>
> ((b)) Refined routing maps
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.09503/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09503/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09503/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09503/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09503/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09503/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09503/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09503/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09503/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09503/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09503/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09503/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09503/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09503/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09503/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.09503/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}