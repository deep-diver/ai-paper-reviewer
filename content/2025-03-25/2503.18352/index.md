---
title: "Diffusion-4K: Ultra-High-Resolution Image Synthesis with Latent Diffusion Models"
summary: "Diffusion-4K: Synthesizing ultra-high-resolution images with a new benchmark dataset and wavelet-based fine-tuning that makes 4K image creation more detailed and accessible!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Beihang University",]
showSummary: true
date: 2025-03-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.18352 {{< /keyword >}}
{{< keyword icon="writer" >}} Jinjin Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.18352" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.18352" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.18352/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Generating ultra-high-resolution (4K) images using diffusion models is challenging due to high computational costs. Current models also neglect fine details and textures, and there's a lack of suitable datasets for training and evaluation. Thus the paper addresses the above issues in this research.



This paper presents a novel framework which is called **Diffusion-4K** for synthesizing 4K images. It includes **Aesthetic-4K** which is a high-quality 4K image dataset. To evaluate the fine details, it also introduces **GLCM Score** and **Compression Ratio metrics**, combined with existing measures like FID. Furthermore, it introduces a wavelet-based fine-tuning approach for photorealistic image training. As a result, the approach achieves impressive performance and has high text prompt adherence.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces Aesthetic-4K, a new benchmark dataset for ultra-high-resolution image synthesis. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Presents a wavelet-based fine-tuning method to enhance details in generated 4K images. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Achieves impressive performance in generating high-quality, detailed 4K images with improved text prompt adherence. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel framework, a new benchmark dataset and metrics for 4K image synthesis. It helps push forward high-resolution image generation and opens new research directions. **The techniques employed in this paper are highly valuable for other researches in related fields** and provides valuable new insights.

------
#### Visual Insights



![](https://arxiv.org/html/2503.18352/extracted/6304121/figures/metric.jpg)

> 🔼 This figure showcases example images generated using the Diffusion-4K model.  The images highlight the model's ability to synthesize ultra-high-resolution (4K) images with exceptional detail and realism, emphasizing the fine textures and intricate features that are often lost in lower-resolution image generation methods.
> <details>
> <summary>read the caption</summary>
> Figure 1: Example results synthesized by our Diffusion-4K, emphasizing exceptional fine details in generated 4K images.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.2.1">
<tr class="ltx_tr" id="S3.T1.2.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.2.1.1.1">Metric</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.2.1.1.2">GLCM Score</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.2.1.1.3">Compression Ratio</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.2.1.1.4">MUSIQ</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.1.5">MANIQA</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.1.2.1">SRCC</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.1.2.2">0.75</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.1.2.3">0.53</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.1.2.4">0.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.5">0.20</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.3">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.2.1.3.1">PLCC</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.2.1.3.2">0.77</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.2.1.3.3">0.56</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.2.1.3.4">0.41</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.2.1.3.5">0.26</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the correlation coefficients between the proposed metrics (GLCM Score and Compression Ratio) and human evaluations of image quality.  It shows the Spearman Rank-order Correlation Coefficient (SRCC) and Pearson Linear Correlation Coefficient (PLCC) calculated by comparing the metric scores with human ratings for the same patches of images. Additionally, it includes correlations with existing image quality assessment metrics (MUSIQ and MANIQA) for comparison.
> <details>
> <summary>read the caption</summary>
> Table 1: Correlation with human evaluation.
> </details>





### In-depth insights


#### Aesthetic-4K
The research introduces **Aesthetic-4K**, a novel and comprehensive benchmark for evaluating ultra-high-resolution image synthesis, explicitly targeting 4K images. Addressing the gap in publicly available 4K datasets, they curated a dataset with high-quality images and precise captions generated by GPT-4O. Design principles focus on **human-centric perceptual cognition**, moving beyond holistic measures, emphasizing fine details. Metrics like GLCM Score and Compression Ratio, combined with FID, Aesthetics, and CLIPScore, facilitate a more comprehensive assessment. This benchmark design ensures a direct relation to human decision-making and cognitive abilities. This approach makes sure that generated images are **relevant, visually appealing, and faithful to the original prompt**. The dataset includes both training (Aesthetic-Train) and evaluation sets (Aesthetic-Eval) with specific resolution and content details.

#### Wavelet Tuning
Wavelet tuning can refine image details by emphasizing high-frequency components while preserving overall structure. It **decomposes images into low and high-frequency bands**, allowing targeted adjustments. The use of wavelet transform enables the model to refine details (high-frequency) while preserving the overall structure (low-frequency). WLF **enhances the model’s capacity** to generate fine details, also ensures that the changes don’t disrupt the underlying patterns, making the fine-tuning process both efficient and precise.

#### 4K Generation
The research paper highlights the challenges and advancements in 4K image generation, a domain gaining traction due to its applications in entertainment and industry. It acknowledges that while diffusion models have shown promise, generating high-resolution images like 4K directly is computationally demanding. Therefore, **novel methods like Diffusion-4K are crucial for enhancing both efficiency and quality**. The study underscores the limitations of existing benchmarks, which often evaluate at lower resolutions, neglecting the fine details that characterize 4K images. Thus, the paper introduces a new benchmark, Aesthetic-4K, designed to comprehensively assess image synthesis quality at ultra-high resolutions, factoring in human perceptual cognition through metrics like GLCM Score and Compression Ratio. **The wavelet-based fine-tuning is pivotal to infuse high-frequency details while retaining low-frequency approximation for optimal image synthesis**. This approach aims to address the gap in generating photorealistic 4K images, especially when integrated with powerful large-scale diffusion models.

#### GLCM & Details
Analyzing GLCM, or Gray-Level Co-occurrence Matrix, involves deep examination of image texture and its fine details. It serves as a mathematical method of examining how often pairs of pixel with specific values and in a defined spatial relationship occur in an image. **GLCM extracts statistical measures** that characterize texture, contrast, homogeneity, and correlation. This approach facilitates in-depth analysis, enabling differentiation between textures that might appear similar to human perception. When examining fine details, it allows for **in-depth evaluation of the texture and structural characteristics of high-resolution images**; the GLCM score and compression ratio serve as significant complements to human perceptual cognition in 4K image synthesis.

#### Diffusion-4K
**Diffusion-4K** is presented as a novel framework designed for direct ultra-high-resolution image synthesis, utilizing latent diffusion models. A key aspect is the **Aesthetic-4K Benchmark**, addressing the lack of publicly available 4K image synthesis datasets. This benchmark includes a curated, high-quality dataset of ultra-high-resolution images accompanied by precise captions generated by GPT-4O. To evaluate the fine details present in 4K images, new metrics such as **GLCM Score** and **Compression Ratio** were introduced, complementing holistic measures like FID and CLIPScore. A wavelet-based fine-tuning approach is proposed to optimize the generation of fine details in the images. Diffusion-4K's capabilities are validated through experiments, showcasing the effectiveness of the method in synthesizing highly detailed 4K images. Diffusion-4K achieves better image synthesis and text prompt adherence, when used with modern large-scale diffusion models (e.g., SD3-2B and Flux-12B).


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.18352/x1.png)

> 🔼 Figure 2 presents a correlation analysis between the Gray Level Co-occurrence Matrix (GLCM) Score and the Compression Ratio, metrics designed to evaluate fine details in images, specifically at 4K resolution.  The GLCM score measures textural richness by analyzing the spatial distribution of gray levels in local image patches, while the compression ratio assesses the preservation of detail by measuring how well the image compresses using lossy compression (JPEG).  The results indicate a strong positive correlation between higher GLCM scores (indicating richer texture) and lower compression ratios (indicating better preservation of fine details), showing strong alignment with human perception of image quality.  Human observers tend to rate images with high textural detail and well-preserved fine details more favorably.  The analysis is done at the patch level to show the alignment at local feature level.
> <details>
> <summary>read the caption</summary>
> Figure 2: Analysis of GLCM Score↑↑\uparrow↑ / Compression Ratio↓↓\downarrow↓. Our indicators demonstrate strong alignment with human-centric perceptual cognition at the level of local patches.
> </details>



![](https://arxiv.org/html/2503.18352/x2.png)

> 🔼 This figure displays examples of image-text pairs from the Aesthetic-4K training dataset.  The images are high-quality, ultra-high-resolution (4K) images, and the accompanying text captions were generated using GPT-40. This showcases the high standard of the dataset used to train the Diffusion-4K model, emphasizing both visual quality and precise textual descriptions for improved model performance.
> <details>
> <summary>read the caption</summary>
> (a) Image-text samples in training set.
> </details>



![](https://arxiv.org/html/2503.18352/extracted/6304121/figures/vae.jpg)

> 🔼 This figure shows example image-text pairs from the evaluation subset of the Aesthetic-4K dataset.  These examples illustrate the high-quality images and precise text prompts characteristic of this dataset, which is specifically designed for evaluating ultra-high-resolution (4K) image synthesis models.  The images demonstrate a variety of subjects and visual styles, showcasing the diversity of the dataset.
> <details>
> <summary>read the caption</summary>
> (b) Image-text samples in evaluation set.
> </details>



![](https://arxiv.org/html/2503.18352/x3.png)

> 🔼 Figure 3 presents examples from the Aesthetic-4K dataset.  The dataset contains high-resolution images (4K) paired with detailed captions generated by the GPT-40 language model. These image-caption pairs are carefully selected to represent a high standard of visual aesthetics and showcase fine details.  The figure aims to illustrate the quality and precision of the data within the Aesthetic-4K benchmark, which is designed for evaluating and training ultra-high-resolution image synthesis models.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustration of image-text samples in the Aesthetic-4K dataset, which includes high-quality images and precise text prompts generated by GPT-4o, distinguished by high aesthetics and fine details.
> </details>



![](https://arxiv.org/html/2503.18352/x4.png)

> 🔼 This figure displays the reconstruction results of 4K images using partitioned Variational Autoencoders (VAEs) with a downsampling factor of F=16.  The partitioned VAE approach is a key component of the Diffusion-4K framework, designed to address the computational challenges of handling ultra-high-resolution images. By partitioning the VAE, the model efficiently manages the memory requirements during training and inference. The figure visually demonstrates the quality of reconstruction achieved by the partitioned VAEs, showcasing the effectiveness of this method for ultra-high resolution image processing.
> <details>
> <summary>read the caption</summary>
> Figure 4: Reconstruction results of 4K images with partitioned VAEs of F=16𝐹16F=16italic_F = 16.
> </details>



![](https://arxiv.org/html/2503.18352/x6.png)

> 🔼 This figure showcases example images generated by the Diffusion-4K model, demonstrating its ability to synthesize high-quality, photorealistic 4K images from various text prompts. The prompts used to generate the images are sourced from the Sora [30] dataset, showcasing the model's ability to translate text descriptions into detailed and visually appealing images.  Each image depicts a diverse range of scenes, subjects, and artistic styles, highlighting the model's versatility and capacity to generate high-resolution images across multiple categories.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative 4K images synthesis of Diffusion-4K. Prompts are from Sora [30].
> </details>



![](https://arxiv.org/html/2503.18352/x7.png)

> 🔼 Figure 6 is a bar chart comparing human preferences against those of GPT-40 for various aspects of image quality.  The chart displays the percentage of times each model preferred different aspects of four different generated images:  Visual Aesthetics, Prompt Adherence, Fine Details, and Human Preference.  This allows a comparison to show how well the AI model's preferences align with human preferences for these image qualities in the context of 4K image generation.
> <details>
> <summary>read the caption</summary>
> Figure 6: Human and GPT-4o preference evaluation.
> </details>



![](https://arxiv.org/html/2503.18352/extracted/6304121/figures/demo_supplement.jpg)

> 🔼 This figure compares the image generation results of Diffusion-4K and PixArt-Σ using the same prompts.  The left side shows images generated by PixArt-Σ, while the right side displays images from Diffusion-4K.  Yellow highlighted patches in the Diffusion-4K images indicate areas with superior fine detail compared to the red-highlighted areas in PixArt-Σ images, demonstrating Diffusion-4K's improved performance in generating high-resolution images with intricate details.
> <details>
> <summary>read the caption</summary>
> Figure 7:  We present comparisons with PixArt-ΣΣ\Sigmaroman_Σ [9] using identical prompts, with images from PixArt-ΣΣ\Sigmaroman_Σ displayed on the left and those synthesized by our Diffusion-4K shown on the right. Our approach demonstrates significant superiority over PixArt-ΣΣ\Sigmaroman_Σ in fine details, as evidenced by the yellow patches vs. the red patches.
> </details>



![](https://arxiv.org/html/2503.18352/extracted/6304121/figures/demo_seed_supplement.jpg)

> 🔼 This figure displays a comparison of image generation results between the Diffusion-4K model and the Sana [49] model.  Each pair of images shows the same prompt rendered by both models, allowing for a visual assessment of the differences in image quality, detail, and adherence to the prompt.  It highlights the relative strengths of Diffusion-4K in producing ultra-high-resolution images with fine details.
> <details>
> <summary>read the caption</summary>
> Figure 8: Comparisons with Sana [49].
> </details>



![](https://arxiv.org/html/2503.18352/extracted/6304121/figures/demo_diffusion_4k_supplement.jpg)

> 🔼 This figure displays an ablation study comparing the performance of the Wavelet-based Fine-tuning (WLF) method. It visually demonstrates the effect of WLF on generating high-resolution images by showing samples of images generated with and without WLF. This allows for a direct comparison and highlights the improvements achieved through the use of WLF in terms of image detail and quality.
> <details>
> <summary>read the caption</summary>
> Figure 9: Ablation study on WLF.
> </details>



![](https://arxiv.org/html/2503.18352/x8.png)

> 🔼 This figure showcases several high-quality images generated by the Diffusion-4K model.  Each image demonstrates the model's ability to synthesize diverse scenes with high-fidelity details and accurate representation of textures, including nature scenes, cityscapes, animals, and fantasy elements. The images highlight the model's proficiency in capturing realistic light and shadows, fine textures, and overall photorealism at 4K resolution.
> <details>
> <summary>read the caption</summary>
> Figure 10: High-quality images synthesized by our Diffusion-4k.
> </details>



![](https://arxiv.org/html/2503.18352/x9.png)

> 🔼 This figure showcases the versatility of Diffusion-4K in generating high-resolution images at various aspect ratios and with different random seeds.  The results demonstrate the model's ability to maintain image quality and coherence across diverse settings, highlighting its robustness and adaptability.
> <details>
> <summary>read the caption</summary>
> Figure 11: Synthesized images with different aspect ratios and random seeds.
> </details>



![](https://arxiv.org/html/2503.18352/extracted/6304121/figures/demo_data_supplement.jpg)

> 🔼 Figure 12 displays examples of images generated by the Diffusion-4K model where the text prompts included intentionally misspelled words. This showcases the model's ability to generate coherent images even when the input text contains errors, highlighting its robustness and potential for creative applications.
> <details>
> <summary>read the caption</summary>
> Figure 12: Synthesized images with spelled texts.
> </details>



![](https://arxiv.org/html/2503.18352/x10.png)

> 🔼 This figure shows the distribution of image heights and widths within the Aesthetic-4K dataset.  Two histograms are presented, one for height and one for width.  Each histogram displays the frequency of images at different height and width values, giving insight into the size and aspect ratio variations present in the dataset. This is important for understanding the characteristics of the dataset and its suitability for training and evaluating ultra-high-resolution image synthesis models.
> <details>
> <summary>read the caption</summary>
> Figure 13: Histograms of image height and width in Aesthetic-4K.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.6.1">
<tr class="ltx_tr" id="S4.T2.6.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T2.6.1.1.1">Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.1.1.2">rFID</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.1.1.3">NMSE</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.1.1.4">PSNR</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.1.1.5">SSIM</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.1.1.6">LPIPS</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.6.1.2.1">SD3-VAE-F16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.1.2.2">1.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.1.2.3">0.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.1.2.4">28.82</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.1.2.5">0.76</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.1.2.6">0.15</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.3">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T2.6.1.3.1">Flux-VAE-F16</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.1.3.2">1.69</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.1.3.3">0.08</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.1.3.4">29.22</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.1.3.5">0.79</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.1.3.6">0.16</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the performance of two different Variational Autoencoders (VAEs) used for image reconstruction.  The VAEs, with a downsampling factor of F=16, were evaluated on the Aesthetic-4K dataset at a resolution of 4096x4096 pixels. The evaluation metrics used include the Fréchet Inception Distance (rFID), Normalized Mean Square Error (NMSE), Peak Signal-to-Noise Ratio (PSNR), Structural Similarity Index (SSIM), and Learned Perceptual Image Patch Similarity (LPIPS).  The results show the reconstruction quality achieved by each VAE on the high-resolution images.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative reconstruction results of VAEs with down-sampling factor of F=16𝐹16F=16italic_F = 16 on our Aesthetic-4K training set at 4096×4096409640964096\times 40964096 × 4096.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.3.3">
<tr class="ltx_tr" id="S4.T3.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T3.3.3.3.4">Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.1">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.2.2.2.2">CLIPScore <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.3.3.3">Aesthetics <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.3.3.4.1">SD3-F16@2048</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.4.2">43.82</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.4.3">31.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.4.4">5.91</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.3.3.5.1">SD3-F16-WLF@2048</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.5.2"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.5.2.1">40.18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.5.3"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.5.3.1">34.04</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.5.4"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.5.4.1">5.96</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.3.3.6.1">Flux-F16@2048</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.6.2">50.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.6.3">30.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.6.4">6.36</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.7">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T3.3.3.7.1">Flux-F16-WLF@2048</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.3.7.2"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.7.2.1">39.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.3.7.3"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.7.3.1">34.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.3.7.4"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.7.4.1">6.37</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different latent diffusion models' performance on the Aesthetic-Eval@2048 dataset.  The evaluation is conducted at a resolution of 2048x2048 pixels.  The metrics used to assess performance are the Fréchet Inception Distance (FID), CLIPScore, and Aesthetics scores.  Higher scores for CLIPScore and Aesthetics generally indicate better image quality and alignment with the text prompt.
> <details>
> <summary>read the caption</summary>
> Table 3: Quantitative benchmarks of latent diffusion models on Aesthetic-Eval@2048 at 2048×2048204820482048\times 20482048 × 2048 resolution.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.2.2">
<tr class="ltx_tr" id="S4.T4.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T4.2.2.2.3">Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.1">GLCM Score <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.2.2.2.2">Compression Ratio <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.2.m1.1a"><mo id="S4.T4.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T4.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.2.m1.1b"><ci id="S4.T4.2.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T4.2.2.3.1">SD3-F16@2048</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.3.2">0.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.3.3">11.23</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.2.2.4.1">SD3-F16-WLF@2048</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.4.2"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.4.2.1">0.79</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.4.3"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.4.3.1">10.51</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T4.2.2.5.1">Flux-F16@2048</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.5.2">0.58</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.5.3">14.80</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.6">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T4.2.2.6.1">Flux-F16-WLF@2048</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.2.6.2"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.6.2.1">0.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.2.6.3"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.6.3.1">13.60</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different latent diffusion models on the Aesthetic-Eval@2048 benchmark dataset.  Specifically, it shows the GLCM (Gray-Level Co-occurrence Matrix) Score and Compression Ratio achieved by each model for images generated at a resolution of 2048x2048.  The GLCM Score measures the richness of texture details in the images, while the Compression Ratio indicates the level of detail preserved after compression. Higher GLCM scores suggest better texture detail, and lower compression ratios indicate more detail preservation.  The results help evaluate the models' ability to generate high-quality images with fine details at the specified resolution.
> <details>
> <summary>read the caption</summary>
> Table 4: GLCM Score and Compression Ratio of latent diffusion models on Aesthetic-Eval@2048 at 2048×2048204820482048\times 20482048 × 2048 resolution.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T5.4.1">
<tr class="ltx_tr" id="S4.T5.4.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T5.4.1.1.1">Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.4.1.1.2">Memory</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.4.1.1.3">Time (s/step)</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T5.4.1.2.1">SD3-F8@4096</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.1.2.2">OOM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.1.2.3">-</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.4.1.3.1">SD3-F16-WLF@4096</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.3.2">31.3GB</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.3.3">1.16</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.4.1.4.1">SD3-F16-WLF@4096 (CPU offload)</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.4.2">16.1GB</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.4.3">1.22</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.1.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T5.4.1.5.1">Flux-F8@4096</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.1.5.2">OOM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.1.5.3">-</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.4.1.6.1">Flux-F16-WLF@4096</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.6.2">50.4 GB</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.6.3">2.42</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.1.7">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T5.4.1.7.1">Flux-F16-WLF@4096 (CPU offload)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.1.7.2">26.9 GB</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.1.7.3">3.16</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative analysis of the computational resources required for direct image synthesis at an ultra-high resolution of 4096 x 4096 pixels.  It shows the memory consumption (in GB) and inference speed (in seconds per step) for different models and configurations.  The experiments were conducted using a single NVIDIA A100 GPU with BF16 precision for efficient computation. The results demonstrate the trade-off between model complexity, memory usage, and processing speed during high-resolution image generation.
> <details>
> <summary>read the caption</summary>
> Table 5: Memory consumption and inference speed of direct image synthesis at 4096×4096409640964096\times 40964096 × 4096. The result is tested on one A100 GPU with BF16 Precision.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T6.2.2">
<tr class="ltx_tr" id="S4.T6.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T6.2.2.2.3">Captions</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T6.2.2.2.4">Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.1.1.1.1">CLIPScore <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.1.1.1.1.m1.1"><semantics id="S4.T6.1.1.1.1.m1.1a"><mo id="S4.T6.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.1.1.1.1.m1.1b"><ci id="S4.T6.1.1.1.1.m1.1.1.cmml" xref="S4.T6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.2.2.2.2">Aesthetics <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.2.2.2.2.m1.1"><semantics id="S4.T6.2.2.2.2.m1.1a"><mo id="S4.T6.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T6.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.2.2.2.2.m1.1b"><ci id="S4.T6.2.2.2.2.m1.1.1.cmml" xref="S4.T6.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T6.2.2.3.1">LAION-5B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.2.2.3.2">SD3-F16@4096</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.3.3">29.37</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.3.4">5.90</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.4">
<td class="ltx_td ltx_align_left" id="S4.T6.2.2.4.1">GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.2.4.2">SD3-F16@4096</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.4.3"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.4.3.1">33.12</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.4.4"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.4.4.1">5.97</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T6.2.2.5.1">LAION-5B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.2.2.5.2">Flux-F16@4096</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.5.3">29.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.5.4">6.02</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T6.2.2.6.1">GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T6.2.2.6.2">Flux-F16@4096</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.2.6.3"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.6.3.1">33.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.2.6.4"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.6.4.1">6.11</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study that investigates the impact of using different image captions on the quality of images generated by two different latent diffusion models (SD3 and Flux).  Specifically, it compares the performance of the models when trained with captions generated by GPT-40 (a large language model) versus captions from the LAION-5B dataset. The metrics used to assess image quality are CLIPScore (a measure of how well the generated image matches the text prompt), and Aesthetics (a measure of the aesthetic quality of the image). The experiment is conducted on the Aesthetic-Eval@4096 dataset, which consists of high-resolution (4096x4096) images.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation study on quality of image captions on Aesthetic-Eval@4096 at 4096×4096409640964096\times 40964096 × 4096.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T7.2.2">
<tr class="ltx_tr" id="S4.T7.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T7.2.2.2.3">Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.1.1.1.1">CLIPScore <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T7.1.1.1.1.m1.1"><semantics id="S4.T7.1.1.1.1.m1.1a"><mo id="S4.T7.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T7.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T7.1.1.1.1.m1.1b"><ci id="S4.T7.1.1.1.1.m1.1.1.cmml" xref="S4.T7.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.2.2.2.2">Aesthetics <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T7.2.2.2.2.m1.1"><semantics id="S4.T7.2.2.2.2.m1.1a"><mo id="S4.T7.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T7.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T7.2.2.2.2.m1.1b"><ci id="S4.T7.2.2.2.2.m1.1.1.cmml" xref="S4.T7.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.2.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T7.2.2.3.1">SD3-F16@4096</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.2.2.3.2">33.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.2.2.3.3">5.97</td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.2.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.2.2.4.1">SD3-F16-finetune@4096</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.2.4.2">34.14</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.2.4.3">5.99</td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.2.5">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T7.2.2.5.1">SD3-F16-WLF@4096</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.2.2.5.2"><span class="ltx_text ltx_font_bold" id="S4.T7.2.2.5.2.1">34.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.2.2.5.3"><span class="ltx_text ltx_font_bold" id="S4.T7.2.2.5.3.1">6.07</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study that investigates the impact of the proposed Wavelet-based Fine-tuning (WLF) method on the performance of the Stable Diffusion 3 (SD3) model.  The study focuses on the Aesthetic-Eval@4096 dataset, which contains high-resolution (4096x4096) images. The table compares the CLIPScore and Aesthetics scores achieved by three different versions of the SD3 model: the standard SD3 model trained at 4096x4096 resolution, a fine-tuned version of SD3 without WLF, and a fine-tuned version of SD3 with the WLF method. The comparison helps to quantify the improvement in image quality and alignment with text prompts brought by incorporating the WLF method in fine-tuning the SD3 model for 4K image generation.
> <details>
> <summary>read the caption</summary>
> Table 7: Ablation on CLIPScore and Aesthetics of SD3 on Aesthetic-Eval@4096 at 4096×4096409640964096\times 40964096 × 4096. SD3-F16-finetune@4096 represents fine-tuning without WLF.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T8.2.2">
<tr class="ltx_tr" id="S4.T8.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T8.2.2.2.3">Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T8.1.1.1.1">GLCM Score <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T8.1.1.1.1.m1.1"><semantics id="S4.T8.1.1.1.1.m1.1a"><mo id="S4.T8.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T8.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T8.1.1.1.1.m1.1b"><ci id="S4.T8.1.1.1.1.m1.1.1.cmml" xref="S4.T8.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T8.2.2.2.2">Compression Ratio <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T8.2.2.2.2.m1.1"><semantics id="S4.T8.2.2.2.2.m1.1a"><mo id="S4.T8.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T8.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T8.2.2.2.2.m1.1b"><ci id="S4.T8.2.2.2.2.m1.1.1.cmml" xref="S4.T8.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T8.2.2.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T8.2.2.3.1">SD3-F16@4096</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.2.2.3.2">0.73</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.2.2.3.3">11.97</td>
</tr>
<tr class="ltx_tr" id="S4.T8.2.2.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T8.2.2.4.1">SD3-F16-finetune@4096</td>
<td class="ltx_td ltx_align_center" id="S4.T8.2.2.4.2">0.74</td>
<td class="ltx_td ltx_align_center" id="S4.T8.2.2.4.3">11.41</td>
</tr>
<tr class="ltx_tr" id="S4.T8.2.2.5">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T8.2.2.5.1">SD3-F16-WLF@4096</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.2.2.5.2"><span class="ltx_text ltx_font_bold" id="S4.T8.2.2.5.2.1">0.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.2.2.5.3"><span class="ltx_text ltx_font_bold" id="S4.T8.2.2.5.3.1">10.50</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted to evaluate the impact of the Wavelet-based Fine-tuning (WLF) method on the performance of the Stable Diffusion 3 (SD3) model in generating ultra-high-resolution (4096x4096 pixels) images.  The study uses the Aesthetic-Eval@4096 dataset for evaluation. The table compares the performance of SD3 fine-tuned with WLF against SD3 fine-tuned without WLF (denoted as SD3-F16-finetune@4096). The comparison is based on two key metrics: the Gray Level Co-occurrence Matrix (GLCM) Score, which measures the richness of texture details; and the Compression Ratio, which assesses the preservation of image details after compression. Higher GLCM scores indicate richer texture, while lower compression ratios suggest better detail preservation. The results demonstrate the effectiveness of the WLF method in enhancing the quality of generated 4K images.
> <details>
> <summary>read the caption</summary>
> Table 8: Ablation on GLCM Score and Compression Ratio of SD3 on Aesthetic-Eval@4096 at 4096×4096409640964096\times 40964096 × 4096. SD3-F16-finetune@4096 denotes fine-tuning without WLF.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S8.T9.2.1">
<tr class="ltx_tr" id="S8.T9.2.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S8.T9.2.1.1.1"><span class="ltx_text" id="S8.T9.2.1.1.1.1" style="font-size:144%;">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S8.T9.2.1.1.2"><span class="ltx_text" id="S8.T9.2.1.1.2.1" style="font-size:144%;">Median height</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S8.T9.2.1.1.3"><span class="ltx_text" id="S8.T9.2.1.1.3.1" style="font-size:144%;">Median width</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S8.T9.2.1.1.4"><span class="ltx_text" id="S8.T9.2.1.1.4.1" style="font-size:144%;">Average height</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T9.2.1.1.5"><span class="ltx_text" id="S8.T9.2.1.1.5.1" style="font-size:144%;">Average width</span></td>
</tr>
<tr class="ltx_tr" id="S8.T9.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T9.2.1.2.1"><span class="ltx_text" id="S8.T9.2.1.2.1.1" style="font-size:144%;">PixArt-30k</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T9.2.1.2.2"><span class="ltx_text" id="S8.T9.2.1.2.2.1" style="font-size:144%;">1615</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T9.2.1.2.3"><span class="ltx_text" id="S8.T9.2.1.2.3.1" style="font-size:144%;">1801</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T9.2.1.2.4"><span class="ltx_text" id="S8.T9.2.1.2.4.1" style="font-size:144%;">2531</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T9.2.1.2.5"><span class="ltx_text" id="S8.T9.2.1.2.5.1" style="font-size:144%;">2656</span></td>
</tr>
<tr class="ltx_tr" id="S8.T9.2.1.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T9.2.1.3.1"><span class="ltx_text" id="S8.T9.2.1.3.1.1" style="font-size:144%;">Aesthetic-Train</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T9.2.1.3.2"><span class="ltx_text" id="S8.T9.2.1.3.2.1" style="font-size:144%;">4128</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T9.2.1.3.3"><span class="ltx_text" id="S8.T9.2.1.3.3.1" style="font-size:144%;">4640</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T9.2.1.3.4"><span class="ltx_text" id="S8.T9.2.1.3.4.1" style="font-size:144%;">4578</span></td>
<td class="ltx_td ltx_align_center" id="S8.T9.2.1.3.5"><span class="ltx_text" id="S8.T9.2.1.3.5.1" style="font-size:144%;">4838</span></td>
</tr>
<tr class="ltx_tr" id="S8.T9.2.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T9.2.1.4.1"><span class="ltx_text" id="S8.T9.2.1.4.1.1" style="font-size:144%;">Aesthetic-Eval@2048</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T9.2.1.4.2"><span class="ltx_text" id="S8.T9.2.1.4.2.1" style="font-size:144%;">2983</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T9.2.1.4.3"><span class="ltx_text" id="S8.T9.2.1.4.3.1" style="font-size:144%;">3613</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T9.2.1.4.4"><span class="ltx_text" id="S8.T9.2.1.4.4.1" style="font-size:144%;">3143</span></td>
<td class="ltx_td ltx_align_center" id="S8.T9.2.1.4.5"><span class="ltx_text" id="S8.T9.2.1.4.5.1" style="font-size:144%;">3746</span></td>
</tr>
<tr class="ltx_tr" id="S8.T9.2.1.5">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S8.T9.2.1.5.1"><span class="ltx_text" id="S8.T9.2.1.5.1.1" style="font-size:144%;">Aesthetic-Eval@4096</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S8.T9.2.1.5.2"><span class="ltx_text" id="S8.T9.2.1.5.2.1" style="font-size:144%;">4912</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S8.T9.2.1.5.3"><span class="ltx_text" id="S8.T9.2.1.5.3.1" style="font-size:144%;">6449</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S8.T9.2.1.5.4"><span class="ltx_text" id="S8.T9.2.1.5.4.1" style="font-size:144%;">5269</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S8.T9.2.1.5.5"><span class="ltx_text" id="S8.T9.2.1.5.5.1" style="font-size:144%;">6420</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the key characteristics of the Aesthetic-4K dataset and the PixArt-30k dataset, focusing on image dimensions.  It shows the median height and width, as well as the average height and width of images in both datasets.  This comparison highlights the significant increase in resolution offered by the Aesthetic-4K dataset, demonstrating its suitability for ultra-high-resolution image synthesis research.
> <details>
> <summary>read the caption</summary>
> Table 9: Statistical comparisons of Aesthetic-4K and PixArt-30k.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S9.T10.4.1">
<tr class="ltx_tr" id="S9.T10.4.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S9.T10.4.1.1.1"><span class="ltx_text" id="S9.T10.4.1.1.1.1" style="font-size:144%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S9.T10.4.1.1.2"><span class="ltx_text" id="S9.T10.4.1.1.2.1" style="font-size:144%;">SD3-2B-WLF</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T10.4.1.1.3"><span class="ltx_text" id="S9.T10.4.1.1.3.1" style="font-size:144%;">Flux-12B-WLF</span></td>
</tr>
<tr class="ltx_tr" id="S9.T10.4.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S9.T10.4.1.2.1"><span class="ltx_text" id="S9.T10.4.1.2.1.1" style="font-size:144%;">Training steps</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.4.1.2.2"><span class="ltx_text" id="S9.T10.4.1.2.2.1" style="font-size:144%;">20K</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T10.4.1.2.3"><span class="ltx_text" id="S9.T10.4.1.2.3.1" style="font-size:144%;">20K</span></td>
</tr>
<tr class="ltx_tr" id="S9.T10.4.1.3">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S9.T10.4.1.3.1"><span class="ltx_text" id="S9.T10.4.1.3.1.1" style="font-size:144%;">Throughput (images/s)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S9.T10.4.1.3.2"><span class="ltx_text" id="S9.T10.4.1.3.2.1" style="font-size:144%;">0.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S9.T10.4.1.3.3"><span class="ltx_text" id="S9.T10.4.1.3.3.1" style="font-size:144%;">1.39</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the training hyperparameters and performance metrics for two large-scale diffusion models, Stable Diffusion 3 (SD3-2B) and Flux-12B, when fine-tuned using the Wavelet-based Fine-tuning (WLF) method at an ultra-high resolution of 4096x4096 pixels.  Specifically, it shows the number of training steps conducted and the training throughput (images processed per second) achieved for each model during the fine-tuning process.
> <details>
> <summary>read the caption</summary>
> Table 10: Training details of SD3-2B and Flux-12B with WLF at 4096×4096409640964096\times 40964096 × 4096.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S9.T11.20.20">
<tr class="ltx_tr" id="S9.T11.20.20.21">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S9.T11.20.20.21.1"><span class="ltx_text" id="S9.T11.20.20.21.1.1" style="font-size:144%;">Tasks</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T11.20.20.21.2"><span class="ltx_text" id="S9.T11.20.20.21.2.1" style="font-size:144%;">Prompts</span></td>
</tr>
<tr class="ltx_tr" id="S9.T11.20.20.22">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S9.T11.20.20.22.1">
<span class="ltx_text" id="S9.T11.20.20.22.1.1"></span><span class="ltx_text" id="S9.T11.20.20.22.1.2" style="font-size:144%;"> </span><span class="ltx_text" id="S9.T11.20.20.22.1.3" style="font-size:144%;">
<span class="ltx_tabular ltx_align_middle" id="S9.T11.20.20.22.1.3.1">
<span class="ltx_tr" id="S9.T11.20.20.22.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S9.T11.20.20.22.1.3.1.1.1">Image</span></span>
<span class="ltx_tr" id="S9.T11.20.20.22.1.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S9.T11.20.20.22.1.3.1.2.1">Caption</span></span>
</span></span><span class="ltx_text" id="S9.T11.20.20.22.1.4"></span><span class="ltx_text" id="S9.T11.20.20.22.1.5" style="font-size:144%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T11.20.20.22.2">
<span class="ltx_text" id="S9.T11.20.20.22.2.1"></span><span class="ltx_text" id="S9.T11.20.20.22.2.2" style="font-size:144%;"> </span><span class="ltx_text" id="S9.T11.20.20.22.2.3" style="font-size:144%;">
<span class="ltx_tabular ltx_align_middle" id="S9.T11.20.20.22.2.3.1">
<span class="ltx_tr" id="S9.T11.20.20.22.2.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S9.T11.20.20.22.2.3.1.1.1">{“<span class="ltx_text ltx_font_bold" id="S9.T11.20.20.22.2.3.1.1.1.1">text</span>”: “Directly describe with brevity and as brief as possible the scene or characters without any introductory phrase</span></span>
<span class="ltx_tr" id="S9.T11.20.20.22.2.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S9.T11.20.20.22.2.3.1.2.1">like ‘This image shows’, ‘In the scene’, ‘This image depicts’ or similar phrases. Just start describing the scene please.” }</span></span>
</span></span><span class="ltx_text" id="S9.T11.20.20.22.2.4"></span><span class="ltx_text" id="S9.T11.20.20.22.2.5" style="font-size:144%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S9.T11.20.20.20">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S9.T11.20.20.20.21">
<span class="ltx_text" id="S9.T11.20.20.20.21.1"></span><span class="ltx_text" id="S9.T11.20.20.20.21.2" style="font-size:144%;"> </span><span class="ltx_text" id="S9.T11.20.20.20.21.3" style="font-size:144%;">
<span class="ltx_tabular ltx_align_middle" id="S9.T11.20.20.20.21.3.1">
<span class="ltx_tr" id="S9.T11.20.20.20.21.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S9.T11.20.20.20.21.3.1.1.1">Preference</span></span>
<span class="ltx_tr" id="S9.T11.20.20.20.21.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S9.T11.20.20.20.21.3.1.2.1">Study</span></span>
</span></span><span class="ltx_text" id="S9.T11.20.20.20.21.4"></span><span class="ltx_text" id="S9.T11.20.20.20.21.5" style="font-size:144%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S9.T11.20.20.20.20">
<span class="ltx_text" id="S9.T11.20.20.20.20.21"></span><span class="ltx_text" id="S9.T11.20.20.20.20.22" style="font-size:144%;"> </span><span class="ltx_text" id="S9.T11.20.20.20.20.20" style="font-size:144%;">
<span class="ltx_tabular ltx_align_middle" id="S9.T11.20.20.20.20.20.20">
<span class="ltx_tr" id="S9.T11.20.20.20.20.20.20.21">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S9.T11.20.20.20.20.20.20.21.1">{“<span class="ltx_text ltx_font_bold" id="S9.T11.20.20.20.20.20.20.21.1.1">system</span>”: “As an AI visual assistant, you are analyzing two specific images. When presented with</span></span>
<span class="ltx_tr" id="S9.T11.20.20.20.20.20.20.22">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S9.T11.20.20.20.20.20.20.22.1">a specific caption, it is required to evaluate visual aesthetics, prompt coherence and fine details.”,</span></span>
<span class="ltx_tr" id="S9.T11.2.2.2.2.2.2.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S9.T11.2.2.2.2.2.2.2.2">“<span class="ltx_text ltx_font_bold" id="S9.T11.2.2.2.2.2.2.2.2.1">text</span>”: “The caption for the two images is: <math alttext="\langle" class="ltx_Math" display="inline" id="S9.T11.1.1.1.1.1.1.1.1.m1.1"><semantics id="S9.T11.1.1.1.1.1.1.1.1.m1.1a"><mo id="S9.T11.1.1.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S9.T11.1.1.1.1.1.1.1.1.m1.1.1.cmml">⟨</mo><annotation-xml encoding="MathML-Content" id="S9.T11.1.1.1.1.1.1.1.1.m1.1b"><ci id="S9.T11.1.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S9.T11.1.1.1.1.1.1.1.1.m1.1.1">⟨</ci></annotation-xml><annotation encoding="application/x-tex" id="S9.T11.1.1.1.1.1.1.1.1.m1.1c">\langle</annotation><annotation encoding="application/x-llamapun" id="S9.T11.1.1.1.1.1.1.1.1.m1.1d">⟨</annotation></semantics></math>prompt<math alttext="\rangle" class="ltx_Math" display="inline" id="S9.T11.2.2.2.2.2.2.2.2.m2.1"><semantics id="S9.T11.2.2.2.2.2.2.2.2.m2.1a"><mo id="S9.T11.2.2.2.2.2.2.2.2.m2.1.1" stretchy="false" xref="S9.T11.2.2.2.2.2.2.2.2.m2.1.1.cmml">⟩</mo><annotation-xml encoding="MathML-Content" id="S9.T11.2.2.2.2.2.2.2.2.m2.1b"><ci id="S9.T11.2.2.2.2.2.2.2.2.m2.1.1.cmml" xref="S9.T11.2.2.2.2.2.2.2.2.m2.1.1">⟩</ci></annotation-xml><annotation encoding="application/x-tex" id="S9.T11.2.2.2.2.2.2.2.2.m2.1c">\rangle</annotation><annotation encoding="application/x-llamapun" id="S9.T11.2.2.2.2.2.2.2.2.m2.1d">⟩</annotation></semantics></math>. Please answer the following questions:</span></span>
<span class="ltx_tr" id="S9.T11.20.20.20.20.20.20.23">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S9.T11.20.20.20.20.20.20.23.1">1. Visual Aesthetics: Given the prompt, which image is of higher-quality and aesthetically more pleasing?</span></span>
<span class="ltx_tr" id="S9.T11.20.20.20.20.20.20.24">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S9.T11.20.20.20.20.20.20.24.1">2. Prompt Adherence: Which image looks more representative to the text shown above and faithfully follows it?</span></span>
<span class="ltx_tr" id="S9.T11.20.20.20.20.20.20.25">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S9.T11.20.20.20.20.20.20.25.1">3. Fine Details: Which image more accurately represents the fine visual details? Focus on clarity,</span></span>
<span class="ltx_tr" id="S9.T11.20.20.20.20.20.20.26">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S9.T11.20.20.20.20.20.20.26.1">sharpness, and texture. Assess the fidelity of fine elements such as edges, patterns, and nuances in color.</span></span>
<span class="ltx_tr" id="S9.T11.20.20.20.20.20.20.27">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S9.T11.20.20.20.20.20.20.27.1">The more precise representation of these details is preferred! Ignore other aspects.</span></span>
<span class="ltx_tr" id="S9.T11.20.20.20.20.20.20.28">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S9.T11.20.20.20.20.20.20.28.1">Please respond me strictly in the following format:</span></span>
<span class="ltx_tr" id="S9.T11.8.8.8.8.8.8.8">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S9.T11.8.8.8.8.8.8.8.6">1. Visual Aesthetics: <math alttext="\langle" class="ltx_Math" display="inline" id="S9.T11.3.3.3.3.3.3.3.1.m1.1"><semantics id="S9.T11.3.3.3.3.3.3.3.1.m1.1a"><mo id="S9.T11.3.3.3.3.3.3.3.1.m1.1.1" stretchy="false" xref="S9.T11.3.3.3.3.3.3.3.1.m1.1.1.cmml">⟨</mo><annotation-xml encoding="MathML-Content" id="S9.T11.3.3.3.3.3.3.3.1.m1.1b"><ci id="S9.T11.3.3.3.3.3.3.3.1.m1.1.1.cmml" xref="S9.T11.3.3.3.3.3.3.3.1.m1.1.1">⟨</ci></annotation-xml><annotation encoding="application/x-tex" id="S9.T11.3.3.3.3.3.3.3.1.m1.1c">\langle</annotation><annotation encoding="application/x-llamapun" id="S9.T11.3.3.3.3.3.3.3.1.m1.1d">⟨</annotation></semantics></math>the first image is better<math alttext="\rangle" class="ltx_Math" display="inline" id="S9.T11.4.4.4.4.4.4.4.2.m2.1"><semantics id="S9.T11.4.4.4.4.4.4.4.2.m2.1a"><mo id="S9.T11.4.4.4.4.4.4.4.2.m2.1.1" stretchy="false" xref="S9.T11.4.4.4.4.4.4.4.2.m2.1.1.cmml">⟩</mo><annotation-xml encoding="MathML-Content" id="S9.T11.4.4.4.4.4.4.4.2.m2.1b"><ci id="S9.T11.4.4.4.4.4.4.4.2.m2.1.1.cmml" xref="S9.T11.4.4.4.4.4.4.4.2.m2.1.1">⟩</ci></annotation-xml><annotation encoding="application/x-tex" id="S9.T11.4.4.4.4.4.4.4.2.m2.1c">\rangle</annotation><annotation encoding="application/x-llamapun" id="S9.T11.4.4.4.4.4.4.4.2.m2.1d">⟩</annotation></semantics></math> or <math alttext="\langle" class="ltx_Math" display="inline" id="S9.T11.5.5.5.5.5.5.5.3.m3.1"><semantics id="S9.T11.5.5.5.5.5.5.5.3.m3.1a"><mo id="S9.T11.5.5.5.5.5.5.5.3.m3.1.1" stretchy="false" xref="S9.T11.5.5.5.5.5.5.5.3.m3.1.1.cmml">⟨</mo><annotation-xml encoding="MathML-Content" id="S9.T11.5.5.5.5.5.5.5.3.m3.1b"><ci id="S9.T11.5.5.5.5.5.5.5.3.m3.1.1.cmml" xref="S9.T11.5.5.5.5.5.5.5.3.m3.1.1">⟨</ci></annotation-xml><annotation encoding="application/x-tex" id="S9.T11.5.5.5.5.5.5.5.3.m3.1c">\langle</annotation><annotation encoding="application/x-llamapun" id="S9.T11.5.5.5.5.5.5.5.3.m3.1d">⟨</annotation></semantics></math>the second image is better<math alttext="\rangle" class="ltx_Math" display="inline" id="S9.T11.6.6.6.6.6.6.6.4.m4.1"><semantics id="S9.T11.6.6.6.6.6.6.6.4.m4.1a"><mo id="S9.T11.6.6.6.6.6.6.6.4.m4.1.1" stretchy="false" xref="S9.T11.6.6.6.6.6.6.6.4.m4.1.1.cmml">⟩</mo><annotation-xml encoding="MathML-Content" id="S9.T11.6.6.6.6.6.6.6.4.m4.1b"><ci id="S9.T11.6.6.6.6.6.6.6.4.m4.1.1.cmml" xref="S9.T11.6.6.6.6.6.6.6.4.m4.1.1">⟩</ci></annotation-xml><annotation encoding="application/x-tex" id="S9.T11.6.6.6.6.6.6.6.4.m4.1c">\rangle</annotation><annotation encoding="application/x-llamapun" id="S9.T11.6.6.6.6.6.6.6.4.m4.1d">⟩</annotation></semantics></math>. The reason is <math alttext="\langle" class="ltx_Math" display="inline" id="S9.T11.7.7.7.7.7.7.7.5.m5.1"><semantics id="S9.T11.7.7.7.7.7.7.7.5.m5.1a"><mo id="S9.T11.7.7.7.7.7.7.7.5.m5.1.1" stretchy="false" xref="S9.T11.7.7.7.7.7.7.7.5.m5.1.1.cmml">⟨</mo><annotation-xml encoding="MathML-Content" id="S9.T11.7.7.7.7.7.7.7.5.m5.1b"><ci id="S9.T11.7.7.7.7.7.7.7.5.m5.1.1.cmml" xref="S9.T11.7.7.7.7.7.7.7.5.m5.1.1">⟨</ci></annotation-xml><annotation encoding="application/x-tex" id="S9.T11.7.7.7.7.7.7.7.5.m5.1c">\langle</annotation><annotation encoding="application/x-llamapun" id="S9.T11.7.7.7.7.7.7.7.5.m5.1d">⟨</annotation></semantics></math>give your reason here<math alttext="\rangle" class="ltx_Math" display="inline" id="S9.T11.8.8.8.8.8.8.8.6.m6.1"><semantics id="S9.T11.8.8.8.8.8.8.8.6.m6.1a"><mo id="S9.T11.8.8.8.8.8.8.8.6.m6.1.1" stretchy="false" xref="S9.T11.8.8.8.8.8.8.8.6.m6.1.1.cmml">⟩</mo><annotation-xml encoding="MathML-Content" id="S9.T11.8.8.8.8.8.8.8.6.m6.1b"><ci id="S9.T11.8.8.8.8.8.8.8.6.m6.1.1.cmml" xref="S9.T11.8.8.8.8.8.8.8.6.m6.1.1">⟩</ci></annotation-xml><annotation encoding="application/x-tex" id="S9.T11.8.8.8.8.8.8.8.6.m6.1c">\rangle</annotation><annotation encoding="application/x-llamapun" id="S9.T11.8.8.8.8.8.8.8.6.m6.1d">⟩</annotation></semantics></math>.</span></span>
<span class="ltx_tr" id="S9.T11.14.14.14.14.14.14.14">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S9.T11.14.14.14.14.14.14.14.6">2. Prompt Adherence: <math alttext="\langle" class="ltx_Math" display="inline" id="S9.T11.9.9.9.9.9.9.9.1.m1.1"><semantics id="S9.T11.9.9.9.9.9.9.9.1.m1.1a"><mo id="S9.T11.9.9.9.9.9.9.9.1.m1.1.1" stretchy="false" xref="S9.T11.9.9.9.9.9.9.9.1.m1.1.1.cmml">⟨</mo><annotation-xml encoding="MathML-Content" id="S9.T11.9.9.9.9.9.9.9.1.m1.1b"><ci id="S9.T11.9.9.9.9.9.9.9.1.m1.1.1.cmml" xref="S9.T11.9.9.9.9.9.9.9.1.m1.1.1">⟨</ci></annotation-xml><annotation encoding="application/x-tex" id="S9.T11.9.9.9.9.9.9.9.1.m1.1c">\langle</annotation><annotation encoding="application/x-llamapun" id="S9.T11.9.9.9.9.9.9.9.1.m1.1d">⟨</annotation></semantics></math>the first image is better<math alttext="\rangle" class="ltx_Math" display="inline" id="S9.T11.10.10.10.10.10.10.10.2.m2.1"><semantics id="S9.T11.10.10.10.10.10.10.10.2.m2.1a"><mo id="S9.T11.10.10.10.10.10.10.10.2.m2.1.1" stretchy="false" xref="S9.T11.10.10.10.10.10.10.10.2.m2.1.1.cmml">⟩</mo><annotation-xml encoding="MathML-Content" id="S9.T11.10.10.10.10.10.10.10.2.m2.1b"><ci id="S9.T11.10.10.10.10.10.10.10.2.m2.1.1.cmml" xref="S9.T11.10.10.10.10.10.10.10.2.m2.1.1">⟩</ci></annotation-xml><annotation encoding="application/x-tex" id="S9.T11.10.10.10.10.10.10.10.2.m2.1c">\rangle</annotation><annotation encoding="application/x-llamapun" id="S9.T11.10.10.10.10.10.10.10.2.m2.1d">⟩</annotation></semantics></math> or <math alttext="\langle" class="ltx_Math" display="inline" id="S9.T11.11.11.11.11.11.11.11.3.m3.1"><semantics id="S9.T11.11.11.11.11.11.11.11.3.m3.1a"><mo id="S9.T11.11.11.11.11.11.11.11.3.m3.1.1" stretchy="false" xref="S9.T11.11.11.11.11.11.11.11.3.m3.1.1.cmml">⟨</mo><annotation-xml encoding="MathML-Content" id="S9.T11.11.11.11.11.11.11.11.3.m3.1b"><ci id="S9.T11.11.11.11.11.11.11.11.3.m3.1.1.cmml" xref="S9.T11.11.11.11.11.11.11.11.3.m3.1.1">⟨</ci></annotation-xml><annotation encoding="application/x-tex" id="S9.T11.11.11.11.11.11.11.11.3.m3.1c">\langle</annotation><annotation encoding="application/x-llamapun" id="S9.T11.11.11.11.11.11.11.11.3.m3.1d">⟨</annotation></semantics></math>the second image is better<math alttext="\rangle" class="ltx_Math" display="inline" id="S9.T11.12.12.12.12.12.12.12.4.m4.1"><semantics id="S9.T11.12.12.12.12.12.12.12.4.m4.1a"><mo id="S9.T11.12.12.12.12.12.12.12.4.m4.1.1" stretchy="false" xref="S9.T11.12.12.12.12.12.12.12.4.m4.1.1.cmml">⟩</mo><annotation-xml encoding="MathML-Content" id="S9.T11.12.12.12.12.12.12.12.4.m4.1b"><ci id="S9.T11.12.12.12.12.12.12.12.4.m4.1.1.cmml" xref="S9.T11.12.12.12.12.12.12.12.4.m4.1.1">⟩</ci></annotation-xml><annotation encoding="application/x-tex" id="S9.T11.12.12.12.12.12.12.12.4.m4.1c">\rangle</annotation><annotation encoding="application/x-llamapun" id="S9.T11.12.12.12.12.12.12.12.4.m4.1d">⟩</annotation></semantics></math>. The reason is <math alttext="\langle" class="ltx_Math" display="inline" id="S9.T11.13.13.13.13.13.13.13.5.m5.1"><semantics id="S9.T11.13.13.13.13.13.13.13.5.m5.1a"><mo id="S9.T11.13.13.13.13.13.13.13.5.m5.1.1" stretchy="false" xref="S9.T11.13.13.13.13.13.13.13.5.m5.1.1.cmml">⟨</mo><annotation-xml encoding="MathML-Content" id="S9.T11.13.13.13.13.13.13.13.5.m5.1b"><ci id="S9.T11.13.13.13.13.13.13.13.5.m5.1.1.cmml" xref="S9.T11.13.13.13.13.13.13.13.5.m5.1.1">⟨</ci></annotation-xml><annotation encoding="application/x-tex" id="S9.T11.13.13.13.13.13.13.13.5.m5.1c">\langle</annotation><annotation encoding="application/x-llamapun" id="S9.T11.13.13.13.13.13.13.13.5.m5.1d">⟨</annotation></semantics></math>give your reason here<math alttext="\rangle" class="ltx_Math" display="inline" id="S9.T11.14.14.14.14.14.14.14.6.m6.1"><semantics id="S9.T11.14.14.14.14.14.14.14.6.m6.1a"><mo id="S9.T11.14.14.14.14.14.14.14.6.m6.1.1" stretchy="false" xref="S9.T11.14.14.14.14.14.14.14.6.m6.1.1.cmml">⟩</mo><annotation-xml encoding="MathML-Content" id="S9.T11.14.14.14.14.14.14.14.6.m6.1b"><ci id="S9.T11.14.14.14.14.14.14.14.6.m6.1.1.cmml" xref="S9.T11.14.14.14.14.14.14.14.6.m6.1.1">⟩</ci></annotation-xml><annotation encoding="application/x-tex" id="S9.T11.14.14.14.14.14.14.14.6.m6.1c">\rangle</annotation><annotation encoding="application/x-llamapun" id="S9.T11.14.14.14.14.14.14.14.6.m6.1d">⟩</annotation></semantics></math>.</span></span>
<span class="ltx_tr" id="S9.T11.20.20.20.20.20.20.20">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S9.T11.20.20.20.20.20.20.20.6">3. Fine Details: <math alttext="\langle" class="ltx_Math" display="inline" id="S9.T11.15.15.15.15.15.15.15.1.m1.1"><semantics id="S9.T11.15.15.15.15.15.15.15.1.m1.1a"><mo id="S9.T11.15.15.15.15.15.15.15.1.m1.1.1" stretchy="false" xref="S9.T11.15.15.15.15.15.15.15.1.m1.1.1.cmml">⟨</mo><annotation-xml encoding="MathML-Content" id="S9.T11.15.15.15.15.15.15.15.1.m1.1b"><ci id="S9.T11.15.15.15.15.15.15.15.1.m1.1.1.cmml" xref="S9.T11.15.15.15.15.15.15.15.1.m1.1.1">⟨</ci></annotation-xml><annotation encoding="application/x-tex" id="S9.T11.15.15.15.15.15.15.15.1.m1.1c">\langle</annotation><annotation encoding="application/x-llamapun" id="S9.T11.15.15.15.15.15.15.15.1.m1.1d">⟨</annotation></semantics></math>the first image is better<math alttext="\rangle" class="ltx_Math" display="inline" id="S9.T11.16.16.16.16.16.16.16.2.m2.1"><semantics id="S9.T11.16.16.16.16.16.16.16.2.m2.1a"><mo id="S9.T11.16.16.16.16.16.16.16.2.m2.1.1" stretchy="false" xref="S9.T11.16.16.16.16.16.16.16.2.m2.1.1.cmml">⟩</mo><annotation-xml encoding="MathML-Content" id="S9.T11.16.16.16.16.16.16.16.2.m2.1b"><ci id="S9.T11.16.16.16.16.16.16.16.2.m2.1.1.cmml" xref="S9.T11.16.16.16.16.16.16.16.2.m2.1.1">⟩</ci></annotation-xml><annotation encoding="application/x-tex" id="S9.T11.16.16.16.16.16.16.16.2.m2.1c">\rangle</annotation><annotation encoding="application/x-llamapun" id="S9.T11.16.16.16.16.16.16.16.2.m2.1d">⟩</annotation></semantics></math> or <math alttext="\langle" class="ltx_Math" display="inline" id="S9.T11.17.17.17.17.17.17.17.3.m3.1"><semantics id="S9.T11.17.17.17.17.17.17.17.3.m3.1a"><mo id="S9.T11.17.17.17.17.17.17.17.3.m3.1.1" stretchy="false" xref="S9.T11.17.17.17.17.17.17.17.3.m3.1.1.cmml">⟨</mo><annotation-xml encoding="MathML-Content" id="S9.T11.17.17.17.17.17.17.17.3.m3.1b"><ci id="S9.T11.17.17.17.17.17.17.17.3.m3.1.1.cmml" xref="S9.T11.17.17.17.17.17.17.17.3.m3.1.1">⟨</ci></annotation-xml><annotation encoding="application/x-tex" id="S9.T11.17.17.17.17.17.17.17.3.m3.1c">\langle</annotation><annotation encoding="application/x-llamapun" id="S9.T11.17.17.17.17.17.17.17.3.m3.1d">⟨</annotation></semantics></math>the second image is better<math alttext="\rangle" class="ltx_Math" display="inline" id="S9.T11.18.18.18.18.18.18.18.4.m4.1"><semantics id="S9.T11.18.18.18.18.18.18.18.4.m4.1a"><mo id="S9.T11.18.18.18.18.18.18.18.4.m4.1.1" stretchy="false" xref="S9.T11.18.18.18.18.18.18.18.4.m4.1.1.cmml">⟩</mo><annotation-xml encoding="MathML-Content" id="S9.T11.18.18.18.18.18.18.18.4.m4.1b"><ci id="S9.T11.18.18.18.18.18.18.18.4.m4.1.1.cmml" xref="S9.T11.18.18.18.18.18.18.18.4.m4.1.1">⟩</ci></annotation-xml><annotation encoding="application/x-tex" id="S9.T11.18.18.18.18.18.18.18.4.m4.1c">\rangle</annotation><annotation encoding="application/x-llamapun" id="S9.T11.18.18.18.18.18.18.18.4.m4.1d">⟩</annotation></semantics></math>. The reason is <math alttext="\langle" class="ltx_Math" display="inline" id="S9.T11.19.19.19.19.19.19.19.5.m5.1"><semantics id="S9.T11.19.19.19.19.19.19.19.5.m5.1a"><mo id="S9.T11.19.19.19.19.19.19.19.5.m5.1.1" stretchy="false" xref="S9.T11.19.19.19.19.19.19.19.5.m5.1.1.cmml">⟨</mo><annotation-xml encoding="MathML-Content" id="S9.T11.19.19.19.19.19.19.19.5.m5.1b"><ci id="S9.T11.19.19.19.19.19.19.19.5.m5.1.1.cmml" xref="S9.T11.19.19.19.19.19.19.19.5.m5.1.1">⟨</ci></annotation-xml><annotation encoding="application/x-tex" id="S9.T11.19.19.19.19.19.19.19.5.m5.1c">\langle</annotation><annotation encoding="application/x-llamapun" id="S9.T11.19.19.19.19.19.19.19.5.m5.1d">⟨</annotation></semantics></math>give your reason here<math alttext="\rangle" class="ltx_Math" display="inline" id="S9.T11.20.20.20.20.20.20.20.6.m6.1"><semantics id="S9.T11.20.20.20.20.20.20.20.6.m6.1a"><mo id="S9.T11.20.20.20.20.20.20.20.6.m6.1.1" stretchy="false" xref="S9.T11.20.20.20.20.20.20.20.6.m6.1.1.cmml">⟩</mo><annotation-xml encoding="MathML-Content" id="S9.T11.20.20.20.20.20.20.20.6.m6.1b"><ci id="S9.T11.20.20.20.20.20.20.20.6.m6.1.1.cmml" xref="S9.T11.20.20.20.20.20.20.20.6.m6.1.1">⟩</ci></annotation-xml><annotation encoding="application/x-tex" id="S9.T11.20.20.20.20.20.20.20.6.m6.1c">\rangle</annotation><annotation encoding="application/x-llamapun" id="S9.T11.20.20.20.20.20.20.20.6.m6.1d">⟩</annotation></semantics></math>. "}</span></span>
</span></span><span class="ltx_text" id="S9.T11.20.20.20.20.23"></span><span class="ltx_text" id="S9.T11.20.20.20.20.24" style="font-size:144%;"></span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the prompts used in a user study to evaluate the performance of the Diffusion-4K model.  It outlines the instructions given to participants for describing images (image caption task) and for comparing pairs of images based on visual aesthetics, adherence to the prompt, and the level of fine detail present (preference study task).  The prompts are designed to elicit specific responses from participants, focusing on different aspects of image quality. The table shows the separate instructions for the image captioning and preference study tasks and then presents the specific prompts used within the two tasks.
> <details>
> <summary>read the caption</summary>
> Table 11: Designed prompts for image caption and preference study with GPT-4o.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.18352/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18352/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18352/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18352/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18352/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18352/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18352/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18352/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18352/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18352/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18352/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18352/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18352/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18352/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18352/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18352/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18352/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}