---
title: "SeedVR: Seeding Infinity in Diffusion Transformer Towards Generic Video Restoration"
summary: "SeedVR: A novel diffusion transformer revolutionizes generic video restoration by efficiently handling arbitrary video lengths and resolutions, achieving state-of-the-art performance."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Nanyang Technological University",]
showSummary: true
date: 2025-01-02
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.01320 {{< /keyword >}}
{{< keyword icon="writer" >}} Jianyi Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-03 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.01320" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.01320" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.01320/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing video restoration methods struggle with high-resolution, long videos due to computational constraints of self-attention mechanisms.  Patch-based approaches are slow, and attention designs lead to performance degradation when dealing with resolutions different from those used during training.  Diffusion-based models show promise but also face limitations in generation and sampling efficiency.

SeedVR solves these issues with a novel diffusion transformer architecture using shifted window attention. This design enables efficient processing of arbitrary-length and resolution videos.  The casual video autoencoder further improves training and inference efficiency.  Extensive experiments demonstrate SeedVR's superior performance and speed across various benchmarks, making it a strong baseline for future VR research.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SeedVR, a novel diffusion transformer, significantly improves video restoration by efficiently processing videos of any length and resolution. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} SeedVR uses a shifted window attention mechanism and a causal video autoencoder for enhanced efficiency and scalability. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} SeedVR achieves state-of-the-art results on various benchmarks, outperforming existing methods, especially in real-world scenarios. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because **it addresses the limitations of existing video restoration methods** by proposing SeedVR, a novel diffusion transformer that efficiently handles videos of arbitrary length and resolution.  **SeedVR's superior performance on various benchmarks**, especially in real-world scenarios, makes it a significant advancement in the field. This work also **opens new avenues for large-scale training of diffusion models for video processing** and inspires future research in efficient attention mechanisms for high-resolution video tasks.

------
#### Visual Insights



![](https://arxiv.org/html/2501.01320/x2.png)

> 🔼 Figure 1 presents a comparative analysis of SeedVR's speed and performance against other state-of-the-art video restoration methods.  SeedVR achieves superior visual quality, exhibiting finer details and enhanced realism. Notably, despite having significantly more parameters (2.48B) than most competitors, SeedVR operates over twice as fast.  Furthermore, it demonstrates comparable efficiency to the Stable Diffusion Upscaler, even with a fivefold increase in model size.  This highlights SeedVR's efficiency and superior restoration capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 1: Speed and performance comparisons. SeedVR demonstrates impressive restoration capabilities, offering fine details and enhanced visual realism. Despite its 2.48B parameters, SeedVR is over 2×2\times2 × faster than existing diffusion-based video restoration approaches [80, 64, 20]. With delicate designs, SeedVR is as efficient as the Stable Diffusion Upscaler [2], even with five times the parameter count. (Zoom-in for best view)
> </details>





{{< table-caption >}}
Dataset|Metrics|Real-ESRGAN [56]|SD ×4 Upscaler [2]|ResShift [74]|RealViFormer [77]|MGLD-VSR [64]|Upscale-A-Video [80]|VEhancer [20]|Ours
---|---|---|---|---|---|---|---|---
SPMCS|PSNR ↑|22.55|22.75|23.14|24.19|23.41|22.30|18.20|22.37
SPMCS|SSIM ↑|0.637|0.535|0.598|0.663|0.633|0.567|0.507|0.607
SPMCS|LPIPS ↓|0.406|0.554|0.547|0.378|0.369|0.489|0.455|0.341
SPMCS|DISTS ↓|0.189|0.247|0.261|0.186|0.166|0.245|0.194|0.141
SPMCS|NIQE ↓|3.355|5.883|6.246|3.431|3.315|5.280|4.328|3.207
SPMCS|MUSIQ ↑|62.78|42.09|55.11|65.25|58.56|54.94|54.94|64.28
SPMCS|CLIP-IQA ↑|0.451|0.402|0.598|0.424|0.495|0.366|0.334|0.587
SPMCS|DOVER ↑|8.566|4.413|5.342|10.508|8.471|4.985|7.807|10.508
UDM10|PSNR ↑|24.78|26.01|25.56|26.70|26.11|25.28|21.48|25.76
UDM10|SSIM ↑|0.763|0.698|0.743|0.796|0.772|0.755|0.691|0.771
UDM10|LPIPS ↓|0.270|0.424|0.417|0.285|0.273|0.314|0.349|0.231
UDM10|DISTS ↓|0.156|0.234|0.211|0.166|0.144|0.187|0.175|0.116
UDM10|NIQE ↓|4.365|6.014|5.941|3.922|3.814|5.314|4.883|3.514
UDM10|MUSIQ ↑|54.18|30.33|51.34|59.14|58.01|43.92|46.37|59.14
UDM10|CLIP-IQA ↑|0.398|0.277|0.537|0.397|0.443|0.291|0.304|0.524
UDM10|DOVER ↑|7.958|3.169|5.111|10.537|7.717|7.108|8.087|10.537
REDS30|PSNR ↑|21.67|22.94|22.72|23.34|22.74|22.57|19.83|20.44
REDS30|SSIM ↑|0.573|0.563|0.572|0.615|0.578|0.578|0.545|0.534
REDS30|LPIPS ↓|0.389|0.551|0.509|0.328|0.271|0.497|0.508|0.346
REDS30|DISTS ↓|0.179|0.268|0.234|0.154|0.097|0.271|0.229|0.138
REDS30|NIQE ↓|2.879|6.718|6.258|3.032|2.550|5.374|4.615|2.729
REDS30|MUSIQ ↑|57.97|25.57|47.50|58.60|62.28|32.41|37.95|57.55
REDS30|CLIP-IQA ↑|0.403|0.202|0.554|0.392|0.444|0.228|0.245|0.451
REDS30|DOVER ↑|5.552|2.737|3.712|6.673|6.544|3.704|5.549|6.673
YouHQ40|PSNR ↑|22.31|22.51|22.67|23.26|22.62|22.08|18.68|21.15
YouHQ40|SSIM ↑|0.605|0.528|0.579|0.606|0.576|0.548|0.510|0.554
YouHQ40|LPIPS ↓|0.342|0.518|0.432|0.362|0.356|0.435|0.449|0.298
YouHQ40|DISTS ↓|0.169|0.242|0.215|0.193|0.166|0.236|0.175|0.118
YouHQ40|NIQE ↓|3.721|5.954|5.458|3.172|3.255|5.291|4.161|2.913
YouHQ40|MUSIQ ↑|56.45|36.74|54.96|61.88|63.95|49.37|54.18|67.45
YouHQ40|CLIP-IQA ↑|0.371|0.328|0.590|0.438|0.509|0.328|0.352|0.635
YouHQ40|DOVER ↑|10.92|5.761|7.618|12.788|11.444|7.832|12.178|13.424
VideoLQ|NIQE ↓|4.014|4.584|4.829|4.007|3.888|5.545|4.264|3.874
VideoLQ|MUSIQ ↑|60.45|43.64|59.69|57.50|59.50|41.08|52.59|54.41
VideoLQ|CLIP-IQA ↑|0.361|0.296|0.487|0.312|0.350|0.253|0.289|0.355
VideoLQ|DOVER ↑|8.561|4.349|6.749|6.823|7.325|5.567|8.719|8.009
AIGC38|NIQE ↓|4.942|4.399|4.853|4.444|4.162|5.743|4.759|3.955
AIGC38|MUSIQ ↑|58.39|56.72|64.38|58.73|62.03|51.32|53.36|65.91
AIGC38|CLIP-IQA ↑|0.442|0.554|0.660|0.473|0.528|0.378|0.395|0.638
AIGC38|DOVER ↑|12.275|10.547|12.082|10.245|11.008|10.297|12.178|13.424{{< /table-caption >}}

> 🔼 Table 1 presents a quantitative comparison of various Video Super-Resolution (VSR) methods across six benchmark datasets.  These datasets encompass diverse sources and types of video degradation: synthetic data (SPMCS, UDM10, REDS30, and YouHQ40), real-world data (VideoLQ), and AI-generated content (AIGC38). The table evaluates the performance of each method using several metrics, including Peak Signal-to-Noise Ratio (PSNR), Structural Similarity Index (SSIM), Learned Perceptual Image Patch Similarity (LPIPS), and others.  The best and second-best results for each metric and dataset are highlighted in red and orange, respectively, providing a clear visual representation of comparative performance across different VSR approaches and video degradation types.
> <details>
> <summary>read the caption</summary>
> Table 1:  Quantitative comparisons on VSR benchmarks from diverse sources, i.e., synthetic (SPMCS, UDM10, REDS30, YouHQ40), real (VideoLQ), and AIGC (AIGC38) data. The best and second performances are marked in red and orange, respectively.
> </details>





### In-depth insights


#### SeedVR: Background
SeedVR's background likely involves a discussion of existing video restoration techniques and their limitations.  It would likely cover traditional methods like CNN-based approaches and their struggles with long-range dependencies, especially in high-resolution videos.  The limitations of patch-based methods, their computational costs, and the artifacts they produce, would also be discussed. **Diffusion models**, while promising for image restoration, also present challenges in video restoration.  SeedVR's background would highlight the significant computational expense and resolution constraints of existing diffusion-based video restoration approaches due to full-attention mechanisms.  It would also contextualize the choice of a **diffusion transformer** architecture, potentially emphasizing its ability to handle longer sequences and higher resolutions compared to earlier methods.  The section might also briefly touch upon the use of attention mechanisms in existing models, the limitations of smaller window sizes, and the necessity for a design that can efficiently process arbitrarily sized videos and maintain high quality. **Finally**, the prior art related to causal video autoencoders and progressive training techniques could be discussed, setting the stage for SeedVR's innovative approach.

#### Swin-MMDiT: Design
The Swin-MMDiT design is a crucial innovation in SeedVR, addressing the limitations of traditional full-attention mechanisms in diffusion transformers for video restoration.  **It replaces full self-attention with a more computationally efficient window-based attention, specifically using Swin Transformer's shifted window approach.** This allows SeedVR to handle arbitrarily sized videos without the quadratic complexity associated with full attention.  **A key enhancement is the use of significantly larger attention windows (64x64) in a compressed latent space**, enabling the model to capture long-range dependencies within the video sequences.  **To address uneven window sizes near boundaries, a 3D rotary position embedding is employed**, maintaining consistent attention across various input resolutions.  By combining these techniques, Swin-MMDiT offers a **scalable and efficient architecture** well-suited for high-resolution video restoration tasks, overcoming the major challenges in existing methods.

#### Casual VAE: Impact
The conceptual heading 'Casual VAE: Impact' invites exploration of a causal variational autoencoder's effects within a video restoration framework.  A causal VAE, by incorporating temporal dependencies in its encoding, likely results in **more efficient video compression** compared to standard autoencoders. This efficiency translates to faster training times and lower computational costs during video restoration.  Moreover, a causal approach may lead to **improved reconstruction quality**, as temporal information is preserved, enhancing the consistency and coherence of the restored video. The impact likely extends beyond computational advantages.  By better capturing temporal relationships, the causal VAE could facilitate **more effective temporal alignment and artifact removal**, particularly beneficial in handling real-world videos with varied degradation types.  In essence, a causal VAE's impact is multifaceted, affecting training efficiency, reconstruction quality, and the overall performance of the video restoration system.  Its effectiveness depends critically on its architectural design and training data, demanding further investigation into its strengths and weaknesses.

#### Large-Scale Training
The section on 'Large-Scale Training' highlights the challenges and strategies employed to train a robust video restoration model.  The authors acknowledge the difficulty of training on massive, high-resolution video datasets, a problem often limiting the generalization capabilities of existing models. **Their approach involves a mixed dataset of images and videos**, leveraging the model's flexibility to learn from diverse data sources.  To enhance efficiency, they implement **pre-computation of latents and text embeddings**, significantly accelerating training times. A crucial aspect is the **progressive growing of resolution and duration**, starting with low-resolution, short videos and gradually increasing complexity.  This technique is combined with the **injection of noise to the condition**, aiming to bridge the gap between synthetic and real-world degradation patterns.  These multifaceted strategies showcase a commitment to large-scale training methodologies, ultimately contributing to SeedVR's superior performance and generalization on various benchmarks.

#### Future of SeedVR
The future of SeedVR looks promising, building upon its strengths in handling arbitrary video resolutions and lengths.  **Further research could focus on improving sampling efficiency**, potentially through advancements in diffusion model architectures or optimization techniques.  **Scaling SeedVR to even larger datasets and higher resolutions** would further enhance its capabilities for generating realistic and high-quality video restorations. Exploring **different types of video degradation and developing more robust training strategies** would broaden its applicability to real-world scenarios.  **Integration with other AI models**, such as those focused on video editing or generation, could unlock new creative applications. Finally, addressing the computational cost, particularly for very high-resolution or long videos, will be crucial for widespread adoption.  **Improving the model's understanding of temporal dependencies** and enhancing its ability to maintain fine details over extended sequences are key areas for continued development.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.01320/x3.png)

> 🔼 Figure 2 illustrates the architecture of SeedVR, focusing on its Swin-MMDiT block.  This block improves upon traditional transformer blocks by incorporating a shifted window attention mechanism. This addresses the limitations of standard attention mechanisms, which struggle with high-resolution videos and varying input lengths. The shifted window approach uses large windows in the center of the input for long-range dependencies and smaller, variable-sized windows at the edges to handle boundaries effectively. This design allows SeedVR to efficiently process videos of any length and resolution, a key advantage over previous methods.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Model architecture and the details of Swin-MMDIT of SeedVR. Our approach introduces a shifted window mechanism into the transformer block, bypassing the resolution constrain of vanilla attention. We further adopt large attention windows around the center and variable-sized windows near the boundary, enabling long-range dependency capturing given inputs of any length and size.
> </details>



![](https://arxiv.org/html/2501.01320/x4.png)

> 🔼 Figure 3 illustrates the architecture of the causal video variational autoencoder (CVVAE) employed in SeedVR.  Unlike approaches that simply adapt image autoencoders for video, SeedVR's CVVAE is specifically designed for video processing.  It incorporates spatial and temporal compression to efficiently handle long videos, improving both training speed and the quality of the video reconstruction.
> <details>
> <summary>read the caption</summary>
> Figure 3:  The model architecture of casual video autoencoder. In contrast to naively inflating an existing image autoenoder, we redesign a casual video VAE with spatial-temporal compression capability to achieve a strong reconstruction capability.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Methods | Params (M) | Temporal Compression | Spatial Compression | Latent Channel | PSNR ↑ | SSIM ↑ | LPIPS ↓ | rFVD ↓ |
|---|---|---|---|---|---|---|---|---|
| SD 2.1 [45] | 83.7 | - | 8 | 4 | 29.50 | 0.9050 | 0.0998 | 8.14 |
| VEnhancer [20] | 97.7 | - | 8 | 4 | 30.81 | 0.9356 | 0.0751 | 11.10 |
| Cosmos [44] | 90.2 | 4 | 8 | 16 | 32.34 | 0.9484 | 0.0847 | 13.02 |
| OpenSora [79] | 393.3 | 4 | 8 | 4 | 27.70 | 0.8893 | 0.1661 | 47.04 |
| OpenSoraPlan v1.3 [28] | 147.3 | 4 | 8 | 16 | 30.41 | 0.9280 | 0.0976 | 27.70 |
| CogVideoX [66] | 215.6 | 4 | 8 | 16 | 34.30 | 0.9650 | 0.0623 | 6.06 |
| Ours | 250.6 | 4 | 8 | 16 | 33.83 | 0.9643 | 0.0517 | 1.85 |{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of various Variational Autoencoder (VAE) models frequently used in existing latent diffusion models.  The comparison focuses on key metrics such as PSNR, SSIM, LPIPS, and rFVD, providing a detailed performance evaluation across different VAEs. The best and second-best results for each metric are highlighted in red and orange, respectively, for easy identification.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative comparisons on VAE models commonly used in existing latent diffusion models [45, 20, 44, 79, 28, 66]. The best and second performances are marked in red and orange, respectively.
> </details>

{{< table-caption >}}
| Temp. Win. | Spat. Win. Size | Spat. Win. Size | Spat. Win. Size | Spat. Win. Size | Length |
|---|---|---|---|---|---| 
|  8 × 8 | 16 × 16 | 32 × 32 | 64 × 64 | 455.49 | t = 1 |
|  |  |  |  | 138.29 |  |
|  |  |  |  | 58.37 |  |
|  |  |  |  | 23.68 |  |
|  8 × 8 | 16 × 16 | 32 × 32 | 64 × 64 | 345.78 | t = 5 |
|  |  |  |  | 110.01 |  |
|  |  |  |  | 46.49 |  |
|  |  |  |  | 20.29 |  |{{< /table-caption >}}
> 🔼 This table presents the training time, measured in seconds per iteration, for the SeedVR model with various window sizes. Different window sizes in spatial and temporal dimensions were used during training. The results demonstrate a significant increase in training time as the window sizes decrease, highlighting the efficiency of using larger windows for training.
> <details>
> <summary>read the caption</summary>
> Table 3: Training efficiency (sec/iter) with different window sizes.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.01320/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.01320/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.01320/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.01320/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.01320/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.01320/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.01320/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.01320/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.01320/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.01320/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.01320/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.01320/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.01320/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.01320/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.01320/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}