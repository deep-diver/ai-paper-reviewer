---
title: "SAMPart3D: Segment Any Part in 3D Objects"
summary: "SAMPart3D: Zero-shot 3D part segmentation across granularities, scaling to large datasets & handling part ambiguity."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 University of Hong Kong",]
showSummary: true
date: 2024-11-11
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2411.07184 {{< /keyword >}}
{{< keyword icon="writer" >}} Yunhan Yang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-11-13 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2411.07184" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2411.07184" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/sampart3d-segment-any-part-in-3d-objects" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2411.07184/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

3D part segmentation is crucial for various applications, but existing methods often struggle with the need for large amounts of annotated data and handling the ambiguity inherent in defining parts.  Most previous works relied heavily on text prompts and struggled to scale to large, unlabeled datasets. They also lack the flexibility to handle different levels of granularity in part definitions.



SAMPart3D tackles these issues with a **scalable zero-shot 3D part segmentation framework**. It employs a text-independent approach to learn 3D priors from large, unlabeled datasets using a multi-stage training process. This allows for improved scalability and flexibility, handling multiple granularity levels. Furthermore, it introduces the PartObjaverse-Tiny benchmark dataset to help address the lack of suitable datasets in this field.  Experiments showed that SAMPart3D significantly outperforms current state-of-the-art methods.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SAMPart3D achieves zero-shot 3D part segmentation across multiple granularities without relying on text prompts. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} It leverages a novel text-independent 2D-to-3D distillation method for scalability and flexibility. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The new PartObjaverse-Tiny benchmark dataset offers increased diversity and complexity for evaluating 3D part segmentation methods. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses the limitations of existing 3D part segmentation methods by introducing SAMPart3D, a **scalable zero-shot framework** that overcomes the challenges of text prompt reliance and part ambiguity.  This opens new avenues for research in 3D perception, particularly in **large-scale, unlabeled datasets** and applications like robotic manipulation and 3D modeling.  The proposed PartObjaverse-Tiny benchmark further enhances the field by providing a more diverse and complex dataset for future model evaluation.

------
#### Visual Insights



![](https://arxiv.org/html/2411.07184/x1.png)

> 🔼 This figure showcases the capabilities of SAMPart3D in segmenting 3D objects into their constituent parts at various levels of detail.  The examples demonstrate that the model can accurately identify and delineate semantic parts (e.g., a chair's legs, seat, and back) without requiring predefined labels or textual descriptions. The segmentation is robust across different levels of granularity (e.g., from coarse divisions of an object into a few major parts to fine-grained segmentation of individual components). The figure highlights the versatility of SAMPart3D, showing its application in part-level editing and interactive segmentation workflows.
> <details>
> <summary>read the caption</summary>
> Figure 1: SAMPart3D is able to segment any 3D object into semantic parts across multiple levels of granularity, without the need for predefined part label sets or text prompts. It supports a range of applications, including part-level editing and interactive segmentation.
> </details>





{{< table-caption >}}
| Method | Overall | Human-Shape | Animals | Daily-Used | Buildings | Transportations | Plants | Food | Electronics |
|---|---|---|---|---|---|---|---|---|---| 
| PointCLIP | 5.4 | 3.5 | 4.5 | 6.5 | 5.5 | 3.6 | 8.8 | 12.3 | 5.6 |
| PointCLIPv2 | 9.5 | 6.8 | 10.0 | 11.3 | 8.4 | 6.5 | 15.8 | 15.3 | 9.9 |
| SATR | 12.3 | 15.6 | 16.5 | 12.7 | 7.9 | 9.4 | 17.2 | 14.5 | 9.7 |
| PartSLIP | 24.3 | 39.3 | 41.1 | 19.0 | 13.0 | 17.1 | 31.7 | 17.3 | 18.5 |
| Ours | **34.7** | **44.4** | **51.6** | **33.6** | **20.7** | **26.6** | **42.6** | **35.1** | **31.1** |{{< /table-caption >}}

> 🔼 This table presents the performance of various zero-shot semantic segmentation methods on the PartObjaverse-Tiny dataset.  The performance is measured using the mean Intersection over Union (mIoU) metric, a standard evaluation metric for semantic segmentation, and is broken down by object category within the dataset.  The results show the mIoU for each category for each method, highlighting the relative strengths and weaknesses of each approach in segmenting different types of objects.
> <details>
> <summary>read the caption</summary>
> Table 1: Zero-shot semantic segmentation on PartObjaverse-Tiny, reported in mIoU (%).
> </details>





### In-depth insights


#### Zero-shot 3D seg.
Zero-shot 3D segmentation is a significant advancement in 3D computer vision, aiming to segment 3D objects into parts without requiring explicit training data for each part category.  This is a highly challenging task due to the variability and complexity of 3D shapes and the scarcity of labeled 3D datasets. Existing approaches frequently leverage 2D knowledge distillation from pre-trained vision-language models to achieve zero-shot capability. **However, these methods often rely heavily on text prompts**, limiting their flexibility and scalability to large, unlabeled 3D datasets.  **A key challenge lies in bridging the gap between 2D image-based features and 3D geometric structures**.  The ability to effectively capture and utilize 3D priors from unlabeled data is crucial for generalization to unseen object categories and for robust segmentation performance in the face of part ambiguity.  Future research should focus on developing more effective methods for integrating 3D geometric cues and addressing the issue of part granularity in zero-shot segmentation, thereby improving robustness and enabling more practical applications of 3D part segmentation.

#### Multi-granularity
The concept of "Multi-granularity" in the context of 3D part segmentation signifies the ability of a model to discern and segment objects at **various levels of detail**.  Instead of rigidly adhering to a predefined set of parts, a multi-granularity approach allows for flexibility in how an object is decomposed.  This is crucial because different applications might demand different levels of granularity.  For example, a robotic manipulation task might require very fine-grained segmentation, while a higher-level task like 3D modeling might benefit from coarser segmentation. The **adaptive nature** of multi-granularity allows the model to adjust to these varying needs, enhancing its applicability across a wider range of use cases.  **Scalability** also becomes a significant advantage as a multi-granularity model can readily handle various object complexities, from simple shapes to intricate designs, without needing to be retrained for each level of detail. This adaptability **reduces the need for extensive, precisely annotated datasets**, and potentially opens the door to more efficient zero-shot or few-shot learning approaches.  Furthermore, a multi-granularity model inherently addresses the **ambiguity of part definitions**. What constitutes a "part" is inherently subjective; a multi-granularity approach acknowledges this ambiguity and allows the segmentation to reflect the context and requirements of a particular application.

#### Objaverse scaling
The Objaverse dataset's scale presents a unique opportunity and challenge for 3D part segmentation.  Its sheer size, encompassing hundreds of thousands of 3D models, offers the potential to train robust models capable of zero-shot generalization across diverse and complex objects.  **However, leveraging this scale effectively requires addressing computational constraints and developing efficient training strategies.**  Simply training on the full dataset might be computationally infeasible, thus necessitating techniques like data sampling, distillation, or other model efficiency methods. The paper highlights the importance of **distilling 2D knowledge from large vision models to a more compact 3D backbone**, enabling scalability without sacrificing performance.  Furthermore, the success of Objaverse scaling depends heavily on addressing **data ambiguity**—the inherent vagueness in defining parts across different objects—through innovative solutions, such as those proposed in the paper that involve multi-granularity segmentation.  Finally, the **creation of a smaller, curated subset (PartObjaverse-Tiny)** demonstrates a practical approach to evaluating model performance on a manageable scale while still testing generalization capabilities learned from the broader Objaverse dataset. The scaling strategy, therefore, is a crucial factor determining the practical applicability and success of the proposed 3D part segmentation method.

#### 2D-3D distillation
The concept of "2D-3D distillation" in the context of 3D part segmentation represents a crucial technique for leveraging the power of advanced 2D vision models to improve 3D understanding.  **The core idea is to transfer knowledge learned from massive 2D datasets to a 3D model, overcoming the scarcity of labeled 3D data for training.** This involves distilling features or representations from a pre-trained 2D model (often a vision transformer or convolutional neural network) and using them to supervise the training of a 3D model. This approach is particularly beneficial for zero-shot or few-shot 3D part segmentation, where labeled data is limited.  **Effective 2D-3D distillation methods carefully consider how to align 2D features with 3D geometry, often through multi-view rendering and projection techniques.**  Challenges include handling view variability, occlusion, and the inherent differences in data representation between 2D images and 3D point clouds or meshes.  The success of this approach **heavily relies on the choice of 2D and 3D architectures and the distillation loss function.**  Well-designed distillation techniques can significantly enhance the performance and scalability of 3D part segmentation models, pushing the boundaries of 3D scene understanding.

#### Future directions
Future research directions for 3D part segmentation could focus on **improving scalability** to handle even larger and more complex datasets, perhaps by exploring more efficient training strategies or leveraging self-supervised learning techniques.  Another key area is **enhancing the robustness** of methods to handle noisy or incomplete data, a common issue in real-world 3D scans.  **Addressing the ambiguity** inherent in defining parts, especially across various levels of granularity, requires more sophisticated methods that can learn to distinguish between semantically similar parts.  Finally, **developing more interactive and user-friendly** tools based on these advancements will be essential to facilitate widespread adoption in real-world applications such as robotics and 3D modeling.  Research should also investigate the integration of 3D part segmentation with other computer vision tasks, such as object detection and pose estimation, to create more holistic and comprehensive 3D scene understanding systems.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2411.07184/x2.png)

> 🔼 This figure illustrates the three main stages of the SAMPart3D pipeline. (a) A 3D backbone network (PTv3-object) is pre-trained on the large-scale Objaverse dataset using visual features distilled from FeatUp-DINOv2. This stage aims to learn rich 3D representations from unlabeled data. (b) Lightweight MLPs are trained to distill 2D segmentation masks from SAM (Segment Anything Model), enabling scale-conditioned grouping of 3D points. This stage introduces flexibility to handle various levels of granularity in part segmentation. (c) Finally, the 3D points are clustered to form parts. The consistent 2D regions from multi-view renderings are highlighted and mapped to the 3D parts, which are further assigned semantic labels using Multimodal Large Language Models (MLLMs).  This last stage ensures that the segmented parts are semantically meaningful.
> <details>
> <summary>read the caption</summary>
> Figure 2: An overview pipeline of SAMPart3D. (a) We first pre-train 3D backbone PTv3-object on 3D large-scale data Objaverse, distilling visual features from FeatUp-DINOv2. (b) Next, we train light-weight MLPs to distill 2D masks to scale-conditioned grouping. (c) Finally, we cluster the feature of point clouds and highlight the consistent 2D part area with 2D-3D mapping on multi-view renderings, and then query semantics from MLLMs.
> </details>



![](https://arxiv.org/html/2411.07184/x3.png)

> 🔼 This figure showcases examples from the PartObjaverse-Tiny dataset, highlighting both semantic and instance-level part segmentations.  It visually demonstrates the detailed annotations included in the dataset, showing how objects are divided into their constituent parts with both semantic labels (describing the part's function, e.g., 'wheel', 'seat') and instance labels (identifying individual parts, e.g., 'left wheel', 'right wheel'). This provides a clear illustration of the dataset's complexity and the level of detail achieved in its annotations, which are crucial for evaluating the performance of 3D part segmentation models.
> <details>
> <summary>read the caption</summary>
> Figure 3: Visualization of PartObjaverse-Tiny with part-level semantic and instance segmentation labels.
> </details>



![](https://arxiv.org/html/2411.07184/x4.png)

> 🔼 Figure 4 presents a visual comparison of the model's multi-granularity 3D part segmentation capabilities. It showcases the results obtained by applying the model to various datasets: GSO [11], OmniObject3D [45], Vroid [5], and 3D-generated meshes. Each dataset provides a distinct set of 3D objects and demonstrates the model's flexibility in handling different types of 3D models and diverse levels of complexity.
> <details>
> <summary>read the caption</summary>
> Figure 4: Visualization of multi-granularity 3D part segmentation on GSO [11], OmniObject3D [45], Vroid [5] and 3D generated meshes.
> </details>



![](https://arxiv.org/html/2411.07184/x5.png)

> 🔼 Figure 5 presents a qualitative comparison of semantic segmentation results on the PartObjaverse-Tiny dataset, comparing the proposed method with two existing methods: PartSLIP and SATR.  It visually demonstrates the differences in performance by showcasing example segmentations of various objects.  The figure offers a side-by-side comparison, allowing for a direct visual assessment of accuracy and the ability to segment different object parts.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative comparison with PartSLIP [25] and SATR [1] in the semantic segmentation task on the PartObjaverse-Tiny dataset.
> </details>



![](https://arxiv.org/html/2411.07184/x6.png)

> 🔼 Figure 6 showcases the versatility of the SAMPart3D model's output.  The 3D part segmentation results, obtained without text prompts or pre-defined part labels, directly enable several applications. (a) shows how user-provided 2D segmentation masks can control the 3D part segmentation. (b) demonstrates part material editing capabilities: different materials can be applied to individual parts. (c) illustrates part shape editing and animation, allowing for modifications and animations of segmented components. Finally, (d) highlights click-based hierarchical segmentation, where the user can interactively segment a 3D object at different levels of granularity by clicking and selecting a scale.
> <details>
> <summary>read the caption</summary>
> Figure 6: The resulting 3D part segmentation can directly support various applications, including part segmentation controlled by 2D masks, part material editing, part geometry editing, and click-based hierarchical segmentation.
> </details>



![](https://arxiv.org/html/2411.07184/x7.png)

> 🔼 Figure 7 compares the visual features extracted by three different models: the proposed backbone (PTv3-object), DINOv2, and SAM. It demonstrates that incorporating 3D point cloud information into the PTv3-object backbone leads to more precise and detailed visual semantic features compared to the 2D-based models, DINOv2 and SAM.  The visualization highlights the superior quality and granularity of the features learned by the proposed 3D backbone.
> <details>
> <summary>read the caption</summary>
> Figure 7: Visualization and qualitative comparison of the features encoded by our backbone, DINOv2, and SAM. Due to the utilization of 3D information from point clouds, our backbone can produce more accurate and fine-grained visual semantic features.
> </details>



![](https://arxiv.org/html/2411.07184/x8.png)

> 🔼 This figure visualizes the results of 3D part segmentation on the PartNetE dataset. It showcases the effectiveness of the proposed method (SAMPart3D) in segmenting various objects from the dataset, highlighting its ability to accurately identify and delineate individual parts even in complex 3D shapes. The segmentation is fine-grained and detailed, demonstrating the model's capacity to handle intricate object geometries and various part configurations.
> <details>
> <summary>read the caption</summary>
> Figure 8: Visualization of segmentation results on PartNetE dataset.
> </details>



![](https://arxiv.org/html/2411.07184/x9.png)

> 🔼 This figure shows examples of multi-granularity segmentation results from the SAMPart3D model.  It demonstrates the model's ability to segment 3D objects (represented as point clouds and meshes) into parts at various levels of detail, from coarse to fine-grained. Each row represents a different object, and each column shows the segmentation results at increasing levels of granularity. This showcases the flexibility of SAMPart3D in adapting to different segmentation needs.
> <details>
> <summary>read the caption</summary>
> Figure 9: Visualization of multi-granularity segmentation of point clouds and meshes.
> </details>



![](https://arxiv.org/html/2411.07184/x10.png)

> 🔼 This figure visualizes a subset of the PartObjaverse-Tiny dataset.  It shows several example 3D objects from the dataset, with their corresponding part-level annotations. Each object is segmented into various parts, and each part is labeled with its semantic name. This dataset is specifically designed to be diverse and complex to fully evaluate the capabilities of 3D part segmentation models.
> <details>
> <summary>read the caption</summary>
> Figure 10: Visualization of PartObjaverse-Tiny with part-level annotations with semantic labels for segmentation segmentation.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Method | Overall | Human-Shape | Animals | Daily-Used | Buildings | Transportations | Plants | Food | Electronics |
|---|---|---|---|---|---|---|---|---|---| 
| PartSLIP | 35.2 | 45.0 | 50.1 | 34.4 | 22.5 | 26.3 | 44.6 | 33.4 | 32.0 |
| SAM3D | 43.6 | 47.2 | 45.0 | 43.1 | 38.6 | 39.4 | 51.1 | 46.8 | 43.8 |
| Ours | **53.7** | **54.4** | **59.0** | **52.1** | **46.2** | **50.3** | **60.7** | **59.8** | **54.5** |{{< /table-caption >}}
> 🔼 This table presents the performance comparison of different zero-shot semantic part segmentation methods on the PartObjaverse-Tiny dataset.  The dataset is a newly introduced, smaller subset of the larger Objaverse dataset and consists of 200 3D objects with detailed part annotations. The comparison focuses on class-agnostic part segmentation, meaning the methods do not need to identify specific semantic categories of parts, only distinguish between parts within an object. The metric used to evaluate performance is mean Intersection over Union (mIoU), which quantifies the overlap between predicted and ground truth part segmentations.  The results are broken down by object category for a more granular analysis of model performance.
> <details>
> <summary>read the caption</summary>
> Table 2: Zero-shot class-agnostic part segmentation on PartObjaverse-Tiny, reported in mIoU (%).
> </details>

{{< table-caption >}}
| Method | Overall | Human-Shape | Animals | Daily-Used | Buildings | Transportations | Plants | Food | Electronics |
|---|---|---|---|---|---|---|---|---|---| 
| PartSLIP | 16.3 | 23.0 | 34.1 | 13.1 | 6.7 | 10.4 | 28.9 | 7.2 | 10.2 |
| Ours | **30.2** | **36.9** | **43.7** | **29.0** | **19.0** | **21.4** | **38.5** | **39.4** | **27.7** |{{< /table-caption >}}
> 🔼 This table presents the results of zero-shot instance segmentation on the PartObjaverse-Tiny dataset.  Zero-shot instance segmentation means the model was not trained on this specific dataset, but rather on a large-scale unlabeled dataset and evaluated its performance on this dataset. The results are reported using the mean Average Precision (mAP) metric at an Intersection over Union (IoU) threshold of 50%.  The mAP50 score measures the average precision of the model's ability to correctly identify and segment individual instances (parts) of objects within the images.  The table breaks down the mAP50 scores across various categories of objects within PartObjaverse-Tiny, allowing for a more granular understanding of model performance across different object types.
> <details>
> <summary>read the caption</summary>
> Table 3: Zero-shot instance segmentation on PartObjaverse-Tiny, reported in mAP50 (%).
> </details>

{{< table-caption >}}
| Method | PointCLIPv2 | PartSLIP | ZeroPS | PartDistill | Ours |
|---|---|---|---|---|---| 
| Overall | 16.1 | 34.4 | 39.3 | 39.9 | **41.2** |{{< /table-caption >}}
> 🔼 This table presents the results of zero-shot semantic segmentation on the PartNetE dataset.  Zero-shot refers to the model's ability to perform the task without explicit training on PartNetE. The evaluation metric used is mean Intersection over Union (mIoU), a common measure of accuracy in semantic segmentation. The table compares the performance of several existing methods against the proposed SAMPart3D method.  It shows the overall mIoU across all categories in the dataset and potentially a breakdown of mIoU for individual categories of objects within PartNetE.
> <details>
> <summary>read the caption</summary>
> Table 4: Zero-shot semantic segmentation on PartNetE [25], reported in mIoU (%).
> </details>

{{< table-caption >}}
| Method | Pre-train Data | Overall | Human-Shape | Animals | Daily-Used | Buildings | Transportations | Plants | Food | Electronics |
|---|---|---|---|---|---|---|---|---|---|---|
| w.o. pre. | - | 43.4 | 48.5 | 45.7 | 44.9 | 31.7 | 37.2 | 54.5 | 48.1 | 44.8 |
| PTv3 | 36k | 46.7 | 50.9 | 48.7 | 47.8 | 38.5 | 43.0 | 51.5 | 52.0 | 47.0 |
| w.o. skip | 36k | 48.7 | 51.1 | 51.0 | 49.0 | 40.5 | 44.3 | 59.0 | 53.1 | 49.5 |
| Ours | 36k | 50.5 | 53.3 | 53.4 | 51.1 | 41.6 | 45.5 | 58.7 | 57.2 | 51.8 |
| Ours | 200k | **53.7** | **54.4** | **59.0** | **52.1** | **46.2** | **50.3** | **60.7** | **59.8** | **54.5** |{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of different design choices in the SAMPart3D model on the PartObjaverse-Tiny dataset.  Specifically, it evaluates the effects of removing the pre-training step, using the original PTv3 backbone instead of the modified PTv3-object, and omitting the long skip connection. The results, measured in mean Intersection over Union (mIoU), are presented for the overall performance and broken down by object category, providing a detailed assessment of the contribution of each component to the model's accuracy.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation study on PartObjaverse-Tiny, reported in mIoU (%).
> </details>

{{< table-caption >}}
| Method | Overall | Human-Shape | Animals | Daily-Used | Buildings | Transportations | Plants | Food | Electronics |
|---|---|---|---|---|---|---|---|---|---| 
| 0.0 | 49.1 | 52.6 | 54.8 | 45.3 | 42.4 | 47.8 | 55.2 | 42.5 | 49.5 |
| 0.5 | 48.9 | 51.1 | 53.1 | 47.1 | 41.3 | 46.9 | 58.0 | 50.9 | 48.0 |
| 1.0 | 39.6 | 35.2 | 43.0 | 42.0 | 37.4 | 34.1 | 41.9 | 50.4 | 43.4 |
| 1.5 | 31.5 | 26.7 | 31.0 | 34.3 | 20.9 | 24.9 | 34.1 | 52.3 | 35.6 |
| 2.0 | 24.4 | 21.5 | 24.6 | 30.6 | 22.5 | 15.4 | 30.3 | 48.4 | 24.9 |
| mixed-scale | **53.7** | **54.4** | **59.0** | **52.1** | **46.2** | **50.3** | **60.7** | **59.8** | **54.5** |{{< /table-caption >}}
> 🔼 This table presents the results of zero-shot class-agnostic part segmentation on the PartObjaverse-Tiny dataset.  The performance is evaluated using the mean Intersection over Union (mIoU) metric.  Importantly, it shows how the segmentation performance varies across different scale values (0.0, 0.5, 1.0, 1.5, 2.0) applied during the segmentation process. A 'mixed-scale' row is also included, which likely represents an approach that combines or optimizes across these scales. Results are broken down by object category for a more granular analysis.
> <details>
> <summary>read the caption</summary>
> Table 6: Zero-shot class-agnostic part segmentation on PartObjaverse-Tiny across different scale values, reported in mIoU (%).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2411.07184/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07184/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07184/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07184/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07184/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07184/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07184/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07184/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07184/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07184/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07184/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07184/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07184/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07184/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07184/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}