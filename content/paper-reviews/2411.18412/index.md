---
title: "Adaptive Blind All-in-One Image Restoration"
summary: "Adaptive Blind All-in-One Image Restoration (ABAIR) efficiently handles diverse image degradations, generalizes well to unseen distortions, and easily incorporates new ones via efficient fine-tuning."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Restoration", "🏢 Computer Vision Center",]
showSummary: true
date: 2024-11-27
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2411.18412 {{< /keyword >}}
{{< keyword icon="writer" >}} David Serrano-Lozano et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-11-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2411.18412" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2411.18412" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/adaptive-blind-all-in-one-image-restoration" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2411.18412/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current all-in-one image restoration models struggle with real-world scenarios due to **limited generalization to unseen degradations and composite distortions**.  They often require retraining the whole model when adding new degradation types, a computationally expensive process.  This is a significant limitation for practical applications.



This paper introduces an **adaptive blind all-in-one image restoration (ABAIR)** model designed to overcome these limitations.  It utilizes a three-phase training strategy, including large-scale pre-training with synthetic degradations and independent adapters for specific degradation types. A lightweight degradation estimator then learns to effectively combine these adapters. This approach achieves superior performance across various benchmarks and demonstrates improved generalization to unseen and composite degradations, with the ability to efficiently add new degradation types through fine-tuning a small subset of parameters.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} ABAIR outperforms state-of-the-art all-in-one image restoration models across various degradation scenarios. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} ABAIR effectively generalizes to unseen degradations and handles composite degradations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} ABAIR incorporates new degradations efficiently through a flexible model structure and lightweight fine-tuning strategy. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it presents a novel **adaptive blind all-in-one image restoration (ABAIR)** model that significantly improves the state-of-the-art in image restoration.  The **adaptability** to unseen degradations and handling of **composite distortions** are particularly relevant for real-world applications, where images are often degraded in complex ways. The **efficient fine-tuning** strategy also addresses the challenge of retraining large models for new degradations, making the ABAIR method very attractive for practical use.  The research opens up new avenues for exploration in flexible and efficient image restoration models.

------
#### Visual Insights



![](https://arxiv.org/html/2411.18412/x1.png)

> 🔼 This figure compares the performance of the proposed Adaptive Blind All-in-One Image Restoration (ABAIR) model against three state-of-the-art all-in-one image restoration methods: Restormer, PromptIR, and DiffUIR.  The comparison is done across a total of 11 different image restoration tasks. These tasks are categorized into three groups: 5 known tasks (common image restoration problems), 3 unseen tasks (representing generalization to previously unknown restoration problems), and 3 mixed degradation scenarios (combining multiple types of image degradations to simulate real-world conditions).  The radial plot visually represents the performance of each model on each task, with the outermost circle representing the best performance and the innermost circle representing the worst.  Each axis of the plot represents one of the three task categories (known, unseen, and mixed), making it easy to compare the models' overall performance across diverse image restoration scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 1: Our model significantly outperforms state-of-the-art all-in-one image restoration (IR) methods, Restormer [63], PromptIR [40], and DiffUIR [66], across five known IR tasks, three unseen tasks, and three mixed degradation scenarios. The plot is normalized along each axis, with the lowest value positioned on the second circle and the highest value on the outermost circle.
> </details>





{{< table-caption >}}
| PSNR/SSIM | Deraining |  | Dehazing |  | Denoising |  | Deblurring |  | Low-Light |  | Average |  | Param. | 
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|  | Rain100L |  | SOTS (Out) |  | BSD68<sub>σ=25</sub> |  | GoPro |  | LoLv1 |  |  |  |  |
| AirNet [27] | 32.98 | 0.951 | 21.04 | 0.884 | 30.91 | 0.882 | 24.35 | 0.781 | 18.18 | 0.735 | 25.49 | 0.847 | 9M |
| Uformer [51] | 35.48 | 0.967 | 27.20 | 0.958 | 30.59 | 0.869 | 26.41 | 0.809 | 21.40 | 0.808 | 28.21 | 0.882 | 52M |
| IDR [64] | 35.63 | 0.965 | 25.24 | 0.943 | 31.60 | 0.887 | 27.87 | 0.846 | 21.34 | 0.826 | 28.34 | 0.893 | 15M |
| X-Restormer [8] | 35.42 | 0.968 | 27.58 | 0.959 | 30.92 | 0.880 | 27.54 | 0.835 | 20.88 | 0.817 | 28.47 | 0.891 | 26M |
| DA-CLIP [30] | 35.49 | 0.970 | 28.10 | 0.962 | 30.42 | 0.859 | 26.50 | 0.807 | 21.94 | 0.817 | 28.49 | 0.880 | 174M |
| DiffUIR [66] | 35.52 | 0.969 | 28.17 | 0.964 | 30.92 | 0.879 | 26.99 | 0.821 | 20.92 | 0.789 | 28.50 | 0.880 | 36M |
| Restormer [63] | 35.56 | 0.970 | 27.94 | 0.962 | 30.74 | 0.875 | 26.84 | 0.818 | 21.74 | 0.815 | 28.56 | 0.888 | 26M |
| PromptIR [40] | 35.40 | 0.967 | 28.26 | 0.965 | 30.89 | 0.872 | 26.55 | 0.808 | 21.80 | 0.815 | 28.58 | 0.885 | 36M |
| Ours OH | 37.73 | 0.978 | 33.46 | 0.983 | 31.38 | 0.898 | 29.00 | 0.878 | 24.20 | 0.865 | 31.15 | 0.920 | 59M |
| Ours SW | 37.79 | 0.979 | 33.48 | 0.984 | 31.38 | 0.898 | 29.00 | 0.878 | 24.19 | 0.865 | 31.17 | 0.921 | 59M |
| Ours (Oracle) | 39.09 | 0.981 | 33.54 | 0.984 | 31.40 | 0.901 | 29.10 | 0.879 | 24.45 | 0.866 | 31.39 | 0.922 | 59M |{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of different all-in-one image restoration (IR) methods on five standard IR datasets, each focusing on a specific type of image degradation (deraining, dehazing, denoising, deblurring, and low-light enhancement).  The performance of state-of-the-art all-in-one models is compared to the proposed approach, ABAIR.  The results are evaluated using Peak Signal-to-Noise Ratio (PSNR) and Structural Similarity Index (SSIM) metrics.  An additional row, 'Ours (Oracle)', shows the best possible performance of the ABAIR model assuming perfect degradation type estimation, providing an upper bound for the model's potential.
> <details>
> <summary>read the caption</summary>
> Table 1: 5-degradations setup. Quantitative results on five IR datasets comparing the state-of-the-art all-in-one methods and our approach. Ours (Oracle) is an upper bound for our approach: it computes the best reachable value in case our estimator always chooses the correct degradation.
> </details>





### In-depth insights


#### Adaptive Blind IR
Adaptive Blind Image Restoration (IR) tackles the challenge of recovering high-quality images from various unknown degradations.  **Existing all-in-one IR models often struggle with unseen degradations and composite distortions**, requiring retraining for new degradation types.  **Adaptive Blind IR addresses these limitations by incorporating a flexible architecture that can adapt to diverse and previously unseen degradations without extensive retraining.** This is achieved through several key strategies:  a robustly pretrained backbone that generalizes well, independent low-rank adapters to handle specific distortion types, and a lightweight estimator to effectively combine these adapters for complex scenarios. This approach not only enhances performance on known degradations but also significantly improves generalization capabilities, making it well-suited for real-world applications where the types and combinations of image degradations are unpredictable.

#### LoRA-based Adapters
The utilization of LoRA-based adapters presents a significant advancement in adaptive image restoration.  By employing low-rank adaptation, the method enables efficient fine-tuning of a pre-trained model without retraining the entire network. This **parameter efficiency** is crucial, especially when dealing with numerous or composite degradation types.  The adapters act as specialized modules that learn to handle specific distortions, such as rain, haze, or blur, individually.  This **disentangled approach** allows the model to adapt to a wide variety of restoration tasks effectively.  The **flexible nature** of the LoRA-based adapters is highlighted by the ease of adding new degradation types, merely requiring training a new adapter, rather than retraining the whole model. This modularity is a **key strength** of the proposed methodology, enhancing both efficiency and generalizability. The adaptive combination of multiple adapters, driven by a degradation estimator, further improves performance on complex, real-world scenarios. This strategy of combining pre-trained model weights with low-rank adapter updates, offers a strong balance of power and efficiency.

#### CutMix Data Augmentation
CutMix, a data augmentation technique, is explored in the context of image restoration.  The core idea involves combining different images, and their corresponding degradations, to create synthetic training examples. This approach is particularly relevant for **handling composite degradations** commonly encountered in real-world scenarios where multiple image distortions occur simultaneously. By generating synthetic instances of these complex degradations, the model becomes robust and generalizes well to unseen distortions. **CutMix helps address the limitations of traditional methods** that typically train on single degradations, thus limiting their performance in practical situations. The effectiveness of this approach stems from the diverse and composite nature of the training data generated; consequently, it enhances the model's ability to identify and address different distortion types efficiently and even handle unseen combinations. The method is particularly valuable for building robust and generalizable image restoration models, particularly in scenarios involving complex and mixed degradations.

#### Multi-Task Integration
The "Multi-Task Integration" phase of the proposed adaptive blind all-in-one image restoration (ABAIR) model elegantly addresses the challenge of handling diverse and composite image degradations.  **Instead of relying on a single, monolithic model**, ABAIR leverages a lightweight degradation estimator to dynamically select or blend multiple specialized low-rank adapters. Each adapter is trained on a specific type of degradation, thus allowing for effective handling of individual distortions. This modular design, employing **LoRA for parameter-efficient fine-tuning**, offers **superior flexibility and scalability**.  The estimator, trained on a large dataset including both single and mixed degradations, learns to effectively weight the individual adapters' contributions based on the input image, creating a versatile blind all-in-one solution. This approach is especially powerful for handling unseen degradations, as adding a new degradation only necessitates training a new adapter and potentially retraining the lightweight estimator, achieving adaptability while maintaining efficiency.  **The ability to smoothly incorporate new degradations without extensive retraining is a key strength**, highlighting the innovative and practical nature of the ABAIR architecture.

#### Unseen Degradation
The concept of "unseen degradation" in image restoration is crucial because real-world images are rarely degraded by single, known distortions.  The success of a restoration model hinges on its ability to generalize to unseen degradation types, which weren't present during training.  **Models trained only on known degradations often fail catastrophically when presented with novel distortion combinations or entirely new distortion types.** This necessitates the development of robust and adaptable models that can handle the unexpected, rather than relying on exhaustive training data covering every possibility.  The challenge lies in creating models that can learn underlying principles of image degradation and restoration, rather than just memorizing specific distortion patterns.  **Adaptive methods, such as using low-rank adapters or prompt-based approaches, offer a promising path towards improving generalization to unseen degradation.**  These techniques allow for flexible model adaptation without requiring complete retraining for each new distortion, increasing efficiency and reducing the computational burden.  **The ability to incorporate new degradations with minimal retraining is a key desideratum** for practical, real-world application of image restoration.  Future research should focus on developing even more robust generalization methods, potentially exploring meta-learning or other techniques that can transfer knowledge across diverse degradation scenarios.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2411.18412/x2.png)

> 🔼 This figure illustrates the three-phase training process of the proposed Adaptive Blind All-in-One Image Restoration (ABAIR) model. Phase I involves pre-training a baseline model on a large dataset of high-fidelity images with synthetically generated composite degradations (e.g., combined noise, blur, rain, etc.). A segmentation head is trained simultaneously to predict the type of degradation in each image region. Phase II focuses on adapting the pre-trained model to specific degradation types by training independent low-rank adapters (LoRAs) on standard image restoration datasets. Finally, in Phase III, a lightweight degradation estimator is trained to adaptively select or blend the appropriate adapters based on the input image's degradation characteristics. This flexible three-phase training approach enables the model to handle unseen degradations and composite distortions efficiently and allows for easy updates with new degradation types by only training additional adapters and the estimator.
> <details>
> <summary>read the caption</summary>
> Figure 2: General schema of our proposed method. Our method is divided into three phases. In Phase I we pre-train our baseline model with synthetic degradations of high-fidelity images. Each image contains different degradations in different regions, and a segmentation head learns to predict them, while a restoration loss aims at restoring the image. In this way, the model is able to distinguish and generalize well to multiple degradations. In Phase II, we learn degradation-specific adaptors using standard image restoration datasets. In Phase III, we learn a lightweight degradation estimator to adaptively blend the adapters based on the degradation profile of the input image. This 3-phase methodology makes our method flexible to deal with images containing multiple distortions and easy to update for new ones as it only requires training an adapter for the new distortion and retraining the degradation estimator.
> </details>



![](https://arxiv.org/html/2411.18412/extracted/6029195/images/synthetic_examples/fig3_rainy.jpg)

> 🔼 This figure shows an example of synthetic rain degradation generated for pre-training the image restoration model.  It visually demonstrates how the model's input images are augmented with various levels of simulated rain, allowing the model to learn how to remove this type of degradation from real-world images. The specific parameters used to generate this particular rain effect are not explicitly given in the caption but are discussed in the supplementary material of the paper.
> <details>
> <summary>read the caption</summary>
> (a) Rain
> </details>



![](https://arxiv.org/html/2411.18412/extracted/6029195/images/synthetic_examples/fig3_hazy.jpg)

> 🔼 This image shows an example of synthetically generated haze for image restoration. The image demonstrates the effect of haze, obscuring details and reducing visibility. It is part of a dataset used for training a model capable of removing this type of degradation, allowing the model to effectively enhance image quality.
> <details>
> <summary>read the caption</summary>
> (b) Haze
> </details>



![](https://arxiv.org/html/2411.18412/extracted/6029195/images/synthetic_examples/fig3_noise.jpg)

> 🔼 This image shows examples of synthetically generated noise degradation for image restoration experiments. Different noise levels are shown to demonstrate the range of noise intensities that the model was trained on.
> <details>
> <summary>read the caption</summary>
> (c) Noise
> </details>



![](https://arxiv.org/html/2411.18412/extracted/6029195/images/synthetic_examples/fig3_blurry.jpg)

> 🔼 This figure shows examples of synthetically generated blur degradation.  Different levels of blur are simulated, demonstrating the range of degradation levels achievable through this process in the dataset. The blur is created programmatically, not by applying a real-world blur effect to images. This is part of a larger pipeline to produce a dataset of training images with various synthetic degradations, which includes rain, haze, noise, and low-light, in addition to the blur shown in this figure.
> <details>
> <summary>read the caption</summary>
> (d) Blur
> </details>



![](https://arxiv.org/html/2411.18412/extracted/6029195/images/synthetic_examples/fig3_lol.jpg)

> 🔼 This figure shows a sample image with low-light degradation.  It is one of five examples in a series illustrating different types of synthetic degradation used to pre-train the ABAIR model. The goal is to train the model on a wide variety of synthetically degraded images to improve generalization and robustness for unseen degradations during real-world applications.
> <details>
> <summary>read the caption</summary>
> (e) Low-light
> </details>



![](https://arxiv.org/html/2411.18412/x28.png)

> 🔼 This figure displays examples of synthetically generated image degradations used in the training process of the proposed model.  It showcases five common image distortions: rain, haze, noise, blur, and low-light. Each example demonstrates the type and approximate severity of each distortion.  The purpose of this figure is to illustrate the variety of artificial degradations used to create a robust pre-training dataset, helping the model generalize better to real-world scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 3: Examples of our synthetic degradation generation for five traditional distortions.
> </details>



![](https://arxiv.org/html/2411.18412/x29.png)

> 🔼 This figure showcases the qualitative results of the proposed ABAIR model on single degradation removal tasks.  It presents visual comparisons of the input images with the outputs generated by the ABAIR model, Restormer [63], and PromptIR [40]. The results are shown for three specific degradation types: deblurring (using the GoPro [35] dataset), denoising (using the LoLv1 [52] dataset), and deraining (using the Rain100H [56] dataset).  This allows for a direct visual assessment of the model's performance in restoring image quality across various types of single degradations.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative results for single degradation removal, including deblurring on the GoPro [35] dataset, denoising on the LoLv1 [52] dataset, and deraining on the Rain100H [56] dataset.
> </details>



![](https://arxiv.org/html/2411.18412/x30.png)

> 🔼 This figure demonstrates the model's generalization ability to unseen image degradation types.  It presents qualitative results comparing the performance of the proposed model, a state-of-the-art model (PromptIR), and a version of the proposed model that has been retrained to include these unseen degradation types. The unseen tasks highlighted are JPEG artifact removal and 4-to-8-bit image reconstruction.  The results show that while neither the proposed model nor PromptIR were trained on these specific tasks, the retrained version of the proposed model achieves significantly better performance.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative results for unseen IR tasks, including JPEG artifact removal and 4-to-8 bit reconstruction. PromptIR [40] and Ours are not trained for this task, while Ours retrained has a specified LoRA in an 8-degradation setup.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| PSNR/SSIM | Deraining |  | Dehazing |  | Denoising |  |  |  | Average |  |
|---|---|---|---|---|---|---|---|---|---|---|---|
|  | Rain100L |  | SOTS (Out) |  | BSD68<sub>σ=15</sub> |  | BSD68<sub>σ=25</sub> |  | BSD68<sub>σ=50</sub> |  |  |
| DL [14] | 32.62 | 0.931 | 26.92 | 0.931 | 33.05 | 0.914 | 30.41 | 0.861 | 26.90 | 0.740 | 29.98 | 0.875 |
| MPRNet [62] | 33.57 | 0.954 | 25.28 | 0.954 | 33.54 | 0.927 | 30.89 | 0.880 | 27.56 | 0.779 | 30.17 | 0.899 |
| AirNet [27] | 34.90 | 0.967 | 27.94 | 0.962 | 33.92 | 0.933 | 31.26 | 0.888 | 28.00 | 0.797 | 31.20 | 0.909 |
| Restormer [63] | 35.56 | 0.969 | 29.92 | 0.970 | 33.86 | 0.933 | 31.20 | 0.888 | 27.90 | 0.794 | 31.69 | 0.911 |
| PromptIR [40] | 36.37 | 0.972 | 30.58 | 0.974 | 33.98 | 0.933 | 31.31 | 0.888 | 28.06 | 0.799 | 32.06 | 0.913 |
| Ours OH | 38.58 | 0.981 | 33.71 | 0.985 | 33.95 | 0.934 | 31.29 | 0.889 | 28.04 | 0.798 | 33.11 | 0.918 |
| Ours SW | 38.52 | 0.980 | 33.62 | 0.984 | 33.95 | 0.933 | 31.24 | 0.889 | 28.01 | 0.796 | 33.07 | 0.916 |{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different all-in-one image restoration (IR) methods on three image degradation types: deraining, dehazing, and denoising.  The performance of several state-of-the-art methods is compared against the proposed ABAIR method, evaluating both PSNR and SSIM metrics across three benchmark datasets (Rain100L, SOTS (Out), and BSD68). The results highlight the effectiveness of the ABAIR model in handling multiple degradation types simultaneously.
> <details>
> <summary>read the caption</summary>
> Table 2: 3-degradations setup. Quantitative results on three IR datasets comparing the state-of-the-art all-in-one methods and our approach.
> </details>

{{< table-caption >}}
| PSNR/SSIM | Deraining (Rain100H) |  | Deblurring (HIDE) |  | Low-Light (Lolv2-Real) |  |
|---|---|---|---|---|---|---|
| IDR [64] | 11.32 | .397 | 16.83 | .621 | 17.61 | .697 |
| X-Restormer [8] | 14.08 | .437 | 25.40 | .801 | 25.42 | .876 |
| DiffUIR [66] | 14.78 | .487 | 23.98 | .739 | 26.12 | .861 |
| Restormer [63] | 14.50 | .464 | 24.42 | .781 | 27.12 | .877 |
| PromptIR [40] | 14.28 | .444 | 24.49 | .762 | 27.70 | .870 |
| Ours OH | **21.69** | **.692** | 27.04 | **.850** | **28.09** | **.907** |
| Ours SW | 19.37 | .594 | **27.05** | **.850** | **28.09** | .906 |{{< /table-caption >}}
> 🔼 This table presents quantitative results, specifically PSNR and SSIM scores, comparing different image restoration methods on three additional datasets. These datasets were not used during the training process of the models.  The purpose is to evaluate the generalization capability of the models to unseen data, thereby assessing their robustness and applicability in real-world scenarios where diverse degradation types are common.
> <details>
> <summary>read the caption</summary>
> Table 3: Quantitative results on additional test datasets with the learned degradations.
> </details>

{{< table-caption >}}
| PSNR/SSIM | 4-to-8 bits |  | JPEG Q20 |  | Desnowing |  | 
|---|---|---|---|---|---|---|---| 
| IDR [64] | 24.02 | 0.738 | 26.51 | 0.913 | 18.00 | 0.649 |  | 
| X-Restormer [8] | 24.73 | 0.745 | 26.86 | 0.922 | 18.51 | 0.681 |  | 
| DiffUIR [66] | 24.68 | 0.743 | 26.88 | 0.921 | 18.39 | 0.671 |  | 
| Restormer [63] | 24.64 | 0.743 | 26.90 | 0.929 | 18.14 | 0.655 |  | 
| PromptIR [40] | 24.70 | 0.740 | 26.60 | 0.920 | 18.49 | 0.673 |  | 
| Ours OH | 25.25 | 0.742 | 29.20 | 0.931 | 18.71 | 0.684 |  | 
| Ours SW | 25.32 | 0.743 | 29.35 | 0.926 | 18.67 | 0.683 |  | 
| Ours OH* | 29.14 | 0.826 | 30.82 | 0.943 | 24.19 | 0.797 |  | 
| Ours SW* | 29.03 | 0.810 | 30.71 | 0.939 | 24.02 | 0.779 |  | {{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different image restoration (IR) models on three unseen IR tasks: 4-to-8 bits JPEG compression artifact removal, JPEG compression artifact removal, and snow removal.  The models were not trained on these specific degradation types. The results for the proposed method ('Ours') are shown both without ('Ours') and with ('Ours*') a lightweight retraining approach.  The lightweight retraining involved training new adapters for these three tasks and retraining the degradation estimator with all eight tasks (the original five plus the three new ones), resulting in a model with only 8M parameters. The table allows readers to assess how well different IR models generalize to unseen degradation types and the effectiveness of the lightweight retraining strategy.
> <details>
> <summary>read the caption</summary>
> Table 4: Quantitative results for unseen IR tasks. Note that the models have not been trained for these degradations. Ours* shows results for the lightweight re-training scenario. New adapters are trained for the new tasks and the estimator is retrained with 8 tasks (5-IR case + 3 new ones; only 8M training parameters).
> </details>

{{< table-caption >}}
| PSNR/SSIM | Blur&Noise |  | Blur&JPEG |  | Haze&Snow |  |
|---|---|---|---|---|---|---|
| IDR [64] | 21.98 | .683 | 23.02 | .681 | 20.51 | .789 |
| X-Restormer [8] | 22.67 | .669 | 23.98 | .710 | 20.76 | .805 |
| DiffUIR [66] | 22.71 | .670 | 24.00 | .711 | 20.86 | .802 |
| Restormer [63] | 22.35 | .662 | 23.24 | .698 | 20.76 | .800 |
| PromptIR [40] | 22.89 | .671 | 23.92 | .705 | 20.94 | .803 |
| X-Restormer [8] | 22.67 | .669 | 23.98 | .710 | 20.76 | .805 |
| Ours OH | 24.30 | .743 | 24.81 | .717 | 21.48 | .834 |
| Ours SW | 25.14 | .750 | 24.97 | .719 | 22.09 | .839 |{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different all-in-one image restoration (IR) methods on datasets containing images with mixed degradations (multiple types of image distortions combined).  The methods are evaluated using PSNR and SSIM metrics, which assess the peak signal-to-noise ratio and structural similarity between the restored images and their ground truth counterparts. The table helps demonstrate the ability of each method to handle complex real-world image degradations.
> <details>
> <summary>read the caption</summary>
> Table 5: Quantitative results on datasets with mixed degradations.
> </details>

{{< table-caption >}}
| Pre-training | PSNR | SSIM |
|---|---|---|
| IR datasets | 28.50 | .892 |
| GLD+synth. | 30.63 | .913 |
| + CutMix | 31.09 | .920 |
| + Aux. segm. | 31.17 | .921 |{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies conducted to analyze the impact of different pre-training strategies and LoRA rank settings on the performance of the proposed Adaptive Blind All-in-One Image Restoration (ABAIR) model.  Phase I pre-training involves training the model on various datasets and with different synthetic degradations.  Phase II and III involve fine-tuning with LoRA adapters of different ranks. The table shows the impact of these choices on PSNR and SSIM metrics.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation studies on types of pre-training for Phase I, and the rank of LoRA [19] for Phase II and III.
> </details>

{{< table-caption >}}
| Rank | PSNR | SSIM | Params |
|---|---|---|---| 
| 4 | 31.17 | .921 | 3.6M |
| 8 | 31.14 | .920 | 7.2M |
| 16 | 30.97 | .916 | 14.3M |{{< /table-caption >}}
> 🔼 This table presents an ablation study comparing the performance of three different low-rank adapter methods (LoRA, VeRA, and Conv-LORA) used for parameter-efficient fine-tuning of an image restoration model.  It shows the impact of varying the rank (a hyperparameter controlling the number of parameters updated) of these adapters on image restoration quality, measured by PSNR and SSIM metrics, across various image degradation types (Rain100L, SOTS, BSD68, GoPro, LoLv1). The results demonstrate that LoRA consistently outperforms the other methods, and lower-rank adapters generally achieve better performance with fewer parameters.
> <details>
> <summary>read the caption</summary>
> Table 7: Ablation study on different low-rank adapters and their rank. Results are the mean for all images. LoRA outperforms both VeRA and Conv-LORA. Lower ranks perform better.
> </details>

{{< table-caption >}}
| PSNR/SSIM | Deraining | Dehazing | Denoising | Deblurring | Low-Light | Average | Adapter Param. |
|---|---|---|---|---|---|---|---|---|
| Method | Rank | Rain100L | SOTS (Out) | BSD68<sub>σ=25</sub> | GoPro | LoLv1 |  |  |
| LoRA [19] | 4 | 37.79 | .979 | 33.48 | .984 | 31.38 | .898 | 29.00 | .878 | 24.19 | .865 | 31.17 | .921 | 3.6M |
|  | 8 | 37.75 | .978 | 33.4 | .982 | 31.39 | .898 | 29.02 | .878 | 24.18 | .865 | 31.15 | .920 | 7.2M |
|  | 16 | 37.61 | .972 | 33.21 | .977 | 31.31 | .896 | 28.77 | .875 | 23.96 | .862 | 30.97 | .916 | 14.3M |
| VeRA [24] | 4 | 37.02 | .971 | 32.67 | .972 | 31.32 | .896 | 28.61 | .872 | 23.78 | .580 | 30.68 | .858 | 460K |
|  | 8 | 37.09 | .971 | 32.69 | .972 | 31.32 | .896 | 28.64 | .873 | 23.79 | .580 | 30.71 | .858 | 468K |
|  | 16 | 37.04 | .970 | 32.62 | .970 | 31.33 | .896 | 28.62 | .872 | 23.84 | .581 | 30.69 | .858 | 476K |
| Conv-LoRA [67] | 4 | 37.00 | .969 | 32.55 | .971 | 31.32 | .896 | 28.54 | .870 | 23.70 | .576 | 30.62 | .856 | 3.9M |
|  | 8 | 36.94 | .968 | 32.44 | .968 | 31.30 | .895 | 28.48 | .868 | 23.62 | .575 | 30.56 | .855 | 7.5M |{{< /table-caption >}}
> 🔼 This table presents an ablation study comparing different methods for combining the predictions of five task-specific LoRA (Low-Rank Adaptation) adapters. Each adapter is trained to handle a specific type of image degradation (rain, haze, noise, blur, and low-light). The methods compared are: summing the outputs of all adapters, averaging the outputs, and using the proposed method in the paper which uses a lightweight estimator to predict the probability of each degradation type and weights the adapter outputs accordingly.  The table shows the performance of each method in terms of PSNR and SSIM on five image restoration datasets, for each of the five degradation types, and gives the average performance across all five types.
> <details>
> <summary>read the caption</summary>
> Table 8: Ablation study on different methods for blending the five degradations task-specific LoRA [19] adapters.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2411.18412/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.18412/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.18412/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.18412/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.18412/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.18412/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.18412/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.18412/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.18412/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.18412/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.18412/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.18412/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.18412/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.18412/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.18412/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.18412/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.18412/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}