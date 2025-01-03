---
title: "DreamPolish: Domain Score Distillation With Progressive Geometry Generation"
summary: "DreamPolish:  A new text-to-3D model generates highly detailed 3D objects with polished surfaces and realistic textures using progressive geometry refinement and a novel domain score distillation tech..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 Peking University",]
showSummary: true
date: 2024-11-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2411.01602 {{< /keyword >}}
{{< keyword icon="writer" >}} Yean Cheng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-11-06 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2411.01602" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2411.01602" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/dreampolish-domain-score-distillation-with" target="_self" >}}
↗ Papers with Code
{{< /button >}}


### TL;DR


{{< lead >}}

Current text-to-3D models struggle to create complex objects with intricate details and photorealistic textures.  Existing methods often lead to inconsistent geometry or subpar texture quality, limiting their practical applications. This is due to challenges in balancing texture photorealism with training stability and issues with view-consistent geometric surface details. 

DreamPolish tackles these challenges using a two-phase approach. The first phase progressively refines geometry using multiple neural representations and a polishing stage to improve surface details.  The second phase utilizes a novel score distillation technique to guide texture generation toward a domain that combines photorealism and consistency, leading to significantly improved texture quality.  The results demonstrate a substantial improvement in both geometry and texture, surpassing existing state-of-the-art methods.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} DreamPolish generates high-quality 3D models with polished geometry and photorealistic textures. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Progressive geometry polishing improves surface smoothness and detail. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Domain score distillation enhances texture quality and consistency. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it **significantly advances text-to-3D generation** by introducing a novel method that produces high-quality 3D models with polished geometry and photorealistic textures.  It addresses limitations of existing methods by combining multiple neural representations and a novel score distillation objective. This work **opens new avenues for research** in 3D asset creation and related fields, such as virtual reality, gaming, and 3D printing.

------
#### Visual Insights



![](https://arxiv.org/html/2411.01602/x1.png)

> 🔼 Figure 1 showcases the high-quality 3D models generated by DreamPolish.  The image displays a variety of objects, each demonstrating the model's ability to create both polished, smooth surfaces and photorealistic textures. The examples range from simple objects like a turtle to more complex models such as a detailed owl or a stylized anime girl.  The figure highlights the key capabilities of the DreamPolish model: generating intricate details, realistic materials, and lifelike textures, all from simple textual descriptions.  More examples and videos demonstrating the model's performance are available in the supplementary materials.
> <details>
> <summary>read the caption</summary>
> Figure 1: DreamPolish excels in producing 3D models with polished geometry and photorealistic texture. Please refer to the supplemental material for more results and videos.
> </details>





{{< table-caption >}}
| Model | PSNR ↑ | SSIM ↑ | LPIPS ↓ | CLIP Score ↑ |
|---|---|---|---|---|
| Magic123 [30] | 20.30 | 0.803 | 0.148 | 0.720 |
| DreamCraft3D [38] | 24.40 | 0.933 | 0.093 | 0.754 |
| Ours | 25.13 | 0.933 | 0.087 | 0.759 |{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of the proposed DreamPolish model against several state-of-the-art baselines in terms of 3D model generation quality.  The metrics used for comparison include PSNR (Peak Signal-to-Noise Ratio), SSIM (Structural Similarity Index), LPIPS (Learned Perceptual Image Patch Similarity), and CLIP Score.  Higher values for PSNR and SSIM, and lower values for LPIPS, generally indicate better image quality.  CLIP Score measures the alignment between the generated image and the input text prompt, with higher values representing better alignment. The table highlights the best performance achieved for each metric by each model.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative Comparison Results. ↑↑\uparrow↑ (↓↓\downarrow↓) indicates that higher (lower) is better. We highlight the best score in boldface.
> </details>





### In-depth insights


#### Progressive Geometry
The concept of "Progressive Geometry" in the context of 3D generation suggests a multi-stage approach to building 3D models, starting with a coarse representation and iteratively refining it.  This is crucial because directly generating highly detailed 3D objects is computationally expensive and prone to errors.  **The progressive nature allows the model to build a stable foundation before adding intricate details**.  Each stage might use different neural representations (e.g., NeRF, NeuS, DMTet) best suited for the level of detail.  **This combination of representations leverages the strengths of each, improving both speed and accuracy**. A key aspect is likely the incorporation of refinement steps such as surface polishing, using normal estimation techniques to smooth out artifacts from previous stages.  This iterative approach reduces the burden on each individual stage and enables generation of complex geometries that would otherwise be infeasible.  The success of such a method heavily relies on carefully chosen loss functions to guide the refinement process, balancing computational efficiency with the quality of the final output.  Overall, **progressive geometry generation showcases a highly effective strategy for producing high-quality, complex 3D models by breaking down a difficult task into manageable sub-problems**.

#### Domain Score Distillation
Domain score distillation is a novel technique introduced to enhance the quality of texture generation in text-to-3D models.  It addresses the limitations of existing methods like Score Distillation Sampling (SDS), which often leads to inconsistent geometry and overly saturated textures.  **Instead of relying solely on a classifier-free guidance (CFG) weight for balancing texture quality and training stability**, domain score distillation (DSD) leverages a two-pronged approach. It guides neural representations toward a domain that embodies both photorealistic and consistent renderings using a learned variational distribution, thus improving the quality of the textures and solving the inconsistency and saturation problems.  The approach cleverly combines guidance from both an unconditional image domain (for stability) and a variational domain (for realism) to address the inherent trade-off between these two aspects. This dual guidance helps produce 3D models with polished surfaces and improved photorealistic textures, surpassing state-of-the-art methods in terms of quality and consistency. **The key advantage is its ability to improve results without relying on excessively high CFG weights**, a critical improvement that avoids over-saturation and other artifacts frequently observed in previous approaches.  This makes it a significant advance in the field, enabling more robust and higher-quality 3D content generation.

#### Hybrid 3D Generation
Hybrid 3D generation methods cleverly combine the strengths of both 2D and 3D approaches, leveraging the power of advanced 2D diffusion models pretrained on massive image-text datasets.  **This fusion addresses the limitations of purely 3D native methods**, which often struggle with producing complex geometries and photorealistic textures due to limited training data.  By incorporating 2D diffusion models, hybrid approaches gain access to a vast latent space of high-quality images and can effectively transfer this photorealism to 3D asset generation.  **The key challenge in these hybrid methods lies in effectively bridging the 2D and 3D domains**, ensuring consistent and coherent 3D geometry from multiple 2D views.  This often involves sophisticated techniques like score distillation, which aims to align the distributions of 2D and 3D representations, minimizing discrepancies and artifacts.  **Success hinges on carefully balancing consistency and photorealism**, as overly focusing on one aspect can negatively impact the other.  This balance is crucial for generating high-quality 3D assets that seamlessly integrate realistic textures and detailed, accurate geometry.

#### Texture Enhancement
DreamPolish's texture enhancement leverages a novel **domain score distillation (DSD)** objective.  This method addresses inconsistencies in existing score distillation approaches, which often prioritize stability over photorealism or vice versa. DSD cleverly guides the neural representation toward a domain in the vast latent space of a pre-trained text-to-image model. This domain is characterized by **both photorealistic and consistent renderings**, thus balancing quality and stability.  Unlike classifier-free guidance (CFG) alone, which sometimes leads to oversaturation, DSD combines CFG with variational distribution guidance to achieve superior texture quality.  By targeting this specific domain, DreamPolish overcomes limitations of previous methods and generates 3D assets with significantly enhanced photorealism.

#### Ablation Study Analysis
An ablation study is crucial for evaluating the contribution of individual components within a complex model like DreamPolish.  By systematically removing or altering specific modules (e.g., different neural representations in geometry construction, or the proposed DSD objective in texture generation), researchers can isolate the impact of each part on the final output quality. **The results from such an ablation study would reveal which components are essential for achieving polished geometry and photorealistic textures, as well as highlight potential areas for improvement or future research.** For instance, comparing the performance of the model with and without the surface polishing stage would quantify its effectiveness in refining surface details. Similarly, comparing different score distillation objectives would demonstrate the advantages of the DSD method in achieving better stability and quality in texture generation.  **Such a detailed analysis allows for a deeper understanding of the model's inner workings and provides valuable insights for future model development and optimization.** The ablation study should also include a comparison of different variations or parameters within key components, showing not only that they are important, but also how each parameter's value affects the overall model performance. This leads to a more comprehensive and nuanced understanding of each part’s contributions and their interdependencies.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2411.01602/x2.png)

> 🔼 DreamPolish is a text-to-3D generation model.  The figure illustrates its two-stage process. First, a text prompt and corresponding generated image are input.  The model then progressively builds a detailed 3D geometry using multiple neural representations, ensuring a smooth and coherent surface. This is achieved through progressive construction and surface polishing stages, refining the model from a coarse initial representation to a finely detailed one.  Second,  domain score distillation (DSD) is used to improve the texture quality. DSD guides the model towards a domain in the latent space that produces both consistent and photorealistic textures, leveraging both classifier-free guidance (CFG) and variational distribution guidance. The figure shows the architecture highlighting the different components of the geometry and texture generation pipelines, illustrating the flow of information and the interaction between different modules.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of DreamPolish. Given a text prompt and its corresponding generated image shown in the top left as input, DreamPolish first progressively constructs a fine-grained 3D geometry with coherent and smoothed surface. Then, DreamPolish leverages DSD as the score distillation objective to guide the representation towards a domain with both consistent and photorealistic texture.
> </details>



![](https://arxiv.org/html/2411.01602/x3.png)

> 🔼 Figure 3 illustrates three different score distillation strategies for enhancing texture quality in 3D model generation. (a) shows the vanilla SDS method, which only provides guidance towards a zero-mean noise distribution, leading to less stable and less photorealistic results. (b) demonstrates VSD and BSD methods that leverage a variational domain for improved texture quality. By incorporating the information of the variational domain, the texture quality is improved, but stability is still a concern. (c) presents the proposed DSD method, which combines guidance from both an unconditional image domain and the variational domain, leading to improved stability and photorealism.  The figure visually compares the resulting sample distributions and guidance domains for each method.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustration on different score distillation strategies. (a): Vanilla SDS [29] only has guidance direction on zero-mean noise; (b): VSD [41] and BSD [38] utilize a variational domain to improve texture quality; (c): our proposed DSD provides guidance directions toward unconditional image domain and variational domain, further improving the stability and photorealism of rendered texture.
> </details>



![](https://arxiv.org/html/2411.01602/x4.png)

> 🔼 This figure presents a qualitative comparison of 3D models generated by the proposed DreamPolish model and several baseline methods.  Each row shows the same 3D object generated by different methods. The leftmost column shows the ground truth (reference) image. The following columns showcase the results produced by the methods: Ours (DreamPolish), Magic123, DreamCraft3D, DreamFusion, GeoDream, and ProlificDreamer. This comparison highlights DreamPolish's ability to generate 3D objects with significantly improved geometric accuracy and more photorealistic textures compared to the baseline methods.  Supplementary materials contain additional results.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative comparisons with baseline methods. Our method produces 3D objects with high-quality geometry and photorealistic textures. Please refer to the supplementary for more results.
> </details>



![](https://arxiv.org/html/2411.01602/x5.png)

> 🔼 The figure displays a bar chart visualizing the results of a user study comparing DreamPolish against several baseline methods in terms of user preference. Each bar represents a method (DreamPolish, Magic123, DreamCraft3D, GeoDream, DreamFusion, and ProlificDreamer), and the height shows the percentage of participants who selected that method as having the best performance. The chart clearly shows DreamPolish receiving the highest percentage of votes (57%), significantly outperforming other methods, suggesting its superior quality in generating 3D models according to user perception.
> <details>
> <summary>read the caption</summary>
> Figure 5: User study results.
> </details>



![](https://arxiv.org/html/2411.01602/x6.png)

> 🔼 Figure 6 presents an ablation study on the geometry construction phase of the DreamPolish model.  The study examines the impact of different neural representations (NeRF, NeuS, and DMTet) and loss functions on the quality of the generated 3D geometry.  The progressive refinement of geometry quality and surface smoothness across these representations is shown through normal maps.  The experiment also highlights the limitations of a simpler normal smoothing loss ('normal smooth loss') compared to the model's proposed normal loss ('proposed normal loss') in effectively polishing surface artifacts from earlier stages. The results demonstrate that the proposed normal loss is crucial for achieving high-quality, artifact-free 3D models.
> <details>
> <summary>read the caption</summary>
> Figure 6: Ablation study on geometry construction. Geometric quality and surface smoothness in varying representations are progressively refined along the training process. In the surface polishing stage, normal smooth loss ℒablationnovelsubscriptsuperscriptℒnovelablation\mathcal{L}^{\text{novel}}_{\text{ablation}}caligraphic_L start_POSTSUPERSCRIPT novel end_POSTSUPERSCRIPT start_POSTSUBSCRIPT ablation end_POSTSUBSCRIPT is insufficient for surface smoothing while the proposed ℒnormalnovelsubscriptsuperscriptℒnovelnormal\mathcal{L}^{\text{novel}}_{\text{normal}}caligraphic_L start_POSTSUPERSCRIPT novel end_POSTSUPERSCRIPT start_POSTSUBSCRIPT normal end_POSTSUBSCRIPT objective can effectively polish the artifacts generated in previous stages.
> </details>



![](https://arxiv.org/html/2411.01602/x7.png)

> 🔼 This ablation study compares the texture generation quality of different score distillation methods, including the proposed Domain Score Distillation (DSD), using the same 3D geometry as input. The results demonstrate that DSD produces textures with superior photorealism and more detailed features compared to other methods such as Vanilla SDS, VSD, and BSD.
> <details>
> <summary>read the caption</summary>
> Figure 7: Ablation study on texture generation. With the same fixed geometry, the proposed DSD objective produces textures with the most photorealistic details.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2411.01602/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.01602/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.01602/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.01602/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.01602/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.01602/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.01602/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.01602/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.01602/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.01602/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.01602/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.01602/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.01602/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}