---
title: "D$^2$iT: Dynamic Diffusion Transformer for Accurate Image Generation"
summary: "D²iT: Achieves accurate image generation by dynamically compressing different image regions, unifying global consistency and local realism."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 University of Science and Technology of China",]
showSummary: true
date: 2025-04-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.09454 {{< /keyword >}}
{{< keyword icon="writer" >}} Weinan Jia et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-16 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.09454" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.09454" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.09454/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Diffusion models, like Diffusion Transformer (DiT), excel at generating high-quality images but use fixed compression across image regions. This approach ignores natural variations in information density, leading to trade-offs between local realism and global consistency. Large compression limits realism, while small compression increases computational demands. Current improvements to DiT focus on acceleration and applicability but leave the key compression principle untouched.



D²iT addresses these limitations by dynamically compressing different image regions. It introduces a two-stage framework: Dynamic VAE (DVAE) encodes image regions at varying downsampling rates and Dynamic Diffusion Transformer (D2iT) generates images by predicting multi-grained noise through a Dynamic Grain and Content Transformer. This achieves both global consistency and local realism.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Existing diffusion models apply fixed compression across all image regions, overlooking variations in spatial complexity. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} D²iT dynamically compresses different image regions based on their information density, enhancing effectiveness and efficiency. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The D²iT combines a Dynamic Grain Transformer and Dynamic Content Transformer for superior image generation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses a key limitation in current diffusion models by **dynamically adjusting compression based on image region complexity**. This offers a pathway to improve both local realism and global consistency, with implications for various image generation tasks.

------
#### Visual Insights



![](https://arxiv.org/html/2504.09454/extracted/6357231/images_v2/motivation_v1_2.png)

> 🔼 Figure 1 illustrates the core idea behind the Dynamic Diffusion Transformer (D2iT).  Panel (a) shows the limitations of existing fixed-compression Diffusion Transformers (DiT).  These models either use large compression, leading to loss of local detail and poor realism because too few tokens represent the image, or small compression, which results in high computational costs and a lack of global consistency due to the increased number of tokens to process.  Panel (b) presents the D2iT approach, which uses dynamic compression based on the information density in different image regions.  By using a dynamic VAE and incorporating multi-grained noise prediction, D2iT achieves better local realism and global consistency.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustration of our motivation. Compression here refers to the VAE + Patchify operation. (a) Existing fixed-compression diffusion transformer (DiT) ignore information density. Fixed large compression leads to limited local realism due to the limited representation of a few tokens preventing accurate recovery of rich information, whereas fixed small compression leads to limited global consistency and high computational complexity due to the burden of global modeling across patched latents. Samples in (a) are obtained from [38]. (b) Our Dynamic Diffusion Transformer (D2iT) adopts a dynamic compression strategy and adds multi-grained noise based on information density, achieving unified global consistency and local realism.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.2">Model Type</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.3">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.4">Param(M)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1">FID-10K<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.2.3.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.2.3.1.1">GAN</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.3.1.2">VQGAN <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.09454v1#bib.bib9" title=""><span class="ltx_text" style="font-size:90%;">9</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.3.1.3">307</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.3.1.4">11.4</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.4.2">
<td class="ltx_td ltx_align_left" id="S4.T1.2.4.2.1">GAN</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.4.2.2">ViT-VQGAN <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.09454v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.4.2.3">738</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.4.2.4">13.06</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.5.3">
<td class="ltx_td ltx_align_left" id="S4.T1.2.5.3.1">VAE</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.5.3.2">VDVAE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.09454v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.5.3.3">115</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.5.3.4">28.5</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.6.4">
<td class="ltx_td ltx_align_left" id="S4.T1.2.6.4.1">Diffusion</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.6.4.2">ImageBART <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.09454v1#bib.bib8" title=""><span class="ltx_text" style="font-size:90%;">8</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.6.4.3">713</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.6.4.4">9.57</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.7.5">
<td class="ltx_td ltx_align_left" id="S4.T1.2.7.5.1">Diffusion</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.7.5.2">UDM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.09454v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.7.5.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.7.5.4">5.54</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.8.6">
<td class="ltx_td ltx_align_left" id="S4.T1.2.8.6.1">Diffusion</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.8.6.2">LDM-4 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.09454v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.8.6.3">274</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.8.6.4">4.98</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.9.7">
<td class="ltx_td ltx_align_left" id="S4.T1.2.9.7.1">Diffusion</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.9.7.2">DiT-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.09454v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.9.7.3">458</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.9.7.4">6.26</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T1.2.2.2">Diffusion</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.2.2.1"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.1.1">D<sup class="ltx_sup" id="S4.T1.2.2.1.1.1"><span class="ltx_text ltx_font_medium" id="S4.T1.2.2.1.1.1.1">2</span></sup>iT-L(ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.2.2.3">467</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.2.2.4"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.4.1">4.47</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of various generative models on the FFHQ dataset, specifically focusing on unconditional image generation. It includes the model type (GAN, VAE, or Diffusion), the model name, the number of parameters (in millions), and the Fréchet Inception Distance (FID) score, a lower FID indicating better generation quality.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of unconditional generation on FFHQ.
> </details>





### In-depth insights


#### Dynamic DVAE
The Dynamic VAE (DVAE) marks a departure from traditional VAEs by incorporating **adaptive compression**, recognizing that natural images exhibit varying levels of detail across different regions. Unlike fixed downsampling approaches, DVAE employs a hierarchical encoder to **encode image regions at varying resolutions**, tailoring the compression rate to the information density of each region. This dynamic allocation ensures that areas rich in detail receive more coding representations, while simpler regions are compressed more aggressively, leading to a more efficient and accurate latent space representation. **It uses gaussian kernel density estimation to analyze pixel intensity distributions** and shannon entropy to quantify the complexity of each region.

#### Multi-Grain Noise
Multi-grained noise in image generation likely refers to introducing varying levels of noise granularity across different regions of an image during the diffusion process. **This approach deviates from applying uniform noise**, which can lead to suboptimal results, especially when dealing with images containing both smooth and highly detailed regions. By using multi-grained noise, the model can more effectively learn to denoise different areas based on their complexity. **Finer-grained noise might be applied to detailed regions to facilitate the recovery of intricate textures and structures**, while coarser-grained noise could be used in smoother regions, reducing computational cost and preventing overfitting. **This strategy aims to balance global consistency with local realism**, ensuring that the generated image is both visually coherent and rich in detail. The method can lead to more efficient and accurate image generation.

#### Global & Local
In the context of image generation, a "Global & Local" approach likely refers to balancing the need for **overall coherence** with the incorporation of **fine-grained details**. A purely global approach might generate structurally sound images but lack realism and sharpness in specific areas. Conversely, focusing solely on local details could lead to inconsistencies and artifacts across the larger image. Effective image generation models strive for a harmonious blend, ensuring that local textures and patterns fit seamlessly within the global context, creating visually compelling and believable results. Achieving this balance often involves multi-scale architectures, attention mechanisms, or other techniques that allow the model to consider both broad structural relationships and intricate local variations. This ensures both global consistenty and local realism.

#### D²iT Scalability
The D²iT architecture's scalability likely stems from its efficient handling of image regions with varying information densities. **By dynamically adjusting compression rates**, D²iT avoids the computational bottlenecks associated with uniformly high resolutions while maintaining fidelity in detail-rich areas. Furthermore, the **Dynamic Grain Transformer** and **Dynamic Content Transformer** likely contribute to scalability by optimizing the allocation of computational resources. The design probably allows for efficient parallelization, a critical factor in scaling deep learning models. The **transformer architecture** is inherently more scalable than other architectures due to self-attention, which allows for long-range dependencies to be modeled without a quadratic increase in computational cost. A key insight would be to see if the model scales in terms of data. How does the performance vary with increasing dataset sizes? The **efficiency** in information representation leads to faster convergence and reduces the overall training time when scaling the parameters.

#### Efficient Denoise
The pursuit of **efficient denoising** within diffusion models is a critical area of research. It directly impacts the practical applicability of these models, especially for high-resolution images or video generation, where computational costs can be prohibitive. Efficient denoising strategies often involve techniques that reduce the number of steps required in the reverse diffusion process. This can be achieved through **improved ODE solvers** or **learned schedules** that adapt the denoising strength based on the current state of the image. Another approach focuses on optimizing the denoising network itself. **Techniques like knowledge distillation**, network pruning, and quantization can significantly reduce the computational footprint of the network without sacrificing performance. Furthermore, **efficient attention mechanisms** and sparse operations can be employed to reduce the computational burden of the transformer architecture. Balancing computational efficiency with the quality of generated samples is key.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.09454/extracted/6357231/camera_ready/framework_camera_ready.png)

> 🔼 This figure illustrates the two-stage framework of the proposed Dynamic Diffusion Transformer (D²iT) model. Stage 1 uses a Dynamic Variational Autoencoder (DVAE) to encode the input image.  The DVAE employs a hierarchical encoder and Dynamic Grained Coding (DGC) to assign different levels of compression (granularity) to different regions of the image based on their information density. Regions with high information density (e.g., detailed areas) receive finer-grained coding, while regions with low information density (e.g., smooth areas) receive coarser-grained coding. The resulting multi-grained latent codes are then passed to Stage 2. Stage 2 utilizes the D²iT, which comprises two components: the Dynamic Grain Transformer and the Dynamic Content Transformer. The Dynamic Grain Transformer predicts a grain map indicating the granularity of each region, while the Dynamic Content Transformer predicts the multi-grained noise based on this map and other information. This two-stage approach allows D²iT to achieve a balance between global consistency and local realism in image generation.
> <details>
> <summary>read the caption</summary>
> Figure 2: The overview of our proposed two-stage framework. (1) Stage 1: DVAE dynamically assigns different grained codes to each image region through the Herarchical Encoder and Dynamic Grained Coding (DGC) module. (2) Stage 2: D2iT consists Dynamic Grain Transformer and Dynamic Content Transformer, which respectively model the spatial granularity information and content information. We present the network with two granularities. The grain map uses ‘1’ to denote coarse-grained regions and ‘2’ for fine-grained regions.
> </details>



![](https://arxiv.org/html/2504.09454/extracted/6357231/images_v2/FFHQ_vision.png)

> 🔼 Figure 3 presents a qualitative comparison of unconditional image generation results on the FFHQ dataset using the proposed D²iT model. It showcases three sample images generated by D²iT alongside their corresponding grain maps. The grain maps visually represent the dynamic granularity assignments made by the model during the generation process. Red blocks in the grain maps signify fine-grained regions (regions with high spatial complexity and detail), while blue blocks indicate coarse-grained regions (regions with low spatial complexity and less detail).  The figure demonstrates the model's ability to generate high-fidelity images by dynamically adjusting the level of detail and compression based on the inherent characteristics of different regions in the image.
> <details>
> <summary>read the caption</summary>
> Figure 3: Qualitative results of our unconditional generation on FFHQ. In the grain map, red blocks represent fine-grained regions, while blue blocks indicate coarse-grained regions.
> </details>



![](https://arxiv.org/html/2504.09454/extracted/6357231/images_v2/ImageNet_vision.png)

> 🔼 This figure displays qualitative results from the D2iT-XL model on the ImageNet dataset.  Each row shows an example image from ImageNet, its corresponding dynamically generated grain map (visualizing regions of varying complexity), and the final image generated by the model. The grain map, generated by the Dynamic Grain Transformer, uses color-coding to represent different levels of detail in the original image.  These maps guide the Dynamic Content Transformer in generating a final image, balancing global consistency with fine-grained details. The final generated images demonstrate the model's ability to leverage the grain map for accurate and high-fidelity image generation.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative results of D2iT-XL on ImageNet. The grain maps are generated by the Dynamic Grain Transformer based on class labels, and the images are generated by the Dynamic Content Transformer based on class labels and grain maps.
> </details>



![](https://arxiv.org/html/2504.09454/extracted/6357231/images_v2/ablation_first_stage_2.png)

> 🔼 Figure 5 illustrates the relationship between reconstruction quality (measured by rFID) and generation quality (measured by FID) on the FFHQ dataset at different ratios of fine-grained regions (controlled by the parameter rf=8).  The x-axis represents the ratio of fine-grained regions, while the y-axis shows both rFID and FID.  The graph demonstrates the impact of dynamically adjusting the granularity of image regions on the overall performance of the model.  Optimal performance is observed at a specific balance between fine and coarse-grained regions, showcasing the importance of the dynamic grain approach.
> <details>
> <summary>read the caption</summary>
> Figure 5: The curves of different grain ratios of reconstruction quality (rFID) to generation quality (FID) on FFHQ.
> </details>



![](https://arxiv.org/html/2504.09454/extracted/6357231/images_v2/FID_imageNet4.png)

> 🔼 This figure shows the training convergence curves for both DiT and D2iT models on the ImageNet dataset.  Different model configurations (different parameter counts) are plotted for each model type, showcasing how the FID-50K (Frechet Inception Distance) score, a measure of image generation quality, improves over the course of training. The graph allows for a visual comparison of the training efficiency and convergence speed between DiT and the proposed D2iT model under varying parameter scales.
> <details>
> <summary>read the caption</summary>
> Figure 6: Training convergence comparison of DiT and our D2iT with different parameters on ImageNet. FID-50K is evaluated.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.6.6">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.4.4.4.5" style="padding:-0.25pt 2.0pt;">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.4.4.4.6" style="padding:-0.25pt 2.0pt;">Param(M)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1" style="padding:-0.25pt 2.0pt;">FID-50K<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.2.2.2" style="padding:-0.25pt 2.0pt;">IS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.3.3.3.3" style="padding:-0.25pt 2.0pt;">Prec.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.3.m1.1a"><mo id="S4.T2.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.m1.1b"><ci id="S4.T2.3.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.4.4.4" style="padding:-0.25pt 2.0pt;">Rec.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.4.m1.1"><semantics id="S4.T2.4.4.4.4.m1.1a"><mo id="S4.T2.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T2.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.4.m1.1b"><ci id="S4.T2.4.4.4.4.m1.1.1.cmml" xref="S4.T2.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<td class="ltx_td ltx_border_tt" id="S4.T2.4.4.4.7" style="padding:-0.25pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.6.6.7.1.1" style="padding:-0.25pt 2.0pt;">VQGAN <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.09454v1#bib.bib9" title=""><span class="ltx_text" style="font-size:90%;">9</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T2.6.6.7.1.2" style="padding:-0.25pt 2.0pt;">397</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.7.1.3" style="padding:-0.25pt 2.0pt;">15.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.7.1.4" style="padding:-0.25pt 2.0pt;">78.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.7.1.5" style="padding:-0.25pt 2.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.7.1.6" style="padding:-0.25pt 2.0pt;">-</td>
<td class="ltx_td ltx_border_t" id="S4.T2.6.6.7.1.7" style="padding:-0.25pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.8.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.6.8.2.1" style="padding:-0.25pt 2.0pt;">MaskGIT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.09454v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.6.6.8.2.2" style="padding:-0.25pt 2.0pt;">227</th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.2.3" style="padding:-0.25pt 2.0pt;">7.32</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.2.4" style="padding:-0.25pt 2.0pt;">156.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.2.5" style="padding:-0.25pt 2.0pt;">0.78</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.2.6" style="padding:-0.25pt 2.0pt;">0.50</td>
<td class="ltx_td" id="S4.T2.6.6.8.2.7" style="padding:-0.25pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.9.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.6.9.3.1" style="padding:-0.25pt 2.0pt;">DQ-Transformer <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.09454v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.6.6.9.3.2" style="padding:-0.25pt 2.0pt;">655</th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.3.3" style="padding:-0.25pt 2.0pt;">5.11</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.3.4" style="padding:-0.25pt 2.0pt;">178.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.3.5" style="padding:-0.25pt 2.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.3.6" style="padding:-0.25pt 2.0pt;">-</td>
<td class="ltx_td" id="S4.T2.6.6.9.3.7" style="padding:-0.25pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.10.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.6.10.4.1" style="padding:-0.25pt 2.0pt;">LlamaGen <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.09454v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.6.6.10.4.2" style="padding:-0.25pt 2.0pt;">775</th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.4.3" style="padding:-0.25pt 2.0pt;">2.62</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.4.4" style="padding:-0.25pt 2.0pt;">244.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.4.5" style="padding:-0.25pt 2.0pt;">0.80</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.4.6" style="padding:-0.25pt 2.0pt;">0.57</td>
<td class="ltx_td" id="S4.T2.6.6.10.4.7" style="padding:-0.25pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.11.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.6.11.5.1" style="padding:-0.25pt 2.0pt;">DiGIT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.09454v1#bib.bib60" title=""><span class="ltx_text" style="font-size:90%;">60</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.6.6.11.5.2" style="padding:-0.25pt 2.0pt;">732</th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.11.5.3" style="padding:-0.25pt 2.0pt;">3.39</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.11.5.4" style="padding:-0.25pt 2.0pt;">205.96</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.11.5.5" style="padding:-0.25pt 2.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.11.5.6" style="padding:-0.25pt 2.0pt;">-</td>
<td class="ltx_td" id="S4.T2.6.6.11.5.7" style="padding:-0.25pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.12.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.6.12.6.1" style="padding:-0.25pt 2.0pt;">Open-MAGVIT2-XL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.09454v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.6.6.12.6.2" style="padding:-0.25pt 2.0pt;">1500</th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.12.6.3" style="padding:-0.25pt 2.0pt;">2.33</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.12.6.4" style="padding:-0.25pt 2.0pt;">271.77</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.12.6.5" style="padding:-0.25pt 2.0pt;">0.84</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.12.6.6" style="padding:-0.25pt 2.0pt;">0.54</td>
<td class="ltx_td" id="S4.T2.6.6.12.6.7" style="padding:-0.25pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.13.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.6.13.7.1" style="padding:-0.25pt 2.0pt;">VAR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.09454v1#bib.bib53" title=""><span class="ltx_text" style="font-size:90%;">53</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.6.6.13.7.2" style="padding:-0.25pt 2.0pt;">600</th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.13.7.3" style="padding:-0.25pt 2.0pt;">2.57</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.13.7.4" style="padding:-0.25pt 2.0pt;">302.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.13.7.5" style="padding:-0.25pt 2.0pt;">0.83</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.13.7.6" style="padding:-0.25pt 2.0pt;">0.56</td>
<td class="ltx_td" id="S4.T2.6.6.13.7.7" style="padding:-0.25pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.14.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.6.6.14.8.1" style="padding:-0.25pt 2.0pt;">ADM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.09454v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T2.6.6.14.8.2" style="padding:-0.25pt 2.0pt;">554</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.14.8.3" style="padding:-0.25pt 2.0pt;">10.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.14.8.4" style="padding:-0.25pt 2.0pt;">100.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.14.8.5" style="padding:-0.25pt 2.0pt;">0.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.14.8.6" style="padding:-0.25pt 2.0pt;">0.63</td>
<td class="ltx_td ltx_border_t" id="S4.T2.6.6.14.8.7" style="padding:-0.25pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.15.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.6.15.9.1" style="padding:-0.25pt 2.0pt;">LDM-4 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.09454v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.6.6.15.9.2" style="padding:-0.25pt 2.0pt;">400</th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.15.9.3" style="padding:-0.25pt 2.0pt;">10.56</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.15.9.4" style="padding:-0.25pt 2.0pt;">103.49</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.15.9.5" style="padding:-0.25pt 2.0pt;">0.71</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.15.9.6" style="padding:-0.25pt 2.0pt;">0.62</td>
<td class="ltx_td" id="S4.T2.6.6.15.9.7" style="padding:-0.25pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.16.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.6.16.10.1" style="padding:-0.25pt 2.0pt;">DiT-XL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.09454v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.6.6.16.10.2" style="padding:-0.25pt 2.0pt;">675</th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.16.10.3" style="padding:-0.25pt 2.0pt;">9.62</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.16.10.4" style="padding:-0.25pt 2.0pt;">121.50</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.16.10.5" style="padding:-0.25pt 2.0pt;">0.67</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.16.10.6" style="padding:-0.25pt 2.0pt;">0.67</td>
<td class="ltx_td" id="S4.T2.6.6.16.10.7" style="padding:-0.25pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.17.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.6.17.11.1" style="padding:-0.25pt 2.0pt;">MDT<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.09454v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.6.6.17.11.2" style="padding:-0.25pt 2.0pt;">676</th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.17.11.3" style="padding:-0.25pt 2.0pt;">6.23</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.17.11.4" style="padding:-0.25pt 2.0pt;">143.02</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.17.11.5" style="padding:-0.25pt 2.0pt;">0.71</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.17.11.6" style="padding:-0.25pt 2.0pt;">0.66</td>
<td class="ltx_td" id="S4.T2.6.6.17.11.7" style="padding:-0.25pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.5.5.1" style="padding:-0.25pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.5.1.1">D<sup class="ltx_sup" id="S4.T2.5.5.5.1.1.1"><span class="ltx_text ltx_font_medium" id="S4.T2.5.5.5.1.1.1.1">2</span></sup>iT-XL(ours)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.5.5.5.2" style="padding:-0.25pt 2.0pt;">687</th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.3" style="padding:-0.25pt 2.0pt;">5.74</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.4" style="padding:-0.25pt 2.0pt;">156.29</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.5" style="padding:-0.25pt 2.0pt;">0.72</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.6" style="padding:-0.25pt 2.0pt;">0.66</td>
<td class="ltx_td" id="S4.T2.5.5.5.7" style="padding:-0.25pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.18.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.6.6.18.12.1" style="padding:-0.25pt 2.0pt;">ADM-G <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.09454v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T2.6.6.18.12.2" style="padding:-0.25pt 2.0pt;">554</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.18.12.3" style="padding:-0.25pt 2.0pt;">4.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.18.12.4" style="padding:-0.25pt 2.0pt;">186.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.18.12.5" style="padding:-0.25pt 2.0pt;">0.82</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.18.12.6" style="padding:-0.25pt 2.0pt;">0.52</td>
<td class="ltx_td ltx_border_t" id="S4.T2.6.6.18.12.7" style="padding:-0.25pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.19.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.6.19.13.1" style="padding:-0.25pt 2.0pt;">ADM-G-U <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.09454v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.6.6.19.13.2" style="padding:-0.25pt 2.0pt;">554</th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.19.13.3" style="padding:-0.25pt 2.0pt;">3.94</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.19.13.4" style="padding:-0.25pt 2.0pt;">215.84</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.19.13.5" style="padding:-0.25pt 2.0pt;">0.83</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.19.13.6" style="padding:-0.25pt 2.0pt;">0.53</td>
<td class="ltx_td" id="S4.T2.6.6.19.13.7" style="padding:-0.25pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.20.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.6.20.14.1" style="padding:-0.25pt 2.0pt;">LDM-4-G <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.09454v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.6.6.20.14.2" style="padding:-0.25pt 2.0pt;">400</th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.20.14.3" style="padding:-0.25pt 2.0pt;">3.60</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.20.14.4" style="padding:-0.25pt 2.0pt;">247.67</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.20.14.5" style="padding:-0.25pt 2.0pt;">0.87</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.20.14.6" style="padding:-0.25pt 2.0pt;">0.48</td>
<td class="ltx_td" id="S4.T2.6.6.20.14.7" style="padding:-0.25pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.21.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.6.21.15.1" style="padding:-0.25pt 2.0pt;">DiT-XL-G <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.09454v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.6.6.21.15.2" style="padding:-0.25pt 2.0pt;">675</th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.21.15.3" style="padding:-0.25pt 2.0pt;">2.27</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.21.15.4" style="padding:-0.25pt 2.0pt;">278.24</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.21.15.5" style="padding:-0.25pt 2.0pt;">0.83</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.21.15.6" style="padding:-0.25pt 2.0pt;">0.57</td>
<td class="ltx_td" id="S4.T2.6.6.21.15.7" style="padding:-0.25pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.22.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.6.22.16.1" style="padding:-0.25pt 2.0pt;">RDM-G <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.09454v1#bib.bib52" title=""><span class="ltx_text" style="font-size:90%;">52</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.6.6.22.16.2" style="padding:-0.25pt 2.0pt;">848</th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.22.16.3" style="padding:-0.25pt 2.0pt;">1.99</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.22.16.4" style="padding:-0.25pt 2.0pt;">260.45</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.22.16.5" style="padding:-0.25pt 2.0pt;">0.81</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.22.16.6" style="padding:-0.25pt 2.0pt;">0.58</td>
<td class="ltx_td" id="S4.T2.6.6.22.16.7" style="padding:-0.25pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.23.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.6.23.17.1" style="padding:-0.25pt 2.0pt;">DiMR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.09454v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.6.6.23.17.2" style="padding:-0.25pt 2.0pt;">505</th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.23.17.3" style="padding:-0.25pt 2.0pt;">1.70</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.23.17.4" style="padding:-0.25pt 2.0pt;">289.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.23.17.5" style="padding:-0.25pt 2.0pt;">0.79</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.23.17.6" style="padding:-0.25pt 2.0pt;">0.63</td>
<td class="ltx_td" id="S4.T2.6.6.23.17.7" style="padding:-0.25pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.24.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.6.24.18.1" style="padding:-0.25pt 2.0pt;">MDT-G<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.09454v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.6.6.24.18.2" style="padding:-0.25pt 2.0pt;">676</th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.24.18.3" style="padding:-0.25pt 2.0pt;">1.79</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.24.18.4" style="padding:-0.25pt 2.0pt;">283.01</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.24.18.5" style="padding:-0.25pt 2.0pt;">0.81</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.24.18.6" style="padding:-0.25pt 2.0pt;">0.61</td>
<td class="ltx_td" id="S4.T2.6.6.24.18.7" style="padding:-0.25pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.25.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.6.25.19.1" style="padding:-0.25pt 2.0pt;">MDTv2-G<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.09454v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.6.6.25.19.2" style="padding:-0.25pt 2.0pt;">676</th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.25.19.3" style="padding:-0.25pt 2.0pt;">1.58</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.25.19.4" style="padding:-0.25pt 2.0pt;">314.73</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.25.19.5" style="padding:-0.25pt 2.0pt;">0.79</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.25.19.6" style="padding:-0.25pt 2.0pt;">0.65</td>
<td class="ltx_td" id="S4.T2.6.6.25.19.7" style="padding:-0.25pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.6.6.6.1" style="padding:-0.25pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.6.1.1">D<sup class="ltx_sup" id="S4.T2.6.6.6.1.1.1"><span class="ltx_text ltx_font_medium" id="S4.T2.6.6.6.1.1.1.1">2</span></sup>iT-XL-G(ours)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T2.6.6.6.2" style="padding:-0.25pt 2.0pt;">687</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.6.3" style="padding:-0.25pt 2.0pt;">1.73</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.6.4" style="padding:-0.25pt 2.0pt;">307.89</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.6.5" style="padding:-0.25pt 2.0pt;">0.87</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.6.6" style="padding:-0.25pt 2.0pt;">0.56</td>
<td class="ltx_td ltx_border_bb" id="S4.T2.6.6.6.7" style="padding:-0.25pt 2.0pt;"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comparison of different models' performance on class-conditional image generation using the ImageNet dataset.  The images generated are 256x256 pixels.  The table lists each model, its number of parameters, the FID (Fréchet Inception Distance) score, Inception Score (IS), precision, and recall. Lower FID scores indicate better image quality.  The '-G' notation indicates that classifier-free guidance was used during the generation process for that specific model.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of class-conditional generation on ImageNet 256×256256256256\times 256256 × 256. -G indicates the results with classifier-free guidance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.2">Configuration</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1">FID-10K<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.2.3.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.2.3.1.1">DiT-B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.3.1.2">34.67</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.4.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.2.4.2.1">with Predicted Grain Map</td>
<td class="ltx_td ltx_border_t" id="S4.T3.2.4.2.2"></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.5.3">
<td class="ltx_td ltx_align_left" id="S4.T3.2.5.3.1">+ DVAE &amp; Routing Module</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.5.3.2">29.10</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.6.4">
<td class="ltx_td ltx_align_left" id="S4.T3.2.6.4.1">+ Dynamic grain loss</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.6.4.2">27.62</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.2.2.1">+ RefineNet &amp; Learnable Pos-embed (ours D<sup class="ltx_sup" id="S4.T3.2.2.1.1">2</sup>iT)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.2.2">22.11</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of different components of the D2iT-B model on the Fréchet Inception Distance (FID) score, a metric evaluating the quality of generated images on the FFHQ dataset.  It starts with a baseline model using a predicted grain map from the Dynamic Grain Transformer. Then, it progressively adds components such as the dynamic grain loss, the DVAE and Routing Module, and finally the RefineNet with learnable positional embeddings to analyze the effect of each component on the FID score. Lower FID scores indicate better image generation quality. 
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study of D2iT-B on FFHQ. All additional designs use grain map predicted by Dynamic Grain Transformer.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.2">Total Layers</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.3">DiT</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.4">RefineNet</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1">FID-10K<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.2.1.1">12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.2.1.2">12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.2.1.3">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.2.1.4">25.15</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.3.2">
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.2.1">12</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.2.2">10</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.2.3">2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.2.4"><span class="ltx_text ltx_font_bold" id="S4.T4.1.3.2.4.1">22.11</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.4.3">
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.3.1">12</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.3.2">8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.3.3">4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.3.4">26.53</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.5.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.5.4.1">12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.5.4.2">12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.5.4.3">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.5.4.4">25.15</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.6.5">
<td class="ltx_td ltx_align_center" id="S4.T4.1.6.5.1">14</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.6.5.2">12</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.6.5.3">2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.6.5.4">20.99</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.7.6">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.7.6.1">16</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.7.6.2">12</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.7.6.3">4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.7.6.4">19.96</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation study results, focusing on the impact of varying the number of RefineNet blocks within the D2iT-B model architecture.  Two sets of experiments were conducted. In the first, the total number of layers (RefineNet + DiT) remained constant while the number of RefineNet layers increased.  In the second, the number of DiT layers remained constant while the number of RefineNet layers was increased.  The FID-10K score, a metric evaluating image generation quality, is reported for each configuration to demonstrate how the changes in RefineNet blocks affected model performance.
> <details>
> <summary>read the caption</summary>
> Table 4: Effect of numbers of RefineNet Blocks in D2iT-B. Experiments with fixed total layers increasing Refinenet layers and fixed DiT layers increasing Refinenet layers.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T5.1.1.2">Grain Map Setting</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1">FID-10K<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.m1.1.1" stretchy="false" xref="S4.T5.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.1.2.1.1">Random</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.2.1.2">15.93</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.3.2.1">Ground Truth</th>
<td class="ltx_td ltx_align_center" id="S4.T5.1.3.2.2">4.35</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T5.1.4.3.1">Dynamic Grain Transformer</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.4.3.2">4.47</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments evaluating the impact of using the Dynamic Grain Transformer component within the D2iT model.  It compares the FID-10K scores achieved using three different approaches for generating the grain map: a random grain map, the ground truth grain map (obtained directly from the data), and a grain map predicted by the Dynamic Grain Transformer. The comparison demonstrates the effectiveness of the Dynamic Grain Transformer in accurately predicting grain maps that improve the overall image generation quality.
> <details>
> <summary>read the caption</summary>
> Table 5: Effect of Dynamic Grain Transformer with D2iT-L.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.09454/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09454/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09454/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09454/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09454/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09454/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09454/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09454/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09454/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09454/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09454/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}