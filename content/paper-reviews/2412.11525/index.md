---
title: "Sequence Matters: Harnessing Video Models in 3D Super-Resolution"
summary: "Leveraging video models, researchers achieve state-of-the-art 3D super-resolution by generating 'video-like' sequences from unordered images, eliminating artifacts and computational demands."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 Sungkyunkwan University",]
showSummary: true
date: 2024-12-16
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.11525 {{< /keyword >}}
{{< keyword icon="writer" >}} Hyun-kyu Ko et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-23 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.11525" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.11525" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/sequence-matters-harnessing-video-models-in" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.11525/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current 3D super-resolution methods struggle with view inconsistencies due to independent processing of images, and existing solutions using video super-resolution (VSR) models face limitations due to distribution shifts and computational cost.  The problem is significant because high-fidelity 3D models are crucial for many applications but acquiring high-resolution multi-view images can be challenging.

This paper proposes a novel approach that leverages VSR models to address these issues.  Instead of fine-tuning VSR models, it introduces simple, yet effective algorithms to generate 'video-like' sequences of low-resolution images, eliminating artifacts, improving spatial consistency, and achieving state-of-the-art results on standard benchmarks. The proposed method utilizes ground truth images, avoiding the distribution mismatch problems associated with using rendered images.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A novel method using video super-resolution (VSR) models achieves state-of-the-art results in 3D super-resolution. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Simple algorithms effectively order unordered multi-view images into 'video-like' sequences for improved VSR performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The approach eliminates the need for computationally expensive 3D model fine-tuning, resulting in a more efficient and practical solution. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because **it significantly advances 3D super-resolution**, a crucial area in computer vision and graphics. By introducing a novel approach using video super-resolution models, it overcomes limitations of existing methods. This work **opens up new avenues for research** in efficient and high-quality 3D model reconstruction from low-resolution data, impacting various applications including augmented reality and virtual environments.  The surprisingly simple yet effective algorithms proposed offer a practical and readily implementable solution for researchers.

------
#### Visual Insights



![](https://arxiv.org/html/2412.11525/extracted/6077927/figures/stripy_and_blob_artifacts.jpg)

> 🔼 This figure compares the results of video super-resolution (VSR) applied to two different types of low-resolution (LR) videos.  The first set of LR videos ('VSR-Render') were rendered from a 3D model created using low-resolution multi-view images. The second set ('VSR-GT') are ground truth LR videos, meaning they were created by downsampling high-resolution videos. The image shows that the VSR applied to the rendered videos suffers from significant visual artifacts, including streaking and blotchy regions, while the VSR applied to the ground truth videos produces cleaner results. This highlights the negative impact of artifacts present in images rendered from low-resolution 3D models on the performance of VSR methods.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustration of stripy or blob-like artifacts generated in VSR outputs of LR videos rendered from 3DGS. ‘VSR-Render’ shows the VSR outputs of the LR rendered videos, while ‘VSR-GT’ displays the VSR outputs of the ground truth (GT) LR videos.
> </details>





{{< table-caption >}}
| Index | L |  | R |  |
|---|---|---|---|---|
| | S | ALS | S | ALS |
| 1 | 34.06 | 37.18 | 34.53 | 35.52 |
| 2 | 33.12 | 34.33 | 34.67 | 36.63 |
| 3 | 32.90 | 33.37 | 31.62 | 34.26 |
| 4 | 33.47 | 34.41 | 33.68 | 34.29 |
| 5 | 34.07 | 35.68 | 32.77 | 35.31 |
| 6 | 32.65 | 34.41 | 32.05 | 32.77 |
| 7 | 32.71 | 33.43 | 32.68 | 34.66 |{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of two proposed image ordering algorithms for 3D super-resolution: the simple greedy algorithm (S) and the adaptive-length subsequence algorithm (ALS).  The algorithms aim to arrange input images into a sequence suitable for video super-resolution (VSR) processing.  The table shows the Peak Signal-to-Noise Ratio (PSNR) values for both the left and right images within two image pairs selected from Figure 4. This illustrates how the different ordering strategies impact the visual quality of the resulting 3D model, specifically concerning the consistency and smoothness of neighboring views.
> <details>
> <summary>read the caption</summary>
> Table 1: The quantitative results of the proposed ordering algorithms. S: the simple greedy algorithm, ALS: the adaptive-length subsequence. L and R denote the PSNR of the left and right image in two image pairs from Fig. 4.
> </details>





### In-depth insights


#### 3D-SR via VSR
The concept of "3D-SR via VSR" proposes a novel approach to 3D super-resolution (3D-SR) by leveraging the strengths of video super-resolution (VSR) models.  Traditional 3D-SR methods often struggle with view consistency, as they process images independently.  **VSR, however, excels at maintaining consistency across video frames by exploiting temporal relationships**. This suggests that applying VSR to sequences of multi-view images could significantly improve 3D reconstruction quality. The key challenges would be in effectively creating a suitable video sequence from potentially unordered multi-view images and addressing potential distribution mismatches between training data (natural videos) and rendered data from 3D models.  Successfully addressing these challenges could **yield significant improvements in 3D reconstruction accuracy and detail**, surpassing existing SISR-based methods.

#### Greedy Seq. Alg.
A greedy sequential algorithm, in the context of 3D super-resolution from multi-view images, aims to order a set of unordered input images into a sequence that is optimal for video super-resolution (VSR) models.  **The core idea is to create a 'video-like' sequence where adjacent frames are visually similar, mimicking the temporal coherence expected in video data**. This approach is computationally efficient as it avoids complex optimization, but it is inherently suboptimal. The algorithm's performance is heavily influenced by the chosen similarity measure (e.g., camera pose or visual features) and the choice of the starting image, which can lead to uneven sequence quality.  **While simple, this approach's effectiveness highlights the surprisingly good robustness of VSR models to some degree of input disorder**. The trade-off is explored between computational simplicity and potential degradation in overall super-resolution quality; this suggests a balance must be struck between computational cost and the need for high accuracy.

#### Artifact Mitigation
Artifact mitigation is a crucial aspect of 3D super-resolution from multi-view images.  The paper highlights how the use of video super-resolution (VSR) models can unexpectedly introduce stripy or blob-like artifacts due to a distribution mismatch between training data (natural videos) and testing data (rendered LR videos from 3D models).  **The core challenge lies in aligning low-resolution (LR) images effectively to create a 'video-like' sequence suitable for VSR processing.**  This requires careful consideration of ordering algorithms to maximize spatial consistency and avoid abrupt transitions that amplify artifacts.  **The paper proposes surprisingly simple, yet effective, ordering algorithms such as a simple greedy approach and an adaptive-length subsequence method**. While pose-based and feature-based similarity measures are discussed, the optimal approach likely depends on the dataset characteristics. Ultimately, this strategy attempts to provide the VSR model with appropriate input, minimizing artifacts without computationally expensive fine-tuning of the VSR model itself.

#### VSR Model Choice
The choice of Video Super-Resolution (VSR) model is **critical** for success in this 3D super-resolution approach.  The paper highlights the importance of choosing a model robust to artifacts present in the rendered low-resolution videos from 3D scene representations like 3DGS.  **Fine-tuning** a VSR model on these specific rendered videos, while effective, is computationally expensive and data-intensive.  Therefore, the focus shifts to selecting a pre-trained VSR model capable of generalizing well to these slightly imperfect input sequences.  The paper explores this trade-off, demonstrating that a carefully selected pre-trained VSR model, coupled with intelligent data sequencing, can effectively enhance 3D model reconstruction even without needing a customized training phase.  This **avoids the distribution shift** problem while still leveraging the strengths of VSR models for improved view consistency and detail in the final high-resolution 3D model.

#### Future Works
Future research directions stemming from this 3D super-resolution work could explore **more sophisticated sequence ordering algorithms** that go beyond greedy approaches.  Investigating advanced techniques like deep reinforcement learning for optimal sequence generation would be particularly impactful.  Another avenue is to **explore the use of different VSR models and architectures**, comparing their performance and suitability for this specific task.  A more in-depth analysis of the impact of various feature extraction methods on sequence quality, and a **deeper investigation into handling datasets with inconsistent camera poses** and challenging spatial relationships is also crucial.  Finally, **extending the framework to handle even lower-resolution inputs** and higher-resolution outputs warrants attention, along with a rigorous comparison to a wider range of baselines, particularly those employing diffusion models.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.11525/extracted/6077927/figures/main.jpg)

> 🔼 This figure illustrates the proposed 3D super-resolution method.  It starts with low-resolution (LR) multi-view images.  These images are then processed using a simple greedy algorithm to create ordered subsequences,  which are essentially short video-like sequences of images.  Multiple thresholds are applied to control the length and smoothness of these subsequences. The subsequences are then fed into a video super-resolution (VSR) model to upscale them to high-resolution (HR) images. Finally, a 3D Gaussian Splatting (3DGS) model is trained on these HR images to reconstruct a high-fidelity 3D model.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of the proposed method. Given LR multi-view images, we generate subsequences (Sec. 3.3) starting from each image using a simple greedy algorithm (Sec. 3.2) and these subsequences are bounded by multiple thresholds (Sec. 3.3). Finally, we train a 3DGS model for 3D reconstruction using the upsampled HR images.
> </details>



![](https://arxiv.org/html/2412.11525/extracted/6077927/figures/subsequence.jpg)

> 🔼 Figure 3 illustrates the process of generating subsequences from an unordered set of multi-view images.  Panel (a) shows the initial, unordered dataset. Panel (b) shows the result of applying a simple greedy algorithm (Algorithm 1 from the paper), which attempts to create a sequence of images by selecting the most similar image to the current one. However, this greedy approach can result in abrupt transitions and misalignments, as highlighted in panel (c). The red dotted lines in (c) indicate where the simple greedy algorithm fails to find a smooth sequence and abrupt changes occur. To address this issue, the authors propose splitting the sequence into multiple subsequences based on a threshold of the pose difference between consecutive frames, ensuring smoother and more consistent image sequences for subsequent processing.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustration of subsequence generation. (a) is an unordered multi-view image dataset. (b) is the result of using a simple greedy algorithm, Alg. 1. (c) highlights misalignments incurred by the algorithm, and we propose to split it into subsequences based on a pose difference threshold (red dotted line) between consecutive frames.
> </details>



![](https://arxiv.org/html/2412.11525/extracted/6077927/figures/lego_simple_greedy_algorithm.jpg)

> 🔼 This figure displays an example of the results obtained from applying the simple greedy algorithm to the Lego scene within the NeRF-synthetic dataset.  The algorithm is used to order a set of unordered multi-view images to create a sequence suitable for processing with a Video Super-Resolution (VSR) model. The red highlights draw attention to two adjacent images in the sequence that demonstrate abrupt visual transitions between them. These transitions result from the misalignments caused by the limitations of the simple greedy algorithm in properly ordering the images according to their spatial relationships. These misalignments highlight the need for more robust ordering techniques, which are explored later in the paper.
> <details>
> <summary>read the caption</summary>
> Figure 4: An example result from the simple greedy algorithm applied to the NeRF-synthetic dataset (Lego). Two neighboring images highlighted in red demonstrate abrupt transitions caused by misalignments.
> </details>



![](https://arxiv.org/html/2412.11525/extracted/6077927/figures/baseline_blender.jpg)

> 🔼 This figure displays a qualitative comparison of different super-resolution methods on the NeRF-synthetic dataset.  Each row shows the results for a single scene, with columns representing bicubic upsampling, SwinIR, Render-SR, NeRF-SR, DiSR-NeRF, and the proposed method ('Ours'), followed by the ground truth image ('GT').  The PSNR values (peak signal-to-noise ratio) of each upsampled image relative to the ground truth are embedded within each image patch.  The results highlight the superior performance of the proposed method, particularly in preserving high-frequency details that are often lost or blurred in the other methods.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative results on the NeRF-synthetic dataset. The PSNR values against GT are embedded in each image patch. Ours have shown superior results than the existing baselines, especially for high-frequency details.
> </details>



![](https://arxiv.org/html/2412.11525/extracted/6077927/figures/baseline_mip360.jpg)

> 🔼 This figure displays qualitative results from the Mip-NeRF 360 dataset, a collection of real-world scenes.  It presents a comparison of the image quality produced by different super-resolution methods, including the proposed method and several baselines (Bicubic and SwinIR). Each image patch shows a zoomed-in section with the Peak Signal-to-Noise Ratio (PSNR) value calculated against the ground truth image.  The results highlight the superiority of the proposed approach, particularly in preserving and enhancing high-frequency details, which often suffer degradation in other techniques.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative results on Mip-NeRF 360 dataset. The PSNR values against GT are embedded in each image patch. Ours have shown superior results than the existing baselines, especially for high-frequency details.
> </details>



![](https://arxiv.org/html/2412.11525/extracted/6077927/figures/PSNR_LPIPS.jpg)

> 🔼 This figure compares the performance of the proposed method against several baseline methods for 3D super-resolution.  It shows a quantitative comparison using PSNR (Peak Signal-to-Noise Ratio) and LPIPS (Learned Perceptual Image Patch Similarity) metrics across multiple object categories from the NeRF synthetic dataset.  The results demonstrate that the proposed approach significantly outperforms the baselines in terms of both objective and perceptual image quality.
> <details>
> <summary>read the caption</summary>
> Figure 7: Comparison with baselines.
> </details>



![](https://arxiv.org/html/2412.11525/extracted/6077927/figures/misalignment_trends_all_objects.jpg)

> 🔼 This figure visualizes the frequency of misalignment errors along the sequence of images processed by the algorithm. The x-axis represents the position within the sequence, categorized into quartiles (0-25%, 25-50%, 50-75%, 75-100%). The y-axis shows the average number of misalignments observed in each quartile across various objects.  The graph reveals a trend where misalignments become more frequent towards the end of the sequence, indicating that the greedy approach to ordering images becomes less accurate as the algorithm progresses.
> <details>
> <summary>read the caption</summary>
> Figure 8: Misalignment trends within a sequence.
> </details>



![](https://arxiv.org/html/2412.11525/extracted/6077927/figures/misalignment.jpg)

> 🔼 This figure illustrates the impact of misalignments in sequences of images on the quality of 3D reconstruction.  It shows how errors accumulate as sequence length increases, especially towards the end.  The misalignment occurs because of inaccuracies in connecting images using ORB features; longer sequences increase the likelihood of erroneously linking unrelated images. This leads to unreliable information during upsampling, impacting the overall quality of the 3D reconstruction.
> <details>
> <summary>read the caption</summary>
> Figure 9: Misalignment Error.
> </details>



![](https://arxiv.org/html/2412.11525/extracted/6077927/figures/appendix_qualitative_blender.jpg)

> 🔼 Figure 10 presents a qualitative comparison of super-resolution results on the NeRF-synthetic dataset.  Multiple methods, including bicubic interpolation, SwinIR, Render-SR, NeRF-SR, DiSR-NeRF, and the authors' proposed approach, were used to generate high-resolution images from low-resolution inputs. The figure displays example images from each method for several scenes. PSNR values (peak signal-to-noise ratio), comparing the generated images to the ground truth (GT), are embedded within each image patch, providing a quantitative assessment of the quality. The authors highlight that their method surpasses the baselines, particularly in capturing high-frequency details, which contribute to a more realistic and visually appealing outcome.
> <details>
> <summary>read the caption</summary>
> Figure 10: Qualitative results on the NeRF-synthetic dataset. The PSNR values against GT are embedded in each image patch. Ours have shown superior results than the existing baselines, especially for high-frequency details.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
|       | S     | ALS   |
|-------|-------|-------|
| Chair | 32.11 | 32.74 |
| Drums | 29.74 | 30.26 |
| Ficus | 35.31 | 35.96 |
| Hotdog | 37.85 | 38.32 |
| Lego  | 33.30 | 34.73 |
| Materials | 35.24 | 35.85 |
| Mic   | 31.38 | 31.62 |
| Ship  | 30.03 | 30.48 |{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of two proposed image ordering algorithms: the simple greedy algorithm and the adaptive-length subsequence algorithm.  The algorithms are evaluated on the NeRF-synthetic dataset, a benchmark dataset commonly used for 3D super-resolution tasks.  The comparison is based on the PSNR (Peak Signal-to-Noise Ratio) metric.  Each row represents a different scene from the dataset, and the columns show the PSNR scores achieved by each of the algorithms for that scene. Higher PSNR values indicate better image quality and thus, more effective ordering of the images for subsequent processing. This table demonstrates the improved performance of the adaptive-length subsequence algorithm over the simple greedy algorithm.
> <details>
> <summary>read the caption</summary>
> Table 2: The comparison of the proposed ordering algorithms in the NeRF-synthetic dataset.
> </details>

{{< table-caption >}}
| Method | PSNR↑ | SSIM↑ | LPIPS↓ |
|---|---|---|---| 
| Bicubic | 27.56 | 0.9150 | 0.1040 |
| SwinIR | 30.77 | 0.9501 | 0.0550 |
| Render-SR | 28.90 | 0.9346 | 0.0683 |
| NeRF-SR | 28.46 | 0.9210 | 0.0760 |
| ZS-SRT† | 29.69 | 0.9290 | 0.0690 |
| CROP† | 30.71 | 0.9459 | 0.0671 |
| FastSR-NeRF† | 30.47 | 0.9440 | 0.0750 |
| DiSR-NeRF | 26.00 | 0.8898 | 0.1226 |
| SRGS† | 30.83 | 0.9480 | 0.0560 |
| GaussianSR† | 28.37 | 0.9240 | 0.0870 |
| SuperGaussian† | 28.44 | 0.9459 | 0.0670 |
| Ours-ALS | **31.41** | **0.9520** | **0.0540** |
| 3DGS-HR | 33.31 | 0.9695 | 0.0303 |{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of various 3D super-resolution methods on the Blender dataset.  The task is to upscale low-resolution (LR) images (downsampled by a factor of 4) to high-resolution (HR) images.  The comparison focuses on three key metrics: Peak Signal-to-Noise Ratio (PSNR), Structural SIMilarity index (SSIM), and Learned Perceptual Image Patch Similarity (LPIPS).  Higher PSNR and SSIM values generally indicate better fidelity to the ground truth, while lower LPIPS indicates better perceptual similarity.  Note that some results are marked with a † symbol, indicating that those numbers were taken from the original publications and not reproduced by the authors of this paper due to unavailability of the original code.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of different methods for 3D super-resolution (×4→×1\times 4\rightarrow\times 1× 4 → × 1) in Blender Dataset. The numbers marked with † are sourced from their respective paper, as the code is not available at this time.
> </details>

{{< table-caption >}}
|       | VRT                     |       |       | IART                    |       |       | PSRT                    |       |       |
| :---- | :----------------------- | :---- | :---- | :----------------------- | :---- | :---- | :----------------------- | :---- | :---- |
| SISR  | 31.20                    | 0.9497 | 0.0567 | 31.10                    | 0.9484 | 0.0590 | 31.10                    | 0.9516 | 0.0543 |
| S     | 31.25                    | 0.9505 | 0.0557 | 31.32                    | 0.9513 | 0.0550 | 31.35                    | 0.9513 | 0.0548 |
| ALS   | 31.37                    | 0.9516 | 0.0544 | 31.35                    | 0.9514 | 0.0548 | 31.41                    | 0.9520 | 0.0540 |{{< /table-caption >}}
> 🔼 This table presents an ablation study comparing different video super-resolution (VSR) models and ordering strategies for 3D super-resolution.  It shows the performance (PSNR, SSIM, LPIPS) of three VSR models (VRT, IART, PSRT) under three conditions: Single-Image Super-Resolution (SISR) which processes each image independently, a simple greedy ordering algorithm (S) using features for similarity, and an adaptive-length subsequence generation algorithm (ALS) that combines features and pose for ordering, and uses multiple thresholds. The results are evaluated on the Blender dataset with a 4x downsampling factor. This helps to understand which VSR model and ordering approach works best for 3D super-resolution.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation comparison of Blender dataset (×4→×1\times 4\rightarrow\times 1× 4 → × 1) on various VSR models. SISR refers to Single-Image Super-Resolution (single image VSR), S refers to ordering by simple greedy algorithm (order: feature), and ALS refers to using adaptive-length subsequence (order: feature) with multi-threshold (threshold: pose).
> </details>

{{< table-caption >}}
| Metric | PSNR ↑ | SSIM ↑ | LPIPS ↓ |
|---|---|---|---| 
| S (last 25%) | 31.32 | 0.9511 | 0.0552 |
| ALS | 31.41 | 0.9520 | 0.0540 |{{< /table-caption >}}
> 🔼 This table demonstrates the effect of image misalignment on the quality of 3D super-resolution.  It compares the results of a simple greedy algorithm (S) and an adaptive-length subsequence algorithm (ALS) applied to a set of unordered images. The PSNR, SSIM, and LPIPS metrics are presented to assess the image quality resulting from the two different approaches.  The data showcases how the adaptive-length subsequence approach better handles the challenges posed by misaligned sequences, leading to improved 3D super-resolution results.
> <details>
> <summary>read the caption</summary>
> Table 5: Impact of misalignment on 3D super-resolution.
> </details>

{{< table-caption >}}
|       | chair | drums | ficus | hotdog | lego | materials | mic | ship | average |
| :---- | :----: | :----: | :----: | :----: | :----: | :----: | :----: | :----: | :----: |
| Bicubic | 29.02 | 23.75 | 28.24 | 31.86 | 27.46 | 26.47 | 27.97 | 25.71 | 27.56 |
| PSRT (SISR) | 30.94 | 25.56 | 33.49 | 35.82 | 32.20 | 30.06 | 31.75 | 28.96 | 31.10 |
| SwinIR+3DGS | 31.02 | 25.48 | 32.49 | 35.60 | 32.05 | 29.58 | 31.75 | 28.20 | 30.77 |
| Render-SR | 30.23 | 24.04 | 28.63 | 33.78 | 29.23 | 27.34 | 30.53 | 27.35 | 28.90 |
| NeRF-SR | 30.16 | 23.46 | 26.64 | 34.40 | 29.13 | 28.02 | 27.25 | 26.61 | 28.21 |
| DiSR-NeRF | 27.55 | 22.63 | 25.64 | 30.07 | 26.43 | 24.71 | 26.49 | 24.47 | 26.00 |
| CROP† | 31.53 | 24.99 | 31.50 | 35.62 | 32.88 | 29.16 | 31.76 | 28.23 | 30.71 |
| Ours-S | 31.33 | 25.58 | 33.71 | 35.95 | 32.98 | 30.09 | 31.91 | 29.26 | 31.35 |
| Ours-ALS | 31.36 | 25.65 | 33.69 | 36.18 | 33.03 | 30.17 | 31.93 | 29.26 | 31.41 |
| HR-3DGS | 35.79 | 26.14 | 34.84 | 37.72 | 35.77 | 29.97 | 35.36 | 30.89 | 33.31 |{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of per-object Peak Signal-to-Noise Ratio (PSNR) values on the synthetic Blender dataset.  The dataset was downsampled by a factor of 4 (4x to 1x) before processing.  The comparison includes several baseline methods (Bicubic, SwinIR + 3DGS, Render-SR, NeRF-SR, DiSR-NeRF, CROP) and the authors' method, with and without adaptive-length subsequencing (ALS).  Higher PSNR values indicate better reconstruction quality.
> <details>
> <summary>read the caption</summary>
> Table 6: Per-object PSNR comparison on the synthetic Blender dataset (×4absent4\times 4× 4 →→\rightarrow→ ×1absent1\times 1× 1). Ours-ALS refers to our method using adaptive-length subsequencing (ALS).
> </details>

{{< table-caption >}}
|       | chair | drums | ficus | hotdog | lego | materials | mic | ship | average |
|-------|-------|-------|-------|--------|------|-----------|-----|------|---------|
| Bicubic | 0.9194 | 0.9003 | 0.9430 | 0.9526 | 0.9059 | 0.9220 | 0.9481 | 0.8291 | 0.9150 |
| PSRT (SISR) | 0.9475 | 0.9386 | 0.9762 | 0.9721 | 0.9572 | 0.9544 | 0.9732 | 0.8688 | 0.9516 |
| SwinIR+3DGS | 0.9469 | 0.9412 | 0.9760 | 0.9728 | 0.9601 | 0.9558 | 0.9747 | 0.8731 | 0.9501 |
| Render-SR | 0.9432 | 0.9163 | 0.9539 | 0.9677 | 0.9379 | 0.9322 | 0.9671 | 0.8582 | 0.9346 |
| NeRF-SR | 0.9366 | 0.9019 | 0.9026 | 0.9629 | 0.9292 | 0.9319 | 0.9432 | 0.8357 | 0.9180 |
| DiSR-NeRF | 0.9035 | 0.8618 | 0.9117 | 0.9332 | 0.8875 | 0.8816 | 0.9335 | 0.8053 | 0.8898 |
| CROP† | 0.9513 | 0.9236 | 0.9709 | 0.9725 | 0.9641 | 0.9468 | 0.9740 | 0.8637 | 0.9459 |
| Ours-S | 0.9538 | 0.9391 | 0.9779 | 0.9738 | 0.9646 | 0.9541 | 0.9747 | 0.8724 | 0.9513 |
| Ours-ALS | 0.9539 | 0.9405 | 0.9777 | 0.9744 | 0.9649 | 0.9555 | 0.9750 | 0.8741 | 0.9520 |
| HR-3DGS | 0.9874 | 0.9544 | 0.9872 | 0.9853 | 0.9828 | 0.9603 | 0.9914 | 0.9067 | 0.9694 |{{< /table-caption >}}
> 🔼 This table presents a per-object comparison of the Structural Similarity Index (SSIM) metric. The comparison is made for different methods on the synthetic Blender dataset, where low-resolution images (LR) are upscaled to high-resolution (HR) images with a factor of 4 (4x super-resolution).  The methods compared include Bicubic interpolation, SwinIR (a state-of-the-art single-image super-resolution model combined with 3D Gaussian Splatting), Render-SR (a method that renders smooth video using LR images and upsamples), NeRF-SR, DiSR-NeRF (both methods specialized for Neural Radiance Fields), CROP, and the authors' methods (Ours-S and Ours-ALS).  Ours-ALS uses their proposed adaptive-length subsequencing approach for improved results. The SSIM values are shown for eight different objects in the dataset (chair, drums, ficus, hotdog, lego, materials, mic, ship), along with the average SSIM across all objects. This allows readers to evaluate and compare the performance of each method on an object-by-object basis and overall.
> <details>
> <summary>read the caption</summary>
> Table 7: Per-object SSIM comparison on the synthetic Blender dataset (×4absent4\times 4× 4 →→\rightarrow→ ×1absent1\times 1× 1). Ours-ALS refers to our method using adaptive-length subsequencing (ALS).
> </details>

{{< table-caption >}}
|             | chair | drums | ficus | hotdog | lego  | materials | mic  | ship  | average |
|-------------|-------|-------|-------|--------|-------|-----------|------|-------|---------|
| Bicubic     | 0.0899 | 0.1106 | 0.0619 | 0.0768 | 0.1272 | 0.0892     | 0.0626 | 0.2136 | 0.1040  |
| PSRT (SISR) | 0.0553 | 0.0609 | 0.0237 | 0.0421 | 0.0595 | 0.0480     | 0.0254 | 0.1567 | 0.0544  |
| SwinIR+3DGS | 0.0577 | 0.0565 | 0.0221 | 0.0401 | 0.0498 | 0.0420     | 0.0203 | 0.1511 | 0.0550  |
| Render-SR   | 0.0563 | 0.0743 | 0.0396 | 0.0462 | 0.0691 | 0.0597     | 0.0312 | 0.1698 | 0.0683  |
| NeRF-SR     | 0.0687 | 0.1091 | 0.1014 | 0.0591 | 0.0976 | 0.0770     | 0.0805 | 0.1984 | 0.0990  |
| DiSR-NeRF   | 0.0943 | 0.1429 | 0.0905 | 0.1001 | 0.1378 | 0.1293     | 0.0751 | 0.2106 | 0.1226  |
| CROP†       | 0.0567 | 0.0856 | 0.0317 | 0.0481 | 0.0496 | 0.0622     | 0.0251 | 0.1776 | 0.0671  |
| Ours-S      | 0.0478 | 0.0585 | 0.0216 | 0.0395 | 0.0470 | 0.0488     | 0.0240 | 0.1509 | 0.0547  |
| Ours-ALS    | 0.0478 | 0.0576 | 0.0216 | 0.0388 | 0.0465 | 0.0464     | 0.0233 | 0.1501 | 0.0540  |
| HR-3DGS     | 0.0117 | 0.0371 | 0.0116 | 0.0199 | 0.0154 | 0.0341     | 0.0060 | 0.1063 | 0.0303  |{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different methods for 3D super-resolution on the synthetic Blender dataset, specifically focusing on the perceptual similarity metric LPIPS (Learned Perceptual Image Patch Similarity).  Lower LPIPS values indicate better perceptual similarity to the ground truth.  The results are broken down by object category within the dataset, and each method's performance is reported.  The 'Ours-ALS' column represents the performance of the authors' proposed method using an adaptive-length subsequence algorithm.
> <details>
> <summary>read the caption</summary>
> Table 8: Per-object LPIPS comparison on the synthetic Blender dataset (×4absent4\times 4× 4 →→\rightarrow→ ×1absent1\times 1× 1). Ours-ALS refers to our method using adaptive-length subsequencing (ALS).
> </details>

{{< table-caption >}}
| Method | bicycle | flowers | garden | stump | treehill | room | counter | kitchen | bonsai | average |
|---|---|---|---|---|---|---|---|---|---|---|
| Bicubic | 24.02 | 21.24 | 25.14 | 26.30 | 22.25 | 30.47 | 28.15 | 28.23 | 30.21 | 26.22 |
| SwinIR + 3DGS | 24.54 | 21.18 | 25.81 | 26.38 | 22.16 | 31.30 | 28.71 | 29.82 | 31.26 | 26.80 |
| Ours-S | 24.42 | 21.13 | 26.04 | 26.40 | 22.26 | 31.47 | 28.96 | 30.79 | 31.69 | 27.02 |
| Ours-ALS | 24.50 | 21.17 | 25.99 | 26.46 | 22.26 | 31.52 | 28.90 | 30.73 | 31.68 | 27.02 |
| HR-3DGS | 24.41 | 20.59 | 26.58 | 26.28 | 22.27 | 31.52 | 29.12 | 31.57 | 32.36 | 27.19 |{{< /table-caption >}}
> 🔼 Table 9 presents a per-scene comparison of Peak Signal-to-Noise Ratio (PSNR) values for the Mip-NeRF 360 dataset. The comparison is made between different super-resolution methods and focuses on the results achieved with a downsampling factor of 8 and upsampling factor of 2.  The table shows PSNR values obtained for various scenes within the Mip-NeRF 360 dataset, including 'bicycle,' 'flowers,' 'garden,' 'stump,' 'treehill,' 'room,' 'counter,' 'kitchen,' 'bonsai.'  The results for the proposed method using adaptive-length subsequence generation (Ours-ALS) are highlighted. Additionally, results for a baseline bicubic interpolation, SwinIR + 3DGS, and the ground truth (HR-3DGS) are included for comparison. This detailed per-scene analysis allows assessing the effectiveness of the proposed super-resolution technique across different scene types in the Mip-NeRF 360 dataset. 
> <details>
> <summary>read the caption</summary>
> Table 9: Per-scene PSNR comparison on the Mip-NeRF 360 dataset (×8absent8\times 8× 8 →→\rightarrow→×2absent2\times 2× 2). Ours-ALS refers to our method using adaptive-length subsequencing (ALS).
> </details>

{{< table-caption >}}
| |bicycle|flowers|garden|stump|treehill|room|counter|kitchen|bonsai|average|
|---|---|---|---|---|---|---|---|---|---|---|
|Bicubic|0.6401|0.5321|0.6648|0.7324|0.5880|0.8877|0.8573|0.8128|0.8980|0.7348|
|SwinIR + 3DGS|0.6810|0.5498|0.7259|0.7468|0.6020|0.9063|0.8837|0.8724|0.9235|0.7657|
|Ours-S|0.6752|0.5512|0.7476|0.7481|0.6048|0.9123|0.8936|0.9071|0.9328|0.7747|
|Ours-ALS|0.6783|0.5503|0.7462|0.7467|0.6028|0.9123|0.8918|0.9062|0.9323|0.7741|
|HR-3DGS|0.7007|0.5445|0.8173|0.7571|0.6269|0.9263|0.9144|0.9325|0.9465|0.7962|{{< /table-caption >}}
> 🔼 This table presents a comparison of the per-scene Structural Similarity Index (SSIM) scores achieved by different methods on the Mip-NeRF 360 dataset.  The dataset's resolution was reduced by a factor of 8 (8x downsampling) and then upsampled to half the original resolution (2x upsampling).  The methods compared include a bicubic upsampling baseline, SwinIR + 3DGS, the authors' proposed method using a simple greedy algorithm (Ours-S), the authors' proposed method with adaptive-length subsequence generation (Ours-ALS), and finally the ground truth result from the full-resolution 3DGS model (HR-3DGS). The comparison shows how different methods perform across various scenes from the Mip-NeRF 360 dataset in terms of SSIM.  The results demonstrate that the authors' method, especially the version with adaptive-length subsequencing, achieves comparable performance to SwinIR + 3DGS and surpasses bicubic upsampling, while falling slightly below the ground truth SSIM scores.
> <details>
> <summary>read the caption</summary>
> Table 10: Per-scene SSIM comparison on the Mip-NeRF 360 dataset (×8absent8\times 8× 8 →→\rightarrow→×2absent2\times 2× 2). Ours-ALS refers to our method using adaptive-length subsequencing (ALS).
> </details>

{{< table-caption >}}
|                   | bicycle | flowers | garden | stump | treehill | room | counter | kitchen | bonsai | average |
|-------------------|----------|----------|---------|--------|-----------|-------|----------|----------|--------|---------|
| Bicubic            | 0.3688   | 0.4315   | 0.3469  | 0.3334 | 0.4391    | 0.275 | 0.2671   | 0.2598   | 0.2392 | 0.3290  |
| SwinIR + 3DGS     | 0.3220   | 0.4065   | 0.2784  | 0.3098 | 0.4116    | 0.235 | 0.2216   | 0.1973   | 0.2035 | 0.2873  |
| Ours-S             | 0.3344   | 0.4091   | 0.2613  | 0.3142 | 0.4162    | 0.222 | 0.2074   | 0.1536   | 0.1927 | 0.2790  |
| Ours-ALS           | 0.3261   | 0.4062   | 0.2607  | 0.3117 | 0.4134    | 0.222 | 0.2104   | 0.1542   | 0.1925 | 0.2774  |
| HR-3DGS           | 0.3230   | 0.4188   | 0.1777  | 0.3130 | 0.3997    | 0.193 | 0.1800   | 0.1136   | 0.1758 | 0.2550  |{{< /table-caption >}}
> 🔼 This table presents a per-scene comparison of the LPIPS (Learned Perceptual Image Patch Similarity) metric on the Mip-NeRF 360 dataset.  The dataset's low-resolution images were upscaled by a factor of 4 (8x to 2x).  The table compares the LPIPS scores achieved by different methods, including bicubic upsampling, SwinIR + 3DGS (Swin Transformer + 3D Gaussian Splatting), the proposed method (Ours-S using a simple greedy algorithm, and Ours-ALS using an adaptive-length subsequence), and the ground truth (HR-3DGS).  LPIPS is a measure of perceptual similarity; lower scores represent better visual quality.
> <details>
> <summary>read the caption</summary>
> Table 11: Per-scene LPIPS comparison on the Mip-NeRF 360 dataset (×8absent8\times 8× 8 →→\rightarrow→×2absent2\times 2× 2). Ours-ALS refers to our method using adaptive-length subsequencing (ALS).
> </details>

{{< table-caption >}}
| Method | PSNR ↑ | SSIM ↑ | LPIPS ↓ |
|---|---|---|---| 
| Bicubic | 26.22 | 0.7349 | 0.3290 |
| SwinIR | 26.80 | 0.7657 | 0.2873 |
| SRGS<sup>†</sup> | 26.88 | 0.7670 | 0.2860 |
| Ours | **27.02** | **0.7747** | **0.2790** |
| 3DGS-HR | 27.19 | 0.7710 | 0.2802 |{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the proposed method's performance against several baseline models on the Mip-NeRF 360 dataset.  The models' performance is evaluated on the task of 3D super-resolution, specifically upscaling low-resolution (LR) images by a factor of 8 to higher resolution (HR) images (8x to 2x). The metrics used for comparison include PSNR (Peak Signal-to-Noise Ratio), SSIM (Structural Similarity Index), and LPIPS (Learned Perceptual Image Patch Similarity). Higher PSNR and SSIM values indicate better reconstruction quality, while a lower LPIPS value signifies a better perceptual similarity to the ground truth.
> <details>
> <summary>read the caption</summary>
> Table 12: Comparison with baseline models in Mip-NeRF 360 dataset (×8absent8\times 8× 8 →→\rightarrow→ ×2absent2\times 2× 2).
> </details>

{{< table-caption >}}
| Method | FVD↓ | PSNR↑ |
|---|---|---|
| Bicubic | 195 | 27.56 |
| SwinIR | 113 | 30.77 |
| Render-SR | 134 | 28.90 |
| NeRF-SR | 169 | 28.21 |
| DiSR-NeRF | 304 | 26.00 |
| Ours-S | 110 | 31.35 |
| Ours-ALS | 109 | 31.41 |{{< /table-caption >}}
> 🔼 This table presents a comparison of different methods for 3D super-resolution, focusing on temporal consistency and spatial quality.  It shows the Fréchet Video Distance (FVD) scores, which measure how temporally consistent the generated videos are, and the Peak Signal-to-Noise Ratio (PSNR) values, which indicate the spatial quality of the reconstructed 3D models. Lower FVD indicates better temporal consistency, and higher PSNR signifies better spatial quality. The table helps to assess the effectiveness of each method in producing temporally coherent and visually pleasing 3D reconstructions.
> <details>
> <summary>read the caption</summary>
> Table 13: Temporal Consistency and Spatial Quality Metrics on Blender Dataset.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.11525/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11525/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11525/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11525/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11525/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11525/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11525/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11525/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11525/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11525/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11525/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11525/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11525/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11525/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}