---
title: "Imagine360: Immersive 360 Video Generation from Perspective Anchor"
summary: "Imagine360: Generating immersive 360° videos from perspective videos, improving quality and accessibility of 360° content creation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Chinese University of Hong Kong",]
showSummary: true
date: 2024-12-04
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.03552 {{< /keyword >}}
{{< keyword icon="writer" >}} Jing Tan et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-05 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.03552" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.03552" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/imagine360-immersive-360-video-generation" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.03552/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Creating high-quality 360° videos is challenging due to data scarcity and the difficulty of generating plausible spherical visual and motion patterns.  Existing methods often require panoramic data, which is hard to obtain.  Current video outpainting approaches struggle with dynamic scene reconstruction and varying video masking. 

Imagine360 tackles these challenges with a novel dual-branch network for perspective-to-360° video generation.  It uses a perspective video as an anchor, leveraging both local (perspective) and global (panorama) constraints for more realistic results. An antipodal mask captures long-range motion dependencies, and elevation-aware designs adapt to varying camera angles in the input videos. Experiments show that Imagine360 outperforms existing methods in both visual quality and motion coherence.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Imagine360 is the first framework to generate high-quality 360° videos from perspective video anchors. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A novel dual-branch design with cross-domain attention and an antipodal mask effectively captures long-range motion dependencies. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Elevation-aware design enables robust 360° video generation from diverse perspective video inputs with varying camera angles. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it introduces **Imagine360**, the first framework for generating high-quality 360° videos from standard perspective videos. This addresses a key challenge in 360° video creation, making it more accessible and user-friendly.  The innovative dual-branch design and elevation-aware approach are significant contributions that open new avenues for personalized immersive content creation. It also has implications for video outpainting and related fields.

------
#### Visual Insights



![](https://arxiv.org/html/2412.03552/x1.png)

> 🔼 Imagine360 takes a standard perspective video as input and generates a high-quality 360° video.  The figure shows the input perspective video, the mask used to define the known region, and two example output novel views.  It highlights that Imagine360 outperforms Follow-Your-Canvas by generating more realistic and plausible 360° video patterns, which are particularly noticeable in the dynamic aspects of the scene. The animated 360° videos are best viewed using Acrobat Reader for optimal viewing experience.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of Imagine360.  Imagine360 lifts standard perspective video into 360∘superscript360360^{\circ}360 start_POSTSUPERSCRIPT ∘ end_POSTSUPERSCRIPT video, enabling dynamic scene experience from full 360 degrees. Compared to Follow-Your-Canvas, which focuses only on perspective visual and motion patterns, our approach achieves more plausible spherical video patterns. Best viewed with Acrobat Reader for the animated 360 videos.
> </details>





{{< table-caption >}}
| Method | Imaging Quality ↑ | Aesthetic Quality ↑ | Motion Smoothness ↑ | Subject Consistency ↑ | VQA ↑ |
|---|---|---|---|---|---| 
| Animatediff [16]+LatentLab360 | 0.7159 | 0.5840 | 0.9780 | 0.9338 | 0.7860 |
| Follow-Your-Canvas [6] | 0.6978 | 0.6432 | 0.9771 | 0.9529 | 0.8444 |
| 360DVD [46] | 0.5537 | 0.4745 | 0.9701 | 0.9629 | 0.5867 |
| Ours | **0.7487** | **0.6439** | **0.9806** | **0.9710** | **0.8672** |{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of the Imagine360 model with state-of-the-art (SOTA) approaches for 360° video generation.  The comparison is based on metrics from two different evaluation frameworks: Vbench [24] and Q-Align [47].  Vbench provides metrics for imaging quality, aesthetic quality, motion smoothness, and subject consistency. Q-Align provides a single video quality assessment (VQA) score.  The table allows for a direct comparison of the performance of Imagine360 against other methods across these key aspects of 360° video generation.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparison with SoTA approaches on Vbench [24] metrics and VQA from Q-Align [47].
> </details>





### In-depth insights


#### 360 Video Synthesis
**360 video synthesis** is a rapidly evolving field aiming to create immersive, all-around visual experiences.  Current methods often leverage techniques like **image-based rendering** and **video inpainting** to generate the missing parts of a 360° scene from limited input views.  Recent advancements focus on employing deep learning models, particularly **diffusion models**, which show promise in creating realistic and high-quality 360° videos.  **Challenges** in 360° video synthesis include handling the complexities of spherical geometry, ensuring seamless transitions between different views, and generating consistent visual and motion patterns across the entire 360° field.  The quality of generated content is still an area of active research, with efforts focused on **improving resolution**, **coherence**, and **realism**.  The development of new datasets and evaluation metrics to better quantify the quality and realism of synthesized 360° videos is crucial for future advancements.

#### Dual-Branch Design
The dual-branch design in this 360° video generation model is a **key innovation**, cleverly addressing the inherent challenges in translating 2D perspective videos into immersive 360° panoramas. By employing **parallel processing** for perspective and panoramic views, the architecture cleverly leverages the strengths of both. The perspective branch focuses on precise local details and fine-grained motions, while the panoramic branch captures holistic scene understanding and global motion patterns. **This dual approach effectively merges local and global information**, improving both visual fidelity and motion coherence in the final output. The cross-domain attention module facilitates seamless integration between branches, further optimizing the generated 360° video's realism and visual consistency.

#### Antipodal Mask
The concept of an "Antipodal Mask" in 360° video generation is a clever approach to address the inherent challenges of creating realistic and seamless spherical videos.  By explicitly linking antipodal pixels (those diametrically opposite on the sphere), the mask **enforces long-range motion consistency**. This is crucial because standard approaches often fail to capture the inherent reversed camera motion between these points.  The mask's role is to **facilitate information exchange** during the generation process, ensuring that the motion of opposite pixels remains coherent, preventing artifacts and unnatural inconsistencies.  This technique likely improves the overall realism of the generated 360° videos by explicitly guiding the model to respect the global consistency of motion across the entire spherical view, rather than focusing solely on local relationships.

#### Elevation-Aware
The concept of 'Elevation-Aware' in the context of 360° video generation from perspective anchors is crucial for handling the variability of viewpoints in real-world videos.  Standard perspective videos capture a scene from a single, fixed elevation, whereas 360° videos encompass a full spherical view.  Directly converting a perspective video to 360° using simple mappings fails to account for this elevation difference. **An elevation-aware approach dynamically adapts to variations in elevation across different frames of the input perspective video.** This might involve estimating the elevation angle of the camera in each frame and using this information to adjust the mask used during the generation process, ensuring that the synthesized 360° video accurately reflects the perspective shifts.  **A key challenge is managing the continuously changing mask shape and location due to shifts in elevation.** This requires sophisticated techniques, potentially involving advanced interpolation and extrapolation to fill in the missing data convincingly.  **Elevation-aware designs are likely implemented via dedicated modules that estimate and compensate for varying elevation angles**, ensuring consistent visual quality and motion coherence in the output 360° video. The success of such a system hinges on the accuracy of elevation estimation and the robustness of the synthesis algorithm in dealing with potentially complex masking scenarios.

#### Future of 360V
The "Future of 360V" is ripe with potential.  **Advancements in AI and machine learning will be crucial**, driving improvements in video generation, compression, and streaming.  We can anticipate more realistic and immersive experiences with improved resolution, higher frame rates, and more natural-looking motion.  **The integration of other modalities like spatial audio and haptic feedback** promises to further elevate the sense of presence and immersion.  **Addressing current limitations such as high bandwidth requirements and computational complexity** is also critical.  This likely involves research into more efficient codecs and innovative rendering techniques.  The emergence of new hardware, such as advanced VR/AR devices, will be pivotal in realizing 360V's full potential.  Finally, **the development of user-friendly content creation tools** will broaden accessibility and encourage wider adoption, facilitating the creation of personalized and interactive 360° video experiences.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.03552/x2.png)

> 🔼 Imagine360 uses a dual-branch video denoising structure.  One branch processes perspective views, while the other handles panoramic views.  These branches work together using cross-domain spherical attention with antipodal masking to ensure realistic 360° video generation, especially handling the reversed motion between opposite sides of the sphere.  The system is designed to adapt to various input videos with differing camera elevations.
> <details>
> <summary>read the caption</summary>
> Figure 2: Pipeline of Imagine360. Given perspective anchor video guidance, Imagine360 leverages a dual-branch video noising structure, with parallelled panorama and perspective branches to denoise 360° videos with plausible panoramic patterns. Additionally, we devise the cross-domain spherical attention with antipodal masking to capture long-range dependencies for reversed antipodal motion. Finally, we introduce elevation-aware designs to handle diverse video inputs of changing elevations.
> </details>



![](https://arxiv.org/html/2412.03552/x3.png)

> 🔼 This figure illustrates the cross-domain spherical attention mechanism used in the Imagine360 model.  Specifically, it shows how the perspective branch interacts with the panorama branch. Direct mappings (shown with a spherical mask) connect corresponding pixels between the two branches for information exchange.  Importantly, antipodal mappings (using an antipodal mask) also connect opposite pixels across the panorama, capturing long-range dependencies and enhancing the realism of the generated 360° video, particularly for reversed camera motion.
> <details>
> <summary>read the caption</summary>
> Figure 3: Cross-domain Spherical Attention (perspective branch) highlights interaction for direct-mapped pixels (spherical mask) and antipodal-mapped pixels (antipodal mask) between panorama and perspective domains.
> </details>



![](https://arxiv.org/html/2412.03552/x4.png)

> 🔼 This figure illustrates the elevation-aware data sampling strategy used in the Imagine360 model.  To handle various elevation angles in real-world perspective videos, the model doesn't assume a fixed camera pose.  Instead, it creates flexible masks for each frame by randomly sampling a starting angle and a slope ratio. This results in a smooth pitch trajectory, which is used to augment the training samples with diverse elevation angles, making the model more robust to variations in perspective input.
> <details>
> <summary>read the caption</summary>
> Figure 4: Elevation-aware sampling augments the training samples with diverse elevation trajectories.
> </details>



![](https://arxiv.org/html/2412.03552/x5.png)

> 🔼 Figure 5 presents a qualitative comparison of 360° video generation results from several state-of-the-art methods.  Each row displays a pair of videos from a different method (AnimateDiff+LatentLabs360, Follow-Your-Canvas, 360DVD, and Imagine360), showing two different scenes at three points in time (frames 0, T/2, and T).  The comparison highlights Imagine360's superior visual quality and more plausible panoramic patterns compared to the other methods, which often exhibit artifacts or less realistic motion.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative comparisons on 360° video generations among state-of-the-art methods. Imagine360 generates 360° video generation with superior visual quality and plausible panoramic patterns.
> </details>



![](https://arxiv.org/html/2412.03552/x6.png)

> 🔼 This figure demonstrates the effectiveness of the dual-branch design in Imagine360.  It shows a qualitative comparison of 360° video generation results using the dual-branch architecture versus single-branch alternatives (panorama branch only and perspective branch only). The dual-branch method, which incorporates both panorama and perspective branches, is shown to significantly improve the plausibility and quality of the generated panoramic patterns compared to either single-branch approach.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative ablation on the dual-branch design shows that dual-branch design generates plausible panoramic patterns compared to single-branch.
> </details>



![](https://arxiv.org/html/2412.03552/x7.png)

> 🔼 This figure demonstrates the impact of the antipodal mask on the quality of generated 360° videos. By comparing videos generated with and without the antipodal mask, it highlights how the mask improves the accuracy of reversed motion depiction in antipodal views. The antipodal mask enhances the model's understanding of the relationship between opposite hemispheres in a 360° sphere, resulting in more realistic and coherent motion patterns.  The results show that the addition of the antipodal mask leads to more natural-looking reversed camera motion when the viewer's perspective changes across the hemisphere.
> <details>
> <summary>read the caption</summary>
> Figure 7: Qualitative ablation on the antipodal mask shows improved reversed motion in the antipodal view from the antipodal activations.
> </details>



![](https://arxiv.org/html/2412.03552/x8.png)

> 🔼 This figure demonstrates the impact of the elevation-aware design in Imagine360.  The left shows results using the elevation-aware design which handles variations in camera elevation, producing a more natural and consistent 360° video. The right shows the results without the elevation-aware design, highlighting the artifacts such as distortions and inconsistencies resulting from failing to account for elevation changes.
> <details>
> <summary>read the caption</summary>
> Figure 8: Qualitative ablation on the elevation-aware designs shows reduced artifacts from the elevation-aware designs .
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Method | Imaging Quality ↑ | Aesthetic Quality ↑ | Motion Smoothness ↑ | Subject Consistency ↑ | VQA ↑ |
|---|---|---|---|---|---| 
| Ours(Full model) | **0.7487** | **0.6439** | **0.9806** | **0.9710** | **0.8672** |
| w/o persbranch | 0.7050 | 0.6124 | 0.9744 | 0.9599 | 0.8435 |
| w/o panobranch | 0.5854 | 0.4549 | 0.9700 | 0.9546 | 0.6168 |
| w/o antipodal mask | 0.7446 | 0.6360 | 0.9802 | 0.9652 | 0.8580 |
| w/o elevation-aware designs | 0.6978 | 0.6296 | 0.9771 | 0.9529 | 0.7663 |{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies conducted to evaluate the impact of three key components of the Imagine360 model: the dual-branch architecture, the antipodal mask, and the elevation-aware design.  For each component, a variant of the model is created by removing that specific component. The table then shows a comparison of the performance metrics (Imaging Quality, Aesthetic Quality, Motion Smoothness, Subject Consistency, and VQA) between the full model and the variants. This allows for a quantitative assessment of the contribution of each component to the overall performance of the model.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative ablation studies on dual-branch designs, antipodal mask, and elevation-aware designs.
> </details>

{{< table-caption >}}
| Method | Graphics Quality ↑ | Structure Plausibility ↑ | Temporal Coherence ↑ |
|---|---|---|---|
| Animatediff [16]+LatentLab360 | 2.3488 | 2.3894 | 2.1433 |
| 360DVD [46] | 1.2067 | 1.7588 | 1.4279 |
| Follow-Your-Canvas [6] | 2.7692 | 2.1298 | 3.0385 |
| Ours | **3.6827** | **3.7260** | **3.3942** |{{< /table-caption >}}
> 🔼 This table presents the results of a human evaluation study comparing the quality of 360-degree videos generated by four different methods: Animatediff+LatentLab360, 360DVD, Follow-Your-Canvas, and the authors' proposed method, Imagine360.  The evaluation assesses three key aspects of the generated videos: the quality of the graphics, the plausibility of the spatial structure (how realistic the 360° environment appears), and the temporal coherence (how smooth and consistent the motion is over time).  Each method receives a score for each aspect, allowing for a comparison of their overall performance in generating high-quality, immersive 360° videos.
> <details>
> <summary>read the caption</summary>
> Table 3: Human evaluation results on 360∘superscript360360^{\circ}360 start_POSTSUPERSCRIPT ∘ end_POSTSUPERSCRIPT video generation.
> </details>

{{< table-caption >}}
| Graphics | Quality ↑ |
|---|---|{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of Imagine360's panorama image outpainting performance against three state-of-the-art methods: Diffusion360, PanoDiffusion, and SIG-SS.  The comparison uses three metrics: Intra-Style, measuring the style consistency within the panorama; CLIP, assessing the alignment between the generated panorama and the input text prompt (used as a reference); and IQA, evaluating the overall image quality.  Lower Intra-Style scores indicate better style consistency, while higher CLIP and IQA scores represent better alignment and quality, respectively.
> <details>
> <summary>read the caption</summary>
> Table A: Quantitative comparison with the state-of-the-art Panorama Outpainting methods.
> </details>

{{< table-caption >}}
| Structure |
|---|---| 
| Plausibility ↑ |{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study on the dual-branch fine-tuning strategy used in the Imagine360 model.  The study evaluates the impact of different fine-tuning approaches on several key metrics assessing the quality of generated 360° videos. These metrics include Image Quality (IQ), Aesthetic Quality (AQ), Motion Smoothness (MS), Subject Consistency (SC), and Video Quality Assessment (VQA).  By comparing the performance of the full model against variations with and without certain components of the dual-branch strategy (e.g., spatial LoRA layers, motion modules), the analysis demonstrates the relative contribution of each element to the overall video quality.
> <details>
> <summary>read the caption</summary>
> Table B: Ablative study on dual-branch fine-tune strategy across Image Quality (IQ), Aesthetic Quality (AQ), Motion Smoothness (MS), Subject Consistency (SC) and VQA metrics.
> </details>

{{< table-caption >}}
| Temporal |
|---|---| 
| Coherence ↑ |{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted to evaluate the impact of using an extended panorama video dataset on the performance of the Imagine360 model.  The study compares the model's performance when trained with the original dataset and when trained with the extended dataset, focusing on metrics such as imaging quality, aesthetic quality, motion smoothness, subject consistency, and VQA (video quality assessment).  The results demonstrate the effectiveness of the extended dataset in enhancing the overall performance of the Imagine360 model.
> <details>
> <summary>read the caption</summary>
> Table C: Ablative study on our extended panorama video dataset.
> </details>

{{< table-caption >}}
| Method | Intra-Style(x10^-3) ↓ | CLIP ↑ | IQA ↑ |
|---|---|---|---|
| Diffusion360 [12] | 3.40 | 27.49 | 0.77 |
| PanoDiffusion [49] | 3.46 | 23.19 | 0.72 |
| SIG-SS [18] | 2.06 | 26.26 | 0.48 |
| Ours | **0.99** | **29.12** | **0.78** |{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of elevation estimation smoothing on the performance of the Imagine360 model.  It compares the model's performance on various metrics (Imaging Quality, Aesthetic Quality, Motion Smoothness, Subject Consistency, and VQA) with and without elevation estimation smoothing. The results show that smoothing significantly improves the model's overall quality.
> <details>
> <summary>read the caption</summary>
> Table D: Ablative study on Elevation Estimation Smoothing.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.03552/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.03552/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.03552/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.03552/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.03552/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.03552/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.03552/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.03552/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.03552/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.03552/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.03552/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.03552/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.03552/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}