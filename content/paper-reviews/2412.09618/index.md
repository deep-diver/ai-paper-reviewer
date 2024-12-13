---
title: "EasyRef: Omni-Generalized Group Image Reference for Diffusion Models via Multimodal LLM"
summary: "EasyRef uses multimodal LLMs to generate images from multiple references, overcoming limitations of prior methods by capturing consistent visual elements and offering improved zero-shot generalization..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 CUHK MMLab",]
showSummary: true
date: 2024-12-12
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.09618 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhuofan Zong et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-13 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.09618" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.09618" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/easyref-omni-generalized-group-image" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.09618/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current methods for generating images from multiple reference images either average embeddings (neglecting inter-image relationships) or require per-group finetuning (lacking generalization).  **These approaches often struggle to capture consistent visual elements, leading to inconsistent or low-quality outputs.**  Prior works often focus on extracting a single visual attribute (style, identity) from references. 

EasyRef proposes a novel approach that uses a multimodal large language model (MLLM) to encode multiple reference images and text prompts jointly. This allows the model to understand the relationships and consistencies between references. **EasyRef injects MLLM representations into a diffusion model via adapters, enhancing generalization to unseen domains.**  The paper also introduces a new benchmark (MRBench) for evaluating multi-reference image generation, which facilitates future research on this topic.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} EasyRef leverages MLLMs to effectively capture consistent visual elements from multiple reference images. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method utilizes a novel reference aggregation strategy and progressive training scheme to enhance efficiency and detail preservation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} EasyRef outperforms existing tuning-free and tuning-based methods on a new multi-reference image generation benchmark (MRBench). {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it introduces EasyRef, a novel and efficient method for generating images from multiple references.  **EasyRef addresses limitations of existing methods by leveraging the capabilities of multimodal large language models (MLLMs) to capture consistent visual elements across references.** This opens new avenues for research in personalized image generation, particularly in improving control and quality in diverse application domains. The proposed MRBench benchmark further facilitates future research by providing a standardized evaluation framework.

------
#### Visual Insights



![](https://arxiv.org/html/2412.09618/x2.png)

> 🔼 This figure demonstrates EasyRef's ability to generate images that maintain consistent visual elements from multiple reference images, even without any fine-tuning.  It uses a single, general-purpose multimodal large language model (MLLM) to understand and combine the visual information from the different references, resulting in a generated image that reflects the shared visual characteristics. This is showcased across three examples, demonstrating style, identity, and character consistency.  Each example provides a text prompt and several reference images, highlighting the model's ability to incorporate these diverse references into a single cohesive output.
> <details>
> <summary>read the caption</summary>
> Figure 1: EasyRef is capable of modeling the consistent visual elements of various input reference images with a single generalist multimodal LLM in a zero-shot setting.
> </details>





{{< table-caption >}}
| Method | Consistency mining | Zero-shot generalization | Multi-reference input |
|---|---|---|---|
| LoRA [14] | ✅ | ❌ | ❌ |
| IP-Adapter [48] | ❌ | ✅ | ✅ |
| EasyRef | ✅ | ✅ | ✅ |{{< /table-caption >}}

> 🔼 This table compares three different methods for adapting diffusion models to generate images based on multiple references: LoRA (Low-Rank Adaptation), IP-Adapter (Image Prompt Adapter), and EasyRef (the proposed method in this paper).  It highlights key differences in their approach to handling multiple reference images and achieving consistency in the generated output, including whether they require fine-tuning, their ability to handle zero-shot generalization, and the type of multi-reference input they support.  This allows readers to understand the relative advantages and disadvantages of each method compared to the proposed EasyRef.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison among LoRA, IP-Adapter, and EasyRef.
> </details>





### In-depth insights


#### Multi-Image Encoding
Multi-image encoding in the context of image generation using diffusion models presents a significant challenge.  Early methods often relied on simple averaging of image embeddings, which fails to capture the nuanced relationships and consistent visual elements across multiple references.  **This limitation stems from the image-independent nature of averaging, neglecting the crucial task of identifying and emphasizing common visual features.**  A more sophisticated approach involves leveraging the capabilities of multimodal large language models (MLLMs).  **MLLMs excel at understanding context and instructions, allowing them to effectively extract consistent visual elements from a group of images by prompting them to focus on shared characteristics.**  This contextual understanding is crucial, as it allows the model to generate images that are not merely an average of the input images, but rather a coherent and consistent representation reflecting the shared visual essence.  The use of adapters, integrating MLLM outputs into the diffusion model, further enhances generalization capabilities.  **Efficient aggregation of reference information is essential to mitigate computational cost and maintain the fine-grained detail.**  Therefore, innovative techniques like query-based MLLM prompting and learned token embeddings play a vital role in optimizing both performance and efficiency.  By addressing these challenges, advanced multi-image encoding methods pave the way for generating high-quality, consistent, and personalized images based on multiple reference inputs.

#### MLLM's Role
The research paper highlights the crucial role of Multimodal Large Language Models (MLLMs) in enabling omni-generalized group image reference for diffusion models.  **MLLMs act as the core component for understanding and encoding consistent visual elements from multiple reference images and text prompts.** Unlike conventional methods that simply average image embeddings, ignoring potential inconsistencies, the MLLM's multi-image comprehension capabilities allow for a more nuanced understanding of the visual relationships.  This is achieved by leveraging the MLLM's instruction-following capabilities, prompting it to extract consistent visual features.  **The MLLM's ability to handle arbitrary numbers of images and aspect ratios enhances the model's flexibility and adaptability.** Furthermore, injecting the MLLM's representations into the diffusion process via adapters facilitates generalization to unseen domains. This approach reduces the reliance on task-specific encoders and the need for extensive finetuning, making the overall method more efficient and robust.  **The MLLM's role is not only in encoding information but also in efficiently aggregating multiple references.** By embedding aggregated representations into learnable tokens, computational costs are significantly reduced, addressing a key limitation in processing long-context inputs common in multi-reference scenarios.  In essence, the MLLM serves as the central intelligence of EasyRef, enabling efficient, consistent, and generalizable image generation from varied and numerous inputs.

#### Ablation Study
An ablation study systematically investigates the impact of individual components or design choices on the overall performance of a model.  In the context of EasyRef, this would involve removing or altering specific elements (e.g., the multimodal instruction, reference aggregation method, or the progressive training scheme) and measuring the resultant effect on the model's capacity to generate images. **The results would reveal the relative contribution of each part to the system's success, highlighting crucial design choices and potential areas for improvement.**  For example, removing the multimodal instruction could reveal whether the joint encoding of images and text enhances performance or is simply an added computational cost.   Similarly, evaluating different reference aggregation methods (e.g., simple averaging vs. token-based aggregation) could reveal the best strategy to capture consistent elements across various images.  **Analyzing the influence of the progressive training scheme will determine the effectiveness of this gradual training approach and demonstrate if it's necessary for achieving high-quality output.** Ultimately, the ablation study in EasyRef is **critical for providing valuable insights into the design and functionality of the system, guiding future model development and optimization.** It also helps **demonstrate the importance of each component** to EasyRef’s capabilities.

#### Zero-Shot Gen.
The concept of "Zero-Shot Gen." in the context of a research paper likely refers to a model's ability to generate images or other outputs based on prompts or conditions it has not explicitly seen during training. This is a significant advancement as it moves beyond traditional machine learning approaches that require extensive training data for each specific task.  **A successful zero-shot generation model showcases strong generalization capabilities**, implying the model has learned underlying rules and patterns instead of simply memorizing examples.  This is particularly valuable for image generation, where the space of possible images is vast and obtaining comprehensive training data for every conceivable scenario is often impractical. **The core challenge of zero-shot generation is bridging the gap between the model's learned knowledge and unseen inputs.**  This requires advanced techniques such as leveraging large language models (LLMs) to understand complex prompts, incorporating strong feature extractors for processing input data, and employing innovative methods for combining diverse information sources into cohesive outputs.  Successfully addressing this challenge would **demonstrate a step towards more robust, flexible, and generalizable AI systems.**

#### Future Works
Future research directions stemming from the EasyRef paper could explore several promising avenues.  **Extending EasyRef's capabilities to handle even more diverse and complex reference image sets** is crucial. This involves investigating techniques to effectively manage the computational cost associated with a large number of references while maintaining high-quality outputs.  Another important direction is **improving the handling of inconsistencies or ambiguities within the reference images**. Current methods struggle when references contain conflicting stylistic or content elements; exploring robust methods for conflict resolution or selecting dominant visual cues is needed.  **Investigating the impact of different MLLMs on EasyRef's performance** would reveal the model's sensitivity to architectural choices and training data.  The model's generalization capacity across diverse image domains can be further improved by exploring alternative training strategies or architectural modifications. Finally, a more comprehensive evaluation is required across a broader range of image generation benchmarks to better assess EasyRef's overall capabilities. This includes considering metrics that go beyond simple similarity scores, potentially incorporating user perception studies to accurately capture qualitative aspects such as aesthetic quality and creative potential.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.09618/x3.png)

> 🔼 This figure illustrates the problem of inconsistent image generation when using a simple averaging method for embedding multiple reference images.  The method averages the image embeddings as input conditions for image generation.  However, when the spatial location of the target subject varies across multiple reference images, the generated image becomes inconsistent, resulting in unsatisfactory results.  The example images show that images with faces are particularly affected by this issue. This highlights the limitation of simple averaging methods that do not account for the spatial relationships between different images when generating images conditioned on multiple references.
> <details>
> <summary>read the caption</summary>
> Figure 2: Spatial misalignment issue of the embedding averaging operation. The images with faces are synthetic.
> </details>



![](https://arxiv.org/html/2412.09618/x4.png)

> 🔼 EasyRef uses a multimodal large language model (MLLM) to process multiple reference images and a text prompt.  The MLLM extracts consistent visual elements from these inputs and creates a representation that is injected into a Stable Diffusion XL (SDXL) model via cross-attention layers. This allows the diffusion model to generate images that reflect the style, content, and other characteristics present in the reference images and the text prompt.  The diagram simplifies the process by showing only one cross-attention layer.
> <details>
> <summary>read the caption</summary>
> Figure 3: Overview of EasyRef with SDXL. EasyRef extracts consistent visual eliments from multiple reference images and the text prompt via a MLLM, injecting the condition representations into the diffusion model through cross-attention layers. We only plot 1 cross-attention layer for simplicity.
> </details>



![](https://arxiv.org/html/2412.09618/x5.png)

> 🔼 This histogram displays the distribution of the number of images per group in the curated dataset used for training and evaluating the EasyRef model.  The x-axis represents the number of images in a group, and the y-axis shows the percentage of groups containing that number of images.  The dataset is designed to have a balanced distribution of group sizes for robust training and evaluation.  It shows that a significant portion of the groups contains around 10-15 images, with the distribution tapering off toward both smaller and larger group sizes.
> <details>
> <summary>read the caption</summary>
> Figure 4: Distribution of our curated dataset.
> </details>



![](https://arxiv.org/html/2412.09618/x6.png)

> 🔼 This figure compares the image generation results of EasyRef against several other methods across various single-image reference scenarios.  The same prompts used in a previous paper ([48]) were replicated here for a controlled comparison to highlight the differences in image generation quality, style consistency, and adherence to the source image.  Each method is presented side-by-side for a clear visual comparison.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparisons of EasyRef with other counterparts in various single-image reference scenarios. The same image prompts as in [48] are used for clear comparisons.
> </details>



![](https://arxiv.org/html/2412.09618/x7.png)

> 🔼 This figure presents a bar chart comparing the performance of EasyRef against other methods (IP-Adapter and LoRA) based on human preference evaluations using the MRBench dataset.  The chart shows the win rate (percentage of times a method was preferred over another in paired comparisons) for each model across two key aspects: aesthetic quality and reference consistency.  The results demonstrate EasyRef's superior performance in generating images that are both visually appealing and closely aligned with the provided reference images.
> <details>
> <summary>read the caption</summary>
> Figure 6: Comparisons of human preference evaluation on our MRBench. EasyRef can surpass other methods across the aesthetic quality and reference alignment.
> </details>



![](https://arxiv.org/html/2412.09618/x8.png)

> 🔼 Figure 7 showcases the results of image generation using EasyRef with multiple reference images.  Each row presents a different set of reference images, demonstrating EasyRef's ability to synthesize images that capture various styles, identities, and characters present in the references. A single multimodal large language model (MLLM) within EasyRef encodes all these diverse aspects simultaneously, highlighting its capacity for omni-generalized group image referencing.
> <details>
> <summary>read the caption</summary>
> Figure 7: Visualization of generated samples with various multi-reference inputs. These reference contents encompass style, identity, and character, and are encoded by a single generalist MLLM in EasyRef.
> </details>



![](https://arxiv.org/html/2412.09618/x9.png)

> 🔼 Figure 8 presents a comparison of image generation results between EasyRef and IP-Adapter-SDXL, both utilizing Stable Diffusion XL (SDXL).  The key difference is that additional structural controls are provided as input to both models.  This allows for an assessment of how well each model handles both multi-reference images and the incorporation of explicit structural guidance in the image generation process.
> <details>
> <summary>read the caption</summary>
> Figure 8: Comparison between EasyRef and IP-Adapter-SDXL with additional structure controls.
> </details>



![](https://arxiv.org/html/2412.09618/x10.png)

> 🔼 This figure analyzes how EasyRef's performance changes with varying numbers of reference images used during inference.  The experiment randomly selects 112 reference images and 1 target image-text pair with the same topic. The generated images are then compared to the target image using similarity metrics (CLIP-I, CLIP-T, and DINO-I). The inference time, or latency, for each test is also measured and reported in seconds.  This demonstrates EasyRef's efficiency and robustness across different numbers of reference images.
> <details>
> <summary>read the caption</summary>
> Figure 9: Evaluation of inference group size scaling. We randomly select 112 reference images and 1 target image-text pair with the same topic. Then we compute the similarities between the generated images and the target image. “Latency” in the figure is measured in seconds per image.
> </details>



![](https://arxiv.org/html/2412.09618/x11.png)

> 🔼 This ablation study investigates the effect of using multimodal instructions (combining image and text prompts) within the EasyRef model.  The figure demonstrates a comparison of results obtained when using multimodal instructions versus the results using only image prompts or only text prompts.  It likely shows that combining image and text information in the prompts leads to improved generation quality, as measured by CLIP-I, CLIP-T, and DINO-I metrics.
> <details>
> <summary>read the caption</summary>
> Figure 10: Impact of the multimodal instruction design.
> </details>



![](https://arxiv.org/html/2412.09618/x13.png)

> 🔼 This figure demonstrates the impact of each training stage (alignment pretraining and single-reference finetuning) on the model's ability to generate high-quality images.  By systematically removing each stage, the experiment visualizes how each stage contributes to the overall image quality, focusing on fine-grained details and identity preservation. The results show that while the model performs well even without all stages for some reference images, there are noticeable improvements in image quality, specifically for reference images involving identity preservation (like a portrait of Taylor Swift) or complex compositions when all phases are included in the training.
> <details>
> <summary>read the caption</summary>
> Figure 11: Effect of the progressive training scheme. “stage 1” and “stage 2” denote the alignment pretraining stage and single-reference finetuning stage, respectively.
> </details>



![](https://arxiv.org/html/2412.09618/x14.png)

> 🔼 This figure showcases additional examples of EasyRef's ability to maintain identity consistency when generating images from multiple references in a zero-shot setting.  The input references consist of various images of celebrities' faces, demonstrating EasyRef's capability to generate new images that accurately reflect the consistent facial features of the provided references without any fine-tuning.
> <details>
> <summary>read the caption</summary>
> Figure 1: More generated samples of identity preservation with EasyRef in a zero-shot setting. We use the face images of celebrities in this experiment.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Method | CLIP-I ↑ | CLIP-T ↑ | DINO-I ↑ |
|---|---|---|---|
| *Training from scratch* |  |  |  |
| Open unCLIP [32] | 0.858 | 0.608 | - |
| Kandinsky-2-1 [1] | 0.855 | 0.599 | - |
| Versatile Diffusion [46] | 0.830 | 0.587 | - |
| *Finetuning* |  |  |  |
| SD Image Variations | 0.760 | 0.548 | - |
| SD unCLIP | 0.810 | 0.584 | - |
| *Adapters* |  |  |  |
| Uni-ControlNet [50] (Global Control) | 0.736 | 0.506 | - |
| T2I-Adapter [26] (Style) | 0.648 | 0.485 | - |
| ControlNet Shuffle [49] | 0.616 | 0.421 | - |
| IP-Adapter∗ [48] | 0.828 | 0.588 | - |
| IP-Adapter-SDXL∗ [48] | 0.836 | 0.617 | 0.650 |
| EasyRef | **0.876** | **0.621** | **0.873** |{{< /table-caption >}}
> 🔼 This table presents the quantitative evaluation results of different image generation methods using the COCO validation dataset.  The evaluation focuses on generating images conditioned on single COCO images.  The table shows the CLIP-I, CLIP-T, and DINO-I scores for various methods.  Note that methods marked with an asterisk (*) utilized CLIP embeddings, which may bias the results towards higher scores on CLIP-based metrics due to the inherent preference of the CLIP model.
> <details>
> <summary>read the caption</summary>
> Table 2: Evaluation for generation conditioned by COCO validation images. Methods with * use CLIP embeddings and tend to achieve higher scores of CLIP-based metrics due to its preference.
> </details>

{{< table-caption >}}
| Method | CLIP-I ↑ | CLIP-T ↑ | DINO-I ↑ |
|---|---|---|---| 
| *Held-in split* |  |  |  |
| LoRA [14] | 0.831 | 0.715 | 0.654 |
| IP-Adapter-SDXL [48] | 0.768 | 0.632 | 0.527 |
| EasyRef | **0.843** | **0.726** | **0.672** |
| *Held-out split* |  |  |  |
| LoRA [14] | failed | failed | failed |
| IP-Adapter-SDXL [48] | 0.795 | 0.645 | 0.579 |
| EasyRef | **0.833** | **0.709** | **0.614** |{{< /table-caption >}}
> 🔼 This table presents the quantitative results of evaluating different methods on the MRBench benchmark for multi-reference image generation.  It compares the performance of EasyRef, LoRA, and IP-Adapter on both a held-in (seen during training) and a held-out (unseen during training) split of the dataset. The metrics used are CLIP-I (image-image similarity), CLIP-T (image-text similarity), and DINO-I (image-image similarity).  The results demonstrate the generalization capability of each method by showing the performance on unseen data. LoRA's inability to generalize to the unseen data in a zero-shot setting (indicated by 'failed') highlights the advantage of EasyRef's approach.
> <details>
> <summary>read the caption</summary>
> Table 3: Evaluation for multi-reference image generation on MRBench. “failed” means LoRA fails to generalize to the unseen held-out split in a zero-shot setting.
> </details>

{{< table-caption >}}
| Number | Position | CLIP-I ↑ | CLIP-T ↑ | DINO-I ↑ |
|---|---|---|---|---|
| 32 tokens | -1 | 0.813 | 0.693 | 0.591 |
| 128 tokens | -1 | 0.827 | 0.705 | 0.611 |
| 64 tokens | -2 | 0.831 | 0.704 | 0.616 |
| 64 tokens | -3 | 0.828 | 0.702 | **0.617** |
| 64 tokens | -1 | **0.833** | **0.709** | 0.614 |{{< /table-caption >}}
> 🔼 This table presents the ablation study on the number of reference tokens used in the EasyRef model. It shows the impact of varying the number of reference tokens (32, 128, and 64) on the model's performance, measured by CLIP-I, CLIP-T, and DINO-I scores.  It also investigates the effect of placing the reference tokens at different positions within the LLM's layers (-1, -2, -3 denoting the position relative to the final layer). The results demonstrate the optimal number of reference tokens and their ideal placement for balancing performance and efficiency.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation of reference token design.
> </details>

{{< table-caption >}}
| Method | Average token number | CLIP-I ↑ | CLIP-T ↑ | DINO-I ↑ |
|---|---|---|---|---|
| Average | 64 | 0.818 | 0.688 | 0.584 |
| Concatenation | 354 | 0.821 | 0.692 | 0.579 |
| EasyRef | 64 | **0.833** | **0.709** | **0.614** |{{< /table-caption >}}
> 🔼 This table presents an ablation study on how different methods of aggregating reference image representations affect the performance of the EasyRef model on the MRBench held-out set.  Specifically, it compares the impact of averaging versus concatenating the multimodal large language model (MLLM)'s representations of multiple reference images.  The results show how different aggregation techniques affect the model's ability to generate images consistent with the provided references.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation of reference representation aggregation on the MRBench held-out set. In the implementation, we average or concatenate the MLLM’s representations of reference images.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.09618/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09618/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09618/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09618/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09618/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09618/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09618/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09618/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09618/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09618/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09618/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09618/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09618/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09618/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.09618/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}