---
title: "MaskRIS: Semantic Distortion-aware Data Augmentation for Referring Image Segmentation"
summary: "MaskRIS revolutionizes referring image segmentation by using novel masking and contextual learning to enhance data augmentation, achieving state-of-the-art results."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Yonsei University",]
showSummary: true
date: 2024-11-28
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2411.19067 {{< /keyword >}}
{{< keyword icon="writer" >}} Minhyun Lee et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2411.19067" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2411.19067" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/maskris-semantic-distortion-aware-data" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2411.19067/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Referring image segmentation (RIS) is a challenging computer vision task that aims to precisely identify and segment objects in images described by free-form text.  Existing RIS models often struggle with various real-world scenarios, like partial object visibility or ambiguous descriptions.  A major issue is the limited effectiveness of conventional data augmentation techniques for RIS, often leading to performance degradation. 



The MaskRIS framework directly addresses these limitations. It introduces a novel data augmentation strategy employing both image and text masking to create data diversity, along with a Distortion-aware Contextual Learning (DCL) mechanism that enhances robustness and reduces overfitting.  **Experimental results on several standard benchmarks demonstrate that MaskRIS significantly outperforms existing methods, setting new state-of-the-art accuracy.**  The simplicity and general applicability of MaskRIS make it a valuable contribution for future RIS research.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MaskRIS introduces a novel data augmentation strategy for referring image segmentation that uses both image and text masking. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The proposed Distortion-aware Contextual Learning (DCL) framework effectively leverages masked inputs for improved robustness and accuracy. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} MaskRIS achieves state-of-the-art performance on various referring image segmentation benchmarks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses a critical limitation in referring image segmentation (RIS): the lack of effective data augmentation.  **MaskRIS offers a novel solution that significantly boosts performance by introducing a masking strategy and a distortion-aware contextual learning framework.** This approach is simple yet effective, applicable to various RIS models, and paves the way for developing more robust and accurate RIS systems.

------
#### Visual Insights



![](https://arxiv.org/html/2411.19067/x1.png)

> 🔼 This figure illustrates why standard data augmentation techniques used in semantic segmentation are not directly applicable to referring image segmentation.  The top row shows semantic segmentation, where augmentations like random cropping, flipping, and color distortion do not significantly affect the object of interest. However, in referring image segmentation (bottom row), these same augmentations can drastically change the location, orientation, or even visibility of the referred object, thereby making the text description inaccurate. For example, cropping might remove the object entirely, flipping could change its position relative to the rest of the image which might be specified in the text description (e.g., 'lady on the left'), and color distortion may make the object unrecognizable, rendering the text description incorrect. This highlights the incompatibility of general-purpose image augmentation with the specific demands of referring image segmentation.
> <details>
> <summary>read the caption</summary>
> Figure 1: Conventional data augmentations (DA) in semantic segmentation are incompatible with referring image segmentation. Random crop and horizontal flip could change the referred object (e.g., “lady under the red umbrella on left”) to another one, and color distortion could make the described object disappear.
> </details>





{{< table-caption >}}
| Method | Image Encoder | Text Encoder | RefCOCO val | RefCOCO testA | RefCOCO testB | RefCOCO+ val | RefCOCO+ testA | RefCOCO+ testB | RefCOCOg val | RefCOCOg test | 
|---|---|---|---|---|---|---|---|---|---|---| 
| *Standard: Training on the training split of each dataset.* |  |  |  |  |  |  |  |  |  |  | 
| **mIoU** |  |  |  |  |  |  |  |  |  |  | 
| CRIS [49] | RN101 | CLIP | 70.47 | 73.18 | 66.10 | 62.27 | 68.08 | 53.68 | 59.87 | 60.36 | 
| ETRIS [54] | RN101 | CLIP | 71.06 | 74.11 | 66.66 | 62.23 | 68.51 | 52.79 | 60.28 | 60.42 | 
| RefTR [25] | RN101 | BERT | 74.34 | 76.77 | 70.87 | 66.75 | 70.58 | 59.40 | 66.63 | 67.39 | 
| LAVT [56] | Swin-B | BERT | 74.46 | 76.89 | 70.94 | 65.81 | 70.97 | 59.23 | 63.34 | 63.62 | 
| CGFormer [46] | Swin-B | BERT | 76.93 | 78.70 | 73.32 | 68.56 | 73.76 | 61.72 | 67.57 | 67.83 | 
| MaskRIS | Swin-B | BERT | **78.35** | **80.24** | **76.06** | **71.68** | **76.73** | **64.50** | **69.31** | **69.42** | 
| **oIoU** |  |  |  |  |  |  |  |  |  |  | 
| LAVT [56] | Swin-B | BERT | 72.73 | 75.82 | 68.79 | 62.14 | 68.38 | 55.10 | 61.24 | 62.09 | 
| CGFormer [46] | Swin-B | BERT | 74.75 | 77.30 | 70.64 | 64.54 | 71.00 | 57.14 | 64.68 | 65.09 | 
| LQMFormer [44] | Swin-B | BERT | 74.16 | 76.82 | 71.04 | 65.91 | 71.84 | 57.59 | 64.73 | 66.04 | 
| NeMo [10] | Swin-B | BERT | 74.48 | 76.32 | 71.51 | 62.86 | 69.92 | 55.56 | 64.40 | 64.80 | 
| ReMamber [55] | Mamba-B | CLIP | 74.54 | 76.74 | 70.89 | 65.00 | 70.78 | 57.53 | 63.90 | 64.00 | 
| CARIS<sup>†</sup> [33] | Swin-B | BERT | 74.67 | 77.63 | 71.71 | 66.17 | 71.70 | 57.46 | 64.66 | 65.45 | 
| MaskRIS | Swin-B | BERT | **76.49** | **78.96** | **73.96** | **67.54** | **74.46** | **59.39** | **65.55** | **66.50** | 
| *Combined: Training on the combination of three datasets.* |  |  |  |  |  |  |  |  |  |  | 
| **oIoU** |  |  |  |  |  |  |  |  |  |  | 
| PolyFormer [31] | Swin-B | BERT | 74.82 | 76.64 | 71.06 | 67.64 | 72.89 | 59.33 | 67.76 | 69.05 | 
| CARIS<sup>†</sup> [33] | Swin-B | BERT | 76.63 | 79.40 | 73.52 | 68.03 | 73.70 | 60.41 | 67.95 | 69.75 | 
| MaskRIS | Swin-B | BERT | **78.71** | **80.64** | **75.10** | **70.26** | **75.15** | **62.83** | **69.12** | **71.09** |{{< /table-caption >}}

> 🔼 This table presents a comparison of the MaskRIS model's performance against other state-of-the-art Referring Image Segmentation (RIS) models on three benchmark datasets: RefCOCO, RefCOCO+, and RefCOCOg.  The comparison uses several metrics to evaluate performance, including mean Intersection over Union (mIoU), overall Intersection over Union (oIoU), and precision at various thresholds (P@X).  The table shows the performance of each model broken down by the image and text encoders used and indicates whether the results were reproduced by the authors (denoted by ††).
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison with state-of-the-art methods on three benchmark datasets. ††\dagger† denotes the reproduced results across all experiments.
> </details>





### In-depth insights


#### RIS Augmentation
Referring Image Segmentation (RIS) augmentation is a crucial, yet under-explored area.  Standard augmentations, effective in semantic segmentation, often fail in RIS due to semantic conflicts.  **Spatial transformations (e.g., cropping, flipping) can alter object locations described in the text**, rendering the augmentations counterproductive.  Similarly, **color distortions can affect textual descriptions relying on specific colors**, leading to inconsistencies between visual and textual data.  Therefore, novel augmentation strategies are needed.  **Input masking**, including both image and text masking, offers a promising solution. Masking parts of the image forces the model to rely on contextual information, improving robustness to occlusion and incomplete data.  Masking parts of the textual description encourages the model to leverage broader contextual understanding, improving its ability to handle diverse and ambiguous descriptions.  **Distortion-aware contextual learning (DCL)** combines training with both original and masked inputs, ensuring stability while enhancing diversity. By aligning predictions across different input variations, DCL further strengthens the model's robustness and generalization capabilities.

#### MaskRIS Framework
The MaskRIS framework presents a novel approach to data augmentation for Referring Image Segmentation (RIS).  It cleverly addresses the limitations of traditional augmentation techniques, which often conflict with the nuanced nature of textual descriptions in RIS.  **MaskRIS leverages both image and text masking**, creating more robust and diverse training data.  The core innovation is the **Distortion-aware Contextual Learning (DCL)** module which uses a primary path for processing original data and a secondary path for masked data.  This setup ensures training stability while enhancing model robustness to occlusions and incomplete information. The **combination of masking and DCL leads to improved performance**, enabling the model to better bridge the gap between visual and linguistic inputs. The simplicity and effectiveness of MaskRIS make it highly adaptable to various RIS models, contributing to state-of-the-art results.  **Its plug-and-play nature makes it a versatile tool for improving RIS training**

#### DCL's Role
The Distortion-aware Contextual Learning (DCL) framework in MaskRIS plays a crucial role in **enhancing the model's robustness and mitigating the potential negative effects of data augmentation**, specifically masking.  By employing two parallel processing paths—one for original images and text, and another for masked versions—DCL leverages the benefits of both.  **The primary path ensures training stability and maintains accuracy on clean data**, while the **secondary path, processing masked data, enhances model robustness to occlusions and incomplete information**.  A key element is the distillation loss, which aligns predictions from both paths, forcing the model to produce consistent outputs regardless of whether the input is complete or partially masked.  This mechanism effectively serves as a regularizer, preventing overfitting, and improving the model's ability to generalize to unseen data.  **DCL's effectiveness in harmonizing the complementary benefits of base training with the increased diversity introduced by masking** is a key factor contributing to MaskRIS's superior performance in referring image segmentation.  It successfully addresses a major bottleneck of conventional augmentation techniques in this task.

#### RIS Limitations
Referring Image Segmentation (RIS) faces several limitations despite recent advancements.  A core challenge lies in **bridging the semantic gap between visual and textual information**.  Ambiguity in natural language descriptions, coupled with visual complexity and occlusions, often leads to inaccurate segmentations.  **Existing data augmentation techniques are often inadequate**, sometimes even hindering performance because they fail to account for the interplay between visual and textual components.  Models struggle with **handling incomplete or partially obscured objects**, and variations in descriptive wording can significantly affect the accuracy of segmentations.  Furthermore,  **robustness against diverse real-world scenarios**, including varying lighting, viewpoints, and object poses, remains a key area for improvement.  Addressing these limitations requires sophisticated techniques such as developing robust cross-modal alignment strategies, improved data augmentation methods that specifically address the challenges of RIS, and exploring techniques to enhance model robustness against variations in input.

#### Future of RIS
The future of Referring Image Segmentation (RIS) is bright, driven by several key factors.  **Data augmentation techniques**, like those explored in MaskRIS, are crucial for improved model robustness and accuracy.  **More sophisticated model architectures**, likely incorporating transformer-based networks and advanced cross-modal fusion techniques, will be needed to handle increasingly complex language and visual inputs.  **Improved datasets** are also necessary; larger, more diverse datasets, including those with challenging real-world scenarios like occlusions and diverse linguistic expressions, will help push the boundaries of performance. Finally, **real-world applications** will shape the field's future.  The success of RIS hinges on its ability to address realistic problems and seamlessly integrate with existing applications in image editing, robotics, and human-computer interaction.  Further research into efficiently training large-scale RIS models while mitigating overfitting remains crucial for practical deployment.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2411.19067/x2.png)

> 🔼 This figure compares the performance of various Referring Image Segmentation (RIS) models when using conventional data augmentation techniques, such as random cropping, horizontal flipping, and color distortion. The bar chart displays the Intersection over Union (IoU) metric for each model, illustrating the significant drop in performance caused by these augmentations. This highlights a key challenge in RIS: conventional augmentations, while beneficial in other image segmentation tasks, often disrupt the semantic relationship between the text description and the target object, leading to decreased accuracy.  This finding motivates the need for a novel augmentation strategy designed specifically for RIS.
> <details>
> <summary>read the caption</summary>
> (a) Performance with conventional augmentations
> </details>



![](https://arxiv.org/html/2411.19067/x3.png)

> 🔼 The figure shows the impact of individual data augmentation techniques on the performance of the CARIS model [33].  It compares the model's performance (measured by IoU) when applying random cropping, horizontal flipping, color distortion, image masking, and text masking individually. This allows for a detailed analysis of how each augmentation method affects the model's ability to accurately segment objects in referring image segmentation tasks. The baseline performance without any augmentation is also shown.
> <details>
> <summary>read the caption</summary>
> (b) Performance with individual augmentation on CARIS [33]
> </details>



![](https://arxiv.org/html/2411.19067/x4.png)

> 🔼 This figure displays a comparison of the performance of existing Referring Image Segmentation (RIS) methods when using conventional image augmentations versus image masking and text masking.  The left graph shows a substantial drop in performance across several state-of-the-art RIS models (CRIS, ETRIS, CARIS, ReMamber) when using random cropping, horizontal flipping, and color jittering. This indicates that conventional data augmentation techniques are not suitable for RIS. The right graph illustrates that utilizing image masking or text masking, on the other hand, significantly improves the performance of at least one RIS model (CARIS). This result highlights the effectiveness of masking techniques in enhancing the robustness and accuracy of RIS models by increasing data diversity without introducing semantic conflicts.
> <details>
> <summary>read the caption</summary>
> Figure 2: Existing RIS methods show a noticeable decline in their performance when applying conventional image augmentations (random cropping, color jittering, and horizontal flipping). In contrast, image masking (I-Mask) and text masking (T-Mask) improve model performance.
> </details>



![](https://arxiv.org/html/2411.19067/x5.png)

> 🔼 This figure demonstrates the limitations of existing Referring Image Segmentation (RIS) models when dealing with occluded contexts. It shows examples where the state-of-the-art model, CARIS, fails to accurately segment the target object when parts of the image or the text query are missing. The image on the left demonstrates an intra-object occlusion, the middle image shows an inter-object occlusion, and the image on the right illustrates a text occlusion. Red highlights indicate the missing parts.
> <details>
> <summary>read the caption</summary>
> Figure 3: The existing RIS method tends to be inaccurate when faced with occluded context. CARIS [33] represents the SoTA method in RIS. Words highlighted in red represent occluded objects in the image (left and center) and masked words in the text query (right).
> </details>



![](https://arxiv.org/html/2411.19067/x6.png)

> 🔼 This figure illustrates the MaskRIS framework, a novel data augmentation method for Referring Image Segmentation (RIS).  It shows how both image and text masking are used to create more diverse training data. The image masking randomly obscures parts of the input image, while the text masking similarly hides parts of the text description. A key component is Distortion-aware Contextual Learning (DCL), which processes both the original and masked input data through two separate paths.  These paths are then combined using a distillation loss to ensure the model learns robust features regardless of masking. The process improves performance in RIS by training the model to handle incomplete information, variations in visual input, and varied textual descriptions.
> <details>
> <summary>read the caption</summary>
> Figure 4: The overall framework of MaskRIS. Both image and text masking are employed to generate diverse image-text training pairs (Sec. 3.2). To maximize the benefits of the masking strategy, Distortion-aware Contextual Learning (DCL) is introduced (Sec. 3.3).
> </details>



![](https://arxiv.org/html/2411.19067/x7.png)

> 🔼 This figure showcases several examples of referring image segmentation results from the RefCOCO dataset, comparing the ground truth segmentations (GT) with those produced by the CARIS model and the MaskRIS model.  The examples highlight MaskRIS's improved ability to accurately segment objects in various situations, including those with occlusions,  complex visual scenes, and linguistic ambiguity. The improved precision and robustness of MaskRIS compared to CARIS are visually demonstrated through this comparison.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative examples of segmentation results on the RefCOCO dataset.
> </details>



![](https://arxiv.org/html/2411.19067/x8.png)

> 🔼 This figure displays a robustness evaluation of the MaskRIS model against various image corruptions from the ImageNet-C dataset and linguistically complex situations in referring image segmentation.  The x-axis represents different types of image corruptions and linguistically complex situations. The y-axis shows the overall intersection over union (oIoU) score, a metric measuring the accuracy of the segmentation task.  The bars represent the oIoU achieved by CARIS (the previous state-of-the-art model) and MaskRIS.  The results are based on the RefCOCO validation set, demonstrating MaskRIS's superior performance and robustness across diverse challenges.
> <details>
> <summary>read the caption</summary>
> Figure 6: Robustness on various image corruptions provided by ImageNet-C [12] and linguistically complex situations. The results (oIoU) are evaluated on the RefCOCO validation set.
> </details>



![](https://arxiv.org/html/2411.19067/x9.png)

> 🔼 This figure showcases the effectiveness of different masking strategies in the Masked Referring Image Segmentation (MaskRIS) framework.  It presents qualitative examples from the RefCOCO dataset, comparing the performance of the baseline model (CARIS) against the MaskRIS model with image masking only (I-Mask), text masking only (T-Mask), and both image and text masking (Both). The visual comparison demonstrates how each masking technique impacts the ability of the model to accurately segment the objects described in the text queries, particularly in challenging situations involving occlusions or incomplete textual information.
> <details>
> <summary>read the caption</summary>
> Figure 7: Qualitative examples of masking strategies on the RefCOCO dataset. I-Mask, T-Mask, and Both denote the results of applying image masking, text masking, and both, respectively.
> </details>



![](https://arxiv.org/html/2411.19067/x10.png)

> 🔼 This figure illustrates different mask sampling strategies used for data augmentation in image processing.  The default approach is 'patch-wise sampling', which divides the image into patches and masks a percentage of them randomly.  Other methods are shown for comparison, including 'block-wise sampling' (removing larger random image blocks as done in BEiT), and 'Cutout' (removing a random rectangular area as done in timm).  The key difference between the methods is how image regions are selected for masking.  For all methods except 'Cutout', 75% of the image was consistently masked.  This figure helps visualize the differences in how these strategies mask information.
> <details>
> <summary>read the caption</summary>
> Figure A: Various types of mask sampling strategies. We use patch-wise sampling [11] as our default. For block-wise sampling, we follow BEiT[2] to remove large random blocks. For Cutout [8], we follow the implementation of timm [51]. For all strategies except Cutout, we maintain a consistent masking ratio of 75%.
> </details>



![](https://arxiv.org/html/2411.19067/x11.png)

> 🔼 This figure displays a training loss analysis for the MaskRIS model and a comparison with the CARIS model.  It shows three subplots. (a) Training loss for original (unmasked) inputs for both MaskRIS and CARIS. (b) Training loss for masked inputs for both MaskRIS and CARIS.  (c) Model performance (measured by mean Intersection over Union - mIoU) on the RefCOCO validation set for MaskRIS and CARIS. The CARIS w/ Masking line represents CARIS with both image and text masking added as data augmentation techniques.  The figure demonstrates MaskRIS's improved training stability and better performance compared to CARIS, particularly when using masking.
> <details>
> <summary>read the caption</summary>
> Figure B: Training loss analysis of MaskRIS on RefCOCO. In the CARIS w/ Masking setting, we employ both image and text masking as data augmentation strategies within the CARIS [33] framework. We visualize (a) the training loss for the original (i.e., unmasked) inputs, (b) the training loss for the masked inputs, and (c) the performance of the model on the RefCOCO validation set.
> </details>



![](https://arxiv.org/html/2411.19067/x12.png)

> 🔼 Figure C presents a comparison of referring image segmentation (RIS) results between the CARIS model and the MaskRIS model on the RefCOCO dataset.  The figure showcases examples where parts of the image or the text description are masked (occluded).  The examples highlight situations with intra-object occlusion (where parts of the target object are hidden), inter-object occlusion (where objects surrounding the target are hidden), and text-based occlusion (where words in the text description are masked).  The results demonstrate MaskRIS's improved robustness compared to CARIS, particularly in accurately segmenting objects even when there is missing visual or textual information.  Red highlighting indicates masked words in the text queries.
> <details>
> <summary>read the caption</summary>
> Figure C: Qualitative examples under various occluded contexts on the RefCOCO dataset. Although CARIS [33] tends to be inaccurate under occluded contexts, MaskRIS produces accurate predictions, demonstrating its robustness to occlusion and incomplete information. For text context masking, the word highlighted in red is masked.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Method | Image Encoder | Text Encoder | RefCOCO val | RefCOCO testA | RefCOCO testB |
|---|---|---|---|---|---| 
| *Weakly-supervised approach* |  |  |  |  |  |
| **mIoU** |  |  |  |  |  |
| TRIS [30] | RN50 | CLIP | 31.17 | 32.43 | 29.56 |
| TRIS [30] + MaskRIS | RN50 | CLIP | 32.60 (+1.43) | 34.26 (+1.83) | 30.32 (+0.76) |
| SaG [20] | ViT-S/16 | BERT | 37.21 | 36.60 | 39.41 |
| SaG [20] + MaskRIS | ViT-S/16 | BERT | 38.85 (+1.64) | 37.70 (+1.1) | 40.20 (+0.79) |
| *Fully-supervised approach* |  |  |  |  |  |
| **mIoU** |  |  |  |  |  |
| CRIS [49] | RN50 | CLIP | 69.52 | 72.72 | 64.70 |
| CRIS [49] + MaskRIS | RN50 | CLIP | 70.73 (+1.21) | 74.06 (+1.34) | 66.82 (+2.12) |
| ETRIS [54] | R101 | CLIP | 71.06 | 74.11 | 66.66 |
| ETRIS [54] + MaskRIS | R101 | CLIP | 72.39 (+1.33) | 74.99 (+0.88) | 68.55 (+1.89) |
| **oIoU** |  |  |  |  |  |
| LAVT [56] | Swin-B | BERT | 72.73 | 75.82 | 68.79 |
| LAVT [56] + MaskRIS | Swin-B | BERT | 73.79 (+1.06) | 76.57 (+0.75) | 70.31 (+1.52) |
| CARIS† [33] | Swin-B | BERT | 74.67 | 77.63 | 71.71 |
| CARIS [33] + MaskRIS | Swin-B | BERT | 76.49 (+1.82) | 78.96 (+1.33) | 73.96 (+2.25) |{{< /table-caption >}}
> 🔼 This table demonstrates the versatility and effectiveness of MaskRIS by showcasing its compatibility with various existing Referring Image Segmentation (RIS) methods.  It compares the performance of several state-of-the-art RIS models, both fully supervised and weakly supervised, with and without the MaskRIS augmentation strategy. The results clearly indicate that MaskRIS consistently improves the performance of all tested models, highlighting its ability to enhance various RIS approaches.
> <details>
> <summary>read the caption</summary>
> Table 2: Compatibility of MaskRIS with various RIS methods. MaskRIS consistently enhances existing methods in both fully supervised and weakly supervised settings.
> </details>

{{< table-caption >}}
| IM | TM | DCL | P@0.5 | P@0.7 | P@0.9 | oIoU |
|---|---|---|---|---|---|---| 
| ✘ | ✘ | ✘ | 87.73 | 80.20 | 39.60 | 74.67 |
| ✔ | ✘ | ✘ | 87.76 | 80.52 | 38.73 | 75.31 |
| ✘ | ✔ | ✘ | 87.72 | 80.45 | 39.26 | 75.32 |
| ✔ | ✔ | ✘ | 88.00 | 81.35 | 40.11 | 75.71 |
| ✔ | ✘ | ✔ | 88.60 | 81.86 | 41.08 | 76.02 |
| ✘ | ✔ | ✔ | 88.34 | 81.19 | 39.24 | 75.76 |
| ✔ | ✔ | ✔ | **88.62** | **81.95** | **41.19** | **76.49** |{{< /table-caption >}}
> 🔼 This table presents the ablation study results evaluating the impact of each component of the MaskRIS model on the RefCOCO validation set.  It shows the performance (measured by mean Intersection over Union or mIoU) when using only image masking (IM), only text masking (TM), both image and text masking together, and finally, the full MaskRIS model (including the Distortion-aware Contextual Learning or DCL).  The results demonstrate the individual and combined contributions of each component to the overall performance improvement.
> <details>
> <summary>read the caption</summary>
> Table 3: Impact of each component of MaskRIS on the RefCOCO validation set, where IM (TM) refers to image (text) masking.
> </details>

{{< table-caption >}}
| IM ratio | TM ratio | $p_m$ | $p_r$ | $p_u$ | oIoU |
|---|---|---|---|---|---| 
| - | 0.15 | 0.8 | 0.1 | 0.1 | 75.76 |
| - | 0.15 | 0.8 | 0.2 | 0 | 75.43 |
| - | 0.15 | 0.5 | 0.5 | 0 | 75.70 |
| - | 0.50 | 0.5 | 0.5 | 0 | 74.88 |
| - | 0.75 | 0.5 | 0.5 | 0 | 74.14 |
| 0.25 | 0.15 | 0.8 | 0.1 | 0.1 | 76.07 |
| 0.50 | 0.15 | 0.8 | 0.1 | 0.1 | 76.43 |
| 0.75 | 0.15 | 0.8 | 0.1 | 0.1 | **76.49** |{{< /table-caption >}}
> 🔼 This table details the effects of varying the masking ratio during model training on the RefCOCO validation dataset.  The masking ratio determines the likelihood of a word being masked (replaced with [MASK]), replaced with a random word, or remaining unchanged. The table shows how different combinations of these probabilities affect the overall model performance (measured by oIoU).
> <details>
> <summary>read the caption</summary>
> Table 4: Impact of the masking ratio on the RefCOCO validation set. When a word wisubscript𝑤𝑖w_{i}italic_w start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT is selected based on the masking ratio, it has a pmsubscript𝑝𝑚p_{m}italic_p start_POSTSUBSCRIPT italic_m end_POSTSUBSCRIPT probability of being masked with a [MASK] token, a prsubscript𝑝𝑟p_{r}italic_p start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT probability of being replaced with a random word from the vocabulary, and a pusubscript𝑝𝑢p_{u}italic_p start_POSTSUBSCRIPT italic_u end_POSTSUBSCRIPT probability of remaining unchanged.
> </details>

{{< table-caption >}}
|                   | Patch-wise | Grid-wise [11] | Block-wise [2] | Cutout [8] |
|-----------------|-------------|-----------------|----------------|------------|
| oIoU             | **76.49**   | 76.14           | 75.90           | 76.07      |{{< /table-caption >}}
> 🔼 This table presents a comparison of different image masking strategies used for data augmentation in referring image segmentation.  The strategies compared include patch-wise, grid-wise, block-wise, and cutout methods.  The performance metric used is the overall Intersection over Union (oIoU) score, calculated on the RefCOCO validation set. The table helps to determine the effectiveness of each masking strategy in improving model robustness and generalization ability.  The results show how each method affects the final oIoU score.
> <details>
> <summary>read the caption</summary>
> Table A: Impact of mask sampling strategy. The performance (oIoU) is evaluated across various mask sampling strategies on the RefCOCO validation set.
> </details>

{{< table-caption >}}
| Method | Epoch | val | testA | testB |
|---|---|---|---|---|
| CARIS<sup>†</sup> [33] | 50 | 74.67 | 77.63 | 71.71 |
| CARIS<sup>†</sup> [33] | 100 | 74.80 | 77.38 | 70.63 |
| MaskRIS | 25 | 75.87 | 77.99 | 73.51 |
| MaskRIS | 50 | **76.49** | **78.96** | **73.96** |{{< /table-caption >}}
> 🔼 This table compares the computational cost and performance of the MaskRIS and CARIS models on the RefCOCO dataset.  The results show that MaskRIS achieves better performance (measured by mean Intersection over Union, or oIoU) even when trained with half the number of epochs compared to CARIS.  This highlights MaskRIS's efficiency in terms of both computational resources and training time.
> <details>
> <summary>read the caption</summary>
> Table B: Comparison of computational cost. All results (oIoU) are evaluated on the RefCOCO dataset. MaskRIS outperforms CARIS even with half of the training epochs.
> </details>

{{< table-caption >}}
| ps | 8 | 16 | 32 | 64 | 112 |
|---|---|---|---|---|---| 
| oIoU | **76.58** | 76.49 | 76.49 | 76.47 | 76.01 |{{< /table-caption >}}
> 🔼 This table investigates the effect of varying the patch size during image masking on the performance of the MaskRIS model.  The experiment is conducted on the RefCOCO validation set. The metric used to evaluate performance is the overall intersection over union (oIoU). The table displays the oIoU scores obtained using different patch sizes (ps). This allows for an analysis of how the patch size impacts the model's ability to handle masked regions in images and ultimately affects the overall accuracy of referring image segmentation.
> <details>
> <summary>read the caption</summary>
> Table C: Impact of patch size on image masking. The performance (oIoU) is evaluated across different patch sizes on the RefCOCO validation set. ps denotes the patch size.
> </details>

{{< table-caption >}}
| λ | 0.1 | 0.25 | 0.5 | 0.75 | 1.0 |
|---|---|---|---|---|---| 
| oIoU | 75.48 | **76.62** | 76.49 | 76.16 | 74.67 |{{< /table-caption >}}
> 🔼 This table presents the ablation study results on the impact of the hyperparameter lambda (λ) within the Distortion-aware Contextual Learning (DCL) framework of the MaskRIS model.  Different values of λ are tested, ranging from 0.1 to 1.0.  Each value represents a different weighting between the distillation loss (Ldist) and the cross-entropy loss (Lce) during training. The primary metric used to evaluate the performance is the overall Intersection over Union (oIoU) calculated on the RefCOCO validation set. The goal is to determine the optimal value of λ that balances the contribution of both losses for improved model performance and robustness.
> <details>
> <summary>read the caption</summary>
> Table D: Impact of λ𝜆\lambdaitalic_λ on the DCL procedure. The performance (oIoU) is evaluated across various λ𝜆\lambdaitalic_λ on the RefCOCO validation set.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2411.19067/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19067/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19067/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19067/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19067/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19067/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19067/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19067/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19067/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19067/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19067/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19067/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19067/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19067/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19067/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19067/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}