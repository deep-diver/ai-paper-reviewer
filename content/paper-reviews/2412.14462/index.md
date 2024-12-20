---
title: "Affordance-Aware Object Insertion via Mask-Aware Dual Diffusion"
summary: "Affordance-Aware Object Insertion uses a novel Mask-Aware Dual Diffusion model & SAM-FB dataset to realistically place objects in scenes, considering contextual relationships."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Harvard University",]
showSummary: true
date: 2024-12-19
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.14462 {{< /keyword >}}
{{< keyword icon="writer" >}} Jixuan He et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-20 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.14462" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.14462" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/affordance-aware-object-insertion-via-mask" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.14462/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current image composition methods often struggle to integrate foreground objects into background scenes realistically, lacking an understanding of "affordance" – the contextual relationships between objects and their environments. This leads to unnatural or semantically inconsistent results. This paper tackles this issue by introducing the novel concept of "affordance-aware object insertion." This new task aims to place arbitrary objects into diverse scenes, with varying degrees of positional prompts. 

To achieve this, the researchers created a large-scale dataset, SAM-FB, with over 3 million examples across many object categories and positioning cues.  They then propose a novel Mask-Aware Dual Diffusion (MADD) model that leverages a dual-stream architecture to simultaneously refine the appearance of the inserted object and its mask in the scene. **MADD is designed to explicitly model the affordance, leading to more natural and realistic composite images.** The extensive experiments conducted demonstrate that MADD outperforms other state-of-the-art methods, showcasing impressive generalization across diverse images and varied positional prompts.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} The paper introduces a new task called "affordance-aware object insertion," addressing the challenges of seamlessly integrating objects into scenes while respecting the scene's semantic context. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The SAM-FB dataset, containing over 3 million examples, provides substantial data for training and evaluating models that perform realistic object insertion. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The proposed Mask-Aware Dual Diffusion (MADD) model leverages a dual-stream architecture, effectively incorporating affordance into the process of object insertion. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses a critical need in image editing and generation: the ability to realistically and seamlessly insert objects into complex scenes.  **Its introduction of the affordance-aware object insertion task and the SAM-FB dataset, along with the novel Mask-Aware Dual Diffusion (MADD) model, pushes the boundaries of image composition**. The work's strong generalization capacity across various object and scene types, combined with handling different positional cues (points, bounding boxes, masks), is highly valuable for researchers and developers working in computer vision, image editing, and generative AI. The code is also publicly available.

------
#### Visual Insights



![](https://arxiv.org/html/2412.14462/x1.png)

> 🔼 The SAM-FB dataset creation process is depicted in this diagram.  First, the SA-1B dataset is used to generate foreground-background pairs by identifying objects using Segment Anything Model (SAM) and masking them out. The masked-out regions representing the background are then inpainted using a model like LAMA, resulting in a complete background image.  A data quality control step filters out low-quality foregrounds and backgrounds to ensure high image quality.  The end result is a dataset consisting of foreground images, background images, positional prompts (points, bounding boxes, masks, or null), and corresponding ground truth images.
> <details>
> <summary>read the caption</summary>
> Figure 1: Pipeline of constructing the SAM-FB dataset. The background is inpainted and high-quality foreground objects are preserved through a data quality control stage.
> </details>





{{< table-caption >}}
| Dataset | Sample No. | Category No. |
|---|---|---|
| DreamEditBench | 440 | 22 |
| MureCom | 640 | 32 |
| **SAM-FB (Ours)** | 3,160,403 | 3,439 |{{< /table-caption >}}

> 🔼 This table compares the number of training samples and object categories across three datasets used for image composition tasks: DreamEditBench, MureCom, and SAM-FB (the authors' dataset).  It highlights that SAM-FB is significantly larger than the other two datasets, containing over 3 million samples and a substantially greater number of object categories.  This larger scale is a key advantage of SAM-FB for training models capable of robust and generalized image composition.
> <details>
> <summary>read the caption</summary>
> Table 1: Dataset comparison. Our dataset contains significantly more training samples and object categories.
> </details>





### In-depth insights


#### Affordance Modeling
Affordance modeling in the context of image composition aims to **intelligently integrate foreground objects into background scenes** by considering the semantic relationships and physical plausibility of the interaction.  It moves beyond simple image blending, focusing on understanding and respecting how objects interact with their surroundings.  A successful affordance model should be able to **predict appropriate object placement, orientation, and even scale**, based on the background context.  **Generalizability is key**, meaning the model should handle diverse objects and scenes without retraining.  Challenges include **defining and representing affordances in a machine-readable way**, accurately detecting relevant affordance cues from images, and dealing with ambiguous or multiple possible affordances. The effectiveness of the approach depends on both the quality of the model and the richness of the training data, particularly the diversity of objects and scene types.

#### Dual Diffusion
The concept of "Dual Diffusion" in the context of image generation suggests a model architecture that simultaneously processes and refines two intertwined aspects of an image: the visual content and the associated mask.  This approach is particularly powerful for tasks like object insertion, as seen in the research paper. **By treating the RGB image and the insertion mask as two separate yet interconnected streams within the diffusion process,** the model gains a finer-grained control over the result.  This leads to a **more seamless integration of the foreground object into the background scene**, respecting affordances and achieving a higher degree of realism. The dual diffusion framework enables the model to **handle different position prompts (points, bounding boxes, masks, and null prompts)** more effectively, demonstrating the advantage of this coupled approach over traditional single-stream methods.  Furthermore, the architecture facilitates the explicit modeling of affordance, resulting in more perceptually coherent and believable compositions.  The effectiveness of this strategy emphasizes the strength of **considering visual appearance and spatial relationships** simultaneously when generating complex images.

#### SAM-FB Dataset
The SAM-FB dataset is a crucial contribution of this research, addressing the limitations of existing datasets for affordance-aware object insertion.  Its **scale (over 3 million examples)** and **diversity (3,439 object categories)** are significant improvements, providing the breadth of data needed to train robust models.  The **creation process**, involving automated annotation from SA-1B and a rigorous quality control pipeline, is also noteworthy, ensuring the high quality and reliability of the data.  The dataset's design, including various position prompts, promotes model generalization and flexibility in handling varied user inputs, showcasing a thoughtful approach to dataset construction that directly addresses the task's challenges.  The inclusion of diverse positional cues (points, bounding boxes, masks, and null prompts) further enhances the dataset's value, allowing the trained models to learn to infer appropriate object placement even with ambiguous guidance. The careful construction of SAM-FB highlights a commitment to building a high-quality dataset well suited for the complexities of the proposed task, greatly enhancing the reproducibility and potential impact of the research.

#### Generalization Limits
The concept of 'Generalization Limits' in the context of a research paper on AI, particularly image generation models, would explore the boundaries of a model's ability to perform well on unseen data.  It investigates how well the model's learned patterns and representations generalize to new situations and objects not encountered during training. **Key aspects would include an evaluation of the model's performance on diverse datasets, varying in style, object complexity, and background context.**  The analysis would likely reveal **limitations in handling uncommon object categories or scenarios with unusual affordances**.  Furthermore, a discussion of **the influence of training data size and diversity** is expected, showing that larger and more representative training datasets often lead to better generalization. Ultimately, understanding these limits is crucial for advancing the reliability and real-world applicability of these models. **The research should identify specific weaknesses and suggest potential improvements, such as architectural modifications or training strategies to enhance the model's capacity for robust generalization.**

#### Future Extensions
Future extensions of affordance-aware object insertion could explore several promising directions.  **Improving generalization** to handle even more diverse object-scene combinations is crucial, potentially through incorporating larger and more varied datasets, or by exploring more sophisticated model architectures capable of learning more robust representations. **Enhanced control and editing capabilities** would greatly enhance usability, allowing users finer control over object placement, scale, pose, and appearance. This might involve advanced prompt engineering techniques or interactive editing interfaces.  **Addressing ambiguous prompts** more effectively is also vital; the model could benefit from incorporating contextual understanding and common-sense reasoning to resolve uncertainty in user inputs. Furthermore, **exploring alternative model architectures**, beyond diffusion models, may lead to improved efficiency and performance. For instance, investigating generative adversarial networks (GANs) or transformers could offer unique advantages. Finally, research into **quantitatively evaluating affordance** itself is needed to provide a robust benchmark for future advancements in this field.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.14462/x2.png)

> 🔼 The Mask-Aware Dual Diffusion (MADD) model uses a dual-branch architecture. One branch processes the RGB image, and the other branch processes the object mask.  Both branches use diffusion models to denoise their respective inputs.  The foreground object is encoded using a DINOv2 encoder, creating a feature representation that acts as guidance through a cross-attention mechanism.  Positional information (points, bounding boxes, masks, or even no prompt) is encoded using a dedicated encoder. This information is combined with the latent mask representation at timestep t (m<sub>t</sub>). The background is encoded via a Variational Autoencoder (VAE) and its latent representation (z<sub>t</sub>) is also incorporated. The dual branches work in parallel, denoising both the RGB image (z) and object mask (m) to generate a final composed image.
> <details>
> <summary>read the caption</summary>
> Figure 2: The framework of MADD. Foreground objects are encoded using a DINOv2 encoder, serving as the guidance signal through the cross-attention mechanism. The position prompt encoder unifies different types of position prompts, which are then concatenated with the latent mask 𝐦𝐭subscript𝐦𝐭\mathbf{m_{t}}bold_m start_POSTSUBSCRIPT bold_t end_POSTSUBSCRIPT. The background is encoded using a VAE encoder and then concatenated with the latent image 𝐳𝐭subscript𝐳𝐭\mathbf{z_{t}}bold_z start_POSTSUBSCRIPT bold_t end_POSTSUBSCRIPT. We use a dual branch structure to denoise RGB image 𝐳𝐳\mathbf{z}bold_z and object mask 𝐦𝐦\mathbf{m}bold_m simultaneously.
> </details>



![](https://arxiv.org/html/2412.14462/x3.png)

> 🔼 This figure showcases the qualitative results of the Mask-Aware Dual Diffusion (MADD) model on the SAM-FB test dataset.  The figure displays four rows, each representing a different type of input prompt used to guide the object insertion: point, bounding box, mask, and null (no explicit position guidance). For each prompt type, the figure presents the original background image, the foreground object, and the results generated by the MADD model.  The MADD model simultaneously predicts both the RGB image with the inserted object and the corresponding object mask, demonstrating its ability to accurately place objects in diverse scenarios and based on different positional cues.
> <details>
> <summary>read the caption</summary>
> Figure 3: Qualitative results of MADD on the SAM-FB test set. Each row corresponds to one type of prompt, i.e., point, bounding box, mask, and null, respectively. Our MADD simultaneously predicts the RGB image and the object mask.
> </details>



![](https://arxiv.org/html/2412.14462/x4.png)

> 🔼 The figure demonstrates the model's ability to adjust the location of a foreground object to achieve affordance-aware insertion.  Given an ambiguous prompt (e.g., a point), the model intelligently positions the object within the scene, considering factors like background semantics and spatial relationships to ensure the object's placement is realistic and natural.
> <details>
> <summary>read the caption</summary>
> (a) Location Adjustment
> </details>



![](https://arxiv.org/html/2412.14462/x5.png)

> 🔼 The figure demonstrates the model's ability to adjust the viewpoint of the inserted object to maintain consistency with the background scene. The example shows how the model alters the orientation of a car to align with the lane markings, showcasing an understanding of perspective and spatial relationships.
> <details>
> <summary>read the caption</summary>
> (b) View Adjustment
> </details>



![](https://arxiv.org/html/2412.14462/x6.png)

> 🔼 The model adjusts the size of the coffee beans to match the background scene, even though only a point prompt and a reference image of the statue are provided. This demonstrates the model's ability to understand and adjust object size to match the context of the scene.
> <details>
> <summary>read the caption</summary>
> (c) Size Adjustment
> </details>



![](https://arxiv.org/html/2412.14462/x7.png)

> 🔼 When no explicit position prompt is given, the model can automatically determine an appropriate location to place the object, demonstrating its ability to understand and utilize affordances in object-scene composition.
> <details>
> <summary>read the caption</summary>
> (d) Automatic Localization
> </details>



![](https://arxiv.org/html/2412.14462/extracted/6077377/imgs/diverse.png)

> 🔼 This figure demonstrates the model's ability to handle ambiguous position prompts for object insertion in real-world scenes.  It showcases four scenarios, all using in-the-wild images: (a) the model adjusts the foreground object's location to achieve a natural placement given a point prompt; (b) it adjusts the foreground object's viewpoint; (c) it adjusts the foreground object's size; and (d) it automatically determines the best insertion location in the absence of any explicit positional guidance (null prompt).  These examples highlight the model's ability to understand affordances and create realistic compositions.
> <details>
> <summary>read the caption</summary>
> Figure 4: We test ambiguous prompts (points and blank) on the in-the-wild images. When providing the prompt of point, 4(a), 4(b), and 4(c) show that our model can adjust properties of foreground objects to achieve the affordance insertion.4(d) illustrates that the model could find the suitable position to insert the object.
> </details>



![](https://arxiv.org/html/2412.14462/x8.png)

> 🔼 This figure showcases the model's ability to generate multiple plausible outputs even with vague positional guidance.  The top row illustrates different outputs when only a single point is provided as input.  The bottom row demonstrates the model's ability to place objects appropriately even without explicit positional cues, highlighting its capacity for creative and contextually aware object insertion.
> <details>
> <summary>read the caption</summary>
> Figure 5: MADD can give different feasible solutions for ambiguous prompts such as point and blank.
> </details>



![](https://arxiv.org/html/2412.14462/extracted/6077377/imgs/criteria.png)

> 🔼 This figure displays a bar chart comparing the performance of different image composition methods, including the proposed method, across five ranking criteria.  The x-axis represents the different methods, while the y-axis shows the percentage of times each method received a specific rank (1 to 5). A higher proportion of rank 1 indicates superior performance.  The chart visually demonstrates that the proposed method achieved the highest percentage of rank 1 and the lowest percentage of rank 5, signifying its superior overall performance compared to other methods.
> <details>
> <summary>read the caption</summary>
> (a) Rank distribution for different methods. Our method has the highest proportion of rank 1 and the least proportion of rank 5.
> </details>



![](https://arxiv.org/html/2412.14462/x9.png)

> 🔼 This figure presents a breakdown of the Rank-1 results for each evaluation metric across different models.  Each pie chart shows the percentage of times a specific model achieved the top rank (Rank-1) for a particular evaluation criterion. The criteria used are: Foreground and Background Integration, Foreground Clarity and Detail, Foreground Consistency with Reference, Lighting and Shadows on Foreground, and Color Consistency. The results clearly indicate that the proposed model outperforms other state-of-the-art models in all categories.
> <details>
> <summary>read the caption</summary>
> (b) Rank-1 distribution for each criterion. Each pie chart represents the proportion of times each model achieved Rank-1 for a specific evaluation criterion. Our method dominates every metric.
> </details>



![](https://arxiv.org/html/2412.14462/x10.png)

> 🔼 This figure displays the results of a human evaluation comparing the performance of the MADD model against several other state-of-the-art image editing models.  Ten sets of images were generated by each model, and human evaluators judged these images using five criteria:  Foreground and Background Integration, Foreground Clarity and Detail, Foreground Consistency with Reference, Lighting and Shadows on Foreground, and Color Consistency. The results show that the MADD model consistently outperforms the others across all evaluation criteria, receiving the highest rank in the majority of cases for each category.
> <details>
> <summary>read the caption</summary>
> Figure 6: Human evaluation results on in-the-wild Images. We compared 10 groups of images according to different criteria. Our MADD model outperforms SDXL [39], GLI-GEN [29], ObjectStitch [42] and PBE [47] on overall ranking and each criteria.
> </details>



![](https://arxiv.org/html/2412.14462/extracted/6077377/imgs/FID-CLIP.png)

> 🔼 This figure demonstrates the scalability of the MADD model to higher-resolution images (512x512 pixels).  The results show significant improvements in image quality compared to lower resolution inputs (256x256 pixels), including sharper edges, more realistic reflections, and enhanced texture details in the inserted objects. This highlights the model's ability to handle higher-resolution images while maintaining consistent performance in generating high-quality and visually pleasing outputs.
> <details>
> <summary>read the caption</summary>
> Figure 7: MADD can work on images of higher resolution, generating sharper edges, clearer reflections, and improved texture details.
> </details>



![](https://arxiv.org/html/2412.14462/extracted/6077377/imgs/sample.png)

> 🔼 Figure 8 presents several examples of the MADD model's ability to perform affordance-aware object insertion without explicit positional guidance.  Each example shows a background image and a foreground object.  The model successfully integrates the foreground object into the background, making realistic and contextually appropriate adjustments to its position, size, and orientation. This highlights the model's capacity for autonomous and contextually aware object placement.
> <details>
> <summary>read the caption</summary>
> Figure 8: More in-the-wild examples with null prompts. The model can generate an affordance-feasible solution to insert the foreground objects according to the background scene.
> </details>



![](https://arxiv.org/html/2412.14462/extracted/6077377/imgs/category.png)

> 🔼 This figure shows the relationship between FID (Fréchet Inception Distance) and CLIP (Contrastive Language–Image Pre-training) scores, which are used to evaluate the quality of generated images and the alignment between the generated image and the prompt, respectively.  The x-axis represents different guidance scales (1.0 through 7.0) used during the image generation process with the Classifier-Free Guidance approach.  The y-axis shows the FID and CLIP scores for each guidance scale.  The plot illustrates how the FID and CLIP scores change as the guidance scale increases, providing insights into the optimal guidance scale for balancing image quality and prompt adherence when using the Mask-Aware Dual Diffusion (MADD) model. The resolution of the generated images for this analysis is 128x128 pixels.
> <details>
> <summary>read the caption</summary>
> Figure 9: FID-CLIP score curve on 128×128128128128\times 128128 × 128 resolution with different guidance scale [1.0,3.0,4.0,5.0,6.0,7.0]1.03.04.05.06.07.0[1.0,3.0,4.0,5.0,6.0,7.0][ 1.0 , 3.0 , 4.0 , 5.0 , 6.0 , 7.0 ].
> </details>



![](https://arxiv.org/html/2412.14462/x11.png)

> 🔼 This figure shows examples of foreground image samples that were filtered out during the data quality control process. The top row displays low-quality samples, such as images with incomplete or blurry objects, while the bottom row showcases high-quality foreground samples retained for the SAM-FB dataset after the filtering process.
> <details>
> <summary>read the caption</summary>
> (a) Examples for foreground quality control
> </details>



![](https://arxiv.org/html/2412.14462/x12.png)

> 🔼 This word cloud visualizes the frequency of different foreground object categories present in the SAM-FB dataset.  The size of each word corresponds to its frequency, providing a quick overview of the dataset's object category distribution.  Categories range from common objects like 'person' and 'car' to less frequent ones like 'figurine' and 't-shirt'. This figure highlights the diversity and richness of the SAM-FB dataset in terms of object types included.
> <details>
> <summary>read the caption</summary>
> (b) Word cloud of foreground categories
> </details>



![](https://arxiv.org/html/2412.14462/x13.png)

> 🔼 Figure 10(a) illustrates the data quality control process for the SAM-FB dataset.  The top row displays examples of low-quality foreground object masks rejected due to issues like incompleteness, background mask contamination, and small object size. The bottom row presents the same images after passing the quality control filters, highlighting the improvement in mask quality. Figure 10(b) provides a visualization of the diverse range of object categories present in the SAM-FB dataset using a word cloud, emphasizing its richness and variety.
> <details>
> <summary>read the caption</summary>
> Figure 10: 10(a) shows the candidate foreground samples in the pipeline. The upper row shows four low-quality samples. The lower row shows the samples after data quality control. 10(b) shows the word cloud of foreground categories in the SAM-FB dataset.
> </details>



![](https://arxiv.org/html/2412.14462/x14.png)

> 🔼 Figure 11 presents a comparison of image editing results, focusing on the preservation of detailed textures. The comparison involves four different methods: the authors' proposed model (MADD), Stable Diffusion [39], GLI-GEN [29], and PBE [47]. Two rows of examples are shown to highlight the models' capabilities in maintaining image texture (first row) and text texture (second row) during image editing.  The results demonstrate that MADD excels at preserving fine details compared to the other methods.
> <details>
> <summary>read the caption</summary>
> Figure 11: Example of objects with details. Our model could keep the appearance better even with some details compared with SD [39], GLI-GEN [29] and PBE [47]. The first row demonstrates the ability to keep some image texture, and the second row illustrates the ability to keep text texture.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Method | FID ↓ (mask) | FID ↓ (bbox) | CLIP Score ↑ (mask) | CLIP Score ↑ (bbox) | MSE ↓ (mask) | MSE ↓ (bbox) |
|---|---|---|---|---|---|---|
| <img src="https://arxiv.org/html/2412.14462/filename.png" alt="" width="10.22" height="10.22"> [39] | 15.41 | 15.47 | 0.7079 | 0.8058 | 860 | 883 |
| <img src="https://arxiv.org/html/2412.14462/filename.png" alt="" width="10.22" height="10.22"> [47] | 33.68 | 24.59 | – | 0.7664 | 2373 | 1615 |
| <img src="https://arxiv.org/html/2412.14462/filename.png" alt="" width="10.22" height="10.22"> [29] | – | 14.21 | – | 0.7944 | – | 830 |
| <img src="https://arxiv.org/html/2412.14462/filename.png" alt="" width="10.22" height="10.22"> [24] | 14.49 | 14.42 | 0.8014 | 0.8637 | 857 | 845 |
| **Ours** | **13.53** | **13.60** | **0.8727** | **0.8658** | **760** | **775** |{{< /table-caption >}}
> 🔼 Table 2 presents a quantitative comparison of different image composition methods on the SAM-FB test set.  It shows the FID (Fréchet Inception Distance) scores and CLIP (Contrastive Language–Image Pre-training) scores for four existing methods (Stable Diffusion, PBE, GLI-GEN, Human Affordance) and the proposed method (MADD). Lower FID scores indicate better image quality, and higher CLIP scores indicate better semantic similarity between generated and reference images. The table demonstrates the superior performance of MADD in both image quality and semantic consistency compared to the state-of-the-art approaches.
> <details>
> <summary>read the caption</summary>
> Table 2: Method comparisons on the SAM-FB test set.     Stable Diffusion,     PBE,    GLIGEN,     Human Affordance.
> </details>

{{< table-caption >}}
| Prompt | Mask | Bbox | Point | Null | Avg. |
|---|---|---|---|---|---| 
| FID | **13.53** | 13.60 | 13.66 | 13.96 | 13.69 |
| MSE | **760** | 775 | 772 | 860 | 792 |
| CLIP Score | **0.8727** | 0.8658 | 0.8567 | 0.8034 | 0.8415 |{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the model's performance using different types of position prompts (mask, bounding box, point, and null) for affordance-aware object insertion.  The evaluation metrics include FID score (Frechet Inception Distance), a measure of image quality, and CLIP score, which assesses the semantic similarity between the generated image and the reference image. The table shows the average performance across all prompts and the individual results for each prompt type. Lower FID scores and higher CLIP scores indicate better performance.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of position prompts on the SAM-FB test set.
> </details>

{{< table-caption >}}
| Method | FID (<img src="https://arxiv.org/html/2412.14462/downarrow.png" alt="↓">) | CLIP<sub>x100</sub> (<img src="https://arxiv.org/html/2412.14462/uparrow.png" alt="↑">) |
|---|---|---|
| Baseline | 25.89 | 89.12 |
| + Classifier-Free | 21.93 | 91.13 |
| + Dual diffusion | 21.75 | 91.57 |
| + Expertise branch | **21.55** | **91.68** |{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted on the SAM-FB test set using mask prompts.  The study evaluates the impact of different model components on the performance metrics, specifically FID and CLIP scores. By progressively adding components (Classifier-Free Guidance, dual diffusion, and expert branches), the study demonstrates how each contributes to improved performance in the task of affordance-aware object insertion.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study on the SAM-FB test set with 128×128128128128\times 128128 × 128 resolution using mask prompts.
> </details>

{{< table-caption >}}
| Filter condition | Threshold | Reserved Percentage |
|---|---|---|
| None (Initial) | – | 100% |
| Relative Size | [0.1, 0.75] | 7.10% |
| Aspect Ratio | ≤ 3 | 6.88% |
| Components Num. | ≤ 4 | 6.71% |
| Color Std. | ≥ 45 | 1.69% |
| ResNet50 Score | ≥ 0.7 | 0.25% |{{< /table-caption >}}
> 🔼 This table presents the thresholds and resulting percentages of foreground objects retained after applying various quality control filters during the creation of the SAM-FB dataset.  These filters combine rule-based criteria (relative size, aspect ratio, number of components, color standard deviation) with a learning-based approach (ResNet50 score). The goal is to automatically select high-quality foreground objects, removing those with issues such as incomplete segmentation, blurry details, or unwanted background elements. The table shows that applying these filters reduces the initial set of foreground masks by over 99%, resulting in a highly refined dataset of only 0.25% of the initial candidates.
> <details>
> <summary>read the caption</summary>
> Table 5: Reserved percentage for foreground quality control filters. We combine different rule-based and learning-based conditions. Through this process, foreground objects with high quality are reserved.
> </details>

{{< table-caption >}}
| Method | mask | bbox | point | null | Avg. |  | mask | bbox | point | null | Avg. |
|---|---|---|---|---|---|---|---|---|---|---|---| 
| **FID↓** |  |  |  |  |  |  | **CLIP Score<sub>×100</sub>↑** |  |  |  |  |
| Baseline | 25.89 | 26.21 | 26.37 | 27.35 | 26.46 |  | 89.12 | 89.50 | 79.92 | 79.31 | 84.46 |
| +Classifier-Free | 21.93 | 22.03 | 22.31 | 22.74 | 22.25 |  | 91.13 | 90.95 | 85.49 | 85.26 | 88.21 |
| +Dual Diffusion | 21.75 | 21.81 | 21.90 | 22.39 | 21.96 |  | 91.57 | **91.05** | 88.25 | **88.34** | **89.80** |
| +Expertise branch | **21.55** | **21.66** | **21.76** | **22.24** | **21.80** |  | **91.68** | 90.96 | **89.61** | 88.30 | **90.14** |{{< /table-caption >}}
> 🔼 Table 6 presents a quantitative comparison of the Mask-Aware Dual Diffusion (MADD) model's performance on the SAM-FB test set across different types of position prompts. It shows the FID (Fréchet Inception Distance) scores and CLIP (Contrastive Language–Image Pre-training) scores for each prompt type: mask, bounding box, point, and null. Lower FID scores indicate better image quality, and higher CLIP scores suggest better semantic similarity between generated images and ground truth. The results reveal that using more precise position prompts (mask > bounding box > point) leads to better performance.
> <details>
> <summary>read the caption</summary>
> Table 6: Experimental results on SAM-FB test set. The difference between the four kinds of prompts indicates that the performance will be better with a more precise position prompt.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.14462/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14462/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14462/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14462/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14462/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14462/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14462/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14462/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14462/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14462/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14462/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14462/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14462/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14462/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14462/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14462/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}