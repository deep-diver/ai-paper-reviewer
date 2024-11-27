---
title: "Controllable Human Image Generation with Personalized Multi-Garments"
summary: "BootComp: generate realistic human images wearing multiple garments using a novel synthetic data pipeline & diffusion model, enabling diverse applications like virtual try-on."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 KAIST",]
showSummary: true
date: 2024-11-25
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2411.16801 {{< /keyword >}}
{{< keyword icon="writer" >}} Yisol Choi et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-11-27 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2411.16801" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2411.16801" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/controllable-human-image-generation-with" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2411.16801/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Generating realistic images of humans wearing multiple clothing items is challenging due to the difficulty of collecting sufficiently large and high-quality datasets.  Previous approaches often suffer from issues such as low-quality data, copied garment appearances, or inconsistencies in generated images. These shortcomings hinder the creation of advanced virtual try-on systems and other applications in fashion technology.

The researchers address this problem by introducing BootComp. This framework uses a two-stage approach: first, a model is trained to extract garment images from human images, thus creating a synthetic dataset.  Second, this dataset is used to train a diffusion model capable of generating high-quality images of people wearing multiple clothing items, overcoming limitations of prior work. BootComp exhibits strong performance in virtual try-on tasks and other scenarios requiring controlled image generation, pushing the boundaries of human image synthesis and opening new possibilities for fashion-related research and applications.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} BootComp generates high-quality human images wearing multiple garments, addressing data limitations in existing methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A novel synthetic data generation pipeline effectively constructs a large-scale dataset for training, improving model performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} BootComp demonstrates wide applicability across various downstream tasks, including virtual try-on and personalized image generation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers in computer vision and fashion technology due to its novel approach to **high-quality human image generation with multiple garments**. It addresses a critical data limitation in the field, opening avenues for more realistic virtual try-ons, personalized fashion recommendations, and advanced image editing techniques.  The **introduction of a synthetic data generation pipeline** is particularly impactful, offering a scalable solution for future research.

------
#### Visual Insights



![](https://arxiv.org/html/2411.16801/x2.png)

> 🔼 Figure 1 showcases BootComp's ability to generate high-quality images of humans wearing multiple garments.  Panel (a) demonstrates this core functionality, highlighting the model's capacity to handle a wide range of clothing items, including accessories like bags and shoes, and even unusual combinations like a swimsuit and cleats. The figure further illustrates BootComp's versatility by demonstrating its ability to generate images conditioned on different factors. This is shown in panels (b) through (e), which depict virtual try-ons, pose-controlled generation, stylization, and text-guided generation, respectively.  Crucially, the model achieves these varied capabilities without any direct training or fine-tuning for these specific tasks, highlighting its strong generalization ability.
> <details>
> <summary>read the caption</summary>
> Figure 1: Generated images by BootComp. (a) BootComp generates high-quality human images wearing multiple reference garments, with support for extended categories such as bag, shoes, even in unusual garment combinations (e.g., swimming suit with soccer cleats). We show BootComp’s generalization capability through various conditional image generations, such as (b) virtual try-on, (c) pose guided generation, (d) stylization, and (e) text guided generation, even though BootComp is not directly trained or fine-tuned for each task.
> </details>





{{< table-caption >}}
| Method | MP-LPIPS ↓ | DINO ↑ | M-DINO ↑ | FID ↓ |
|---|---|---|---|---|
| MIP-Adapter [15] | 0.276 | 0.308 | 0.025 | 59.99 |
| Parts2Whole [16] | 0.267 | 0.362 | 0.036 | 28.39 |
| **BootComp (ours)** | **0.187** | **0.379** | **0.046** | **27.63** |{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of BootComp against other state-of-the-art methods for controllable human image generation.  The comparison focuses on two key aspects: garment similarity (how accurately the generated garments match the reference garments) and image fidelity (how realistic and natural the generated human images appear).  Four metrics are used for evaluation: MP-LPIPS (a perceptual metric focusing on the differences between generated and reference images), DINO and M-DINO (semantic similarity scores reflecting the alignment between generated and reference garments in the image), and FID (Fréchet Inception Distance, measuring the overall quality and realism of the generated images). The results show that BootComp significantly outperforms the other methods in all four metrics, demonstrating its superior ability to generate high-fidelity human images with precisely rendered garments.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparisons. We compare BootComp with baselines on garment similarity and image fidelity. We see that BootComp outperforms other methods, preserving fine-details of garments and naturally generating human images.
> </details>





### In-depth insights


#### Synthetic Data Gen
The core of this research lies in addressing the data scarcity challenge inherent in training high-quality controllable human image generation models.  The proposed solution, **Synthetic Data Generation**, tackles this problem head-on by creating a large-scale synthetic dataset. This is achieved through a two-stage process: firstly, a decomposition module is trained to extract individual garment images from human images, effectively learning to disentangle the human from their clothing.  Secondly, this module is utilized to bootstrap a synthetic dataset by applying it to a large collection of human images, generating numerous garment-human pairs.  A crucial aspect is the **incorporation of a filtering strategy** to ensure the quality of the generated data, removing unrealistic or low-quality synthetic samples.  This novel approach circumvents the expensive and laborious process of manually collecting real-world paired datasets, which is a major limitation in existing methods. **The synthetic data enables the training of a diffusion model capable of generating high-fidelity images of humans wearing multiple garments with precise control over attributes**, pushing the boundaries of controllable image generation in the fashion domain.

#### Composition Module
The Composition Module is a crucial part of the BootComp framework, focusing on generating human images with multiple garments.  It leverages **two pre-trained diffusion models**: one acts as an encoder to extract garment features, while the other serves as the generator.  The innovation lies in the **extended self-attention mechanism** within the generator, enabling it to effectively condition the generation process on the encoded garment features. This approach avoids direct fine-tuning on specific tasks and allows for adapting BootComp to diverse applications, such as virtual try-on or pose control, without retraining.  This modularity is a key strength, **making BootComp versatile and efficient** for controllable human image generation.  The **frozen generator** further enhances efficiency by avoiding extensive retraining for various applications.

#### BootComp: Results
BootComp's results demonstrate **significant advancements** in controllable human image generation with multiple garments.  The model surpasses existing methods in generating realistic images, accurately preserving garment details even in complex combinations.  **Quantitative metrics** like MP-LPIPS and FID scores showcase clear improvements over baselines, indicating superior image quality and fidelity.  Qualitative evaluations further highlight BootComp's ability to handle unusual garment pairings and diverse poses, emphasizing its superior generalization capabilities. The **synthetic dataset generation pipeline** is key to these achievements, proving a scalable and effective way to circumvent the limitations of traditional paired data collection.  BootComp's success opens exciting avenues for fashion-related applications like virtual try-on and personalized recommendations.

#### Ablation Studies
Ablation studies systematically remove components of a model or system to assess their individual contributions.  In the context of a research paper on controllable human image generation, these studies would likely investigate the impact of each module or process. For instance, removing the data filtering step would reveal how much it improves data quality and, consequently, model performance.  Similarly, disabling the decomposition network would show its necessity in creating realistic garment-human combinations.  **The results would quantify the impact of each component, demonstrating the efficacy of the proposed architecture and the importance of each part for overall effectiveness.**  **By carefully evaluating the changes in key metrics (e.g., FID, LPIPS), researchers can validate design decisions and gain crucial insights into the model's behavior.**  Analyzing ablation study results helps identify **bottlenecks** in the pipeline and can guide future improvements by emphasizing critical parts or highlighting areas needing more attention or refinement.

#### Future Work
Future research directions stemming from this work on controllable human image generation with personalized multi-garments could focus on several key areas.  **Improving the realism and diversity of generated garments** is crucial; current methods sometimes struggle with intricate patterns or unusual garment combinations.  **Addressing the limitations in handling accessories, particularly hats**, is another important area, as it often fails to seamlessly integrate them into the generated image.   Exploring and enhancing the **generalizability of the decomposition module** to encompass a wider variety of objects beyond clothing items would expand its utility to other domains.  Finally, a significant improvement could involve developing **more robust and efficient filtering techniques** for the synthetic data generation pipeline to enhance the overall quality and reduce computational costs.  These avenues, among others, offer exciting opportunities to further advance the state-of-the-art in controllable human image generation.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2411.16801/x3.png)

> 🔼 Figure 2 illustrates the shortcomings of prior methods for creating datasets to train controllable human image generation models. These methods typically use pairs of low-quality segmented garment images and human images.  The figure shows three examples of the problems this causes. In (a), the generated garment is a direct copy of the reference image, lacking any variation or integration with the human. In (b), parts of different garments (shirt and skirt) are blended together in the generated image, resulting in a nonsensical output. In (c), the generated skirt significantly differs from the reference, indicating a failure to learn accurate garment representation.  These issues highlight the need for improved data curation techniques to achieve higher-quality controllable image generation.
> <details>
> <summary>read the caption</summary>
> Figure 2: Limitations of previous data curation approaches used in controllable generation. Previous approaches on controllable generation often use a paired dataset consisting of low-quality segmented garments and human images for training. It leads to several undesirable artifacts as shown in right (generated with baselines). For example, garments are directly replicated from the reference images in (a), shirts and skirts are blended together in (b), and generated skirts fail to resemble the reference in (c).
> </details>



![](https://arxiv.org/html/2411.16801/x4.png)

> 🔼 BootComp is a two-stage framework for controllable human image generation.  The first stage involves creating a synthetic dataset. A decomposition network is trained to transform segmented garment images from human images into product-view garment images. This allows bootstrapping a large dataset of human images with multiple garments. The second stage trains a composition module using this synthetic dataset. This module generates human images conditioned on multiple reference garment images, resulting in controllable image generation.
> <details>
> <summary>read the caption</summary>
> Figure 3: Overview of BootComp. We propose a two-stage framework: synthetic data generation and composition module training for controllable human image generation. (a) We train a decomposition network that maps from a segmented garment image to a product garment image. (b) We bootstrap synthetic paired data of human and multiple garment images. (c) We finally train our composition module with the synthetic paired dataset enabling it to generate human images with multiple reference garment images.
> </details>



![](https://arxiv.org/html/2411.16801/x6.png)

> 🔼 This figure illustrates the extended self-attention mechanism used in the BootComp model.  The architecture enhances the standard self-attention layer by concatenating reference hidden states (from the garment images) with the target hidden states (from the human image) within the key and value matrices. This crucial modification allows the model to effectively integrate the garment features into the generation of the human image, ensuring that the generated human image accurately reflects the clothing being worn. Notably, this same architectural design is employed within the decomposition module, although confined to a single network.
> <details>
> <summary>read the caption</summary>
> Figure 4: Extended self-attention architecture. In a extended self-attention layer,  reference hidden states are concatenated with the  target hidden states in the key and value matrices. This architecture enables injecting reference image features within the target image. Note that decomposition module also uses same structure but works within a single network.
> </details>



![](https://arxiv.org/html/2411.16801/x7.png)

> 🔼 Figure 5 illustrates the impact of inaccurate human parsing on the garment generation process.  The figure shows examples of generated garments categorized as either high-quality or low-quality.  Low-quality results occur when the initial segmentation of the human image (to isolate individual garments) is imprecise.  This imprecision makes it difficult for the decomposition network to accurately generate realistic product-view images of the garments. To maintain a high level of quality in the dataset, these low-quality garment generation attempts are filtered out before being used to train the main image generation model.
> <details>
> <summary>read the caption</summary>
> Figure 5: Examples of high&low-quality generated garments. When human parsing results are not precise, the decomposition network struggles to generate product garment images accurately, resulting in low-quality garment images. We filter out these cases.
> </details>



![](https://arxiv.org/html/2411.16801/x8.png)

> 🔼 Figure 6 presents a qualitative comparison of human image generation models, focusing on their ability to handle multiple clothing items.  The figure shows that the model BootComp successfully generates realistic images of people wearing multiple garments, even in unusual combinations.  BootComp preserves the details of each garment, whereas other methods, such as Parts2Whole, might replace some items with visually dissimilar ones (e.g., replacing soccer cleats with stilettos). This highlights BootComp's superior performance in accurately generating images with multiple clothing items.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative comparison of human image generation with multiple garments. BootComp generates realistic human images with multiple reference garments even with non-straightforward combinations of garments without losing details of each reference. For example, Parts2Whole replaces reference soccer cleats with stilettos, while ours accurately generates each reference (left, middle row).
> </details>



![](https://arxiv.org/html/2411.16801/x9.png)

> 🔼 Figure 7 demonstrates the versatility of the BootComp model for generating human images under various conditions.  Subfigure (a) shows the model's ability to generate images with controlled poses, demonstrating its capability to faithfully render clothing details and human anatomy across a range of postures. Subfigure (b) illustrates the method's effectiveness in generating human images in different styles, such as cartoonish renderings, showcasing its adaptability to diverse aesthetic preferences. Finally, subfigure (c) highlights the model's power for personalized image generation, which allows users to input their own images (e.g., facial features, full body shots) to create custom-tailored results. This demonstrates BootComp's capacity for both creative control and personalized applications.
> <details>
> <summary>read the caption</summary>
> Figure 7: More applications of BootComp. We showcase the extensive applications of our method, BootComp. BootComp creates human images by controlling the (a) poses and (b) styles of the generated human images. BootComp also enables (c) personalized human image generation by taking user’s images as conditions (e.g., face, full body).
> </details>



![](https://arxiv.org/html/2411.16801/x10.png)

> 🔼 Figure 8 visually compares two approaches for creating paired datasets for training a clothing generation model. The 'segmented paired data' method involves manually segmenting out individual garments from an image of a person wearing multiple garments. This approach is time-consuming and prone to inaccuracies.  In contrast, the 'synthetic paired data' method leverages the authors' proposed decomposition network to generate images of individual garments from a single garment-human image pair. This method offers a more efficient and scalable way to create a larger, higher-quality dataset.
> <details>
> <summary>read the caption</summary>
> Figure 8: Visualization of segmented paired data and our synthetic paired data. We provide a visual comparison between segmented and synthetic pairs. Given a single garment and a human image pair, we segment out other garments from the human image in the segmented paired data.
> </details>



![](https://arxiv.org/html/2411.16801/x11.png)

> 🔼 Figure 9 presents a comparison of human image generation results using two different training datasets: segmented paired data and synthetic paired data.  The images demonstrate that models trained on segmented data, where garments are extracted directly from existing images, struggle to produce realistic and harmoniously composed images of people wearing multiple garments. The generated human images often appear unnatural or have artifacts.  In contrast, images from the model trained on the synthetic data show significantly improved results, producing more natural and realistic human image generation.
> <details>
> <summary>read the caption</summary>
> Figure 9: Visual comparison on data construction methods. Visual comparison between generated human images where each model is trained on segmented and synthetic pairs. The model trained on segmented pair data struggles to generate naturally harmonized human images (red).
> </details>



![](https://arxiv.org/html/2411.16801/x12.png)

> 🔼 Figure 10 shows example images from the dataset used to train the decomposition module of the BootComp model.  The dataset consists of paired images: a human wearing clothing, and a separate, single product shot of one of the garments the person is wearing.  The images are sourced from publicly available datasets such as VITON-HD, DressCode, and LAION-Fashion. The figure showcases the variety of garments included in the dataset, illustrating the diversity of clothing categories such as shirts, pants, shoes, and bags.
> <details>
> <summary>read the caption</summary>
> Figure 10: Examples of training data for decomposition module. We collect pairs of a human image and a single reference garment image from public datasets including VITON-HD, DressCode, and LAION-Fashion. It consists of various garments in different categories, e.g., shirts, pants, shoes and bags etc.
> </details>



![](https://arxiv.org/html/2411.16801/x13.png)

> 🔼 Figure 11 demonstrates the effectiveness of the DreamSim metric for filtering generated garment-human image pairs.  The figure showcases examples where different similarity metrics (LPIPS and CLIP) fail to accurately assess the similarity between generated garments and their real-world counterparts in human images. LPIPS struggles with garments containing intricate patterns, while CLIP misjudges the similarity of inner-layer garments, even when perceptually identical to a human observer. In contrast, DreamSim, aligned with human visual perception, successfully identifies and filters out low-quality pairs, ensuring only high-quality synthetic data are used for training.
> <details>
> <summary>read the caption</summary>
> Figure 11: Examples of pairs filtered out by different similarity metrics. We present examples of generated garment images and their corresponding human images that were excluded based on various image similarity metrics. Using LPIPS, garments with complicated patterns are filtered out, and using CLIP score, inner layer garments are filtered out even when they are considered identical in human perception. In contrast, DreamSim captures the distance between images in a way aligned with human perception, filtering out undesirable pairs.
> </details>



![](https://arxiv.org/html/2411.16801/x14.png)

> 🔼 This figure visualizes the results of a filtering process applied to synthetically generated garment images.  The goal was to ensure the quality of the generated garments by comparing them to the actual garments worn in the original images.  The comparison metric was DreamSim, which measures perceptual similarity between images.  The image pairs shown are categorized by their DreamSim distance score (d): those with d ≥ 0.4 show inconsistencies between the generated and real garments, while those with d < 0.4 indicate a close resemblance, signifying successful generation. The figure thus provides a visual demonstration of how effective the filtering step was in ensuring data quality.
> <details>
> <summary>read the caption</summary>
> Figure 12: Examples of generated garment images with different image distance values. We provide examples of generated garment images and corresponding human images, varying the distance values measured by DreamSim. With the distance value d≥0.4𝑑0.4d\geq 0.4italic_d ≥ 0.4, generated garments are inconsistent with the actual garment, while for d<0.4𝑑0.4d<0.4italic_d < 0.4, the generated garments closely resemble the actual garment.
> </details>



![](https://arxiv.org/html/2411.16801/x15.png)

> 🔼 Figure 13 presents examples from the synthetic dataset created by the BootComp model's decomposition module.  The figure showcases multiple examples of paired images:  a human image and corresponding product views of the garments worn.  The generated garment images are of high quality and represent several garment categories including shirts, pants, shoes, and bags. This demonstrates the module's ability to produce realistic garment images from a single image of a person wearing the garments.
> <details>
> <summary>read the caption</summary>
> Figure 13: Examples of our synthetic paired data. We visualize our synthetic pairs of a human image and multiple garment images. Our decomposition module generates high-quality garment images in product view on different categories including shirts, pants, shoes and bags.
> </details>



![](https://arxiv.org/html/2411.16801/x16.png)

> 🔼 This figure demonstrates the versatility of the decomposition module by applying it beyond the fashion domain.  Using the MVImgNet dataset [51], which contains images of various objects in multiple views, the model is tasked with taking an image containing several everyday objects (e.g., cups, chairs, broccoli) and generating a product view for each individual object. This process effectively creates synthetic paired data, where each pair consists of a single object image and its corresponding product-view image. The reference images used in this experiment were sourced from the COCO dataset [26].  The results showcase the potential of the decomposition module for broader applications in general-purpose image generation and data augmentation.
> <details>
> <summary>read the caption</summary>
> Figure 14: Examples of synthetic paired data generated by the decomposition module trained on MVImgNet [51]. We show the potential extension of our decomposition module to the general domain. Given an image containing common objects such as cups, chairs, and broccoli, the decomposition module generates each object in a different view, constructing paired data. Reference images are obtained from COCO [26].
> </details>



![](https://arxiv.org/html/2411.16801/x17.png)

> 🔼 Figure 15 showcases the versatility of the decomposition module, a key component of the BootComp framework, when trained on the MVImgNet dataset.  It demonstrates that this module, initially designed for extracting garment images, can function as a robust multi-view image generator for single subjects. The input subject images used in this demonstration were generated using the DreamBooth method, highlighting the potential for seamless integration with other image generation techniques. The figure displays several examples of single-subject images processed by the decomposition module to create various viewpoints of the same subject, illustrating its ability to generate multiple views from a single image while preserving the subject's identity and key features.
> <details>
> <summary>read the caption</summary>
> Figure 15: Examples of generated subjects in multi-view by the decomposition module trained on MVImgNet. The decomposition module can serve as a multi-view generator for single-subject images. Subject images are from DreamBooth [40].
> </details>



![](https://arxiv.org/html/2411.16801/x18.png)

> 🔼 Figure 16 shows examples where BootComp, despite its strengths, faces limitations.  The model struggles with the realistic placement of hats on human subjects, often resulting in unnatural or inaccurate positioning.  Furthermore, fine details such as small text on clothing are not consistently preserved in the generated images. These limitations highlight areas where the model could benefit from further improvements or additional training data.
> <details>
> <summary>read the caption</summary>
> Figure 16: Limitations of BootComp. BootComp struggles on naturally dressing hats and preserving tiny details like letters.
> </details>



![](https://arxiv.org/html/2411.16801/x19.png)

> 🔼 Figure 17 presents a qualitative comparison of human image generation results between BootComp and two baseline methods (MIP-Adapter and Parts2Whole).  It showcases the superior performance of BootComp in generating realistic human images wearing multiple garments.  BootComp faithfully preserves the fine details of each garment, while the baseline methods frequently produce images with inconsistencies in garment appearance and often blend garments together unrealistically. This demonstrates BootComp's ability to handle complex combinations of clothing items accurately and with high fidelity.
> <details>
> <summary>read the caption</summary>
> Figure 17: More qualitative comparisons. BootComp generates realistic human images wearing multiple reference garments, faithfully preserving fine-details of each garment, while baselines often generate inconsistent garment images and blend reference garments.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Dataset | MP-LPIPS ↓ | DINO ↑ | M-DINO ↑ | FID ↓ |
|---|---|---|---|---|
| Segmented | 0.374 | 0.284 | 0.025 | 59.27 |
| **Synthetic** | **0.197** | **0.365** | **0.043** | **29.41** |{{< /table-caption >}}
> 🔼 This table compares the performance of a model trained on a synthetic dataset generated using the proposed decomposition method with that of a model trained on a segmented dataset.  The segmented dataset involved manually extracting garment images from existing human images. The table uses four metrics (MP-LPIPS, DINO, M-DINO, FID) to evaluate garment similarity and overall image fidelity. Results show that the model trained on the synthetic data produced significantly better results than the one trained on the segmented data, demonstrating the effectiveness of the synthetic data generation pipeline in improving model quality.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison on dataset construction methods. The model trained on the segmented paired dataset shows worse performance compared to one trained on our synthetic paired dataset both in  garment similarity and  image fidelity.
> </details>

{{< table-caption >}}
| Dataset size | DINO ↑ | M-DINO ↑ | FID ↓ |
|---|---|---|---|
| 5K | 0.337 | 0.248 | 34.15 |
| 15K | 0.338 | 0.251 | 32.32 |
| 30K | 0.344 | 0.261 | 26.99 |
| 50K | **0.360** | **0.285** | **25.88** |{{< /table-caption >}}
> 🔼 This table presents the results of an experiment assessing the impact of dataset size on the performance of the BootComp model.  Specifically, it shows how increasing the size of the training dataset (after filtering out low-quality data) affects the model's ability to accurately generate images with similar garment appearances and overall human image fidelity.  Larger datasets generally lead to improved performance on both garment similarity and image quality metrics, suggesting a positive correlation between training data volume and the model's accuracy and detail preservation.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison on dataset scale. Training with a larger datatset (after filtered) improves the model’s overall performance in both  garment similarity and  image fidelity.
> </details>

{{< table-caption >}}
| τ | 0.4 | 0.5 | 0.6 | 0.7 | 1.0 |
|---|---|---|---|---|---| 
| DINO↑ | **0.360** | 0.347 | 0.343 | 0.342 | 0.338 |{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of different threshold values (τ) used in a data filtering process on the performance of a model.  The filtering step removes low-quality synthetic data generated during training. The table shows how varying τ affects the model's performance, measured by the DINO metric. A stricter threshold (lower τ) indicates a more stringent filtering process, leading to a smaller dataset. The study found that stricter filtering, while reducing the dataset size, improves the model's performance as indicated by higher DINO scores.  The optimal threshold value selected was τ = 0.4.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study for threshold value τ𝜏\tauitalic_τ on filtering. The data quality improves with a stricter threshold value, leading to better performance. We adopt τ=0.4𝜏0.4\tau=0.4italic_τ = 0.4 when applying the filtering.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2411.16801/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16801/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16801/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16801/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16801/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16801/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16801/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16801/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16801/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16801/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16801/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16801/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16801/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16801/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16801/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16801/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16801/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}