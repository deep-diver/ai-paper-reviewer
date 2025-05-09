---
title: "3DV-TON: Textured 3D-Guided Consistent Video Try-on via Diffusion Models"
summary: "3DV-TON: Achieves realistic & consistent video try-on via novel textured 3D guidance using diffusion models."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 DAMO Academy, Alibaba Group",]
showSummary: true
date: 2025-04-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.17414 {{< /keyword >}}
{{< keyword icon="writer" >}} Min Wei et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.17414" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.17414" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.17414/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Video try-on aims to change a person's clothing in a video, but existing methods struggle with complex clothing patterns and diverse poses, often sacrificing motion coherence for appearance fidelity. This leads to inconsistencies and artifacts in the generated videos, limiting their practical use. To address this issue, researchers need novel approaches that can ensure both visual quality and temporal consistency.



This paper introduces a novel framework that uses generated animatable textured 3D meshes as explicit guidance, which allows direct reference to consistent garment texture movements throughout video sequences. It features a dynamic 3D guidance pipeline and a robust rectangular masking strategy to prevent clothing information leakage.  The authors also introduce a new high-resolution benchmark dataset with diverse clothing types and scenarios. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces 3DV-TON: A diffusion-based video try-on framework using textured 3D guidance to alleviate motion incoherence. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Presents a 3D guidance pipeline for generating animatable textured 3D meshes, ensuring consistent texture guidance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Establishes HR-VVT: A high-resolution video try-on benchmark for better evaluation of recent works. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel approach to video try-on, addressing key challenges in the field. By using **3D-aware guidance**, it sets a new standard for visual quality and consistency. This opens new avenues for research of video try-on and virtual reality.

------
#### Visual Insights



![](https://arxiv.org/html/2504.17414/x1.png)

> 🔼 This figure showcases several examples of video try-on results generated using the 3DV-TON method.  The results demonstrate the model's ability to convincingly replace the clothing worn by individuals in the input videos with various target garments.  Notice the diversity of clothing types (e.g., dresses, shirts, skirts) and body poses across the examples.  Importantly, 3DV-TON successfully maintains realistic clothing details and consistent texture motion, even in complex scenarios with significant pose changes and dynamic movement, overcoming limitations of prior methods.
> <details>
> <summary>read the caption</summary>
> Figure 1: Try-on videos generated by 3DV-TON. Our method can handle various types of clothing and body poses, while accurately restoring clothing details and maintaining consistent texture motion.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.F4.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.F4.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F4.1.1.1" style="padding-left:1.4pt;padding-right:1.4pt;">
<img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="657" id="S3.F4.1.1.1.g1" src="extracted/6386064/fig/vivid_dress.png" width="598"/>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of different virtual try-on methods on the ViViD dataset.  The metrics used assess the quality of the generated try-on results, including structural similarity (SSIM), learned perceptual image patch similarity (LPIPS), and two versions of the Video Frechet Inception Distance (VFID) - one using a ResNet-50 backbone and another using a more recent RexNet backbone.  Lower LPIPS scores and higher SSIM scores indicate better visual quality. Lower VFID scores imply better temporal consistency in the generated video. The table highlights the superior performance of the proposed 3DV-TON method, especially when using the same mask as the ViViD baseline. The asterisk (*) denotes results where 3DV-TON used the same mask as the ViViD method for fair comparison.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparison on the ViViD dataset. ∗ indicates our method using the same mask with ViViD [13].
> </details>





### In-depth insights


#### Textured 3D TON
The concept of "Textured 3D TON" (Try-On Network) represents a significant advancement in virtual try-on technology, explicitly integrating **3D garment texture information** for enhanced realism and consistency. Unlike traditional methods relying on 2D warping or purely geometric 3D priors, this approach leverages detailed surface textures extracted from garment images and mapped onto animated 3D human models. This aims to address limitations in existing virtual try-on systems, which often struggle with clothing deformation, complex poses, and inconsistent texture representation across video sequences. By incorporating texture directly into the 3D representation, the system can **maintain garment identity and visual fidelity** throughout a video, improving the overall quality and user experience. **This guidance** helps the diffusion model generate high-quality, temporally coherent try-on results, even with complex poses and clothing patterns.

#### HR-VVT Dataset
The HR-VVT dataset addresses limitations of prior video try-on datasets. **It features higher resolution videos (~720p)** and diverse scenarios with various clothing types (upper-body, lower-body, dresses) and complex motions. **The dataset includes 130 videos** sourced from e-commerce platforms and reserved for academic use. **Privacy is maintained by excluding facial regions from inpainting**. HR-VVT enables a more accurate assessment of video try-on methods compared to datasets with simpler scenes or lower resolutions. The construction addresses the limitations of VVT which contains only upper-body clothing with low resolution, and ViViD which has limited scenarios. This allows for more thorough evaluation of video try-on methods.

#### Diffusion Model
From the context, diffusion models emerge as a pivotal technique in addressing the challenges of video try-on. Traditional methods relying on warping operations often falter in maintaining temporal coherence, especially with complex clothing deformations. The text positions diffusion models as a superior alternative, enabling high-fidelity and temporally consistent results. **The pre-trained models** are harnessed to circumvent limitations of warping modules, with UNet architectures facilitating garment feature extraction without explicit warping. **Diffusion Transformers** are noted for their enhanced generative scalability. However, a critical analysis reveals a common issue: models prioritize appearance fidelity over motion coherence. **Explicit frame-level 3D guidance** is introduced to combat this, ensuring spatiotemporal consistency across diverse poses and viewpoints. The success hinges on balancing visual quality and motion artifacts, addressing a fundamental problem in video try-on research.

#### Adaptive Masking
Adaptive masking is a crucial element in video try-on, aiming to isolate garment regions while minimizing artifacts. **The goal is precise segmentation**, differentiating the target clothing from the human body and background. An ideal adaptive masking strategy would dynamically adjust the mask based on the person's pose, clothing deformation, and occlusions. **The process involves using segmentation networks** and bounding boxes from mask regions, also using human estimation models to specifically address anatomical regions (hands and face) while preserving the integrity of the body. This strategy is key **to prevent garment transfer failures** that would be caused by leaking clothing. The challenges lie in ensuring that the masks accurately reflect the complex and changing shapes of clothing, and that **the masking process itself doesn't introduce new visual artifacts**. Adaptive masking can also be employed to control the level of guidance from reference images, weighting the influence of clothing or try-on images based on local image conditions. 

#### Motion Fidelity
The heading "Motion Fidelity" suggests a critical aspect of video processing, particularly in tasks like video try-on or animation. It speaks to the **accuracy and consistency of movement** in the generated or modified video content. Achieving high motion fidelity is vital for creating **realistic and believable video sequences**. Factors impacting motion fidelity include preserving the natural flow of movements, avoiding jitter or unnatural distortions, and maintaining temporal coherence across frames. The methods to achieve it can involve using **3D guidance** to constrain motion, or employing advanced **temporal attention mechanisms** to ensure smoothness. Ultimately, achieving high motion fidelity means producing videos where the movements of subjects and objects feel authentic and are free of distracting artifacts.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.17414/extracted/6386064/fig/3d.png)

> 🔼 Figure 2 shows the creation of textured 3D guidance for the video try-on process.  First, image try-on is performed to generate an initial image with the target clothing on the person.  This image is then used to reconstruct a 3D mesh of the person wearing the clothes. The clothing texture from the try-on image is applied to this 3D mesh. Finally, the mesh is animated to match the movements of the person in the video, creating a dynamic 3D representation of the clothing that can be used to guide the video generation process and ensure consistent texture motion throughout the video.
> <details>
> <summary>read the caption</summary>
> Figure 2: Textured 3D guidance. We construct the textured 3D guidance based on image try-on results, then animate the mesh after pasting the texture, providing a consistent texture motion reference on the appearance level.
> </details>



![](https://arxiv.org/html/2504.17414/x2.png)

> 🔼 Figure 3 provides a detailed overview of the 3DV-TON framework.  The process begins with an input video. A 3D guidance pipeline selects a keyframe (I) from the video. This keyframe undergoes image try-on processing to generate a textured 3D model which is then animated to match the video's motion (V).  A feature extractor processes the original clothing image (C) and the generated try-on images from each frame (Ct),  fusing these features within the denoising UNet via self-attention mechanisms to generate the final video try-on result. The figure visually represents each stage of this pipeline, highlighting the flow of data and the key components involved.
> <details>
> <summary>read the caption</summary>
> Figure 3: The overview of 3DV-TON. Given a video, we first use our 3D guidance pipeline to select a frame I𝐼Iitalic_I adaptively, then reconstruct a textured 3D guidance and animate it align with the original video, i.e. V𝑉Vitalic_V. We employ a guidance feature extractor for the clothing image C𝐶Citalic_C and the try-on images Ctsubscript𝐶𝑡C_{t}italic_C start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT, and perform feature fusion using the self-attentions in the denoising UNet.
> </details>



![](https://arxiv.org/html/2504.17414/x3.png)

> 🔼 This figure displays a qualitative comparison of dress try-on results on the ViViD dataset.  It showcases the input image, the target clothing item, and the try-on results generated by three different methods: ViViD, CatV2TON, and 3DV-TON (the authors' method). This allows for a visual assessment of each method's ability to accurately and realistically place the clothing onto the person in the image, considering factors like texture, shape, and overall consistency.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative comparison for dress try-on on the ViViD dataset.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.F5.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.F5.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.1.1.1" style="padding-left:1.4pt;padding-right:1.4pt;">
<img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="660" id="S4.F5.1.1.1.g1" src="extracted/6386064/fig/vivid_upper.png" width="598"/>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different video virtual try-on methods on the HR-VVT benchmark dataset.  The metrics used are SSIM (structural similarity index), LPIPS (Learned Perceptual Image Patch Similarity), VFIDI3D (Video Fréchet Inception Distance using I3D), and VFIDRexNext (Video Fréchet Inception Distance using 3D-ResNeXt).  Both paired and unpaired settings are evaluated.  The best-performing method for each metric is shown in bold, and the second-best is underlined.  This allows for a direct comparison of the performance of various methods on the task of generating high-quality and temporally consistent video try-on results.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative comparison on HR-VVT benchmark.  Best results are highlighted in bold, the second are underlined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.F6.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.F6.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F6.1.1.1" style="padding-left:1.4pt;padding-right:1.4pt;">
<img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="663" id="S4.F6.1.1.1.g1" src="extracted/6386064/fig/vivid_lower.png" width="598"/>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a user preference study comparing the performance of three different video virtual try-on methods: ViViD, CatV2TON, and the proposed 3DV-TON.  The study assessed three aspects of the generated videos: fidelity (accuracy of garment representation), consistency (temporal coherence throughout the video), and overall quality.  Results are shown for both the HR-VVT and ViViD datasets, allowing for comparison across different datasets and showcasing the relative strengths and weaknesses of each method in different aspects of video try-on generation.
> <details>
> <summary>read the caption</summary>
> Table 3: User preference rate on the HR-VVT benchmark and ViViD dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.F7.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.F7.1.1">
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.F7.1.1.1" style="padding-left:1.4pt;padding-right:1.4pt;">
<img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="503" id="S4.F7.1.1.1.g1" src="extracted/6386064/fig/taobao_dress.png" width="598"/>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the quantitative results of ablation studies on the impact of 3D guidance in the 3DV-TON model.  It shows the improvements in SSIM (structural similarity index), LPIPS (learned perceptual image patch similarity), and VFID (video Fréchet Inception Distance) metrics when using SMPL (Skinned Multi-Person Linear Model) and textured 3D guidance, demonstrating the effectiveness of the proposed approach.
> <details>
> <summary>read the caption</summary>
> Table 4: Quantitative ablations for the 3D guidance.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.17414/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17414/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17414/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17414/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17414/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17414/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17414/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17414/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17414/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17414/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17414/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17414/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17414/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17414/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17414/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17414/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17414/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}