---
title: "FashionComposer: Compositional Fashion Image Generation"
summary: "FashionComposer revolutionizes fashion image creation through flexible composition of garments, faces, and poses."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 University of Hong Kong",]
showSummary: true
date: 2024-12-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.14168 {{< /keyword >}}
{{< keyword icon="writer" >}} Sihui Ji et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.14168" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.14168" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/fashioncomposer-compositional-fashion-image" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.14168/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current virtual try-on and fashion image generation methods lack flexibility. They are often limited to single garment try-ons, and struggle to handle diverse inputs such as text descriptions, garment images, and human poses, restricting user control and customization. Moreover, they frequently can not maintain the fidelity of details in generated images, and are unable to support the generating of human image with consistent IDs. Existing methods also struggle to synthesize realistic and diverse images that cater to the needs of personalized fashion design. 

FashionComposer addresses these limitations by offering a flexible, multi-modal framework based on diffusion models. It accepts diverse inputs including text, parametric human models, and multiple garment images and integrates these inputs through novel attention mechanisms, such as subject-binding attention, to compose complex fashion scenes. Additionally, FashionComposer introduces correspondence-aware attention and latent code alignment to support consistent human album generation. This solution enables users to create photorealistic images, virtual try-ons with multiple garments and personalized outfits.  Extensive experiments show that this method surpasses previous techniques in terms of fidelity and customization capacity.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} FashionComposer introduces a novel framework for compositional fashion image generation with multi-modal input. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Subject-binding attention enables the effective composition of multiple visual assets in a single pass. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Correspondence-aware attention and latent code alignment support the generation of image albums with consistent identities {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**FashionComposer offers a significant advancement in image generation by enabling flexible composition of fashion elements.** It introduces novel techniques for multi-modal and multi-reference synthesis, which **addresses limitations of existing methods.** This opens up new possibilities for research in virtual try-on, personalized fashion design, and album generation, pushing boundaries of customization and control in **fashion-related image synthesis.** The flexible framework and compositional capabilities **provide a robust foundation for future research** exploring diverse applications.

------
#### Visual Insights



![](https://arxiv.org/html/2412.14168/x2.png)

> 🔼 FashionComposer takes various inputs like garment images, face images, and parametric human models as 'assets' to create realistic and diverse fashion images. It supports applications such as controllable model image generation, virtual try-on with multiple garments or a consistent human identity across images (human album generation). The figure showcases example outputs of these applications.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Demonstration for the applications of FashionComposer. FashionComposer takes different kinds of conditions (e.g., garment image, face image, parametric human model) equally as “assets” to composite diverse and realistic fashion images. Thus supporting various fashion-related applications like controllable model image generation, virtual try-on, human album generation, etc.
> </details>





{{< table-caption >}}
| Method | CLIP-I\uparrow | DINO\uparrow | CLIP-T\uparrow |
|---|---|---|---| 
| **Ours** | **77.60** | **40.11** | **27.71** |
| Emu2 | 69.70 | 35.96 | 20.54 |
| Collage Diffusion | 67.80 | 34.16 | 22.14 |
| AnyDoor+ControlNet | 72.40 | 37.94 | 27.00 |
| Paint-by-example+ControlNet | 64.50 | 34.60 | 23.77 |{{< /table-caption >}}

> 🔼 This table presents a comparison of FashionComposer with other multi-object reference generation methods using CLIP-I, DINO, and CLIP-T as evaluation metrics. The methods are grouped into one-pass multi-reference customization methods and two-stage inpainting pipeline methods based on pre-generated base images.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison with multi-object reference generation methods. The first three rows represent one pass multi-reference customization methods and the last two rows represent two stage inpainting pipeline based on pre-generated base images.
> </details>





### In-depth insights


#### Compositional Power
**FashionComposer** exhibits significant **compositional power** by integrating multiple elements.  It handles diverse inputs like text, parametric human models, garment images, and faces, enabling complex scene creation. The **subject-binding attention** mechanism strengthens this power by semantically linking visual assets with text descriptions, allowing the model to discern and represent multiple garments effectively. This approach offers fine-grained control over the generated image, allowing for detailed personalization of the human figure, pose, and clothing.  Evaluations highlight its superiority over existing methods in maintaining fidelity and consistency, showcasing its potential for various applications, including virtual try-on and album generation.

#### Multi-Modal Fusion
**Multi-modal fusion** is crucial for FashionComposer's compositional capabilities. It seamlessly integrates diverse inputs like **text prompts, parametric human models (SMPL), garment images, and face images**. This fusion allows for highly flexible and personalized fashion image generation, controlling human appearance, pose, and garments in a single pass.  The framework effectively combines these modalities, allowing for complex compositions and supporting tasks like virtual try-on and human album generation.  The key is the effective integration of these diverse data types to achieve a unified and coherent representation for downstream image generation tasks.

#### Fidelity Focus
**Fidelity Focus** emphasizes generating high-quality, realistic fashion images.  This involves **preserving intricate details** of garments and faces, avoiding artifacts, and ensuring natural textures.  **Sharpness, color accuracy, and correct representation of materials** are crucial for a believable image. Achieving fidelity requires advanced techniques, like **reference UNets and subject-binding attention**, to effectively utilize reference images.  **Balancing fidelity with other factors, such as compositionality and consistent identity,** is vital for a comprehensive solution, as prioritizing only fidelity may limit flexibility or introduce artifacts. Evaluation metrics like CLIP-I, DINO, and user studies are essential to assess and refine fidelity.

#### Identity Album
**Identity Albums**, fueled by AI, could revolutionize **personalized storytelling and digital identity**. Imagine creating visual narratives showcasing **evolving styles, aging, or diverse personas**. This tech could **impact fashion**, letting users visualize outfits on themselves across time or in various styles. In **entertainment**, it could **generate characters with evolving backstories**, enriching narratives.  However, **ethical concerns arise**, especially around **misinformation and manipulation**. Ensuring **responsible development and usage** is crucial to prevent misuse and protect individuals.  Further exploration of these technologies could lead to powerful **tools for self-expression and creative exploration**.

#### Try-on Trials
**Virtual try-on** technology has revolutionized online shopping by letting users visualize how clothes would look on them.  This is typically achieved by overlaying garment images onto a picture of the user or a model.  A key challenge is maintaining **realistic appearance** while ensuring the garment **fits** the user's figure in a **plausible** way.  Advanced techniques like **3D body modeling and garment warping** help address this, yet perfecting the virtual try-on experience across different body types, poses, and garment styles remains an ongoing area of research. Newer methods are incorporating aspects like **fabric drape and texture**, moving beyond simply placing a 2D image onto a figure.  The ability to **virtually try on complete outfits**, considering layering and coordination, is also a significant advancement.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.14168/extracted/6080147/fig/comp_quali_v3.jpg)

> 🔼 FashionComposer takes various inputs such as garment composition, optional face, text prompt, and densepose from SMPL to generate or edit fashion images.  It uses Reference UNet to extract garment/face features, which are then injected for denoising through Feature Injection Attention. The text prompt is fused with UNets via cross-attention and subject-binding attention.  Subject-binding attention associates extracted features with corresponding text descriptions (semantics) to avoid confusion and better maintain details. For example, if given a prompt 'A slim woman with short brown hair wears a green shirt and yellow skirt', it will extract features for the shirt, skirt, face, and pose and bind them to descriptions like 'green shirt' and 'yellow skirt'. It will then use these bound features together with human pose information to generate a realistic image.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overall pipeline of FashionComposer. FashionComposer takes garments composition and optional face, text prompt, and a densepose map projected from SMPL as inputs. The text prompt is encoded and fused with UNets through cross-attention and subject-binding attention, while the garment features are extracted and injected for denoising through Feature Injection Attention.
> </details>



![](https://arxiv.org/html/2412.14168/extracted/6080147/fig/comp_v2.jpg)

> 🔼 This figure provides a qualitative comparison of FashionComposer with existing multi-reference customization methods, including Emu2, Collage Diffusion, Paint by Example, and AnyDoor, showcasing FashionComposer's superior performance in preserving garment details and handling multiple references in a single pass. The inputs consist of garment images and corresponding prompts, with FashionComposer receiving all garments in one pass while other methods receive single or multiple garments in multiple forwards. The results demonstrate FashionComposer's ability to effectively handle various garment references, while other methods struggle with maintaining fidelity and blending identities, making FashionComposer the better solution for realistic and detailed fashion image generation.
> <details>
> <summary>read the caption</summary>
> Figure 3: Qualitative comparison with multi-reference customization methods, including Emu2 [27], Collage Diffusion [25], Paint by Example [34] and AnyDoor [6].
> </details>



![](https://arxiv.org/html/2412.14168/extracted/6080147/fig/tryon.jpg)

> 🔼 This figure presents a qualitative comparison among FashionComposer and existing garment-centric image synthesis methods, including StableGarment, IMAGDressing-v1, and MagicClothing. The task focuses on generating a fashion image given reference garment images and additional guidance such as face and densepose of a human. In each set of samples, the top row displays the provided conditions: the garment components, face image and the densepose.  The remaining rows show generated images by each method with the same input.  FashionComposer demonstrates better ability in preserving the identity of the garments, faces, and denseposes than other methods.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative comparison with garment-centric fashion image synthesis methods, including StableGarment [30], IMAGDressing-v1 [26], and Magic Clothing [4], where ours better preserves the identity of the target objects. Note that all approaches do not finetune the model on the test samples.
> </details>



![](https://arxiv.org/html/2412.14168/extracted/6080147/fig/ablation_ref_v2.jpg)

> 🔼 FashionComposer demonstrates its diverse virtual try-on capabilities, seamlessly integrating upper garments (like shirts and jackets), lower garments (like pants and skirts), and even complete outfits onto individuals.  The results showcase accurate garment fitting and maintain the texture and details of the original garment images.  This figure highlights the method's ability to handle various clothing categories and combinations, showcasing potential for realistic and flexible virtual try-on applications.
> <details>
> <summary>read the caption</summary>
> Figure 5: Diverse virtual try-on results of FashionComposer for upper, lower, and outfit try-on tasks.
> </details>



![](https://arxiv.org/html/2412.14168/x3.png)

> 🔼 This figure shows qualitative results for preserving details when generating fashion images with references.  The first column displays the original garment images used as reference. The other columns present generated images conditioned on the garments and densepose, using different encoders for the reference information: DINOv2 embeddings, ControlNet, and the proposed Reference UNet. The comparison demonstrates that Reference UNet better preserves the details of the reference garments, such as patterns, logos, and textures, leading to higher fidelity in the generated images.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative comparison for the reference encoder. Reference UNet better preserves the fine details of the garments.
> </details>



![](https://arxiv.org/html/2412.14168/x4.png)

> 🔼 Figure 7 shows qualitative results of subject-binding attention ablation study. The first row displays the input garments and densepose map. The second row presents results using convolution in layer, without subject-binding. The third row shows results of Bind(1). The fourth and fifth rows present results using Bind(1,2,3), the full model proposed, and Bind(1) which modifies self-attention only in lowest resolution UNet blocks, respectively. The red boxes in the second and third rows highlight regions with artifacts/mistakes, like blurry textures and unnatural fusion between garments and human body. This ablation study shows Bind(1,2,3) produces the best results, preserving both garment details and natural compositions.
> <details>
> <summary>read the caption</summary>
> Figure 7: Qualitative ablation study on subject-binding attention. Bind(1) means only modifying the self-attention modules of UNet blocks with the smallest resolution. Conv-in refers to injecting the mask map through the Convolution-in layer of the reference UNet. We highlight mistakes in rows 2-3 using red boxes.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Methods | SSIM ↑ | FID ↓ | KID ↓ | LPIPS ↓ | FID ↓ | KID ↓ |
|---|---|---|---|---|---|---| 
| DCI-VTON [10] | 0.8620 | 9.408 | 4.547 | 0.0606 | 12.531 | 5.251 |
| StableVITON [15] | 0.8543 | 6.439 | 0.942 | 0.0905 | 11.054 | 3.914 |
| StableGarment [30] | 0.8029 | 15.567 | 8.519 | 0.1042 | 17.115 | 8.851 |
| MV-VTON [29] | 0.8083 | 15.442 | 7.501 | 0.1171 | 17.900 | 8.861 |
| GP-VTON [32] | 0.8701 | 8.726 | 3.944 | **0.0585** | 11.844 | 4.310 |
| LaDI-VTON [21] | 0.8603 | 11.386 | 7.248 | 0.0733 | 14.648 | 8.754 |
| OOTDiffusion [33] | 0.8187 | 9.305 | 4.086 | 0.0876 | 12.408 | 4.689 |
| **Ours** | **0.8771** | **5.842** | **0.906** | 0.0727 | **9.205** | **1.3606** |
{{< /table-caption >}}
> 🔼 Quantitative comparison of standard virtual try-on methods on the VITON-HD dataset, evaluating performance metrics like SSIM, FID, KID, and LPIPS under paired and unpaired settings.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative comparison for the standard virtual try-on task on the VITON-HD test dataset.
> </details>

{{< table-caption >}}
| Method | CLIP-I↑ | DINO↑ | CLIP-T↑ |
|---|---|---|---| 
| DINOv2 Embeddings | 76.80 | 38.22 | 26.17 |
| ControlNet | 75.94 | 33.47 | 27.10 |
| Reference UNet | **77.30** | **39.39** | **27.74** |{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different appearance encoders for preserving details of reference garments. The table includes three different methods including DINOv2 embeddings, ControlNet and Reference UNet.  Each method is evaluated by CLIP-I, DINO, and CLIP-T.  CLIP-I and DINO measure the similarity between generated and reference garments, while CLIP-T measures text-image similarity.  The results show that Reference UNet outperforms the other two methods in all metrics.
> <details>
> <summary>read the caption</summary>
> Table 3: Quantitative study for the reference UNet. We compare with other options for the appearance encoders like DINOv2 and ControlNet. Reference UNet shows the best performance.
> </details>

{{< table-caption >}}
| Method | CLIP-I ↑ | DINO ↑ | CLIP-T ↑ | Quality ↑ | Fidelity ↑ |
|---|---|---|---|---|---| 
| w/o Binding | 77.30 | 39.39 | 27.74 | 84 | 74 |
| Conv-in | 77.60 | 39.39 | 27.86 | 90 | 122 |
| Bind(1) | 77.20 | 39.42 | **28.10** | **169** | 95 |
| Bind(1,2,3) | **77.60** | **40.11** | 27.71 | 140 | **192** |{{< /table-caption >}}
> 🔼 This table presents the ablation study results for subject-binding attention, a key component of FashionComposer. Subject-binding attention links visual features of garments with corresponding text descriptions to better distinguish different items.  The table compares variations of subject-binding attention. 'Bind(1,2,3)' applies the attention mechanism to all UNet blocks, while 'Bind(1)' applies it only to the blocks with the smallest resolution. 'Conv-in' refers to another approach where text embeddings are injected through the convolution layer of the reference UNet instead. The metrics used are CLIP-I (image similarity), DINO (image similarity), CLIP-T (text-image similarity), Quality (based on a user study), and Fidelity (based on a user study).  The results suggest that applying subject-binding attention to all UNet blocks achieves the best balance between image similarity and text alignment, with higher scores in both quality and fidelity assessments from users.
> <details>
> <summary>read the caption</summary>
> Table 4: Quantitative study for subject-binding attention. Bind(1) means only augmenting the self-attention modules of the UNet down and up blocks with the smallest resolution. Conv-in refers to injecting the text embeddings through the Convolution-in layer of the reference UNet.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.14168/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14168/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14168/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14168/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14168/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14168/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14168/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14168/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14168/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14168/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}