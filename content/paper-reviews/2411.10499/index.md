---
title: "FitDiT: Advancing the Authentic Garment Details for High-fidelity Virtual Try-on"
summary: "FitDiT boosts virtual try-on realism by enhancing garment details via Diffusion Transformers, improving texture and size accuracy for high-fidelity virtual fashion."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Tencent",]
showSummary: true
date: 2024-11-15
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2411.10499 {{< /keyword >}}
{{< keyword icon="writer" >}} Boyuan Jiang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-11-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2411.10499" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2411.10499" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/fitdit-advancing-the-authentic-garment" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2411.10499/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current image-based virtual try-on systems struggle with accurately rendering garment textures and ensuring proper sizing across diverse scenarios, impacting the realism of virtual shopping experiences.  Existing approaches often fail to maintain fine details like stripes or patterns, and struggle with size-aware fitting, particularly in cross-category try-ons (e.g., trying on a dress when the model is wearing a top and bottom). This lack of realism limits the effectiveness and user experience of virtual try-on technologies.

To address these challenges, the researchers propose FitDiT, a novel garment perception enhancement technique. **FitDiT leverages Diffusion Transformers (DiT)**, allocating more attention to high-resolution features to capture intricate details.  **A garment texture extractor further refines garment features**, improving texture-aware maintenance.  **A dilated-relaxed mask strategy** addresses size-aware fitting issues by preventing garment leakage.  Extensive evaluations demonstrate FitDiT's superiority over existing methods in both qualitative and quantitative aspects, producing photorealistic results with improved inference speed.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} FitDiT, a novel garment perception enhancement technique, achieves state-of-the-art performance in virtual try-on. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The use of Diffusion Transformers with customized loss functions (frequency-spectra distance and dilated-relaxed mask) significantly improves texture and size accuracy. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} FitDiT's efficient design enables high-fidelity virtual try-on with competitive inference times. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it significantly advances high-fidelity virtual try-on, a crucial technology for e-commerce.  **FitDiT's improvements in texture and size-aware fitting address limitations of existing methods**, paving the way for more realistic virtual shopping experiences. The use of Diffusion Transformers and novel loss functions provides a strong foundation for future research in this active area. The public release of code and datasets further enhances its impact.

------
#### Visual Insights



![](https://arxiv.org/html/2411.10499/x2.png)

> 🔼 Figure 1 showcases the superior performance of the FitDiT model in virtual try-on scenarios. It highlights the model's ability to accurately reproduce fine garment details, such as textures and patterns, while maintaining correct garment sizing across different body types and clothing styles.  This demonstrates FitDiT's effectiveness in overcoming common challenges in virtual try-on, namely preserving texture quality and achieving accurate size-aware fitting.
> <details>
> <summary>read the caption</summary>
> Figure 1: FitDiT demonstrates exceptional performance in virtual try-on, addressing challenges related to texture-aware preservation and size-aware fitting across various scenarios.
> </details>





{{< table-caption >}}
| Methods | DressCode Paired SSIM ↑ | DressCode Paired LPIPS ↓ | DressCode Paired FID ↓ | DressCode Paired KID ↓ | DressCode Unpaired FID ↓ | DressCode Unpaired KID ↓ | VITON-HD Paired SSIM ↑ | VITON-HD Paired LPIPS ↓ | VITON-HD Paired FID ↓ | VITON-HD Paired KID ↓ | VITON-HD Unpaired FID ↓ | VITON-HD Unpaired KID ↓ |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| LaDI-VTON (2023) | 0.9025 | 0.0719 | 4.8636 | 1.5580 | 6.8421 | 2.3345 | 0.8763 | 0.0911 | 6.6044 | 1.0672 | 9.4095 | 1.6866 |
| StableVTON (2024) | - | - | - | - | - | - | 0.8665 | 0.0835 | 6.8581 | 1.2553 | 9.5868 | 1.4508 |
| IDM-VTON (2024) | 0.9228 | 0.0478 | 3.8001 | 1.2012 | 5.6159 | 1.5536 | 0.8806 | 0.0789 | 6.3381 | 1.3224 | 9.6114 | 1.6387 |
| OOTDiffusion (2024) | 0.8975 | 0.0725 | 3.9497 | 0.7198 | 6.7019 | 1.8630 | 0.8513 | 0.0964 | 6.5186 | 0.8961 | 9.6733 | 1.2061 |
| CatVTON (2024) | 0.9011 | 0.0705 | 3.2755 | 0.6696 | 5.4220 | 1.5490 | 0.8694 | 0.0970 | 6.1394 | 0.9639 | 9.1434 | 1.2666 |
| FitDiT (Ours) | **0.9259** | **0.0431** | **2.6383** | **0.4990** | **4.7324** | **0.9011** | **0.8985** | **0.0661** | **4.7309** | **0.1895** | **8.2042** | **0.3421** |{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of different virtual try-on methods on the VITON-HD and DressCode datasets.  The evaluation metrics used are SSIM (Structural Similarity Index), LPIPS (Learned Perceptual Image Patch Similarity), FID (Fréchet Inception Distance), and KID (Kernel Inception Distance).  Results are shown for both 'paired' settings (where the generated clothing matches the input garment) and 'unpaired' settings (where the generated clothing differs from the input). This allows for a comprehensive assessment of the models' ability to generate realistic and accurate virtual try-ons under various conditions.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative results on VITON-HD and DressCode datasets. We compare the metrics under both paired (model’s clothing is the same as the given cloth image) and unpaired settings (model’s clothing differs) with other methods.
> </details>





### In-depth insights


#### DiT for Try-on
The application of Diffusion Transformers (DiT) to virtual try-on presents a **significant advancement** over traditional U-Net based approaches.  DiT's architecture, with its focus on transformer blocks and attention mechanisms, allows for more effective capture and manipulation of high-resolution garment details, crucial for realistic virtual try-on. This is particularly evident in handling complex textures like stripes, patterns, and text where U-Net models often struggle.  The **ability to allocate more attention to high-resolution features** is a key advantage, leading to superior texture preservation and more authentic garment rendering.  Furthermore, the use of DiT enables innovations like frequency-domain learning, refining the generated images' high-frequency details for improved realism.  The results show that DiT-based virtual try-on models produce significantly better-fitting, more detailed, and photorealistic results than their U-Net counterparts, marking a noteworthy step towards the next generation of virtual try-on technology.

#### Texture Enhancement
The concept of 'Texture Enhancement' in the context of virtual try-on is crucial for realism.  The paper highlights the challenges of preserving fine garment details like stripes, patterns, and text during the image generation process.  **Existing methods often struggle with texture-aware maintenance**, leading to blurry or unrealistic results.  Therefore, enhancing texture fidelity is a key research focus.  The authors address this by using a **garment texture extractor** that incorporates garment priors evolution. This technique fine-tunes the model to better capture intricate details.  Furthermore, a **frequency-domain learning approach** is introduced, utilizing a frequency distance loss to refine high-frequency components. This helps maintain the sharp details and authenticity of the textures.  **Combining these approaches appears to significantly improve texture quality**, addressing a major limitation of previous virtual try-on systems and contributing to more realistic and convincing virtual try-on results.

#### Mask Strategy
The effectiveness of a virtual try-on system significantly hinges on its ability to accurately and realistically place garments onto a person's image.  This is where the 'mask strategy' plays a crucial role.  A well-designed mask accurately delineates the area where the garment should be superimposed, preventing the garment from spilling over onto other parts of the person's body or the background.  **The paper's innovation lies in moving beyond traditional, static masks and employing a 'dilated-relaxed mask strategy'.**  This dynamic approach adapts to the garment's length and shape, avoiding common issues such as the garment's length not matching the person's body or the garment stretching unnaturally. The relaxation allows for some flexibility, making the generated try-on more natural and preventing artificial clipping or distortion. **This approach is particularly valuable when handling cross-category or size-mismatched try-ons**, where a fixed mask would lead to poor results.  By enabling the model to learn the optimal mask size and shape during training, the 'dilated-relaxed mask strategy' contributes significantly to the overall quality and realism of the virtual try-on images, demonstrating a thoughtful and sophisticated solution to a challenging problem.

#### Ablation Study
An ablation study systematically evaluates the contribution of individual components within a model.  In this virtual try-on research, such a study would likely dissect the impact of key features: **dilated-relaxed masking**, showing how it improves garment fitting by adapting to variable garment lengths and preventing shape leakage; **frequency learning**, assessing the enhancement of fine details and textures in generated images by incorporating frequency-domain information; and **garment priors evolution**, demonstrating the effectiveness of fine-tuning the model with garment-specific data, leading to better texture preservation and overall realism.  The results would quantify the effect of each component, individually and in combination, providing **evidence for their necessity and impact on the model's performance**.  Furthermore, the ablation study helps in understanding the interaction between these components, which is crucial for optimizing the model's architecture. By demonstrating the independent contributions of each component, the study clarifies what is essential and what is not, leading to a more efficient and effective model design.

#### Future of Try-on
The future of virtual try-on hinges on **addressing limitations** of current technologies.  While significant progress has been made in generating realistic images, challenges remain in accurately representing diverse body types, fabric textures, and garment drape. Future research should focus on **improving the fidelity** of generated images through advanced modeling techniques like incorporating physics-based simulations for realistic draping and handling complex interactions between clothing and the body. **More diverse datasets** representing a broader spectrum of body shapes, skin tones, and clothing styles are essential for training robust and inclusive models.  Furthermore, **integration with AR/VR technologies** could offer immersive and interactive experiences, enabling users to virtually try on clothes from various angles and in different settings.  A move towards **personalization** through AI-powered recommendations, sizing assistance, and style advice will enhance the shopping experience. Finally, **seamless integration with existing e-commerce platforms** will be crucial for widespread adoption and usability.  The ultimate goal is a fully realistic and personalized virtual try-on experience, making online shopping more intuitive and convenient.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2411.10499/x3.png)

> 🔼 FitDiT uses a two-stage training process.  The first stage, Garment Priors Evolution, refines the GarmentDiT model to better extract clothing features. The second stage customizes the DiT blocks within the model. This customization involves three key steps: structure slimming (reducing model complexity), garment condition modulation (adapting the model to different garment types), and high-resolution garment feature injection (enhancing fine details). The final model, DenoisingDiT, is then trained using both a frequency loss (to improve high-frequency details like textures and patterns) and a standard denoising loss.
> <details>
> <summary>read the caption</summary>
> Figure 2: FitDiT employs a two-stage training strategy. In the first stage, Garment Priors Evolution is utilized to fine-tune GarmentDiT for enhanced clothing feature extraction. In the second stage, we customize the DiT blocks through structure slimming, garment condition modulation, and high-resolution garment feature injection, resulting in DenoisingDiT for the try-on. DenoisingDiT is trained jointly using frequency loss and denoising loss.
> </details>



![](https://arxiv.org/html/2411.10499/x4.png)

> 🔼 Figure 3 illustrates the difference between conventional approaches and FitDiT in handling the inpainting mask for virtual try-on. Traditional methods often use a strict mask, leading to inaccurate garment shapes by filling the entire masked area.  In contrast, FitDiT employs a 'dilated-relaxed mask' strategy. This allows for more accurate garment shape restoration by adapting the mask's size and position to fit the garment, preventing the unnatural effect of the garment overflowing the boundaries of the intended area.  This strategy is particularly beneficial for cross-category try-ons where garment sizes and shapes differ significantly.
> <details>
> <summary>read the caption</summary>
> Figure 3: Previous works tend to fill the entire inpainting area due to a strict mask strategy. In contrast, FitDiT can accurately restore the shape of the garment with the dilated-relaxed mask strategy.
> </details>



![](https://arxiv.org/html/2411.10499/x5.png)

> 🔼 Figure 4 visualizes the differences in frequency domain between real garment images and those generated by various virtual try-on algorithms.  A Discrete Fourier Transform (DFT) is applied to both real and generated images to convert them from spatial domain to frequency domain. The resulting frequency spectrums are then compared, revealing the gaps or discrepancies between real and synthesized images. The visualization highlights how well each algorithm captures high-frequency details, such as fine textures and patterns, which are crucial for realistic garment rendering. Larger gaps indicate a poorer performance in terms of detail preservation.
> <details>
> <summary>read the caption</summary>
> Figure 4: Frequency domain gaps between the real and the generated images by different algorithms.
> </details>



![](https://arxiv.org/html/2411.10499/x6.png)

> 🔼 This figure shows a bar chart comparing the proportion of model parameters allocated to different attention resolutions across various diffusion models.  It highlights the varying emphasis different models place on high-resolution features (important for detail preservation) versus low-resolution features.  The models compared include SD v1.5, SDXL, SD3, and FitDiT.  The x-axis represents different attention resolutions, and the y-axis shows the percentage of parameters assigned to each resolution.
> <details>
> <summary>read the caption</summary>
> Figure 5: Attention-related parameter ratios at various resolutions.
> </details>



![](https://arxiv.org/html/2411.10499/x7.png)

> 🔼 Figure 6 presents a qualitative comparison of virtual try-on results on the Complex Virtual Dressing Dataset (CVDD).  It showcases the performance of FitDiT and other state-of-the-art methods on three challenging scenarios: garments with complex textures (e.g., intricate patterns and text), cross-category try-ons (applying garments designed for different body parts to the same person), and in-the-wild try-ons (applying garments to images of people in various unconstrained settings). The figure visually demonstrates FitDiT's ability to generate more realistic and accurate try-on results compared to other models, particularly in handling complex textures and mismatched garment types.
> <details>
> <summary>read the caption</summary>
> Figure 6: Visual results on CVDD with complex garment texture, cross-categories, and in-the-wild try-on. Best viewed when zoomed in.
> </details>



![](https://arxiv.org/html/2411.10499/x8.png)

> 🔼 Figure 7 presents a qualitative comparison of virtual try-on results on the DressCode and VITON-HD datasets.  The figure displays pairs of input images (person and garment) followed by the virtual try-on results generated by FitDiT and several other state-of-the-art methods (CatVTON, OOTDiffusion, IDM, and Kolors). This allows for a visual assessment of the different methods' abilities to generate realistic and accurate virtual try-ons, considering various garment types, styles, and poses. The results showcase FitDiT's superior performance in terms of fidelity, detail preservation, and overall visual quality.  For optimal viewing, zooming in is recommended.
> <details>
> <summary>read the caption</summary>
> Figure 7: Visual results on DressCode and VTON-HD test set. Best viewed when zoomed in.
> </details>



![](https://arxiv.org/html/2411.10499/x9.png)

> 🔼 Figure 8 presents a comparison of virtual try-on results generated using different masking strategies.  It demonstrates the improved garment fitting achieved by FitDiT's dilated-relaxed mask compared to a standard, strict mask, particularly in cross-category try-on scenarios where the garment and person image may have size mismatches.  The dilated-relaxed mask allows for more accurate shape prediction of the garment and prevents unrealistic covering of the entire masked area.
> <details>
> <summary>read the caption</summary>
> Figure 8: Visual validation of the role of dilated-relaxed mask.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Methods | Paired SSIM ↑ | Paired LPIPS ↓ | Paired FID ↓ | Paired KID ↓ | Unpaired FID ↓ | Unpaired KID ↓ |
|---|---|---|---|---|---|---|
| LaDI-VTON (2023) | 0.8431 | 0.1432 | 26.4509 | 1.024 | 39.4821 | 3.0239 |
| IDM-VTON (2024) | 0.8529 | 0.1399 | 24.9510 | 0.7931 | 35.8422 | 1.1313 |
| OOTDiffusion (2024) | 0.8397 | 0.1485 | 26.2757 | 1.1137 | 40.7213 | 4.3277 |
| CatVTON (2024) | 0.8457 | 0.1494 | 27.7435 | 1.7160 | 38.7899 | 3.4777 |
| FitDiT (Ours) | **0.8636** | **0.1130** | **20.7543** | **0.1602** | **33.4937** | **0.7434** |{{< /table-caption >}}
> 🔼 Quantitative results on the Complex Virtual Dressing Dataset (CVDD) evaluating virtual try-on performance.  Metrics include SSIM (structural similarity index), LPIPS (Learned Perceptual Image Patch Similarity), FID (Fréchet Inception Distance), and KID (Kernel Inception Distance) for both paired (ground truth garment matches generated image) and unpaired (ground truth garment differs from generated image) settings.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative results on CVDD.
> </details>

{{< table-caption >}}
| Method | SSIM ↑ | LPIPS ↓ | FID ↓ | KID ↓ |
|---|---|---|---|---|
| - w/o Frequency loss | 0.8593 | 0.1239 | 22.6325 | 0.2960 |
| - w/o garment priors evolution | 0.8578 | 0.1269 | 23.1786 | 0.5214 |
| Full FitDiT | **0.8636** | **0.1130** | **20.7543** | **0.1602** |{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies conducted on the Complex Virtual Dressing Dataset (CVDD).  It shows the impact of removing key components of the FitDiT model, specifically the frequency loss and the garment prior evolution process, on the model's performance.  The results are evaluated using SSIM (structural similarity index), LPIPS (Learned Perceptual Image Patch Similarity), FID (Fréchet Inception Distance), and KID (Kernel Inception Distance).  By comparing the performance of the full model with these ablated versions, researchers can determine the contribution of each component to the model's overall accuracy and effectiveness in generating high-fidelity virtual try-on images.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study results on CVDD.
> </details>

{{< table-caption >}}
| Method | StableVITON | OOTDiffusion | IDM | CatVTON | FitDiT |
|---|---|---|---|---|---| 
| Inference time (s) | 6.23 | 8.51 | 9.99 | 7.87 | **4.57** |
| GPU memory (M) | 10,978 | 8,962 | 19,504 | **8,384** | 19,550 |{{< /table-caption >}}
> 🔼 This table presents a computational analysis comparing different virtual try-on methods.  It shows the inference time (in seconds) and GPU memory usage (in MB) for each method: Stable VITON, OOTDiffusion, IDM, CatVTON, and FitDiT. This comparison highlights the efficiency and resource requirements of each approach, offering insights into their practical applicability and scalability.
> <details>
> <summary>read the caption</summary>
> Table 4: Computational analysis of different methods.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2411.10499/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10499/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10499/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10499/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10499/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10499/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10499/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10499/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10499/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10499/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10499/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}