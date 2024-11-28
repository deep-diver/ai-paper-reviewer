---
title: "UniPose: A Unified Multimodal Framework for Human Pose Comprehension, Generation and Editing"
summary: "UniPose: A unified multimodal framework for human pose comprehension, generation, and editing, enabling seamless transitions across various modalities and showcasing zero-shot generalization."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 University of Chinese Academy of Sciences",]
showSummary: true
date: 2024-11-25
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2411.16781 {{< /keyword >}}
{{< keyword icon="writer" >}} Yiheng Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-11-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2411.16781" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2411.16781" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/unipose-a-unified-multimodal-framework-for" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2411.16781/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current human pose research often focuses on single modalities (e.g., image-to-pose) or individual tasks (e.g., generation only).  This isolation limits real-world applicability.  A unified approach is needed to better understand and interact with human poses in diverse contexts.  There is a need for a framework that can seamlessly handle different input and output types and transfer knowledge effectively between related tasks. 

UniPose, a novel framework, uses Large Language Models (LLMs) to process various modalities (images, text, 3D poses). It employs a pose tokenizer to unify representation and a mixed-attention mechanism in LLMs to handle diverse relationships between different data types.  This unified approach enables UniPose to achieve strong performance across several tasks (comprehension, generation, editing) and demonstrate zero-shot generalization capabilities.  Results show UniPose outperforms existing methods and opens exciting avenues in human-computer interaction and related fields.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} UniPose is the first unified multimodal framework handling human pose comprehension, generation, and editing across images, text, and 3D poses. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} UniPose employs a novel pose tokenizer and a mixed-attention mechanism in LLMs to achieve unified representation and processing. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} UniPose demonstrates zero-shot generalization capabilities, outperforming existing methods in multiple pose-relevant tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it presents **UniPose**, the first unified multimodal framework for human pose tasks. This addresses a critical limitation in current research by enabling seamless transitions between different modalities (images, text, 3D poses), thus opening **new avenues for research** in human-computer interaction, virtual reality, and healthcare.  Its **zero-shot generalization capabilities** are particularly noteworthy, signifying significant progress in the field.

------
#### Visual Insights



![](https://arxiv.org/html/2411.16781/x2.png)

> 🔼 This figure illustrates the unified multimodal framework of UniPose.  UniPose is designed to handle three main categories of human pose tasks: comprehension, generation, and editing.  The diagram shows examples of each task type, demonstrating how UniPose utilizes various input modalities (images, text, 3D poses) and outputs corresponding results.  It highlights the framework's ability to seamlessly transition between these task types with different instructions.
> <details>
> <summary>read the caption</summary>
> Figure 1: UniPose can handle pose comprehension, generation and editing tasks under different instructions within a unified framework.
> </details>





{{< table-caption >}}
| Tasks | Pose Comprehension | Pose Comprehension | Pose Comprehension | Pose Comprehension | Pose Generation | Pose Generation | Pose Editing |
|---|---|---|---|---|---|---|---| 
|  | Pose-to-Text | Image-to-Text | Pose-Diff | Image-Diff | Text-to-Pose | Pose Estimation |  |
| Input→Output | Pose→Text | Image→Text | Pose Pair→Text | Image Pair→Text | Text→Pose | Image→Pose | Pose&Text→Pose |
| HMR 2.0 [23] | ✘ | ✘ | ✘ | ✘ | ✘ | ✔ | ✘ |
| PoseScript [14] | ✔ | ✘ | ✘ | ✘ | ✔ | ✘ | ✘ |
| PoseFix [13] | ✘ | ✘ | ✔ | ✘ | ✘ | ✘ | ✔ |
| ChatPose [18] | ✘ | ✔ | ✘ | ✘ | ✔ | ✔ | ✘ |
| ChatHuman [41] | ✘ | ✔ | ✘ | ✘ | ✔ | ✔ | ✘ |
| UniPose (Ours) | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ | ✔ |{{< /table-caption >}}

> 🔼 This table compares several recent methods in human pose estimation, focusing on their capabilities across three key tasks: pose comprehension, pose generation, and pose editing.  For each method, it indicates whether it supports various input modalities (such as images and text) for each task and shows the method's ability to perform different sub-tasks within each category (e.g., image-to-text, text-to-pose).  This allows for a direct comparison of the strengths and weaknesses of different approaches to human pose understanding and manipulation.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of recent methods across various pose comprehension, generation and editing tasks.
> </details>





### In-depth insights


#### Multimodal Pose AI
Multimodal Pose AI represents a significant advancement in computer vision and human-computer interaction.  It moves beyond traditional single-modality approaches (like only images or text) by integrating diverse data sources such as images, videos, 3D body scans, and textual descriptions to achieve a more holistic understanding of human pose. **This multimodal approach is crucial for robust and generalizable pose estimation**, because it allows the AI to learn from richer contextual information, leading to improved accuracy and adaptability across varied scenarios and viewpoints.  A key challenge is effectively fusing data from disparate modalities; a successful framework must seamlessly integrate heterogeneous data types into a unified representation that is easily processed by the AI model.  **The use of large language models (LLMs) is emerging as a powerful solution**, as LLMs excel at processing and generating natural language, enabling more intuitive interaction and a richer understanding of complex pose characteristics that may be subtle or hard to capture using only visual data.  **The potential applications of Multimodal Pose AI are vast**, ranging from improved virtual and augmented reality experiences to more sophisticated healthcare diagnostics and personalized fitness applications. However, challenges remain in efficiently processing and integrating complex multimodal data, addressing potential biases from the training data and ensuring the ethical use of this powerful technology.

#### Unified LLM Framework
A unified LLM framework for human pose presents a significant advancement in multimodal human pose understanding.  **The core innovation lies in its ability to seamlessly integrate diverse modalities**—text, images, and 3D poses—within a single, unified architecture. This is achieved by employing a pose tokenizer to convert 3D poses into a discrete token representation, enabling direct incorporation into the LLM's vocabulary.  This unified representation space is crucial, **allowing the model to effectively transfer knowledge across various pose-related tasks**. The framework is not merely limited to comprehension but also extends to generation and editing capabilities, demonstrating a **general-purpose adaptability not found in previous, isolated approaches**. The use of a mixed-attention mechanism further optimizes the handling of sequential and non-sequential data, enhancing the model's performance in tasks involving complex relationships between poses.  This **unified framework ultimately promises robust, versatile, and generalizable solutions** for diverse real-world applications that require sophisticated human pose analysis.

#### Pose Tokenization
Pose tokenization, as a concept within human pose estimation, presents a powerful approach to bridge the gap between continuous pose data and discrete language models.  The core idea is to **transform high-dimensional, continuous pose representations (such as SMPL parameters) into a sequence of discrete tokens.**  This discretization allows for seamless integration with language models, facilitating multimodal tasks such as pose comprehension and generation.  A well-designed pose tokenizer is crucial; it must **preserve the semantic information present in the original pose data** while also allowing for efficient processing by the language model.  The choice of encoding method significantly impacts performance.  **Vector Quantized Variational Autoencoders (VQ-VAEs) are a popular choice**, as they can learn a discrete codebook of pose representations that capture the underlying structure of the data.  Furthermore, the **training process for the tokenizer is critical**, with various loss functions and techniques (e.g., reconstruction loss, embedding loss) being employed to optimize for both data fidelity and the ability of the tokens to be effectively used by the language model.  The ultimate success of pose tokenization hinges on the ability to **effectively transfer knowledge between the pose representation and the language model**, enabling the language model to understand and generate pose-related text descriptions accurately and comprehensively.  The quality of the resulting tokenization significantly affects downstream tasks like pose editing and generation, underscoring the importance of a carefully designed and trained pose tokenizer.

#### Visual Encoding
Visual encoding in the context of human pose estimation is crucial for effectively representing image data in a format that a machine learning model can understand and process.  **Effective visual encoding must capture fine-grained details of human poses**, which are often subtle and vary significantly across different individuals, viewpoints, and actions.  Traditional methods may use convolutional neural networks (CNNs) to extract features directly from image pixels. However, **these approaches often lack the capacity to fully understand pose-relevant information**, particularly concerning complex relationships between body parts and the overall posture.  More advanced approaches might leverage visual transformers (ViTs), which are better at handling long-range dependencies and capturing global context.  **A key challenge is to find a balance between detailed local information and overall global understanding.**  Furthermore, the encoding scheme should be compatible with other modalities, such as text descriptions, to enable multimodal analysis and integration.  For instance, an effective visual encoding could incorporate a pose-specific visual encoder trained on a large-scale dataset of human pose annotations, combining its features with those of a general-purpose visual encoder.  This hybrid approach could leverage the strengths of both to achieve a more comprehensive and robust pose representation.

#### Zero-shot Learning
Zero-shot learning, in the context of human pose estimation, signifies a model's capacity to generalize to unseen tasks or data without explicit training.  This is a highly desirable characteristic, as it implies **robustness and adaptability**, crucial for real-world applications where encountering novel situations is inevitable.  A successful zero-shot model leverages knowledge learned from previously seen data to make informed predictions on unfamiliar inputs. This ability greatly reduces the reliance on extensive labeled datasets for every possible scenario, thus **significantly decreasing the cost and effort** associated with model development and deployment.  However, achieving true zero-shot performance remains challenging. The success hinges on the model's ability to extract meaningful features, creating a rich representation space that effectively captures underlying relationships between different data modalities (such as images and text).  **Effective feature engineering** and the adoption of architectures that promote knowledge transfer between tasks are paramount.  Furthermore, the incorporation of strong prior knowledge or inductive biases can enhance a model's capacity to generalize, facilitating zero-shot capabilities.  Research in this area often involves exploring novel network designs, loss functions, or the integration of external knowledge sources to improve zero-shot performance. The ultimate goal is to develop models that exhibit human-like generalization abilities, readily adapting to new situations with minimal or no additional training data.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2411.16781/x3.png)

> 🔼 UniPose is a unified multimodal framework for human pose that uses three main components: a pose tokenizer to convert 3D poses into discrete tokens, a visual processor to extract relevant features from images, and a pose-aware large language model (LLM) to integrate the information and perform the tasks.  The framework jointly models pose comprehension, generation, and editing by combining pose tokens, visual embeddings, and text tokens within a unified visual-language backbone.
> <details>
> <summary>read the caption</summary>
> Figure 2: Method overview: UniPose comprises a Pose Tokenizer, Visual Processor and a pose-aware language LLM. Combining Pose Tokens learned by pose tokenizer, Visual Embeddings from visual processor and Text Tokens from text tokenizer, UniPose enables joint modeling of pose comprehension, generation and editing within a unified visual-language backbone.
> </details>



![](https://arxiv.org/html/2411.16781/x4.png)

> 🔼 This figure illustrates the training process of the UniPose model's first stage, called 'Pose-Text Alignment Pretraining'.  In this stage, the model learns to align text and pose modalities by training on several tasks involving these modalities: Pose-to-Text, Pose-Diff, Text-to-Pose, and Pose Editing. The figure showcases the architecture of the model, showing how visual and textual inputs are processed by the model, highlighting the various components and their interactions. The illustration also likely shows the overall workflow of information flow within the model architecture during this specific training phase. 
> <details>
> <summary>read the caption</summary>
> (a) Pose-Text Alignment Pretraining Stage.
> </details>



![](https://arxiv.org/html/2411.16781/x5.png)

> 🔼 This stage of the UniPose training process focuses on aligning image features with the unified text-pose embedding space.  It uses a combination of CLIP and a pose-specific vision transformer to extract visual features. The goal is to enable the large language model (LLM) to effectively understand and generate poses from image inputs, refining the visual representation to better match the textual information.
> <details>
> <summary>read the caption</summary>
> (b) Visual Projector Pretraining Stage.
> </details>



![](https://arxiv.org/html/2411.16781/x6.png)

> 🔼 This stage fine-tunes the visual processor and LLM using a multitask, multimodal instruction dataset.  The dataset contains 200 instruction templates per task, allowing the model to better understand and follow instructions for various pose-related tasks. This fine-tuning process improves the model's ability to handle a wider range of instructions and perform well on unseen tasks.
> <details>
> <summary>read the caption</summary>
> (c) Instruction Finetuning Stage.
> </details>



![](https://arxiv.org/html/2411.16781/x7.png)

> 🔼 This figure illustrates the three-stage training process for UniPose.  The first stage focuses on aligning pose and text modalities using a pose tokenizer and language model. The second stage pre-trains a visual processor to align visual and text embeddings. The third stage fine-tunes the entire model on various pose-related tasks using instructions, enhancing its instruction-following capabilities and unifying its understanding of pose across different modalities.
> <details>
> <summary>read the caption</summary>
> Figure 3: The training paradigm of UniPose.
> </details>



![](https://arxiv.org/html/2411.16781/x8.png)

> 🔼 Table 5 presents the results of the pose editing task.  The experiment evaluates UniPose's performance on the PoseFix dataset, a benchmark that focuses on editing 3D human poses based on textual instructions. Three key metrics assess the accuracy of the pose corrections: Mean Per Joint Position Error (MPJPE), which measures the average error in the position of each joint; PA-MPJPE (Pose-Aware MPJPE), a metric that is less sensitive to global pose differences; and Frechet Inception Distance (FID), which quantifies the similarity between the distribution of generated and ground-truth poses.  Lower values for MPJPE and PA-MPJPE, and a lower FID, indicate better performance.
> <details>
> <summary>read the caption</summary>
> Table 5: Comparisons on pose editing task. Reconstruction metrics are reported on PoseFix [13] dataset.
> </details>



![](https://arxiv.org/html/2411.16781/x10.png)

> 🔼 This ablation study investigates the impact of different visual processor components on the overall performance of the UniPose model. It compares the model's performance using different combinations of visual encoders (CLIP-ViT, Pose-ViT), analyzing their individual contributions to tasks such as pose estimation, image-to-text generation, and other relevant metrics. The results highlight the importance of specific encoders or their combination for achieving optimal performance on various downstream tasks.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation study on the components of the visual processor.
> </details>



![](https://arxiv.org/html/2411.16781/x11.png)

> 🔼 This figure shows a comparison of the image-to-text task performance between UniPose, Qwen-VL, and GPT-4.  It highlights the ability of UniPose to generate more detailed and accurate descriptions of human poses in images compared to the other two models. The examples illustrate UniPose's superior performance in capturing nuanced details about pose and body orientation.
> <details>
> <summary>read the caption</summary>
> (a) Comparison with Qwen-VL [4] and GPT-4o [1] on Image-to-Text task.
> </details>



![](https://arxiv.org/html/2411.16781/x12.png)

> 🔼 This figure shows a qualitative comparison of UniPose and GPT-4's performance on the Image-Diff task. Image-Diff involves generating a textual description of the differences between two human poses shown in a pair of images. The figure highlights the differences in the quality of descriptions generated by UniPose and GPT-4 by presenting an example where UniPose produced a more accurate and detailed description.
> <details>
> <summary>read the caption</summary>
> (b) Comparison with GPT-4o [1] on Image-Diff task.
> </details>



![](https://arxiv.org/html/2411.16781/x13.png)

> 🔼 Figure 4 presents examples of UniPose's performance on image-based pose comprehension tasks, namely Image-to-Text and Image-Diff.  The Image-to-Text task involves generating a textual description of a human pose from a single image. The Image-Diff task focuses on generating a textual comparison of the differences between two human poses depicted in separate images.  For both tasks, UniPose's outputs are compared to those from other models, with incorrect captions highlighted in red and correct ones in green.  The figure visually demonstrates UniPose's superior ability to accurately capture and describe fine-grained details of human poses, particularly concerning body orientation, as evidenced by its more accurate captions.
> <details>
> <summary>read the caption</summary>
> Figure 4: Examples on Image-to-Text and Image-Diff tasks. We mark incorrect captions in red and correct in green. UniPose can accurately perceive a person’s orientation from images.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Task | Dataset | Method | R-Precision ↑ |  |  | Linguistic metrics ↑ |  |  |  |
|---|---|---|---|---|---|---|---|---|---|
| Pose-to-Text | PoseScript [14] | PoseScript [14] | **91.6** | **95.6** | 97.0 | **12.9** | **33.9** | **34.2** |  |
|  |  | UniPose † | 18.1 | 30.0 | 39.1 | 10.8 | 30.1 | 29.5 |  |
|  |  | UniPose | 85.6 | 95.2 | **97.6** | 12.1 | 33.3 | 30.8 |  |
| Pose-Diff | PoseFix [13] | PoseFix [13] | 64.6 | 77.1 | 83.0 | 12.0 | 33.5 | **36.7** |  |
|  |  | UniPose † | 8.4 | 14.6 | 19.2 | 8.5 | 28.2 | 27.3 |  |
|  |  | UniPose | **67.9** | **81.8** | **88.6** | **13.8** | **33.7** | 31.2 |  |
| Image-to-Text | ImageScript | LLaVA [43] | 5.7 | 12.0 | 18.9 | 3.2 | 21.8 | 32.9 |  |
|  |  | Qwen-VL [4] | 8.9 | 15.6 | 19.8 | 1.4 | 15.9 | 21.6 |  |
|  |  | GPT4V [1] | 17.7 | 24.0 | 32.3 | 7.1 | 29.1 | 34.2 |  |
|  |  | UniPose † | 22.4 | 32.8 | 41.2 | **18.2** | **42.4** | **45.2** |  |
|  |  | UniPose | **24.5** | **35.4** | **43.2** | **18.2** | **42.5** | 44.7 |  |
| Image-Diff | ImageDiff | GPT4V [1] | 7.3 | 13.5 | 18.8 | 1.3 | 16.1 | 21.8 |  |
|  |  | UniPose † | 13.0 | 18.8 | 26.4 | 14.0 | 34.1 | 40.1 |  |
|  |  | UniPose | **13.5** | **25.0** | **33.8** | **15.9** | **36.5** | **39.6** | {{< /table-caption >}}
> 🔼 This table presents a comparison of different methods' performance on pose comprehension tasks.  It assesses both the accuracy of pose retrieval (R-Precision) and the quality of generated textual descriptions (linguistic metrics such as BLEU, ROUGE-L, and METEOR).  The comparison is done across various datasets (PoseScript, PoseFix, ImageScript, ImageDiff) to show the generalizability of the methods.  The UniPose† results show performance when the UniPose model is trained only on the specific task being evaluated, highlighting its performance when trained specifically for each task compared to its performance when trained on multiple tasks.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparisons on pose comprehension tasks. We compare the pose-retrieval precision (R-Precision) and linguistic metrics on various datasets. UniPose ††\dagger† represents training UniPose on the single corresponding task.
> </details>

{{< table-caption >}}
| Method | R<sup>T2P</sup>↑ Top-5 | R<sup>T2P</sup>↑ Top-10 | R<sup>T2P</sup>↑ Top-20 | R<sup>P2T</sup>↑ Top-5 | R<sup>P2T</sup>↑ Top-10 | R<sup>P2T</sup>↑ Top-20 | Pose Reconstruction Metric ↓ MPJPE | Pose Reconstruction Metric ↓ PA-MPJPE | Pose Reconstruction Metric ↓ FID |
|---|---|---|---|---|---|---|---|---|---|
| PoseScript [14] | 73.3 | **82.5** | 89.4 | 70.0 | **82.5** | 87.4 | 318.0 | **161.3** | 0.075 |
| ChatPose [18] | 17.6 | 25.3 | 35.8 | 28.0 | 39.0 | 54.4 | - | - | - |
| ChatHuman [41] | 41.8 | 52.6 | 65.1 | 42.1 | 52.3 | 66.5 | - | - | - |
| UniPose † | 67.5 | 77.6 | 85.5 | 62.8 | 74.8 | 83.6 | 342.7 | 190.0 | 0.046 |
| UniPose | **73.7** | 82.4 | **89.6** | **70.9** | 80.5 | **89.6** | **308.6** | 171.1 | **0.038** |{{< /table-caption >}}
> 🔼 This table presents the results of the Text-to-Pose generation task, a key component of the UniPose model.  It compares UniPose's performance against other state-of-the-art methods on the PoseScript dataset. The evaluation metrics include retrieval metrics (Top-5, Top-10, Top-20 for both RT2P and RP2T, reflecting the accuracy of pose retrieval based on text descriptions) and reconstruction metrics (MPJPE, PA-MPJPE, and FID, measuring the difference between generated and ground-truth 3D poses).  The table helps assess UniPose's ability to accurately generate human poses from textual descriptions.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparisons on Text-to-Pose generation task. The retrieval and reconstruction metrics are reported on PoseScript [14] dataset.
> </details>

{{< table-caption >}}
| Method | 3DPW [61] ↓ |  | H36M [29] ↓ |  | 
|---|---|---|---|---| 
| MPJPE | PA-MPJPE | MPJPE | PA-MPJPE |  | 
| HMR [33] | 130.0 | 76.7 | 88.0 | 56.8 | 
| PyMAF [75] | 92.8 | 58.9 | 57.7 | 40.5 | 
| SMPLer [70] | 73.7 | 43.4 | 45.2 | **32.4** | 
| HMR2.0 [23] | 70.0 | 44.5 | **44.8** | 33.6 | 
| Zolly [64] | 76.2 | 47.9 | 49.4 | 32.3 | 
| MEGA [20] | **67.5** | **41.0** | - | - | 
| TokenHMR [15] | 71.0 | 44.3 | - | - | 
| ChatPose [18] | 163.6 | 81.9 | 126.0 | 82.4 | 
| UniPose † | 97.4 | 61.2 | **65.8** | **39.4** | 
| UniPose | **94.7** | **59.1** | 69.2 | 41.8 |{{< /table-caption >}}
> 🔼 Table 4 presents a comparison of different methods for the human pose estimation task.  The table shows the mean per-joint position error (MPJPE) and the Procrustes aligned MPJPE (PA-MPJPE), which are reconstruction error metrics, for several methods on two widely used datasets: 3DPW and Human3.6M. Lower values indicate better performance in accurately estimating 3D human poses from images.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparisons on pose estimation task. Reconstruction metrics are reported on the 3DPW and Human3.6M datasets.
> </details>

{{< table-caption >}}
| Method | MPJPE ↓ | PA-MPJPE ↓ | FID ↓ |
|---|---|---|---|
| PoseFix [13] | 300.2 | 144.1 | 0.019 |
| UniPose † | 310.8 | 157.0 | 0.019 |
| UniPose | **270.3** | **138.9** | **0.015** |{{< /table-caption >}}
> 🔼 This table presents an ablation study comparing the performance of different attention mechanisms in the UniPose model. Specifically, it contrasts the use of causal attention versus mixed attention (a combination of causal and bidirectional attention).  The study evaluates these approaches across two key tasks: Text-to-Pose (generating a 3D pose from a textual description) and Pose-to-Text (generating a textual description from a 3D pose). The results are assessed using standard metrics for both tasks, including retrieval performance (RT2P and RP2T) and linguistic quality (BLEU-4, ROUGE-L, and METEOR).  The table also includes the inference latency (time taken to perform the task) for each method.  This analysis helps determine which attention mechanism is more effective for each task in UniPose.
> <details>
> <summary>read the caption</summary>
> Table 7: Ablation study on different attention mechanisms.
> </details>

{{< table-caption >}}
| CLIP-ViT | Pose-ViT | Pose Estimation ↓ | Image-to-Text ↑ |  |  |  |
|---|---|---|---|---|---|---|
|  |  | MPJPE | PA-MPJPE | BLEU-4 | ROUGE-L | METEOR |
| ✔ | ✘ | 193.4 | 86.1 | 11.1 | 30.2 | 33.9 |
| ✔ | ✔ | **96.1** | **58.9** | **13.3** | **31.7** | **35.2** |{{< /table-caption >}}
> 🔼 This table details the datasets used for training the UniPose model.  It breaks down the data used in each training stage: Pose-Text Alignment Pretraining, Visual Projector Pretraining, and Instruction Finetuning.  For each stage, it lists the specific datasets used (PoseScript-A, PoseFix-A, ImageScript-A, ImageDiff-A, PoseEst, PoseScript-H, PoseFix-H, ImageScript-R, ImageDiff-R), along with the number of samples in each.  The PoseScript and PoseFix datasets are further categorized into human-annotated (PoseScript-H and PoseFix-H) and automatically captioned (PoseScript-A and PoseFix-A) subsets.  The table clarifies the composition of the training data to provide a complete view of how the model was trained.
> <details>
> <summary>read the caption</summary>
> Table 1: Detailed datasets for training UniPose. The PoseScript dataset provides human annotations (PoseScript-H) and expands its dataset with automated captions (PoseScript-A), as does the PoseFix dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T7.6">
<tr class="ltx_tr" id="S4.T7.6.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T7.6.7.1" rowspan="2"><span class="ltx_text" id="S4.T7.6.7.1.1" style="font-size:80%;">Attention Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="7" id="S4.T7.6.7.2"><span class="ltx_text" id="S4.T7.6.7.2.1" style="font-size:80%;">Text-to-Pose</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T7.6.7.3"><span class="ltx_text" id="S4.T7.6.7.3.1" style="font-size:80%;">Pose-to-Text</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.6">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S4.T7.1.1.1"><math alttext="\mathrm{R}^{\mathrm{T2P}}\uparrow" class="ltx_Math" display="inline" id="S4.T7.1.1.1.m1.1"><semantics id="S4.T7.1.1.1.m1.1a"><mrow id="S4.T7.1.1.1.m1.1.1" xref="S4.T7.1.1.1.m1.1.1.cmml"><msup id="S4.T7.1.1.1.m1.1.1.2" xref="S4.T7.1.1.1.m1.1.1.2.cmml"><mi id="S4.T7.1.1.1.m1.1.1.2.2" mathsize="80%" mathvariant="normal" xref="S4.T7.1.1.1.m1.1.1.2.2.cmml">R</mi><mi id="S4.T7.1.1.1.m1.1.1.2.3" mathsize="80%" xref="S4.T7.1.1.1.m1.1.1.2.3.cmml">T2P</mi></msup><mo id="S4.T7.1.1.1.m1.1.1.1" mathsize="80%" stretchy="false" xref="S4.T7.1.1.1.m1.1.1.1.cmml">↑</mo><mi id="S4.T7.1.1.1.m1.1.1.3" xref="S4.T7.1.1.1.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T7.1.1.1.m1.1b"><apply id="S4.T7.1.1.1.m1.1.1.cmml" xref="S4.T7.1.1.1.m1.1.1"><ci id="S4.T7.1.1.1.m1.1.1.1.cmml" xref="S4.T7.1.1.1.m1.1.1.1">↑</ci><apply id="S4.T7.1.1.1.m1.1.1.2.cmml" xref="S4.T7.1.1.1.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T7.1.1.1.m1.1.1.2.1.cmml" xref="S4.T7.1.1.1.m1.1.1.2">superscript</csymbol><ci id="S4.T7.1.1.1.m1.1.1.2.2.cmml" xref="S4.T7.1.1.1.m1.1.1.2.2">R</ci><ci id="S4.T7.1.1.1.m1.1.1.2.3.cmml" xref="S4.T7.1.1.1.m1.1.1.2.3">T2P</ci></apply><csymbol cd="latexml" id="S4.T7.1.1.1.m1.1.1.3.cmml" xref="S4.T7.1.1.1.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.1.1.1.m1.1c">\mathrm{R}^{\mathrm{T2P}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.1.1.1.m1.1d">roman_R start_POSTSUPERSCRIPT T2P end_POSTSUPERSCRIPT ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" colspan="3" id="S4.T7.2.2.2"><math alttext="\mathrm{R}^{\mathrm{P2T}}\uparrow" class="ltx_Math" display="inline" id="S4.T7.2.2.2.m1.1"><semantics id="S4.T7.2.2.2.m1.1a"><mrow id="S4.T7.2.2.2.m1.1.1" xref="S4.T7.2.2.2.m1.1.1.cmml"><msup id="S4.T7.2.2.2.m1.1.1.2" xref="S4.T7.2.2.2.m1.1.1.2.cmml"><mi id="S4.T7.2.2.2.m1.1.1.2.2" mathsize="80%" mathvariant="normal" xref="S4.T7.2.2.2.m1.1.1.2.2.cmml">R</mi><mi id="S4.T7.2.2.2.m1.1.1.2.3" mathsize="80%" xref="S4.T7.2.2.2.m1.1.1.2.3.cmml">P2T</mi></msup><mo id="S4.T7.2.2.2.m1.1.1.1" mathsize="80%" stretchy="false" xref="S4.T7.2.2.2.m1.1.1.1.cmml">↑</mo><mi id="S4.T7.2.2.2.m1.1.1.3" xref="S4.T7.2.2.2.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T7.2.2.2.m1.1b"><apply id="S4.T7.2.2.2.m1.1.1.cmml" xref="S4.T7.2.2.2.m1.1.1"><ci id="S4.T7.2.2.2.m1.1.1.1.cmml" xref="S4.T7.2.2.2.m1.1.1.1">↑</ci><apply id="S4.T7.2.2.2.m1.1.1.2.cmml" xref="S4.T7.2.2.2.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T7.2.2.2.m1.1.1.2.1.cmml" xref="S4.T7.2.2.2.m1.1.1.2">superscript</csymbol><ci id="S4.T7.2.2.2.m1.1.1.2.2.cmml" xref="S4.T7.2.2.2.m1.1.1.2.2">R</ci><ci id="S4.T7.2.2.2.m1.1.1.2.3.cmml" xref="S4.T7.2.2.2.m1.1.1.2.3">P2T</ci></apply><csymbol cd="latexml" id="S4.T7.2.2.2.m1.1.1.3.cmml" xref="S4.T7.2.2.2.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.2.2.2.m1.1c">\mathrm{R}^{\mathrm{P2T}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.2.2.2.m1.1d">roman_R start_POSTSUPERSCRIPT P2T end_POSTSUPERSCRIPT ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T7.3.3.3">
<span class="ltx_text" id="S4.T7.3.3.3.1" style="font-size:80%;">Latency (s) </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T7.3.3.3.m1.1"><semantics id="S4.T7.3.3.3.m1.1a"><mo id="S4.T7.3.3.3.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T7.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T7.3.3.3.m1.1b"><ci id="S4.T7.3.3.3.m1.1.1.cmml" xref="S4.T7.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.4">
<span class="ltx_text" id="S4.T7.4.4.4.1" style="font-size:80%;">BLEU-4 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T7.4.4.4.m1.1"><semantics id="S4.T7.4.4.4.m1.1a"><mo id="S4.T7.4.4.4.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T7.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T7.4.4.4.m1.1b"><ci id="S4.T7.4.4.4.m1.1.1.cmml" xref="S4.T7.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.5.5.5">
<span class="ltx_text" id="S4.T7.5.5.5.1" style="font-size:80%;">ROUGE-L </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T7.5.5.5.m1.1"><semantics id="S4.T7.5.5.5.m1.1a"><mo id="S4.T7.5.5.5.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T7.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T7.5.5.5.m1.1b"><ci id="S4.T7.5.5.5.m1.1.1.cmml" xref="S4.T7.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.6.6">
<span class="ltx_text" id="S4.T7.6.6.6.1" style="font-size:80%;">METEOR </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T7.6.6.6.m1.1"><semantics id="S4.T7.6.6.6.m1.1a"><mo id="S4.T7.6.6.6.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T7.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T7.6.6.6.m1.1b"><ci id="S4.T7.6.6.6.m1.1.1.cmml" xref="S4.T7.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T7.6.8.1"><span class="ltx_text" id="S4.T7.6.8.1.1" style="font-size:80%;">Causal Attention</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.8.2"><span class="ltx_text" id="S4.T7.6.8.2.1" style="font-size:80%;">9.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.8.3"><span class="ltx_text" id="S4.T7.6.8.3.1" style="font-size:80%;">14.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T7.6.8.4"><span class="ltx_text" id="S4.T7.6.8.4.1" style="font-size:80%;">20.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.8.5"><span class="ltx_text" id="S4.T7.6.8.5.1" style="font-size:80%;">9.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.8.6"><span class="ltx_text" id="S4.T7.6.8.6.1" style="font-size:80%;">14.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T7.6.8.7"><span class="ltx_text" id="S4.T7.6.8.7.1" style="font-size:80%;">22.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T7.6.8.8"><span class="ltx_text" id="S4.T7.6.8.8.1" style="font-size:80%;">2.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.8.9"><span class="ltx_text ltx_font_bold" id="S4.T7.6.8.9.1" style="font-size:80%;">26.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.8.10"><span class="ltx_text ltx_font_bold" id="S4.T7.6.8.10.1" style="font-size:80%;">39.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.8.11"><span class="ltx_text ltx_font_bold" id="S4.T7.6.8.11.1" style="font-size:80%;">38.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.9">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T7.6.9.1"><span class="ltx_text" id="S4.T7.6.9.1.1" style="font-size:80%;">Mixed Attention</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.6.9.2"><span class="ltx_text ltx_font_bold" id="S4.T7.6.9.2.1" style="font-size:80%;">13.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.6.9.3"><span class="ltx_text ltx_font_bold" id="S4.T7.6.9.3.1" style="font-size:80%;">20.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T7.6.9.4"><span class="ltx_text ltx_font_bold" id="S4.T7.6.9.4.1" style="font-size:80%;">28.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.6.9.5"><span class="ltx_text ltx_font_bold" id="S4.T7.6.9.5.1" style="font-size:80%;">15.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.6.9.6"><span class="ltx_text ltx_font_bold" id="S4.T7.6.9.6.1" style="font-size:80%;">23.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T7.6.9.7"><span class="ltx_text ltx_font_bold" id="S4.T7.6.9.7.1" style="font-size:80%;">32.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T7.6.9.8"><span class="ltx_text ltx_font_bold" id="S4.T7.6.9.8.1" style="font-size:80%;">0.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.6.9.9"><span class="ltx_text" id="S4.T7.6.9.9.1" style="font-size:80%;">25.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.6.9.10"><span class="ltx_text" id="S4.T7.6.9.10.1" style="font-size:80%;">39.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.6.9.11"><span class="ltx_text" id="S4.T7.6.9.11.1" style="font-size:80%;">36.7</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists example instruction templates used in the instruction finetuning stage of UniPose training.  It shows various tasks (Pose Comprehension, Pose Generation, Pose Editing), sub-tasks within each category, example input types (image, text, SMPL pose), and the expected output.  The instructions demonstrate the diverse range of human pose-related queries UniPose can handle.
> <details>
> <summary>read the caption</summary>
> Table 2: Examples of instruction templates utilized during the instruction finetuning stage of UniPose training.
> </details>

{{< table-caption >}}
| Training paradigm | Task | Dataset | Samples |
|---|---|---|---| 
| Pose-Text Align <br> Pretraining | Pose-to-Text, Pose-Diff, <br> Text-to-Pose, Pose-Edit | PoseScript-A | 70k |
|  | PoseFix-A | 93k |
| Visual Projector <br> Pretraining | Image-to-Text, <br> Image-Diff, <br> Pose Estimation | ImageScript-A | 50k |
|  | ImageDiff-A | 50k |
|  | PoseEst | 100k |
| Instruction <br> Finetuning | All tasks | PoseScript-H | 5k |
|  |  | PoseFix-H | 5k |
|  |  | ImageScript-R | 6k |
|  |  | ImageDiff-R | 6k |
|  |  | PoseEst | 6k |{{< /table-caption >}}
> 🔼 This table details the hyperparameters used during the training of the UniPose model.  It specifies settings for three training stages: Pose-Text Alignment Pretraining, Visual Projector Pretraining, and Instruction Finetuning.  For each stage, the table lists the batch size, learning rate, number of epochs, image resolution (which is the same for both CLIP-ViT and Pose-ViT encoders), patch size, warmup epoch number, learning rate schedule type, and optimizer used.  Understanding these hyperparameters is crucial for comprehending the training process and its impact on the UniPose model's performance.
> <details>
> <summary>read the caption</summary>
> Table 3:  Training hyperparameters of UniPose. Image Res denotes the input image resolution of CLIP-ViT and Pose-ViT, and the same as Patch Size.
> </details>

{{< table-caption >}}
| Task | Sub-Task | Input | Output |
|---|---|---|---| 
| Pose <br> Comp | Pose-to-Text | Generate a description of the SMPL pose: &lt;pose&gt;. | &lt;caption&gt; |
|  |  | Interpret the SMPL pose in &lt;pose&gt; and generate a written description. |  |
|  | Pose-Diff | Provide a summary of how SMPL pose &lt;pose&gt; differs from &lt;pose&gt;. |  |
|  |  | Detail any SMPL pose changes seen between &lt;pose&gt; and &lt;pose&gt;. |  |
|  | Image-to-Text | Describe the pose of the individual in the &lt;image&gt;. |  |
|  |  | Analyze &lt;image&gt; and describe the posture displayed. |  |
|  | Image-Diff | Compare &lt;image&gt; and &lt;image&gt;, outline how the person’s posture differs. |  |
|  |  | Identify how the individual’s pose varies from &lt;image&gt; to &lt;image&gt;. |  |
| Pose <br> Gen | Pose Estimation | Could you estimate the SMPL pose of the individual in &lt;image&gt;? | &lt;pose&gt; |
|  |  | Look at the &lt;image&gt; and return the SMPL pose parameters for the figure shown. |  |
|  | Text-to-Pose | Could you generate the SMPL pose from the description: &lt;caption&gt;? |  |
|  |  | Using the description &lt;caption&gt;, please create the corresponding SMPL pose. |  |
|  | Pose Editing | Modify &lt;pose&gt; based on this instruction: &lt;caption&gt;. |  |
|  |  | Refine &lt;pose&gt; by applying the description provided: &lt;caption&gt;. |  |{{< /table-caption >}}
> 🔼 Table 4 presents a detailed comparison of retrieval performance on the PoseScript and PoseFix datasets.  It assesses the accuracy of retrieving poses given text descriptions (RP2T) and retrieving text descriptions given poses (RT2P). The evaluation includes top-1, top-5, and top-10 results for both tasks, providing a comprehensive view of retrieval precision at different ranking levels.  Additionally, the table reports the mean recall (mRecall), which averages the recall across all retrieval ranks, offering a single measure of overall retrieval effectiveness.
> <details>
> <summary>read the caption</summary>
> Table 4: The retrieval results on the PoseScript [14] and PoseFix [13] datasets. We report Top 1 / 5 / 10 RP⁢2⁢Tsuperscript𝑅𝑃2𝑇R^{P2T}italic_R start_POSTSUPERSCRIPT italic_P 2 italic_T end_POSTSUPERSCRIPT and RT⁢2⁢Psuperscript𝑅𝑇2𝑃R^{T2P}italic_R start_POSTSUPERSCRIPT italic_T 2 italic_P end_POSTSUPERSCRIPT, along with the mean recall (mRecall), which is the average of all retrieval recall values.
> </details>

{{< table-caption >}}
| Configuration | Pose-Text Align
Pretraining | Visual Projector
Pretraining | Instruction
Finetuning |
|---|---|---|---|
| Batch Size | 24 | 8 | 8 |
| Learning Rate | 1.5e-4 | 5e-5 | 5e-5 |
| Epochs | 6 | 2 | 2 |
| Image Res | 336 × 336 / 256 × 256 |  |  | 
| Patch Size | 14 × 14 / 16 × 16 |  |  | 
| Warmup Epochs | 0.03 |  |  | 
| LR Schedule | Cosine |  |  | 
| Optimizer | AdamW |  |  |{{< /table-caption >}}
> 🔼 This table presents an ablation study on the effect of adding random noise to the global orientation during the training of the Pose Tokenizer. It shows the impact of this noise on the performance of the tokenizer, measured by MPJPE and PA-MPJPE metrics on the AMASS and MOYO datasets.  The results demonstrate how introducing noise improves the robustness of the tokenizer, particularly on the MOYO dataset.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation on global orientation noise for the Pose Tokenizer.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2411.16781/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16781/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16781/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16781/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16781/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16781/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16781/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16781/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16781/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16781/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16781/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16781/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16781/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16781/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16781/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16781/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.16781/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}