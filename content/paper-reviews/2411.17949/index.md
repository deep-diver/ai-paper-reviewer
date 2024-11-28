---
title: "ROICtrl: Boosting Instance Control for Visual Generation"
summary: "ROICtrl boosts visual generation's instance control by using regional instance control via ROI-Align and a new ROI-Unpool operation, resulting in precise regional control and high efficiency."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Show Lab, National University of Singapore",]
showSummary: true
date: 2024-11-27
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2411.17949 {{< /keyword >}}
{{< keyword icon="writer" >}} Yuchao Gu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-11-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2411.17949" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2411.17949" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/roictrl-boosting-instance-control-for-visual" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2411.17949/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current text-based image generation models struggle to accurately place and describe multiple objects using only text. This limitation stems from the difficulty in precisely conveying spatial relationships and object attributes through natural language. Previous methods attempted to tackle this by using implicit position encoding or explicit attention masks, leading to issues like inaccurate coordinate injection or high computational costs.



The paper introduces ROICtrl, a novel adapter that enhances diffusion models by introducing regional instance control.  **It leverages ROI-Align and a complementary operation, ROI-Unpool, for efficient and precise manipulation of features**. This allows for accurate control over individual instances within an image, even with complex compositions.  Experiments demonstrate that ROICtrl outperforms existing methods while significantly reducing computational costs, and it's compatible with various existing tools and techniques for further advancements.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} ROICtrl, a new adapter for pretrained diffusion models, enables precise regional instance control. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} ROI-Unpool operation accurately restores cropped ROI features, improving efficiency and accuracy. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} ROICtrl-Bench, a new benchmark, comprehensively evaluates instance control, including both template-based and free-form instance captions {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it significantly advances the field of controllable image generation. By introducing a novel method for precise regional instance control, it addresses a major limitation of existing text-based models.  **This opens up new avenues for research in multi-instance generation and enables applications where accurate spatial and attribute control are crucial.**  The improved efficiency and compatibility with existing tools enhance its practical value and broad applicability.

------
#### Visual Insights



![](https://arxiv.org/html/2411.17949/x1.png)

> 🔼 This figure compares the instance control capabilities of DALL-E 3 and ROICtrl.  Panel (a) shows the results of prompting DALL-E 3 with a single caption that attempts to describe nine different image regions and their contents. The limitations of relying solely on natural language for precise positional and attribute control are evident in the resulting image. Panel (b) demonstrates the superior performance of ROICtrl in generating the same nine-grid image.  ROICtrl leverages regional instance control, where each instance is specified by a bounding box paired with a free-form caption, enabling significantly more accurate and detailed control over the composition of the generated image.
> <details>
> <summary>read the caption</summary>
> Figure 1: Grid test for instance control. (a) We structure the region positions and instance captions into a single plain caption, then prompt DALL-E 3 to generate a nine-grid image. (b) We apply ROICtrl to generate a nine-grid image based on instance captions.
> </details>





{{< table-caption >}}
| Benchmarks | In-Distribution |  | Out-of-Distribution |  | 
|---|---|---|---|---| 
|  | Template Cap. | Free-Form Cap. | Template Cap. | Free-Form Cap. | 
| GLIGEN-Bench [24] | ✓ |  |  |  | 
| MIG-Bench [48] |  |  | ✓ |  | 
| InstDiff-Bench [40] | ✓ |  | ✓ |  | 
| ROICtrl-Bench | ✓ | ✓ | ✓ | ✓ | {{< /table-caption >}}

> 🔼 Table 1 compares existing instance control benchmarks.  It highlights a key difference: previous benchmarks primarily used template-based instance captions (predefined structures), limiting the flexibility of descriptions. In contrast, the newly proposed ROICtrl-Bench includes both template-based and free-form captions (allowing more natural language). This broader approach makes ROICtrl-Bench a more comprehensive evaluation tool for instance control methods.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of existing instance control benchmarks. Previous benchmarks mainly focus on template-based instance captions, while ROICtrl-Bench covers both template-based and free-form instance captions for comprehensive evaluation.
> </details>





### In-depth insights


#### ROI-Unpool's Role
ROI-Unpool plays a crucial role in enabling precise and efficient regional instance control within visual generation models.  Unlike previous methods that rely on implicit position encoding or computationally expensive attention masks, **ROI-Unpool offers an explicit and efficient mechanism for manipulating Regions of Interest (ROIs)** on high-resolution feature maps.  By complementing ROI-Align, it accurately restores cropped ROI features to their original positions, resolving attribute leakage and improving spatial alignment.  This allows the model to more effectively handle multiple instances, each with its own free-form caption and bounding box, without incurring excessive computational costs. The operation is crucial to the effectiveness of ROICtrl, allowing for precise regional control in visual generation while maintaining efficiency and accuracy.

#### ROICtrl Adaptability
ROICtrl's adaptability is a **key strength**, enabling seamless integration with various existing diffusion models and add-ons.  Its compatibility with community-finetuned models expands its reach and applicability beyond a single base model.  **Interoperability with spatial and embedding-based add-ons** such as ControlNet, T2I-Adapter, IP-Adapter, and ED-LORA significantly enhances functionality. This allows for fine-grained control over spatial layout and detailed instance attributes, resulting in richer and more customizable visual generation. The ability to work with these add-ons without requiring extensive modifications or retraining is a significant advantage, promoting ease of use and efficient implementation.  Furthermore, ROICtrl's adaptability extends to different generation settings, including continuous generation. This versatile nature makes it a highly adaptable and powerful tool for visual generation tasks.  The **flexible compatibility** of ROICtrl thus simplifies integration into existing workflows and allows researchers to leverage the benefits of existing techniques to enhance their generative models.

#### Benchmarking
Benchmarking in the context of a research paper on visual instance control for image generation is crucial for evaluating the effectiveness and efficiency of proposed methods.  A strong benchmark should consider a wide range of factors. **First**, it must cover diverse image compositions with varying numbers of instances and complexity. **Second**, the benchmark should evaluate performance across different types of instance captions—both template-based and free-form captions should be included to assess the model's robustness and adaptability to real-world scenarios.  **Third**, the metrics employed must holistically capture both spatial accuracy (e.g., mIoU) and attribute fidelity.  Failing to evaluate free-form captioning can limit the applicability of the results, while neglecting spatial accuracy might lead to models that misplace elements, despite accurately representing the described attributes. A good benchmark should use several established metrics and should propose novel ones to capture critical aspects that may be missed by existing evaluations. **Finally**, comparisons should be made against existing state-of-the-art methods to understand precisely how the novel contributions improve over current techniques. By adhering to these principles, a solid benchmark ensures rigorous evaluation, promoting trust in the research findings and driving progress in the field.

#### Ablation Studies
Ablation studies systematically remove components of a model to assess their individual contributions.  In this context, they would likely evaluate the impact of each module in the ROICtrl framework. **Key components to analyze would be ROI-Unpool**, investigating the benefits of its explicit ROI manipulation over implicit methods.  The effectiveness of the **learnable attention blending mechanism** that fuses global and instance attention would also be assessed, along with the impact of the **ROI self-attention module**. Further ablation could focus on the regularization term, determining its role in balancing global and instance information.  By observing performance changes (e.g., in mIoU, accuracy metrics) after removing each component, researchers gain insights into the importance of individual parts and can identify potential areas for optimization or simplification.  **The results could show that certain components are essential for optimal performance** while others may have limited impact or even be detrimental.  This analysis is critical for understanding the architecture's strengths, weaknesses, and potential modifications for future development.

#### Future Work
The authors acknowledge the limitations of their current approach, particularly concerning highly overlapping bounding boxes where instance distinction becomes unreliable.  **Future work should focus on refining the learnable attention blending mechanism** to better weigh global and instance captions, thereby improving stability in these complex scenarios.  Extending ROICtrl to video instance control is another promising avenue, leveraging its adaptability to handle temporal consistency and enhance video generation.  **Investigating compatibility with transformer-based diffusion models** is crucial to broaden the applicability of ROI-Unpool and address the computational cost associated with high-resolution feature maps. Finally, addressing the potential misuse of this technology, such as generating deceptive images of public figures, requires **developing robust methods for detecting and mitigating such malicious applications.** This includes exploring techniques like anti-dreambooth or watermarking.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2411.17949/x2.png)

> 🔼 Figure 2 showcases the versatility of ROICtrl in various visual generation scenarios.  Panel (a) demonstrates ROICtrl's ability to enhance standard and community-modified diffusion models to generate images with multiple instances, unlike typical methods that struggle with this complexity.  Building on this, panels (b) through (e) illustrate ROICtrl's seamless integration with other popular add-ons.  Specifically, (b) shows its compatibility with different community models, (c) demonstrates its functionality when paired with spatial-based add-ons to fine-tune spatial aspects of generation, while (d) and (e) highlight its performance with embedding-based add-ons for more precise control over instance identities. Finally, (f) showcases ROICtrl's ability to perform continuous generation, where the model iteratively refines and extends existing images.  Note that human identity images have been excluded due to ethical considerations.
> <details>
> <summary>read the caption</summary>
> Figure 2: Applications of ROICtrl. A trained ROICtrl adapter can extend existing diffusion models (a) and their community-finetuned versions (b) to multi-instance generation. Additionally, it can collaborate with spatial-based add-ons (c) and embedding-based add-ons (d, e) to offer fine-grained control over spatial or identity information. ROICtrl can also be applied to continuous generation settings (f). Due to legal considerations, we do not display customized results involving human identity.
> </details>



![](https://arxiv.org/html/2411.17949/x3.png)

> 🔼 Figure 3 illustrates three different approaches for injecting Region of Interest (ROI) information into a visual generation model.  (a) shows ROI injection via embedding, where bounding box coordinates and instance captions are combined into embeddings and fed into a self-attention mechanism. This method is implicit and may suffer from attribute leakage. (b) demonstrates ROI injection with an attention mask, where an attention mask isolates each ROI during caption injection, improving alignment but adding computational overhead.  (c) presents the authors' proposed method using ROI-Align and ROI-Unpool.  ROI-Align extracts ROI features, while ROI-Unpool enables precise, efficient reconstruction of the ROIs on the high-resolution feature map.  The notation ⌊⋅⌉ indicates that coordinates are quantized to the nearest integer in (a) and (b), highlighting a potential source of error.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustration of different ROI injection designs. ⌊⋅⌉delimited-⌊⌉⋅\lfloor\cdot\rceil⌊ ⋅ ⌉ denotes coordinate quantization to the nearest integer.
> </details>



![](https://arxiv.org/html/2411.17949/x4.png)

> 🔼 Figure 4 illustrates the ROI-Unpool operation, a key component of the ROICtrl model.  It highlights the difference between spatial features (represented by a dashed grid) and ROI features (represented by a solid grid).  The figure shows how ROI-Unpool, similar to ROI-Align, avoids coordinate quantization during computation, thus ensuring accurate and efficient manipulation of regions of interest within high-resolution feature maps for visual generation. This is crucial because it avoids the loss of information and computational inefficiencies associated with directly applying operations to lower-resolution feature maps.
> <details>
> <summary>read the caption</summary>
> Figure 4: Illustration of ROI-Unpool. The dashed grid represents the spatial features, while the solid grid represents the ROI features. Similar to ROI-Align [17], ROI-Unpool avoids coordinate quantization during computation.
> </details>



![](https://arxiv.org/html/2411.17949/x5.png)

> 🔼 ROICtrl's architecture is shown, detailing how it integrates with pre-trained diffusion models.  It consists of two parallel paths: one for global caption processing (pretrained) and another for instance caption processing (newly added).  Both paths utilize cross-attention mechanisms to generate attention maps (global and instance-specific). A learnable attention blending module then combines these attention maps to produce a final output that incorporates both global and instance-level information for refined image generation. The instance-specific pathway also incorporates ROI-Align and ROI-Unpool operations for precise spatial control over individual instances.
> <details>
> <summary>read the caption</summary>
> Figure 5: Detailed structure of ROICtrl. In parallel with the pretrained global caption injection, we introduce an additional instance caption injection. The global attention output and instance attention output are then fused using learnable blending.
> </details>



![](https://arxiv.org/html/2411.17949/x6.png)

> 🔼 Figure 6 presents a qualitative comparison of the ROICtrl model's performance against other state-of-the-art instance control methods on the ROICtrl-Bench benchmark. The benchmark consists of four tracks. Tracks 1 and 2 evaluate the models' ability to handle template-based instance captions (where captions follow a specific format), while tracks 3 and 4 assess their performance with free-form instance captions (where captions are less structured and more natural).  In-distribution (ID) captions are those taken directly from the real dataset, whereas out-of-distribution (OOD) captions were generated using GPT-4, representing a more challenging scenario for the models. The figure showcases example image generations from each model and track, highlighting their strengths and weaknesses in handling various types of instance captions.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative comparison on ROICtrl-Bench. Track 1 and 2 examine template-based instance caption, while track 3 and 4 evaluate free-form instance caption. [ID] denotes in-distribution caption derived from real dataset, and [OOD] denotes out-of-distribution caption generated by GPT-4 [1].
> </details>



![](https://arxiv.org/html/2411.17949/x7.png)

> 🔼 Figure 7 presents an ablation study comparing the performance of ROICtrl against a baseline method, GLIGEN*, which uses embedding-based injection.  The study evaluates several key aspects of model performance, including convergence speed, the accuracy of spatial alignment (how well the generated image matches the specified locations), and the accuracy of regional text alignment (how well the generated image matches the textual descriptions within different regions).  Further, the figure shows that ROICtrl maintains robust performance across various aspect ratios during inference. This demonstrates ROICtrl's improved efficiency, precision, and adaptability compared to the GLIGEN* baseline.
> <details>
> <summary>read the caption</summary>
> Figure 7: Ablation study comparing ROICtrl and embedding-based injection (GLIGEN*). ROICtrl achieves faster convergence, improved spatial and regional text alignment, and flexible inference aspect ratios.
> </details>



![](https://arxiv.org/html/2411.17949/x8.png)

> 🔼 This figure shows the effect of adding a regularization term,  ℒr⁢e⁢gsubscriptℒ𝑟𝑒𝑔 \mathcal{L}_{reg} , to the loss function during training. This term reduces the impact of the global attention output within the Region of Interest (ROI), thereby sharpening the focus on the instance-specific information contained within the ROI.  The improved regional text alignment is visually shown with two example image generation outputs, one without and one with the regularization term.
> <details>
> <summary>read the caption</summary>
> Figure 8: Effect of global attention regularization ℒr⁢e⁢gsubscriptℒ𝑟𝑒𝑔\mathcal{L}_{reg}caligraphic_L start_POSTSUBSCRIPT italic_r italic_e italic_g end_POSTSUBSCRIPT. Adding ℒr⁢e⁢gsubscriptℒ𝑟𝑒𝑔\mathcal{L}_{reg}caligraphic_L start_POSTSUBSCRIPT italic_r italic_e italic_g end_POSTSUBSCRIPT reduces the weight of the global attention output within the ROI, leading to improved regional text alignment.
> </details>



![](https://arxiv.org/html/2411.17949/x9.png)

> 🔼 This figure compares the effects of using regional versus global coordinate conditioning in a diffusion model for image generation.  The experiment shows that when the inference image size is doubled compared to the training size, using regional coordinates leads to repeated instances in the generated image. This highlights the advantage of using global coordinates for better generalization to different image sizes.
> <details>
> <summary>read the caption</summary>
> Figure 9: Comparison of regional and global coordinate conditioning. Regional coordinate conditioning leads to repetition issues when the inference size is doubled relative to the training size.
> </details>



![](https://arxiv.org/html/2411.17949/x10.png)

> 🔼 ROICtrl tends to prioritize using instance captions to resolve attribute binding issues. However, when multiple instance boxes have similar captions and significant overlap, ROICtrl's performance becomes unstable and inconsistent, as it struggles to accurately generate the intended visual details for each instance.
> <details>
> <summary>read the caption</summary>
> Figure 10: Limitation of ROICtrl. ROICtrl prioritizes the use of instance captions to solve attribute binding but performs unstably when instance boxes with similar captions are heavily overlapped.
> </details>



![](https://arxiv.org/html/2411.17949/x11.png)

> 🔼 This figure compares ROICtrl's performance against other methods (GLIGEN, Instance Diffusion, MIGC) on small-sized Regions of Interest (ROIs) using the InstDiff-Bench benchmark.  The goal is to assess how well each method handles the challenges of generating and controlling very small objects within an image, which are often harder to manage than larger ones.  The visual comparison shows the quality and accuracy of generated images for each method. Zooming in on the images is recommended for a clearer evaluation.
> <details>
> <summary>read the caption</summary>
> (a) Qualitative comparison of ROICtrl and previous methods on small-sized ROIs in Instdiff-Bench [40]. (Zoom in for details.)
> </details>



![](https://arxiv.org/html/2411.17949/x12.png)

> 🔼 This figure from section 6 (Detailed Evaluation Settings) compares the performance of ROICtrl against previous methods (GLIGEN, Instance Diffusion, and MIGC) on the InstDiff-Bench benchmark. The comparison focuses on the generation of images based on out-of-distribution (OOD) instance captions.  Out-of-distribution captions means the model is given descriptions it hasn't seen during training, testing its ability to generalize. The figure visually demonstrates the quality of generated images for each method, showcasing the differences in terms of accuracy and proper representation of attributes based on provided OOD captions.  Each row represents a different model. Each column shows results for the same test prompt, allowing a visual comparison of how well each model handles the out-of-distribution description.
> <details>
> <summary>read the caption</summary>
> (b) Qualitative comparison of ROICtrl and previous methods on out-of-distribution instance captions in Instdiff-Bench [40].
> </details>



![](https://arxiv.org/html/2411.17949/x13.png)

> 🔼 This figure compares the performance of ROICtrl against existing methods (GLIGEN, Instance Diffusion, and MIGC) on the MIG-Bench benchmark.  Specifically, it focuses on the scenario where the models are given out-of-distribution instance captions; meaning, captions describing instances not seen during the model's training. The images generated by each method illustrate their ability to accurately depict the objects and attributes specified in these unseen captions, highlighting the differences in their capacity for precise instance control and handling of novel descriptions.
> <details>
> <summary>read the caption</summary>
> (c) Qualitative comparison of ROICtrl and previous methods on out-of-distribution instance captions in MIG-Bench [48].
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Method | L2 | L3 | L4 | L5 | L6 | AVG | L2 | L3 | L4 | L5 | L6 | AVG |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| GLIGEN [24] | 0.37 | 0.29 | 0.253 | 0.26 | 0.26 | 0.27 | 0.42 | 0.32 | 0.27 | 0.27 | 0.28 | 0.30 |
| MIGC [48] | 0.64 | 0.58 | 0.57 | 0.54 | 0.57 | 0.56 | 0.74 | 0.67 | 0.67 | 0.63 | 0.66 | 0.66 |
| Instance Diffusion [40] | 0.52 | 0.48 | 0.50 | 0.42 | 0.42 | 0.46 | 0.58 | 0.52 | 0.55 | 0.47 | 0.47 | 0.51 |
| ROICtrl (Ours) | **0.78** | **0.72** | **0.67** | **0.61** | **0.64** | **0.66** | **0.85** | **0.79** | **0.74** | **0.67** | **0.70** | **0.73** |{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of ROICtrl against existing instance control methods (GLIGEN [24], MIGC [48], Instance Diffusion [40]) across three benchmark datasets: MIG-Bench [48], InstDiff-Bench [40], and the newly proposed ROICtrl-Bench.  The comparison uses metrics such as mean Intersection over Union (mIoU) and instance success rate to evaluate the performance of each method in terms of spatial alignment and regional text alignment.  Different levels are also evaluated, indicating the number of instances in the generated images, and various caption types (template-based and free-form) are considered for a comprehensive evaluation.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative comparison with prior works on MIG-Bench [48], InstDiff-Bench [40], and the proposed ROICtrl-Bench.
> </details>

{{< table-caption >}}
| Method | AP | AP<sub>50</sub> | AP<sub>s</sub> | AP<sub>m</sub> | AP<sub>l</sub> | AR | Acc<sub>color</sub> | CLIP<sub>color</sub> | Acc<sub>texture</sub> | CLIP<sub>texture</sub> |
|---|---|---|---|---|---|---|---|---|---|---|
| Upper bound (real images) | 48.4 | 65.2 | 30.9 | 53.3 | 64.8 | 67.8 | - | - | - | - |
| GLIGEN [24] | 24.1 | 42.6 | 3.1 | 22.2 | 49.0 | 35.9 | 26.3 | 0.212 | 17.7 | 0.208 |
| MIGC [48] | 22.4 | 41.5 | 2.1 | 20.1 | 46.8 | 32.8 | 53.8 | 0.243 | 24.3 | 0.215 |
| Instance Diffusion [40] | 40.1 | 57.2 | 10.4 | 49.4 | 67.1 | 53.2 | 55.2 | 0.243 | 26.1 | 0.222 |
| ROICtrl (Ours) | 41.0 | 63.5 | 16.3 | 46.5 | 65.7 | 54.1 | 62.3 | 0.256 | 29.3 | 0.227 |{{< /table-caption >}}
> 🔼 Table 2 presents a quantitative comparison of the proposed ROICtrl model against existing methods on three different benchmarks for instance control in visual generation.  Specifically, it evaluates performance across MIG-Bench, InstDiff-Bench, and the newly introduced ROICtrl-Bench. MIG-Bench uses Grounding-DINO to assess spatial alignment (mIoU) and evaluates regional text alignment within the color space. InstDiff-Bench evaluates spatial alignment using YOLO-Det AP and assesses regional text alignment based on color and texture using CLIP scores. Finally, ROICtrl-Bench uses a more comprehensive evaluation scheme using YOLO-World mIoU for spatial alignment and MiniCPM-V 2.6 for regional text alignment, encompassing both template-based and free-form captions and considering in-distribution and out-of-distribution scenarios.
> <details>
> <summary>read the caption</summary>
> (a) Quantitative evaluation on MIG-Bench [48]. MIG-Bench uses Grounding-DINO [27] mIoU to measure spatial alignment and assesses regional text alignment within the color space.
> </details>

{{< table-caption >}}
| Method | T1: Subject |  | T2: Subject* |  | T3: Subject + Attribute |  | T4: Subject + Attribute* |  | AVG |  |
|---|---|---|---|---|---|---|---|---|---|---|
| Upper Bound (real images) | 0.797 | 72.5 | - | - | 0.797 | 66.4 | - | - | - | - |
| GLIGEN [24] | 0.579 | 59.1 | 0.474 | 43.3 | 0.546 | 16.3 | 0.548 | 1.90 | 0.537 | 30.2 |
| MIGC [48] | 0.521 | 61.9 | 0.442 | 47.6 | 0.498 | 33.7 | 0.498 | 12.3 | 0.490 | 38.9 |
| Instance Diffusion [40] | 0.673 | 66.5 | **0.562** | **53.5** | 0.634 | 39.4 | 0.559 | 23.0 | 0.607 | 45.6 |
| ROICtrl (Ours) | **0.692** | **68.9** | 0.557 | 50.9 | **0.688** | **47.3** | **0.669** | **27.8** | **0.652** | **48.7** |{{< /table-caption >}}
> 🔼 Table 2 presents a quantitative comparison of various instance control methods on the InstDiff-Bench benchmark.  InstDiff-Bench assesses two key aspects of instance control: spatial alignment and regional text alignment. Spatial alignment is measured using the Average Precision (AP) metric from the YOLO-Det object detection model, indicating how accurately the generated instances align with their corresponding ground truth bounding boxes.  Regional text alignment evaluates how well the generated image's attributes (color and texture) match the textual descriptions provided for each instance. This is assessed using the CLIP score, which measures the similarity between the visual features of the generated region and the textual embedding of its description.  The table provides a detailed comparison, allowing for a quantitative evaluation of different methods' accuracy in controlling both the spatial location and visual attributes of generated instances within complex scenes.
> <details>
> <summary>read the caption</summary>
> (b) Quantitative evaluation on InstDiff-Bench [40]. InstDiff-Bench evaluates spatial alignment using YOLO-Det [21] Average Precision (AP) and assesses regional text alignment based on color and texture using CLIP score [33].
> </details>

{{< table-caption >}}
| Models | ROICtrl-Bench | MIG-Bench | Instdiff-Bench | Training | Inference | Deployed | Support |
|---|---|---|---|---|---|---|---|---|
| mIoU | Acc | mIoU | Acc | AP | Color Acc | Texture Acc | Memory (G) | Speed (s/img) | Resolution | Emb Addon |
| ROICtrl (Ours) | 0.652 | 48.7 | 0.66 | 0.73 | 41.0 | 62.3 | 29.3 | 34.3 | 13.1 | all | ✓ |
| Mask-Attn <br> ROICtrl (mask) | 0.628 | 49.2 | 0.64 | 0.71 | 37.1 | 62.5 | 30.3 | 65.5 | 31.5 | all | ✓ |
| Mask-Attn <br> Instance Diffusion | 0.607 | 45.6 | 0.46 | 0.51 | 40.1 | 55.2 | 26.1 | - | 129.2 | all | ✗ |
| MIGC | 0.490 | 38.9 | 0.56 | 0.66 | 22.4 | 53.8 | 24.3 | - | 23.5 | 8x, 16x | ✗ |{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different methods on the ROICtrl-Bench, a newly proposed benchmark for evaluating instance control in image generation.  It assesses both spatial and regional text alignment performance.  Spatial alignment is measured using mean Intersection over Union (mIoU) calculated by YOLO-World. Regional text alignment is measured by accuracy (Acc) using MiniCPM-V 2.6. The benchmark includes four tracks. Tracks 1 and 2 use template-based instance captions for in-distribution data, while Tracks 3 and 4 use free-form instance captions. Notably, Tracks 2 and 4 also include out-of-distribution captions generated by GPT-4, making the evaluation more comprehensive and realistic.
> <details>
> <summary>read the caption</summary>
> (c) Quantitative evaluation on the proposed ROICtrl-Bench. We assess spatial alignment using YOLO-World [6] mIoU and evaluate regional text alignment with MiniCPM-V 2.6 [44]. Tracks 1 and 2 examine template-based instance caption, while tracks 3 and 4 evaluate free-form instance caption. * denote out-of-distribution caption rewritten by GPT-4 [1].
> </details>

{{< table-caption >}}
| Models | ROICtrl-Bench mIoU | ROICtrl-Bench Acc | MIG-Bench mIoU | MIG-Bench Acc | Instdiff-Bench AP | Instdiff-Bench Color Acc | Instdiff-Bench Texture Acc |
|---|---|---|---|---|---|---|---| 
| ROICtrl (Ours) | 0.652 | 48.7 | 0.66 | 0.73 | 41.0 | 62.3 | 29.3 |
| - ROI Self-Attn | 0.540 | 48.6 | 0.66 | 0.72 | 32.7 | 60.5 | 32.9 |
| - \mathcal{L}_{reg} | 0.658 | 47.2 | 0.66 | 0.72 | 41.1 | 58.2 | 21.9 |
| global coord \rightarrow local coord | 0.655 | 49.5 | 0.68 | 0.74 | 42.1 | 63.3 | 30.3 |
| multi-scale roi \rightarrow single-scale roi | 0.639 | 49.6 | 0.65 | 0.73 | 40.0 | 62.5 | 29.9 |{{< /table-caption >}}
> 🔼 This ablation study compares ROICtrl's performance against a method using attention masks for handling Regions of Interest (ROIs) during image generation.  The comparison focuses on several key aspects: regional text alignment (how well the generated image matches the textual descriptions of each region), spatial alignment (how accurately the generated objects are positioned within their designated bounding boxes), memory usage, computational cost, and inference speed.  The inference speed was specifically measured by generating a single high-resolution image (1024x1024 pixels) containing 25 ROIs using the DDIM algorithm with specific parameters (50 steps and fp16 precision) on an A100 GPU. The results highlight ROICtrl's ability to achieve similar regional text alignment but superior spatial alignment compared to the attention mask method while significantly reducing memory and computation demands.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study comparing ROICtrl with attention mask–based ROI injection. ROICtrl achieves similar regional text alignment but better spatial alignment, while significantly reducing memory and computational costs. The inference speed is tested by generating a 10242 resolution image with 25 valid ROIs, 50 DDIM [37] steps, and fp16 precision on an A100 GPU.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2411.17949/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17949/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17949/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17949/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17949/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17949/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17949/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17949/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17949/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17949/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17949/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17949/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17949/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}