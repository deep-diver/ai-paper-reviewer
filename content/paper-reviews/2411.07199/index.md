---
title: "OmniEdit: Building Image Editing Generalist Models Through Specialist Supervision"
summary: "OmniEdit, a novel instruction-based image editing model, surpasses existing methods by leveraging specialist supervision and high-quality data, achieving superior performance across diverse editing ta..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 University of Waterloo",]
showSummary: true
date: 2024-11-11
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2411.07199 {{< /keyword >}}
{{< keyword icon="writer" >}} Cong Wei et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-11-12 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2411.07199" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2411.07199" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/omniedit-building-image-editing-generalist" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2411.07199/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current instruction-guided image editing models struggle with limited capabilities, noisy data, and handling diverse image aspects. These limitations hinder real-world applications. 

OmniEdit tackles these issues with a novel approach. It trains a generalist model using supervision from seven specialist models, each expert in a specific editing task, ensuring broad coverage.  **High-quality data is ensured by using large multimodal models for importance sampling instead of simpler methods, significantly reducing noise and artifacts.**  The model uses a new architecture (EditNet) to enhance editing success rates and handles images of various aspect ratios and resolutions.  **Evaluations demonstrate its superior performance over existing models.**

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} OmniEdit utilizes specialist supervision during training, resulting in a more versatile and robust image editing model. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The use of importance sampling with large multimodal models leads to significantly improved data quality for training. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} OmniEdit successfully handles diverse editing tasks and images with varying aspect ratios and resolutions, outperforming existing methods. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers working on image editing and generation because it directly addresses the limitations of existing methods.  **By introducing a novel training approach using specialist models and high-quality data, it significantly improves the capabilities of image editing models.** This opens avenues for developing more robust and versatile image editing tools with real-world applications.

------
#### Visual Insights



![](https://arxiv.org/html/2411.07199/x1.png)

> 🔼 This figure showcases Omni-Edit's ability to edit high-resolution images with various aspect ratios.  It demonstrates the model's versatility by accurately executing diverse editing instructions across different image sizes and orientations, while maintaining the original image quality.  The example edits range from simple object replacements to complex scene modifications, highlighting Omni-Edit's proficiency in instruction-based image manipulation. Zooming in on the images allows for a more detailed observation of the results. 
> <details>
> <summary>read the caption</summary>
> Figure 1: Editing high-resolution multi-aspect images with Omni-Edit. Omni-Edit is an instruction-based image editing generalist capable of performing diverse editing tasks across different aspect ratios and resolutions. It accurately follows instructions while preserving the original image’s fidelity. We suggest zooming in for better visualization.
> </details>





{{< table-caption >}}
| Property | InstructP2P | MagicBrush | UltraEdit | MGIE | HQEdit | CosXL | Omni-Edit |
|---|---|---|---|---|---|---|---| 
| Training Dataset Properties |  |  |  |  |  |  |  |
| Real Image? | ✗ | ✓ | ✓ | ✓ | ✗ | ✗ | ✓ |
| Any Res? | ✗ | ✗ | ✗ | ✗ | ✗ | ✗ | ✓ |
| High Res? | ✗ | ✗ | ✗ | ✗ | ✓ | ✗ | ✓ |
| Fine-grained Image Editing Skills |  |  |  |  |  |  |  |
| Obj-Swap | ⭐⭐☆ | ⭐⭐☆ | ⭐⭐☆ | ⭐☆ ☆ | ⭐⭐☆ | ⭐ ☆ ☆ | ⭐⭐☆ |
| Obj-Add | ⭐☆☆ | ⭐⭐☆ | ⭐☆☆ | ⭐☆ ☆ | ⭐☆☆ | ⭐☆☆ | ⭐⭐☆ |
| Obj-Remove | ⭐☆☆ | ⭐⭐☆ | ⭐☆☆ | ⭐☆ ☆ | ⭐☆☆ | ⭐☆☆ | ⭐⭐☆ |
| Attribute | ⭐⭐☆ | ⭐☆☆ | ⭐⭐☆ | ⭐☆ ☆ | ⭐☆☆ | ⭐☆☆ | ⭐⭐☆ |
| Back-Swap | ⭐⭐☆ | ⭐⭐☆ | ⭐⭐☆ | ⭐☆ ☆ | ⭐⭐☆ | ⭐⭐☆ | ⭐⭐☆ |
| Environment | ⭐☆☆ | ⭐☆☆ | ⭐☆☆ | ⭐☆ ☆ | ⭐☆☆ | ⭐⭐☆ | ⭐⭐☆ |
| Style | ⭐⭐☆ | ⭐☆☆ | ⭐⭐☆ | ⭐☆ ☆ | ⭐☆☆ | ⭐⭐☆ | ⭐⭐☆ |{{< /table-caption >}}

> 🔼 This table compares Omni-Edit to other state-of-the-art end-to-end image editing models.  The comparison considers several key properties: whether the model is trained on real images, handles images of any resolution and high resolutions, and the model's performance on several fine-grained image editing tasks (object swap, addition, removal, attribute modification, background swap, environment change, and style transfer).  The scores are based on a preliminary evaluation using roughly 50 different prompts, and each task's performance is qualitatively rated using a star system.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of Omni-Edit with all the existing end-to-end image editing models. The scores are based on a preliminary studies on around 50 prompts.
> </details>





### In-depth insights


#### Specialist Supervision
The concept of "Specialist Supervision" in the context of training image editing generalist models offers a compelling approach to overcome limitations of existing methods.  Instead of relying on a single, broadly trained model, **the approach advocates training several specialist models, each focusing on a specific editing task**. This task-specific training allows each specialist to develop high-level expertise in its designated area (e.g., object removal, style transfer). The key innovation lies in leveraging these specialists to supervise the training of a generalist model. This means the generalist learns from the combined knowledge and skillsets of the various specialists, ultimately inheriting their strengths and achieving a broader editing capability.  This strategy contrasts with previous approaches that mostly utilize synthetically generated datasets leading to a lack of skill diversity in trained models.   **The use of specialist supervision is a form of knowledge distillation, transferring the expertise of multiple models into a single, robust generalist**, thereby potentially resulting in improved performance and generalization across a wide range of editing tasks and image types.

#### Importance Sampling
Importance sampling, in the context of training a robust image editing model, addresses the challenge of low-quality synthetic training data.  Standard methods for filtering training pairs often fail to adequately assess image quality, leading to models with limited capabilities. **The innovative approach here leverages the power of large multimodal models** (like GPT-4) to assign quality scores to synthesized image edits.  This **importance sampling allows for prioritization of high-quality data** during training. However, directly using LMMs for scoring is computationally expensive.  Therefore, the method incorporates a clever **distillation strategy**, transferring the scoring capability to a smaller, more efficient model (InternVL2), which then filters the dataset at scale.  This ensures that the model is trained on a high-quality subset of the synthetic data, significantly improving its performance and ability to generalize to real-world image editing tasks.

#### EditNet Architecture
The proposed EditNet architecture is a crucial innovation in OmniEdit, designed to address limitations of existing diffusion-based image editing methods.  It enhances the interaction between control signals (from instructions) and the original diffusion process. Unlike parallel approaches like ControlNet, EditNet uses an adaptive adjustment of control signals via intermediate representations. This allows for a more nuanced understanding of instructions, leading to improved accuracy in complex edits.  **The key advantage is that EditNet's interaction between the control branch (processing instructions) and the original branch (the diffusion model) allows the model to dynamically adapt its control signals. This adaptive mechanism is essential for tasks like object removal, where a precise understanding of the instruction is critical for successful execution.**  By leveraging this architecture, OmniEdit can perform diverse editing tasks with greater accuracy and fidelity than comparable models, highlighting the effectiveness of EditNet in handling high-resolution, multi-aspect ratio images, and achieving improved performance in both perceptual quality and semantic consistency.

#### Aspect Ratio Support
The ability to handle images with diverse aspect ratios is a crucial factor for any practical image editing system.  A model trained only on square images will likely struggle with non-square inputs, leading to distortions or poor results.  **Supporting arbitrary aspect ratios demonstrates robustness and generalizability**, moving beyond the limitations of many existing methods which are often restricted to a single, fixed aspect ratio.  This feature significantly increases the real-world applicability of the model, as it can process a wider variety of input images without requiring preprocessing steps like padding or cropping.  **The achievement of high-quality edits across different aspect ratios underscores the model's superior adaptability and generalization capabilities.**  This is particularly important in real-world scenarios where images are rarely constrained to a specific format.  Furthermore, **training data that includes a wide range of aspect ratios is essential for this ability**, highlighting the importance of dataset construction for achieving such model robustness.

#### Future Work
Future research directions stemming from the OmniEdit paper could involve several key areas.  **Improving the quality and diversity of training data** is crucial; exploring alternative data sources and augmentation techniques beyond the current methods would significantly enhance model capabilities. The **development of more sophisticated scoring functions** to assess the quality of image edits is necessary.  Moving beyond simple metrics and incorporating human evaluation or more nuanced automated metrics would allow for better model training and evaluation.  **Expanding the range of supported image editing tasks** is another important area of future work.  OmniEdit excels in several tasks, but many more could be incorporated and generalized.  Finally, **investigating the computational efficiency** of the proposed model and exploring methods for improving speed and reducing memory consumption is a critical consideration for real-world applications.  These advancements would position OmniEdit as an even more versatile and practical tool for various image editing applications.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2411.07199/x2.png)

> 🔼 The Omni-Edit training pipeline consists of four stages. Stage 1 involves training seven specialist models, each focusing on a specific image editing task (object swap, removal, addition, attribute modification, background swap, environment change, style transfer).  These specialists are trained using a combination of pre-trained text-to-image models and task-specific augmentations. Stage 2 uses these specialists to generate synthetic image editing datasets for each task. Stage 3 incorporates an importance sampling method using a large multimodal model (like GPT-4) to filter noisy or low-quality data from the synthetic datasets, ensuring high-quality training data.  Finally, Stage 4 trains the Omni-Edit generalist model using the high-quality, multi-task data generated in the previous stages. The specialist models act as supervisors to guide the learning of the generalist model.  This approach allows Omni-Edit to handle diverse and complex image editing instructions.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of the Omni-Edit training pipeline.
> </details>



![](https://arxiv.org/html/2411.07199/x3.png)

> 🔼 This figure demonstrates the improvement in InternVL2's performance as a scoring function after fine-tuning with GPT-40 responses. The top-right panel shows the original InternVL2 failing to detect distortions or inconsistencies in an edited image, even when it does not adhere to instructions.  The bottom-right panel shows the fine-tuned InternVL2 accurately identifying such issues, showcasing its enhanced ability to evaluate the quality of image edits.  This improved scoring function is crucial for selecting high-quality training data.
> <details>
> <summary>read the caption</summary>
> Figure 3: InternVL2 as a scoring function before (top right) and after (bottom right) fine-tuning on GPT-4o’s response. On the top right, the original InternVL2 fails to identify the unusual distortions in the edited image it also does not spot the error when the edited image fails to meet the specified editing instructions. On the bottom right, finetuned-InternVL2 successfully detects such failures and serve as a reliable scoring function.
> </details>



![](https://arxiv.org/html/2411.07199/x4.png)

> 🔼 Figure 4 compares the architecture of three different diffusion-based image editing models: EditNet (the authors' model), ControlNet, and InstructPix2Pix.  The figure highlights the key differences in how these models incorporate control signals (from text prompts and other conditioning information) to modify the image generation process.  ControlNet uses parallel execution of a control branch alongside the main generation branch. In contrast, EditNet allows for a more dynamic and adaptive adjustment of control signals through an interaction between the control and main branches, facilitated by intermediate representations.  This interaction allows for better understanding of the text prompt and thus, more effective editing. Finally, EditNet also updates the text representation itself, further enhancing task comprehension. InstructPix2Pix employs a simple channel-wise concatenation of control signals with the main image representation.
> <details>
> <summary>read the caption</summary>
> Figure 4: Architecture Comparison between EditNet(ours), ControlNet and InstructPix2Pix(Channel-wise concatenation) for DiT models. Unlike ControlNet’s parallel execution, EditNet allows adaptive adjustment of control signals by intermediate representations interaction between the control branch and the original branch. EditNet also updates the text representation, enabling better task understanding.
> </details>



![](https://arxiv.org/html/2411.07199/x5.png)

> 🔼 Figure 5 presents a qualitative comparison of image editing results produced by OMNI-Edit and several baseline methods.  The figure showcases examples from a subset of the test set, highlighting OMNI-Edit's superior performance in various editing tasks. By directly comparing the visual outputs side-by-side, the reader can readily assess the differences in editing quality, accuracy, and adherence to instructions across the various models.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative comparison between baselines and Omni-Edit on a subset of the test set.
> </details>



![](https://arxiv.org/html/2411.07199/x6.png)

> 🔼 Figure 6 presents a comparative analysis of three different models on an object removal task.  The first model, Omni-Edit-ControlNet, demonstrates a failure to understand the task instructions, resulting in an unsuccessful edit. The second model, Omni-Edit-ControlNet-TextControl, which includes a text-updating component, correctly interprets the task; however, it struggles to fully remove the targeted object, leaving remnants.  The third model, Omni-Edit, successfully executes the object removal task, completely eliminating the desired object.
> <details>
> <summary>read the caption</summary>
> Figure 6: Omni-Edit-ControlNet fails to grasp the task intent, while Omni-Edit-ControlNet-TextControl—a variant with a text-updating branch—recognizes the intent but struggles with content removal. In contrast, Omni-Edit accurately removes content.
> </details>



![](https://arxiv.org/html/2411.07199/x7.png)

> 🔼 Figure 7 demonstrates a comparison of image editing results between Omni-Edit and Omni-Edit-Channel-Wise-Concatenation, highlighting Omni-Edit's ability to maintain the original image generation capabilities of the base model (SD3) while performing edits.  The experiment involves replacing a person in an image with Batman and adding a vintage car.  Omni-Edit successfully integrates these edits while preserving image quality.  In contrast, Omni-Edit-Channel-Wise-Concatenation shows a significant decline in image generation quality after edits, indicating a compromise in the base model's generation capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 7: (a) shows the source image. (d) presents images generated by SD3 in response to prompts for “an upper body picture of Batman” and “a shiny red vintage Chevrolet Bel Air car.” We use the prompts “Replace the man with Batman” and “Add a shiny red vintage Chevrolet Bel Air car to the right” to Omni-Edit and Omni-Edit-Channel-Wise-Concatenation, which was trained on Omni-Edit training data. From (b) and (c), one can observe that Omni-Edit preserves the generation capabilities of SD3, while Omni-Edit-Channel-Wise-Concatenation exhibits a notable degradation in generation capability.
> </details>



![](https://arxiv.org/html/2411.07199/x8.png)

> 🔼 This figure shows the prompt used to evaluate the Semantic Consistency (SC) score in the OMNI-EDIT model's performance.  The prompt instructs an evaluator (acting as a professional digital artist) to assess two images: an original AI-generated image and an edited version.  The evaluator must rate how well the edited image follows the given editing instructions on a scale of 0 to 10, with 0 representing complete failure and 10 representing perfect adherence. A second rating (also 0-10) assesses the degree of overediting in the image. The prompt provides detailed instructions for how to format the numerical scores and associated textual rationale.
> <details>
> <summary>read the caption</summary>
> Figure 8: Prompt for evaluating SC score.
> </details>



![](https://arxiv.org/html/2411.07199/x9.png)

> 🔼 This figure shows the prompt used for human evaluators to assess the perceptual quality (PQ) of images generated by the OMNI-EDIT model and its baselines.  The evaluators are instructed to act as professional digital artists, rating the image quality on a scale of 0-10, based solely on technical aspects like distortions, unnatural proportions, and artifacts.  They are explicitly told to ignore contextual realism or the naturalness of the scene.
> <details>
> <summary>read the caption</summary>
> Figure 9: Prompt for evaluating PQ score.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Editing Tasks | Definition | Instruction  Example |
|---|---|---|
| Object Swap | c describes an object to replace by specifying both the object to remove and the new object to add, along with their properties such as appearance and location. | Replace the black cat with a brown dog in the image. |
| Object Removal | c describes which object to remove by specifying the object’s properties such as appearance, location, and size. | Remove the black cat from the image. |
| Object Addition | c describes a new object to add by specifying the object’s properties such as appearance and location. | Add a red car to the left side of the image. |
| Attribute Modification | c describes how to modify the properties of an object, such as changing its color and facial expression. | Change the blue car to a red car. |
| Background Swap | c describes how to replace the background of the image, specifying what the new background should be. | Replace the background with a space-ship interior. |
| Environment Change | c describes a change to the overall environment, such as the weather, lighting, or season, without altering specific objects. | Change the scene from daytime to nighttime. |
| Style Transfer | c describes how to apply a specific artistic style or visual effect to the image, altering its overall appearance while keeping the content the same. | Apply a watercolor painting style to the image. |{{< /table-caption >}}
> 🔼 This table provides detailed definitions and illustrative examples for seven distinct image editing tasks.  Each row defines a specific task, explaining the type of edits it involves, and provides a concise, illustrative example of the task.  The table is crucial for understanding the scope and variety of image manipulations addressed in the research, including adding or removing objects, modifying object attributes, or making overall background or environmental changes.
> <details>
> <summary>read the caption</summary>
> Table 2: Task Definitions and Examples
> </details>

{{< table-caption >}}
| Models | VIEScore (GPT4o) |  |  | VIEScore (Gemini) |  |  | Human Evaluation |  |  |  |
|---|---|---|---|---|---|---|---|---|---|---|
|  | PQ<sub>avg</sub>↑ | SC<sub>avg</sub>↑ | O<sub>avg</sub>↑ | PQ<sub>avg</sub>↑ | SC<sub>avg</sub>↑ | O<sub>avg</sub>↑ | PQ<sub>avg</sub>↑ | SC<sub>avg</sub>↑ | O<sub>avg</sub>↑ | Acc<sub>avg</sub>↑ |
|---|---|---|---|---|---|---|---|---|---|---|
| **Inversion-based Methods** |  |  |  |  |  |  |  |  |  |  |
| DiffEdit | 5.88 | 2.73 | 2.79 | 6.09 | 2.01 | 2.39 | - | - | - | - |
| SDEdit | 6.71 | 2.18 | 2.78 | 6.31 | 2.06 | 2.48 | - | - | - | - |
| **End-to-End Methods** |  |  |  |  |  |  |  |  |  |  |
| InstructPix2Pix | 7.05 | 3.04 | 3.45 | 6.46 | 1.88 | 2.31 | - | - | - | - |
| MagicBrush | 6.11 | 3.53 | 3.60 | 6.36 | 2.27 | 2.61 | - | - | - | - |
| UltraEdit(SD-3) | 6.44 | 4.66 | 4.86 | 6.49 | 4.33 | 4.45 | 0.72 | 0.52 | 0.57 | 0.20 |
| HQ-Edit | 5.42 | 2.15 | 2.25 | 6.18 | 1.71 | 1.96 | 0.80 | 0.27 | 0.29 | 0.10 |
| CosXL-Edit | 8.34 | 5.81 | 6.00 | 7.01 | 4.90 | 4.81 | 0.82 | 0.56 | 0.59 | 0.35 |
| HIVE | 5.35 | 3.65 | 3.57 | 5.84 | 2.84 | 3.05 | - | - | - | - |
| **Omni-Edit** | 8.38 | 6.66 | 6.98 | 7.06 | 5.82 | 5.78 | 0.83 | 0.71 | 0.69 | 0.55 |
| Δ - Best baseline | +0.04 | +0.85 | +0.98 | +0.05 | +0.92 | +0.97 | +0.01 | +0.15 | +0.10 | +0.20 |{{< /table-caption >}}
> 🔼 Table 3 presents a comprehensive evaluation of Omni-Edit and several baseline models on the Omni-Edit-Bench benchmark.  The benchmark assesses performance across various image editing tasks, considering both automatic metrics (VIEScore using GPT-40 and Gemini) and human evaluation (Perceptual Quality, Semantic Consistency, Overall Score, and Accuracy).  The table highlights the superior performance of Omni-Edit, with the highest scores bolded and the second-highest scores underlined for each evaluation metric, across all models tested. This demonstrates Omni-Edit's effectiveness in handling diverse image editing challenges.
> <details>
> <summary>read the caption</summary>
> Table 3: Main evaluation results on Omni-Edit-Bench. In each column, the highest score is bolded, and the second-highest is underlined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T4.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T4.6.7.1.1">Models</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="3" id="S5.T4.6.7.1.2"><span class="ltx_text ltx_font_bold" id="S5.T4.6.7.1.2.1">VIEScore (GPT4o)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S5.T4.6.7.1.3"><span class="ltx_text ltx_font_bold" id="S5.T4.6.7.1.3.1">VIEScore (Gemini)</span></th>
</tr>
<tr class="ltx_tr" id="S5.T4.6.6">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r" id="S5.T4.6.6.7"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.1.1.1"><math alttext="PQ_{avg}\uparrow" class="ltx_Math" display="inline" id="S5.T4.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.m1.1a"><mrow id="S5.T4.1.1.1.m1.1.1" xref="S5.T4.1.1.1.m1.1.1.cmml"><mrow id="S5.T4.1.1.1.m1.1.1.2" xref="S5.T4.1.1.1.m1.1.1.2.cmml"><mi id="S5.T4.1.1.1.m1.1.1.2.2" xref="S5.T4.1.1.1.m1.1.1.2.2.cmml">P</mi><mo id="S5.T4.1.1.1.m1.1.1.2.1" xref="S5.T4.1.1.1.m1.1.1.2.1.cmml">⁢</mo><msub id="S5.T4.1.1.1.m1.1.1.2.3" xref="S5.T4.1.1.1.m1.1.1.2.3.cmml"><mi id="S5.T4.1.1.1.m1.1.1.2.3.2" xref="S5.T4.1.1.1.m1.1.1.2.3.2.cmml">Q</mi><mrow id="S5.T4.1.1.1.m1.1.1.2.3.3" xref="S5.T4.1.1.1.m1.1.1.2.3.3.cmml"><mi id="S5.T4.1.1.1.m1.1.1.2.3.3.2" xref="S5.T4.1.1.1.m1.1.1.2.3.3.2.cmml">a</mi><mo id="S5.T4.1.1.1.m1.1.1.2.3.3.1" xref="S5.T4.1.1.1.m1.1.1.2.3.3.1.cmml">⁢</mo><mi id="S5.T4.1.1.1.m1.1.1.2.3.3.3" xref="S5.T4.1.1.1.m1.1.1.2.3.3.3.cmml">v</mi><mo id="S5.T4.1.1.1.m1.1.1.2.3.3.1a" xref="S5.T4.1.1.1.m1.1.1.2.3.3.1.cmml">⁢</mo><mi id="S5.T4.1.1.1.m1.1.1.2.3.3.4" xref="S5.T4.1.1.1.m1.1.1.2.3.3.4.cmml">g</mi></mrow></msub></mrow><mo id="S5.T4.1.1.1.m1.1.1.1" stretchy="false" xref="S5.T4.1.1.1.m1.1.1.1.cmml">↑</mo><mi id="S5.T4.1.1.1.m1.1.1.3" xref="S5.T4.1.1.1.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.m1.1b"><apply id="S5.T4.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.m1.1.1"><ci id="S5.T4.1.1.1.m1.1.1.1.cmml" xref="S5.T4.1.1.1.m1.1.1.1">↑</ci><apply id="S5.T4.1.1.1.m1.1.1.2.cmml" xref="S5.T4.1.1.1.m1.1.1.2"><times id="S5.T4.1.1.1.m1.1.1.2.1.cmml" xref="S5.T4.1.1.1.m1.1.1.2.1"></times><ci id="S5.T4.1.1.1.m1.1.1.2.2.cmml" xref="S5.T4.1.1.1.m1.1.1.2.2">𝑃</ci><apply id="S5.T4.1.1.1.m1.1.1.2.3.cmml" xref="S5.T4.1.1.1.m1.1.1.2.3"><csymbol cd="ambiguous" id="S5.T4.1.1.1.m1.1.1.2.3.1.cmml" xref="S5.T4.1.1.1.m1.1.1.2.3">subscript</csymbol><ci id="S5.T4.1.1.1.m1.1.1.2.3.2.cmml" xref="S5.T4.1.1.1.m1.1.1.2.3.2">𝑄</ci><apply id="S5.T4.1.1.1.m1.1.1.2.3.3.cmml" xref="S5.T4.1.1.1.m1.1.1.2.3.3"><times id="S5.T4.1.1.1.m1.1.1.2.3.3.1.cmml" xref="S5.T4.1.1.1.m1.1.1.2.3.3.1"></times><ci id="S5.T4.1.1.1.m1.1.1.2.3.3.2.cmml" xref="S5.T4.1.1.1.m1.1.1.2.3.3.2">𝑎</ci><ci id="S5.T4.1.1.1.m1.1.1.2.3.3.3.cmml" xref="S5.T4.1.1.1.m1.1.1.2.3.3.3">𝑣</ci><ci id="S5.T4.1.1.1.m1.1.1.2.3.3.4.cmml" xref="S5.T4.1.1.1.m1.1.1.2.3.3.4">𝑔</ci></apply></apply></apply><csymbol cd="latexml" id="S5.T4.1.1.1.m1.1.1.3.cmml" xref="S5.T4.1.1.1.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.m1.1c">PQ_{avg}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.m1.1d">italic_P italic_Q start_POSTSUBSCRIPT italic_a italic_v italic_g end_POSTSUBSCRIPT ↑</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.2.2.2"><math alttext="SC_{avg}\uparrow" class="ltx_Math" display="inline" id="S5.T4.2.2.2.m1.1"><semantics id="S5.T4.2.2.2.m1.1a"><mrow id="S5.T4.2.2.2.m1.1.1" xref="S5.T4.2.2.2.m1.1.1.cmml"><mrow id="S5.T4.2.2.2.m1.1.1.2" xref="S5.T4.2.2.2.m1.1.1.2.cmml"><mi id="S5.T4.2.2.2.m1.1.1.2.2" xref="S5.T4.2.2.2.m1.1.1.2.2.cmml">S</mi><mo id="S5.T4.2.2.2.m1.1.1.2.1" xref="S5.T4.2.2.2.m1.1.1.2.1.cmml">⁢</mo><msub id="S5.T4.2.2.2.m1.1.1.2.3" xref="S5.T4.2.2.2.m1.1.1.2.3.cmml"><mi id="S5.T4.2.2.2.m1.1.1.2.3.2" xref="S5.T4.2.2.2.m1.1.1.2.3.2.cmml">C</mi><mrow id="S5.T4.2.2.2.m1.1.1.2.3.3" xref="S5.T4.2.2.2.m1.1.1.2.3.3.cmml"><mi id="S5.T4.2.2.2.m1.1.1.2.3.3.2" xref="S5.T4.2.2.2.m1.1.1.2.3.3.2.cmml">a</mi><mo id="S5.T4.2.2.2.m1.1.1.2.3.3.1" xref="S5.T4.2.2.2.m1.1.1.2.3.3.1.cmml">⁢</mo><mi id="S5.T4.2.2.2.m1.1.1.2.3.3.3" xref="S5.T4.2.2.2.m1.1.1.2.3.3.3.cmml">v</mi><mo id="S5.T4.2.2.2.m1.1.1.2.3.3.1a" xref="S5.T4.2.2.2.m1.1.1.2.3.3.1.cmml">⁢</mo><mi id="S5.T4.2.2.2.m1.1.1.2.3.3.4" xref="S5.T4.2.2.2.m1.1.1.2.3.3.4.cmml">g</mi></mrow></msub></mrow><mo id="S5.T4.2.2.2.m1.1.1.1" stretchy="false" xref="S5.T4.2.2.2.m1.1.1.1.cmml">↑</mo><mi id="S5.T4.2.2.2.m1.1.1.3" xref="S5.T4.2.2.2.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.m1.1b"><apply id="S5.T4.2.2.2.m1.1.1.cmml" xref="S5.T4.2.2.2.m1.1.1"><ci id="S5.T4.2.2.2.m1.1.1.1.cmml" xref="S5.T4.2.2.2.m1.1.1.1">↑</ci><apply id="S5.T4.2.2.2.m1.1.1.2.cmml" xref="S5.T4.2.2.2.m1.1.1.2"><times id="S5.T4.2.2.2.m1.1.1.2.1.cmml" xref="S5.T4.2.2.2.m1.1.1.2.1"></times><ci id="S5.T4.2.2.2.m1.1.1.2.2.cmml" xref="S5.T4.2.2.2.m1.1.1.2.2">𝑆</ci><apply id="S5.T4.2.2.2.m1.1.1.2.3.cmml" xref="S5.T4.2.2.2.m1.1.1.2.3"><csymbol cd="ambiguous" id="S5.T4.2.2.2.m1.1.1.2.3.1.cmml" xref="S5.T4.2.2.2.m1.1.1.2.3">subscript</csymbol><ci id="S5.T4.2.2.2.m1.1.1.2.3.2.cmml" xref="S5.T4.2.2.2.m1.1.1.2.3.2">𝐶</ci><apply id="S5.T4.2.2.2.m1.1.1.2.3.3.cmml" xref="S5.T4.2.2.2.m1.1.1.2.3.3"><times id="S5.T4.2.2.2.m1.1.1.2.3.3.1.cmml" xref="S5.T4.2.2.2.m1.1.1.2.3.3.1"></times><ci id="S5.T4.2.2.2.m1.1.1.2.3.3.2.cmml" xref="S5.T4.2.2.2.m1.1.1.2.3.3.2">𝑎</ci><ci id="S5.T4.2.2.2.m1.1.1.2.3.3.3.cmml" xref="S5.T4.2.2.2.m1.1.1.2.3.3.3">𝑣</ci><ci id="S5.T4.2.2.2.m1.1.1.2.3.3.4.cmml" xref="S5.T4.2.2.2.m1.1.1.2.3.3.4">𝑔</ci></apply></apply></apply><csymbol cd="latexml" id="S5.T4.2.2.2.m1.1.1.3.cmml" xref="S5.T4.2.2.2.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.m1.1c">SC_{avg}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.m1.1d">italic_S italic_C start_POSTSUBSCRIPT italic_a italic_v italic_g end_POSTSUBSCRIPT ↑</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S5.T4.3.3.3"><math alttext="O_{avg}\uparrow" class="ltx_Math" display="inline" id="S5.T4.3.3.3.m1.1"><semantics id="S5.T4.3.3.3.m1.1a"><mrow id="S5.T4.3.3.3.m1.1.1" xref="S5.T4.3.3.3.m1.1.1.cmml"><msub id="S5.T4.3.3.3.m1.1.1.2" xref="S5.T4.3.3.3.m1.1.1.2.cmml"><mi id="S5.T4.3.3.3.m1.1.1.2.2" xref="S5.T4.3.3.3.m1.1.1.2.2.cmml">O</mi><mrow id="S5.T4.3.3.3.m1.1.1.2.3" xref="S5.T4.3.3.3.m1.1.1.2.3.cmml"><mi id="S5.T4.3.3.3.m1.1.1.2.3.2" xref="S5.T4.3.3.3.m1.1.1.2.3.2.cmml">a</mi><mo id="S5.T4.3.3.3.m1.1.1.2.3.1" xref="S5.T4.3.3.3.m1.1.1.2.3.1.cmml">⁢</mo><mi id="S5.T4.3.3.3.m1.1.1.2.3.3" xref="S5.T4.3.3.3.m1.1.1.2.3.3.cmml">v</mi><mo id="S5.T4.3.3.3.m1.1.1.2.3.1a" xref="S5.T4.3.3.3.m1.1.1.2.3.1.cmml">⁢</mo><mi id="S5.T4.3.3.3.m1.1.1.2.3.4" xref="S5.T4.3.3.3.m1.1.1.2.3.4.cmml">g</mi></mrow></msub><mo id="S5.T4.3.3.3.m1.1.1.1" stretchy="false" xref="S5.T4.3.3.3.m1.1.1.1.cmml">↑</mo><mi id="S5.T4.3.3.3.m1.1.1.3" xref="S5.T4.3.3.3.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.3.m1.1b"><apply id="S5.T4.3.3.3.m1.1.1.cmml" xref="S5.T4.3.3.3.m1.1.1"><ci id="S5.T4.3.3.3.m1.1.1.1.cmml" xref="S5.T4.3.3.3.m1.1.1.1">↑</ci><apply id="S5.T4.3.3.3.m1.1.1.2.cmml" xref="S5.T4.3.3.3.m1.1.1.2"><csymbol cd="ambiguous" id="S5.T4.3.3.3.m1.1.1.2.1.cmml" xref="S5.T4.3.3.3.m1.1.1.2">subscript</csymbol><ci id="S5.T4.3.3.3.m1.1.1.2.2.cmml" xref="S5.T4.3.3.3.m1.1.1.2.2">𝑂</ci><apply id="S5.T4.3.3.3.m1.1.1.2.3.cmml" xref="S5.T4.3.3.3.m1.1.1.2.3"><times id="S5.T4.3.3.3.m1.1.1.2.3.1.cmml" xref="S5.T4.3.3.3.m1.1.1.2.3.1"></times><ci id="S5.T4.3.3.3.m1.1.1.2.3.2.cmml" xref="S5.T4.3.3.3.m1.1.1.2.3.2">𝑎</ci><ci id="S5.T4.3.3.3.m1.1.1.2.3.3.cmml" xref="S5.T4.3.3.3.m1.1.1.2.3.3">𝑣</ci><ci id="S5.T4.3.3.3.m1.1.1.2.3.4.cmml" xref="S5.T4.3.3.3.m1.1.1.2.3.4">𝑔</ci></apply></apply><csymbol cd="latexml" id="S5.T4.3.3.3.m1.1.1.3.cmml" xref="S5.T4.3.3.3.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.3.m1.1c">O_{avg}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.3.m1.1d">italic_O start_POSTSUBSCRIPT italic_a italic_v italic_g end_POSTSUBSCRIPT ↑</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.4.4.4"><math alttext="PQ_{avg}\uparrow" class="ltx_Math" display="inline" id="S5.T4.4.4.4.m1.1"><semantics id="S5.T4.4.4.4.m1.1a"><mrow id="S5.T4.4.4.4.m1.1.1" xref="S5.T4.4.4.4.m1.1.1.cmml"><mrow id="S5.T4.4.4.4.m1.1.1.2" xref="S5.T4.4.4.4.m1.1.1.2.cmml"><mi id="S5.T4.4.4.4.m1.1.1.2.2" xref="S5.T4.4.4.4.m1.1.1.2.2.cmml">P</mi><mo id="S5.T4.4.4.4.m1.1.1.2.1" xref="S5.T4.4.4.4.m1.1.1.2.1.cmml">⁢</mo><msub id="S5.T4.4.4.4.m1.1.1.2.3" xref="S5.T4.4.4.4.m1.1.1.2.3.cmml"><mi id="S5.T4.4.4.4.m1.1.1.2.3.2" xref="S5.T4.4.4.4.m1.1.1.2.3.2.cmml">Q</mi><mrow id="S5.T4.4.4.4.m1.1.1.2.3.3" xref="S5.T4.4.4.4.m1.1.1.2.3.3.cmml"><mi id="S5.T4.4.4.4.m1.1.1.2.3.3.2" xref="S5.T4.4.4.4.m1.1.1.2.3.3.2.cmml">a</mi><mo id="S5.T4.4.4.4.m1.1.1.2.3.3.1" xref="S5.T4.4.4.4.m1.1.1.2.3.3.1.cmml">⁢</mo><mi id="S5.T4.4.4.4.m1.1.1.2.3.3.3" xref="S5.T4.4.4.4.m1.1.1.2.3.3.3.cmml">v</mi><mo id="S5.T4.4.4.4.m1.1.1.2.3.3.1a" xref="S5.T4.4.4.4.m1.1.1.2.3.3.1.cmml">⁢</mo><mi id="S5.T4.4.4.4.m1.1.1.2.3.3.4" xref="S5.T4.4.4.4.m1.1.1.2.3.3.4.cmml">g</mi></mrow></msub></mrow><mo id="S5.T4.4.4.4.m1.1.1.1" stretchy="false" xref="S5.T4.4.4.4.m1.1.1.1.cmml">↑</mo><mi id="S5.T4.4.4.4.m1.1.1.3" xref="S5.T4.4.4.4.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.4.4.4.m1.1b"><apply id="S5.T4.4.4.4.m1.1.1.cmml" xref="S5.T4.4.4.4.m1.1.1"><ci id="S5.T4.4.4.4.m1.1.1.1.cmml" xref="S5.T4.4.4.4.m1.1.1.1">↑</ci><apply id="S5.T4.4.4.4.m1.1.1.2.cmml" xref="S5.T4.4.4.4.m1.1.1.2"><times id="S5.T4.4.4.4.m1.1.1.2.1.cmml" xref="S5.T4.4.4.4.m1.1.1.2.1"></times><ci id="S5.T4.4.4.4.m1.1.1.2.2.cmml" xref="S5.T4.4.4.4.m1.1.1.2.2">𝑃</ci><apply id="S5.T4.4.4.4.m1.1.1.2.3.cmml" xref="S5.T4.4.4.4.m1.1.1.2.3"><csymbol cd="ambiguous" id="S5.T4.4.4.4.m1.1.1.2.3.1.cmml" xref="S5.T4.4.4.4.m1.1.1.2.3">subscript</csymbol><ci id="S5.T4.4.4.4.m1.1.1.2.3.2.cmml" xref="S5.T4.4.4.4.m1.1.1.2.3.2">𝑄</ci><apply id="S5.T4.4.4.4.m1.1.1.2.3.3.cmml" xref="S5.T4.4.4.4.m1.1.1.2.3.3"><times id="S5.T4.4.4.4.m1.1.1.2.3.3.1.cmml" xref="S5.T4.4.4.4.m1.1.1.2.3.3.1"></times><ci id="S5.T4.4.4.4.m1.1.1.2.3.3.2.cmml" xref="S5.T4.4.4.4.m1.1.1.2.3.3.2">𝑎</ci><ci id="S5.T4.4.4.4.m1.1.1.2.3.3.3.cmml" xref="S5.T4.4.4.4.m1.1.1.2.3.3.3">𝑣</ci><ci id="S5.T4.4.4.4.m1.1.1.2.3.3.4.cmml" xref="S5.T4.4.4.4.m1.1.1.2.3.3.4">𝑔</ci></apply></apply></apply><csymbol cd="latexml" id="S5.T4.4.4.4.m1.1.1.3.cmml" xref="S5.T4.4.4.4.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.4.4.4.m1.1c">PQ_{avg}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.4.4.4.m1.1d">italic_P italic_Q start_POSTSUBSCRIPT italic_a italic_v italic_g end_POSTSUBSCRIPT ↑</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.5.5.5"><math alttext="SC_{avg}\uparrow" class="ltx_Math" display="inline" id="S5.T4.5.5.5.m1.1"><semantics id="S5.T4.5.5.5.m1.1a"><mrow id="S5.T4.5.5.5.m1.1.1" xref="S5.T4.5.5.5.m1.1.1.cmml"><mrow id="S5.T4.5.5.5.m1.1.1.2" xref="S5.T4.5.5.5.m1.1.1.2.cmml"><mi id="S5.T4.5.5.5.m1.1.1.2.2" xref="S5.T4.5.5.5.m1.1.1.2.2.cmml">S</mi><mo id="S5.T4.5.5.5.m1.1.1.2.1" xref="S5.T4.5.5.5.m1.1.1.2.1.cmml">⁢</mo><msub id="S5.T4.5.5.5.m1.1.1.2.3" xref="S5.T4.5.5.5.m1.1.1.2.3.cmml"><mi id="S5.T4.5.5.5.m1.1.1.2.3.2" xref="S5.T4.5.5.5.m1.1.1.2.3.2.cmml">C</mi><mrow id="S5.T4.5.5.5.m1.1.1.2.3.3" xref="S5.T4.5.5.5.m1.1.1.2.3.3.cmml"><mi id="S5.T4.5.5.5.m1.1.1.2.3.3.2" xref="S5.T4.5.5.5.m1.1.1.2.3.3.2.cmml">a</mi><mo id="S5.T4.5.5.5.m1.1.1.2.3.3.1" xref="S5.T4.5.5.5.m1.1.1.2.3.3.1.cmml">⁢</mo><mi id="S5.T4.5.5.5.m1.1.1.2.3.3.3" xref="S5.T4.5.5.5.m1.1.1.2.3.3.3.cmml">v</mi><mo id="S5.T4.5.5.5.m1.1.1.2.3.3.1a" xref="S5.T4.5.5.5.m1.1.1.2.3.3.1.cmml">⁢</mo><mi id="S5.T4.5.5.5.m1.1.1.2.3.3.4" xref="S5.T4.5.5.5.m1.1.1.2.3.3.4.cmml">g</mi></mrow></msub></mrow><mo id="S5.T4.5.5.5.m1.1.1.1" stretchy="false" xref="S5.T4.5.5.5.m1.1.1.1.cmml">↑</mo><mi id="S5.T4.5.5.5.m1.1.1.3" xref="S5.T4.5.5.5.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.5.5.5.m1.1b"><apply id="S5.T4.5.5.5.m1.1.1.cmml" xref="S5.T4.5.5.5.m1.1.1"><ci id="S5.T4.5.5.5.m1.1.1.1.cmml" xref="S5.T4.5.5.5.m1.1.1.1">↑</ci><apply id="S5.T4.5.5.5.m1.1.1.2.cmml" xref="S5.T4.5.5.5.m1.1.1.2"><times id="S5.T4.5.5.5.m1.1.1.2.1.cmml" xref="S5.T4.5.5.5.m1.1.1.2.1"></times><ci id="S5.T4.5.5.5.m1.1.1.2.2.cmml" xref="S5.T4.5.5.5.m1.1.1.2.2">𝑆</ci><apply id="S5.T4.5.5.5.m1.1.1.2.3.cmml" xref="S5.T4.5.5.5.m1.1.1.2.3"><csymbol cd="ambiguous" id="S5.T4.5.5.5.m1.1.1.2.3.1.cmml" xref="S5.T4.5.5.5.m1.1.1.2.3">subscript</csymbol><ci id="S5.T4.5.5.5.m1.1.1.2.3.2.cmml" xref="S5.T4.5.5.5.m1.1.1.2.3.2">𝐶</ci><apply id="S5.T4.5.5.5.m1.1.1.2.3.3.cmml" xref="S5.T4.5.5.5.m1.1.1.2.3.3"><times id="S5.T4.5.5.5.m1.1.1.2.3.3.1.cmml" xref="S5.T4.5.5.5.m1.1.1.2.3.3.1"></times><ci id="S5.T4.5.5.5.m1.1.1.2.3.3.2.cmml" xref="S5.T4.5.5.5.m1.1.1.2.3.3.2">𝑎</ci><ci id="S5.T4.5.5.5.m1.1.1.2.3.3.3.cmml" xref="S5.T4.5.5.5.m1.1.1.2.3.3.3">𝑣</ci><ci id="S5.T4.5.5.5.m1.1.1.2.3.3.4.cmml" xref="S5.T4.5.5.5.m1.1.1.2.3.3.4">𝑔</ci></apply></apply></apply><csymbol cd="latexml" id="S5.T4.5.5.5.m1.1.1.3.cmml" xref="S5.T4.5.5.5.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.5.5.5.m1.1c">SC_{avg}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.5.5.5.m1.1d">italic_S italic_C start_POSTSUBSCRIPT italic_a italic_v italic_g end_POSTSUBSCRIPT ↑</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.6.6.6"><math alttext="O_{avg}\uparrow" class="ltx_Math" display="inline" id="S5.T4.6.6.6.m1.1"><semantics id="S5.T4.6.6.6.m1.1a"><mrow id="S5.T4.6.6.6.m1.1.1" xref="S5.T4.6.6.6.m1.1.1.cmml"><msub id="S5.T4.6.6.6.m1.1.1.2" xref="S5.T4.6.6.6.m1.1.1.2.cmml"><mi id="S5.T4.6.6.6.m1.1.1.2.2" xref="S5.T4.6.6.6.m1.1.1.2.2.cmml">O</mi><mrow id="S5.T4.6.6.6.m1.1.1.2.3" xref="S5.T4.6.6.6.m1.1.1.2.3.cmml"><mi id="S5.T4.6.6.6.m1.1.1.2.3.2" xref="S5.T4.6.6.6.m1.1.1.2.3.2.cmml">a</mi><mo id="S5.T4.6.6.6.m1.1.1.2.3.1" xref="S5.T4.6.6.6.m1.1.1.2.3.1.cmml">⁢</mo><mi id="S5.T4.6.6.6.m1.1.1.2.3.3" xref="S5.T4.6.6.6.m1.1.1.2.3.3.cmml">v</mi><mo id="S5.T4.6.6.6.m1.1.1.2.3.1a" xref="S5.T4.6.6.6.m1.1.1.2.3.1.cmml">⁢</mo><mi id="S5.T4.6.6.6.m1.1.1.2.3.4" xref="S5.T4.6.6.6.m1.1.1.2.3.4.cmml">g</mi></mrow></msub><mo id="S5.T4.6.6.6.m1.1.1.1" stretchy="false" xref="S5.T4.6.6.6.m1.1.1.1.cmml">↑</mo><mi id="S5.T4.6.6.6.m1.1.1.3" xref="S5.T4.6.6.6.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.6.6.6.m1.1b"><apply id="S5.T4.6.6.6.m1.1.1.cmml" xref="S5.T4.6.6.6.m1.1.1"><ci id="S5.T4.6.6.6.m1.1.1.1.cmml" xref="S5.T4.6.6.6.m1.1.1.1">↑</ci><apply id="S5.T4.6.6.6.m1.1.1.2.cmml" xref="S5.T4.6.6.6.m1.1.1.2"><csymbol cd="ambiguous" id="S5.T4.6.6.6.m1.1.1.2.1.cmml" xref="S5.T4.6.6.6.m1.1.1.2">subscript</csymbol><ci id="S5.T4.6.6.6.m1.1.1.2.2.cmml" xref="S5.T4.6.6.6.m1.1.1.2.2">𝑂</ci><apply id="S5.T4.6.6.6.m1.1.1.2.3.cmml" xref="S5.T4.6.6.6.m1.1.1.2.3"><times id="S5.T4.6.6.6.m1.1.1.2.3.1.cmml" xref="S5.T4.6.6.6.m1.1.1.2.3.1"></times><ci id="S5.T4.6.6.6.m1.1.1.2.3.2.cmml" xref="S5.T4.6.6.6.m1.1.1.2.3.2">𝑎</ci><ci id="S5.T4.6.6.6.m1.1.1.2.3.3.cmml" xref="S5.T4.6.6.6.m1.1.1.2.3.3">𝑣</ci><ci id="S5.T4.6.6.6.m1.1.1.2.3.4.cmml" xref="S5.T4.6.6.6.m1.1.1.2.3.4">𝑔</ci></apply></apply><csymbol cd="latexml" id="S5.T4.6.6.6.m1.1.1.3.cmml" xref="S5.T4.6.6.6.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.6.6.6.m1.1c">O_{avg}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.6.6.6.m1.1d">italic_O start_POSTSUBSCRIPT italic_a italic_v italic_g end_POSTSUBSCRIPT ↑</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.6.8.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T4.6.8.1.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T4.6.8.1.1.1">Omni-Edit</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.8.1.2">8.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.8.1.3">6.66</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.6.8.1.4">6.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.8.1.5">7.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.8.1.6">5.82</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.8.1.7">5.78</td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.9.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T4.6.9.2.1">
<span class="ltx_text ltx_font_smallcaps" id="S5.T4.6.9.2.1.1">Omni-Edit</span> w/o importance sampling</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.6.9.2.2">6.20</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.6.9.2.3">2.95</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T4.6.9.2.4">3.30</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.6.9.2.5">6.40</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.6.9.2.6">1.80</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.6.9.2.7">2.25</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study on the impact of importance sampling in the OMNI-EDIT model.  It compares the performance of OMNI-EDIT with and without importance sampling, showing the effect this technique has on the perceptual quality (PQavg), semantic consistency (SCavg), and overall score (Oavg) using two different evaluation metrics: VIEScore (GPT40) and VIEScore (Gemini). This helps determine how crucial importance sampling is for the model's accuracy and effectiveness.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation on importance sampling.
> </details>

{{< table-caption >}}
| Models | VIEScore (GPT4o) |  |  | VIEScore (Gemini) |  |  |
|---|---|---|---|---|---|---|
|  | $PQ_{avg}
↑$ | $SC_{avg}
↑$ | $O_{avg}
↑$ | $PQ_{avg}
↑$ | $SC_{avg}
↑$ | $O_{avg}
↑$ |
| Omni-Edit | 8.38 | 6.66 | 6.98 | 7.06 | 5.82 | 5.78 |
| Omni-Edit- ControlNet - TextControl | 6.45 | 4.70 | 4.89 | 6.50 | 4.35 | 4.48 |
| Omni-Edit- ControlNet | 6.35 | 4.60 | 4.75 | 6.40 | 4.25 | 4.35 |{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study on the OMNI-EDIT architecture.  Three model variations are compared against the full OMNI-EDIT model to assess the impact of specific architectural choices on performance. The models are evaluated using the VIEScore (GPT40 and Gemini) metrics and overall performance is also summarized. This allows for a quantitative analysis of the contribution of each component to OMNI-EDIT's success.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation on Omni-Edit architecture design.
> </details>

{{< table-caption >}}
| Task | Pre-Filtering Number | After-Filtering Number |
|---|---|---|
| Object Swap | 1,500,000 | 150,000 |
| Object Removal | 1,000,000 | 100,000 |
| Object Addition | 1,000,000 | 100,000 |
| Background Swap | 500,000 | 50,000 |
| Environment Change | 500,000 | 100,000 |
| Style Transfer | 250,000 | 25,000 |
| Object Property Modification | 450,000 | 250,000 |
| **Total** | **5,200,000** | **775,000** |{{< /table-caption >}}
> 🔼 Table 6 presents a detailed breakdown of the Omni-Edit training dataset.  It shows the number of image samples considered before and after applying an importance scoring and filtering process.  The filtering step is crucial as it selects only high-quality samples with a score of 9 or above, ensuring superior model training. The table lists sample counts for each of the seven image editing tasks included in the dataset.
> <details>
> <summary>read the caption</summary>
> Table 6: Omni-Edit training dataset statistics reflecting the number of samples before and after importance scoring and filtering with o-score ≥\geq≥ 9.
> </details>

{{< table-caption >}}
|                       | VIEScore (GPT4o)           |       |       | VIEScore (Gemini)          |       |       |
| :-------------------- | :-----------------------: | :----: | :----: | :-----------------------: | :----: | :----: |
|                       | $PQ_{avg}\[\uparrow]$       | $SC_{avg}\[\uparrow]$ | $O_{avg}\[\uparrow]$ | $PQ_{avg}\[\uparrow]$       | $SC_{avg}\[\uparrow]$ | $O_{avg}\[\uparrow]$ |
| Obj-Remove-Specialist |          9.10             |  7.76  |  7.82  |          7.46             |  5.39  |  4.84  |
| Omni-Edit             |          8.45             |  7.16  |  7.23  |          7.37             |  5.45  |  5.09  |
| Obj-Replacement-Specialist |          8.48             |  6.92  |  7.02  |          7.06             |  5.68  |  5.36  |
| Omni-Edit             |          8.95             |  7.74  |  8.14  |          7.00             |  7.77  |  7.09  |
| Style-Transfer-Specialist |          8.08             |  7.47  |  7.37  |          7.97             |  6.61  |  6.76  |
| Omni-Edit             |          7.98             |  5.77  |  6.16  |          8.24             |  5.24  |  6.08  |{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of Omni-Edit's performance against specialized models trained for individual editing tasks.  It uses the VIEScore (a metric evaluating both perceptual quality and semantic consistency using GPT-40 and Gemini language models) to assess performance across different editing categories.  The table highlights the differences in performance between the generalist Omni-Edit model and the specialized models to show the effectiveness and limitations of a generalist approach compared to specialized approaches.
> <details>
> <summary>read the caption</summary>
> Table 7: Comparison between Omni-Edit and our specialist models.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2411.07199/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07199/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07199/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07199/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07199/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07199/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07199/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07199/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07199/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07199/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07199/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07199/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07199/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07199/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07199/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07199/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07199/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07199/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07199/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.07199/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}