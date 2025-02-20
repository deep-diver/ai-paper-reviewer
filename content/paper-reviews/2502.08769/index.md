---
title: "Cluster and Predict Latents Patches for Improved Masked Image Modeling"
summary: "CAPI: a novel masked image modeling framework boosts self-supervised visual representation learning by predicting latent clusterings, achieving state-of-the-art ImageNet accuracy and mIoU."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Segmentation", "🏢 Meta FAIR",]
showSummary: true
date: 2025-02-12
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.08769 {{< /keyword >}}
{{< keyword icon="writer" >}} Timothée Darcet et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.08769" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.08769" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.08769/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current Masked Image Modeling (MIM) methods for self-supervised visual representation learning lag behind state-of-the-art techniques.  Existing MIM approaches suffer from issues such as instability during training and poor representation quality when compared to other self-supervised methods. These limitations hinder the development of robust foundation models capable of excelling in various computer vision tasks.  

This paper introduces CAPI, a novel MIM framework that addresses these challenges. CAPI uses a clustering-based loss function that is more stable during training and leads to improved representation quality.  The method achieves state-of-the-art results on benchmark datasets (ImageNet and ADE20K), significantly outperforming previous MIM methods while approaching the performance of the current top performer, DINOv2. The proposed approach offers a promising direction for future research in self-supervised learning and the development of powerful foundation models for computer vision.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} CAPI, a novel pure-MIM framework, leverages a clustering-based loss to improve training stability. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} CAPI achieves state-of-the-art performance on ImageNet and ADE20K benchmarks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The research systematically analyzes MIM components and introduces design choices for improved effectiveness. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers in computer vision and self-supervised learning.  It **significantly advances masked image modeling**, a key area in self-supervised representation learning. The paper's focus on improving the stability and effectiveness of MIM, along with its strong empirical results, **opens new avenues for research** in creating better foundation models and self-supervised learning techniques that are more scalable and efficient.  Its proposed method, CAPI, **achieves state-of-the-art results**, demonstrating a clear advancement in the field.

------
#### Visual Insights



![](https://arxiv.org/html/2502.08769/x1.png)

> 🔼 This figure illustrates the CAPI method, a novel approach to masked image modeling.  Image patches are processed by a teacher network, which then groups them into clusters based on latent representations. These cluster assignments serve as the training signal for a student network, trained via self-distillation with the teacher. Notably, the loss function focuses solely on predicting the content of masked image patches, without relying on augmentations or contrastive learning.  The figure then shows performance comparisons against existing methods (MAE, data2vec 2.0, I-JEPA, and AIM) on ADE20K segmentation and ImageNet-1k classification tasks using linear and attentive probes, respectively.  CAPI demonstrates superior performance with fewer FLOPs and improved scalability compared to other masked image models, approaching the performance of DINOv2+reg.
> <details>
> <summary>read the caption</summary>
> Figure 1:  CAPI Method overview: image patches embedded by a teacher are grouped into clusters. Their assignments are then used as the training signal for the student. The teacher and the student are jointly learned via self-distillation. The loss is purely about predicting the content of missing patches and does not rely on augmentations or a contrastive loss. Evaluation scores: we evaluate frozen representations on ADE20K segmentation with a k𝑘kitalic_k-nn and linear probe and on ImageNet-1k classification with an attentive probe. We compare to MAE, data2vec 2.0, I-JEPA, and AIM. Compared to other masked image models, CAPI achieves higher performance with fewer FLOP, scaling well with model size, and approaches the scores of DINOv2+reg.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_align_bottom" id="S4.T1.2">
<tr class="ltx_tr" id="S4.T1.2.1">
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.1"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.2"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.3"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2">
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.1"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.2"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.3"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.3">
<td class="ltx_td ltx_align_center" id="S4.T1.2.3.1"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.3.2"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.3.3"></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents an ablation study on the predictor architecture used in the masked image modeling method. It compares different architectures in terms of their performance on ADE20K segmentation and ImageNet-1k classification. The architectures compared include a fused architecture, a split architecture with self-attention, and a split architecture with cross-attention. The results show that the split architecture with cross-attention achieves the best performance.
> <details>
> <summary>read the caption</summary>
> (a) Predictor architecture
> </details>





### In-depth insights


#### MIM Enhancements
Masked Image Modeling (MIM) enhancements in the paper revolve around three core aspects: **target representations**, **loss functions**, and **architectures**.  Instead of directly reconstructing pixels, the authors propose predicting latent cluster assignments of image patches, creating more stable training. The novel clustering-based loss, unlike previous methods, avoids the instability of contrastive learning and the need for additional stabilizing terms.  This approach, along with a carefully designed cross-attention predictor architecture, significantly improves the quality of learned representations, enabling the model to surpass previous MIM approaches and approach state-of-the-art performance. **The use of an exponential moving average (EMA) teacher and student framework also plays a key role in the method's stability and effectiveness.**  The study systematically explores the impact of different design choices, demonstrating the importance of  a holistic approach to MIM for optimal performance.  The resulting improvements highlight the potential of focusing on latent space representations and thoughtfully designed loss functions for advancing self-supervised visual representation learning.

#### CAPI Framework
The CAPI framework presents a novel approach to masked image modeling (MIM) for self-supervised visual representation learning.  **Its core innovation lies in a clustering-based loss function**, moving away from pixel-level or direct latent reconstruction. This approach is argued to enhance stability during training and yield more robust representations.  The framework strategically uses a **teacher-student training paradigm with an exponential moving average (EMA) teacher**, enabling efficient knowledge distillation.  **The predictor architecture is designed for efficiency**, using a cross-attention mechanism rather than a fused or self-attention architecture, thereby optimizing compute resources and reducing memory footprint. The framework also incorporates techniques like the **Sinkhorn-Knopp algorithm** to address positional collapse and ensure the learning of semantic features.  Overall, CAPI shows promising scalability and performance improvements in both image classification and semantic segmentation tasks, closing the gap with leading supervised methods.

#### Clustering Loss
The concept of a clustering loss function in the context of self-supervised learning is intriguing.  It leverages the idea of **grouping similar image patches into clusters** as a form of representation learning, moving beyond pixel-level reconstruction. Instead of directly predicting pixel values, the model learns to predict the cluster assignment of masked patches. This approach offers several advantages.  First, it's more **robust to noise and variations** in the input images, as it focuses on higher-level semantic representations. Second, it can be more **efficient to train** since the target space (cluster assignments) is generally smaller and simpler than the pixel space.  Third, this clustering loss can improve the **generalizability** of the learned representations, as it encourages the model to learn more abstract and invariant features. However, a careful design of the clustering algorithm and its integration into the overall training process is crucial. The choice of clustering method (e.g., k-means, online clustering) and its impact on training stability and performance needs to be carefully considered.  Moreover, the design of the loss function itself, such as the temperature parameter in the softmax function, plays a critical role in balancing the trade-off between accuracy and diversity. Overall, the exploration of clustering loss functions presents a promising avenue for advancing self-supervised visual representation learning.

#### Ablation Studies
The Ablation Studies section is crucial for understanding the contribution of individual components within a proposed model.  It systematically investigates the impact of each design choice by removing or altering one element at a time, while keeping others constant. This controlled experimentation helps determine which parts are essential for achieving good performance and which may be superfluous or even detrimental.  In the context of a masked image modeling (MIM) system, such a study might explore different predictor architectures (e.g., comparing fused, self-attention, or cross-attention designs), investigating the effects of various masking strategies (random, blockwise, etc.), evaluating alternative loss functions, analyzing the impact of different hyperparameter settings, or assessing the influence of components like positional encodings and registers.  **By isolating the effects of each component, ablation studies provide strong evidence supporting the design choices in the final model.** The results typically demonstrate the relative importance of each component, justifying the final architecture and hyperparameter selection.  **They also help in identifying potential areas for future improvement, suggesting directions for further research and model optimization.** For example, if removing positional encoding drastically hurts performance, it indicates the encoding's crucial role and highlights the need for more robust positional embedding techniques in future iterations.  Ultimately, **a well-executed ablation study greatly enhances the credibility and robustness of the proposed method by providing a comprehensive understanding of its strengths and weaknesses.**

#### Future of MIM
The future of masked image modeling (MIM) hinges on addressing its current limitations and exploring new avenues.  **Improving the efficiency and scalability of MIM models** is crucial, potentially through architectural innovations or more efficient training strategies.  Current methods often struggle with positional collapse and instability during training.  **Developing robust loss functions and regularization techniques** to mitigate these issues is essential.  **The exploration of different masking strategies** beyond random or block masking, perhaps incorporating more sophisticated approaches based on objectness or saliency, could improve performance.  **Combining MIM with other self-supervised learning approaches** like contrastive learning or clustering could potentially boost performance and create a more versatile model. Finally, **applying MIM to new and diverse data modalities**, such as videos or 3D point clouds, will expand MIM’s applicability and lead to even more advanced representations. Addressing these key areas will unlock the full potential of MIM, leading to further breakthroughs in self-supervised visual representation learning.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.08769/x2.png)

> 🔼 Figure 2 illustrates the key design choices in building a masked image modeling (MIM) system.  The diagram highlights that three major decisions shape the effectiveness of a reconstruction-based MIM model:  First, selecting the target representation used during training (further detailed in Figure 3). Second, choosing the appropriate loss function to optimize the model (explained in Section 3.1 and Figure 4).  Third, defining the architecture of the predictor network responsible for reconstructing the masked image regions (discussed in Section 3.2 and Figure 5).
> <details>
> <summary>read the caption</summary>
> Figure 2:  Overview of the components of a reconstruction-based model. We identify three main choices involved in designing a masked image model: the choice of targets (fig. 3), the loss function (Section 3.1, fig. 4) and the architecture of the predictor (Section 3.2, fig. 5).
> </details>



![](https://arxiv.org/html/2502.08769/x3.png)

> 🔼 This figure illustrates different target representations used in masked image modeling (MIM).  Specifically, it highlights the use of pixel-level targets, a common approach in early MIM methods like iGPT, MAE, and AIM. In these methods, the model is trained to directly reconstruct the masked pixel values, making the target representation identical to the raw pixel data.
> <details>
> <summary>read the caption</summary>
> (a) Pixel targets (iGPT, MAE, AIM)
> </details>



![](https://arxiv.org/html/2502.08769/x4.png)

> 🔼 This figure shows different target representations used in Masked Image Modeling (MIM).  Specifically, it highlights the approach where a frozen teacher network provides the target representation for the student network to learn from.  The teacher network's weights are fixed, and its output is used as the target for the MIM task. This contrasts with methods that use an online teacher (EMA) or pixel targets for training.
> <details>
> <summary>read the caption</summary>
> (b) Frozen teacher (BeiT,PeCo,EVA)
> </details>



![](https://arxiv.org/html/2502.08769/x5.png)

> 🔼 This figure shows the different target representations used in masked image modeling (MIM).  The figure illustrates three approaches to selecting the target representation during training: (a) Pixel targets, (b) Frozen teacher, and (c) EMA (exponential moving average) teacher.  The EMA teacher approach, which is used in CAPI, Data2Vec, I-JEPA, and other methods, updates the teacher representation using an exponential moving average of the student's representation. This method provides a more stable training signal and often leads to better results.
> <details>
> <summary>read the caption</summary>
> (c) EMA teacher (iBOT, Data2Vec, I-JEPA, Ours)
> </details>



![](https://arxiv.org/html/2502.08769/x6.png)

> 🔼 This figure illustrates different target representation strategies employed in Masked Image Modeling (MIM).  It compares three main approaches: using pixel-level targets (as in iGPT, MAE, and AIM), using the frozen representation of a teacher network (as in BeiT, PeCo, and EVA), and using the Exponential Moving Average (EMA) of a teacher network's representation (as in iBOT, Data2Vec, I-JEPA, and the authors' proposed CAPI method). The figure highlights the authors' focus on EMA-based representations, emphasizing their advantages in MIM.
> <details>
> <summary>read the caption</summary>
> Figure 3:  The target representations commonly used in MIM. We focus on the EMA representations.
> </details>



![](https://arxiv.org/html/2502.08769/x7.png)

> 🔼 This figure illustrates the direct loss function used in masked image modeling.  The direct loss calculates the difference between the predicted values and target values directly, without any intermediate steps. This type of loss is used in methods like MAE and I-JEPA. The figure likely shows a visual representation of this loss calculation, perhaps illustrating the flow of gradients used during backpropagation. This direct approach contrasts with other loss formulations shown later in the paper that involve clustering or other intermediate steps before comparing predictions to targets.
> <details>
> <summary>read the caption</summary>
> (a) Direct loss (MAE, I-JEPA)
> </details>



![](https://arxiv.org/html/2502.08769/x8.png)

> 🔼 This figure illustrates the DINO loss function, used in masked image modeling methods such as iBOT and DINOv2.  The DINO loss leverages a teacher-student framework. The teacher network produces embeddings that are used as targets.  The student network tries to predict these targets.  The loss function measures the discrepancy between student predictions and teacher-produced embeddings.  The EMA (Exponential Moving Average) of the teacher's output is used in this process for stability and to improve the learned features.
> <details>
> <summary>read the caption</summary>
> (b) DINO loss (iBOT, DINOv2)
> </details>



![](https://arxiv.org/html/2502.08769/x9.png)

> 🔼 This figure illustrates the clustering-based loss function proposed by the authors. Unlike previous methods that rely on cross-entropy between student and teacher output distributions (often using an MLP head), this approach directly uses soft cluster assignments (obtained via online clustering of teacher embeddings) as the target signal.  The gradient flow is depicted in red, highlighting that the loss is solely focused on predicting the correct cluster assignment for masked image patches and not reliant on any additional objectives such as contrastive loss or reconstruction loss. This design choice improves stability during training, a key improvement over prior methods.
> <details>
> <summary>read the caption</summary>
> (c) Clustering (proposed)
> </details>



![](https://arxiv.org/html/2502.08769/x10.png)

> 🔼 This figure compares three different loss formulations used in masked image modeling.  The 'Direct loss' directly computes the loss between the predicted and target representations. The 'DINO loss' uses a cross-entropy loss between the student and teacher's output distributions, which are considered as soft cluster memberships. The 'Clustering' approach employs a clustering-based loss that leverages the prediction of latent clusterings. The red arrows in the diagram illustrate the gradient flow for each method.
> <details>
> <summary>read the caption</summary>
> Figure 4:  The different loss formulations considered here. We depict in red the flow of the gradient.
> </details>



![](https://arxiv.org/html/2502.08769/x11.png)

> 🔼 This figure illustrates the 'fused predictor' architecture used in some masked image modeling methods.  In this design, a single transformer processes both the visible image patches and the special mask tokens representing missing regions. The model directly predicts pixel values or latent representations from this fused input.  This is in contrast to other designs where a separate predictor processes only the mask tokens, or where reconstruction occurs in a different feature space.  The examples cited here, BeiT and iBOT, demonstrate this architectural approach.
> <details>
> <summary>read the caption</summary>
> (a) Fused predictor (BeiT, iBOT)
> </details>



![](https://arxiv.org/html/2502.08769/x12.png)

> 🔼 This figure shows a self-attention predictor architecture used in masked image modeling.  The architecture consists of an encoder and a predictor, both implemented as transformers.  Unlike a fused architecture (where encoding and prediction happen in a single transformer), this split architecture separates the encoding of visible image patches from the prediction of masked patches. The predictor uses self-attention to focus on the encoded features of the visible patches to predict the content of the missing ones. This approach differs from other architectures like fused predictors which process both visible and masked tokens in one transformer or cross-attention based predictors which use cross-attention to combine the masked tokens with other context.
> <details>
> <summary>read the caption</summary>
> (b) Self-att. predictor (MAE, I-JEPA)
> </details>



![](https://arxiv.org/html/2502.08769/x14.png)

> 🔼 This figure illustrates the cross-attention predictor architecture used in the CAPI model. Unlike fused or self-attention predictor architectures, the cross-attention predictor maintains separate encoder and predictor components. The encoder processes the visible image patches, while the predictor, using cross-attention, predicts the features of the masked patches based on the encoder's output. This design enhances efficiency and stability, as each prediction is independent of other positions, avoiding the need for repeated predictor passes. This architecture is inspired by CrossMAE and distinguishes CAPI from other masked image modeling methods.
> <details>
> <summary>read the caption</summary>
> (c) Cross-att. predictor (CrossMAE, ours)
> </details>



![](https://arxiv.org/html/2502.08769/x15.png)

> 🔼 Figure 5 illustrates three different architectures for the predictor component in a masked image modeling system.  Each architecture uses transformers, represented by boxes. The black lines show the residual connections (the path a token takes) between the different transformer layers within each architecture. The three architectures are: (a) A fused predictor, where the encoder and predictor are a single transformer; (b) A self-attention predictor where the encoder and the predictor are separate transformers and the predictor utilizes self-attention; and (c) A cross-attention predictor, also with separate encoder and predictor transformers, where the predictor uses cross-attention to access information from the encoder.
> <details>
> <summary>read the caption</summary>
> Figure 5:  The different predictor architectures discussed in the paper. Here, the boxes each represent a transformer. The black lines represent the residual stream for a token.
> </details>



![](https://arxiv.org/html/2502.08769/x16.png)

> 🔼 Figure 6 presents the results of ablation studies examining the impact of various parameters on the model's performance. The left panel shows how the number of prototypes used in the clustering-based loss function affects the model's performance on ImageNet and ADE20K. The center panel illustrates the model's performance as a function of training duration. The right panel compares model performance when trained on different datasets: ImageNet-1k, ImageNet-22k, and LVD-142M.
> <details>
> <summary>read the caption</summary>
> Figure 6:  Additional ablation experiments. (Left) Influence of the number of prototypes. (center) Influence of the training length. Each point here is an independent training. (right) Influence of the training dataset.
> </details>



![](https://arxiv.org/html/2502.08769/extracted/6198836/resources/plot_distillation.png)

> 🔼 This figure visualizes the features learned by the CAPI model and several baseline models. Principal Component Analysis (PCA) was used to reduce the dimensionality of the feature maps to three principal components, which were then mapped to the red, green, and blue channels of an RGB image.  The resulting images provide a visual representation of the learned features. The caption highlights that the features produced by CAPI are distinctly different and smoother compared to the baseline models, suggesting superior quality and potentially better performance.
> <details>
> <summary>read the caption</summary>
> Figure 7:  Visualization of the features of CAPI and baseline models. We apply a PCA to the features and map the three first components to RGB. The features produced by CAPI are discriminative and smooth.
> </details>



![](https://arxiv.org/html/2502.08769/extracted/6198836/resources/sinkhorn_standard.png)

> 🔼 Figure 8 provides a detailed visualization of the CAPI model architecture, highlighting the flow of data and the different training mechanisms.  The diagram shows the teacher and student networks (both ViT-L/14), emphasizing the role of the exponential moving average (EMA) in updating the teacher. It also illustrates the clustering process used to generate the training signal (soft assignments) for the student, which predicts the missing image patches.  The color-coding helps distinguish components trained by the main loss (red), the clustering loss (purple), and the EMA updates (blue). Tensor sizes are included for a better understanding of the model's dimensions.
> <details>
> <summary>read the caption</summary>
> Figure 8: Detailed overview of our method with reference tensor sizes for a CAPI ViT-L/14 model. We denote in red the parts that are trained by the main loss, in purple the parts that are trained with the clustering loss, and in blue the parts that are updated by the EMA.
> </details>



![](https://arxiv.org/html/2502.08769/extracted/6198836/resources/sinkhorn_modified.png)

> 🔼 This figure shows the training loss curve for the CAPI ViT-L model. The x-axis represents the training iteration, and the y-axis represents the loss value.  The curve demonstrates a smooth downward trend, indicating stable training and the absence of plateaus or significant instability.
> <details>
> <summary>read the caption</summary>
> Figure 9: The loss curve of our CAPI ViT-L during training.
> </details>



![](https://arxiv.org/html/2502.08769/x17.png)

> 🔼 This figure displays the performance of both the teacher and student models throughout the training process.  The x-axis represents the training iteration, while the y-axis shows the accuracy.  Two sets of curves are presented: top-1 accuracy on ImageNet and mIoU scores on ADE20K, both for the teacher and student models. The purpose is to demonstrate the effectiveness of self-distillation, where the more advanced teacher model guides the student's learning, and to show the stability and improvement over time.
> <details>
> <summary>read the caption</summary>
> Figure 10: Comparative downstream scores of the teacher model and the student model throughout training.
> </details>



![](https://arxiv.org/html/2502.08769/extracted/6198836/pca/241106_1910_stableeveuh_master_lower_lr/1__8_256_1024_24_12_16_4_0.2_xFSDP_SHARD_GRAD_OP_true_500_50000_0.001_0.0005_0.999/eval/training_499999_teacher/pca_visualization/pca_mypics_560px/artifacts/0000022_pca_joint.000.png)

> 🔼 This figure shows the pseudo-code for the standard Sinkhorn-Knopp algorithm.  It details the iterative normalization process used to obtain a near-uniform distribution of tokens over clusters. The algorithm takes a tensor M as input and iteratively normalizes it along rows and columns. The normalization is done by dividing each element by the sum of elements in its row and then by the sum of elements in its column. This process is repeated until convergence, producing the output tensor M.
> <details>
> <summary>read the caption</summary>
> (a) Standard SK
> </details>



![](https://arxiv.org/html/2502.08769/extracted/6198836/pca/241106_1910_stableeveuh_master_lower_lr/1__8_256_1024_24_12_16_4_0.2_xFSDP_SHARD_GRAD_OP_true_500_50000_0.001_0.0005_0.999/eval/training_499999_teacher/pca_visualization/pca_mypics_560px/artifacts/0000022_pca_joint.001.png)

> 🔼 This figure presents the pseudo-code for a modified Sinkhorn-Knopp algorithm.  The original algorithm (shown in (a)) and the modification are compared. The modification involves normalizing by the sum of tokens for every position rather than normalizing across all positions, which addresses positional collapse in masked image modeling.
> <details>
> <summary>read the caption</summary>
> (b) Modified algorithm
> </details>



![](https://arxiv.org/html/2502.08769/extracted/6198836/pca/241106_1910_stableeveuh_master_lower_lr/1__8_256_1024_24_12_16_4_0.2_xFSDP_SHARD_GRAD_OP_true_500_50000_0.001_0.0005_0.999/eval/training_499999_teacher/pca_visualization/pca_mypics_560px/artifacts/0000022_pca_joint.002.png)

> 🔼 This figure presents the PyTorch pseudo-code for the modified Sinkhorn-Knopp algorithm used in the paper.  The Sinkhorn-Knopp algorithm is an iterative procedure to find a doubly stochastic matrix. This modification involves normalizing the sum of tokens for each position instead of normalizing across all positions in each iteration, leading to a more stable and efficient computation for the online clustering task. This approach enhances the clustering process and contributes to the overall improved performance of the masked image modeling technique.
> <details>
> <summary>read the caption</summary>
> Figure 11:  PyTorch pseudo-code for the proposed modified Sinkhorn-Knopp algorithm. We normalize by the sum of the tokens for every given position, instead of normalizing across all positions.
> </details>



![](https://arxiv.org/html/2502.08769/extracted/6198836/pca/241106_1910_stableeveuh_master_lower_lr/1__8_256_1024_24_12_16_4_0.2_xFSDP_SHARD_GRAD_OP_true_500_50000_0.001_0.0005_0.999/eval/training_499999_teacher/pca_visualization/pca_mypics_560px/artifacts/0000022_pca_joint.003.png)

> 🔼 This figure visualizes the feature maps generated by various self-supervised vision models, including CAPI, DINOv2+reg, BEiT, AIM, MAE, I-JEPA, and data2vec2, each with different model sizes and resolutions.  PCA (Principal Component Analysis) is used to reduce the dimensionality of the dense feature maps for each image.  The top three principal components are then mapped to the red, green, and blue channels of the RGB color space, allowing for visual comparison of the feature representations. This provides insights into how different models capture and represent visual information.
> <details>
> <summary>read the caption</summary>
> Figure 12: Visualization of the features produced by CAPI and other vision models at various resolutions: CAPI ViT-L/14, DINOv2+reg ViT-g/14 (Darcet et al., 2024), BEiT ViT-L/16 (Bao et al., 2021), AIM ViT-3B/14 (El-Nouby et al., 2024), MAE ViT-H/14 (El-Nouby et al., 2024), I-JEPA ViT-H/14 (Assran et al., 2023), and data2vec2 ViT-L/16 (Baevski et al., 2022). We apply a PCA decomposition to the dense outputs produced by each model for each image individually, and rescale the three first components to the RGB range for visualization.
> </details>



![](https://arxiv.org/html/2502.08769/extracted/6198836/pca/241106_1910_stableeveuh_master_lower_lr/1__8_256_1024_24_12_16_4_0.2_xFSDP_SHARD_GRAD_OP_true_500_50000_0.001_0.0005_0.999/eval/training_499999_teacher/pca_visualization/pca_mypics_560px/artifacts/0000022_pca_joint.004.png)

> 🔼 This figure visualizes the features produced by the CAPI ViT-L/14 model applied to images at 560 pixel resolution.  A Principal Component Analysis (PCA) is performed on the dense feature outputs, and the results are displayed. The first column shows the top three principal components mapped to RGB. The remaining columns depict the first eight channels of the PCA, each visualized individually using a coolwarm colormap.
> <details>
> <summary>read the caption</summary>
> Input
> </details>



![](https://arxiv.org/html/2502.08769/extracted/6198836/pca/241106_1910_stableeveuh_master_lower_lr/1__8_256_1024_24_12_16_4_0.2_xFSDP_SHARD_GRAD_OP_true_500_50000_0.001_0.0005_0.999/eval/training_499999_teacher/pca_visualization/pca_mypics_560px/artifacts/0000022_pca_joint.005.png)

> 🔼 This figure visualizes the features produced by the CAPI ViT-L/14 model applied to images at 560 pixel resolution.  A principal component analysis (PCA) is performed on the dense feature outputs from the model across all images. The first column displays the top three principal components mapped to RGB colors. The subsequent eight columns show the first eight individual channels using a coolwarm colormap.  This provides a visual representation of the learned features, highlighting their spatial organization and potential discriminative qualities.
> <details>
> <summary>read the caption</summary>
> PCA
> </details>



![](https://arxiv.org/html/2502.08769/extracted/6198836/pca/241106_1910_stableeveuh_master_lower_lr/1__8_256_1024_24_12_16_4_0.2_xFSDP_SHARD_GRAD_OP_true_500_50000_0.001_0.0005_0.999/eval/training_499999_teacher/pca_visualization/pca_mypics_560px/artifacts/0000022_pca_joint.006.png)

> 🔼 This figure visualizes the features produced by the CAPI ViT-L/14 model applied to images at 560 pixel resolution.  A principal component analysis (PCA) is performed on the dense feature outputs. The first column shows the first three principal components mapped to RGB channels, offering a visual representation of the main feature variations.  The subsequent eight columns display channels 0 through 7 individually, using a coolwarm colormap for better visualization of feature intensity and distribution. This visualization helps in understanding the nature and distribution of learned features within the CAPI model.
> <details>
> <summary>read the caption</summary>
> Channel 0
> </details>



![](https://arxiv.org/html/2502.08769/extracted/6198836/pca/241106_1910_stableeveuh_master_lower_lr/1__8_256_1024_24_12_16_4_0.2_xFSDP_SHARD_GRAD_OP_true_500_50000_0.001_0.0005_0.999/eval/training_499999_teacher/pca_visualization/pca_mypics_560px/artifacts/0000022_pca_joint.007.png)

> 🔼 This figure visualizes the features produced by the CAPI ViT-L/14 model applied to images at 560 pixel resolution.  A Principal Component Analysis (PCA) was performed on the dense feature outputs, resulting in a dimensionality reduction. The first column displays the first three principal components mapped to RGB colors for visualization. The subsequent eight columns showcase the next eight channels of the PCA individually, using a coolwarm colormap (from Matplotlib). This visualization helps to understand the nature of the learned features, demonstrating the model's ability to capture different aspects of the images.
> <details>
> <summary>read the caption</summary>
> Channel 1
> </details>



![](https://arxiv.org/html/2502.08769/extracted/6198836/pca/241106_1910_stableeveuh_master_lower_lr/1__8_256_1024_24_12_16_4_0.2_xFSDP_SHARD_GRAD_OP_true_500_50000_0.001_0.0005_0.999/eval/training_499999_teacher/pca_visualization/pca_mypics_560px/artifacts/0000022_pca_joint.008.png)

> 🔼 This figure visualizes the features extracted from the CAPI ViT-L/14 model applied to images at 560 pixel resolution.  It shows the second principal component (Channel 2) resulting from a Principal Component Analysis (PCA) of the features. The image showcases the features' spatial distribution and how they capture different aspects of the image content.  The visualization helps understand how well the model's features can discriminate and capture relevant semantic information from the image.
> <details>
> <summary>read the caption</summary>
> Channel 2
> </details>



![](https://arxiv.org/html/2502.08769/extracted/6198836/pca/241106_1910_stableeveuh_master_lower_lr/1__8_256_1024_24_12_16_4_0.2_xFSDP_SHARD_GRAD_OP_true_500_50000_0.001_0.0005_0.999/eval/training_499999_teacher/pca_visualization/pca_mypics_560px/artifacts/0000022_pca_joint.009.png)

> 🔼 This figure visualizes the features produced by the CAPI ViT-L/14 model applied to images at 560 pixel resolution.  A Principal Component Analysis (PCA) is performed on the dense feature outputs across all images. The visualization shows the principal components of the features as RGB and the first eight channels individually using a colormap.
> <details>
> <summary>read the caption</summary>
> Channel 3
> </details>



![](https://arxiv.org/html/2502.08769/extracted/6198836/pca/241106_1910_stableeveuh_master_lower_lr/1__8_256_1024_24_12_16_4_0.2_xFSDP_SHARD_GRAD_OP_true_500_50000_0.001_0.0005_0.999/eval/training_499999_teacher/pca_visualization/pca_mypics_560px/artifacts/0000023_pca_joint.000.png)

> 🔼 This figure visualizes the features produced by the CAPI ViT-L/14 model applied to images at 560 pixel resolution.  A Principal Component Analysis (PCA) is performed on the dense feature outputs. The first column shows the first three principal components mapped to RGB values. The remaining eight columns display the first eight channels of the features individually, using a coolwarm colormap.
> <details>
> <summary>read the caption</summary>
> Channel 4
> </details>



![](https://arxiv.org/html/2502.08769/extracted/6198836/pca/241106_1910_stableeveuh_master_lower_lr/1__8_256_1024_24_12_16_4_0.2_xFSDP_SHARD_GRAD_OP_true_500_50000_0.001_0.0005_0.999/eval/training_499999_teacher/pca_visualization/pca_mypics_560px/artifacts/0000023_pca_joint.001.png)

> 🔼 This figure visualizes the features produced by the CAPI ViT-L/14 model applied to images at 560 pixel resolution.  It shows the features using Principal Component Analysis (PCA). The first column displays the first three principal components mapped to RGB colors. The subsequent columns display channels 0 through 7 individually using a coolwarm colormap.
> <details>
> <summary>read the caption</summary>
> Channel 5
> </details>



![](https://arxiv.org/html/2502.08769/extracted/6198836/pca/241106_1910_stableeveuh_master_lower_lr/1__8_256_1024_24_12_16_4_0.2_xFSDP_SHARD_GRAD_OP_true_500_50000_0.001_0.0005_0.999/eval/training_499999_teacher/pca_visualization/pca_mypics_560px/artifacts/0000023_pca_joint.002.png)

> 🔼 This figure visualizes the features extracted by the CAPI ViT-L/14 model applied to images at 560 pixel resolution.  A Principal Component Analysis (PCA) is performed on the dense feature outputs from the model, and the visualization shows the first eight principal components individually. Each component is represented using a coolwarm colormap, providing a visual representation of the model's learned features across various image regions.
> <details>
> <summary>read the caption</summary>
> Channel 6
> </details>



![](https://arxiv.org/html/2502.08769/extracted/6198836/pca/241106_1910_stableeveuh_master_lower_lr/1__8_256_1024_24_12_16_4_0.2_xFSDP_SHARD_GRAD_OP_true_500_50000_0.001_0.0005_0.999/eval/training_499999_teacher/pca_visualization/pca_mypics_560px/artifacts/0000023_pca_joint.003.png)

> 🔼 This figure visualizes the features produced by the CAPI ViT-L/14 model applied to images at 560 pixel resolution.  It uses Principal Component Analysis (PCA) to reduce the dimensionality of the features, then displays the results. The first column shows the top three principal components mapped to the RGB color space. The subsequent eight columns show channels 0 through 7 individually, using a coolwarm colormap.
> <details>
> <summary>read the caption</summary>
> Channel 7
> </details>



![](https://arxiv.org/html/2502.08769/extracted/6198836/pca/241106_1910_stableeveuh_master_lower_lr/1__8_256_1024_24_12_16_4_0.2_xFSDP_SHARD_GRAD_OP_true_500_50000_0.001_0.0005_0.999/eval/training_499999_teacher/pca_visualization/pca_mypics_560px/artifacts/0000023_pca_joint.004.png)

> 🔼 This figure visualizes the features extracted by the CAPI ViT-L/14 model when processing images at a resolution of 560 pixels.  A principal component analysis (PCA) was performed on the model's dense output across multiple images to reduce dimensionality. The resulting principal components are then displayed. The first column shows the first three principal components mapped to the red, green, and blue color channels (RGB), providing a visual representation of the most significant variations in the data. The following eight columns represent the next eight principal components, visualized individually using a 'coolwarm' colormap from the Matplotlib library, showcasing additional feature variations in the dataset.
> <details>
> <summary>read the caption</summary>
> Figure 13: Visualization of the features produced by CAPI ViT-L/14 applied to images at 560 pixel resolution. We apply a PCA decomposition to the dense outputs produced by the model across all images. The first column shows the first 3 components as RGB. The next eight columns show the first eight channels individually using a coolwarm colormap from Matplotlib (Hunter, 2007).
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.st1.2">
<tr class="ltx_tr" id="S4.T1.st1.2.1">
<td class="ltx_td" id="S4.T1.st1.2.1.1"></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st1.2.1.2"><span class="ltx_text" id="S4.T1.st1.2.1.2.1" style="font-size:90%;">ADE</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st1.2.1.3"><span class="ltx_text" id="S4.T1.st1.2.1.3.1" style="font-size:90%;">IN1k</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st1.2.2.1"><span class="ltx_text" id="S4.T1.st1.2.2.1.1" style="font-size:90%;">Fused</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st1.2.2.2"><span class="ltx_text" id="S4.T1.st1.2.2.2.1" style="font-size:90%;">23.8</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st1.2.2.3"><span class="ltx_text" id="S4.T1.st1.2.2.3.1" style="font-size:90%;">73.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.2.3">
<td class="ltx_td ltx_align_left" id="S4.T1.st1.2.3.1"><span class="ltx_text" id="S4.T1.st1.2.3.1.1" style="font-size:90%;">Split, self-attn</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st1.2.3.2"><span class="ltx_text" id="S4.T1.st1.2.3.2.1" style="font-size:90%;">27.9</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st1.2.3.3"><span class="ltx_text" id="S4.T1.st1.2.3.3.1" style="font-size:90%;">77.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.2.4" style="background-color:#BFBFBF;">
<td class="ltx_td ltx_align_left" id="S4.T1.st1.2.4.1"><span class="ltx_text" id="S4.T1.st1.2.4.1.1" style="font-size:90%;background-color:#BFBFBF;">Split, cross-attn</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st1.2.4.2"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.2.4.2.1" style="font-size:90%;background-color:#BFBFBF;">29.1</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st1.2.4.3"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.2.4.3.1" style="font-size:90%;background-color:#BFBFBF;">81.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on different masking strategies used in masked image modeling. It compares the performance of various masking techniques, including random masking, block masking, inverse block masking with and without a random circular shift, on both ImageNet-1k classification and ADE20K segmentation tasks. The results demonstrate the impact of the masking strategy on model performance and highlight the effectiveness of inverse block masking with a circular shift in improving representation learning.
> <details>
> <summary>read the caption</summary>
> (b) Masking strategy
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.st2.2">
<tr class="ltx_tr" id="S4.T1.st2.2.1">
<td class="ltx_td" id="S4.T1.st2.2.1.1"></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st2.2.1.2"><span class="ltx_text" id="S4.T1.st2.2.1.2.1" style="font-size:90%;">ADE</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st2.2.1.3"><span class="ltx_text" id="S4.T1.st2.2.1.3.1" style="font-size:90%;">IN1k</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st2.2.2.1"><span class="ltx_text" id="S4.T1.st2.2.2.1.1" style="font-size:90%;">random</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st2.2.2.2"><span class="ltx_text" id="S4.T1.st2.2.2.2.1" style="font-size:90%;">23.6</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st2.2.2.3"><span class="ltx_text" id="S4.T1.st2.2.2.3.1" style="font-size:90%;">76.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.2.3">
<td class="ltx_td ltx_align_left" id="S4.T1.st2.2.3.1"><span class="ltx_text" id="S4.T1.st2.2.3.1.1" style="font-size:90%;">block</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st2.2.3.2"><span class="ltx_text" id="S4.T1.st2.2.3.2.1" style="font-size:90%;">25.6</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st2.2.3.3"><span class="ltx_text" id="S4.T1.st2.2.3.3.1" style="font-size:90%;">79.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.2.4">
<td class="ltx_td ltx_align_left" id="S4.T1.st2.2.4.1"><span class="ltx_text" id="S4.T1.st2.2.4.1.1" style="font-size:90%;">inv. block</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st2.2.4.2"><span class="ltx_text" id="S4.T1.st2.2.4.2.1" style="font-size:90%;">27.2</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st2.2.4.3"><span class="ltx_text" id="S4.T1.st2.2.4.3.1" style="font-size:90%;">80.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.2.5" style="background-color:#BFBFBF;">
<td class="ltx_td ltx_align_left" id="S4.T1.st2.2.5.1"><span class="ltx_text" id="S4.T1.st2.2.5.1.1" style="font-size:90%;background-color:#BFBFBF;">inv. block <span class="ltx_text ltx_font_typewriter" id="S4.T1.st2.2.5.1.1.1">+roll</span></span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st2.2.5.2"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.2.5.2.1" style="font-size:90%;background-color:#BFBFBF;">29.1</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st2.2.5.3"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.2.5.3.1" style="font-size:90%;background-color:#BFBFBF;">81.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study comparing different loss functions used in the masked image modeling (MIM) process. It shows the impact of using different loss functions on the model's performance in terms of both ImageNet-1k classification accuracy and ADE20K segmentation mIoU. The table allows researchers to compare the results of direct loss, DINO loss, and the proposed clustering-based loss. It helps to understand the effect of different loss formulations on the model's performance and stability during training.
> <details>
> <summary>read the caption</summary>
> (c) Loss formulation
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.st3.1">
<tr class="ltx_tr" id="S4.T1.st3.1.2">
<td class="ltx_td ltx_align_left" id="S4.T1.st3.1.2.1"><span class="ltx_text" id="S4.T1.st3.1.2.1.1" style="font-size:90%;">head</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st3.1.2.2"><span class="ltx_text" id="S4.T1.st3.1.2.2.1" style="font-size:90%;">loss</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st3.1.2.3"><span class="ltx_text" id="S4.T1.st3.1.2.3.1" style="font-size:90%;">ADE</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st3.1.2.4"><span class="ltx_text" id="S4.T1.st3.1.2.4.1" style="font-size:90%;">IN1k</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st3.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st3.1.1.1"><math alttext="\varnothing" class="ltx_Math" display="inline" id="S4.T1.st3.1.1.1.m1.1"><semantics id="S4.T1.st3.1.1.1.m1.1a"><mi id="S4.T1.st3.1.1.1.m1.1.1" mathsize="90%" mathvariant="normal" xref="S4.T1.st3.1.1.1.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T1.st3.1.1.1.m1.1b"><emptyset id="S4.T1.st3.1.1.1.m1.1.1.cmml" xref="S4.T1.st3.1.1.1.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.st3.1.1.1.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S4.T1.st3.1.1.1.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st3.1.1.2"><span class="ltx_text" id="S4.T1.st3.1.1.2.1" style="font-size:90%;">I-JEPA</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st3.1.1.3"><span class="ltx_text" id="S4.T1.st3.1.1.3.1" style="font-size:90%;">23.7</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st3.1.1.4"><span class="ltx_text" id="S4.T1.st3.1.1.4.1" style="font-size:90%;">79.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st3.1.3">
<td class="ltx_td ltx_align_left" id="S4.T1.st3.1.3.1"><span class="ltx_text" id="S4.T1.st3.1.3.1.1" style="font-size:90%;">MLP</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st3.1.3.2"><span class="ltx_text" id="S4.T1.st3.1.3.2.1" style="font-size:90%;">iBOT</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st3.1.3.3"><span class="ltx_text" id="S4.T1.st3.1.3.3.1" style="font-size:90%;">1.7</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st3.1.3.4"><span class="ltx_text" id="S4.T1.st3.1.3.4.1" style="font-size:90%;">11.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st3.1.4">
<td class="ltx_td ltx_align_left" id="S4.T1.st3.1.4.1"><span class="ltx_text" id="S4.T1.st3.1.4.1.1" style="font-size:90%;">MLP</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st3.1.4.2"><span class="ltx_text" id="S4.T1.st3.1.4.2.1" style="font-size:90%;">CAPI</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st3.1.4.3"><span class="ltx_text" id="S4.T1.st3.1.4.3.1" style="font-size:90%;">26.4</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st3.1.4.4"><span class="ltx_text" id="S4.T1.st3.1.4.4.1" style="font-size:90%;">80.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st3.1.5" style="background-color:#BFBFBF;">
<td class="ltx_td ltx_align_left" id="S4.T1.st3.1.5.1"><span class="ltx_text" id="S4.T1.st3.1.5.1.1" style="font-size:90%;background-color:#BFBFBF;">Linear</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st3.1.5.2"><span class="ltx_text" id="S4.T1.st3.1.5.2.1" style="font-size:90%;background-color:#BFBFBF;">CAPI</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st3.1.5.3"><span class="ltx_text ltx_font_bold" id="S4.T1.st3.1.5.3.1" style="font-size:90%;background-color:#BFBFBF;">29.1</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st3.1.5.4"><span class="ltx_text ltx_font_bold" id="S4.T1.st3.1.5.4.1" style="font-size:90%;background-color:#BFBFBF;">81.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation study results focusing on the impact of the cropping range used during data augmentation on the performance of the CAPI model.  The cropping range determines the proportion of the original image that is randomly cropped before being fed to the model during training.  The table shows how different crop ranges affect performance on the ADE20K semantic segmentation and ImageNet-1k classification tasks, using a k-NN and linear probe, respectively.
> <details>
> <summary>read the caption</summary>
> (d) Crop range
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.st4.3">
<tr class="ltx_tr" id="S4.T1.st4.3.4">
<td class="ltx_td" id="S4.T1.st4.3.4.1"></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st4.3.4.2"><span class="ltx_text" id="S4.T1.st4.3.4.2.1" style="font-size:90%;">ADE</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st4.3.4.3"><span class="ltx_text" id="S4.T1.st4.3.4.3.1" style="font-size:90%;">IN1k</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st4.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st4.1.1.1"><math alttext="[0.2,1.0]" class="ltx_Math" display="inline" id="S4.T1.st4.1.1.1.m1.2"><semantics id="S4.T1.st4.1.1.1.m1.2a"><mrow id="S4.T1.st4.1.1.1.m1.2.3.2" xref="S4.T1.st4.1.1.1.m1.2.3.1.cmml"><mo id="S4.T1.st4.1.1.1.m1.2.3.2.1" maxsize="90%" minsize="90%" xref="S4.T1.st4.1.1.1.m1.2.3.1.cmml">[</mo><mn id="S4.T1.st4.1.1.1.m1.1.1" mathsize="90%" xref="S4.T1.st4.1.1.1.m1.1.1.cmml">0.2</mn><mo id="S4.T1.st4.1.1.1.m1.2.3.2.2" mathsize="90%" xref="S4.T1.st4.1.1.1.m1.2.3.1.cmml">,</mo><mn id="S4.T1.st4.1.1.1.m1.2.2" mathsize="90%" xref="S4.T1.st4.1.1.1.m1.2.2.cmml">1.0</mn><mo id="S4.T1.st4.1.1.1.m1.2.3.2.3" maxsize="90%" minsize="90%" xref="S4.T1.st4.1.1.1.m1.2.3.1.cmml">]</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.st4.1.1.1.m1.2b"><interval closure="closed" id="S4.T1.st4.1.1.1.m1.2.3.1.cmml" xref="S4.T1.st4.1.1.1.m1.2.3.2"><cn id="S4.T1.st4.1.1.1.m1.1.1.cmml" type="float" xref="S4.T1.st4.1.1.1.m1.1.1">0.2</cn><cn id="S4.T1.st4.1.1.1.m1.2.2.cmml" type="float" xref="S4.T1.st4.1.1.1.m1.2.2">1.0</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.st4.1.1.1.m1.2c">[0.2,1.0]</annotation><annotation encoding="application/x-llamapun" id="S4.T1.st4.1.1.1.m1.2d">[ 0.2 , 1.0 ]</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st4.1.1.2"><span class="ltx_text" id="S4.T1.st4.1.1.2.1" style="font-size:90%;">27.9</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st4.1.1.3"><span class="ltx_text" id="S4.T1.st4.1.1.3.1" style="font-size:90%;">81.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st4.2.2" style="background-color:#BFBFBF;">
<td class="ltx_td ltx_align_left" id="S4.T1.st4.2.2.1"><math alttext="[0.6,1.0]" class="ltx_Math" display="inline" id="S4.T1.st4.2.2.1.m1.2" style="background-color:#BFBFBF;"><semantics id="S4.T1.st4.2.2.1.m1.2a"><mrow id="S4.T1.st4.2.2.1.m1.2.3.2" xref="S4.T1.st4.2.2.1.m1.2.3.1.cmml"><mo id="S4.T1.st4.2.2.1.m1.2.3.2.1" mathbackground="#BFBFBF" maxsize="90%" minsize="90%" xref="S4.T1.st4.2.2.1.m1.2.3.1.cmml">[</mo><mn id="S4.T1.st4.2.2.1.m1.1.1" mathbackground="#BFBFBF" mathsize="90%" xref="S4.T1.st4.2.2.1.m1.1.1.cmml">0.6</mn><mo id="S4.T1.st4.2.2.1.m1.2.3.2.2" mathbackground="#BFBFBF" mathsize="90%" xref="S4.T1.st4.2.2.1.m1.2.3.1.cmml">,</mo><mn id="S4.T1.st4.2.2.1.m1.2.2" mathbackground="#BFBFBF" mathsize="90%" xref="S4.T1.st4.2.2.1.m1.2.2.cmml">1.0</mn><mo id="S4.T1.st4.2.2.1.m1.2.3.2.3" mathbackground="#BFBFBF" maxsize="90%" minsize="90%" xref="S4.T1.st4.2.2.1.m1.2.3.1.cmml">]</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.st4.2.2.1.m1.2b"><interval closure="closed" id="S4.T1.st4.2.2.1.m1.2.3.1.cmml" xref="S4.T1.st4.2.2.1.m1.2.3.2"><cn id="S4.T1.st4.2.2.1.m1.1.1.cmml" type="float" xref="S4.T1.st4.2.2.1.m1.1.1">0.6</cn><cn id="S4.T1.st4.2.2.1.m1.2.2.cmml" type="float" xref="S4.T1.st4.2.2.1.m1.2.2">1.0</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.st4.2.2.1.m1.2c">[0.6,1.0]</annotation><annotation encoding="application/x-llamapun" id="S4.T1.st4.2.2.1.m1.2d">[ 0.6 , 1.0 ]</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st4.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T1.st4.2.2.2.1" style="font-size:90%;background-color:#BFBFBF;">29.1</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st4.2.2.3"><span class="ltx_text ltx_font_bold" id="S4.T1.st4.2.2.3.1" style="font-size:90%;background-color:#BFBFBF;">81.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st4.3.3" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_left" id="S4.T1.st4.3.3.1"><math alttext="[1.0,1.0]" class="ltx_Math" display="inline" id="S4.T1.st4.3.3.1.m1.2" style="background-color:#FFFFFF;"><semantics id="S4.T1.st4.3.3.1.m1.2a"><mrow id="S4.T1.st4.3.3.1.m1.2.3.2" xref="S4.T1.st4.3.3.1.m1.2.3.1.cmml"><mo id="S4.T1.st4.3.3.1.m1.2.3.2.1" mathbackground="#FFFFFF" maxsize="90%" minsize="90%" xref="S4.T1.st4.3.3.1.m1.2.3.1.cmml">[</mo><mn id="S4.T1.st4.3.3.1.m1.1.1" mathbackground="#FFFFFF" mathsize="90%" xref="S4.T1.st4.3.3.1.m1.1.1.cmml">1.0</mn><mo id="S4.T1.st4.3.3.1.m1.2.3.2.2" mathbackground="#FFFFFF" mathsize="90%" xref="S4.T1.st4.3.3.1.m1.2.3.1.cmml">,</mo><mn id="S4.T1.st4.3.3.1.m1.2.2" mathbackground="#FFFFFF" mathsize="90%" xref="S4.T1.st4.3.3.1.m1.2.2.cmml">1.0</mn><mo id="S4.T1.st4.3.3.1.m1.2.3.2.3" mathbackground="#FFFFFF" maxsize="90%" minsize="90%" xref="S4.T1.st4.3.3.1.m1.2.3.1.cmml">]</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.st4.3.3.1.m1.2b"><interval closure="closed" id="S4.T1.st4.3.3.1.m1.2.3.1.cmml" xref="S4.T1.st4.3.3.1.m1.2.3.2"><cn id="S4.T1.st4.3.3.1.m1.1.1.cmml" type="float" xref="S4.T1.st4.3.3.1.m1.1.1">1.0</cn><cn id="S4.T1.st4.3.3.1.m1.2.2.cmml" type="float" xref="S4.T1.st4.3.3.1.m1.2.2">1.0</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.st4.3.3.1.m1.2c">[1.0,1.0]</annotation><annotation encoding="application/x-llamapun" id="S4.T1.st4.3.3.1.m1.2d">[ 1.0 , 1.0 ]</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st4.3.3.2"><span class="ltx_text" id="S4.T1.st4.3.3.2.1" style="font-size:90%;background-color:#FFFFFF;">28.9</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st4.3.3.3"><span class="ltx_text" id="S4.T1.st4.3.3.3.1" style="font-size:90%;background-color:#FFFFFF;">80.9</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study on different masking ratios used in the CAPI model. The masking ratio refers to the proportion of image patches that are masked during training. The table shows how the model's performance varies (measured by ADE20K and ImageNet1k scores) when different ratios of patches are masked out.
> <details>
> <summary>read the caption</summary>
> (e) Masking ratio
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.st5.2">
<tr class="ltx_tr" id="S4.T1.st5.2.1">
<td class="ltx_td" id="S4.T1.st5.2.1.1"></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st5.2.1.2"><span class="ltx_text" id="S4.T1.st5.2.1.2.1" style="font-size:90%;">ADE</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st5.2.1.3"><span class="ltx_text" id="S4.T1.st5.2.1.3.1" style="font-size:90%;">IN1k</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st5.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st5.2.2.1"><span class="ltx_text" id="S4.T1.st5.2.2.1.1" style="font-size:90%;">55%</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st5.2.2.2"><span class="ltx_text" id="S4.T1.st5.2.2.2.1" style="font-size:90%;">28.0</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st5.2.2.3"><span class="ltx_text" id="S4.T1.st5.2.2.3.1" style="font-size:90%;">81.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st5.2.3" style="background-color:#BFBFBF;">
<td class="ltx_td ltx_align_left" id="S4.T1.st5.2.3.1"><span class="ltx_text" id="S4.T1.st5.2.3.1.1" style="font-size:90%;background-color:#BFBFBF;">65%</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st5.2.3.2"><span class="ltx_text ltx_font_bold" id="S4.T1.st5.2.3.2.1" style="font-size:90%;background-color:#BFBFBF;">29.1</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st5.2.3.3"><span class="ltx_text ltx_font_bold" id="S4.T1.st5.2.3.3.1" style="font-size:90%;background-color:#BFBFBF;">81.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st5.2.4" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_left" id="S4.T1.st5.2.4.1"><span class="ltx_text" id="S4.T1.st5.2.4.1.1" style="font-size:90%;background-color:#FFFFFF;">75%</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st5.2.4.2"><span class="ltx_text" id="S4.T1.st5.2.4.2.1" style="font-size:90%;background-color:#FFFFFF;">28.1</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st5.2.4.3"><span class="ltx_text" id="S4.T1.st5.2.4.3.1" style="font-size:90%;background-color:#FFFFFF;">81.2</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation studies on the predictor's architecture. Different depths and widths of the predictor are explored, while keeping the total number of parameters constant.  The results show the impact of these architectural choices on both ImageNet-1k classification accuracy and ADE20K semantic segmentation mIoU.
> <details>
> <summary>read the caption</summary>
> (f) Predictor shape
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.st6.2">
<tr class="ltx_tr" id="S4.T1.st6.2.1">
<td class="ltx_td ltx_align_left" id="S4.T1.st6.2.1.1"><span class="ltx_text" id="S4.T1.st6.2.1.1.1" style="font-size:90%;">depth</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st6.2.1.2"><span class="ltx_text" id="S4.T1.st6.2.1.2.1" style="font-size:90%;">width</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st6.2.1.3"><span class="ltx_text" id="S4.T1.st6.2.1.3.1" style="font-size:90%;">ADE</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st6.2.1.4"><span class="ltx_text" id="S4.T1.st6.2.1.4.1" style="font-size:90%;">IN1k</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st6.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st6.2.2.1"><span class="ltx_text" id="S4.T1.st6.2.2.1.1" style="font-size:90%;">5</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st6.2.2.2"><span class="ltx_text" id="S4.T1.st6.2.2.2.1" style="font-size:90%;">1536</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st6.2.2.3"><span class="ltx_text ltx_font_bold" id="S4.T1.st6.2.2.3.1" style="font-size:90%;">30.9</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st6.2.2.4"><span class="ltx_text ltx_font_bold" id="S4.T1.st6.2.2.4.1" style="font-size:90%;">81.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st6.2.3" style="background-color:#BFBFBF;">
<td class="ltx_td ltx_align_left" id="S4.T1.st6.2.3.1"><span class="ltx_text" id="S4.T1.st6.2.3.1.1" style="font-size:90%;background-color:#BFBFBF;">12</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st6.2.3.2"><span class="ltx_text" id="S4.T1.st6.2.3.2.1" style="font-size:90%;background-color:#BFBFBF;">1024</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st6.2.3.3"><span class="ltx_text" id="S4.T1.st6.2.3.3.1" style="font-size:90%;background-color:#BFBFBF;">29.1</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st6.2.3.4"><span class="ltx_text" id="S4.T1.st6.2.3.4.1" style="font-size:90%;background-color:#BFBFBF;">81.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st6.2.4" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_left" id="S4.T1.st6.2.4.1"><span class="ltx_text" id="S4.T1.st6.2.4.1.1" style="font-size:90%;background-color:#FFFFFF;">21</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st6.2.4.2"><span class="ltx_text" id="S4.T1.st6.2.4.2.1" style="font-size:90%;background-color:#FFFFFF;">768</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st6.2.4.3"><span class="ltx_text" id="S4.T1.st6.2.4.3.1" style="font-size:90%;background-color:#FFFFFF;">28.3</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st6.2.4.4"><span class="ltx_text" id="S4.T1.st6.2.4.4.1" style="font-size:90%;background-color:#FFFFFF;">81.3</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation study results focusing on the impact of the number of register tokens used in the model. Register tokens are additional tokens added to the input sequence during training to improve the quality of learned feature maps. The table shows how the number of register tokens affects the performance on the ADE20K segmentation and ImageNet-1k classification tasks, comparing the results with different numbers of register tokens (0, 16).  It demonstrates the performance gain achieved by including registers and the optimal number leading to best performance.
> <details>
> <summary>read the caption</summary>
> (g) Number of registers
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.st7.2">
<tr class="ltx_tr" id="S4.T1.st7.2.1">
<td class="ltx_td" id="S4.T1.st7.2.1.1"></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st7.2.1.2"><span class="ltx_text" id="S4.T1.st7.2.1.2.1" style="font-size:90%;">ADE</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st7.2.1.3"><span class="ltx_text" id="S4.T1.st7.2.1.3.1" style="font-size:90%;">IN1k</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st7.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st7.2.2.1"><span class="ltx_text" id="S4.T1.st7.2.2.1.1" style="font-size:90%;">0</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st7.2.2.2"><span class="ltx_text" id="S4.T1.st7.2.2.2.1" style="font-size:90%;">25.9</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st7.2.2.3"><span class="ltx_text" id="S4.T1.st7.2.2.3.1" style="font-size:90%;">79.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st7.2.3" style="background-color:#BFBFBF;">
<td class="ltx_td ltx_align_left" id="S4.T1.st7.2.3.1"><span class="ltx_text" id="S4.T1.st7.2.3.1.1" style="font-size:90%;background-color:#BFBFBF;">16</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st7.2.3.2"><span class="ltx_text ltx_font_bold" id="S4.T1.st7.2.3.2.1" style="font-size:90%;background-color:#BFBFBF;">29.1</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st7.2.3.3"><span class="ltx_text ltx_font_bold" id="S4.T1.st7.2.3.3.1" style="font-size:90%;background-color:#BFBFBF;">81.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation study results focusing on the positional encoding method used in the masked image modeling (MIM) process.  It compares the performance of the model trained using the standard positional encoding against a model using a proposed alternative.  The results show the impact of this design choice on both ImageNet-1k classification accuracy and ADE20K segmentation mIoU.  The 'Proposed' method appears to improve performance slightly but within a small margin.
> <details>
> <summary>read the caption</summary>
> (h) Positional encoding
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.st8.2">
<tr class="ltx_tr" id="S4.T1.st8.2.1">
<td class="ltx_td" id="S4.T1.st8.2.1.1"></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st8.2.1.2"><span class="ltx_text" id="S4.T1.st8.2.1.2.1" style="font-size:90%;">ADE</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st8.2.1.3"><span class="ltx_text" id="S4.T1.st8.2.1.3.1" style="font-size:90%;">IN1k</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st8.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st8.2.2.1"><span class="ltx_text" id="S4.T1.st8.2.2.1.1" style="font-size:90%;">learnable</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st8.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T1.st8.2.2.2.1" style="font-size:90%;">30.0</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st8.2.2.3"><span class="ltx_text ltx_font_bold" id="S4.T1.st8.2.2.3.1" style="font-size:90%;">81.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st8.2.3" style="background-color:#BFBFBF;">
<td class="ltx_td ltx_align_left" id="S4.T1.st8.2.3.1"><span class="ltx_text" id="S4.T1.st8.2.3.1.1" style="font-size:90%;background-color:#BFBFBF;">RoPE</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st8.2.3.2"><span class="ltx_text" id="S4.T1.st8.2.3.2.1" style="font-size:90%;background-color:#BFBFBF;">29.1</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st8.2.3.3"><span class="ltx_text" id="S4.T1.st8.2.3.3.1" style="font-size:90%;background-color:#BFBFBF;">81.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 1(i) shows the ablation study on the effect of using the Sinkhorn-Knopp algorithm in the online clustering process.  It compares the performance of using the standard Sinkhorn-Knopp algorithm against a proposed modification where the algorithm is run separately at each position to prevent positional collapse, a common issue in self-supervised learning. The table reports the performance in terms of ADE20K segmentation mIoU and ImageNet-1k classification accuracy.
> <details>
> <summary>read the caption</summary>
> (i) Sinkhorn-Knopp algorithm
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.st9.2">
<tr class="ltx_tr" id="S4.T1.st9.2.1">
<td class="ltx_td" id="S4.T1.st9.2.1.1"></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st9.2.1.2"><span class="ltx_text" id="S4.T1.st9.2.1.2.1" style="font-size:90%;">ADE</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st9.2.1.3"><span class="ltx_text" id="S4.T1.st9.2.1.3.1" style="font-size:90%;">IN1k</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st9.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st9.2.2.1"><span class="ltx_text" id="S4.T1.st9.2.2.1.1" style="font-size:90%;">Standard</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st9.2.2.2"><span class="ltx_text" id="S4.T1.st9.2.2.2.1" style="font-size:90%;">28.5</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.st9.2.2.3"><span class="ltx_text" id="S4.T1.st9.2.2.3.1" style="font-size:90%;">81.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st9.2.3" style="background-color:#BFBFBF;">
<td class="ltx_td ltx_align_left" id="S4.T1.st9.2.3.1"><span class="ltx_text" id="S4.T1.st9.2.3.1.1" style="font-size:90%;background-color:#BFBFBF;">Proposed</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st9.2.3.2"><span class="ltx_text ltx_font_bold" id="S4.T1.st9.2.3.2.1" style="font-size:90%;background-color:#BFBFBF;">29.1</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.st9.2.3.3"><span class="ltx_text ltx_font_bold" id="S4.T1.st9.2.3.3.1" style="font-size:90%;background-color:#BFBFBF;">81.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of various design choices within the CAPI model on both image classification and segmentation tasks.  The table systematically varies parameters such as predictor architecture, masking strategy, loss function, and hyperparameters, showing the effect on ImageNet-1k classification accuracy and ADE20k segmentation mIoU. The default configuration is highlighted in gray, and the best-performing settings are bolded. A detailed analysis of these results can be found in section 4.2 of the paper.
> <details>
> <summary>read the caption</summary>
> Table 1:  Ablation study of the main parameters and design choices in our algorithm. We report both image segmentation and classification. We highlight the default setting in gray, and bold the best-performing solution. An in-depth analysis of these results is provided in Sec. 4.2.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_minipage ltx_align_middle" id="S4.F6.3" style="width:130.1pt;">
<tr class="ltx_tr" id="S4.F6.3.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.F6.3.1.1">#prototypes</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.F6.3.1.2">ADE</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.F6.3.1.3">IN1k</td>
</tr>
<tr class="ltx_tr" id="S4.F6.3.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.F6.3.2.1">1024</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.F6.3.2.2">14.9</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.F6.3.2.3">73.8</td>
</tr>
<tr class="ltx_tr" id="S4.F6.3.3">
<td class="ltx_td ltx_align_left" id="S4.F6.3.3.1">2048</td>
<td class="ltx_td ltx_align_left" id="S4.F6.3.3.2">19.8</td>
<td class="ltx_td ltx_align_left" id="S4.F6.3.3.3">77.4</td>
</tr>
<tr class="ltx_tr" id="S4.F6.3.4">
<td class="ltx_td ltx_align_left" id="S4.F6.3.4.1">4096</td>
<td class="ltx_td ltx_align_left" id="S4.F6.3.4.2">27.5</td>
<td class="ltx_td ltx_align_left" id="S4.F6.3.4.3">80.7</td>
</tr>
<tr class="ltx_tr" id="S4.F6.3.5">
<td class="ltx_td ltx_align_left" id="S4.F6.3.5.1">8192</td>
<td class="ltx_td ltx_align_left" id="S4.F6.3.5.2">28.5</td>
<td class="ltx_td ltx_align_left" id="S4.F6.3.5.3">81.3</td>
</tr>
<tr class="ltx_tr" id="S4.F6.3.6" style="background-color:#BFBFBF;">
<td class="ltx_td ltx_align_left" id="S4.F6.3.6.1"><span class="ltx_text" id="S4.F6.3.6.1.1" style="background-color:#BFBFBF;">16384</span></td>
<td class="ltx_td ltx_align_left" id="S4.F6.3.6.2"><span class="ltx_text ltx_font_bold" id="S4.F6.3.6.2.1" style="background-color:#BFBFBF;">29.1</span></td>
<td class="ltx_td ltx_align_left" id="S4.F6.3.6.3"><span class="ltx_text" id="S4.F6.3.6.3.1" style="background-color:#BFBFBF;">81.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.F6.3.7" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.F6.3.7.1"><span class="ltx_text" id="S4.F6.3.7.1.1" style="background-color:#FFFFFF;">32768</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.F6.3.7.2"><span class="ltx_text ltx_font_bold" id="S4.F6.3.7.2.1" style="background-color:#FFFFFF;">29.1</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.F6.3.7.3"><span class="ltx_text ltx_font_bold" id="S4.F6.3.7.3.1" style="background-color:#FFFFFF;">81.7</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the image classification results for various self-supervised learning models.  It compares the performance of the proposed CAPI model against several established baselines on various image classification datasets. The performance is measured using accuracy on different datasets. For a fair comparison, the table focuses on baselines that have model sizes similar to that of the CAPI model (ViT-L/14). The datasets used include ImageNet, ObjectNet, iNaturalist, Places205, and SUN397.  The table allows for a quantitative evaluation of CAPI's effectiveness in learning generalizable visual representations compared to other state-of-the-art methods.
> <details>
> <summary>read the caption</summary>
> Table 2:  Image classification results. For each baseline method, we report the model size closest to ViT-L/14.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_minipage ltx_align_middle" id="S4.F6.4" style="width:130.1pt;">
<tr class="ltx_tr" id="S4.F6.4.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.F6.4.1.1"><span class="ltx_text" id="S4.F6.4.1.1.1" style="font-size:90%;">dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.F6.4.1.2"><span class="ltx_text" id="S4.F6.4.1.2.1" style="font-size:90%;">ADE20K</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.F6.4.1.3"><span class="ltx_text" id="S4.F6.4.1.3.1" style="font-size:90%;">IN1k</span></td>
</tr>
<tr class="ltx_tr" id="S4.F6.4.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.F6.4.2.1"><span class="ltx_text" id="S4.F6.4.2.1.1" style="font-size:90%;">IN1k</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.F6.4.2.2"><span class="ltx_text" id="S4.F6.4.2.2.1" style="font-size:90%;">28.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.F6.4.2.3"><span class="ltx_text ltx_font_bold" id="S4.F6.4.2.3.1" style="font-size:90%;">81.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.F6.4.3" style="background-color:#BFBFBF;">
<td class="ltx_td ltx_align_left" id="S4.F6.4.3.1"><span class="ltx_text" id="S4.F6.4.3.1.1" style="font-size:90%;background-color:#BFBFBF;">IN22k</span></td>
<td class="ltx_td ltx_align_center" id="S4.F6.4.3.2"><span class="ltx_text" id="S4.F6.4.3.2.1" style="font-size:90%;background-color:#BFBFBF;">29.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.F6.4.3.3"><span class="ltx_text" id="S4.F6.4.3.3.1" style="font-size:90%;background-color:#BFBFBF;">81.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.F6.4.4" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.F6.4.4.1"><span class="ltx_text" id="S4.F6.4.4.1.1" style="font-size:90%;background-color:#FFFFFF;">LVD-142M</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.F6.4.4.2"><span class="ltx_text ltx_font_bold" id="S4.F6.4.4.2.1" style="font-size:90%;background-color:#FFFFFF;">30.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.F6.4.4.3"><span class="ltx_text" id="S4.F6.4.4.3.1" style="font-size:90%;background-color:#FFFFFF;">81.2</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a comparison of CAPI's performance against state-of-the-art models on image segmentation using only frozen features (no further training of the model).  Both k-NN and linear methods are used for segmentation and the results (mIoU scores) are presented for various datasets (ADE20k, Pascal VOC, Cityscapes).  Additionally, results from non-MIM (Masked Image Modeling) self-supervised learning models are included as a benchmark to highlight CAPI's competitive performance, achieved using only a MIM approach.
> <details>
> <summary>read the caption</summary>
> Table 3:  Comparison with the state of the art on image segmentation using frozen features. We report both k𝑘kitalic_k-NN and linear segmentation performance. For reference, we also report the performance of some other non-MIM SSL models. This shows that CAPI narrows the gap using only a MIM approach.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T4.2">
<tr class="ltx_tr" id="S4.T4.2.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.2.1.1"><span class="ltx_text" id="S4.T4.2.1.1.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.2.1.2"><span class="ltx_text" id="S4.T4.2.1.2.1" style="font-size:90%;">train res.</span></td>
<td class="ltx_td ltx_border_tt" id="S4.T4.2.1.3"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.2.1.4"><span class="ltx_text" id="S4.T4.2.1.4.1" style="font-size:90%;">eval@224</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.2.1.5"><span class="ltx_text" id="S4.T4.2.1.5.1" style="font-size:90%;">eval@448</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.2.2.1"><span class="ltx_text" id="S4.T4.2.2.1.1" style="font-size:90%;">I-JEPA-H</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.2.2.2"><span class="ltx_text" id="S4.T4.2.2.2.1" style="font-size:90%;">224</span></td>
<td class="ltx_td ltx_border_t" id="S4.T4.2.2.3"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.4"><span class="ltx_text" id="S4.T4.2.2.4.1" style="font-size:90%;">79.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.5"><span class="ltx_text" id="S4.T4.2.2.5.1" style="font-size:90%;">78.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.3">
<td class="ltx_td ltx_align_left" id="S4.T4.2.3.1"><span class="ltx_text" id="S4.T4.2.3.1.1" style="font-size:90%;">I-JEPA-H</span></td>
<td class="ltx_td ltx_align_left" id="S4.T4.2.3.2"><span class="ltx_text" id="S4.T4.2.3.2.1" style="font-size:90%;">448</span></td>
<td class="ltx_td" id="S4.T4.2.3.3"></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.3.4"><span class="ltx_text" id="S4.T4.2.3.4.1" style="font-size:90%;">79.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.3.5"><span class="ltx_text" id="S4.T4.2.3.5.1" style="font-size:90%;">82.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.2.4.1"><span class="ltx_text" id="S4.T4.2.4.1.1" style="font-size:90%;">CAPI-L</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.2.4.2"><span class="ltx_text" id="S4.T4.2.4.2.1" style="font-size:90%;">224</span></td>
<td class="ltx_td ltx_border_bb" id="S4.T4.2.4.3"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.4.4"><span class="ltx_text ltx_font_bold" id="S4.T4.2.4.4.1" style="font-size:90%;">83.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.4.5"><span class="ltx_text ltx_font_bold" id="S4.T4.2.4.5.1" style="font-size:90%;">83.5</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the ImageNet-1k attentive probing accuracy achieved by the I-JEPA and CAPI models when using different input resolutions (224x224 and 448x448 pixels).  It demonstrates the performance of each model at various input sizes, showing the robustness or sensitivity of their respective architectures to changes in image resolution.
> <details>
> <summary>read the caption</summary>
> Table 4:  ImageNet-1k attentive probing accuracy of I-JEPA and CAPI at different input resolutions.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T5.1">
<tr class="ltx_tr" id="S4.T5.1.2">
<td class="ltx_td ltx_border_tt" id="S4.T5.1.2.1"></td>
<td class="ltx_td ltx_border_tt" id="S4.T5.1.2.2"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T5.1.2.3"><span class="ltx_text" id="S4.T5.1.2.3.1" style="font-size:90%;">IN1k</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.1.2.4"><span class="ltx_text" id="S4.T5.1.2.4.1" style="font-size:90%;">iNat21</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.1.2.5"><span class="ltx_text" id="S4.T5.1.2.5.1" style="font-size:90%;">SUN397</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1">
<td class="ltx_td ltx_align_left" id="S4.T5.1.1.2"><span class="ltx_text" id="S4.T5.1.1.2.1" style="font-size:90%;">Representation</span></td>
<td class="ltx_td" id="S4.T5.1.1.3"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.1">
<math alttext="k" class="ltx_Math" display="inline" id="S4.T5.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.m1.1a"><mi id="S4.T5.1.1.1.m1.1.1" mathsize="90%" xref="S4.T5.1.1.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.m1.1d">italic_k</annotation></semantics></math><span class="ltx_text" id="S4.T5.1.1.1.1" style="font-size:90%;">-NN</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.4"><span class="ltx_text" id="S4.T5.1.1.4.1" style="font-size:90%;">Linear</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.5"><span class="ltx_text" id="S4.T5.1.1.5.1" style="font-size:90%;">Linear</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.6"><span class="ltx_text" id="S4.T5.1.1.6.1" style="font-size:90%;">Linear</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.1.3.1"><span class="ltx_text" id="S4.T5.1.3.1.1" style="font-size:90%;">avg. pooling</span></td>
<td class="ltx_td ltx_border_t" id="S4.T5.1.3.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.3"><span class="ltx_text" id="S4.T5.1.3.3.1" style="font-size:90%;">57.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.4"><span class="ltx_text" id="S4.T5.1.3.4.1" style="font-size:90%;">77.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.5"><span class="ltx_text" id="S4.T5.1.3.5.1" style="font-size:90%;">49.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.6"><span class="ltx_text" id="S4.T5.1.3.6.1" style="font-size:90%;">73.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T5.1.4.1"><span class="ltx_text" id="S4.T5.1.4.1.1" style="font-size:90%;">predictor pooling</span></td>
<td class="ltx_td ltx_border_bb" id="S4.T5.1.4.2"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.4.3"><span class="ltx_text ltx_font_bold" id="S4.T5.1.4.3.1" style="font-size:90%;">73.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.4.4"><span class="ltx_text ltx_font_bold" id="S4.T5.1.4.4.1" style="font-size:90%;">81.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.4.5"><span class="ltx_text ltx_font_bold" id="S4.T5.1.4.5.1" style="font-size:90%;">69.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.4.6"><span class="ltx_text ltx_font_bold" id="S4.T5.1.4.6.1" style="font-size:90%;">77.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of two different methods for obtaining image representations from a vision transformer model: average pooling and predictor pooling.  Average pooling calculates the average of the patch tokens, while predictor pooling uses a learned predictor to generate a more informative representation. The table shows the classification accuracy achieved using these two types of representations on three different datasets: ImageNet-1k, iNaturalist 2021, and SUN397.  Both k-NN and linear classifiers were used for evaluation.
> <details>
> <summary>read the caption</summary>
> Table 5:  Classification using predictor representations, compared to the average pooling of the patch tokens.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A5.T6.6">
<tr class="ltx_tr" id="A5.T6.6.7">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A5.T6.6.7.1"><span class="ltx_text" id="A5.T6.6.7.1.1" style="font-size:90%;">Hyperparameter</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T6.6.7.2"><span class="ltx_text" id="A5.T6.6.7.2.1" style="font-size:90%;">Value</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.6.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T6.6.8.1"><span class="ltx_text" id="A5.T6.6.8.1.1" style="font-size:90%;">Batch size</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.6.8.2"><span class="ltx_text" id="A5.T6.6.8.2.1" style="font-size:90%;">16384</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.6.9">
<td class="ltx_td ltx_align_left" id="A5.T6.6.9.1"><span class="ltx_text" id="A5.T6.6.9.1.1" style="font-size:90%;">Optimizer</span></td>
<td class="ltx_td ltx_align_center" id="A5.T6.6.9.2"><span class="ltx_text" id="A5.T6.6.9.2.1" style="font-size:90%;">AdamW</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.6.10">
<td class="ltx_td ltx_align_left" id="A5.T6.6.10.1"><span class="ltx_text" id="A5.T6.6.10.1.1" style="font-size:90%;">Learning rate</span></td>
<td class="ltx_td ltx_align_center" id="A5.T6.6.10.2"><span class="ltx_text" id="A5.T6.6.10.2.1" style="font-size:90%;">1e-3</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.1.1">
<td class="ltx_td ltx_align_left" id="A5.T6.1.1.2"><span class="ltx_text" id="A5.T6.1.1.2.1" style="font-size:90%;">Teacher momentum</span></td>
<td class="ltx_td ltx_align_center" id="A5.T6.1.1.1"><math alttext="1-lr" class="ltx_Math" display="inline" id="A5.T6.1.1.1.m1.1"><semantics id="A5.T6.1.1.1.m1.1a"><mrow id="A5.T6.1.1.1.m1.1.1" xref="A5.T6.1.1.1.m1.1.1.cmml"><mn id="A5.T6.1.1.1.m1.1.1.2" mathsize="90%" xref="A5.T6.1.1.1.m1.1.1.2.cmml">1</mn><mo id="A5.T6.1.1.1.m1.1.1.1" mathsize="90%" xref="A5.T6.1.1.1.m1.1.1.1.cmml">−</mo><mrow id="A5.T6.1.1.1.m1.1.1.3" xref="A5.T6.1.1.1.m1.1.1.3.cmml"><mi id="A5.T6.1.1.1.m1.1.1.3.2" mathsize="90%" xref="A5.T6.1.1.1.m1.1.1.3.2.cmml">l</mi><mo id="A5.T6.1.1.1.m1.1.1.3.1" xref="A5.T6.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="A5.T6.1.1.1.m1.1.1.3.3" mathsize="90%" xref="A5.T6.1.1.1.m1.1.1.3.3.cmml">r</mi></mrow></mrow><annotation-xml encoding="MathML-Content" id="A5.T6.1.1.1.m1.1b"><apply id="A5.T6.1.1.1.m1.1.1.cmml" xref="A5.T6.1.1.1.m1.1.1"><minus id="A5.T6.1.1.1.m1.1.1.1.cmml" xref="A5.T6.1.1.1.m1.1.1.1"></minus><cn id="A5.T6.1.1.1.m1.1.1.2.cmml" type="integer" xref="A5.T6.1.1.1.m1.1.1.2">1</cn><apply id="A5.T6.1.1.1.m1.1.1.3.cmml" xref="A5.T6.1.1.1.m1.1.1.3"><times id="A5.T6.1.1.1.m1.1.1.3.1.cmml" xref="A5.T6.1.1.1.m1.1.1.3.1"></times><ci id="A5.T6.1.1.1.m1.1.1.3.2.cmml" xref="A5.T6.1.1.1.m1.1.1.3.2">𝑙</ci><ci id="A5.T6.1.1.1.m1.1.1.3.3.cmml" xref="A5.T6.1.1.1.m1.1.1.3.3">𝑟</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A5.T6.1.1.1.m1.1c">1-lr</annotation><annotation encoding="application/x-llamapun" id="A5.T6.1.1.1.m1.1d">1 - italic_l italic_r</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A5.T6.2.2">
<td class="ltx_td ltx_align_left" id="A5.T6.2.2.2"><span class="ltx_text" id="A5.T6.2.2.2.1" style="font-size:90%;">Clustering lr</span></td>
<td class="ltx_td ltx_align_center" id="A5.T6.2.2.1"><math alttext="\frac{1}{2}lr" class="ltx_Math" display="inline" id="A5.T6.2.2.1.m1.1"><semantics id="A5.T6.2.2.1.m1.1a"><mrow id="A5.T6.2.2.1.m1.1.1" xref="A5.T6.2.2.1.m1.1.1.cmml"><mfrac id="A5.T6.2.2.1.m1.1.1.2" xref="A5.T6.2.2.1.m1.1.1.2.cmml"><mn id="A5.T6.2.2.1.m1.1.1.2.2" mathsize="90%" xref="A5.T6.2.2.1.m1.1.1.2.2.cmml">1</mn><mn id="A5.T6.2.2.1.m1.1.1.2.3" mathsize="90%" xref="A5.T6.2.2.1.m1.1.1.2.3.cmml">2</mn></mfrac><mo id="A5.T6.2.2.1.m1.1.1.1" xref="A5.T6.2.2.1.m1.1.1.1.cmml">⁢</mo><mi id="A5.T6.2.2.1.m1.1.1.3" mathsize="90%" xref="A5.T6.2.2.1.m1.1.1.3.cmml">l</mi><mo id="A5.T6.2.2.1.m1.1.1.1a" xref="A5.T6.2.2.1.m1.1.1.1.cmml">⁢</mo><mi id="A5.T6.2.2.1.m1.1.1.4" mathsize="90%" xref="A5.T6.2.2.1.m1.1.1.4.cmml">r</mi></mrow><annotation-xml encoding="MathML-Content" id="A5.T6.2.2.1.m1.1b"><apply id="A5.T6.2.2.1.m1.1.1.cmml" xref="A5.T6.2.2.1.m1.1.1"><times id="A5.T6.2.2.1.m1.1.1.1.cmml" xref="A5.T6.2.2.1.m1.1.1.1"></times><apply id="A5.T6.2.2.1.m1.1.1.2.cmml" xref="A5.T6.2.2.1.m1.1.1.2"><divide id="A5.T6.2.2.1.m1.1.1.2.1.cmml" xref="A5.T6.2.2.1.m1.1.1.2"></divide><cn id="A5.T6.2.2.1.m1.1.1.2.2.cmml" type="integer" xref="A5.T6.2.2.1.m1.1.1.2.2">1</cn><cn id="A5.T6.2.2.1.m1.1.1.2.3.cmml" type="integer" xref="A5.T6.2.2.1.m1.1.1.2.3">2</cn></apply><ci id="A5.T6.2.2.1.m1.1.1.3.cmml" xref="A5.T6.2.2.1.m1.1.1.3">𝑙</ci><ci id="A5.T6.2.2.1.m1.1.1.4.cmml" xref="A5.T6.2.2.1.m1.1.1.4">𝑟</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A5.T6.2.2.1.m1.1c">\frac{1}{2}lr</annotation><annotation encoding="application/x-llamapun" id="A5.T6.2.2.1.m1.1d">divide start_ARG 1 end_ARG start_ARG 2 end_ARG italic_l italic_r</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A5.T6.6.11">
<td class="ltx_td ltx_align_left" id="A5.T6.6.11.1"><span class="ltx_text" id="A5.T6.6.11.1.1" style="font-size:90%;">lr schedule</span></td>
<td class="ltx_td ltx_align_center" id="A5.T6.6.11.2"><span class="ltx_text" id="A5.T6.6.11.2.1" style="font-size:90%;">linear warmup + trunc. cosine</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.6.12">
<td class="ltx_td ltx_align_left" id="A5.T6.6.12.1"><span class="ltx_text" id="A5.T6.6.12.1.1" style="font-size:90%;">Warmup length</span></td>
<td class="ltx_td ltx_align_center" id="A5.T6.6.12.2"><span class="ltx_text" id="A5.T6.6.12.2.1" style="font-size:90%;">10%</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.6.13">
<td class="ltx_td ltx_align_left" id="A5.T6.6.13.1"><span class="ltx_text" id="A5.T6.6.13.1.1" style="font-size:90%;">cosine truncation</span></td>
<td class="ltx_td ltx_align_center" id="A5.T6.6.13.2"><span class="ltx_text" id="A5.T6.6.13.2.1" style="font-size:90%;">20%</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.6.14">
<td class="ltx_td ltx_align_left" id="A5.T6.6.14.1"><span class="ltx_text" id="A5.T6.6.14.1.1" style="font-size:90%;">Weight decay</span></td>
<td class="ltx_td ltx_align_center" id="A5.T6.6.14.2"><span class="ltx_text" id="A5.T6.6.14.2.1" style="font-size:90%;">0.1</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.3.3">
<td class="ltx_td ltx_align_left" id="A5.T6.3.3.1">
<span class="ltx_text" id="A5.T6.3.3.1.1" style="font-size:90%;">AdamW </span><math alttext="\beta" class="ltx_Math" display="inline" id="A5.T6.3.3.1.m1.1"><semantics id="A5.T6.3.3.1.m1.1a"><mi id="A5.T6.3.3.1.m1.1.1" mathsize="90%" xref="A5.T6.3.3.1.m1.1.1.cmml">β</mi><annotation-xml encoding="MathML-Content" id="A5.T6.3.3.1.m1.1b"><ci id="A5.T6.3.3.1.m1.1.1.cmml" xref="A5.T6.3.3.1.m1.1.1">𝛽</ci></annotation-xml><annotation encoding="application/x-tex" id="A5.T6.3.3.1.m1.1c">\beta</annotation><annotation encoding="application/x-llamapun" id="A5.T6.3.3.1.m1.1d">italic_β</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A5.T6.3.3.2"><span class="ltx_text" id="A5.T6.3.3.2.1" style="font-size:90%;">(0.9, 0.95)</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.6.15">
<td class="ltx_td ltx_align_left" id="A5.T6.6.15.1"><span class="ltx_text" id="A5.T6.6.15.1.1" style="font-size:90%;">Number of prototypes</span></td>
<td class="ltx_td ltx_align_center" id="A5.T6.6.15.2"><span class="ltx_text" id="A5.T6.6.15.2.1" style="font-size:90%;">16384</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.6.16">
<td class="ltx_td ltx_align_left" id="A5.T6.6.16.1"><span class="ltx_text" id="A5.T6.6.16.1.1" style="font-size:90%;">Student temperature</span></td>
<td class="ltx_td ltx_align_center" id="A5.T6.6.16.2"><span class="ltx_text" id="A5.T6.6.16.2.1" style="font-size:90%;">0.12</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.6.17">
<td class="ltx_td ltx_align_left" id="A5.T6.6.17.1"><span class="ltx_text" id="A5.T6.6.17.1.1" style="font-size:90%;">Teacher temperature</span></td>
<td class="ltx_td ltx_align_center" id="A5.T6.6.17.2"><span class="ltx_text" id="A5.T6.6.17.2.1" style="font-size:90%;">0.06</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.6.18">
<td class="ltx_td ltx_align_left" id="A5.T6.6.18.1"><span class="ltx_text" id="A5.T6.6.18.1.1" style="font-size:90%;">Num SK iter</span></td>
<td class="ltx_td ltx_align_center" id="A5.T6.6.18.2"><span class="ltx_text" id="A5.T6.6.18.2.1" style="font-size:90%;">3</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.6.19">
<td class="ltx_td ltx_align_left" id="A5.T6.6.19.1"><span class="ltx_text" id="A5.T6.6.19.1.1" style="font-size:90%;">Stochastic depth</span></td>
<td class="ltx_td ltx_align_center" id="A5.T6.6.19.2"><span class="ltx_text" id="A5.T6.6.19.2.1" style="font-size:90%;">0.2</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.6.20">
<td class="ltx_td ltx_align_left" id="A5.T6.6.20.1"><span class="ltx_text" id="A5.T6.6.20.1.1" style="font-size:90%;">Weight init</span></td>
<td class="ltx_td ltx_align_center" id="A5.T6.6.20.2"><span class="ltx_text" id="A5.T6.6.20.2.1" style="font-size:90%;">xavier_uniform</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.6.21">
<td class="ltx_td ltx_align_left" id="A5.T6.6.21.1"><span class="ltx_text" id="A5.T6.6.21.1.1" style="font-size:90%;">Norm layer</span></td>
<td class="ltx_td ltx_align_center" id="A5.T6.6.21.2"><span class="ltx_text" id="A5.T6.6.21.2.1" style="font-size:90%;">RMSnorm</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.4.4">
<td class="ltx_td ltx_align_left" id="A5.T6.4.4.1">
<span class="ltx_text" id="A5.T6.4.4.1.1" style="font-size:90%;">Norm </span><math alttext="\varepsilon" class="ltx_Math" display="inline" id="A5.T6.4.4.1.m1.1"><semantics id="A5.T6.4.4.1.m1.1a"><mi id="A5.T6.4.4.1.m1.1.1" mathsize="90%" xref="A5.T6.4.4.1.m1.1.1.cmml">ε</mi><annotation-xml encoding="MathML-Content" id="A5.T6.4.4.1.m1.1b"><ci id="A5.T6.4.4.1.m1.1.1.cmml" xref="A5.T6.4.4.1.m1.1.1">𝜀</ci></annotation-xml><annotation encoding="application/x-tex" id="A5.T6.4.4.1.m1.1c">\varepsilon</annotation><annotation encoding="application/x-llamapun" id="A5.T6.4.4.1.m1.1d">italic_ε</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A5.T6.4.4.2"><span class="ltx_text" id="A5.T6.4.4.2.1" style="font-size:90%;">1e-5</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.5.5">
<td class="ltx_td ltx_align_left" id="A5.T6.5.5.2"><span class="ltx_text" id="A5.T6.5.5.2.1" style="font-size:90%;">Patch embed lr</span></td>
<td class="ltx_td ltx_align_center" id="A5.T6.5.5.1">
<math alttext="0.2\cdot{}" class="ltx_math_unparsed" display="inline" id="A5.T6.5.5.1.m1.1"><semantics id="A5.T6.5.5.1.m1.1a"><mrow id="A5.T6.5.5.1.m1.1b"><mn id="A5.T6.5.5.1.m1.1.1" mathsize="90%">0.2</mn><mo id="A5.T6.5.5.1.m1.1.2" lspace="0.222em" mathsize="90%">⋅</mo></mrow><annotation encoding="application/x-tex" id="A5.T6.5.5.1.m1.1c">0.2\cdot{}</annotation><annotation encoding="application/x-llamapun" id="A5.T6.5.5.1.m1.1d">0.2 ⋅</annotation></semantics></math><span class="ltx_text" id="A5.T6.5.5.1.1" style="font-size:90%;">lr</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.6.6">
<td class="ltx_td ltx_align_left" id="A5.T6.6.6.2"><span class="ltx_text" id="A5.T6.6.6.2.1" style="font-size:90%;">Norm layer wd</span></td>
<td class="ltx_td ltx_align_center" id="A5.T6.6.6.1">
<math alttext="0.1\cdot{}" class="ltx_math_unparsed" display="inline" id="A5.T6.6.6.1.m1.1"><semantics id="A5.T6.6.6.1.m1.1a"><mrow id="A5.T6.6.6.1.m1.1b"><mn id="A5.T6.6.6.1.m1.1.1" mathsize="90%">0.1</mn><mo id="A5.T6.6.6.1.m1.1.2" lspace="0.222em" mathsize="90%">⋅</mo></mrow><annotation encoding="application/x-tex" id="A5.T6.6.6.1.m1.1c">0.1\cdot{}</annotation><annotation encoding="application/x-llamapun" id="A5.T6.6.6.1.m1.1d">0.1 ⋅</annotation></semantics></math><span class="ltx_text" id="A5.T6.6.6.1.1" style="font-size:90%;">wd</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.6.22">
<td class="ltx_td ltx_align_left" id="A5.T6.6.22.1"><span class="ltx_text" id="A5.T6.6.22.1.1" style="font-size:90%;">Image size</span></td>
<td class="ltx_td ltx_align_center" id="A5.T6.6.22.2"><span class="ltx_text" id="A5.T6.6.22.2.1" style="font-size:90%;">224</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.6.23">
<td class="ltx_td ltx_align_left" id="A5.T6.6.23.1"><span class="ltx_text" id="A5.T6.6.23.1.1" style="font-size:90%;">Augmentations</span></td>
<td class="ltx_td ltx_align_center" id="A5.T6.6.23.2"><span class="ltx_text" id="A5.T6.6.23.2.1" style="font-size:90%;">RRCrop, HFlip</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.6.24">
<td class="ltx_td ltx_align_left" id="A5.T6.6.24.1"><span class="ltx_text" id="A5.T6.6.24.1.1" style="font-size:90%;">Training dtype</span></td>
<td class="ltx_td ltx_align_center" id="A5.T6.6.24.2"><span class="ltx_text" id="A5.T6.6.24.2.1" style="font-size:90%;">bf16</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.6.25">
<td class="ltx_td ltx_align_left" id="A5.T6.6.25.1"><span class="ltx_text" id="A5.T6.6.25.1.1" style="font-size:90%;">Parallelism</span></td>
<td class="ltx_td ltx_align_center" id="A5.T6.6.25.2"><span class="ltx_text" id="A5.T6.6.25.2.1" style="font-size:90%;">FSDP</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.6.26">
<td class="ltx_td ltx_align_left" id="A5.T6.6.26.1"><span class="ltx_text" id="A5.T6.6.26.1.1" style="font-size:90%;">Pred. / im</span></td>
<td class="ltx_td ltx_align_center" id="A5.T6.6.26.2"><span class="ltx_text" id="A5.T6.6.26.2.1" style="font-size:90%;">7</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.6.27">
<td class="ltx_td ltx_align_left" id="A5.T6.6.27.1"><span class="ltx_text" id="A5.T6.6.27.1.1" style="font-size:90%;">Layerscale</span></td>
<td class="ltx_td ltx_align_center" id="A5.T6.6.27.2"><span class="ltx_text" id="A5.T6.6.27.2.1" style="font-size:90%;">No</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.6.28">
<td class="ltx_td ltx_align_left" id="A5.T6.6.28.1"><span class="ltx_text" id="A5.T6.6.28.1.1" style="font-size:90%;">Biases</span></td>
<td class="ltx_td ltx_align_center" id="A5.T6.6.28.2"><span class="ltx_text" id="A5.T6.6.28.2.1" style="font-size:90%;">No</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.6.29">
<td class="ltx_td ltx_align_left" id="A5.T6.6.29.1"><span class="ltx_text" id="A5.T6.6.29.1.1" style="font-size:90%;">Rope frequencies</span></td>
<td class="ltx_td ltx_align_center" id="A5.T6.6.29.2"><span class="ltx_text" id="A5.T6.6.29.2.1" style="font-size:90%;">logspace(7e-4, 7), axial</span></td>
</tr>
<tr class="ltx_tr" id="A5.T6.6.30">
<td class="ltx_td ltx_align_left" id="A5.T6.6.30.1"><span class="ltx_text" id="A5.T6.6.30.1.1" style="font-size:90%;">Masking type</span></td>
<td class="ltx_td ltx_align_center" id="A5.T6.6.30.2">
<span class="ltx_text" id="A5.T6.6.30.2.1" style="font-size:90%;">inverse block</span><span class="ltx_text ltx_font_typewriter" id="A5.T6.6.30.2.2" style="font-size:90%;">+roll</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.6.31">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A5.T6.6.31.1"><span class="ltx_text" id="A5.T6.6.31.1.1" style="font-size:90%;">Masking ratio</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T6.6.31.2"><span class="ltx_text" id="A5.T6.6.31.2.1" style="font-size:90%;">65%</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used for pre-training the CAPI model.  It lists various settings, including batch size, optimizer, learning rate, weight decay, number of prototypes, temperature parameters, and more, providing a comprehensive overview of the training configuration.
> <details>
> <summary>read the caption</summary>
> Table 6:  CAPI pretraining recipe
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A6.T7.2">
<tr class="ltx_tr" id="A6.T7.2.1">
<td class="ltx_td ltx_border_tt" id="A6.T7.2.1.1"></td>
<td class="ltx_td ltx_border_tt" id="A6.T7.2.1.2"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A6.T7.2.1.3"><span class="ltx_text" id="A6.T7.2.1.3.1" style="font-size:90%;">knn</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A6.T7.2.1.4"><span class="ltx_text" id="A6.T7.2.1.4.1" style="font-size:90%;">logreg</span></td>
</tr>
<tr class="ltx_tr" id="A6.T7.2.2">
<td class="ltx_td ltx_align_left" id="A6.T7.2.2.1"><span class="ltx_text" id="A6.T7.2.2.1.1" style="font-size:90%;">model</span></td>
<td class="ltx_td ltx_align_left" id="A6.T7.2.2.2"><span class="ltx_text" id="A6.T7.2.2.2.1" style="font-size:90%;">standardization</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T7.2.2.3"><span class="ltx_text" id="A6.T7.2.2.3.1" style="font-size:90%;">ADE</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T7.2.2.4"><span class="ltx_text" id="A6.T7.2.2.4.1" style="font-size:90%;">Cityscapes</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T7.2.2.5"><span class="ltx_text" id="A6.T7.2.2.5.1" style="font-size:90%;">VOC2012</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T7.2.2.6"><span class="ltx_text" id="A6.T7.2.2.6.1" style="font-size:90%;">ADE</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T7.2.2.7"><span class="ltx_text" id="A6.T7.2.2.7.1" style="font-size:90%;">Cityscapes</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T7.2.2.8"><span class="ltx_text" id="A6.T7.2.2.8.1" style="font-size:90%;">VOC2012</span></td>
</tr>
<tr class="ltx_tr" id="A6.T7.2.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T7.2.3.1"><span class="ltx_text" id="A6.T7.2.3.1.1" style="font-size:90%;">CAPI</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T7.2.3.2"><span class="ltx_text" id="A6.T7.2.3.2.1" style="font-size:90%;">False</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T7.2.3.3" style="background-color:#0E8245;">
<span class="ltx_text" id="A6.T7.2.3.3.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.3.3.2" style="font-size:90%;color:#F1F1F1;"> 32.5</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T7.2.3.4" style="background-color:#3FAA59;">
<span class="ltx_text" id="A6.T7.2.3.4.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.3.4.2" style="font-size:90%;color:#F1F1F1;"> 39.2</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T7.2.3.5" style="background-color:#016A38;">
<span class="ltx_text" id="A6.T7.2.3.5.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.3.5.2" style="font-size:90%;color:#F1F1F1;"> 64.9</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T7.2.3.6" style="background-color:#097940;">
<span class="ltx_text" id="A6.T7.2.3.6.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.3.6.2" style="font-size:90%;color:#F1F1F1;"> 37.9</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T7.2.3.7" style="background-color:#249D53;">
<span class="ltx_text" id="A6.T7.2.3.7.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.3.7.2" style="font-size:90%;color:#F1F1F1;"> 44.7</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T7.2.3.8" style="background-color:#016A38;">
<span class="ltx_text" id="A6.T7.2.3.8.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.3.8.2" style="font-size:90%;color:#F1F1F1;"> 73.2</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T7.2.4">
<td class="ltx_td ltx_align_left" id="A6.T7.2.4.1"><span class="ltx_text" id="A6.T7.2.4.1.1" style="font-size:90%;">CAPI</span></td>
<td class="ltx_td ltx_align_left" id="A6.T7.2.4.2"><span class="ltx_text" id="A6.T7.2.4.2.1" style="font-size:90%;">True</span></td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.4.3" style="background-color:#097940;">
<span class="ltx_text" id="A6.T7.2.4.3.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.4.3.2" style="font-size:90%;color:#F1F1F1;"> 33.0</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.4.4" style="background-color:#3FAA59;">
<span class="ltx_text" id="A6.T7.2.4.4.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.4.4.2" style="font-size:90%;color:#F1F1F1;"> 39.2</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.4.5" style="background-color:#006837;">
<span class="ltx_text" id="A6.T7.2.4.5.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.4.5.2" style="font-size:90%;color:#F1F1F1;"> 65.2</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.4.6" style="background-color:#0A7B41;">
<span class="ltx_text" id="A6.T7.2.4.6.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.4.6.2" style="font-size:90%;color:#F1F1F1;"> 37.7</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.4.7" style="background-color:#33A456;">
<span class="ltx_text" id="A6.T7.2.4.7.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.4.7.2" style="font-size:90%;color:#F1F1F1;"> 44.3</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.4.8" style="background-color:#006837;">
<span class="ltx_text" id="A6.T7.2.4.8.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.4.8.2" style="font-size:90%;color:#F1F1F1;"> 73.3</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T7.2.5">
<td class="ltx_td ltx_align_left" id="A6.T7.2.5.1"><span class="ltx_text" id="A6.T7.2.5.1.1" style="font-size:90%;">aim 600M</span></td>
<td class="ltx_td ltx_align_left" id="A6.T7.2.5.2"><span class="ltx_text" id="A6.T7.2.5.2.1" style="font-size:90%;">False</span></td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.5.3" style="background-color:#F88C51;">
<span class="ltx_text" id="A6.T7.2.5.3.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.5.3.2" style="font-size:90%;color:#F1F1F1;"> 14.3</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.5.4" style="background-color:#F99355;">
<span class="ltx_text" id="A6.T7.2.5.4.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.5.4.2" style="font-size:90%;"> 27.8</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.5.5" style="background-color:#FEEDA1;">
<span class="ltx_text" id="A6.T7.2.5.5.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.5.5.2" style="font-size:90%;"> 38.5</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.5.6" style="background-color:#A50026;">
<span class="ltx_text" id="A6.T7.2.5.6.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.5.6.2" style="font-size:90%;color:#F1F1F1;"> 7.1</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.5.7" style="background-color:#A50026;">
<span class="ltx_text" id="A6.T7.2.5.7.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.5.7.2" style="font-size:90%;color:#F1F1F1;"> 28.3</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.5.8" style="background-color:#A50026;">
<span class="ltx_text" id="A6.T7.2.5.8.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.5.8.2" style="font-size:90%;color:#F1F1F1;"> 61.3</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T7.2.6">
<td class="ltx_td ltx_align_left" id="A6.T7.2.6.1"><span class="ltx_text" id="A6.T7.2.6.1.1" style="font-size:90%;">aim 600M</span></td>
<td class="ltx_td ltx_align_left" id="A6.T7.2.6.2"><span class="ltx_text" id="A6.T7.2.6.2.1" style="font-size:90%;">True</span></td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.6.3" style="background-color:#000000;">
<span class="ltx_text" id="A6.T7.2.6.3.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.6.3.2" style="font-size:90%;color:#F1F1F1;"> nan</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.6.4" style="background-color:#FFFAB6;">
<span class="ltx_text" id="A6.T7.2.6.4.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.6.4.2" style="font-size:90%;"> 32.1</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.6.5" style="background-color:#1B9950;">
<span class="ltx_text" id="A6.T7.2.6.5.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.6.5.2" style="font-size:90%;color:#F1F1F1;"> 60.2</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.6.6" style="background-color:#7DC765;">
<span class="ltx_text" id="A6.T7.2.6.6.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.6.6.2" style="font-size:90%;"> 31.5</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.6.7" style="background-color:#F2FAAE;">
<span class="ltx_text" id="A6.T7.2.6.7.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.6.7.2" style="font-size:90%;"> 38.2</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.6.8" style="background-color:#FFF8B4;">
<span class="ltx_text" id="A6.T7.2.6.8.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.6.8.2" style="font-size:90%;"> 67.0</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T7.2.7">
<td class="ltx_td ltx_align_left" id="A6.T7.2.7.1"><span class="ltx_text" id="A6.T7.2.7.1.1" style="font-size:90%;">dinov2 vitg14+reg</span></td>
<td class="ltx_td ltx_align_left" id="A6.T7.2.7.2"><span class="ltx_text" id="A6.T7.2.7.2.1" style="font-size:90%;">False</span></td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.7.3" style="background-color:#016A38;">
<span class="ltx_text" id="A6.T7.2.7.3.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.7.3.2" style="font-size:90%;color:#F1F1F1;"> 33.8</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.7.4" style="background-color:#006837;">
<span class="ltx_text" id="A6.T7.2.7.4.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.7.4.2" style="font-size:90%;color:#F1F1F1;"> 42.0</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.7.5" style="background-color:#0B7D42;">
<span class="ltx_text" id="A6.T7.2.7.5.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.7.5.2" style="font-size:90%;color:#F1F1F1;"> 63.1</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.7.6" style="background-color:#006837;">
<span class="ltx_text" id="A6.T7.2.7.6.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.7.6.2" style="font-size:90%;color:#F1F1F1;"> 38.9</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.7.7" style="background-color:#006837;">
<span class="ltx_text" id="A6.T7.2.7.7.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.7.7.2" style="font-size:90%;color:#F1F1F1;"> 46.8</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.7.8" style="background-color:#08773F;">
<span class="ltx_text" id="A6.T7.2.7.8.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.7.8.2" style="font-size:90%;color:#F1F1F1;"> 72.9</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T7.2.8">
<td class="ltx_td ltx_align_left" id="A6.T7.2.8.1"><span class="ltx_text" id="A6.T7.2.8.1.1" style="font-size:90%;">dinov2 vitg14+reg</span></td>
<td class="ltx_td ltx_align_left" id="A6.T7.2.8.2"><span class="ltx_text" id="A6.T7.2.8.2.1" style="font-size:90%;">True</span></td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.8.3" style="background-color:#006837;">
<span class="ltx_text" id="A6.T7.2.8.3.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.8.3.2" style="font-size:90%;color:#F1F1F1;"> 34.0</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.8.4" style="background-color:#006837;">
<span class="ltx_text" id="A6.T7.2.8.4.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.8.4.2" style="font-size:90%;color:#F1F1F1;"> 42.0</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.8.5" style="background-color:#0B7D42;">
<span class="ltx_text" id="A6.T7.2.8.5.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.8.5.2" style="font-size:90%;color:#F1F1F1;"> 63.0</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.8.6" style="background-color:#006837;">
<span class="ltx_text" id="A6.T7.2.8.6.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.8.6.2" style="font-size:90%;color:#F1F1F1;"> 39.0</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.8.7" style="background-color:#006837;">
<span class="ltx_text" id="A6.T7.2.8.7.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.8.7.2" style="font-size:90%;color:#F1F1F1;"> 46.8</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.8.8" style="background-color:#097940;">
<span class="ltx_text" id="A6.T7.2.8.8.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.8.8.2" style="font-size:90%;color:#F1F1F1;"> 72.8</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T7.2.9">
<td class="ltx_td ltx_align_left" id="A6.T7.2.9.1"><span class="ltx_text" id="A6.T7.2.9.1.1" style="font-size:90%;">ijepa vith14 in1k</span></td>
<td class="ltx_td ltx_align_left" id="A6.T7.2.9.2"><span class="ltx_text" id="A6.T7.2.9.2.1" style="font-size:90%;">False</span></td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.9.3" style="background-color:#FFF6B0;">
<span class="ltx_text" id="A6.T7.2.9.3.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.9.3.2" style="font-size:90%;"> 20.1</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.9.4" style="background-color:#E75337;">
<span class="ltx_text" id="A6.T7.2.9.4.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.9.4.2" style="font-size:90%;color:#F1F1F1;"> 25.9</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.9.5" style="background-color:#48AE5C;">
<span class="ltx_text" id="A6.T7.2.9.5.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.9.5.2" style="font-size:90%;color:#F1F1F1;"> 57.4</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.9.6" style="background-color:#E5F49B;">
<span class="ltx_text" id="A6.T7.2.9.6.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.9.6.2" style="font-size:90%;"> 25.2</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.9.7" style="background-color:#FBA35C;">
<span class="ltx_text" id="A6.T7.2.9.7.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.9.7.2" style="font-size:90%;"> 33.5</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.9.8" style="background-color:#E44C34;">
<span class="ltx_text" id="A6.T7.2.9.8.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.9.8.2" style="font-size:90%;color:#F1F1F1;"> 63.0</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T7.2.10">
<td class="ltx_td ltx_align_left" id="A6.T7.2.10.1"><span class="ltx_text" id="A6.T7.2.10.1.1" style="font-size:90%;">ijepa vith14 in1k</span></td>
<td class="ltx_td ltx_align_left" id="A6.T7.2.10.2"><span class="ltx_text" id="A6.T7.2.10.2.1" style="font-size:90%;">True</span></td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.10.3" style="background-color:#FFFEBE;">
<span class="ltx_text" id="A6.T7.2.10.3.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.10.3.2" style="font-size:90%;"> 20.8</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.10.4" style="background-color:#EF633F;">
<span class="ltx_text" id="A6.T7.2.10.4.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.10.4.2" style="font-size:90%;color:#F1F1F1;"> 26.4</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.10.5" style="background-color:#54B45F;">
<span class="ltx_text" id="A6.T7.2.10.5.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.10.5.2" style="font-size:90%;color:#F1F1F1;"> 56.7</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.10.6" style="background-color:#DFF293;">
<span class="ltx_text" id="A6.T7.2.10.6.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.10.6.2" style="font-size:90%;"> 25.7</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.10.7" style="background-color:#FDC171;">
<span class="ltx_text" id="A6.T7.2.10.7.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.10.7.2" style="font-size:90%;"> 34.5</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.10.8" style="background-color:#F26841;">
<span class="ltx_text" id="A6.T7.2.10.8.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.10.8.2" style="font-size:90%;color:#F1F1F1;"> 63.6</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T7.2.11">
<td class="ltx_td ltx_align_left" id="A6.T7.2.11.1"><span class="ltx_text" id="A6.T7.2.11.1.1" style="font-size:90%;">ijepa vith14 in22k</span></td>
<td class="ltx_td ltx_align_left" id="A6.T7.2.11.2"><span class="ltx_text" id="A6.T7.2.11.2.1" style="font-size:90%;">False</span></td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.11.3" style="background-color:#FED884;">
<span class="ltx_text" id="A6.T7.2.11.3.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.11.3.2" style="font-size:90%;"> 17.9</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.11.4" style="background-color:#A50026;">
<span class="ltx_text" id="A6.T7.2.11.4.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.11.4.2" style="font-size:90%;color:#F1F1F1;"> 22.9</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.11.5" style="background-color:#5DB961;">
<span class="ltx_text" id="A6.T7.2.11.5.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.11.5.2" style="font-size:90%;color:#F1F1F1;"> 56.2</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.11.6" style="background-color:#F2FAAE;">
<span class="ltx_text" id="A6.T7.2.11.6.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.11.6.2" style="font-size:90%;"> 24.1</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.11.7" style="background-color:#F88950;">
<span class="ltx_text" id="A6.T7.2.11.7.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.11.7.2" style="font-size:90%;color:#F1F1F1;"> 32.8</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.11.8" style="background-color:#F26841;">
<span class="ltx_text" id="A6.T7.2.11.8.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.11.8.2" style="font-size:90%;color:#F1F1F1;"> 63.6</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T7.2.12">
<td class="ltx_td ltx_align_left" id="A6.T7.2.12.1"><span class="ltx_text" id="A6.T7.2.12.1.1" style="font-size:90%;">ijepa vith14 in22k</span></td>
<td class="ltx_td ltx_align_left" id="A6.T7.2.12.2"><span class="ltx_text" id="A6.T7.2.12.2.1" style="font-size:90%;">True</span></td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.12.3" style="background-color:#FEE999;">
<span class="ltx_text" id="A6.T7.2.12.3.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.12.3.2" style="font-size:90%;"> 18.9</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.12.4" style="background-color:#AD0826;">
<span class="ltx_text" id="A6.T7.2.12.4.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.12.4.2" style="font-size:90%;color:#F1F1F1;"> 23.2</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.12.5" style="background-color:#6EC064;">
<span class="ltx_text" id="A6.T7.2.12.5.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.12.5.2" style="font-size:90%;"> 55.0</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.12.6" style="background-color:#D7EE8A;">
<span class="ltx_text" id="A6.T7.2.12.6.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.12.6.2" style="font-size:90%;"> 26.4</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.12.7" style="background-color:#FDB768;">
<span class="ltx_text" id="A6.T7.2.12.7.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.12.7.2" style="font-size:90%;"> 34.2</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.12.8" style="background-color:#F88950;">
<span class="ltx_text" id="A6.T7.2.12.8.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.12.8.2" style="font-size:90%;color:#F1F1F1;"> 64.2</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T7.2.13">
<td class="ltx_td ltx_align_left" id="A6.T7.2.13.1"><span class="ltx_text" id="A6.T7.2.13.1.1" style="font-size:90%;">mae vitl16</span></td>
<td class="ltx_td ltx_align_left" id="A6.T7.2.13.2"><span class="ltx_text" id="A6.T7.2.13.2.1" style="font-size:90%;">False</span></td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.13.3" style="background-color:#A50026;">
<span class="ltx_text" id="A6.T7.2.13.3.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.13.3.2" style="font-size:90%;color:#F1F1F1;"> 7.8</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.13.4" style="background-color:#DE402E;">
<span class="ltx_text" id="A6.T7.2.13.4.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.13.4.2" style="font-size:90%;color:#F1F1F1;"> 25.3</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.13.5" style="background-color:#A50026;">
<span class="ltx_text" id="A6.T7.2.13.5.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.13.5.2" style="font-size:90%;color:#F1F1F1;"> 17.3</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.13.6" style="background-color:#C7E77F;">
<span class="ltx_text" id="A6.T7.2.13.6.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.13.6.2" style="font-size:90%;"> 27.4</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.13.7" style="background-color:#EEF8A8;">
<span class="ltx_text" id="A6.T7.2.13.7.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.13.7.2" style="font-size:90%;"> 38.4</span>
</td>
<td class="ltx_td ltx_align_center" id="A6.T7.2.13.8" style="background-color:#AF0926;">
<span class="ltx_text" id="A6.T7.2.13.8.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.13.8.2" style="font-size:90%;color:#F1F1F1;"> 61.5</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T7.2.14">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A6.T7.2.14.1"><span class="ltx_text" id="A6.T7.2.14.1.1" style="font-size:90%;">mae vitl16</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A6.T7.2.14.2"><span class="ltx_text" id="A6.T7.2.14.2.1" style="font-size:90%;">True</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T7.2.14.3" style="background-color:#F7FCB4;">
<span class="ltx_text" id="A6.T7.2.14.3.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.14.3.2" style="font-size:90%;"> 21.5</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T7.2.14.4" style="background-color:#F8FCB6;">
<span class="ltx_text" id="A6.T7.2.14.4.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.14.4.2" style="font-size:90%;"> 32.8</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T7.2.14.5" style="background-color:#7FC866;">
<span class="ltx_text" id="A6.T7.2.14.5.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.14.5.2" style="font-size:90%;"> 53.7</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T7.2.14.6" style="background-color:#C7E77F;">
<span class="ltx_text" id="A6.T7.2.14.6.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.14.6.2" style="font-size:90%;"> 27.4</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T7.2.14.7" style="background-color:#EBF7A3;">
<span class="ltx_text" id="A6.T7.2.14.7.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.14.7.2" style="font-size:90%;"> 38.5</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T7.2.14.8" style="background-color:#AD0826;">
<span class="ltx_text" id="A6.T7.2.14.8.1" style="font-size:90%;"></span><span class="ltx_text" id="A6.T7.2.14.8.2" style="font-size:90%;color:#F1F1F1;"> 61.5</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of various masked image modeling methods on three semantic segmentation datasets: ADE20K, Pascal VOC 2012, and Cityscapes.  The comparison is made with and without feature standardization (a preprocessing step to normalize the features).  The table shows the mean Intersection over Union (mIoU) scores obtained using both k-NN and linear classifiers, providing a comprehensive assessment of how standardization affects performance across different models and datasets.
> <details>
> <summary>read the caption</summary>
> Table 7: Comparison of segmentation results with and without standardization
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A8.T8.4.1">
<tr class="ltx_tr" id="A8.T8.4.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A8.T8.4.1.1.1">
<span class="ltx_text" id="A8.T8.4.1.1.1.1"></span><span class="ltx_text" id="A8.T8.4.1.1.1.2" style="font-size:90%;"> </span><span class="ltx_text" id="A8.T8.4.1.1.1.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="A8.T8.4.1.1.1.3.1">
<span class="ltx_tr" id="A8.T8.4.1.1.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T8.4.1.1.1.3.1.1.1">uid</span></span>
</span></span><span class="ltx_text" id="A8.T8.4.1.1.1.4"></span><span class="ltx_text" id="A8.T8.4.1.1.1.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A8.T8.4.1.1.2">
<span class="ltx_text" id="A8.T8.4.1.1.2.1"></span><span class="ltx_text" id="A8.T8.4.1.1.2.2" style="font-size:90%;"> </span><span class="ltx_text" id="A8.T8.4.1.1.2.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="A8.T8.4.1.1.2.3.1">
<span class="ltx_tr" id="A8.T8.4.1.1.2.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T8.4.1.1.2.3.1.1.1">dataset</span></span>
</span></span><span class="ltx_text" id="A8.T8.4.1.1.2.4"></span><span class="ltx_text" id="A8.T8.4.1.1.2.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A8.T8.4.1.1.3">
<span class="ltx_text" id="A8.T8.4.1.1.3.1"></span><span class="ltx_text" id="A8.T8.4.1.1.3.2" style="font-size:90%;"> </span><span class="ltx_text" id="A8.T8.4.1.1.3.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="A8.T8.4.1.1.3.3.1">
<span class="ltx_tr" id="A8.T8.4.1.1.3.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T8.4.1.1.3.3.1.1.1">#iter</span></span>
</span></span><span class="ltx_text" id="A8.T8.4.1.1.3.4"></span><span class="ltx_text" id="A8.T8.4.1.1.3.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A8.T8.4.1.1.4">
<span class="ltx_text" id="A8.T8.4.1.1.4.1"></span><span class="ltx_text" id="A8.T8.4.1.1.4.2" style="font-size:90%;"> </span><span class="ltx_text" id="A8.T8.4.1.1.4.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="A8.T8.4.1.1.4.3.1">
<span class="ltx_tr" id="A8.T8.4.1.1.4.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T8.4.1.1.4.3.1.1.1">patch</span></span>
<span class="ltx_tr" id="A8.T8.4.1.1.4.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T8.4.1.1.4.3.1.2.1">size</span></span>
</span></span><span class="ltx_text" id="A8.T8.4.1.1.4.4"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A8.T8.4.1.1.5">
<span class="ltx_text" id="A8.T8.4.1.1.5.1"></span><span class="ltx_text" id="A8.T8.4.1.1.5.2" style="font-size:90%;"> </span><span class="ltx_text" id="A8.T8.4.1.1.5.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="A8.T8.4.1.1.5.3.1">
<span class="ltx_tr" id="A8.T8.4.1.1.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T8.4.1.1.5.3.1.1.1">enc</span></span>
<span class="ltx_tr" id="A8.T8.4.1.1.5.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T8.4.1.1.5.3.1.2.1">depth</span></span>
</span></span><span class="ltx_text" id="A8.T8.4.1.1.5.4"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A8.T8.4.1.1.6">
<span class="ltx_text" id="A8.T8.4.1.1.6.1"></span><span class="ltx_text" id="A8.T8.4.1.1.6.2" style="font-size:90%;"> </span><span class="ltx_text" id="A8.T8.4.1.1.6.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="A8.T8.4.1.1.6.3.1">
<span class="ltx_tr" id="A8.T8.4.1.1.6.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T8.4.1.1.6.3.1.1.1">pred</span></span>
<span class="ltx_tr" id="A8.T8.4.1.1.6.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T8.4.1.1.6.3.1.2.1">depth</span></span>
</span></span><span class="ltx_text" id="A8.T8.4.1.1.6.4"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A8.T8.4.1.1.7">
<span class="ltx_text" id="A8.T8.4.1.1.7.1"></span><span class="ltx_text" id="A8.T8.4.1.1.7.2" style="font-size:90%;"> </span><span class="ltx_text" id="A8.T8.4.1.1.7.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="A8.T8.4.1.1.7.3.1">
<span class="ltx_tr" id="A8.T8.4.1.1.7.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T8.4.1.1.7.3.1.1.1">enc</span></span>
<span class="ltx_tr" id="A8.T8.4.1.1.7.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T8.4.1.1.7.3.1.2.1">dim</span></span>
</span></span><span class="ltx_text" id="A8.T8.4.1.1.7.4"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A8.T8.4.1.1.8">
<span class="ltx_text" id="A8.T8.4.1.1.8.1"></span><span class="ltx_text" id="A8.T8.4.1.1.8.2" style="font-size:90%;"> </span><span class="ltx_text" id="A8.T8.4.1.1.8.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="A8.T8.4.1.1.8.3.1">
<span class="ltx_tr" id="A8.T8.4.1.1.8.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T8.4.1.1.8.3.1.1.1">pred</span></span>
<span class="ltx_tr" id="A8.T8.4.1.1.8.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T8.4.1.1.8.3.1.2.1">dim</span></span>
</span></span><span class="ltx_text" id="A8.T8.4.1.1.8.4"></span>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A8.T8.4.1.1.9">
<span class="ltx_text" id="A8.T8.4.1.1.9.1"></span><span class="ltx_text" id="A8.T8.4.1.1.9.2" style="font-size:90%;"> </span><span class="ltx_text" id="A8.T8.4.1.1.9.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="A8.T8.4.1.1.9.3.1">
<span class="ltx_tr" id="A8.T8.4.1.1.9.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T8.4.1.1.9.3.1.1.1">lr</span></span>
</span></span><span class="ltx_text" id="A8.T8.4.1.1.9.4"></span><span class="ltx_text" id="A8.T8.4.1.1.9.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A8.T8.4.1.1.10">
<span class="ltx_text" id="A8.T8.4.1.1.10.1"></span><span class="ltx_text" id="A8.T8.4.1.1.10.2" style="font-size:90%;"> </span><span class="ltx_text" id="A8.T8.4.1.1.10.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="A8.T8.4.1.1.10.3.1">
<span class="ltx_tr" id="A8.T8.4.1.1.10.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T8.4.1.1.10.3.1.1.1">mom.</span></span>
</span></span><span class="ltx_text" id="A8.T8.4.1.1.10.4"></span><span class="ltx_text" id="A8.T8.4.1.1.10.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A8.T8.4.1.1.11">
<span class="ltx_text" id="A8.T8.4.1.1.11.1"></span><span class="ltx_text" id="A8.T8.4.1.1.11.2" style="font-size:90%;"> </span><span class="ltx_text" id="A8.T8.4.1.1.11.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="A8.T8.4.1.1.11.3.1">
<span class="ltx_tr" id="A8.T8.4.1.1.11.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T8.4.1.1.11.3.1.1.1">clust.</span></span>
<span class="ltx_tr" id="A8.T8.4.1.1.11.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T8.4.1.1.11.3.1.2.1">lr</span></span>
</span></span><span class="ltx_text" id="A8.T8.4.1.1.11.4"></span><span class="ltx_text" id="A8.T8.4.1.1.11.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A8.T8.4.1.1.12">
<span class="ltx_text" id="A8.T8.4.1.1.12.1"></span><span class="ltx_text" id="A8.T8.4.1.1.12.2" style="font-size:90%;"> </span><span class="ltx_text" id="A8.T8.4.1.1.12.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="A8.T8.4.1.1.12.3.1">
<span class="ltx_tr" id="A8.T8.4.1.1.12.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T8.4.1.1.12.3.1.1.1">masking</span></span>
</span></span><span class="ltx_text" id="A8.T8.4.1.1.12.4"></span><span class="ltx_text" id="A8.T8.4.1.1.12.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A8.T8.4.1.1.13">
<span class="ltx_text" id="A8.T8.4.1.1.13.1"></span><span class="ltx_text" id="A8.T8.4.1.1.13.2" style="font-size:90%;"> </span><span class="ltx_text" id="A8.T8.4.1.1.13.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="A8.T8.4.1.1.13.3.1">
<span class="ltx_tr" id="A8.T8.4.1.1.13.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T8.4.1.1.13.3.1.1.1">ratio</span></span>
</span></span><span class="ltx_text" id="A8.T8.4.1.1.13.4"></span><span class="ltx_text" id="A8.T8.4.1.1.13.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A8.T8.4.1.1.14">
<span class="ltx_text" id="A8.T8.4.1.1.14.1"></span><span class="ltx_text" id="A8.T8.4.1.1.14.2" style="font-size:90%;"> </span><span class="ltx_text" id="A8.T8.4.1.1.14.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="A8.T8.4.1.1.14.3.1">
<span class="ltx_tr" id="A8.T8.4.1.1.14.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T8.4.1.1.14.3.1.1.1">roll</span></span>
</span></span><span class="ltx_text" id="A8.T8.4.1.1.14.4"></span>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A8.T8.4.1.1.15">
<span class="ltx_text" id="A8.T8.4.1.1.15.1"></span><span class="ltx_text" id="A8.T8.4.1.1.15.2" style="font-size:90%;"> </span><span class="ltx_text" id="A8.T8.4.1.1.15.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="A8.T8.4.1.1.15.3.1">
<span class="ltx_tr" id="A8.T8.4.1.1.15.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T8.4.1.1.15.3.1.1.1">teacher</span></span>
<span class="ltx_tr" id="A8.T8.4.1.1.15.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T8.4.1.1.15.3.1.2.1">head</span></span>
</span></span><span class="ltx_text" id="A8.T8.4.1.1.15.4"></span><span class="ltx_text" id="A8.T8.4.1.1.15.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A8.T8.4.1.1.16">
<span class="ltx_text" id="A8.T8.4.1.1.16.1"></span><span class="ltx_text" id="A8.T8.4.1.1.16.2" style="font-size:90%;"> </span><span class="ltx_text" id="A8.T8.4.1.1.16.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="A8.T8.4.1.1.16.3.1">
<span class="ltx_tr" id="A8.T8.4.1.1.16.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T8.4.1.1.16.3.1.1.1">student</span></span>
<span class="ltx_tr" id="A8.T8.4.1.1.16.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T8.4.1.1.16.3.1.2.1">head</span></span>
</span></span><span class="ltx_text" id="A8.T8.4.1.1.16.4"></span><span class="ltx_text" id="A8.T8.4.1.1.16.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A8.T8.4.1.1.17">
<span class="ltx_text" id="A8.T8.4.1.1.17.1"></span><span class="ltx_text" id="A8.T8.4.1.1.17.2" style="font-size:90%;"> </span><span class="ltx_text" id="A8.T8.4.1.1.17.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="A8.T8.4.1.1.17.3.1">
<span class="ltx_tr" id="A8.T8.4.1.1.17.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T8.4.1.1.17.3.1.1.1">loss</span></span>
</span></span><span class="ltx_text" id="A8.T8.4.1.1.17.4"></span><span class="ltx_text" id="A8.T8.4.1.1.17.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A8.T8.4.1.1.18">
<span class="ltx_text" id="A8.T8.4.1.1.18.1"></span><span class="ltx_text" id="A8.T8.4.1.1.18.2" style="font-size:90%;"> </span><span class="ltx_text" id="A8.T8.4.1.1.18.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="A8.T8.4.1.1.18.3.1">
<span class="ltx_tr" id="A8.T8.4.1.1.18.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T8.4.1.1.18.3.1.1.1">pos.</span></span>
<span class="ltx_tr" id="A8.T8.4.1.1.18.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T8.4.1.1.18.3.1.2.1">enc.</span></span>
</span></span><span class="ltx_text" id="A8.T8.4.1.1.18.4"></span><span class="ltx_text" id="A8.T8.4.1.1.18.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A8.T8.4.1.1.19">
<span class="ltx_text" id="A8.T8.4.1.1.19.1"></span><span class="ltx_text" id="A8.T8.4.1.1.19.2" style="font-size:90%;"> </span><span class="ltx_text" id="A8.T8.4.1.1.19.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="A8.T8.4.1.1.19.3.1">
<span class="ltx_tr" id="A8.T8.4.1.1.19.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T8.4.1.1.19.3.1.1.1">SK</span></span>
</span></span><span class="ltx_text" id="A8.T8.4.1.1.19.4"></span><span class="ltx_text" id="A8.T8.4.1.1.19.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A8.T8.4.1.1.20">
<span class="ltx_text" id="A8.T8.4.1.1.20.1"></span><span class="ltx_text" id="A8.T8.4.1.1.20.2" style="font-size:90%;"> </span><span class="ltx_text" id="A8.T8.4.1.1.20.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="A8.T8.4.1.1.20.3.1">
<span class="ltx_tr" id="A8.T8.4.1.1.20.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T8.4.1.1.20.3.1.1.1">#reg.</span></span>
</span></span><span class="ltx_text" id="A8.T8.4.1.1.20.4"></span>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A8.T8.4.1.1.21">
<span class="ltx_text" id="A8.T8.4.1.1.21.1"></span><span class="ltx_text" id="A8.T8.4.1.1.21.2" style="font-size:90%;"> </span><span class="ltx_text" id="A8.T8.4.1.1.21.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="A8.T8.4.1.1.21.3.1">
<span class="ltx_tr" id="A8.T8.4.1.1.21.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T8.4.1.1.21.3.1.1.1">crop</span></span>
<span class="ltx_tr" id="A8.T8.4.1.1.21.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A8.T8.4.1.1.21.3.1.2.1">scale</span></span>
</span></span><span class="ltx_text" id="A8.T8.4.1.1.21.4"></span><span class="ltx_text" id="A8.T8.4.1.1.21.5" style="font-size:90%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="A8.T8.4.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A8.T8.4.1.2.1"><span class="ltx_text" id="A8.T8.4.1.2.1.1" style="font-size:90%;">Meb2b</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A8.T8.4.1.2.2"><span class="ltx_text" id="A8.T8.4.1.2.2.1" style="font-size:90%;">LVD-142M</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A8.T8.4.1.2.3"><span class="ltx_text" id="A8.T8.4.1.2.3.1" style="font-size:90%;">500k</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A8.T8.4.1.2.4"><span class="ltx_text" id="A8.T8.4.1.2.4.1" style="font-size:90%;">14</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A8.T8.4.1.2.5"><span class="ltx_text" id="A8.T8.4.1.2.5.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A8.T8.4.1.2.6"><span class="ltx_text" id="A8.T8.4.1.2.6.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A8.T8.4.1.2.7"><span class="ltx_text" id="A8.T8.4.1.2.7.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A8.T8.4.1.2.8"><span class="ltx_text" id="A8.T8.4.1.2.8.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A8.T8.4.1.2.9"><span class="ltx_text" id="A8.T8.4.1.2.9.1" style="font-size:90%;">1e-03</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A8.T8.4.1.2.10"><span class="ltx_text" id="A8.T8.4.1.2.10.1" style="font-size:90%;">0.999</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A8.T8.4.1.2.11"><span class="ltx_text" id="A8.T8.4.1.2.11.1" style="font-size:90%;">5e-04</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A8.T8.4.1.2.12"><span class="ltx_text" id="A8.T8.4.1.2.12.1" style="font-size:90%;">inv. block</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A8.T8.4.1.2.13"><span class="ltx_text" id="A8.T8.4.1.2.13.1" style="font-size:90%;">65%</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A8.T8.4.1.2.14"><span class="ltx_text" id="A8.T8.4.1.2.14.1" style="font-size:90%;">True</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A8.T8.4.1.2.15"><span class="ltx_text" id="A8.T8.4.1.2.15.1" style="font-size:90%;">clustering</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A8.T8.4.1.2.16"><span class="ltx_text" id="A8.T8.4.1.2.16.1" style="font-size:90%;">Linear</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A8.T8.4.1.2.17"><span class="ltx_text" id="A8.T8.4.1.2.17.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A8.T8.4.1.2.18"><span class="ltx_text" id="A8.T8.4.1.2.18.1" style="font-size:90%;">rope</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A8.T8.4.1.2.19"><span class="ltx_text" id="A8.T8.4.1.2.19.1" style="font-size:90%;">modified</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A8.T8.4.1.2.20"><span class="ltx_text" id="A8.T8.4.1.2.20.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A8.T8.4.1.2.21"><span class="ltx_text" id="A8.T8.4.1.2.21.1" style="font-size:90%;">[60%,100%]</span></td>
</tr>
<tr class="ltx_tr" id="A8.T8.4.1.3">
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.3.1"><span class="ltx_text" id="A8.T8.4.1.3.1.1" style="font-size:90%;">Mc2dd</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.3.2"><span class="ltx_text" id="A8.T8.4.1.3.2.1" style="font-size:90%;">LVD-142M</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.3.3"><span class="ltx_text" id="A8.T8.4.1.3.3.1" style="font-size:90%;">500k</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.3.4"><span class="ltx_text" id="A8.T8.4.1.3.4.1" style="font-size:90%;">14</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.3.5"><span class="ltx_text" id="A8.T8.4.1.3.5.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.3.6"><span class="ltx_text" id="A8.T8.4.1.3.6.1" style="font-size:90%;">6</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.3.7"><span class="ltx_text" id="A8.T8.4.1.3.7.1" style="font-size:90%;">768</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.3.8"><span class="ltx_text" id="A8.T8.4.1.3.8.1" style="font-size:90%;">768</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.3.9"><span class="ltx_text" id="A8.T8.4.1.3.9.1" style="font-size:90%;">1e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.3.10"><span class="ltx_text" id="A8.T8.4.1.3.10.1" style="font-size:90%;">0.999</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.3.11"><span class="ltx_text" id="A8.T8.4.1.3.11.1" style="font-size:90%;">5e-04</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.3.12"><span class="ltx_text" id="A8.T8.4.1.3.12.1" style="font-size:90%;">inv. block</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.3.13"><span class="ltx_text" id="A8.T8.4.1.3.13.1" style="font-size:90%;">65%</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.3.14"><span class="ltx_text" id="A8.T8.4.1.3.14.1" style="font-size:90%;">True</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.3.15"><span class="ltx_text" id="A8.T8.4.1.3.15.1" style="font-size:90%;">clustering</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.3.16"><span class="ltx_text" id="A8.T8.4.1.3.16.1" style="font-size:90%;">Linear</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.3.17"><span class="ltx_text" id="A8.T8.4.1.3.17.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.3.18"><span class="ltx_text" id="A8.T8.4.1.3.18.1" style="font-size:90%;">rope</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.3.19"><span class="ltx_text" id="A8.T8.4.1.3.19.1" style="font-size:90%;">modified</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.3.20"><span class="ltx_text" id="A8.T8.4.1.3.20.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.3.21"><span class="ltx_text" id="A8.T8.4.1.3.21.1" style="font-size:90%;">[60%,100%]</span></td>
</tr>
<tr class="ltx_tr" id="A8.T8.4.1.4">
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.4.1"><span class="ltx_text" id="A8.T8.4.1.4.1.1" style="font-size:90%;">M8c4d</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.4.2"><span class="ltx_text" id="A8.T8.4.1.4.2.1" style="font-size:90%;">LVD-142M</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.4.3"><span class="ltx_text" id="A8.T8.4.1.4.3.1" style="font-size:90%;">500k</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.4.4"><span class="ltx_text" id="A8.T8.4.1.4.4.1" style="font-size:90%;">14</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.4.5"><span class="ltx_text" id="A8.T8.4.1.4.5.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.4.6"><span class="ltx_text" id="A8.T8.4.1.4.6.1" style="font-size:90%;">6</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.4.7"><span class="ltx_text" id="A8.T8.4.1.4.7.1" style="font-size:90%;">384</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.4.8"><span class="ltx_text" id="A8.T8.4.1.4.8.1" style="font-size:90%;">384</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.4.9"><span class="ltx_text" id="A8.T8.4.1.4.9.1" style="font-size:90%;">2e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.4.10"><span class="ltx_text" id="A8.T8.4.1.4.10.1" style="font-size:90%;">0.998</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.4.11"><span class="ltx_text" id="A8.T8.4.1.4.11.1" style="font-size:90%;">1e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.4.12"><span class="ltx_text" id="A8.T8.4.1.4.12.1" style="font-size:90%;">inv. block</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.4.13"><span class="ltx_text" id="A8.T8.4.1.4.13.1" style="font-size:90%;">65%</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.4.14"><span class="ltx_text" id="A8.T8.4.1.4.14.1" style="font-size:90%;">True</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.4.15"><span class="ltx_text" id="A8.T8.4.1.4.15.1" style="font-size:90%;">clustering</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.4.16"><span class="ltx_text" id="A8.T8.4.1.4.16.1" style="font-size:90%;">Linear</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.4.17"><span class="ltx_text" id="A8.T8.4.1.4.17.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.4.18"><span class="ltx_text" id="A8.T8.4.1.4.18.1" style="font-size:90%;">rope</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.4.19"><span class="ltx_text" id="A8.T8.4.1.4.19.1" style="font-size:90%;">modified</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.4.20"><span class="ltx_text" id="A8.T8.4.1.4.20.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.4.21"><span class="ltx_text" id="A8.T8.4.1.4.21.1" style="font-size:90%;">[60%,100%]</span></td>
</tr>
<tr class="ltx_tr" id="A8.T8.4.1.5">
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.5.1"><span class="ltx_text" id="A8.T8.4.1.5.1.1" style="font-size:90%;">Adcab</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.5.2"><span class="ltx_text" id="A8.T8.4.1.5.2.1" style="font-size:90%;">IN22k</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.5.3"><span class="ltx_text" id="A8.T8.4.1.5.3.1" style="font-size:90%;">100k</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.5.4"><span class="ltx_text" id="A8.T8.4.1.5.4.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.5.5"><span class="ltx_text" id="A8.T8.4.1.5.5.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.5.6"><span class="ltx_text" id="A8.T8.4.1.5.6.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.5.7"><span class="ltx_text" id="A8.T8.4.1.5.7.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.5.8"><span class="ltx_text" id="A8.T8.4.1.5.8.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.5.9"><span class="ltx_text" id="A8.T8.4.1.5.9.1" style="font-size:90%;">2e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.5.10"><span class="ltx_text" id="A8.T8.4.1.5.10.1" style="font-size:90%;">0.996</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.5.11"><span class="ltx_text" id="A8.T8.4.1.5.11.1" style="font-size:90%;">1e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.5.12"><span class="ltx_text" id="A8.T8.4.1.5.12.1" style="font-size:90%;">inv. block</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.5.13"><span class="ltx_text" id="A8.T8.4.1.5.13.1" style="font-size:90%;">65%</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.5.14"><span class="ltx_text" id="A8.T8.4.1.5.14.1" style="font-size:90%;">True</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.5.15"><span class="ltx_text" id="A8.T8.4.1.5.15.1" style="font-size:90%;">clustering</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.5.16"><span class="ltx_text" id="A8.T8.4.1.5.16.1" style="font-size:90%;">Linear</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.5.17"><span class="ltx_text" id="A8.T8.4.1.5.17.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.5.18"><span class="ltx_text" id="A8.T8.4.1.5.18.1" style="font-size:90%;">rope</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.5.19"><span class="ltx_text" id="A8.T8.4.1.5.19.1" style="font-size:90%;">modified</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.5.20"><span class="ltx_text" id="A8.T8.4.1.5.20.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.5.21"><span class="ltx_text" id="A8.T8.4.1.5.21.1" style="font-size:90%;">[60%,100%]</span></td>
</tr>
<tr class="ltx_tr" id="A8.T8.4.1.6">
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.6.1"><span class="ltx_text" id="A8.T8.4.1.6.1.1" style="font-size:90%;">Ae3f9</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.6.2"><span class="ltx_text" id="A8.T8.4.1.6.2.1" style="font-size:90%;">IN22k</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.6.3"><span class="ltx_text" id="A8.T8.4.1.6.3.1" style="font-size:90%;">100k</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.6.4"><span class="ltx_text" id="A8.T8.4.1.6.4.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.6.5"><span class="ltx_text" id="A8.T8.4.1.6.5.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.6.6"><span class="ltx_text" id="A8.T8.4.1.6.6.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.6.7"><span class="ltx_text" id="A8.T8.4.1.6.7.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.6.8"><span class="ltx_text" id="A8.T8.4.1.6.8.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.6.9"><span class="ltx_text" id="A8.T8.4.1.6.9.1" style="font-size:90%;">2e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.6.10"><span class="ltx_text" id="A8.T8.4.1.6.10.1" style="font-size:90%;">0.996</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.6.11"><span class="ltx_text" id="A8.T8.4.1.6.11.1" style="font-size:90%;">1e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.6.12"><span class="ltx_text" id="A8.T8.4.1.6.12.1" style="font-size:90%;">inv. block</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.6.13"><span class="ltx_text" id="A8.T8.4.1.6.13.1" style="font-size:90%;">65%</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.6.14"><span class="ltx_text" id="A8.T8.4.1.6.14.1" style="font-size:90%;">True</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.6.15"><span class="ltx_text" id="A8.T8.4.1.6.15.1" style="font-size:90%;">clustering</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.6.16"><span class="ltx_text" id="A8.T8.4.1.6.16.1" style="font-size:90%;">Linear</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.6.17"><span class="ltx_text" id="A8.T8.4.1.6.17.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.6.18"><span class="ltx_text" id="A8.T8.4.1.6.18.1" style="font-size:90%;">rope</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.6.19"><span class="ltx_text" id="A8.T8.4.1.6.19.1" style="font-size:90%;">modified</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.6.20"><span class="ltx_text" id="A8.T8.4.1.6.20.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.6.21"><span class="ltx_text" id="A8.T8.4.1.6.21.1" style="font-size:90%;">[60%,100%]</span></td>
</tr>
<tr class="ltx_tr" id="A8.T8.4.1.7">
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.7.1"><span class="ltx_text" id="A8.T8.4.1.7.1.1" style="font-size:90%;">A0dd4</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.7.2"><span class="ltx_text" id="A8.T8.4.1.7.2.1" style="font-size:90%;">IN22k</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.7.3"><span class="ltx_text" id="A8.T8.4.1.7.3.1" style="font-size:90%;">100k</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.7.4"><span class="ltx_text" id="A8.T8.4.1.7.4.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.7.5"><span class="ltx_text" id="A8.T8.4.1.7.5.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.7.6"><span class="ltx_text" id="A8.T8.4.1.7.6.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.7.7"><span class="ltx_text" id="A8.T8.4.1.7.7.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.7.8"><span class="ltx_text" id="A8.T8.4.1.7.8.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.7.9"><span class="ltx_text" id="A8.T8.4.1.7.9.1" style="font-size:90%;">2e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.7.10"><span class="ltx_text" id="A8.T8.4.1.7.10.1" style="font-size:90%;">0.996</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.7.11"><span class="ltx_text" id="A8.T8.4.1.7.11.1" style="font-size:90%;">1e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.7.12"><span class="ltx_text" id="A8.T8.4.1.7.12.1" style="font-size:90%;">random</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.7.13"><span class="ltx_text" id="A8.T8.4.1.7.13.1" style="font-size:90%;">90%</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.7.14"><span class="ltx_text" id="A8.T8.4.1.7.14.1" style="font-size:90%;">False</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.7.15"><span class="ltx_text" id="A8.T8.4.1.7.15.1" style="font-size:90%;">clustering</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.7.16"><span class="ltx_text" id="A8.T8.4.1.7.16.1" style="font-size:90%;">Linear</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.7.17"><span class="ltx_text" id="A8.T8.4.1.7.17.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.7.18"><span class="ltx_text" id="A8.T8.4.1.7.18.1" style="font-size:90%;">rope</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.7.19"><span class="ltx_text" id="A8.T8.4.1.7.19.1" style="font-size:90%;">modified</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.7.20"><span class="ltx_text" id="A8.T8.4.1.7.20.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.7.21"><span class="ltx_text" id="A8.T8.4.1.7.21.1" style="font-size:90%;">[60%,100%]</span></td>
</tr>
<tr class="ltx_tr" id="A8.T8.4.1.8">
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.8.1"><span class="ltx_text" id="A8.T8.4.1.8.1.1" style="font-size:90%;">A9b4a</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.8.2"><span class="ltx_text" id="A8.T8.4.1.8.2.1" style="font-size:90%;">IN22k</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.8.3"><span class="ltx_text" id="A8.T8.4.1.8.3.1" style="font-size:90%;">100k</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.8.4"><span class="ltx_text" id="A8.T8.4.1.8.4.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.8.5"><span class="ltx_text" id="A8.T8.4.1.8.5.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.8.6"><span class="ltx_text" id="A8.T8.4.1.8.6.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.8.7"><span class="ltx_text" id="A8.T8.4.1.8.7.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.8.8"><span class="ltx_text" id="A8.T8.4.1.8.8.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.8.9"><span class="ltx_text" id="A8.T8.4.1.8.9.1" style="font-size:90%;">2e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.8.10"><span class="ltx_text" id="A8.T8.4.1.8.10.1" style="font-size:90%;">0.996</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.8.11"><span class="ltx_text" id="A8.T8.4.1.8.11.1" style="font-size:90%;">1e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.8.12"><span class="ltx_text" id="A8.T8.4.1.8.12.1" style="font-size:90%;">block</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.8.13"><span class="ltx_text" id="A8.T8.4.1.8.13.1" style="font-size:90%;">65%</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.8.14"><span class="ltx_text" id="A8.T8.4.1.8.14.1" style="font-size:90%;">False</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.8.15"><span class="ltx_text" id="A8.T8.4.1.8.15.1" style="font-size:90%;">clustering</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.8.16"><span class="ltx_text" id="A8.T8.4.1.8.16.1" style="font-size:90%;">Linear</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.8.17"><span class="ltx_text" id="A8.T8.4.1.8.17.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.8.18"><span class="ltx_text" id="A8.T8.4.1.8.18.1" style="font-size:90%;">rope</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.8.19"><span class="ltx_text" id="A8.T8.4.1.8.19.1" style="font-size:90%;">modified</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.8.20"><span class="ltx_text" id="A8.T8.4.1.8.20.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.8.21"><span class="ltx_text" id="A8.T8.4.1.8.21.1" style="font-size:90%;">[60%,100%]</span></td>
</tr>
<tr class="ltx_tr" id="A8.T8.4.1.9">
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.9.1"><span class="ltx_text" id="A8.T8.4.1.9.1.1" style="font-size:90%;">A7cc0</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.9.2"><span class="ltx_text" id="A8.T8.4.1.9.2.1" style="font-size:90%;">IN22k</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.9.3"><span class="ltx_text" id="A8.T8.4.1.9.3.1" style="font-size:90%;">100k</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.9.4"><span class="ltx_text" id="A8.T8.4.1.9.4.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.9.5"><span class="ltx_text" id="A8.T8.4.1.9.5.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.9.6"><span class="ltx_text" id="A8.T8.4.1.9.6.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.9.7"><span class="ltx_text" id="A8.T8.4.1.9.7.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.9.8"><span class="ltx_text" id="A8.T8.4.1.9.8.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.9.9"><span class="ltx_text" id="A8.T8.4.1.9.9.1" style="font-size:90%;">2e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.9.10"><span class="ltx_text" id="A8.T8.4.1.9.10.1" style="font-size:90%;">0.996</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.9.11"><span class="ltx_text" id="A8.T8.4.1.9.11.1" style="font-size:90%;">1e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.9.12"><span class="ltx_text" id="A8.T8.4.1.9.12.1" style="font-size:90%;">inv. block</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.9.13"><span class="ltx_text" id="A8.T8.4.1.9.13.1" style="font-size:90%;">65%</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.9.14"><span class="ltx_text" id="A8.T8.4.1.9.14.1" style="font-size:90%;">False</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.9.15"><span class="ltx_text" id="A8.T8.4.1.9.15.1" style="font-size:90%;">clustering</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.9.16"><span class="ltx_text" id="A8.T8.4.1.9.16.1" style="font-size:90%;">Linear</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.9.17"><span class="ltx_text" id="A8.T8.4.1.9.17.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.9.18"><span class="ltx_text" id="A8.T8.4.1.9.18.1" style="font-size:90%;">rope</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.9.19"><span class="ltx_text" id="A8.T8.4.1.9.19.1" style="font-size:90%;">modified</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.9.20"><span class="ltx_text" id="A8.T8.4.1.9.20.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.9.21"><span class="ltx_text" id="A8.T8.4.1.9.21.1" style="font-size:90%;">[60%,100%]</span></td>
</tr>
<tr class="ltx_tr" id="A8.T8.4.1.10">
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.10.1"><span class="ltx_text" id="A8.T8.4.1.10.1.1" style="font-size:90%;">A3bb3</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.10.2"><span class="ltx_text" id="A8.T8.4.1.10.2.1" style="font-size:90%;">IN22k</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.10.3"><span class="ltx_text" id="A8.T8.4.1.10.3.1" style="font-size:90%;">100k</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.10.4"><span class="ltx_text" id="A8.T8.4.1.10.4.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.10.5"><span class="ltx_text" id="A8.T8.4.1.10.5.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.10.6"><span class="ltx_text" id="A8.T8.4.1.10.6.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.10.7"><span class="ltx_text" id="A8.T8.4.1.10.7.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.10.8"><span class="ltx_text" id="A8.T8.4.1.10.8.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.10.9"><span class="ltx_text" id="A8.T8.4.1.10.9.1" style="font-size:90%;">2e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.10.10"><span class="ltx_text" id="A8.T8.4.1.10.10.1" style="font-size:90%;">0.996</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.10.11"><span class="ltx_text" id="A8.T8.4.1.10.11.1" style="font-size:90%;">1e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.10.12"><span class="ltx_text" id="A8.T8.4.1.10.12.1" style="font-size:90%;">inv. block</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.10.13"><span class="ltx_text" id="A8.T8.4.1.10.13.1" style="font-size:90%;">65%</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.10.14"><span class="ltx_text" id="A8.T8.4.1.10.14.1" style="font-size:90%;">True</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.10.15"><span class="ltx_text" id="A8.T8.4.1.10.15.1" style="font-size:90%;">identity</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.10.16"><span class="ltx_text" id="A8.T8.4.1.10.16.1" style="font-size:90%;">identity</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.10.17"><span class="ltx_text" id="A8.T8.4.1.10.17.1" style="font-size:90%;">Huber</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.10.18"><span class="ltx_text" id="A8.T8.4.1.10.18.1" style="font-size:90%;">rope</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.10.19"><span class="ltx_text" id="A8.T8.4.1.10.19.1" style="font-size:90%;">standard</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.10.20"><span class="ltx_text" id="A8.T8.4.1.10.20.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.10.21"><span class="ltx_text" id="A8.T8.4.1.10.21.1" style="font-size:90%;">[60%,100%]</span></td>
</tr>
<tr class="ltx_tr" id="A8.T8.4.1.11">
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.11.1"><span class="ltx_text" id="A8.T8.4.1.11.1.1" style="font-size:90%;">A2fcb</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.11.2"><span class="ltx_text" id="A8.T8.4.1.11.2.1" style="font-size:90%;">IN22k</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.11.3"><span class="ltx_text" id="A8.T8.4.1.11.3.1" style="font-size:90%;">100k</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.11.4"><span class="ltx_text" id="A8.T8.4.1.11.4.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.11.5"><span class="ltx_text" id="A8.T8.4.1.11.5.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.11.6"><span class="ltx_text" id="A8.T8.4.1.11.6.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.11.7"><span class="ltx_text" id="A8.T8.4.1.11.7.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.11.8"><span class="ltx_text" id="A8.T8.4.1.11.8.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.11.9"><span class="ltx_text" id="A8.T8.4.1.11.9.1" style="font-size:90%;">2e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.11.10"><span class="ltx_text" id="A8.T8.4.1.11.10.1" style="font-size:90%;">0.996</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.11.11"><span class="ltx_text" id="A8.T8.4.1.11.11.1" style="font-size:90%;">1e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.11.12"><span class="ltx_text" id="A8.T8.4.1.11.12.1" style="font-size:90%;">inv. block</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.11.13"><span class="ltx_text" id="A8.T8.4.1.11.13.1" style="font-size:90%;">65%</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.11.14"><span class="ltx_text" id="A8.T8.4.1.11.14.1" style="font-size:90%;">True</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.11.15"><span class="ltx_text" id="A8.T8.4.1.11.15.1" style="font-size:90%;">EMA</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.11.16"><span class="ltx_text" id="A8.T8.4.1.11.16.1" style="font-size:90%;">MLP</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.11.17"><span class="ltx_text" id="A8.T8.4.1.11.17.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.11.18"><span class="ltx_text" id="A8.T8.4.1.11.18.1" style="font-size:90%;">rope</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.11.19"><span class="ltx_text" id="A8.T8.4.1.11.19.1" style="font-size:90%;">modified</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.11.20"><span class="ltx_text" id="A8.T8.4.1.11.20.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.11.21"><span class="ltx_text" id="A8.T8.4.1.11.21.1" style="font-size:90%;">[60%,100%]</span></td>
</tr>
<tr class="ltx_tr" id="A8.T8.4.1.12">
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.12.1"><span class="ltx_text" id="A8.T8.4.1.12.1.1" style="font-size:90%;">Aeb48</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.12.2"><span class="ltx_text" id="A8.T8.4.1.12.2.1" style="font-size:90%;">IN22k</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.12.3"><span class="ltx_text" id="A8.T8.4.1.12.3.1" style="font-size:90%;">100k</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.12.4"><span class="ltx_text" id="A8.T8.4.1.12.4.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.12.5"><span class="ltx_text" id="A8.T8.4.1.12.5.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.12.6"><span class="ltx_text" id="A8.T8.4.1.12.6.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.12.7"><span class="ltx_text" id="A8.T8.4.1.12.7.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.12.8"><span class="ltx_text" id="A8.T8.4.1.12.8.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.12.9"><span class="ltx_text" id="A8.T8.4.1.12.9.1" style="font-size:90%;">2e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.12.10"><span class="ltx_text" id="A8.T8.4.1.12.10.1" style="font-size:90%;">0.996</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.12.11"><span class="ltx_text" id="A8.T8.4.1.12.11.1" style="font-size:90%;">1e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.12.12"><span class="ltx_text" id="A8.T8.4.1.12.12.1" style="font-size:90%;">inv. block</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.12.13"><span class="ltx_text" id="A8.T8.4.1.12.13.1" style="font-size:90%;">65%</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.12.14"><span class="ltx_text" id="A8.T8.4.1.12.14.1" style="font-size:90%;">True</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.12.15"><span class="ltx_text" id="A8.T8.4.1.12.15.1" style="font-size:90%;">clustering</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.12.16"><span class="ltx_text" id="A8.T8.4.1.12.16.1" style="font-size:90%;">MLP</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.12.17"><span class="ltx_text" id="A8.T8.4.1.12.17.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.12.18"><span class="ltx_text" id="A8.T8.4.1.12.18.1" style="font-size:90%;">rope</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.12.19"><span class="ltx_text" id="A8.T8.4.1.12.19.1" style="font-size:90%;">modified</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.12.20"><span class="ltx_text" id="A8.T8.4.1.12.20.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.12.21"><span class="ltx_text" id="A8.T8.4.1.12.21.1" style="font-size:90%;">[60%,100%]</span></td>
</tr>
<tr class="ltx_tr" id="A8.T8.4.1.13">
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.13.1"><span class="ltx_text" id="A8.T8.4.1.13.1.1" style="font-size:90%;">A74f9</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.13.2"><span class="ltx_text" id="A8.T8.4.1.13.2.1" style="font-size:90%;">IN22k</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.13.3"><span class="ltx_text" id="A8.T8.4.1.13.3.1" style="font-size:90%;">100k</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.13.4"><span class="ltx_text" id="A8.T8.4.1.13.4.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.13.5"><span class="ltx_text" id="A8.T8.4.1.13.5.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.13.6"><span class="ltx_text" id="A8.T8.4.1.13.6.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.13.7"><span class="ltx_text" id="A8.T8.4.1.13.7.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.13.8"><span class="ltx_text" id="A8.T8.4.1.13.8.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.13.9"><span class="ltx_text" id="A8.T8.4.1.13.9.1" style="font-size:90%;">2e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.13.10"><span class="ltx_text" id="A8.T8.4.1.13.10.1" style="font-size:90%;">0.996</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.13.11"><span class="ltx_text" id="A8.T8.4.1.13.11.1" style="font-size:90%;">1e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.13.12"><span class="ltx_text" id="A8.T8.4.1.13.12.1" style="font-size:90%;">inv. block</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.13.13"><span class="ltx_text" id="A8.T8.4.1.13.13.1" style="font-size:90%;">65%</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.13.14"><span class="ltx_text" id="A8.T8.4.1.13.14.1" style="font-size:90%;">True</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.13.15"><span class="ltx_text" id="A8.T8.4.1.13.15.1" style="font-size:90%;">clustering</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.13.16"><span class="ltx_text" id="A8.T8.4.1.13.16.1" style="font-size:90%;">Linear</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.13.17"><span class="ltx_text" id="A8.T8.4.1.13.17.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.13.18"><span class="ltx_text" id="A8.T8.4.1.13.18.1" style="font-size:90%;">rope</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.13.19"><span class="ltx_text" id="A8.T8.4.1.13.19.1" style="font-size:90%;">modified</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.13.20"><span class="ltx_text" id="A8.T8.4.1.13.20.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.13.21"><span class="ltx_text" id="A8.T8.4.1.13.21.1" style="font-size:90%;">[100%,100%]</span></td>
</tr>
<tr class="ltx_tr" id="A8.T8.4.1.14">
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.14.1"><span class="ltx_text" id="A8.T8.4.1.14.1.1" style="font-size:90%;">Ae7b3</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.14.2"><span class="ltx_text" id="A8.T8.4.1.14.2.1" style="font-size:90%;">IN22k</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.14.3"><span class="ltx_text" id="A8.T8.4.1.14.3.1" style="font-size:90%;">100k</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.14.4"><span class="ltx_text" id="A8.T8.4.1.14.4.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.14.5"><span class="ltx_text" id="A8.T8.4.1.14.5.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.14.6"><span class="ltx_text" id="A8.T8.4.1.14.6.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.14.7"><span class="ltx_text" id="A8.T8.4.1.14.7.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.14.8"><span class="ltx_text" id="A8.T8.4.1.14.8.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.14.9"><span class="ltx_text" id="A8.T8.4.1.14.9.1" style="font-size:90%;">2e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.14.10"><span class="ltx_text" id="A8.T8.4.1.14.10.1" style="font-size:90%;">0.996</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.14.11"><span class="ltx_text" id="A8.T8.4.1.14.11.1" style="font-size:90%;">1e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.14.12"><span class="ltx_text" id="A8.T8.4.1.14.12.1" style="font-size:90%;">inv. block</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.14.13"><span class="ltx_text" id="A8.T8.4.1.14.13.1" style="font-size:90%;">65%</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.14.14"><span class="ltx_text" id="A8.T8.4.1.14.14.1" style="font-size:90%;">True</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.14.15"><span class="ltx_text" id="A8.T8.4.1.14.15.1" style="font-size:90%;">clustering</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.14.16"><span class="ltx_text" id="A8.T8.4.1.14.16.1" style="font-size:90%;">Linear</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.14.17"><span class="ltx_text" id="A8.T8.4.1.14.17.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.14.18"><span class="ltx_text" id="A8.T8.4.1.14.18.1" style="font-size:90%;">rope</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.14.19"><span class="ltx_text" id="A8.T8.4.1.14.19.1" style="font-size:90%;">modified</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.14.20"><span class="ltx_text" id="A8.T8.4.1.14.20.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.14.21"><span class="ltx_text" id="A8.T8.4.1.14.21.1" style="font-size:90%;">[20%,100%]</span></td>
</tr>
<tr class="ltx_tr" id="A8.T8.4.1.15">
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.15.1"><span class="ltx_text" id="A8.T8.4.1.15.1.1" style="font-size:90%;">A41b8</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.15.2"><span class="ltx_text" id="A8.T8.4.1.15.2.1" style="font-size:90%;">IN22k</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.15.3"><span class="ltx_text" id="A8.T8.4.1.15.3.1" style="font-size:90%;">100k</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.15.4"><span class="ltx_text" id="A8.T8.4.1.15.4.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.15.5"><span class="ltx_text" id="A8.T8.4.1.15.5.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.15.6"><span class="ltx_text" id="A8.T8.4.1.15.6.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.15.7"><span class="ltx_text" id="A8.T8.4.1.15.7.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.15.8"><span class="ltx_text" id="A8.T8.4.1.15.8.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.15.9"><span class="ltx_text" id="A8.T8.4.1.15.9.1" style="font-size:90%;">2e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.15.10"><span class="ltx_text" id="A8.T8.4.1.15.10.1" style="font-size:90%;">0.996</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.15.11"><span class="ltx_text" id="A8.T8.4.1.15.11.1" style="font-size:90%;">1e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.15.12"><span class="ltx_text" id="A8.T8.4.1.15.12.1" style="font-size:90%;">inv. block</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.15.13"><span class="ltx_text" id="A8.T8.4.1.15.13.1" style="font-size:90%;">55%</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.15.14"><span class="ltx_text" id="A8.T8.4.1.15.14.1" style="font-size:90%;">True</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.15.15"><span class="ltx_text" id="A8.T8.4.1.15.15.1" style="font-size:90%;">clustering</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.15.16"><span class="ltx_text" id="A8.T8.4.1.15.16.1" style="font-size:90%;">Linear</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.15.17"><span class="ltx_text" id="A8.T8.4.1.15.17.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.15.18"><span class="ltx_text" id="A8.T8.4.1.15.18.1" style="font-size:90%;">rope</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.15.19"><span class="ltx_text" id="A8.T8.4.1.15.19.1" style="font-size:90%;">modified</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.15.20"><span class="ltx_text" id="A8.T8.4.1.15.20.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.15.21"><span class="ltx_text" id="A8.T8.4.1.15.21.1" style="font-size:90%;">[60%,100%]</span></td>
</tr>
<tr class="ltx_tr" id="A8.T8.4.1.16">
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.16.1"><span class="ltx_text" id="A8.T8.4.1.16.1.1" style="font-size:90%;">Ac8bc</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.16.2"><span class="ltx_text" id="A8.T8.4.1.16.2.1" style="font-size:90%;">IN22k</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.16.3"><span class="ltx_text" id="A8.T8.4.1.16.3.1" style="font-size:90%;">100k</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.16.4"><span class="ltx_text" id="A8.T8.4.1.16.4.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.16.5"><span class="ltx_text" id="A8.T8.4.1.16.5.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.16.6"><span class="ltx_text" id="A8.T8.4.1.16.6.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.16.7"><span class="ltx_text" id="A8.T8.4.1.16.7.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.16.8"><span class="ltx_text" id="A8.T8.4.1.16.8.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.16.9"><span class="ltx_text" id="A8.T8.4.1.16.9.1" style="font-size:90%;">2e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.16.10"><span class="ltx_text" id="A8.T8.4.1.16.10.1" style="font-size:90%;">0.996</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.16.11"><span class="ltx_text" id="A8.T8.4.1.16.11.1" style="font-size:90%;">1e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.16.12"><span class="ltx_text" id="A8.T8.4.1.16.12.1" style="font-size:90%;">inv. block</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.16.13"><span class="ltx_text" id="A8.T8.4.1.16.13.1" style="font-size:90%;">75%</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.16.14"><span class="ltx_text" id="A8.T8.4.1.16.14.1" style="font-size:90%;">True</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.16.15"><span class="ltx_text" id="A8.T8.4.1.16.15.1" style="font-size:90%;">clustering</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.16.16"><span class="ltx_text" id="A8.T8.4.1.16.16.1" style="font-size:90%;">Linear</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.16.17"><span class="ltx_text" id="A8.T8.4.1.16.17.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.16.18"><span class="ltx_text" id="A8.T8.4.1.16.18.1" style="font-size:90%;">rope</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.16.19"><span class="ltx_text" id="A8.T8.4.1.16.19.1" style="font-size:90%;">modified</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.16.20"><span class="ltx_text" id="A8.T8.4.1.16.20.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.16.21"><span class="ltx_text" id="A8.T8.4.1.16.21.1" style="font-size:90%;">[60%,100%]</span></td>
</tr>
<tr class="ltx_tr" id="A8.T8.4.1.17">
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.17.1"><span class="ltx_text" id="A8.T8.4.1.17.1.1" style="font-size:90%;">Af989</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.17.2"><span class="ltx_text" id="A8.T8.4.1.17.2.1" style="font-size:90%;">IN22k</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.17.3"><span class="ltx_text" id="A8.T8.4.1.17.3.1" style="font-size:90%;">100k</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.17.4"><span class="ltx_text" id="A8.T8.4.1.17.4.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.17.5"><span class="ltx_text" id="A8.T8.4.1.17.5.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.17.6"><span class="ltx_text" id="A8.T8.4.1.17.6.1" style="font-size:90%;">5</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.17.7"><span class="ltx_text" id="A8.T8.4.1.17.7.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.17.8"><span class="ltx_text" id="A8.T8.4.1.17.8.1" style="font-size:90%;">1536</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.17.9"><span class="ltx_text" id="A8.T8.4.1.17.9.1" style="font-size:90%;">2e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.17.10"><span class="ltx_text" id="A8.T8.4.1.17.10.1" style="font-size:90%;">0.996</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.17.11"><span class="ltx_text" id="A8.T8.4.1.17.11.1" style="font-size:90%;">1e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.17.12"><span class="ltx_text" id="A8.T8.4.1.17.12.1" style="font-size:90%;">inv. block</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.17.13"><span class="ltx_text" id="A8.T8.4.1.17.13.1" style="font-size:90%;">65%</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.17.14"><span class="ltx_text" id="A8.T8.4.1.17.14.1" style="font-size:90%;">True</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.17.15"><span class="ltx_text" id="A8.T8.4.1.17.15.1" style="font-size:90%;">clustering</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.17.16"><span class="ltx_text" id="A8.T8.4.1.17.16.1" style="font-size:90%;">Linear</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.17.17"><span class="ltx_text" id="A8.T8.4.1.17.17.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.17.18"><span class="ltx_text" id="A8.T8.4.1.17.18.1" style="font-size:90%;">rope</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.17.19"><span class="ltx_text" id="A8.T8.4.1.17.19.1" style="font-size:90%;">modified</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.17.20"><span class="ltx_text" id="A8.T8.4.1.17.20.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.17.21"><span class="ltx_text" id="A8.T8.4.1.17.21.1" style="font-size:90%;">[60%,100%]</span></td>
</tr>
<tr class="ltx_tr" id="A8.T8.4.1.18">
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.18.1"><span class="ltx_text" id="A8.T8.4.1.18.1.1" style="font-size:90%;">A2da0</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.18.2"><span class="ltx_text" id="A8.T8.4.1.18.2.1" style="font-size:90%;">IN22k</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.18.3"><span class="ltx_text" id="A8.T8.4.1.18.3.1" style="font-size:90%;">100k</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.18.4"><span class="ltx_text" id="A8.T8.4.1.18.4.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.18.5"><span class="ltx_text" id="A8.T8.4.1.18.5.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.18.6"><span class="ltx_text" id="A8.T8.4.1.18.6.1" style="font-size:90%;">21</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.18.7"><span class="ltx_text" id="A8.T8.4.1.18.7.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.18.8"><span class="ltx_text" id="A8.T8.4.1.18.8.1" style="font-size:90%;">768</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.18.9"><span class="ltx_text" id="A8.T8.4.1.18.9.1" style="font-size:90%;">2e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.18.10"><span class="ltx_text" id="A8.T8.4.1.18.10.1" style="font-size:90%;">0.996</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.18.11"><span class="ltx_text" id="A8.T8.4.1.18.11.1" style="font-size:90%;">1e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.18.12"><span class="ltx_text" id="A8.T8.4.1.18.12.1" style="font-size:90%;">inv. block</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.18.13"><span class="ltx_text" id="A8.T8.4.1.18.13.1" style="font-size:90%;">65%</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.18.14"><span class="ltx_text" id="A8.T8.4.1.18.14.1" style="font-size:90%;">True</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.18.15"><span class="ltx_text" id="A8.T8.4.1.18.15.1" style="font-size:90%;">clustering</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.18.16"><span class="ltx_text" id="A8.T8.4.1.18.16.1" style="font-size:90%;">Linear</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.18.17"><span class="ltx_text" id="A8.T8.4.1.18.17.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.18.18"><span class="ltx_text" id="A8.T8.4.1.18.18.1" style="font-size:90%;">rope</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.18.19"><span class="ltx_text" id="A8.T8.4.1.18.19.1" style="font-size:90%;">modified</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.18.20"><span class="ltx_text" id="A8.T8.4.1.18.20.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.18.21"><span class="ltx_text" id="A8.T8.4.1.18.21.1" style="font-size:90%;">[60%,100%]</span></td>
</tr>
<tr class="ltx_tr" id="A8.T8.4.1.19">
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.19.1"><span class="ltx_text" id="A8.T8.4.1.19.1.1" style="font-size:90%;">A9ce8</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.19.2"><span class="ltx_text" id="A8.T8.4.1.19.2.1" style="font-size:90%;">IN22k</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.19.3"><span class="ltx_text" id="A8.T8.4.1.19.3.1" style="font-size:90%;">100k</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.19.4"><span class="ltx_text" id="A8.T8.4.1.19.4.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.19.5"><span class="ltx_text" id="A8.T8.4.1.19.5.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.19.6"><span class="ltx_text" id="A8.T8.4.1.19.6.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.19.7"><span class="ltx_text" id="A8.T8.4.1.19.7.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.19.8"><span class="ltx_text" id="A8.T8.4.1.19.8.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.19.9"><span class="ltx_text" id="A8.T8.4.1.19.9.1" style="font-size:90%;">2e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.19.10"><span class="ltx_text" id="A8.T8.4.1.19.10.1" style="font-size:90%;">0.996</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.19.11"><span class="ltx_text" id="A8.T8.4.1.19.11.1" style="font-size:90%;">1e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.19.12"><span class="ltx_text" id="A8.T8.4.1.19.12.1" style="font-size:90%;">inv. block</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.19.13"><span class="ltx_text" id="A8.T8.4.1.19.13.1" style="font-size:90%;">65%</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.19.14"><span class="ltx_text" id="A8.T8.4.1.19.14.1" style="font-size:90%;">True</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.19.15"><span class="ltx_text" id="A8.T8.4.1.19.15.1" style="font-size:90%;">clustering</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.19.16"><span class="ltx_text" id="A8.T8.4.1.19.16.1" style="font-size:90%;">Linear</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.19.17"><span class="ltx_text" id="A8.T8.4.1.19.17.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.19.18"><span class="ltx_text" id="A8.T8.4.1.19.18.1" style="font-size:90%;">rope</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.19.19"><span class="ltx_text" id="A8.T8.4.1.19.19.1" style="font-size:90%;">modified</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.19.20"><span class="ltx_text" id="A8.T8.4.1.19.20.1" style="font-size:90%;">0</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.19.21"><span class="ltx_text" id="A8.T8.4.1.19.21.1" style="font-size:90%;">[60%,100%]</span></td>
</tr>
<tr class="ltx_tr" id="A8.T8.4.1.20">
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.20.1"><span class="ltx_text" id="A8.T8.4.1.20.1.1" style="font-size:90%;">A1177</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.20.2"><span class="ltx_text" id="A8.T8.4.1.20.2.1" style="font-size:90%;">IN22k</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.20.3"><span class="ltx_text" id="A8.T8.4.1.20.3.1" style="font-size:90%;">100k</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.20.4"><span class="ltx_text" id="A8.T8.4.1.20.4.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.20.5"><span class="ltx_text" id="A8.T8.4.1.20.5.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.20.6"><span class="ltx_text" id="A8.T8.4.1.20.6.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.20.7"><span class="ltx_text" id="A8.T8.4.1.20.7.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.20.8"><span class="ltx_text" id="A8.T8.4.1.20.8.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.20.9"><span class="ltx_text" id="A8.T8.4.1.20.9.1" style="font-size:90%;">2e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.20.10"><span class="ltx_text" id="A8.T8.4.1.20.10.1" style="font-size:90%;">0.996</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.20.11"><span class="ltx_text" id="A8.T8.4.1.20.11.1" style="font-size:90%;">1e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.20.12"><span class="ltx_text" id="A8.T8.4.1.20.12.1" style="font-size:90%;">inv. block</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.20.13"><span class="ltx_text" id="A8.T8.4.1.20.13.1" style="font-size:90%;">65%</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.20.14"><span class="ltx_text" id="A8.T8.4.1.20.14.1" style="font-size:90%;">True</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.20.15"><span class="ltx_text" id="A8.T8.4.1.20.15.1" style="font-size:90%;">clustering</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.20.16"><span class="ltx_text" id="A8.T8.4.1.20.16.1" style="font-size:90%;">Linear</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.20.17"><span class="ltx_text" id="A8.T8.4.1.20.17.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.20.18"><span class="ltx_text" id="A8.T8.4.1.20.18.1" style="font-size:90%;">learn.</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.20.19"><span class="ltx_text" id="A8.T8.4.1.20.19.1" style="font-size:90%;">modified</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.20.20"><span class="ltx_text" id="A8.T8.4.1.20.20.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.20.21"><span class="ltx_text" id="A8.T8.4.1.20.21.1" style="font-size:90%;">[60%,100%]</span></td>
</tr>
<tr class="ltx_tr" id="A8.T8.4.1.21">
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.21.1"><span class="ltx_text" id="A8.T8.4.1.21.1.1" style="font-size:90%;">A72fb</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.21.2"><span class="ltx_text" id="A8.T8.4.1.21.2.1" style="font-size:90%;">IN22k</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.21.3"><span class="ltx_text" id="A8.T8.4.1.21.3.1" style="font-size:90%;">100k</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.21.4"><span class="ltx_text" id="A8.T8.4.1.21.4.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.21.5"><span class="ltx_text" id="A8.T8.4.1.21.5.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.21.6"><span class="ltx_text" id="A8.T8.4.1.21.6.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.21.7"><span class="ltx_text" id="A8.T8.4.1.21.7.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.21.8"><span class="ltx_text" id="A8.T8.4.1.21.8.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.21.9"><span class="ltx_text" id="A8.T8.4.1.21.9.1" style="font-size:90%;">2e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.21.10"><span class="ltx_text" id="A8.T8.4.1.21.10.1" style="font-size:90%;">0.996</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.21.11"><span class="ltx_text" id="A8.T8.4.1.21.11.1" style="font-size:90%;">1e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.21.12"><span class="ltx_text" id="A8.T8.4.1.21.12.1" style="font-size:90%;">inv. block</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.21.13"><span class="ltx_text" id="A8.T8.4.1.21.13.1" style="font-size:90%;">65%</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.21.14"><span class="ltx_text" id="A8.T8.4.1.21.14.1" style="font-size:90%;">True</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.21.15"><span class="ltx_text" id="A8.T8.4.1.21.15.1" style="font-size:90%;">clustering</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.21.16"><span class="ltx_text" id="A8.T8.4.1.21.16.1" style="font-size:90%;">Linear</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.21.17"><span class="ltx_text" id="A8.T8.4.1.21.17.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.21.18"><span class="ltx_text" id="A8.T8.4.1.21.18.1" style="font-size:90%;">rope</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.21.19"><span class="ltx_text" id="A8.T8.4.1.21.19.1" style="font-size:90%;">standard</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.21.20"><span class="ltx_text" id="A8.T8.4.1.21.20.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.21.21"><span class="ltx_text" id="A8.T8.4.1.21.21.1" style="font-size:90%;">[60%,100%]</span></td>
</tr>
<tr class="ltx_tr" id="A8.T8.4.1.22">
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.22.1"><span class="ltx_text" id="A8.T8.4.1.22.1.1" style="font-size:90%;">M5e2e</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.22.2"><span class="ltx_text" id="A8.T8.4.1.22.2.1" style="font-size:90%;">IN22k</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.22.3"><span class="ltx_text" id="A8.T8.4.1.22.3.1" style="font-size:90%;">500k</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.22.4"><span class="ltx_text" id="A8.T8.4.1.22.4.1" style="font-size:90%;">14</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.22.5"><span class="ltx_text" id="A8.T8.4.1.22.5.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.22.6"><span class="ltx_text" id="A8.T8.4.1.22.6.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.22.7"><span class="ltx_text" id="A8.T8.4.1.22.7.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.22.8"><span class="ltx_text" id="A8.T8.4.1.22.8.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.22.9"><span class="ltx_text" id="A8.T8.4.1.22.9.1" style="font-size:90%;">1e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.22.10"><span class="ltx_text" id="A8.T8.4.1.22.10.1" style="font-size:90%;">0.999</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.22.11"><span class="ltx_text" id="A8.T8.4.1.22.11.1" style="font-size:90%;">5e-04</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.22.12"><span class="ltx_text" id="A8.T8.4.1.22.12.1" style="font-size:90%;">inv. block</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.22.13"><span class="ltx_text" id="A8.T8.4.1.22.13.1" style="font-size:90%;">65%</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.22.14"><span class="ltx_text" id="A8.T8.4.1.22.14.1" style="font-size:90%;">True</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.22.15"><span class="ltx_text" id="A8.T8.4.1.22.15.1" style="font-size:90%;">clustering</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.22.16"><span class="ltx_text" id="A8.T8.4.1.22.16.1" style="font-size:90%;">Linear</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.22.17"><span class="ltx_text" id="A8.T8.4.1.22.17.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.22.18"><span class="ltx_text" id="A8.T8.4.1.22.18.1" style="font-size:90%;">rope</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.22.19"><span class="ltx_text" id="A8.T8.4.1.22.19.1" style="font-size:90%;">modified</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.22.20"><span class="ltx_text" id="A8.T8.4.1.22.20.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.22.21"><span class="ltx_text" id="A8.T8.4.1.22.21.1" style="font-size:90%;">[60%,100%]</span></td>
</tr>
<tr class="ltx_tr" id="A8.T8.4.1.23">
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.23.1"><span class="ltx_text" id="A8.T8.4.1.23.1.1" style="font-size:90%;">M2d34</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.23.2"><span class="ltx_text" id="A8.T8.4.1.23.2.1" style="font-size:90%;">IN1k</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.23.3"><span class="ltx_text" id="A8.T8.4.1.23.3.1" style="font-size:90%;">500k</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.23.4"><span class="ltx_text" id="A8.T8.4.1.23.4.1" style="font-size:90%;">14</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.23.5"><span class="ltx_text" id="A8.T8.4.1.23.5.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.23.6"><span class="ltx_text" id="A8.T8.4.1.23.6.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.23.7"><span class="ltx_text" id="A8.T8.4.1.23.7.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.23.8"><span class="ltx_text" id="A8.T8.4.1.23.8.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.23.9"><span class="ltx_text" id="A8.T8.4.1.23.9.1" style="font-size:90%;">1e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.23.10"><span class="ltx_text" id="A8.T8.4.1.23.10.1" style="font-size:90%;">0.999</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.23.11"><span class="ltx_text" id="A8.T8.4.1.23.11.1" style="font-size:90%;">5e-04</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.23.12"><span class="ltx_text" id="A8.T8.4.1.23.12.1" style="font-size:90%;">inv. block</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.23.13"><span class="ltx_text" id="A8.T8.4.1.23.13.1" style="font-size:90%;">65%</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.23.14"><span class="ltx_text" id="A8.T8.4.1.23.14.1" style="font-size:90%;">True</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.23.15"><span class="ltx_text" id="A8.T8.4.1.23.15.1" style="font-size:90%;">clustering</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.23.16"><span class="ltx_text" id="A8.T8.4.1.23.16.1" style="font-size:90%;">Linear</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.23.17"><span class="ltx_text" id="A8.T8.4.1.23.17.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.23.18"><span class="ltx_text" id="A8.T8.4.1.23.18.1" style="font-size:90%;">rope</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.23.19"><span class="ltx_text" id="A8.T8.4.1.23.19.1" style="font-size:90%;">modified</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.23.20"><span class="ltx_text" id="A8.T8.4.1.23.20.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.23.21"><span class="ltx_text" id="A8.T8.4.1.23.21.1" style="font-size:90%;">[60%,100%]</span></td>
</tr>
<tr class="ltx_tr" id="A8.T8.4.1.24">
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.24.1"><span class="ltx_text" id="A8.T8.4.1.24.1.1" style="font-size:90%;">M8319</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.24.2"><span class="ltx_text" id="A8.T8.4.1.24.2.1" style="font-size:90%;">P205</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.24.3"><span class="ltx_text" id="A8.T8.4.1.24.3.1" style="font-size:90%;">500k</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.24.4"><span class="ltx_text" id="A8.T8.4.1.24.4.1" style="font-size:90%;">14</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.24.5"><span class="ltx_text" id="A8.T8.4.1.24.5.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.24.6"><span class="ltx_text" id="A8.T8.4.1.24.6.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.24.7"><span class="ltx_text" id="A8.T8.4.1.24.7.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.24.8"><span class="ltx_text" id="A8.T8.4.1.24.8.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.24.9"><span class="ltx_text" id="A8.T8.4.1.24.9.1" style="font-size:90%;">1e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.24.10"><span class="ltx_text" id="A8.T8.4.1.24.10.1" style="font-size:90%;">0.999</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.24.11"><span class="ltx_text" id="A8.T8.4.1.24.11.1" style="font-size:90%;">5e-04</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.24.12"><span class="ltx_text" id="A8.T8.4.1.24.12.1" style="font-size:90%;">inv. block</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.24.13"><span class="ltx_text" id="A8.T8.4.1.24.13.1" style="font-size:90%;">65%</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.24.14"><span class="ltx_text" id="A8.T8.4.1.24.14.1" style="font-size:90%;">True</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.24.15"><span class="ltx_text" id="A8.T8.4.1.24.15.1" style="font-size:90%;">clustering</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.24.16"><span class="ltx_text" id="A8.T8.4.1.24.16.1" style="font-size:90%;">Linear</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.24.17"><span class="ltx_text" id="A8.T8.4.1.24.17.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.24.18"><span class="ltx_text" id="A8.T8.4.1.24.18.1" style="font-size:90%;">rope</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.24.19"><span class="ltx_text" id="A8.T8.4.1.24.19.1" style="font-size:90%;">modified</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.24.20"><span class="ltx_text" id="A8.T8.4.1.24.20.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.24.21"><span class="ltx_text" id="A8.T8.4.1.24.21.1" style="font-size:90%;">[60%,100%]</span></td>
</tr>
<tr class="ltx_tr" id="A8.T8.4.1.25">
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.25.1"><span class="ltx_text" id="A8.T8.4.1.25.1.1" style="font-size:90%;">Abe05</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.25.2"><span class="ltx_text" id="A8.T8.4.1.25.2.1" style="font-size:90%;">IN22k</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.25.3"><span class="ltx_text" id="A8.T8.4.1.25.3.1" style="font-size:90%;">25k</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.25.4"><span class="ltx_text" id="A8.T8.4.1.25.4.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.25.5"><span class="ltx_text" id="A8.T8.4.1.25.5.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.25.6"><span class="ltx_text" id="A8.T8.4.1.25.6.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.25.7"><span class="ltx_text" id="A8.T8.4.1.25.7.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.25.8"><span class="ltx_text" id="A8.T8.4.1.25.8.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.25.9"><span class="ltx_text" id="A8.T8.4.1.25.9.1" style="font-size:90%;">2e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.25.10"><span class="ltx_text" id="A8.T8.4.1.25.10.1" style="font-size:90%;">0.996</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.25.11"><span class="ltx_text" id="A8.T8.4.1.25.11.1" style="font-size:90%;">1e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.25.12"><span class="ltx_text" id="A8.T8.4.1.25.12.1" style="font-size:90%;">inv. block</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.25.13"><span class="ltx_text" id="A8.T8.4.1.25.13.1" style="font-size:90%;">65%</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.25.14"><span class="ltx_text" id="A8.T8.4.1.25.14.1" style="font-size:90%;">True</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.25.15"><span class="ltx_text" id="A8.T8.4.1.25.15.1" style="font-size:90%;">clustering</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.25.16"><span class="ltx_text" id="A8.T8.4.1.25.16.1" style="font-size:90%;">Linear</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.25.17"><span class="ltx_text" id="A8.T8.4.1.25.17.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.25.18"><span class="ltx_text" id="A8.T8.4.1.25.18.1" style="font-size:90%;">rope</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.25.19"><span class="ltx_text" id="A8.T8.4.1.25.19.1" style="font-size:90%;">modified</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.25.20"><span class="ltx_text" id="A8.T8.4.1.25.20.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.25.21"><span class="ltx_text" id="A8.T8.4.1.25.21.1" style="font-size:90%;">[60%,100%]</span></td>
</tr>
<tr class="ltx_tr" id="A8.T8.4.1.26">
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.26.1"><span class="ltx_text" id="A8.T8.4.1.26.1.1" style="font-size:90%;">Acd44</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.26.2"><span class="ltx_text" id="A8.T8.4.1.26.2.1" style="font-size:90%;">IN22k</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.26.3"><span class="ltx_text" id="A8.T8.4.1.26.3.1" style="font-size:90%;">50k</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.26.4"><span class="ltx_text" id="A8.T8.4.1.26.4.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.26.5"><span class="ltx_text" id="A8.T8.4.1.26.5.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.26.6"><span class="ltx_text" id="A8.T8.4.1.26.6.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.26.7"><span class="ltx_text" id="A8.T8.4.1.26.7.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.26.8"><span class="ltx_text" id="A8.T8.4.1.26.8.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.26.9"><span class="ltx_text" id="A8.T8.4.1.26.9.1" style="font-size:90%;">2e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.26.10"><span class="ltx_text" id="A8.T8.4.1.26.10.1" style="font-size:90%;">0.996</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.26.11"><span class="ltx_text" id="A8.T8.4.1.26.11.1" style="font-size:90%;">1e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.26.12"><span class="ltx_text" id="A8.T8.4.1.26.12.1" style="font-size:90%;">inv. block</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.26.13"><span class="ltx_text" id="A8.T8.4.1.26.13.1" style="font-size:90%;">65%</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.26.14"><span class="ltx_text" id="A8.T8.4.1.26.14.1" style="font-size:90%;">True</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.26.15"><span class="ltx_text" id="A8.T8.4.1.26.15.1" style="font-size:90%;">clustering</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.26.16"><span class="ltx_text" id="A8.T8.4.1.26.16.1" style="font-size:90%;">Linear</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.26.17"><span class="ltx_text" id="A8.T8.4.1.26.17.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.26.18"><span class="ltx_text" id="A8.T8.4.1.26.18.1" style="font-size:90%;">rope</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.26.19"><span class="ltx_text" id="A8.T8.4.1.26.19.1" style="font-size:90%;">modified</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.26.20"><span class="ltx_text" id="A8.T8.4.1.26.20.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.26.21"><span class="ltx_text" id="A8.T8.4.1.26.21.1" style="font-size:90%;">[60%,100%]</span></td>
</tr>
<tr class="ltx_tr" id="A8.T8.4.1.27">
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.27.1"><span class="ltx_text" id="A8.T8.4.1.27.1.1" style="font-size:90%;">A2ca8</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.27.2"><span class="ltx_text" id="A8.T8.4.1.27.2.1" style="font-size:90%;">IN22k</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.27.3"><span class="ltx_text" id="A8.T8.4.1.27.3.1" style="font-size:90%;">200k</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.27.4"><span class="ltx_text" id="A8.T8.4.1.27.4.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.27.5"><span class="ltx_text" id="A8.T8.4.1.27.5.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.27.6"><span class="ltx_text" id="A8.T8.4.1.27.6.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.27.7"><span class="ltx_text" id="A8.T8.4.1.27.7.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.27.8"><span class="ltx_text" id="A8.T8.4.1.27.8.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.27.9"><span class="ltx_text" id="A8.T8.4.1.27.9.1" style="font-size:90%;">2e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.27.10"><span class="ltx_text" id="A8.T8.4.1.27.10.1" style="font-size:90%;">0.996</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.27.11"><span class="ltx_text" id="A8.T8.4.1.27.11.1" style="font-size:90%;">1e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.27.12"><span class="ltx_text" id="A8.T8.4.1.27.12.1" style="font-size:90%;">inv. block</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.27.13"><span class="ltx_text" id="A8.T8.4.1.27.13.1" style="font-size:90%;">65%</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.27.14"><span class="ltx_text" id="A8.T8.4.1.27.14.1" style="font-size:90%;">True</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.27.15"><span class="ltx_text" id="A8.T8.4.1.27.15.1" style="font-size:90%;">clustering</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.27.16"><span class="ltx_text" id="A8.T8.4.1.27.16.1" style="font-size:90%;">Linear</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.27.17"><span class="ltx_text" id="A8.T8.4.1.27.17.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.27.18"><span class="ltx_text" id="A8.T8.4.1.27.18.1" style="font-size:90%;">rope</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.27.19"><span class="ltx_text" id="A8.T8.4.1.27.19.1" style="font-size:90%;">modified</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.27.20"><span class="ltx_text" id="A8.T8.4.1.27.20.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.27.21"><span class="ltx_text" id="A8.T8.4.1.27.21.1" style="font-size:90%;">[60%,100%]</span></td>
</tr>
<tr class="ltx_tr" id="A8.T8.4.1.28">
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.28.1"><span class="ltx_text" id="A8.T8.4.1.28.1.1" style="font-size:90%;">Aab94</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.28.2"><span class="ltx_text" id="A8.T8.4.1.28.2.1" style="font-size:90%;">IN1k</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.28.3"><span class="ltx_text" id="A8.T8.4.1.28.3.1" style="font-size:90%;">100k</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.28.4"><span class="ltx_text" id="A8.T8.4.1.28.4.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.28.5"><span class="ltx_text" id="A8.T8.4.1.28.5.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.28.6"><span class="ltx_text" id="A8.T8.4.1.28.6.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.28.7"><span class="ltx_text" id="A8.T8.4.1.28.7.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.28.8"><span class="ltx_text" id="A8.T8.4.1.28.8.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.28.9"><span class="ltx_text" id="A8.T8.4.1.28.9.1" style="font-size:90%;">2e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.28.10"><span class="ltx_text" id="A8.T8.4.1.28.10.1" style="font-size:90%;">0.996</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.28.11"><span class="ltx_text" id="A8.T8.4.1.28.11.1" style="font-size:90%;">1e-03</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.28.12"><span class="ltx_text" id="A8.T8.4.1.28.12.1" style="font-size:90%;">inv. block</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.28.13"><span class="ltx_text" id="A8.T8.4.1.28.13.1" style="font-size:90%;">65%</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.28.14"><span class="ltx_text" id="A8.T8.4.1.28.14.1" style="font-size:90%;">True</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.28.15"><span class="ltx_text" id="A8.T8.4.1.28.15.1" style="font-size:90%;">clustering</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.28.16"><span class="ltx_text" id="A8.T8.4.1.28.16.1" style="font-size:90%;">Linear</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.28.17"><span class="ltx_text" id="A8.T8.4.1.28.17.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.28.18"><span class="ltx_text" id="A8.T8.4.1.28.18.1" style="font-size:90%;">rope</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.28.19"><span class="ltx_text" id="A8.T8.4.1.28.19.1" style="font-size:90%;">modified</span></td>
<td class="ltx_td ltx_align_right" id="A8.T8.4.1.28.20"><span class="ltx_text" id="A8.T8.4.1.28.20.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_left" id="A8.T8.4.1.28.21"><span class="ltx_text" id="A8.T8.4.1.28.21.1" style="font-size:90%;">[60%,100%]</span></td>
</tr>
<tr class="ltx_tr" id="A8.T8.4.1.29">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A8.T8.4.1.29.1"><span class="ltx_text" id="A8.T8.4.1.29.1.1" style="font-size:90%;">Aa428</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A8.T8.4.1.29.2"><span class="ltx_text" id="A8.T8.4.1.29.2.1" style="font-size:90%;">LVD-142M</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A8.T8.4.1.29.3"><span class="ltx_text" id="A8.T8.4.1.29.3.1" style="font-size:90%;">100k</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A8.T8.4.1.29.4"><span class="ltx_text" id="A8.T8.4.1.29.4.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A8.T8.4.1.29.5"><span class="ltx_text" id="A8.T8.4.1.29.5.1" style="font-size:90%;">24</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A8.T8.4.1.29.6"><span class="ltx_text" id="A8.T8.4.1.29.6.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A8.T8.4.1.29.7"><span class="ltx_text" id="A8.T8.4.1.29.7.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A8.T8.4.1.29.8"><span class="ltx_text" id="A8.T8.4.1.29.8.1" style="font-size:90%;">1024</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A8.T8.4.1.29.9"><span class="ltx_text" id="A8.T8.4.1.29.9.1" style="font-size:90%;">2e-03</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A8.T8.4.1.29.10"><span class="ltx_text" id="A8.T8.4.1.29.10.1" style="font-size:90%;">0.996</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A8.T8.4.1.29.11"><span class="ltx_text" id="A8.T8.4.1.29.11.1" style="font-size:90%;">1e-03</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A8.T8.4.1.29.12"><span class="ltx_text" id="A8.T8.4.1.29.12.1" style="font-size:90%;">inv. block</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A8.T8.4.1.29.13"><span class="ltx_text" id="A8.T8.4.1.29.13.1" style="font-size:90%;">65%</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A8.T8.4.1.29.14"><span class="ltx_text" id="A8.T8.4.1.29.14.1" style="font-size:90%;">True</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A8.T8.4.1.29.15"><span class="ltx_text" id="A8.T8.4.1.29.15.1" style="font-size:90%;">clustering</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A8.T8.4.1.29.16"><span class="ltx_text" id="A8.T8.4.1.29.16.1" style="font-size:90%;">Linear</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A8.T8.4.1.29.17"><span class="ltx_text" id="A8.T8.4.1.29.17.1" style="font-size:90%;">CE</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A8.T8.4.1.29.18"><span class="ltx_text" id="A8.T8.4.1.29.18.1" style="font-size:90%;">rope</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A8.T8.4.1.29.19"><span class="ltx_text" id="A8.T8.4.1.29.19.1" style="font-size:90%;">modified</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A8.T8.4.1.29.20"><span class="ltx_text" id="A8.T8.4.1.29.20.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A8.T8.4.1.29.21"><span class="ltx_text" id="A8.T8.4.1.29.21.1" style="font-size:90%;">[60%,100%]</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table summarizes the different model configurations used throughout the paper. Each model is assigned a unique identifier ('uid').  The table details key hyperparameters that varied across the experiments, offering a comprehensive overview of the experimental setup and allowing readers to easily trace model variations discussed in the results.
> <details>
> <summary>read the caption</summary>
> Table 8: Summary of all models mentioned in the paper. We associate to each a unique uid, and detail the hyperparameters which are not constant across all runs.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A8.T9.4">
<tr class="ltx_tr" id="A8.T9.4.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A8.T9.4.1.1"><span class="ltx_text" id="A8.T9.4.1.1.1" style="font-size:90%;">Fig</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A8.T9.4.1.2"><span class="ltx_text" id="A8.T9.4.1.2.1" style="font-size:90%;">Models used</span></td>
</tr>
<tr class="ltx_tr" id="A8.T9.4.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A8.T9.4.2.1"><a class="ltx_ref" href="https://arxiv.org/html/2502.08769v1#S1.F1" style="font-size:90%;" title="In 1 Introduction ‣ Cluster and Predict Latents Patches for Improved Masked Image Modeling"><span class="ltx_text ltx_ref_tag">fig.</span> <span class="ltx_text ltx_ref_tag">1</span></a></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A8.T9.4.2.2"><span class="ltx_text" id="A8.T9.4.2.2.1" style="font-size:90%;">Meb2b, Mc2dd, M8c4d</span></td>
</tr>
<tr class="ltx_tr" id="A8.T9.4.3">
<td class="ltx_td ltx_align_left" id="A8.T9.4.3.1"><a class="ltx_ref" href="https://arxiv.org/html/2502.08769v1#S4.T1.st1" style="font-size:90%;" title="In Table 1 ‣ 4.1 Experimental setup ‣ 4 Experiments ‣ Cluster and Predict Latents Patches for Improved Masked Image Modeling"><span class="ltx_text ltx_ref_tag">table</span> <span class="ltx_text ltx_ref_tag">1(a)</span></a></td>
<td class="ltx_td ltx_align_left" id="A8.T9.4.3.2"><span class="ltx_text" id="A8.T9.4.3.2.1" style="font-size:90%;">Adcab, Ae3f9, Aa5a3, A7d26</span></td>
</tr>
<tr class="ltx_tr" id="A8.T9.4.4">
<td class="ltx_td ltx_align_left" id="A8.T9.4.4.1"><a class="ltx_ref" href="https://arxiv.org/html/2502.08769v1#S4.T1.st2" style="font-size:90%;" title="In Table 1 ‣ 4.1 Experimental setup ‣ 4 Experiments ‣ Cluster and Predict Latents Patches for Improved Masked Image Modeling"><span class="ltx_text ltx_ref_tag">table</span> <span class="ltx_text ltx_ref_tag">1(b)</span></a></td>
<td class="ltx_td ltx_align_left" id="A8.T9.4.4.2"><span class="ltx_text" id="A8.T9.4.4.2.1" style="font-size:90%;">Adcab, Ae3f9, A0dd4, A9b4a, A7cc0</span></td>
</tr>
<tr class="ltx_tr" id="A8.T9.4.5">
<td class="ltx_td ltx_align_left" id="A8.T9.4.5.1"><a class="ltx_ref" href="https://arxiv.org/html/2502.08769v1#S4.T1.st3" style="font-size:90%;" title="In Table 1 ‣ 4.1 Experimental setup ‣ 4 Experiments ‣ Cluster and Predict Latents Patches for Improved Masked Image Modeling"><span class="ltx_text ltx_ref_tag">table</span> <span class="ltx_text ltx_ref_tag">1(c)</span></a></td>
<td class="ltx_td ltx_align_left" id="A8.T9.4.5.2"><span class="ltx_text" id="A8.T9.4.5.2.1" style="font-size:90%;">Adcab, Ae3f9, A3bb3, A2fcb, Aeb48</span></td>
</tr>
<tr class="ltx_tr" id="A8.T9.4.6">
<td class="ltx_td ltx_align_left" id="A8.T9.4.6.1"><a class="ltx_ref" href="https://arxiv.org/html/2502.08769v1#S4.T1.st4" style="font-size:90%;" title="In Table 1 ‣ 4.1 Experimental setup ‣ 4 Experiments ‣ Cluster and Predict Latents Patches for Improved Masked Image Modeling"><span class="ltx_text ltx_ref_tag">table</span> <span class="ltx_text ltx_ref_tag">1(d)</span></a></td>
<td class="ltx_td ltx_align_left" id="A8.T9.4.6.2"><span class="ltx_text" id="A8.T9.4.6.2.1" style="font-size:90%;">Adcab, Ae3f9, A74f9, Ae7b3</span></td>
</tr>
<tr class="ltx_tr" id="A8.T9.4.7">
<td class="ltx_td ltx_align_left" id="A8.T9.4.7.1"><a class="ltx_ref" href="https://arxiv.org/html/2502.08769v1#S4.T1.st5" style="font-size:90%;" title="In Table 1 ‣ 4.1 Experimental setup ‣ 4 Experiments ‣ Cluster and Predict Latents Patches for Improved Masked Image Modeling"><span class="ltx_text ltx_ref_tag">table</span> <span class="ltx_text ltx_ref_tag">1(e)</span></a></td>
<td class="ltx_td ltx_align_left" id="A8.T9.4.7.2"><span class="ltx_text" id="A8.T9.4.7.2.1" style="font-size:90%;">Adcab, Ae3f9, A41b8, Ac8bc</span></td>
</tr>
<tr class="ltx_tr" id="A8.T9.4.8">
<td class="ltx_td ltx_align_left" id="A8.T9.4.8.1"><a class="ltx_ref" href="https://arxiv.org/html/2502.08769v1#S4.T1.st6" style="font-size:90%;" title="In Table 1 ‣ 4.1 Experimental setup ‣ 4 Experiments ‣ Cluster and Predict Latents Patches for Improved Masked Image Modeling"><span class="ltx_text ltx_ref_tag">table</span> <span class="ltx_text ltx_ref_tag">1(f)</span></a></td>
<td class="ltx_td ltx_align_left" id="A8.T9.4.8.2"><span class="ltx_text" id="A8.T9.4.8.2.1" style="font-size:90%;">Adcab, Ae3f9, Af989, A2da0</span></td>
</tr>
<tr class="ltx_tr" id="A8.T9.4.9">
<td class="ltx_td ltx_align_left" id="A8.T9.4.9.1"><a class="ltx_ref" href="https://arxiv.org/html/2502.08769v1#S4.T1.st7" style="font-size:90%;" title="In Table 1 ‣ 4.1 Experimental setup ‣ 4 Experiments ‣ Cluster and Predict Latents Patches for Improved Masked Image Modeling"><span class="ltx_text ltx_ref_tag">table</span> <span class="ltx_text ltx_ref_tag">1(g)</span></a></td>
<td class="ltx_td ltx_align_left" id="A8.T9.4.9.2"><span class="ltx_text" id="A8.T9.4.9.2.1" style="font-size:90%;">Adcab, Ae3f9, A9ce8</span></td>
</tr>
<tr class="ltx_tr" id="A8.T9.4.10">
<td class="ltx_td ltx_align_left" id="A8.T9.4.10.1"><a class="ltx_ref" href="https://arxiv.org/html/2502.08769v1#S4.T1.st8" style="font-size:90%;" title="In Table 1 ‣ 4.1 Experimental setup ‣ 4 Experiments ‣ Cluster and Predict Latents Patches for Improved Masked Image Modeling"><span class="ltx_text ltx_ref_tag">table</span> <span class="ltx_text ltx_ref_tag">1(h)</span></a></td>
<td class="ltx_td ltx_align_left" id="A8.T9.4.10.2"><span class="ltx_text" id="A8.T9.4.10.2.1" style="font-size:90%;">Adcab, Ae3f9, A1177</span></td>
</tr>
<tr class="ltx_tr" id="A8.T9.4.11">
<td class="ltx_td ltx_align_left" id="A8.T9.4.11.1"><a class="ltx_ref" href="https://arxiv.org/html/2502.08769v1#S4.T1.st9" style="font-size:90%;" title="In Table 1 ‣ 4.1 Experimental setup ‣ 4 Experiments ‣ Cluster and Predict Latents Patches for Improved Masked Image Modeling"><span class="ltx_text ltx_ref_tag">table</span> <span class="ltx_text ltx_ref_tag">1(i)</span></a></td>
<td class="ltx_td ltx_align_left" id="A8.T9.4.11.2"><span class="ltx_text" id="A8.T9.4.11.2.1" style="font-size:90%;">Adcab, Ae3f9, A72fb</span></td>
</tr>
<tr class="ltx_tr" id="A8.T9.4.12">
<td class="ltx_td ltx_align_left" id="A8.T9.4.12.1"><a class="ltx_ref" href="https://arxiv.org/html/2502.08769v1#S4.SS3" style="font-size:90%;" title="4.3 Results ‣ 4 Experiments ‣ Cluster and Predict Latents Patches for Improved Masked Image Modeling"><span class="ltx_text ltx_ref_tag">section</span> <span class="ltx_text ltx_ref_tag">4.3</span></a></td>
<td class="ltx_td ltx_align_left" id="A8.T9.4.12.2"><span class="ltx_text" id="A8.T9.4.12.2.1" style="font-size:90%;">Meb2b, M5e2e, M2d34, M8319</span></td>
</tr>
<tr class="ltx_tr" id="A8.T9.4.13">
<td class="ltx_td ltx_align_left" id="A8.T9.4.13.1"><a class="ltx_ref" href="https://arxiv.org/html/2502.08769v1#S4.SS3" style="font-size:90%;" title="4.3 Results ‣ 4 Experiments ‣ Cluster and Predict Latents Patches for Improved Masked Image Modeling"><span class="ltx_text ltx_ref_tag">section</span> <span class="ltx_text ltx_ref_tag">4.3</span></a></td>
<td class="ltx_td ltx_align_left" id="A8.T9.4.13.2"><span class="ltx_text" id="A8.T9.4.13.2.1" style="font-size:90%;">Meb2b, M5e2e, M2d34, M8319</span></td>
</tr>
<tr class="ltx_tr" id="A8.T9.4.14">
<td class="ltx_td ltx_align_left" id="A8.T9.4.14.1"><a class="ltx_ref" href="https://arxiv.org/html/2502.08769v1#S4.T4" style="font-size:90%;" title="In 4.4 Additional explorations ‣ 4.3 Results ‣ 4 Experiments ‣ Cluster and Predict Latents Patches for Improved Masked Image Modeling"><span class="ltx_text ltx_ref_tag">table</span> <span class="ltx_text ltx_ref_tag">4</span></a></td>
<td class="ltx_td ltx_align_left" id="A8.T9.4.14.2"><span class="ltx_text" id="A8.T9.4.14.2.1" style="font-size:90%;">Meb2b</span></td>
</tr>
<tr class="ltx_tr" id="A8.T9.4.15">
<td class="ltx_td ltx_align_left" id="A8.T9.4.15.1"><a class="ltx_ref" href="https://arxiv.org/html/2502.08769v1#S4.F7" style="font-size:90%;" title="In 4.4 Additional explorations ‣ 4.3 Results ‣ 4 Experiments ‣ Cluster and Predict Latents Patches for Improved Masked Image Modeling"><span class="ltx_text ltx_ref_tag">fig.</span> <span class="ltx_text ltx_ref_tag">7</span></a></td>
<td class="ltx_td ltx_align_left" id="A8.T9.4.15.2"><span class="ltx_text" id="A8.T9.4.15.2.1" style="font-size:90%;">Meb2b</span></td>
</tr>
<tr class="ltx_tr" id="A8.T9.4.16">
<td class="ltx_td ltx_align_left" id="A8.T9.4.16.1"><a class="ltx_ref" href="https://arxiv.org/html/2502.08769v1#S4.T5" style="font-size:90%;" title="In 4.4 Additional explorations ‣ 4.3 Results ‣ 4 Experiments ‣ Cluster and Predict Latents Patches for Improved Masked Image Modeling"><span class="ltx_text ltx_ref_tag">table</span> <span class="ltx_text ltx_ref_tag">5</span></a></td>
<td class="ltx_td ltx_align_left" id="A8.T9.4.16.2"><span class="ltx_text" id="A8.T9.4.16.2.1" style="font-size:90%;">Meb2b</span></td>
</tr>
<tr class="ltx_tr" id="A8.T9.4.17">
<td class="ltx_td ltx_align_left" id="A8.T9.4.17.1"><a class="ltx_ref" href="https://arxiv.org/html/2502.08769v1#S4.F6" style="font-size:90%;" title="In 4.2 Ablation Studies ‣ 4 Experiments ‣ Cluster and Predict Latents Patches for Improved Masked Image Modeling"><span class="ltx_text ltx_ref_tag">fig.</span> <span class="ltx_text ltx_ref_tag">6</span></a></td>
<td class="ltx_td ltx_align_left" id="A8.T9.4.17.2"><span class="ltx_text" id="A8.T9.4.17.2.1" style="font-size:90%;">Adcab, Ae3f9, Abe05, Acd44, A2ca8, Adcab, Ae3f9, Aab94, Aa428</span></td>
</tr>
<tr class="ltx_tr" id="A8.T9.4.18">
<td class="ltx_td ltx_align_left" id="A8.T9.4.18.1"><a class="ltx_ref" href="https://arxiv.org/html/2502.08769v1#A2.F10" style="font-size:90%;" title="In Appendix B Loss curve ‣ Acknowledgments ‣ 5 Discussion and Concluding Remarks ‣ 4.4 Additional explorations ‣ 4.3 Results ‣ 4 Experiments ‣ Cluster and Predict Latents Patches for Improved Masked Image Modeling"><span class="ltx_text ltx_ref_tag">fig.</span> <span class="ltx_text ltx_ref_tag">10</span></a></td>
<td class="ltx_td ltx_align_left" id="A8.T9.4.18.2"><span class="ltx_text" id="A8.T9.4.18.2.1" style="font-size:90%;">Meb2b</span></td>
</tr>
<tr class="ltx_tr" id="A8.T9.4.19">
<td class="ltx_td ltx_align_left" id="A8.T9.4.19.1"><a class="ltx_ref" href="https://arxiv.org/html/2502.08769v1#A9.F13" style="font-size:90%;" title="In Appendix I Visualisations ‣ Acknowledgments ‣ 5 Discussion and Concluding Remarks ‣ 4.4 Additional explorations ‣ 4.3 Results ‣ 4 Experiments ‣ Cluster and Predict Latents Patches for Improved Masked Image Modeling"><span class="ltx_text ltx_ref_tag">fig.</span> <span class="ltx_text ltx_ref_tag">13</span></a></td>
<td class="ltx_td ltx_align_left" id="A8.T9.4.19.2"><span class="ltx_text" id="A8.T9.4.19.2.1" style="font-size:90%;">Meb2b</span></td>
</tr>
<tr class="ltx_tr" id="A8.T9.4.20">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A8.T9.4.20.1"><a class="ltx_ref" href="https://arxiv.org/html/2502.08769v1#A9.F12" style="font-size:90%;" title="In Appendix I Visualisations ‣ Acknowledgments ‣ 5 Discussion and Concluding Remarks ‣ 4.4 Additional explorations ‣ 4.3 Results ‣ 4 Experiments ‣ Cluster and Predict Latents Patches for Improved Masked Image Modeling"><span class="ltx_text ltx_ref_tag">fig.</span> <span class="ltx_text ltx_ref_tag">12</span></a></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A8.T9.4.20.2"><span class="ltx_text" id="A8.T9.4.20.2.1" style="font-size:90%;">Meb2b</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table provides a cross-reference between the models used throughout the paper and their appearances in various figures and tables.  It's a helpful guide for navigating the different model configurations and their corresponding results presented in the paper. Each row identifies a model by a unique alphanumeric code, then lists the figures and/or tables in which that model's results are shown.
> <details>
> <summary>read the caption</summary>
> Table 9: Reference of models used in different figures and tables.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.08769/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08769/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08769/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08769/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08769/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08769/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08769/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08769/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08769/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08769/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08769/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08769/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08769/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08769/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08769/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08769/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08769/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08769/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08769/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.08769/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}