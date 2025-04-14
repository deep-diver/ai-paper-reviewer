---
title: "PixelFlow: Pixel-Space Generative Models with Flow"
summary: "PixelFlow: End-to-end pixel-space generative model achieves impressive image quality and artistic control, outperforming latent-space models."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 University of Hong Kong",]
showSummary: true
date: 2025-04-10
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.07963 {{< /keyword >}}
{{< keyword icon="writer" >}} Shoufa Chen et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.07963" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.07963" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.07963/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Latent Diffusion Models (LDMs) have become standard for generative modeling. However, they decouple the VAE and diffusion components, hindering joint optimization. An alternative is to implement diffusion models in raw pixel space, but is computationally expensive. Previous Pixel Diffusion Models (PDMs) adopt cascaded approach, with each stage having separate networks which limits end-to-end design.



To address these issues, this paper introduces **PixelFlow**, a family of image generation models that operate directly in raw pixel space, simplifying image generation and enabling end-to-end training. It achieves affordable computation cost through efficient cascade flow modeling. PixelFlow achieves great FID score on ImageNet. The qualitative text-to-image results highlights strong image quality, artistry, and semantic control.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} PixelFlow achieves state-of-the-art image generation by directly operating in raw pixel space, avoiding the need for pre-trained VAEs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} PixelFlow utilizes a cascade flow modeling approach, efficiently handling high-resolution images with reduced computational costs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} PixelFlow demonstrates competitive visual quality and semantic control on class-conditional and text-to-image generation tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
PixelFlow enables **end-to-end trainable** image generation in raw pixel space, offering new possibilities for visual generation. It challenges the reliance on latent-space models, opening doors for innovation, better image quality, and artistic control.

------
#### Visual Insights



![](https://arxiv.org/html/2504.07963/x1.png)

> 🔼 Figure 1 illustrates three different approaches to image generation: (a) Latent diffusion models (LDMs) use a two-stage process. First, a Variational Autoencoder (VAE) compresses the image into a latent space.  Then, a separate diffusion model is trained on this latent representation. (b) Pixel-based diffusion models (PDMs) typically involve training a diffusion model on low-resolution images and a separate upsampler to increase the resolution to the desired output. (c) PixelFlow, in contrast, is an end-to-end model trained directly on raw pixels without requiring separate VAEs or upsamplers. This allows for a more efficient and effective single-stage generation process. 
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparisons of Design Paradigms between latent-based diffusion models (LDMs), pixel-based diffusion models (PDMs), and PixelFlow: (a) LDMs split training into two separate stages—first independently training off-the-shell VAEs, then training diffusion models on tokens extracted from the pre-trained VAEs; (b) Previous PDMs typically train two separate models: a diffusion model on low-resolution images and an upsampler for high-resolution synthesis; (c) PixelFlow, by contrast, offers an end-to-end solution for pixel-based generation, combining both high efficiency and strong generative performance.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.5.5.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.5.5.6.1" style="font-size:90%;">kickoff seq. len.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S4.T1.1.1.1.1" style="font-size:90%;">FID </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S4.T1.2.2.2.1" style="font-size:90%;">sFID </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.3.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S4.T1.3.3.3.1" style="font-size:90%;">IS </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.4.4.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S4.T1.4.4.4.1" style="font-size:90%;">Precision </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.m1.1a"><mo id="S4.T1.4.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.m1.1b"><ci id="S4.T1.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.5.5.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S4.T1.5.5.5.1" style="font-size:90%;">Recall </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.5.5.5.m1.1"><semantics id="S4.T1.5.5.5.m1.1a"><mo id="S4.T1.5.5.5.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.m1.1b"><ci id="S4.T1.5.5.5.m1.1.1.cmml" xref="S4.T1.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T1.6.6.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S4.T1.6.6.1.1" style="font-size:90%;">32</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.6.6.1.m1.1"><semantics id="S4.T1.6.6.1.m1.1a"><mo id="S4.T1.6.6.1.m1.1.1" mathsize="90%" xref="S4.T1.6.6.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.1.m1.1b"><times id="S4.T1.6.6.1.m1.1.1.cmml" xref="S4.T1.6.6.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T1.6.6.1.2" style="font-size:90%;">32</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.6.6.2.1" style="font-size:90%;">3.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.6.6.3.1" style="font-size:90%;">6.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.6.6.4.1" style="font-size:90%;">84.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.6.6.5.1" style="font-size:90%;">0.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.6.6.6.1" style="font-size:90%;">0.57</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.7.7.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S4.T1.7.7.1.1" style="font-size:90%;">8</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.7.7.1.m1.1"><semantics id="S4.T1.7.7.1.m1.1a"><mo id="S4.T1.7.7.1.m1.1.1" mathsize="90%" xref="S4.T1.7.7.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.1.m1.1b"><times id="S4.T1.7.7.1.m1.1.1.cmml" xref="S4.T1.7.7.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T1.7.7.1.2" style="font-size:90%;">8</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.7.7.2.1" style="font-size:90%;">3.21</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.7.7.3.1" style="font-size:90%;">6.23</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.7.7.4.1" style="font-size:90%;">78.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.7.7.5.1" style="font-size:90%;">0.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.7.7.6.1" style="font-size:90%;">0.56</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T1.8.8.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S4.T1.8.8.1.1" style="font-size:90%;">2</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.8.8.1.m1.1"><semantics id="S4.T1.8.8.1.m1.1a"><mo id="S4.T1.8.8.1.m1.1.1" mathsize="90%" xref="S4.T1.8.8.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.8.8.1.m1.1b"><times id="S4.T1.8.8.1.m1.1.1.cmml" xref="S4.T1.8.8.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.8.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.8.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T1.8.8.1.2" style="font-size:90%;">2</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.8.8.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.8.8.2.1" style="font-size:90%;">3.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.8.8.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.8.8.3.1" style="font-size:90%;">6.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.8.8.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.8.8.4.1" style="font-size:90%;">67.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.8.8.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.8.8.5.1" style="font-size:90%;">0.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.8.8.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.8.8.6.1" style="font-size:90%;">0.54</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table investigates the impact of the kickoff sequence length on the performance of the PixelFlow model.  The kickoff sequence length refers to the resolution of the initial image used in the multi-stage generation process. The experiment uses the ImageNet-1K dataset and trains models with 600,000 iterations. A constant patch size of 2x2 and a target image resolution of 64x64 are maintained throughout. The table presents the FID, sFID, IS, Precision, and Recall metrics for different kickoff sequence lengths (32x32, 8x8, and 2x2), allowing for a comparison of model performance across various initial resolutions.
> <details>
> <summary>read the caption</summary>
> Table 1: Effect of kickoff sequence length. All models are trained with 600k iterations on ImageNet-1K. Patch size is 2×\times×2 and target image resolution is 64×\times×64.
> </details>





### In-depth insights


#### PixelFlow Intro
**PixelFlow** is introduced as a novel image generation family of models, diverging from the prevalent **latent-space models** by operating directly in the **raw pixel space**. This innovative approach simplifies the generation process by removing the need for a pre-trained **Variational Autoencoder (VAE)**, enabling **end-to-end training**. The text highlights the model's ability to achieve competitive performance on image generation benchmarks, specifically mentioning a Fréchet Inception Distance (FID) score of 1.98 on the 256x256 ImageNet class-conditional image generation benchmark. Additionally, the text-to-image results showcase PixelFlow's strengths in **image quality, artistry, and semantic control**. The authors express hope that this paradigm shift will foster new opportunities for visual generation models. They also note that code and models are publicly available.

#### Cascade Flow
**Cascade Flow** is an intriguing concept to streamline processing, where tasks are divided into stages with increasing complexity. Applied to generative models, such as images, it enables starting with low-resolution or coarse features and progressively refining them. A benefit is efficient computation by deferring resource-intensive operations to later stages when the initial structure is established. However, a drawback is the increased model design complexity that involves separate networks for each stage which can limit **end-to-end optimization** because it requires careful coordination and tuning to ensure smooth transitions and consistent quality across all stages. **Renoising** strategy can be applied for smooth coherent transition across scales, and it will effectively mitigate the **jumping point issue** which is often observed in multi-scale generation pipelines.

#### End-to-End Design
**End-to-end design** offers significant advantages by simplifying the training process and enabling joint optimization of all components, potentially leading to better overall performance. By eliminating the need for pre-trained modules, such as VAEs, the model can directly learn the optimal representation for the generation task. This approach can also improve model interpretability, as the entire process is trained as a single unit, making it easier to diagnose and address potential issues. However, achieving efficient computation in raw pixel space is a key challenge. Overcoming this requires innovations in model architecture and training strategies to reduce computational demands. Successful implementation of end-to-end design can lead to more efficient, interpretable, and high-performing generative models.

#### ImageNet Quality
From the details of ImageNet experiments, the research employs **Fréchet Inception Distance (FID)** as primary evaluation metric, along with **Inception Score (IS), sFID**, and **Precision/Recall**. It shows an effort to establish a comprehensive analysis of generated image quality. The models are trained with **AdamW optimizer** and a constant learning rate, indicating an optimization approach for the models. Kickoff sequence length, patch size, and CFG are explored for balancing image quality and computation cost, which highlights the practical challenges in pixel-space models. Also, The result that the PixelFlow can achieve **competitive performance relative to state-of-the-art latent-space methods**, which suggests that pixel-space models are capable of competing with the established models. The final **FID score of 1.98** underscores the effectiveness of the proposed approach.

#### CFG Schedule
The authors propose a **stage-wise Classifier-Free Guidance (CFG) schedule**, deviating from a global constant CFG value. This involves applying **different CFG values at different stages** of the generation process, increasing from 1 to CFGmax from early to later stages. In a 4-stage configuration, they find that specific values (0, 1/6, 2/3, and 1) of (CFGmax - 1) yield the best FID performance. The stage-wise CFG boosts the FID performance from 2.43 to 1.98 compared to the global constant CFG.  This approach aims to **improve the trade-off between sample quality and diversity** by dynamically adjusting the guidance strength at different resolutions. This dynamic approach is crucial since early stages benefit from lower CFG and later stages benefit from higher CFG.  It highlights that the optimal guidance strategy is not uniform across all resolutions, suggesting a need for adaptive guidance mechanisms in generative models.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.07963/x2.png)

> 🔼 PixelFlow's image generation process is depicted. It is divided into multiple stages, each operating at a specific resolution.  The process starts with a low-resolution noisy image. In each subsequent stage, the image from the previous stage is upscaled and further denoised, leading to a gradual increase in resolution and refinement of the generated image. This iterative upscaling and denoising allows PixelFlow to generate high-resolution images without the computational cost of processing high-resolution images directly throughout the entire process.
> <details>
> <summary>read the caption</summary>
> Figure 2: PixelFlow for cascaded image generation from pixel space. We partition the entire generation procedure into series resolution stages. At the beginning of each resolution stage, we upscale the relatively noisy results from the preceding stage and use them as the starting point for the current stage. Consequently, as the resolution enhances, more refined samples can be obtained.
> </details>



![](https://arxiv.org/html/2504.07963/x3.png)

> 🔼 This figure visualizes the intermediate outputs of PixelFlow's multi-stage image generation process.  The image generation is broken down into four cascading resolution stages. At each stage, intermediate results are extracted and shown, demonstrating the denoising process as the resolution gradually increases from a lower resolution to the final higher resolution. The figure directly visualizes the refinement of the image through each stage, illustrating how noise is progressively reduced to produce a clearer, more detailed image.
> <details>
> <summary>read the caption</summary>
> Figure 3: Visualization of intermediate result of cascaded stages. We extract the intermediate results from each of the four stages for direct visualization. We observed a clear denoising process at various resolution stages.
> </details>



![](https://arxiv.org/html/2504.07963/x4.png)

> 🔼 This figure showcases the qualitative results obtained from PixelFlow's class-conditional image generation.  The images demonstrate the model's ability to generate diverse and visually appealing images across various classes within the ImageNet dataset.  All generated images have a resolution of 256x256 pixels.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative results of class-conditional image generation of PixelFlow. All images are 256×\times×256 resolution.
> </details>



![](https://arxiv.org/html/2504.07963/x5.png)

> 🔼 Figure 5 showcases the qualitative results of text-to-image generation using the PixelFlow model.  The figure displays several images (all at a resolution of 512x512 pixels), each generated from a corresponding text prompt. Key phrases within each prompt that are particularly crucial in shaping the generated image are highlighted in red. This visualization demonstrates the model's ability to translate text descriptions into detailed and visually appealing images while effectively incorporating specific details from the input text.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative results of text-conditional generation of PixelFlow. All images are 512×\times×512 resolution. Key components of the prompt are highlighted in RED.
> </details>



![](https://arxiv.org/html/2504.07963/x6.png)

> 🔼 Figure 6 showcases example images generated by PixelFlow at a resolution of 1024 x 1024 pixels.  The images demonstrate the model's ability to generate diverse and detailed visuals based on textual descriptions.  Key terms within the input text prompts are highlighted in red to emphasize the model's accurate interpretation and translation of these terms into visual elements.  The variety of scenes and subjects represented reflects the versatility of the PixelFlow model in generating high-quality images.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative samples of PixelFlow. We present the generated images of 1024×\times×1024 resolution. Key words are highlighted in RED.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.19">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.6.6">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.6.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.6.6.7.1" style="font-size:90%;">patch size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T2.1.1.1.1" style="font-size:90%;">FID </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T2.2.2.2.1" style="font-size:90%;">sFID </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T2.3.3.3.1" style="font-size:90%;">IS </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.m1.1a"><mo id="S4.T2.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.m1.1b"><ci id="S4.T2.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T2.4.4.4.1" style="font-size:90%;">Precision </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.m1.1"><semantics id="S4.T2.4.4.4.m1.1a"><mo id="S4.T2.4.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.m1.1b"><ci id="S4.T2.4.4.4.m1.1.1.cmml" xref="S4.T2.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.5.5" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T2.5.5.5.1" style="font-size:90%;">Recall </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.5.5.5.m1.1"><semantics id="S4.T2.5.5.5.m1.1a"><mo id="S4.T2.5.5.5.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.m1.1b"><ci id="S4.T2.5.5.5.m1.1.1.cmml" xref="S4.T2.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.6.6" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T2.6.6.6.1" style="font-size:90%;">speed</span><sup class="ltx_sup" id="S4.T2.6.6.6.2"><span class="ltx_text" id="S4.T2.6.6.6.2.1" style="font-size:90%;">†</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="S4.T2.8.8.2" style="padding-left:2.0pt;padding-right:2.0pt;"><em class="ltx_emph ltx_font_italic" id="S4.T2.8.8.2.2" style="font-size:90%;">target res. 64<math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.7.7.1.1.m1.1"><semantics id="S4.T2.7.7.1.1.m1.1a"><mo id="S4.T2.7.7.1.1.m1.1.1" xref="S4.T2.7.7.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.1.1.m1.1b"><times id="S4.T2.7.7.1.1.m1.1.1.cmml" xref="S4.T2.7.7.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.1.1.m1.1d">×</annotation></semantics></math>64; kickoff seq. len. 2<math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.8.8.2.2.m2.1"><semantics id="S4.T2.8.8.2.2.m2.1a"><mo id="S4.T2.8.8.2.2.m2.1.1" xref="S4.T2.8.8.2.2.m2.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.8.8.2.2.m2.1b"><times id="S4.T2.8.8.2.2.m2.1.1.cmml" xref="S4.T2.8.8.2.2.m2.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.8.2.2.m2.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.8.2.2.m2.1d">×</annotation></semantics></math>2; 600K iters</em></td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.9.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T2.9.9.1.1" style="font-size:90%;">2</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.9.9.1.m1.1"><semantics id="S4.T2.9.9.1.m1.1a"><mo id="S4.T2.9.9.1.m1.1.1" mathsize="90%" xref="S4.T2.9.9.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.9.9.1.m1.1b"><times id="S4.T2.9.9.1.m1.1.1.cmml" xref="S4.T2.9.9.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.9.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.9.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T2.9.9.1.2" style="font-size:90%;">2</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.9.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.9.9.2.1" style="font-size:90%;">3.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.9.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.9.9.3.1" style="font-size:90%;">6.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.9.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.9.9.4.1" style="font-size:90%;">67.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.9.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.9.9.5.1" style="font-size:90%;">0.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.9.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.9.9.6.1" style="font-size:90%;">0.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.9.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.9.9.7.1" style="font-size:90%;">1.28</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.10.10">
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T2.10.10.1.1" style="font-size:90%;">4</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.10.10.1.m1.1"><semantics id="S4.T2.10.10.1.m1.1a"><mo id="S4.T2.10.10.1.m1.1.1" mathsize="90%" xref="S4.T2.10.10.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.10.10.1.m1.1b"><times id="S4.T2.10.10.1.m1.1.1.cmml" xref="S4.T2.10.10.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.10.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.10.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T2.10.10.1.2" style="font-size:90%;">4</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.10.10.2.1" style="font-size:90%;">3.41</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.10.10.3.1" style="font-size:90%;">5.52</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.10.10.4.1" style="font-size:90%;">68.83</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.10.10.5.1" style="font-size:90%;">0.77</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.10.10.6.1" style="font-size:90%;">0.56</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.10.10.7.1" style="font-size:90%;">0.58</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="S4.T2.12.12.2" style="padding-left:2.0pt;padding-right:2.0pt;"><em class="ltx_emph ltx_font_italic" id="S4.T2.12.12.2.2" style="font-size:90%;">target res. 256<math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.11.11.1.1.m1.1"><semantics id="S4.T2.11.11.1.1.m1.1a"><mo id="S4.T2.11.11.1.1.m1.1.1" xref="S4.T2.11.11.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.11.11.1.1.m1.1b"><times id="S4.T2.11.11.1.1.m1.1.1.cmml" xref="S4.T2.11.11.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.11.11.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.11.11.1.1.m1.1d">×</annotation></semantics></math>256; kickoff seq. len. 2<math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.12.12.2.2.m2.1"><semantics id="S4.T2.12.12.2.2.m2.1a"><mo id="S4.T2.12.12.2.2.m2.1.1" xref="S4.T2.12.12.2.2.m2.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.12.12.2.2.m2.1b"><times id="S4.T2.12.12.2.2.m2.1.1.cmml" xref="S4.T2.12.12.2.2.m2.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.12.12.2.2.m2.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.12.12.2.2.m2.1d">×</annotation></semantics></math>2; 100K iters</em></td>
</tr>
<tr class="ltx_tr" id="S4.T2.13.13">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.13.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T2.13.13.1.1" style="font-size:90%;">2</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.13.13.1.m1.1"><semantics id="S4.T2.13.13.1.m1.1a"><mo id="S4.T2.13.13.1.m1.1.1" mathsize="90%" xref="S4.T2.13.13.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.13.13.1.m1.1b"><times id="S4.T2.13.13.1.m1.1.1.cmml" xref="S4.T2.13.13.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.13.13.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.13.13.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T2.13.13.1.2" style="font-size:90%;">2</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.13.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.13.13.2.1" style="font-size:90%;">28.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.13.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.13.13.3.1" style="font-size:90%;">6.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.13.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.13.13.4.1" style="font-size:90%;">47.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.13.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.13.13.5.1" style="font-size:90%;">0.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.13.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.13.13.6.1" style="font-size:90%;">0.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.13.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.13.13.7.1" style="font-size:90%;">30.88</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.14.14">
<td class="ltx_td ltx_align_center" id="S4.T2.14.14.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T2.14.14.1.1" style="font-size:90%;">4</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.14.14.1.m1.1"><semantics id="S4.T2.14.14.1.m1.1a"><mo id="S4.T2.14.14.1.m1.1.1" mathsize="90%" xref="S4.T2.14.14.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.14.14.1.m1.1b"><times id="S4.T2.14.14.1.m1.1.1.cmml" xref="S4.T2.14.14.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.14.14.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.14.14.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T2.14.14.1.2" style="font-size:90%;">4</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.14.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.14.14.2.1" style="font-size:90%;">33.17</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.14.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.14.14.3.1" style="font-size:90%;">7.71</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.14.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.14.14.4.1" style="font-size:90%;">42.29</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.14.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.14.14.5.1" style="font-size:90%;">0.57</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.14.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.14.14.6.1" style="font-size:90%;">0.52</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.14.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.14.14.7.1" style="font-size:90%;">7.31</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.15.15">
<td class="ltx_td ltx_align_center" id="S4.T2.15.15.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T2.15.15.1.1" style="font-size:90%;">8</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.15.15.1.m1.1"><semantics id="S4.T2.15.15.1.m1.1a"><mo id="S4.T2.15.15.1.m1.1.1" mathsize="90%" xref="S4.T2.15.15.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.15.15.1.m1.1b"><times id="S4.T2.15.15.1.m1.1.1.cmml" xref="S4.T2.15.15.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.15.15.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.15.15.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T2.15.15.1.2" style="font-size:90%;">8</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.15.15.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.15.15.2.1" style="font-size:90%;">47.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.15.15.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.15.15.3.1" style="font-size:90%;">9.63</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.15.15.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.15.15.4.1" style="font-size:90%;">31.19</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.15.15.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.15.15.5.1" style="font-size:90%;">0.45</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.15.15.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.15.15.6.1" style="font-size:90%;">0.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.15.15.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.15.15.7.1" style="font-size:90%;">3.96</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.17.17">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="S4.T2.17.17.2" style="padding-left:2.0pt;padding-right:2.0pt;"><em class="ltx_emph ltx_font_italic" id="S4.T2.17.17.2.2" style="font-size:90%;">target res. 256<math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.16.16.1.1.m1.1"><semantics id="S4.T2.16.16.1.1.m1.1a"><mo id="S4.T2.16.16.1.1.m1.1.1" xref="S4.T2.16.16.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.16.16.1.1.m1.1b"><times id="S4.T2.16.16.1.1.m1.1.1.cmml" xref="S4.T2.16.16.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.16.16.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.16.16.1.1.m1.1d">×</annotation></semantics></math>256; kickoff seq. len. 2<math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.17.17.2.2.m2.1"><semantics id="S4.T2.17.17.2.2.m2.1a"><mo id="S4.T2.17.17.2.2.m2.1.1" xref="S4.T2.17.17.2.2.m2.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.17.17.2.2.m2.1b"><times id="S4.T2.17.17.2.2.m2.1.1.cmml" xref="S4.T2.17.17.2.2.m2.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.17.17.2.2.m2.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.17.17.2.2.m2.1d">×</annotation></semantics></math>2; 1600K iters; EMA</em></td>
</tr>
<tr class="ltx_tr" id="S4.T2.18.18">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.18.18.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T2.18.18.1.1" style="font-size:90%;">4</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.18.18.1.m1.1"><semantics id="S4.T2.18.18.1.m1.1a"><mo id="S4.T2.18.18.1.m1.1.1" mathsize="90%" xref="S4.T2.18.18.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.18.18.1.m1.1b"><times id="S4.T2.18.18.1.m1.1.1.cmml" xref="S4.T2.18.18.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.18.18.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.18.18.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T2.18.18.1.2" style="font-size:90%;">4</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.18.18.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.18.18.2.1" style="font-size:90%;">2.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.18.18.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.18.18.3.1" style="font-size:90%;">5.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.18.18.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.18.18.4.1" style="font-size:90%;">251.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.18.18.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.18.18.5.1" style="font-size:90%;">0.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.18.18.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.18.18.6.1" style="font-size:90%;">0.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.18.18.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.18.18.7.1" style="font-size:90%;">7.31</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.19.19">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.19.19.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T2.19.19.1.1" style="font-size:90%;">8</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.19.19.1.m1.1"><semantics id="S4.T2.19.19.1.m1.1a"><mo id="S4.T2.19.19.1.m1.1.1" mathsize="90%" xref="S4.T2.19.19.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.19.19.1.m1.1b"><times id="S4.T2.19.19.1.m1.1.1.cmml" xref="S4.T2.19.19.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.19.19.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.19.19.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T2.19.19.1.2" style="font-size:90%;">8</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.19.19.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.19.19.2.1" style="font-size:90%;">4.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.19.19.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.19.19.3.1" style="font-size:90%;">5.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.19.19.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.19.19.4.1" style="font-size:90%;">195.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.19.19.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.19.19.5.1" style="font-size:90%;">0.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.19.19.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.19.19.6.1" style="font-size:90%;">0.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.19.19.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.19.19.7.1" style="font-size:90%;">3.96</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments conducted to evaluate the impact of different patch sizes on the performance of the PixelFlow model.  Three sets of experiments are shown. The first uses a target image resolution of 64x64 pixels. The second set uses a target resolution of 256x256 pixels, but with a reduced number of training iterations (100K) due to the computational cost of using the smaller 2x2 patch size. The third set extends the training of the 256x256 experiment to 1600K iterations.  Across all experiments, the kickoff sequence length was kept constant at 2x2. The table reports the FID, sFID, IS, Precision, Recall, and training speed (seconds per sample) for each patch size and experimental condition, allowing a comparison of performance and efficiency trade-offs.
> <details>
> <summary>read the caption</summary>
> Table 2: Effect of patch size. All models have a kickoff sequence length of 2×\times×2. Upper: target resolution of 64×\times×64; Middle: target resolution of 256×\times×256 resolution, training with 100K iterations due to computational constraints of patch size 2×\times×2; Bottom: Extended training to 1600K iterations at 256×\times×256 resolution. †Speed measured as number of seconds per sample on a single GPU with a batchsize of 50.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.st1.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.st1.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.st1.5.5.6"><span class="ltx_text" id="S4.T3.st1.5.5.6.1" style="font-size:90%;">step</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.st1.1.1.1">
<span class="ltx_text" id="S4.T3.st1.1.1.1.1" style="font-size:90%;">FID </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.st1.1.1.1.m1.1"><semantics id="S4.T3.st1.1.1.1.m1.1a"><mo id="S4.T3.st1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.st1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.st1.1.1.1.m1.1b"><ci id="S4.T3.st1.1.1.1.m1.1.1.cmml" xref="S4.T3.st1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.st1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.st1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.st1.2.2.2">
<span class="ltx_text" id="S4.T3.st1.2.2.2.1" style="font-size:90%;">sFID </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.st1.2.2.2.m1.1"><semantics id="S4.T3.st1.2.2.2.m1.1a"><mo id="S4.T3.st1.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.st1.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.st1.2.2.2.m1.1b"><ci id="S4.T3.st1.2.2.2.m1.1.1.cmml" xref="S4.T3.st1.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.st1.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.st1.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.st1.3.3.3">
<span class="ltx_text" id="S4.T3.st1.3.3.3.1" style="font-size:90%;">IS </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.st1.3.3.3.m1.1"><semantics id="S4.T3.st1.3.3.3.m1.1a"><mo id="S4.T3.st1.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.st1.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.st1.3.3.3.m1.1b"><ci id="S4.T3.st1.3.3.3.m1.1.1.cmml" xref="S4.T3.st1.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.st1.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.st1.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.st1.4.4.4">
<span class="ltx_text" id="S4.T3.st1.4.4.4.1" style="font-size:90%;">Precision </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.st1.4.4.4.m1.1"><semantics id="S4.T3.st1.4.4.4.m1.1a"><mo id="S4.T3.st1.4.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.st1.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.st1.4.4.4.m1.1b"><ci id="S4.T3.st1.4.4.4.m1.1.1.cmml" xref="S4.T3.st1.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.st1.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.st1.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.st1.5.5.5">
<span class="ltx_text" id="S4.T3.st1.5.5.5.1" style="font-size:90%;">Recall </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.st1.5.5.5.m1.1"><semantics id="S4.T3.st1.5.5.5.m1.1a"><mo id="S4.T3.st1.5.5.5.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.st1.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.st1.5.5.5.m1.1b"><ci id="S4.T3.st1.5.5.5.m1.1.1.cmml" xref="S4.T3.st1.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.st1.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.st1.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.st1.5.6.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T3.st1.5.6.1.1"><span class="ltx_text" id="S4.T3.st1.5.6.1.1.1" style="font-size:90%;">10</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.st1.5.6.1.2"><span class="ltx_text" id="S4.T3.st1.5.6.1.2.1" style="font-size:90%;">3.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.st1.5.6.1.3"><span class="ltx_text" id="S4.T3.st1.5.6.1.3.1" style="font-size:90%;">5.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.st1.5.6.1.4"><span class="ltx_text" id="S4.T3.st1.5.6.1.4.1" style="font-size:90%;">255.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.st1.5.6.1.5"><span class="ltx_text" id="S4.T3.st1.5.6.1.5.1" style="font-size:90%;">0.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.st1.5.6.1.6"><span class="ltx_text" id="S4.T3.st1.5.6.1.6.1" style="font-size:90%;">0.54</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.st1.5.7.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T3.st1.5.7.2.1"><span class="ltx_text" id="S4.T3.st1.5.7.2.1.1" style="font-size:90%;">20</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.st1.5.7.2.2"><span class="ltx_text" id="S4.T3.st1.5.7.2.2.1" style="font-size:90%;">2.53</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.st1.5.7.2.3"><span class="ltx_text" id="S4.T3.st1.5.7.2.3.1" style="font-size:90%;">5.53</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.st1.5.7.2.4"><span class="ltx_text" id="S4.T3.st1.5.7.2.4.1" style="font-size:90%;">272.13</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.st1.5.7.2.5"><span class="ltx_text" id="S4.T3.st1.5.7.2.5.1" style="font-size:90%;">0.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.st1.5.7.2.6"><span class="ltx_text" id="S4.T3.st1.5.7.2.6.1" style="font-size:90%;">0.56</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.st1.5.8.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T3.st1.5.8.3.1"><span class="ltx_text" id="S4.T3.st1.5.8.3.1.1" style="font-size:90%;">30</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.st1.5.8.3.2"><span class="ltx_text" id="S4.T3.st1.5.8.3.2.1" style="font-size:90%;">2.51</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.st1.5.8.3.3"><span class="ltx_text" id="S4.T3.st1.5.8.3.3.1" style="font-size:90%;">5.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.st1.5.8.3.4"><span class="ltx_text" id="S4.T3.st1.5.8.3.4.1" style="font-size:90%;">274.92</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.st1.5.8.3.5"><span class="ltx_text" id="S4.T3.st1.5.8.3.5.1" style="font-size:90%;">0.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.st1.5.8.3.6"><span class="ltx_text" id="S4.T3.st1.5.8.3.6.1" style="font-size:90%;">0.56</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.st1.5.9.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T3.st1.5.9.4.1"><span class="ltx_text" id="S4.T3.st1.5.9.4.1.1" style="font-size:90%;">40</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.st1.5.9.4.2"><span class="ltx_text" id="S4.T3.st1.5.9.4.2.1" style="font-size:90%;">2.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.st1.5.9.4.3"><span class="ltx_text" id="S4.T3.st1.5.9.4.3.1" style="font-size:90%;">6.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.st1.5.9.4.4"><span class="ltx_text" id="S4.T3.st1.5.9.4.4.1" style="font-size:90%;">272.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.st1.5.9.4.5"><span class="ltx_text" id="S4.T3.st1.5.9.4.5.1" style="font-size:90%;">0.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.st1.5.9.4.6"><span class="ltx_text" id="S4.T3.st1.5.9.4.6.1" style="font-size:90%;">0.56</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table investigates the effect of varying the number of sampling steps per stage during the image generation process on the overall quality of the generated images.  The experiment is performed using the Euler sampling function, and a constant classifier-free guidance (CFG) value of 1.50 is applied across all stages.
> <details>
> <summary>read the caption</summary>
> (a) Effect of number of steps per stage. CFG is a global constant value 1.50, sample function is Euler.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.st2.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.st2.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.st2.5.5.6"><span class="ltx_text" id="S4.T3.st2.5.5.6.1" style="font-size:90%;">solver</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.st2.1.1.1">
<span class="ltx_text" id="S4.T3.st2.1.1.1.1" style="font-size:90%;">FID </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.st2.1.1.1.m1.1"><semantics id="S4.T3.st2.1.1.1.m1.1a"><mo id="S4.T3.st2.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.st2.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.st2.1.1.1.m1.1b"><ci id="S4.T3.st2.1.1.1.m1.1.1.cmml" xref="S4.T3.st2.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.st2.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.st2.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.st2.2.2.2">
<span class="ltx_text" id="S4.T3.st2.2.2.2.1" style="font-size:90%;">sFID </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.st2.2.2.2.m1.1"><semantics id="S4.T3.st2.2.2.2.m1.1a"><mo id="S4.T3.st2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.st2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.st2.2.2.2.m1.1b"><ci id="S4.T3.st2.2.2.2.m1.1.1.cmml" xref="S4.T3.st2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.st2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.st2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.st2.3.3.3">
<span class="ltx_text" id="S4.T3.st2.3.3.3.1" style="font-size:90%;">IS </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.st2.3.3.3.m1.1"><semantics id="S4.T3.st2.3.3.3.m1.1a"><mo id="S4.T3.st2.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.st2.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.st2.3.3.3.m1.1b"><ci id="S4.T3.st2.3.3.3.m1.1.1.cmml" xref="S4.T3.st2.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.st2.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.st2.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.st2.4.4.4">
<span class="ltx_text" id="S4.T3.st2.4.4.4.1" style="font-size:90%;">Precision </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.st2.4.4.4.m1.1"><semantics id="S4.T3.st2.4.4.4.m1.1a"><mo id="S4.T3.st2.4.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.st2.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.st2.4.4.4.m1.1b"><ci id="S4.T3.st2.4.4.4.m1.1.1.cmml" xref="S4.T3.st2.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.st2.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.st2.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.st2.5.5.5">
<span class="ltx_text" id="S4.T3.st2.5.5.5.1" style="font-size:90%;">Recall </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.st2.5.5.5.m1.1"><semantics id="S4.T3.st2.5.5.5.m1.1a"><mo id="S4.T3.st2.5.5.5.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.st2.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.st2.5.5.5.m1.1b"><ci id="S4.T3.st2.5.5.5.m1.1.1.cmml" xref="S4.T3.st2.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.st2.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.st2.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.st2.5.6.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T3.st2.5.6.1.1"><span class="ltx_text" id="S4.T3.st2.5.6.1.1.1" style="font-size:90%;">Euler</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.st2.5.6.1.2"><span class="ltx_text" id="S4.T3.st2.5.6.1.2.1" style="font-size:90%;">2.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.st2.5.6.1.3"><span class="ltx_text" id="S4.T3.st2.5.6.1.3.1" style="font-size:90%;">5.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.st2.5.6.1.4"><span class="ltx_text" id="S4.T3.st2.5.6.1.4.1" style="font-size:90%;">274.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.st2.5.6.1.5"><span class="ltx_text" id="S4.T3.st2.5.6.1.5.1" style="font-size:90%;">0.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.st2.5.6.1.6"><span class="ltx_text" id="S4.T3.st2.5.6.1.6.1" style="font-size:90%;">0.56</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.st2.5.7.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T3.st2.5.7.2.1"><span class="ltx_text" id="S4.T3.st2.5.7.2.1.1" style="font-size:90%;">Dopri5</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.st2.5.7.2.2"><span class="ltx_text" id="S4.T3.st2.5.7.2.2.1" style="font-size:90%;">2.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.st2.5.7.2.3"><span class="ltx_text" id="S4.T3.st2.5.7.2.3.1" style="font-size:90%;">5.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.st2.5.7.2.4"><span class="ltx_text" id="S4.T3.st2.5.7.2.4.1" style="font-size:90%;">282.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.st2.5.7.2.5"><span class="ltx_text" id="S4.T3.st2.5.7.2.5.1" style="font-size:90%;">0.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.st2.5.7.2.6"><span class="ltx_text" id="S4.T3.st2.5.7.2.6.1" style="font-size:90%;">0.56</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of two different ODE solvers, Euler and Dopri5, used in the image generation process.  The experiment uses a fixed global classifier-free guidance (CFG) value of 1.50, and a fixed number of steps per resolution stage at 30.  The only variable is the ODE solver. This allows for an isolated comparison of the impact of solver choice on FID, sFID, IS, Precision, and Recall metrics. The absolute tolerance is set to 1e-6 for the Dopri5 solver.
> <details>
> <summary>read the caption</summary>
> (b) Effect of sample function. CFG is a global constant value 1.50, the number of steps per stage is 30 in Euler, the absolute tolerance is 1e-6 in Dopri5.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.st3.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.st3.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.st3.2.2.3"><span class="ltx_text" id="S4.T3.st3.2.2.3.1" style="font-size:90%;">cfg schedule</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.st3.2.2.4"><span class="ltx_text" id="S4.T3.st3.2.2.4.1" style="font-size:90%;">cfg max value</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.st3.1.1.1">
<span class="ltx_text" id="S4.T3.st3.1.1.1.1" style="font-size:90%;">FID </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.st3.1.1.1.m1.1"><semantics id="S4.T3.st3.1.1.1.m1.1a"><mo id="S4.T3.st3.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.st3.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.st3.1.1.1.m1.1b"><ci id="S4.T3.st3.1.1.1.m1.1.1.cmml" xref="S4.T3.st3.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.st3.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.st3.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.st3.2.2.2">
<span class="ltx_text" id="S4.T3.st3.2.2.2.1" style="font-size:90%;">IS </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.st3.2.2.2.m1.1"><semantics id="S4.T3.st3.2.2.2.m1.1a"><mo id="S4.T3.st3.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.st3.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.st3.2.2.2.m1.1b"><ci id="S4.T3.st3.2.2.2.m1.1.1.cmml" xref="S4.T3.st3.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.st3.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.st3.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.st3.2.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T3.st3.2.3.1.1"><span class="ltx_text" id="S4.T3.st3.2.3.1.1.1" style="font-size:90%;">global constant</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T3.st3.2.3.1.2"><span class="ltx_text" id="S4.T3.st3.2.3.1.2.1" style="font-size:90%;">1.50</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.st3.2.3.1.3"><span class="ltx_text" id="S4.T3.st3.2.3.1.3.1" style="font-size:90%;">2.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.st3.2.3.1.4"><span class="ltx_text" id="S4.T3.st3.2.3.1.4.1" style="font-size:90%;">282.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.st3.2.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T3.st3.2.4.2.1"><span class="ltx_text" id="S4.T3.st3.2.4.2.1.1" style="font-size:90%;">stage-wise constant</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T3.st3.2.4.2.2"><span class="ltx_text" id="S4.T3.st3.2.4.2.2.1" style="font-size:90%;">2.40</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.st3.2.4.2.3"><span class="ltx_text" id="S4.T3.st3.2.4.2.3.1" style="font-size:90%;">1.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.st3.2.4.2.4"><span class="ltx_text" id="S4.T3.st3.2.4.2.4.1" style="font-size:90%;">282.1</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the impact of different classifier-free guidance (CFG) settings on the performance of the PixelFlow model.  It shows how varying the CFG setting affects the FID (Fréchet Inception Distance), IS (Inception Score), and other metrics.  Specifically, it compares a global constant CFG setting with a stage-wise constant CFG setting, illustrating the performance gains achievable by adjusting CFG values across different stages of the image generation process. The experiment used the Dopri5 sampling function with an absolute tolerance of 1e-6.
> <details>
> <summary>read the caption</summary>
> (c) Effect of classifier-free guidance (CFG) setting. Sample function is Dopri5 with absolute tolerance 1e-6.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T4.5.5.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.5.6.1" style="font-size:90%;">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.1.1.1.1" style="font-size:90%;">FID </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.2.2.2.1" style="font-size:90%;">sFID </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.m1.1a"><mo id="S4.T4.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.m1.1b"><ci id="S4.T4.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.3.3.3.1" style="font-size:90%;">IS </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.m1.1a"><mo id="S4.T4.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.m1.1b"><ci id="S4.T4.3.3.3.m1.1.1.cmml" xref="S4.T4.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.4.4.4.1" style="font-size:90%;">Precision </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.4.4.4.m1.1"><semantics id="S4.T4.4.4.4.m1.1a"><mo id="S4.T4.4.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.m1.1b"><ci id="S4.T4.4.4.4.m1.1.1.cmml" xref="S4.T4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.5.5.5" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.5.5.5.1" style="font-size:90%;">Recall </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.5.5.5.m1.1"><semantics id="S4.T4.5.5.5.m1.1a"><mo id="S4.T4.5.5.5.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.5.5.5.m1.1b"><ci id="S4.T4.5.5.5.m1.1.1.cmml" xref="S4.T4.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.6.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="6" id="S4.T4.5.6.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><em class="ltx_emph ltx_font_italic" id="S4.T4.5.6.1.1.1" style="font-size:90%;">Latent Space</em></th>
</tr>
<tr class="ltx_tr" id="S4.T4.5.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.5.7.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.5.7.2.1.1" style="font-size:90%;">LDM-4-G </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.5.7.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07963v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a><span class="ltx_text" id="S4.T4.5.7.2.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.7.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.7.2.2.1" style="font-size:90%;">3.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.7.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.7.2.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.7.2.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.7.2.4.1" style="font-size:90%;">247.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.7.2.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.7.2.5.1" style="font-size:90%;">0.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.7.2.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.7.2.6.1" style="font-size:90%;">0.48</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.8.3.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.5.8.3.1.1" style="font-size:90%;">DiT-XL/2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.5.8.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07963v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a><span class="ltx_text" id="S4.T4.5.8.3.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.8.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.8.3.2.1" style="font-size:90%;">2.27</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.8.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.8.3.3.1" style="font-size:90%;">4.60</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.8.3.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.8.3.4.1" style="font-size:90%;">278.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.8.3.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.8.3.5.1" style="font-size:90%;">0.83</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.8.3.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.8.3.6.1" style="font-size:90%;">0.57</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.9.4.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.5.9.4.1.1" style="font-size:90%;">SiT-XL/2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.5.9.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07963v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a><span class="ltx_text" id="S4.T4.5.9.4.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.9.4.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.9.4.2.1" style="font-size:90%;">2.06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.9.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.9.4.3.1" style="font-size:90%;">4.49</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.9.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.9.4.4.1" style="font-size:90%;">277.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.9.4.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.9.4.5.1" style="font-size:90%;">0.83</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.9.4.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.9.4.6.1" style="font-size:90%;">0.59</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.10.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="6" id="S4.T4.5.10.5.1" style="padding-left:2.0pt;padding-right:2.0pt;"><em class="ltx_emph ltx_font_italic" id="S4.T4.5.10.5.1.1" style="font-size:90%;">Pixel Space</em></th>
</tr>
<tr class="ltx_tr" id="S4.T4.5.11.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.5.11.6.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.5.11.6.1.1" style="font-size:90%;">ADM-G </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.5.11.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07963v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a><span class="ltx_text" id="S4.T4.5.11.6.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.11.6.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.11.6.2.1" style="font-size:90%;">4.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.11.6.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.11.6.3.1" style="font-size:90%;">5.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.11.6.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.11.6.4.1" style="font-size:90%;">186.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.11.6.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.11.6.5.1" style="font-size:90%;">0.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.11.6.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.11.6.6.1" style="font-size:90%;">0.52</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.12.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.12.7.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.5.12.7.1.1" style="font-size:90%;">ADM-U </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.5.12.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07963v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a><span class="ltx_text" id="S4.T4.5.12.7.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.12.7.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.12.7.2.1" style="font-size:90%;">3.94</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.12.7.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.12.7.3.1" style="font-size:90%;">6.14</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.12.7.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.12.7.4.1" style="font-size:90%;">215.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.12.7.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.12.7.5.1" style="font-size:90%;">0.83</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.12.7.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.12.7.6.1" style="font-size:90%;">0.53</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.13.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.13.8.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.5.13.8.1.1" style="font-size:90%;">CDM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.5.13.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07963v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a><span class="ltx_text" id="S4.T4.5.13.8.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.13.8.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.13.8.2.1" style="font-size:90%;">4.88</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.13.8.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.13.8.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.13.8.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.13.8.4.1" style="font-size:90%;">158.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.13.8.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.13.8.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.13.8.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.13.8.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.14.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.14.9.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.5.14.9.1.1" style="font-size:90%;">RIN </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.5.14.9.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07963v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2504.07963v1#bib.bib9" title=""><span class="ltx_text" style="font-size:90%;">9</span></a><span class="ltx_text" id="S4.T4.5.14.9.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.14.9.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.14.9.2.1" style="font-size:90%;">3.42</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.14.9.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.14.9.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.14.9.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.14.9.4.1" style="font-size:90%;">182.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.14.9.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.14.9.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.14.9.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.14.9.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.15.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.15.10.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.5.15.10.1.1" style="font-size:90%;">SD, U-ViT-L </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.5.15.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07963v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a><span class="ltx_text" id="S4.T4.5.15.10.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.15.10.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.15.10.2.1" style="font-size:90%;">2.77</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.15.10.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.15.10.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.15.10.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.15.10.4.1" style="font-size:90%;">211.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.15.10.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.15.10.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.15.10.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.15.10.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.16.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.16.11.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.5.16.11.1.1" style="font-size:90%;">MDM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.5.16.11.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07963v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a><span class="ltx_text" id="S4.T4.5.16.11.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.16.11.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.16.11.2.1" style="font-size:90%;">3.51</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.16.11.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.16.11.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.16.11.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.16.11.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.16.11.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.16.11.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.16.11.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.16.11.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.17.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.17.12.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.5.17.12.1.1" style="font-size:90%;">StyleGAN-XL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.5.17.12.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07963v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a><span class="ltx_text" id="S4.T4.5.17.12.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.17.12.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.17.12.2.1" style="font-size:90%;">2.30</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.17.12.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.17.12.3.1" style="font-size:90%;">4.02</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.17.12.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.17.12.4.1" style="font-size:90%;">265.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.17.12.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.17.12.5.1" style="font-size:90%;">0.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.17.12.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.17.12.6.1" style="font-size:90%;">0.53</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.18.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.18.13.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.5.18.13.1.1" style="font-size:90%;">VDM++ </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.5.18.13.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07963v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a><span class="ltx_text" id="S4.T4.5.18.13.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.18.13.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.18.13.2.1" style="font-size:90%;">2.12</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.18.13.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.18.13.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.18.13.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.18.13.4.1" style="font-size:90%;">267.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.18.13.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.18.13.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.18.13.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.18.13.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.19.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.19.14.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.5.19.14.1.1" style="font-size:90%;">PaGoDA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.5.19.14.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07963v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a><span class="ltx_text" id="S4.T4.5.19.14.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.19.14.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.19.14.2.1" style="font-size:90%;">1.56</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.19.14.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.19.14.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.19.14.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.19.14.4.1" style="font-size:90%;">259.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.19.14.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.19.14.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.19.14.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.19.14.6.1" style="font-size:90%;">0.59</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.20.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.20.15.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.5.20.15.1.1" style="font-size:90%;">SiD2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.5.20.15.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07963v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a><span class="ltx_text" id="S4.T4.5.20.15.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.20.15.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.20.15.2.1" style="font-size:90%;">1.38</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.20.15.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.20.15.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.20.15.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.20.15.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.20.15.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.20.15.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.20.15.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.20.15.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.21.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.21.16.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.5.21.16.1.1" style="font-size:90%;">JetFormer </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.5.21.16.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07963v1#bib.bib61" title=""><span class="ltx_text" style="font-size:90%;">61</span></a><span class="ltx_text" id="S4.T4.5.21.16.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.21.16.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.21.16.2.1" style="font-size:90%;">6.64</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.21.16.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.21.16.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.21.16.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.21.16.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.21.16.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.21.16.5.1" style="font-size:90%;">0.69</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.21.16.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.21.16.6.1" style="font-size:90%;">0.56</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.22.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.22.17.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.5.22.17.1.1" style="font-size:90%;">FractalMAR-H </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.5.22.17.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07963v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a><span class="ltx_text" id="S4.T4.5.22.17.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.22.17.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.22.17.2.1" style="font-size:90%;">6.15</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.22.17.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.22.17.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.22.17.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.22.17.4.1" style="font-size:90%;">348.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.22.17.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.22.17.5.1" style="font-size:90%;">0.81</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.22.17.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.22.17.6.1" style="font-size:90%;">0.46</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.23.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T4.5.23.18.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.23.18.1.1" style="font-size:90%;">PixelFlow (ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.5.23.18.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.23.18.2.1" style="font-size:90%;">1.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.5.23.18.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.23.18.3.1" style="font-size:90%;">5.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.5.23.18.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.23.18.4.1" style="font-size:90%;">282.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.5.23.18.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.23.18.5.1" style="font-size:90%;">0.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.5.23.18.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.23.18.6.1" style="font-size:90%;">0.60</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 shows the optimal settings for the inference stage of the PixelFlow model.  It explores different configurations, including the number of sampling steps per stage, the choice of ODE solver (Euler vs. Dopri5), and the scheduling of classifier-free guidance (CFG). The results indicate that using 30 steps per stage, the Dopri5 solver, and a step-wise constant CFG schedule with a maximum value of 2.40 yields the best FID score.
> <details>
> <summary>read the caption</summary>
> Table 3: Inference Setting. The best performance is obtained by CFG step-wise constant with maximum value 2.40 and Dopri5 sample function.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T5.14">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.14.15.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T5.14.15.1.1" rowspan="2" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.15.1.1.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T5.14.15.1.2" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.15.1.2.1" style="font-size:80%;">GenEval</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S4.T5.14.15.1.3" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.15.1.3.1" style="font-size:90%;">T2I-CompBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.14.15.1.4" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.15.1.4.1" style="font-size:90%;">DPG</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.14.16.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.14.16.2.1" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.16.2.1.1" style="font-size:80%;">Overall</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.14.16.2.2" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.16.2.2.1" style="font-size:90%;">Color</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.14.16.2.3" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.16.2.3.1" style="font-size:90%;">Shape</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.14.16.2.4" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.16.2.4.1" style="font-size:90%;">Texture</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.14.16.2.5" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.16.2.5.1" style="font-size:90%;">Bench</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.14.17.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.14.17.3.1" style="padding:0.45pt 3.3pt;">
<span class="ltx_text" id="S4.T5.14.17.3.1.1" style="font-size:90%;">SDv1.5 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T5.14.17.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07963v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a><span class="ltx_text" id="S4.T5.14.17.3.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.14.17.3.2" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.17.3.2.1" style="font-size:90%;">0.43</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.14.17.3.3" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.17.3.3.1" style="font-size:90%;">0.3730</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.14.17.3.4" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.17.3.4.1" style="font-size:90%;">0.3646</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.14.17.3.5" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.17.3.5.1" style="font-size:90%;">0.4219</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.14.17.3.6" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.17.3.6.1" style="font-size:90%;">63.18</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.14.18.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.14.18.4.1" style="padding:0.45pt 3.3pt;">
<span class="ltx_text" id="S4.T5.14.18.4.1.1" style="font-size:90%;">DALL-E 2 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T5.14.18.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07963v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a><span class="ltx_text" id="S4.T5.14.18.4.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.14.18.4.2" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.18.4.2.1" style="font-size:90%;">0.52</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.14.18.4.3" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.18.4.3.1" style="font-size:90%;">0.5750</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.14.18.4.4" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.18.4.4.1" style="font-size:90%;">0.5464</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.14.18.4.5" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.18.4.5.1" style="font-size:90%;">0.6374</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.14.18.4.6" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.18.4.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.14.19.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.14.19.5.1" style="padding:0.45pt 3.3pt;">
<span class="ltx_text" id="S4.T5.14.19.5.1.1" style="font-size:90%;">SDv2.1 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T5.14.19.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07963v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a><span class="ltx_text" id="S4.T5.14.19.5.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.14.19.5.2" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.19.5.2.1" style="font-size:90%;">0.50</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.14.19.5.3" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.19.5.3.1" style="font-size:90%;">0.5694</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.14.19.5.4" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.19.5.4.1" style="font-size:90%;">0.4495</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.14.19.5.5" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.19.5.5.1" style="font-size:90%;">0.4982</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.14.19.5.6" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.19.5.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.14.20.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.14.20.6.1" style="padding:0.45pt 3.3pt;">
<span class="ltx_text" id="S4.T5.14.20.6.1.1" style="font-size:90%;">SDXL </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T5.14.20.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07963v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a><span class="ltx_text" id="S4.T5.14.20.6.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.14.20.6.2" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.20.6.2.1" style="font-size:90%;">0.55</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.14.20.6.3" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.20.6.3.1" style="font-size:90%;">0.6369</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.14.20.6.4" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.20.6.4.1" style="font-size:90%;">0.5408</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.14.20.6.5" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.20.6.5.1" style="font-size:90%;">0.5637</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.14.20.6.6" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.20.6.6.1" style="font-size:90%;">74.65</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.1.1.1" style="padding:0.45pt 3.3pt;">
<span class="ltx_text" id="S4.T5.1.1.1.1" style="font-size:90%;">PixArt-</span><math alttext="\alpha" class="ltx_Math" display="inline" id="S4.T5.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.m1.1a"><mi id="S4.T5.1.1.1.m1.1.1" mathsize="90%" xref="S4.T5.1.1.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.m1.1d">italic_α</annotation></semantics></math><span class="ltx_text" id="S4.T5.1.1.1.2" style="font-size:90%;"> </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T5.1.1.1.3.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07963v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a><span class="ltx_text" id="S4.T5.1.1.1.4.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.1.1.2" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.1.1.2.1" style="font-size:90%;">0.48</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.3" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.1.1.3.1" style="font-size:90%;">0.6886</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.4" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.1.1.4.1" style="font-size:90%;">0.5582</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.1.1.5" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.1.1.5.1" style="font-size:90%;">0.7044</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.6" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.1.1.6.1" style="font-size:90%;">71.11</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.6.6.6" style="padding:0.45pt 3.3pt;">
<span class="ltx_text" id="S4.T5.6.6.6.1" style="font-size:90%;">DALL-E 3 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T5.6.6.6.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07963v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a><span class="ltx_text" id="S4.T5.6.6.6.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.2.2.1" style="padding:0.45pt 3.3pt;">
<span class="ltx_text" id="S4.T5.2.2.1.1" style="font-size:90%;">  0.67</span><sup class="ltx_sup" id="S4.T5.2.2.1.2"><span class="ltx_text" id="S4.T5.2.2.1.2.1" style="font-size:90%;">†</span></sup>
</th>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.2" style="padding:0.45pt 3.3pt;">
<span class="ltx_text" id="S4.T5.3.3.2.1" style="font-size:90%;">0.8110</span><sup class="ltx_sup" id="S4.T5.3.3.2.2"><span class="ltx_text" id="S4.T5.3.3.2.2.1" style="font-size:90%;">†</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.4.3" style="padding:0.45pt 3.3pt;">
<span class="ltx_text" id="S4.T5.4.4.3.1" style="font-size:90%;">0.6750</span><sup class="ltx_sup" id="S4.T5.4.4.3.2"><span class="ltx_text" id="S4.T5.4.4.3.2.1" style="font-size:90%;">†</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.5.5.4" style="padding:0.45pt 3.3pt;">
<span class="ltx_text" id="S4.T5.5.5.4.1" style="font-size:90%;">0.8070</span><sup class="ltx_sup" id="S4.T5.5.5.4.2"><span class="ltx_text" id="S4.T5.5.5.4.2.1" style="font-size:90%;">†</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.6.6.5" style="padding:0.45pt 3.3pt;">
<span class="ltx_text" id="S4.T5.6.6.5.1" style="font-size:90%;">83.50</span><sup class="ltx_sup" id="S4.T5.6.6.5.2"><span class="ltx_text" id="S4.T5.6.6.5.2.1" style="font-size:90%;">†</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.14.21.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.14.21.7.1" style="padding:0.45pt 3.3pt;">
<span class="ltx_text" id="S4.T5.14.21.7.1.1" style="font-size:90%;">GenTron </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T5.14.21.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07963v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a><span class="ltx_text" id="S4.T5.14.21.7.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.14.21.7.2" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.21.7.2.1" style="font-size:90%;">-</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.14.21.7.3" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.21.7.3.1" style="font-size:90%;">0.7674</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.14.21.7.4" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.21.7.4.1" style="font-size:90%;">0.5700</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.14.21.7.5" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.21.7.5.1" style="font-size:90%;">0.7150</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.14.21.7.6" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.21.7.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.14.22.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.14.22.8.1" style="padding:0.45pt 3.3pt;">
<span class="ltx_text" id="S4.T5.14.22.8.1.1" style="font-size:90%;">SD3 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T5.14.22.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07963v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a><span class="ltx_text" id="S4.T5.14.22.8.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.14.22.8.2" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.22.8.2.1" style="font-size:90%;">0.74</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.14.22.8.3" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.22.8.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.14.22.8.4" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.22.8.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.14.22.8.5" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.22.8.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.14.22.8.6" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.22.8.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.14.23.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.14.23.9.1" style="padding:0.45pt 3.3pt;">
<span class="ltx_text" id="S4.T5.14.23.9.1.1" style="font-size:90%;">Transfusion </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T5.14.23.9.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07963v1#bib.bib70" title=""><span class="ltx_text" style="font-size:90%;">70</span></a><span class="ltx_text" id="S4.T5.14.23.9.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.14.23.9.2" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.23.9.2.1" style="font-size:90%;">0.63</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.14.23.9.3" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.23.9.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.14.23.9.4" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.23.9.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.14.23.9.5" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.23.9.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.14.23.9.6" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.23.9.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.14.24.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.14.24.10.1" style="padding:0.45pt 3.3pt;">
<span class="ltx_text" id="S4.T5.14.24.10.1.1" style="font-size:90%;">LlamaGen </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T5.14.24.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07963v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a><span class="ltx_text" id="S4.T5.14.24.10.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.14.24.10.2" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.24.10.2.1" style="font-size:90%;">0.32</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.14.24.10.3" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.24.10.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.14.24.10.4" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.24.10.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.14.24.10.5" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.24.10.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.14.24.10.6" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.24.10.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.10.10.5" style="padding:0.45pt 3.3pt;">
<span class="ltx_text" id="S4.T5.10.10.5.1" style="font-size:90%;">Emu 3 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T5.10.10.5.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07963v1#bib.bib64" title=""><span class="ltx_text" style="font-size:90%;">64</span></a><span class="ltx_text" id="S4.T5.10.10.5.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.7.7.1" style="padding:0.45pt 3.3pt;">
<span class="ltx_text" id="S4.T5.7.7.1.1" style="font-size:90%;">0.66</span><sup class="ltx_sup" id="S4.T5.7.7.1.2"><span class="ltx_text" id="S4.T5.7.7.1.2.1" style="font-size:90%;">†</span></sup>
</th>
<td class="ltx_td ltx_align_center" id="S4.T5.8.8.2" style="padding:0.45pt 3.3pt;">
<span class="ltx_text" id="S4.T5.8.8.2.1" style="font-size:90%;">0.7913</span><sup class="ltx_sup" id="S4.T5.8.8.2.2"><span class="ltx_text" id="S4.T5.8.8.2.2.1" style="font-size:90%;">†</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.9.9.3" style="padding:0.45pt 3.3pt;">
<span class="ltx_text" id="S4.T5.9.9.3.1" style="font-size:90%;">0.5846</span><sup class="ltx_sup" id="S4.T5.9.9.3.2"><span class="ltx_text" id="S4.T5.9.9.3.2.1" style="font-size:90%;">†</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.10.10.4" style="padding:0.45pt 3.3pt;">
<span class="ltx_text" id="S4.T5.10.10.4.1" style="font-size:90%;">0.7422</span><sup class="ltx_sup" id="S4.T5.10.10.4.2"><span class="ltx_text" id="S4.T5.10.10.4.2.1" style="font-size:90%;">†</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.10.10.6" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.10.10.6.1" style="font-size:90%;">80.60</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.14.25.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S4.T5.14.25.11.1" rowspan="2" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.25.11.1.1" style="font-size:90%;"><span class="ltx_text" id="S4.T5.14.25.11.1.1.1">PixelFlow</span> (ours)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.14.25.11.2" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.25.11.2.1" style="font-size:90%;">0.60</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.14.25.11.3" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.25.11.3.1" style="font-size:90%;">0.7578</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.14.25.11.4" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.25.11.4.1" style="font-size:90%;">0.4529</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.14.25.11.5" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.25.11.5.1" style="font-size:90%;">0.6006</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.14.25.11.6" rowspan="2" style="padding:0.45pt 3.3pt;"><span class="ltx_text" id="S4.T5.14.25.11.6.1" style="font-size:90%;">77.93</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.14.14">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T5.11.11.1" style="padding:0.45pt 3.3pt;">
<span class="ltx_text" id="S4.T5.11.11.1.1" style="font-size:90%;">0.64</span><sup class="ltx_sup" id="S4.T5.11.11.1.2"><span class="ltx_text" id="S4.T5.11.11.1.2.1" style="font-size:90%;">†</span></sup>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.12.12.2" style="padding:0.45pt 3.3pt;">
<span class="ltx_text" id="S4.T5.12.12.2.1" style="font-size:90%;">0.7689</span><sup class="ltx_sup" id="S4.T5.12.12.2.2"><span class="ltx_text" id="S4.T5.12.12.2.2.1" style="font-size:90%;">†</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.13.13.3" style="padding:0.45pt 3.3pt;">
<span class="ltx_text" id="S4.T5.13.13.3.1" style="font-size:90%;">0.5059</span><sup class="ltx_sup" id="S4.T5.13.13.3.2"><span class="ltx_text" id="S4.T5.13.13.3.2.1" style="font-size:90%;">†</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T5.14.14.4" style="padding:0.45pt 3.3pt;">
<span class="ltx_text" id="S4.T5.14.14.4.1" style="font-size:90%;">0.6273</span><sup class="ltx_sup" id="S4.T5.14.14.4.2"><span class="ltx_text" id="S4.T5.14.14.4.2.1" style="font-size:90%;">†</span></sup>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of various image generation models' performance on the ImageNet 256x256 class-conditional image generation benchmark.  The models are evaluated using several metrics, including FID, sFID, IS, precision, and recall, to assess their image quality and diversity.  The results highlight PixelFlow's competitive performance against other state-of-the-art latent space-based models, demonstrating its ability to achieve high-quality image generation directly in pixel space.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparisons on class-conditional image generation on ImageNet 256×\times×256. PixelFlow achieves competitive performance compared with latent space based models.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.07963/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07963/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07963/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07963/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07963/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07963/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07963/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07963/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07963/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07963/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07963/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07963/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}