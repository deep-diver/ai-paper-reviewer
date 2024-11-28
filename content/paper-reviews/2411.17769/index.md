---
title: "Omegance: A Single Parameter for Various Granularities in Diffusion-Based Synthesis"
summary: "Omegance: One parameter precisely controls image detail in diffusion models, enabling flexible granularity adjustments without model changes or retraining."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Nanyang Technological University",]
showSummary: true
date: 2024-11-26
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2411.17769 {{< /keyword >}}
{{< keyword icon="writer" >}} Xinyu Hou et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-11-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2411.17769" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2411.17769" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/omegance-a-single-parameter-for-various" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2411.17769/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current diffusion models lack fine-grained control over the level of detail in generated images, making it hard to precisely shape visual aspects.  Achieving a balance between sharp details and overall visual harmony is challenging, and existing solutions often involve complex modifications or extensive retraining. 

This paper introduces Omegance, a novel technique that addresses this issue.  **Omegance uses a single parameter (ω) to dynamically adjust the level of noise removed during image generation.** This simple yet effective approach allows for precise control over detail, regionally and/or temporally, without requiring any architectural changes or retraining the underlying model. The technique is evaluated on various diffusion models and tasks, demonstrating impressive results and offering a flexible and efficient solution to a key challenge in image synthesis.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A single parameter, omega (ω), effectively controls image detail in diffusion models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Omega can be applied globally, spatially using masks, or temporally through schedules for precise control over detail generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The method is adaptable to many diffusion models without needing retraining, increasing its accessibility and versatility. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it introduces a novel, simple method for controlling image detail in diffusion models.  **This addresses a key limitation in current generative models** and opens up new avenues for creative control and high-quality image editing across numerous applications, impacting diverse fields like art, design, and video game development.  The method is adaptable to various models and requires no retraining, making it widely applicable and impactful for researchers.

------
#### Visual Insights



![](https://arxiv.org/html/2411.17769/x2.png)

> 🔼 Figure 1 demonstrates the versatility of the Omegance method in controlling the level of detail in image generation.  It showcases three different ways to implement this control: globally (affecting the entire image uniformly), spatially (using an omega mask to selectively adjust detail in specific regions), and temporally (using an omega schedule to vary detail levels across different stages of the generation process).  The examples visually illustrate how these controls impact the resulting images, ranging from simple, smooth outputs to those with rich textures and fine details.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Omegance enables flexible granularity control over generation results. The control can be implemented globally, spatially with an omega mask, or temporally with an omega schedule. (Zoom-in for best view)
> </details>





{{< table-caption >}}
| Average Rank Accuracy | Output Quality |
|---|---| 
| Omegance | 93.94% | 81.98% |{{< /table-caption >}}

> 🔼 This table presents the results of a user study evaluating the effectiveness of the proposed Omegance method in controlling the granularity of generated images and its impact on overall image quality.  The study involved two parts: Part 1 assessed the accuracy of participants in ranking images based on their level of granularity (high, medium, low), indicating how well Omegance allows control over this aspect. Part 2 measured the preference for images generated with Omegance versus those from the base model, gauging whether the method improves or maintains image quality.  The results show both the success rate of granularity ranking and the percentage of times Omegance-generated images were preferred or deemed equally good as the baseline, providing a comprehensive assessment of the method's impact on both granularity and quality.
> <details>
> <summary>read the caption</summary>
> Table 1: Results of user study on granularity control effectiveness and output quality of Omegance.
> </details>





### In-depth insights


#### Omega Scaling's Power
Omega scaling, as presented in the research paper, demonstrates **significant potential in controlling the granularity of diffusion-based image synthesis**.  By simply adjusting a single parameter (omega, ω), users gain fine-grained control over detail levels, ranging from smooth, simplistic outputs to intricate, richly textured images.  This control is not limited to global application;  **spatial and temporal adjustments are also possible** through omega masks and schedules respectively. The ability to modulate detail selectively (e.g., enhancing a subject while simplifying the background) makes omega scaling especially valuable for creative tasks where precise control is essential. The method's **ease of implementation, requiring no model retraining or architectural changes**, makes it a highly practical tool. The adaptability of omega scaling across diverse diffusion models and applications, including image and video generation, further highlights its versatility and broad applicability in the field.  **However, the technique’s limitations** should be noted: it does not inherently improve the quality of the underlying base model and careful parameter tuning is needed to achieve optimal results.  Despite this, omega scaling represents a significant advance in the controllability of diffusion models.

#### Granularity Control
The concept of 'Granularity Control' in the context of diffusion-based image synthesis is a significant advancement.  It addresses the limitations of existing models that often lack fine-grained control over the level of detail in generated images.  **Omegance**, as presented, offers a novel single-parameter approach to regulate granularity, impacting both the overall image and specific regions. This **parameter-based approach** is advantageous because it avoids the need for model retraining or architectural modifications, maintaining efficiency. The flexibility of applying this control **globally, spatially via masks, or temporally via schedules**, grants users significant power to customize the visual output according to their needs. This flexible implementation addresses the need for controlling detail in specific image areas or at different synthesis stages.  The technique's **adaptability to various diffusion models** further emphasizes its practical significance. The success and effectiveness of Omegance are demonstrated through extensive experiments and user studies highlighting its impact on image and video synthesis tasks.  In essence, Omegance presents a powerful and versatile tool for achieving nuanced granularity control, thereby enhancing the artistic and creative potential of diffusion models.

#### Spatial & Temporal
The concept of 'Spatial & Temporal' control within the context of image generation using diffusion models is a significant advancement.  **Spatial control**, achieved through omega masks, allows for selective granularity adjustments across different image regions. This is crucial for artistic expression and precise image manipulation, enabling users to emphasize details in specific areas while maintaining smoothness in others.  **Temporal control**, implemented via omega schedules, introduces dynamic granularity adjustments throughout the denoising process.  This aligns with the natural progression of detail refinement in diffusion models, allowing for controlled influence over both layout and fine details.  The combination of spatial and temporal controls offers unparalleled flexibility, enabling users to precisely orchestrate the level of detail across various image areas and stages of generation.  **The single-parameter approach simplifies this complex control**, making it accessible even to users without deep technical expertise. The authors demonstrate the effectiveness of these techniques across numerous diffusion models and image synthesis tasks. This flexible and intuitive control system could revolutionize how diffusion models are used in diverse applications.

#### Diverse Model Scope
A diverse model scope in a research paper would explore the applicability of a proposed method across a wide range of models and tasks.  This demonstrates **robustness** and **generalizability**, moving beyond a narrow set of experiments.  It shows how the technique isn't tied to specific architectures or training methods.  A strong diverse model scope would include testing on different diffusion models (e.g., Stable Diffusion, DALL-E 2), various tasks (text-to-image, image-to-image, video generation), and different model sizes, showcasing the method's adaptability and effectiveness regardless of these factors.  **Results** across these diverse models would offer compelling evidence of the method's broader utility and potential impact.  Furthermore, a comparison against existing state-of-the-art methods on these diverse tasks highlights the **competitive advantage** and unique contributions of the proposed approach.

#### Future Directions
Future research could explore **extending Omegance's capabilities to other generative models** beyond those tested.  Investigating its performance with different architectures and denoising schedules would further solidify its robustness and versatility.  **A deeper investigation into the interplay between omega scaling and various noise schedules** could lead to even finer-grained control and potentially novel generation techniques.  Additionally, exploring **alternative methods for generating omega masks and schedules**, such as those learned directly from user preferences or based on higher-level semantic understanding, would make the process more intuitive and efficient.  Finally, while Omegance shows promise in controlling granularity, **future work could focus on quantitatively evaluating its impact on downstream tasks**, such as image editing and manipulation, to demonstrate its wider applicability and benefit in real-world applications.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2411.17769/x3.png)

> 🔼 Figure 2 visualizes the impact of the Omegance parameter on the frequency distribution of intermediate latent representations (z'_t) during the denoising process of a diffusion model.  Panel (a) shows the baseline behavior without Omegance: high-frequency components decrease progressively as the denoising process unfolds (as indicated by the inference step, inversely related to timestep t), while low-frequency components increase.  Panels (b) and (c) illustrate how Omegance modifies this behavior by scaling the noise prediction. Increasing ω (omega) in (b) accelerates the removal of high frequencies compared to (a), resulting in a smoother image.  Decreasing ω in (c) leads to a slower reduction in high frequencies, preserving finer details and thus producing a more complex result compared to (a).  This demonstrates Omegance’s ability to directly control the granularity of generated outputs by manipulating the balance of high and low-frequency information at different stages of the denoising process.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effects of Omegance on the frequency spectrum of the intermediate latent zt′subscriptsuperscript𝑧′𝑡z^{\prime}_{t}italic_z start_POSTSUPERSCRIPT ′ end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT. The inference step in the legend is inversely correlated with the timestep t𝑡titalic_t. In the original denoising process (a), high-frequency components gradually diminish while low-frequency components become more prominent as the denoising progresses to late stages. With Omegance, increasing ω𝜔\omegaitalic_ω leads to more aggressive removal of the high-frequency components, as shown in (b), and vice versa, as depicted in (c).
> </details>



![](https://arxiv.org/html/2411.17769/x4.png)

> 🔼 Figure 3 visualizes the global impact of the Omegance parameter on image generation across various diffusion models.  Each column represents a different diffusion model (SDXL, SDXL+FreeU, RealVisXL-5.0, SD3, FLUX). Within each column, the images progress from left to right, demonstrating the effect of increasing the Omegance parameter (ω).  The images showcase how Omegance, without model retraining or architectural changes, smoothly adjusts the level of detail and complexity in the generated images.  A lower ω value results in less noise removal, leading to richer textures and more complex scenes, while a higher ω value leads to smoother and simpler outputs, effectively controlling the granularity of detail in the image.
> <details>
> <summary>read the caption</summary>
> Figure 3: Global effects of Omegance. (Zoom-in for best view)
> </details>



![](https://arxiv.org/html/2411.17769/x5.png)

> 🔼 Figure 4 illustrates how applying the Omegance parameter at different stages of the denoising process affects the generated image's layout and fine details.  The graphs display two distinct omega schedules,  S¹(t) and S²(t).  S¹(t) focuses on enhancing early stages of the process (Early-Stage Enhancement), primarily influencing the image's overall layout and composition. S²(t) emphasizes later stages (Late-Stage Enhancement), refining the finer details and textures. Using discrete schedules makes the effects on layout and details more pronounced and easier to observe.  This figure complements Figure 1(c) by visually demonstrating the impact of temporal control over detail using omega schedules.
> <details>
> <summary>read the caption</summary>
> Figure 4: Effects of Omegance in different denoising stages. The 𝒮1⁢(t)superscript𝒮1𝑡\mathcal{S}^{1}(t)caligraphic_S start_POSTSUPERSCRIPT 1 end_POSTSUPERSCRIPT ( italic_t ) and 𝒮2⁢(t)superscript𝒮2𝑡\mathcal{S}^{2}(t)caligraphic_S start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT ( italic_t ) schedules correspond to Early-Stage Enhancement (left) and Late-Stage Enhancement (right) cases in Fig. 1(c). The discrete step schedules are applied to ensure clearer effects on the image layout and fine-grained detail.
> </details>



![](https://arxiv.org/html/2411.17769/x6.png)

> 🔼 This figure demonstrates the global impact of Omegance on image quality.  The left panel shows examples where Omegance helps reduce artifacts in images generated by SDXL, leading to a cleaner and more visually appealing result. The right panel shows how Omegance can improve realism, particularly noticeable in images generated using FLUX, by enhancing fine details and creating a more natural-looking image. The use of Omegance is shown to both fix image artifacts and improve realism in a variety of different model outputs.  In both scenarios, the original image is compared to the one with Omegance applied, highlighting the positive effects.
> <details>
> <summary>read the caption</summary>
> Figure 5: Global effects of Omegance in fixing visual artifacts and improving realism. (Zoom-in for best view)
> </details>



![](https://arxiv.org/html/2411.17769/x7.png)

> 🔼 Figure 6 demonstrates the impact of applying Omegance at different stages of the denoising process.  It showcases four different omega schedules: EXP1, EXP2, COS1, and COS2. Each schedule modifies the balance between layout complexity and fine details. EXP1 and EXP2 both result in more complex layouts, but EXP1 has slightly more fine details than EXP2. COS1 and COS2 both result in less complex layouts, but COS2 has more fine details than COS1. The top row shows the schedules themselves, illustrating how the omega values change over the denoising steps. The bottom row displays images generated with each schedule to illustrate the different levels of granularity and detail achieved.
> <details>
> <summary>read the caption</summary>
> Figure 6: Temporal effects of schedule-based Omegance. Four quadrants in (a) are the same as those in Fig. 4. EXP1: More complex layout, slightly more fine detail. EXP2: More complex layout, less fine detail. COS1: Slightly less complex layout, less fine detail. COS2: Less complex layout, more fine detail. (Zoom-in for best view)
> </details>



![](https://arxiv.org/html/2411.17769/x8.png)

> 🔼 This figure demonstrates the spatial control offered by Omegance in the context of image-to-image editing using SDEdit.  It shows how Omegance, using spatially varying control (omega masks), selectively modifies the level of detail in different image regions.  Red masks enhance details while blue masks suppress them. The examples showcase the ability to fine-tune the granularity of specific objects or areas within an image, while preserving the overall composition and visual harmony. The original image and results of applying different omega masks are shown for comparison.
> <details>
> <summary>read the caption</summary>
> Figure 7: Spatial effects of mask-based Omegance in SDEdit results. (Zoom-in for best view)
> </details>



![](https://arxiv.org/html/2411.17769/x9.png)

> 🔼 Figure 8 presents several examples illustrating how mask-based Omegance, applied in conjunction with ControlNet, enables precise control over the granularity of image generation. Different ControlNet signals (Pose, Depth, Canny) are utilized to guide the generation process, while the omega mask specifies which regions should receive increased detail (red) or detail reduction (blue). The results demonstrate how Omegance, through the flexible use of spatial masks, allows for fine-tuned control of texture and detail in specific areas without affecting other parts of the image.
> <details>
> <summary>read the caption</summary>
> Figure 8: Spatial effects of mask-based Omegance in ControlNet results. (Zoom-in for best view)
> </details>



![](https://arxiv.org/html/2411.17769/x10.png)

> 🔼 This figure demonstrates the application of Omegance with spatial masks in image-to-image editing using the ReNoise model.  It showcases how Omegance, through selective application of the omega parameter via a mask, allows for granular control over detail levels within a generated image.  The example shows an original image and two versions modified using Omegance; one with increased detail in specific areas (marked by red regions in the mask), and another with suppressed detail in selected areas (marked by blue regions in the mask).  This highlights Omegance's ability to produce nuanced, localized edits by combining fine-grained detail control with a simple single parameter.
> <details>
> <summary>read the caption</summary>
> Figure 9: Spatial effects of mask-based Omegance in ReNoise inversion results. (Zoom-in for best view)
> </details>



![](https://arxiv.org/html/2411.17769/x11.png)

> 🔼 This figure demonstrates the effect of Omegance on image inpainting. It shows three images: the original image with missing parts, an image inpainted with less detail (using Omegance to suppress detail), and an image inpainted with more detail (using Omegance to enhance detail).  This illustrates how Omegance provides control over the level of detail in the inpainted regions, allowing for flexible adjustments to the generated content.
> <details>
> <summary>read the caption</summary>
> Figure 10: Effects of Omegance in image inpainting task. (Zoom-in for best view)
> </details>



![](https://arxiv.org/html/2411.17769/x12.png)

> 🔼 This figure demonstrates the impact of Omegance on text-to-video generation using two different models: Latte and AnimateDiff.  The top row showcases how Omegance affects the overall level of detail in the generated videos. Increasing the omega parameter leads to simpler scenes with smoother textures and less complex backgrounds (detail suppression), while decreasing it results in more intricate, detailed scenes with richer textures (detail enhancement). The bottom row illustrates how Omegance can be used to fix visual artifacts that often arise in text-to-video generation. By applying Omegance, the artifacts in the generated videos are either reduced or completely eliminated, leading to cleaner and more visually appealing results.
> <details>
> <summary>read the caption</summary>
> Figure 11: Effects of Omegance in Text-to-Video results. (Zoom-in for best view)
> </details>



![](https://arxiv.org/html/2411.17769/x13.png)

> 🔼 This figure compares the effects of changing the omega parameter (left) versus changing the number of inference steps (right) on image generation.  The left panel shows that varying omega provides a smooth and predictable control over image detail. In contrast, the right panel illustrates that changing the number of inference steps results in less consistent control over granularity, highlighting the advantage of using the omega parameter for detail management. The orange box in both panels represents the default image generated when omega is 1.0 and 50 inference steps are used.
> <details>
> <summary>read the caption</summary>
> Figure 12: Change of omega (left) vs. Change of number of inference steps (right). Example 1. Orange box indicates default results when ω=1.0𝜔1.0\omega=1.0italic_ω = 1.0 and the number of inference steps =50absent50=50= 50.
> </details>



![](https://arxiv.org/html/2411.17769/x14.png)

> 🔼 This figure compares the effects of changing the omega parameter (ω) versus changing the number of inference steps on the generated image.  The left panel shows images generated with different omega values, while keeping the number of inference steps constant at 50. The right panel shows images generated by varying the number of inference steps, while keeping omega constant at 1.0.  The orange box highlights the default image generated when ω = 1.0 and the number of inference steps is 50. This visual comparison demonstrates the differences in granularity control achieved by adjusting omega versus adjusting the number of inference steps, showcasing how omega provides more nuanced and precise control over image detail.
> <details>
> <summary>read the caption</summary>
> Figure 13: Change of omega (left) vs. Change of number of inference steps (right). Example 2. The orange box indicates default results when ω=1.0𝜔1.0\omega=1.0italic_ω = 1.0 and the number of inference steps =50absent50=50= 50.
> </details>



![](https://arxiv.org/html/2411.17769/extracted/6025450/figures/omega_rescale.png)

> 🔼 This figure demonstrates the impact of modifying the latent mean in a variational autoencoder (VAE) on the resulting image's RGB color channels. The original image is shown alongside modified versions where the latent mean has been either increased or decreased.  The analysis reveals that altering the latent mean primarily affects the green channel, causing color shifts and artifacts. The red channel is relatively less sensitive to mean changes, while the blue channel shows moderate sensitivity.
> <details>
> <summary>read the caption</summary>
> Figure 14: Effects of latent mean changes on image RGB mean with analysis.
> </details>



![](https://arxiv.org/html/2411.17769/x15.png)

> 🔼 The figure visualizes the rescaling function used to map the omega parameter (ω) from its input range of (-∞, ∞) to a more manageable range for finer-grained control in the denoising process. This function ensures that the omega parameter's impact on the variance of noise prediction is smooth and predictable. The graph displays the rescaled omega value (ω) against its original input value, demonstrating how the rescaling function adjusts the input values to achieve finer-grained control.
> <details>
> <summary>read the caption</summary>
> Figure 15: Visualization of omega rescale function.
> </details>



![](https://arxiv.org/html/2411.17769/x16.png)

> 🔼 This figure visually demonstrates the impact of the Omegance parameter on image generation using the SDXL model.  Three columns showcase different levels of detail controlled by Omegance: 'More Detail', 'SDXL' (representing the original model's output without Omegance), and 'Less Detail'. Each row presents a different image, highlighting how the parameter alters the level of detail, texture, and overall complexity of the generated scene. The change in detail is consistent across various image types.
> <details>
> <summary>read the caption</summary>
> Figure 16: More global effects of Omegance in SDXL.
> </details>



![](https://arxiv.org/html/2411.17769/x17.png)

> 🔼 This figure displays the global impact of the Omegance parameter on image generation using two different models: SDXL+FreeU and RealVisXL-V5.0.  Each row presents three images of the same scene: one with increased detail (achieved by modifying the Omegance parameter to reduce noise removal), one with the original amount of detail (using the default parameter), and one with reduced detail (achieved by adjusting the parameter to increase noise removal). This visual comparison demonstrates the versatility of the Omegance technique in precisely controlling the level of detail across different image generation scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 17: More global effects of Omegance in SDXL+FreeU and RealVisXL-V5.0.
> </details>



![](https://arxiv.org/html/2411.17769/x18.png)

> 🔼 This figure displays the results of applying the Omegance technique to two different diffusion models, SD3 and FLUX.  Three columns show the effect of varying the omega parameter: 'More Detail' (omega < 1), 'Original' (omega = 1), and 'Less Detail' (omega > 1). Each row presents a different image generated by each model. By comparing the three columns for each row, the user can observe the effect that changing the omega parameter has on the level of detail in the generated image. The results show the flexibility of Omegance in controlling the granularity of generated images across different models.
> <details>
> <summary>read the caption</summary>
> Figure 18: More global effects of Omegance in SD3 and FLUX.
> </details>



![](https://arxiv.org/html/2411.17769/x19.png)

> 🔼 Figure 19 shows additional examples of how Omegance's temporal control, implemented using different omega schedules, affects image generation.  These schedules, previously defined and illustrated in Figure 6, demonstrate how adjusting the omega parameter over time influences the balance between overall layout and fine details in the generated image.  The results illustrate that different schedules yield distinct levels of detail and layout complexity. For example, some schedules prioritize early-stage layout formation, resulting in more intricate, complex compositions, while others focus on late-stage refinement, leading to images with smoother transitions and simpler outlines.
> <details>
> <summary>read the caption</summary>
> Figure 19: More temporal effects of schedule-based Omegance follow schedules defined in Fig. 6.
> </details>



![](https://arxiv.org/html/2411.17769/x20.png)

> 🔼 This figure showcases the spatial control capabilities of mask-based Omegance in various image generation scenarios.  It demonstrates how the Omegance parameter, when combined with spatial masks, enables selective granularity control within different image regions.  Each row displays three images: the original image and two versions generated with Omegance using different masks. The masks, not explicitly shown but implied, determine which parts of the images receive higher or lower detail.  The images represent different styles and subjects, highlighting the versatility of the method across various image generation tasks and models. The use of red and blue colors in the mask indicates detail enhancement and suppression respectively. 
> <details>
> <summary>read the caption</summary>
> Figure 20: More spatial effects of mask-based Omegance.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2411.17769/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17769/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17769/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17769/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17769/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17769/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17769/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17769/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17769/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17769/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17769/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17769/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17769/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17769/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17769/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17769/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17769/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17769/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17769/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17769/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}