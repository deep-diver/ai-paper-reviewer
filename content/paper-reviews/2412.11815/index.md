---
title: "ColorFlow: Retrieval-Augmented Image Sequence Colorization"
summary: "ColorFlow, a new AI model, accurately colorizes black-and-white image sequences while preserving character identity."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Tsinghua University",]
showSummary: true
date: 2024-12-16
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.11815 {{< /keyword >}}
{{< keyword icon="writer" >}} Junhao Zhuang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.11815" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.11815" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/colorflow-retrieval-augmented-image-sequence" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.11815/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Automatic colorization of black-and-white image sequences, such as cartoons or comics, presents a challenge. While general image colorization using AI has seen progress, preserving the identity (e.g., consistent hair and clothing color) of characters across a sequence remains a hurdle. Current AI solutions aren't robust enough for industry use because they're hard to control and don't guarantee color consistency, making them unsuitable for professional animation or comic production.  This gap between current methods and industry requirements motivates the need for new, more controllable approaches.

This paper introduces ColorFlow, a new AI model specifically designed to colorize image sequences while maintaining character and object identity across frames.  It leverages a reference image pool to match colors, ensuring consistent hair color, clothing, and other attributes.  A key feature is a three-stage process: retrieving relevant color references, colorizing using context from references, and enhancing resolution. ColorFlow was tested on a new dataset, ColorFlow-Bench, comprising manga chapters with corresponding reference images, and demonstrated significant improvement over existing models in both visual quality and color consistency.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Preserves character identity across frames in image sequence colorization {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Introduces ColorFlow-Bench, a dataset for reference-based image sequence colorization {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Outperforms existing models in both pixel-wise and image-wise evaluations {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**This paper introduces a novel framework, ColorFlow,  and benchmark for sequence image colorization, a critical area lacking dedicated research.  By focusing on identity consistency across frames and using a reference-based approach**, the research addresses limitations of existing colorization methods. **The benchmark and open-sourced code provide valuable resources for researchers**, enabling further exploration and advancement in this field. **This work bridges a gap between academic research and industry needs** by offering a solution directly applicable to cartoon and comic colorization, potentially influencing art production workflows. 

------
#### Visual Insights



![](https://arxiv.org/html/2412.11815/x2.png)

> 🔼 ColorFlow, a novel model, excels at colorizing black and white image sequences while preserving fine-grained details like character identity (hair color, attire), using contextual information and a reference image pool.  It demonstrates accurate color generation and maintains consistency between the colorized sequence and reference images.
> <details>
> <summary>read the caption</summary>
> Figure 1:  ColorFlow is the first model designed for fine-grained ID preservation in image sequence colorization, utilizing contextual information. Given a reference image pool, ColorFlow accurately generates colors for various elements in black and white image sequences, including the hair color and attire of characters, ensuring color consistency with the reference images. [Best viewed in color with zoom-in].
> </details>





{{< table-caption >}}
| Method | Reference-based | CLIP-IS↑ | FID↓ | PSNR↑ | SSIM↑ | AS↑ | CLIP-IS↑ | FID↓ | PSNR↑ | SSIM↑ | AS↑ |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| MC-v2 [46] | | 0.8632 | 48.37 | 13.50 | 0.6987 | 4.753 | 0.8833 | 33.14 | 17.20 | 0.8396 | 4.845 |
| ACDO [2] | | 0.8687 | 39.38 | 15.75 | 0.7672 | 4.540 | 0.8970 | 28.12 | 21.77 | 0.9516 | 4.686 |
| EBMC [28] | ✓ | 0.8542 | 38.77 | 15.21 | 0.7592 | 4.605 | 0.8859 | 19.48 | 20.80 | 0.9474 | 4.702 |
| ScreenVAE [71] | ✓ | 0.7328 | 98.52 | 9.12 | 0.5373 | 4.160 | - | - | - | - | |
| Ours | ✓ | **0.9419** | **13.37** | **25.88** | **0.9541** | **4.924** | **0.9433** | **12.17** | **26.01** | **0.9579** | **5.011** |

Note: The first row specifies metrics names for Screenstyle and Grayscale Image, each having the same set of metrics.
{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of various image colorization models, both with and without reference images, using metrics such as CLIP Image Similarity (CLIP-IS), Fréchet Inception Distance (FID), Peak Signal-to-Noise Ratio (PSNR), Structural Similarity Index (SSIM), and Aesthetic Score (AS) on a dataset called ColorFlow-Bench.  The models evaluated include Manga Colorization V2 (MC-v2), AnimeColorDeOldify (ACDO), Example Based Manga Colorization (EBMC), and ScreenVAE.  The goal is to demonstrate the effectiveness of the proposed method, ColorFlow, compared to existing state-of-the-art techniques for reference-based image colorization.
> <details>
> <summary>read the caption</summary>
> Table 1:  Quantitative comparisons with state-of-the-art models for Reference Image-based Colorization. We compare two models without reference image input Manga Colorization V2 (MC-v2) [45] and AnimeColorDeOldify (ACDO) [16], and two reference image-based colorization models, Example Based Manga Colorization (EBMC) [28] and ScreenVAE [71]. Best results are in bold.
> </details>





### In-depth insights


#### Contextual Colorflow
**Contextual ColorFlow** implies colorization guided by surrounding elements and broader image content.  This approach considers not only individual pixel colors but also relationships and **harmonies within the image**. Analyzing local features like textures and edges alongside global scene understanding would be crucial for such a system. It could improve coherence and realism in generated colors, especially in complex scenes with multiple objects and varying lighting.  Challenges lie in efficiently incorporating both local and global contexts.  **Attention mechanisms** and graph neural networks are promising directions for modeling these relationships and achieving **contextually aware colorization**.

#### Retrieval-Augmented
**Retrieval-augmented** generation combines the strengths of **retrieval systems and generative models**. Retrieval systems excel at identifying relevant information from vast data sources, while generative models can create novel content. This synergy allows for more **contextually rich and informative outputs**.  Retrieval augmentation can provide **relevant factual grounding**, helping prevent the generation of hallucinations or inaccurate statements. It can also assist in **overcoming biases** present in training data by introducing more diverse perspectives and information during generation. By retrieving relevant examples, retrieval augmentation can enhance the **controllability and personalization** of generated content.  However, it's important to ensure the retrieved information is **accurate and aligned with the desired context** to avoid introducing new biases or inaccuracies. The effectiveness relies on both the quality of retrieved data and the model's ability to integrate it seamlessly.

#### Benchmark Dataset
This paper introduces **ColorFlow-Bench**, a new benchmark for **reference-based image sequence colorization**.  Existing datasets lack sequential image coloring with ID consistency. ColorFlow-Bench contains 30 manga chapters, each with 50 black-and-white images and 40 color references. This dataset addresses the **lack of large-scale, sequential image data**  for this domain, facilitating the training and evaluation of models like ColorFlow, which specifically focuses on **preserving identity and color consistency across frames**. This benchmark enables **objective comparisons** and drives further research in sequential colorization.

#### Diffusion-Based Model
**Diffusion models** have revolutionized image generation, offering **unprecedented control and quality**. Their strength lies in the iterative denoising process, gradually refining a noisy image into a coherent output.  This process allows for the **seamless integration of guidance**, whether through text prompts, reference images, or other control mechanisms.  ColorFlow leverages this power for image colorization, using a **retrieval-augmented approach** to guide the diffusion process with relevant color information.  The iterative nature of diffusion models facilitates **fine-grained control** over colorization, enabling **accurate and consistent color mapping** across image sequences. This approach bypasses the limitations of traditional methods, offering a robust solution for applications like manga and animation colorization where preserving character identity is paramount.  Future research can explore enhanced control mechanisms and more sophisticated diffusion architectures to further refine colorization quality and expand applications.

#### Sequential ID in Manga
**Sequential ID in manga** emphasizes preserving character identity across frames during colorization.  This is **crucial for coherence** in storytelling.  Traditional methods struggle with **consistent colorization**, leading to jarring visual discrepancies.  ColorFlow addresses this by matching color identities from a reference pool using a retrieval-augmented pipeline. This ensures **consistent hairstyles and attire** throughout the sequence, improving visual storytelling. It represents a **significant advancement** in automated manga colorization.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.11815/x3.png)

> 🔼 ColorFlow, a three-stage framework designed for reference-based image sequence colorization, consists of Retrieval-Augmented Pipeline (RAP) extracting relevant color patches, In-context Colorization Pipeline (ICP) performing colorization using contextual information, and Guided Super-Resolution Pipeline (GSRP) upsampling for high-resolution outputs.  Each stage is crucial for maintaining color identity across frames and ensuring high-quality colorization.  RAP uses a retrieval mechanism to match ID-relevant image patches. ICP uses a two-branch design for accurate colorization with in-context learning.  GSRP refines and restores details during colorization. The input are the grayscale sequence, and the reference image pool.
> <details>
> <summary>read the caption</summary>
> Figure 2:  The overview of ColorFlow. This figure presents the three primary components of our framework: the Retrieval-Augmented Pipeline (RAP), the In-context Colorization Pipeline (ICP), and the Guided Super-Resolution Pipeline (GSRP). Each component is essential for maintaining the color identity of instances across black-and-white image sequences while ensuring high-quality colorization.
> </details>



![](https://arxiv.org/html/2412.11815/extracted/6067723/sec/figure/mixed_result.png)

> 🔼 During training, ColorFlow uses cropped sections of the stitched images and masks to reduce computational demands.  However, at inference time, the full stitched image and masks are used to leverage all available context for optimal colorization.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Patch-Wise training strategy is designed to reduce the computational demands of training on high-resolution stitched images. The left box displays segmented stitched images from the training phase, with the corresponding masks also segmented accordingly. The right box presents the complete stitched image and masks for the inference phase.
> </details>



![](https://arxiv.org/html/2412.11815/x4.png)

> 🔼 This figure demonstrates the screenstyle augmentation technique employed in the proposed ColorFlow method. It showcases how the augmentation pipeline takes a colored manga image and transforms it into grayscale. The process then involves linear interpolations between this grayscale image and the output from ScreenVAE [71] with varying proportions (0.66 and 0.33). This augmentation strategy allows the model to learn how to colorize by introducing variations in style and thereby enhances the overall colorization performance and generalization abilities of ColorFlow. The final image shows the corresponding ScreenVAE output.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Screenstyle augmentation. From left to right: the colored manga, the grayscale manga, linear interpolations between the grayscale manga and the ScreenVAE [71] output with proportions of 0.66 and 0.33, the ScreenVAE output.
> </details>



![](https://arxiv.org/html/2412.11815/x5.png)

> 🔼 The figure showcases the effectiveness of ColorFlow in preserving color consistency by visualizing the heatmap of the self-attention map. The highlighted region (encircled in red) corresponds to the area where colorization is applied. The heatmap indicates the model's focus on relevant contextual information from the reference images during the colorization process, demonstrating its ability to accurately match colors and maintain color identity across different elements in the image sequence.
> <details>
> <summary>read the caption</summary>
> Figure 5:  Visualization of the heatmap for the self-attention map of the selected colorization region (encircled in red).
> </details>



![](https://arxiv.org/html/2412.11815/x6.png)

> 🔼 This figure compares the performance of ColorFlow against other state-of-the-art (SOTA) methods for manga colorization. The input is a black-and-white manga image, and the goal is to produce a colored version while maintaining the original style and details. The methods compared include Manga Colorization V2 (MC-v2), Example Based Manga Colorization (EBMC), and Style2Paint. The figure shows that ColorFlow generates higher-quality colorizations, with colors that are more aesthetically pleasing and more faithful to the original manga style.
> <details>
> <summary>read the caption</summary>
> Figure 6:  Comparison of our method with SOTA approaches in the manga colorization. Our method exhibits superior aesthetic quality, producing colors that more closely match the original image. [Best viewed in color with zoom-in]
> </details>



![](https://arxiv.org/html/2412.11815/x7.png)

> 🔼 This figure compares ColorFlow with existing methods, MC-v2, EBMC, and ACDO, on an animation storyboard colorization task. ColorFlow leverages reference images and demonstrates superior performance in terms of aesthetic quality and color fidelity to the original image.
> <details>
> <summary>read the caption</summary>
> Figure 7:  Comparison of ColorFlow with other approaches in the animation storyboard colorization. Our method exhibits superior aesthetic quality, producing colors that more closely match the original image. [Best viewed in color with zoom-in]
> </details>



![](https://arxiv.org/html/2412.11815/x8.png)

> 🔼 Figure 8 showcases ColorFlow's ability to colorize diverse image types beyond manga, demonstrating its effectiveness on both line art and natural scene images.  This highlights the method's strong generalization capabilities and potential applicability across various domains.
> <details>
> <summary>read the caption</summary>
> Figure 8:  Colorization results for line art and natural scenario.
> </details>



![](https://arxiv.org/html/2412.11815/x9.png)

> 🔼 Figure 9 showcases the results of applying the ColorFlow model to colorize black and white manga images.  The figure presents several examples, each showing the original black and white input, the corresponding colorized output generated by ColorFlow, and a set of reference images used in the colorization process. This demonstrates the model's ability to generate plausible and vibrant color schemes for manga while maintaining artistic style and consistency within each panel.
> <details>
> <summary>read the caption</summary>
> Figure 9:  Colorization results of black and white manga using ColorFlow. [Best viewed in color with zoom-in]
> </details>



![](https://arxiv.org/html/2412.11815/x10.png)

> 🔼 This figure presents a comparison of black and white line art images with their colorized versions generated by ColorFlow. The provided examples showcase the model's capability to effectively colorize line art while maintaining the integrity of the original artwork. These results highlight ColorFlow's ability to enhance artistic expression by seamlessly integrating colors into line art pieces, enhancing their visual appeal.
> <details>
> <summary>read the caption</summary>
> Figure 10:  Colorization results of line art using ColorFlow. [Best viewed in color with zoom-in]
> </details>



![](https://arxiv.org/html/2412.11815/x11.png)

> 🔼 This figure showcases ColorFlow's ability to colorize black-and-white animation storyboards, preserving the identity and style of characters and scenes. The first row displays the original black-and-white storyboard frames. The second row presents a set of reference images used for colorization. The third row displays the colorized output generated by ColorFlow. The comparison highlights ColorFlow's effectiveness in adding color while maintaining consistency and detail, demonstrating its potential application in animation production.
> <details>
> <summary>read the caption</summary>
> Figure 11:  Colorization results of animation storyboard using ColorFlow. [Best viewed in color with zoom-in]
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Training | Inference | Inference | CLIP-IS↑ | FID↓ | PSNR↑ | SSIM↑ | AS↑ |
|---|---|---|---|---|---|---|---| 
| RAP | RAP | GSRP |  |  |  |  |  |
|  | ✓ | ✓ | 0.9326 | 15.98 | 24.48 | 0.9448 | 4.921 |
|  |  | ✓ | 0.9233 | 18.32 | 24.16 | 0.9410 | 4.907 |
| ✓ |  | ✓ | 0.9266 | 17.07 | 24.64 | 0.9464 | 4.914 |
| ✓ | ✓ |  | 0.9322 | 17.85 | 20.12 | 0.8077 | 4.898 |
| ✓ | ✓ | ✓ | **0.9419** | **13.37** | **25.88** | **0.9541** | **4.924** |{{< /table-caption >}}
> 🔼 This table presents an ablation study on the impact of two key components of the ColorFlow framework: the Retrieval-Augmented Pipeline (RAP) and the Guided Super-Resolution Pipeline (GSRP).  The study investigates the influence of these components both during the training and inference stages. The provided metrics measure colorization quality, color fidelity to the original image, and perceptual quality in order to assess the performance of ColorFlow.
> <details>
> <summary>read the caption</summary>
> Table 2:  Ablation Study on the Influence of Retrieval-Augmentated Pipeline (RAP) and Guided Super-Resolution Pipeline (GSRP).
> </details>

{{< table-caption >}}
| Width \* Height (Pixel) | CLIP-IS↑ | FID↓ | PSNR↑ | SSIM↑ | AS↑ |
|---|---|---|---|---|---| 
| 512 \* 800 | 0.9372 | 14.91 | 23.51 | 0.9414 | 4.868 |
| 1024 \* 1600 | **0.9419** | **13.37** | 25.88 | 0.9541 | 4.924 |
| 1280 \* 2000 | 0.9398 | 13.42 | **26.02** | **0.9580** | **4.929** |{{< /table-caption >}}
> 🔼 This table presents the ablation study on inference resolution. It shows how the model generalizes across different resolutions despite being trained only on a resolution of 512x800.
> <details>
> <summary>read the caption</summary>
> Table 3:  Ablation of Inference Resolution.
> </details>

{{< table-caption >}}
| Rank | CLIP-IS↑ | FID↓ | PSNR↑ | SSIM↑ | AS↑ |
|---|---|---|---|---|---| 
| 32 | 0.940 | 13.46 | 25.46 | 0.9521 | 4.920 |
| 64 | **0.9419** | **13.37** | **25.88** | **0.9541** | 4.924 |
| 128 | 0.9376 | 14.31 | 24.79 | 0.9461 | **4.930** |
| 192 | 0.9370 | 14.46 | 24.59 | 0.9440 | 4.914 |{{< /table-caption >}}
> 🔼 This table presents the ablation study results for different Low-Rank Adaptation (LoRA) ranks. The table shows how the performance of ColorFlow varies with the change in LoRA rank. It uses five metrics: CLIP Image Similarity (CLIP-IS), Fréchet Inception Distance (FID), Peak Signal-to-Noise Ratio (PSNR), Structural Similarity Index (SSIM), and Aesthetic Score (AS). The results demonstrate that using a LoRA rank of 64 leads to the best overall performance across these five metrics, outperforming other LoRA ranks.
> <details>
> <summary>read the caption</summary>
> Table 4:  Ablation of LoRA Rank.
> </details>

{{< table-caption >}}
| μ | CLIP-IS↑ | FID↓ | PSNR↑ | SSIM↑ | AS↑ |
|---|---|---|---|---|---| 
| 0 | 0.9351 | 14.18 | 25.12 | 0.9501 | **4.927** |
| 1.5 | **0.9419** | **13.37** | **25.88** | **0.9541** | 4.924 |
| 3 | 0.9395 | 13.51 | 25.42 | 0.9509 | 4.917 |{{< /table-caption >}}
> 🔼 This table presents an ablation study on the impact of adjusting the timestep sampling during image colorization using the proposed ColorFlow method. It explores the effects of varying the sampling emphasis at higher timesteps (represented by the factor 'µ') on the performance of the model, using metrics such as CLIP-IS, FID, PSNR, SSIM, and AS.
> <details>
> <summary>read the caption</summary>
> Table 5:  Ablation of Timesteps Sampling.
> </details>

{{< table-caption >}}
|                               | Ours | EBMC | MC-v2 | ACDO | ScreenVAE |
|--------------------------------|------|------|-------|------|----------|
| Aesthetic Quality ↑            | **4.577** | 3.141 | 2.891 | 2.844 | 1.547    |
| Similarity to Original ↑       | **4.673** | 3.316 | 2.984 | 2.642 | 1.385    |
| Consistency in Sequences ↑ | **4.538** | 3.399 | 3.215 | 2.540 | 1.308    |{{< /table-caption >}}
> 🔼 This table presents the average user ratings for different image colorization models across three criteria: aesthetic quality, similarity to the original image, and color consistency across image sequences. Users ranked their preference among five sample groups, assigning scores from 1 (least preferred) to 5 (most preferred). The table then presents the average score each model received for each evaluation metric.
> <details>
> <summary>read the caption</summary>
> Table 6:  Results of the User Study. The table presents the average Score for different models based on aesthetic quality, similarity to the original image, and consistency in sequences
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.11815/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11815/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11815/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11815/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11815/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11815/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11815/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11815/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11815/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11815/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11815/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11815/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11815/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11815/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}