---
title: "Difix3D+: Improving 3D Reconstructions with Single-Step Diffusion Models"
summary: "DIFIX3D+ improves 3D reconstructions by reducing artifacts via single-step diffusion models, enhancing novel-view synthesis quality and consistency."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 NVIDIA",]
showSummary: true
date: 2025-03-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.01774 {{< /keyword >}}
{{< keyword icon="writer" >}} Jay Zhangjie Wu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.01774" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.01774" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.01774/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Recent neural rendering methods like NeRF and 3D Gaussian Splatting (3DGS) have revolutionized 3D reconstruction and novel-view synthesis. However, generating photorealistic renderings from novel viewpoints remains challenging due to persistent artifacts, especially in under-constrained regions. Existing methods struggle with issues like spurious geometry, missing regions, and inconsistencies, which limit their applicability in real-world settings. Large 2D generative models could help, but integrating them efficiently into 3D reconstruction pipelines is still an open problem.



DIFIX3D+ addresses these issues with a novel pipeline that uses single-step diffusion models to enhance 3D reconstruction and novel-view synthesis. The core of this approach is DIFIX, a single-step image diffusion model trained to enhance and remove artifacts in rendered novel views. DIFIX acts as a neural enhancer during both the reconstruction phase and at inference time, improving overall 3D representation quality and effectively removing residual artifacts. By progressively refining the 3D representation and using a fast single-step diffusion model, DIFIX3D+ achieves significant improvements in visual quality and 3D consistency.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} DIFIX3D+ enhances 3D reconstruction by leveraging single-step diffusion models to correct artifacts in rendered novel views. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method uses a progressive 3D update pipeline to ensure multi-view consistency and high-quality renderings. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The model achieves state-of-the-art results, improving PSNR and FID scores significantly while maintaining 3D consistency. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for its innovative approach to **enhancing 3D reconstruction using single-step diffusion models**, offering a practical solution to common artifacts. The method's compatibility with both NeRF and 3DGS, along with its real-time processing capability, makes it highly valuable. It paves the way for future research in integrating advanced generative models to improve the visual fidelity and consistency of 3D models.

------
#### Visual Insights



![](https://arxiv.org/html/2503.01774/x3.png)

> 🔼 Figure 1 showcases the performance of Difix3D+ on various scenes. The top row presents in-the-wild scenes, while the bottom row displays driving scenes.  It highlights how Difix3D+ addresses challenges faced by other novel-view synthesis methods that often struggle with sparse input data or when generating views significantly different from the input camera viewpoints.  Difix3D+ leverages 2D generative models to improve the quality of 3D reconstructions.  The model acts as a neural renderer during inference, correcting any inconsistencies. The effectiveness of Difix3D+ is particularly emphasized by its ability to rectify artifacts present in established methods like NeRF and 3DGS.
> <details>
> <summary>read the caption</summary>
> Figure 1: We demonstrate Difix3D+ on both in-the-wild scenes (top) and driving scenes (bottom). Recent Novel-View Synthesis methods struggle in sparse-input settings or when rendering views far from the input camera poses. Difix distills the priors of 2D generative models to enhance reconstruction quality and can further act as a neural-renderer at inference time to mitigate the remaining inconsistencies. Notably, the same model effectively corrects NeRF [37] and 3DGS [20] artifacts.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.F4.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.F4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S4.F4.1.1.1.1"><math alttext="\tau" class="ltx_Math" display="inline" id="S4.F4.1.1.1.1.m1.1"><semantics id="S4.F4.1.1.1.1.m1.1a"><mi id="S4.F4.1.1.1.1.m1.1.1" xref="S4.F4.1.1.1.1.m1.1.1.cmml">τ</mi><annotation-xml encoding="MathML-Content" id="S4.F4.1.1.1.1.m1.1b"><ci id="S4.F4.1.1.1.1.m1.1.1.cmml" xref="S4.F4.1.1.1.1.m1.1.1">𝜏</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.F4.1.1.1.1.m1.1c">\tau</annotation><annotation encoding="application/x-llamapun" id="S4.F4.1.1.1.1.m1.1d">italic_τ</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.F4.1.1.1.2">1000</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.F4.1.1.1.3">800</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.F4.1.1.1.4">600</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.F4.1.1.1.5">400</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.F4.1.1.1.6">200</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.F4.1.1.1.7">10</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.F4.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.F4.1.1.2.1.1">PSNR</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.F4.1.1.2.1.2">12.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.F4.1.1.2.1.3">13.63</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.F4.1.1.2.1.4">15.64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.F4.1.1.2.1.5">17.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.F4.1.1.2.1.6"><span class="ltx_text ltx_font_bold" id="S4.F4.1.1.2.1.6.1">17.73</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.F4.1.1.2.1.7">17.72</td>
</tr>
<tr class="ltx_tr" id="S4.F4.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r" id="S4.F4.1.1.3.2.1">SSIM</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.F4.1.1.3.2.2">0.4521</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.F4.1.1.3.2.3">0.5263</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.F4.1.1.3.2.4">0.6129</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.F4.1.1.3.2.5">0.6618</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.F4.1.1.3.2.6"><span class="ltx_text ltx_font_bold" id="S4.F4.1.1.3.2.6.1">0.6814</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_b" id="S4.F4.1.1.3.2.7">0.6752</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table details the data curation methods used to create a paired dataset for training the DIFIX3D+ model.  The dataset contains images with common artifacts found in novel view synthesis, paired with their corresponding ground truth images.  For the DL3DV dataset, sparse reconstruction and model underfitting were used to generate the artifacts.  For internal Real Driving Scene (RDS) data, cycle reconstruction, cross-referencing, and model underfitting techniques were employed.
> <details>
> <summary>read the caption</summary>
> Table 1: Data curation. We curate a paired dataset featuring common artifacts in novel-view synthesis. For DL3DV scenes [23], we employ sparse reconstruction and model underfitting, while for internal real driving scene (RDS) data, we utilize cycle reconstruction, cross reference, and model underfitting techniques.
> </details>





### In-depth insights


#### Diffusion 3D Fix
The idea of a 'Diffusion 3D Fix' is intriguing, suggesting the use of diffusion models to rectify or enhance 3D reconstructions. This approach likely leverages the powerful generative priors learned by diffusion models to address common issues in 3D, such as **artifacts, incompleteness, or inconsistencies**. The process might involve using the diffusion model to 'inpaint' missing regions, refine noisy surfaces, or ensure multi-view consistency. A key advantage would be the ability to incorporate prior knowledge from large datasets, leading to more plausible and robust 3D models, especially in **challenging scenarios with sparse or noisy input data**. This method could be applied to diverse 3D representations, including neural radiance fields and meshes, and the **efficiency of implementation is a crucial factor**.

#### Progressive Refine
**Progressive refinement** is a crucial technique for enhancing 3D reconstruction, enabling iterative improvements. The process likely involves gradually refining the geometry and texture of the 3D model, leading to enhanced detail and accuracy. This technique combats issues arising from noise or incomplete data, as it allows initial estimates to be refined over multiple iterations. Techniques like **iterative closest point (ICP)** or **bundle adjustment** could be used to align and refine the model. In the context of neural rendering, progressive refinement might involve gradually increasing the resolution of the neural radiance field or employing curriculum learning strategies to improve the model's understanding of the scene. Methods involving the distillation or incorporation of generative priors also benefit, with each iteration boosting the overall model quality.

#### Artifact Removal
The notion of artifact removal in 3D reconstruction and novel view synthesis highlights a critical challenge: achieving visually plausible and geometrically consistent results, especially in areas with limited observational data. **Artifacts can stem from noisy input data, inaccuracies in camera pose estimation, or the inherent ambiguities in learning 3D representations from 2D projections**. Effective artifact removal is essential for creating immersive and realistic experiences. This involves cleaning up spurious geometry, filling missing regions, and reducing blurriness without introducing inconsistencies or compromising overall structural integrity. The success hinges on carefully balancing data-driven reconstruction with incorporating external priors, such as those learned by large-scale generative models. In effect, **artifact removal serves as a crucial step towards bridging the gap between imperfect reconstructions and compelling visual outputs**.

#### Single-Step Speed
The concept of "Single-Step Speed" suggests a focus on **efficient processing**, especially relevant in fields like 3D reconstruction and novel-view synthesis where computational demands are high. It implies a methodology that minimizes iterative refinement, opting instead for a **direct, streamlined approach**. This could involve using advanced models or algorithms that can achieve desired results in a single pass or a minimal number of steps, thereby **reducing latency and computational cost**. The trade-offs might include a need for **more powerful models or specialized hardware** to handle the complexity of single-step processing. Success here hinges on **balancing speed with accuracy and quality** of the generated 3D representations.

#### Consistency?
In 3D reconstruction, **consistency** refers to the agreement between different views or renderings of the same scene. It is essential for a realistic and plausible 3D representation. Inconsistent views lead to visual artifacts, such as ghosting or flickering. **Multi-view consistency** ensures that the rendered images are geometrically and photometrically compatible. Achieving multi-view consistency can be challenging due to noisy input data, occlusions, and limitations in the underlying 3D representation. To address these challenges, researchers often employ techniques such as bundle adjustment, robust losses, and regularization. Some methods query the diffusion model at each training step. To ensure consistency the views are updated progressively.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.01774/x5.png)

> 🔼 The figure illustrates the DIFIX3D+ pipeline, a three-step process for enhancing 3D reconstruction and novel view synthesis.  Step 1 involves rendering novel views from a pre-trained 3D model and using DIFIX (a single-step diffusion model) to remove artifacts and improve their quality.  The camera poses for these novel views are gradually interpolated from reference poses towards target poses. In Step 2, these enhanced views are used to refine the 3D representation. Steps 1 and 2 are iterated to progressively expand the reconstruction, improving the diffusion model's conditioning. Finally, in Step 3, DIFIX is used as a real-time neural enhancer to further improve the quality of rendered novel views.
> <details>
> <summary>read the caption</summary>
> Figure 2: Difix3D+ pipeline. The overall pipeline of the Difix3D+ model involves the following stages: Step 1: Given a pretrained 3D representation, we render novel views and feed them to Difix which acts as a neural enhancer, removing the artifacts and improving the quality of the noisy rendered views (Sec. 4.1). The camera poses selected to render the novel views are obtained through pose interpolation, gradually approaching the target poses from the reference ones. Step 2: The cleaned novel views are distilled back to the 3D representation to improve its quality (Sec. 4.2). Steps 1 and 2 are applied in several iterations to progressively grow the spatial extent of the reconstruction and hence ensure strong conditioning of the diffusion model (Difix3D). Step 3: Difix additional acts as a real-time neural enhancer, further improving the quality of the rendered novel views.
> </details>



![](https://arxiv.org/html/2503.01774/x6.png)

> 🔼 The DIFIX architecture is a U-Net based model that takes a noisy rendered image and reference views as input and outputs an enhanced version of the input image with reduced artifacts.  The model incorporates a cross-view reference mixing layer to maintain consistency between the input image and reference views.  This is achieved by using a frozen VAE encoder and a LoRA fine-tuned decoder, fine-tuned from the SD-Turbo model. Identical reference views are generated but discarded during practice.
> <details>
> <summary>read the caption</summary>
> Figure 3: Difix architecture. Difix takes a noisy rendered image and a reference views as input (left), and outputs an enhanced version of the input image with reduced artifacts (right). Difix also generates identical reference views, which we discard in practice and hence depict transparent. The model architecture consists of a U-Net structure with a cross-view reference mixing layer (Sec. 4.1) to maintain consistency across reference views. Difix is fine-tuned from SD-Turbo, using a frozen VAE encoder and a LoRA fine-tuned decoder.
> </details>



![](https://arxiv.org/html/2503.01774/x7.png)

> 🔼 This figure shows an ablation study on the effect of different noise levels on a single-step denoising diffusion model. The model was fine-tuned on images with artifacts from NeRF and 3DGS. The experiment shows that at high noise levels (τ = 600), the model effectively removes artifacts but modifies image context.  At low noise levels (τ = 10), the model makes minor adjustments and leaves most artifacts intact. The best results were obtained at τ = 200, where the model removes artifacts while preserving image context.
> <details>
> <summary>read the caption</summary>
> Figure 4: Noise level. To validate our hypothesis that the distribution of images with NeRF/3DGS artifacts is similar to the distribution of noisy images used to train SD-Turbo [49], we perform single-step “denoising” at varying noise levels. At higher noise levels (e.g., τ=600𝜏600\tau=600italic_τ = 600), the model effectively removes artifacts but also alters the image context. At lower noise levels (e.g., τ=10𝜏10\tau=10italic_τ = 10), the model makes only minor adjustments, leaving most artifacts intact. τ=200𝜏200\tau=200italic_τ = 200 strikes a good balance, removing artifacts while preserving context, and achieves the highest metrics.
> </details>



![](https://arxiv.org/html/2503.01774/x8.png)

> 🔼 This figure demonstrates the performance of DIFIX3D+ on real-world scenes with challenging conditions.  The top half shows comparisons on held-out scenes from the DL3DV dataset, while the bottom half uses scenes from the Nerfbusters dataset. Both datasets contain examples where existing novel view synthesis methods struggle. Each row shows the ground truth image (GT) followed by results from several state-of-the-art methods (Nerfbusters, GANERF, NeRFLIX, Nerfacto) and finally, the results obtained using the proposed DIFIX3D+ method. The visual comparison highlights DIFIX3D+'s superior ability to remove artifacts and generate more photorealistic novel views.
> <details>
> <summary>read the caption</summary>
> Figure 5: In-the-wild artifact removal. We show comparisons on held-out scenes from the DL3DV dataset [23] (top, above the dashed line) and the Nerfbusters [70] dataset (bottom). Difix3D+ corrects significantly more artifacts that other methods.
> </details>



![](https://arxiv.org/html/2503.01774/x9.png)

> 🔼 Figure 6 presents a qualitative comparison of 3D reconstruction results on the Real Driving Scenes (RDS) dataset.  The model, DIFIX, was trained using 40 distinct scenes and 100,000 image pairs, which were carefully curated to include various common artifacts in 3D reconstruction. The figure showcases the impact of DIFIX on improving the quality of novel view synthesis.  It visually demonstrates the differences in image quality and realism achieved by several models, emphasizing the enhancements provided by the DIFIX method.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative results on the RDS dataset. Difix for RDS was trained on 40 scenes and 100,000 paired data samples.
> </details>



![](https://arxiv.org/html/2503.01774/x10.png)

> 🔼 This figure shows the results of real-time post-render processing using DIFIX3D+.  The pipeline includes an additional neural enhancement step after the initial 3D reconstruction and rendering. This step effectively removes residual artifacts that remain after the main reconstruction process.  The effectiveness of this additional step is demonstrated by comparing the PSNR (Peak Signal-to-Noise Ratio) and LPIPS (Learned Perceptual Image Patch Similarity) scores of the processed images to the original rendered images. Higher PSNR and lower LPIPS values in the processed images indicate improved image quality due to reduced artifacts. The green and red boxes highlight zoomed-in sections of the images, allowing for a more detailed comparison of the artifact removal.
> <details>
> <summary>read the caption</summary>
> Figure 7: Qualitative ablation of real-time post-render processing: Difix3D+ uses an additional neural enhancer step that effectively removes residual artifacts, resulting in higher PSNR and lower LPIPS scores. The images displayed in green or red boxes correspond to zoomed-in views of the bounding boxes drawn in the main images.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.2.1.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.2.1.1.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.2.1.1.1.2">Sparse</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.2.1.1.1.3">Cycle</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.2.1.1.1.4">Cross</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.2.1.1.1.5">Model</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.2.1.2.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S4.T1.2.1.2.1.1"></th>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.2.1.2">Reconstruction</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.2.1.3">Reconstruction</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.2.1.4">Reference</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.2.1.2.1.5">Underfitting</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.2.1.3.2.1">DL3DV <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01774v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.2.1.3.2.2">✓</th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_t" id="S4.T1.2.1.3.2.3"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_t" id="S4.T1.2.1.3.2.4"></th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.2.1.3.2.5">✓</th>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r" id="S4.T1.2.1.4.3.1">Internal RDS</th>
<td class="ltx_td ltx_border_b" id="S4.T1.2.1.4.3.2"></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.2.1.4.3.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.2.1.4.3.4">✓</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T1.2.1.4.3.5">✓</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a quantitative comparison of different novel-view synthesis methods on two benchmark datasets: Nerfbusters and DL3DV.  The methods are evaluated using four metrics: PSNR (Peak Signal-to-Noise Ratio), SSIM (Structural Similarity Index), LPIPS (Learned Perceptual Image Patch Similarity), and FID (Fréchet Inception Distance). Higher PSNR and SSIM values, and lower LPIPS and FID values indicate better performance.  The table highlights the best performing method for each metric in bold, and the second-best method is underlined, allowing for easy identification of top performers and relative comparisons across different techniques.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative comparison on Nerfbusters and DL3DV datasets. The best result is highlighted in bold, and the second-best is underlined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.8.8">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.8.8.9.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T2.8.8.9.1.1"></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="4" id="S4.T2.8.8.9.1.2">Nerfbusters Dataset</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T2.8.8.9.1.3">DL3DV Dataset</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.8.8.8.9">Method</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.1">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.2">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.3">LPIPS<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.3.m1.1a"><mo id="S4.T2.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.m1.1b"><ci id="S4.T2.3.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.4.4.4">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.4.m1.1"><semantics id="S4.T2.4.4.4.4.m1.1a"><mo id="S4.T2.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T2.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.4.m1.1b"><ci id="S4.T2.4.4.4.4.m1.1.1.cmml" xref="S4.T2.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.5">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.5.5.5.5.m1.1"><semantics id="S4.T2.5.5.5.5.m1.1a"><mo id="S4.T2.5.5.5.5.m1.1.1" stretchy="false" xref="S4.T2.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.5.m1.1b"><ci id="S4.T2.5.5.5.5.m1.1.1.cmml" xref="S4.T2.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.6">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.6.6.6.6.m1.1"><semantics id="S4.T2.6.6.6.6.m1.1a"><mo id="S4.T2.6.6.6.6.m1.1.1" stretchy="false" xref="S4.T2.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.6.m1.1b"><ci id="S4.T2.6.6.6.6.m1.1.1.cmml" xref="S4.T2.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.7.7.7">LPIPS<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.7.7.7.7.m1.1"><semantics id="S4.T2.7.7.7.7.m1.1a"><mo id="S4.T2.7.7.7.7.m1.1.1" stretchy="false" xref="S4.T2.7.7.7.7.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.7.7.m1.1b"><ci id="S4.T2.7.7.7.7.m1.1.1.cmml" xref="S4.T2.7.7.7.7.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.7.7.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.7.7.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.8.8.8.8">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.8.8.8.8.m1.1"><semantics id="S4.T2.8.8.8.8.m1.1a"><mo id="S4.T2.8.8.8.8.m1.1.1" stretchy="false" xref="S4.T2.8.8.8.8.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.8.8.8.8.m1.1b"><ci id="S4.T2.8.8.8.8.m1.1.1.cmml" xref="S4.T2.8.8.8.8.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.8.8.8.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.8.8.8.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.10.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.8.8.10.2.1">Nerfbusters <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01774v1#bib.bib70" title=""><span class="ltx_text" style="font-size:90%;">70</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.10.2.2">17.72</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.10.2.3">0.6467</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.10.2.4">0.3521</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.8.8.10.2.5">116.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.10.2.6">17.45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.10.2.7">0.6057</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.10.2.8">0.3702</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.8.8.10.2.9">96.61</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.11.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.8.8.11.3.1">GANeRF <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01774v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">46</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.11.3.2">17.42</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.11.3.3">0.6113</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.11.3.4">0.3539</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.8.8.11.3.5">115.60</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.11.3.6">17.54</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.11.3.7">0.6099</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.11.3.8">0.3420</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.8.8.11.3.9">81.44</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.12.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.8.8.12.4.1">NeRFLiX <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01774v1#bib.bib88" title=""><span class="ltx_text" style="font-size:90%;">88</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.12.4.2">17.91</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.12.4.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.8.8.12.4.3.1">0.6560</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.12.4.4">0.3458</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.8.8.12.4.5">113.59</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.12.4.6">17.56</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.12.4.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.8.8.12.4.7.1">0.6104</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.12.4.8">0.3588</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.8.8.12.4.9">80.65</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.13.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.8.8.13.5.1">Nerfacto <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01774v1#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.13.5.2">17.29</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.13.5.3">0.6214</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.13.5.4">0.4021</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.8.8.13.5.5">134.65</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.13.5.6">17.16</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.13.5.7">0.5805</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.13.5.8">0.4303</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.8.8.13.5.9">112.30</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.14.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.8.8.14.6.1">
<span class="ltx_text ltx_font_smallcaps" id="S4.T2.8.8.14.6.1.1">Difix3D</span> (Nerfacto)</th>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.14.6.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.8.8.14.6.2.1">18.08</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.14.6.3">0.6533</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.14.6.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.8.8.14.6.4.1">0.3277</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.8.8.14.6.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.8.8.14.6.5.1">63.77</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.14.6.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.8.8.14.6.6.1">17.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.14.6.7">0.5964</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.14.6.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.8.8.14.6.8.1">0.3271</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.8.8.14.6.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.8.8.14.6.9.1">50.79</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.15.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.8.8.15.7.1">
<span class="ltx_text ltx_font_smallcaps" id="S4.T2.8.8.15.7.1.1">Difix3D+</span> (Nerfacto)</th>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.15.7.2"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.15.7.2.1">18.32</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.15.7.3"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.15.7.3.1">0.6623</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.15.7.4"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.15.7.4.1">0.2789</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.8.8.15.7.5"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.15.7.5.1">49.44</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.15.7.6"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.15.7.6.1">17.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.15.7.7"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.15.7.7.1">0.6127</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.15.7.8"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.15.7.8.1">0.2828</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.8.8.15.7.9"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.15.7.9.1">41.77</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.16.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.8.8.16.8.1">3DGS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.01774v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.16.8.2">17.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.16.8.3">0.6780</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.16.8.4">0.3265</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.8.8.16.8.5">113.84</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.16.8.6">17.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.16.8.7">0.5877</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.16.8.8">0.3835</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.8.8.16.8.9">107.23</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.17.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.8.8.17.9.1">
<span class="ltx_text ltx_font_smallcaps" id="S4.T2.8.8.17.9.1.1">Difix3D</span> (3DGS)</th>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.17.9.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.8.8.17.9.2.1">18.14</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.17.9.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.8.8.17.9.3.1">0.6821</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.17.9.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.8.8.17.9.4.1">0.2836</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.8.8.17.9.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.8.8.17.9.5.1">51.34</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.17.9.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.8.8.17.9.6.1">17.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.17.9.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.8.8.17.9.7.1">0.5983</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.17.9.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.8.8.17.9.8.1">0.3142</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.8.8.17.9.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.8.8.17.9.9.1">50.45</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.18.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T2.8.8.18.10.1">
<span class="ltx_text ltx_font_smallcaps" id="S4.T2.8.8.18.10.1.1">Difix3D+</span> (3DGS)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.8.8.18.10.2"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.18.10.2.1">18.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.8.8.18.10.3"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.18.10.3.1">0.6858</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.8.8.18.10.4"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.18.10.4.1">0.2637</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.8.8.18.10.5"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.18.10.5.1">41.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.8.8.18.10.6"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.18.10.6.1">17.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.8.8.18.10.7"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.18.10.7.1">0.6015</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.8.8.18.10.8"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.18.10.8.1">0.2932</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.8.8.18.10.9"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.18.10.9.1">40.86</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different methods for enhancing the quality of novel view synthesis in real driving scenes (RDS).  The methods compared include a baseline (Nerfacto), Nerfacto enhanced with NeRFLIX, Nerfacto enhanced with DIFIX3D, and Nerfacto enhanced with DIFIX3D+.  The metrics used for comparison are PSNR, SSIM, LPIPS, and FID, which are standard measures for evaluating image quality and perceptual similarity.  Higher PSNR and SSIM values and lower LPIPS and FID values indicate better performance. The best performing method in each metric is highlighted in bold.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of quantitative results on RDS dataset. The best result is highlighted in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T3.4.4.4.5">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1.1">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.1.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.1.m1.1a"><mo id="S5.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.1.m1.1b"><ci id="S5.T3.1.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.2.2.2.2">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.2.2.2.2.m1.1"><semantics id="S5.T3.2.2.2.2.m1.1a"><mo id="S5.T3.2.2.2.2.m1.1.1" stretchy="false" xref="S5.T3.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.2.2.m1.1b"><ci id="S5.T3.2.2.2.2.m1.1.1.cmml" xref="S5.T3.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.3.3.3">LPIPS<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.3.3.3.3.m1.1"><semantics id="S5.T3.3.3.3.3.m1.1a"><mo id="S5.T3.3.3.3.3.m1.1.1" stretchy="false" xref="S5.T3.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.3.3.3.3.m1.1b"><ci id="S5.T3.3.3.3.3.m1.1.1.cmml" xref="S5.T3.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.4.4.4.4">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.4.4.4.4.m1.1"><semantics id="S5.T3.4.4.4.4.m1.1a"><mo id="S5.T3.4.4.4.4.m1.1.1" stretchy="false" xref="S5.T3.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.4.4.4.4.m1.1b"><ci id="S5.T3.4.4.4.4.m1.1.1.cmml" xref="S5.T3.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.4.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.4.4.5.1.1">Nerfacto</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.4.5.1.2">19.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.4.5.1.3">0.4930</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.4.5.1.4">0.5300</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.4.4.5.1.5">91.38</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.4.4.6.2.1">Nerfacto + NeRFLiX</th>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.6.2.2">20.44</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.6.2.3">0.5672</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.6.2.4">0.4686</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.4.4.6.2.5">116.28</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.4.4.7.3.1">Nerfacto + <span class="ltx_text ltx_font_smallcaps" id="S5.T3.4.4.7.3.1.1">Difix3D</span>
</th>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.7.3.2">21.52</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.7.3.3">0.5700</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.7.3.4">0.4266</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.4.4.7.3.5">77.83</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T3.4.4.8.4.1">Nerfacto + <span class="ltx_text ltx_font_smallcaps" id="S5.T3.4.4.8.4.1.1">Difix3D+</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.4.4.8.4.2"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.8.4.2.1">21.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.4.4.8.4.3"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.8.4.3.1">0.5829</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.4.4.8.4.4"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.8.4.4.1">0.4016</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.4.4.8.4.5"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.8.4.5.1">73.08</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study evaluating the impact of different components of the DIFIX3D+ pipeline on the Nerfbusters dataset.  It compares the performance of a Nerfacto baseline model against four variations: (a) using DIFIX alone on rendered views without any 3D updates; (b) incorporating DIFIX and non-incremental 3D updates (all at once); (c) employing DIFIX with incremental 3D updates (progressive refinement); and (d) adding DIFIX as a final post-rendering enhancement step. The results across different metrics are used to analyze the contribution of each component to the overall performance of DIFIX3D+.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study of Difix3D+ on Nerfbusters dataset. We compare a Nerfacto baseline to: (a) directly running Difix on rendered views without 3D updates, (b) distilling Difix outputs via 3D updates in a non-incremental manner, (c) applying the 3D updates incrementally, and (d) add Difix as a post-rendering step.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T4.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T4.4.4.4.5">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.1.1.1.1">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.1.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.1.m1.1a"><mo id="S5.T4.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.1.m1.1b"><ci id="S5.T4.1.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.2.2.2.2">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.2.2.2.2.m1.1"><semantics id="S5.T4.2.2.2.2.m1.1a"><mo id="S5.T4.2.2.2.2.m1.1.1" stretchy="false" xref="S5.T4.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.2.m1.1b"><ci id="S5.T4.2.2.2.2.m1.1.1.cmml" xref="S5.T4.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.3.3.3.3">LPIPS<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.3.3.3.3.m1.1"><semantics id="S5.T4.3.3.3.3.m1.1a"><mo id="S5.T4.3.3.3.3.m1.1.1" stretchy="false" xref="S5.T4.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.3.3.m1.1b"><ci id="S5.T4.3.3.3.3.m1.1.1.cmml" xref="S5.T4.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.4.4.4.4">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.4.4.4.4.m1.1"><semantics id="S5.T4.4.4.4.4.m1.1a"><mo id="S5.T4.4.4.4.4.m1.1.1" stretchy="false" xref="S5.T4.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.4.4.4.4.m1.1b"><ci id="S5.T4.4.4.4.4.m1.1.1.cmml" xref="S5.T4.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.4.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T4.4.4.5.1.1">Nerfacto</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.5.1.2">17.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.5.1.3">0.6214</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.5.1.4">0.4021</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T4.4.4.5.1.5">134.65</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.4.4.6.2.1">+ (a) <span class="ltx_text ltx_font_bold" id="S5.T4.4.4.6.2.1.1">(<span class="ltx_text ltx_font_smallcaps" id="S5.T4.4.4.6.2.1.1.1">Difix</span>)</span>
</th>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.6.2.2">17.40</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.6.2.3">0.6279</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.6.2.4">0.2996</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.4.4.6.2.5">49.87</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.4.4.7.3.1">+ (a) + (b) (<span class="ltx_text ltx_font_smallcaps" id="S5.T4.4.4.7.3.1.1">Difix</span> + single-step
3D update)</th>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.7.3.2">17.97</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.7.3.3">0.6563</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.7.3.4">0.3424</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.4.4.7.3.5">75.94</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.4.4.8.4.1">+ (a) + (b) + (c) <span class="ltx_text ltx_font_bold" id="S5.T4.4.4.8.4.1.1">(<span class="ltx_text ltx_font_smallcaps" id="S5.T4.4.4.8.4.1.1.1">Difix3D</span>)</span>
</th>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.8.4.2">18.08</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.8.4.3">0.6533</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.8.4.4">0.3277</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.4.4.8.4.5">63.77</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.9.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T4.4.4.9.5.1">+ (a) + (b) + (c) + (d) <span class="ltx_text ltx_font_bold" id="S5.T4.4.4.9.5.1.1">(<span class="ltx_text ltx_font_smallcaps" id="S5.T4.4.4.9.5.1.1.1">Difix3D+</span>)</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.4.9.5.2"><span class="ltx_text ltx_font_bold" id="S5.T4.4.4.9.5.2.1">18.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.4.9.5.3"><span class="ltx_text ltx_font_bold" id="S5.T4.4.4.9.5.3.1">0.6623</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.4.9.5.4"><span class="ltx_text ltx_font_bold" id="S5.T4.4.4.9.5.4.1">0.2789</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T4.4.4.9.5.5"><span class="ltx_text ltx_font_bold" id="S5.T4.4.4.9.5.5.1">49.44</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of different components of the DIFIX model on its performance.  The Nerfbusters dataset is used for evaluation. The table shows how reducing the noise level during training, incorporating reference views for conditioning, and including a Gram loss in the training objective improve the model's ability to remove artifacts and enhance image quality.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation study of Difix components on Nerfbusters dataset. Reducing the noise level, conditioning on reference views, and incorporating Gram loss improve our model.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T5.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T5.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T5.3.3.3.4">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T5.1.1.1.1"><math alttext="\tau" class="ltx_Math" display="inline" id="S5.T5.1.1.1.1.m1.1"><semantics id="S5.T5.1.1.1.1.m1.1a"><mi id="S5.T5.1.1.1.1.m1.1.1" xref="S5.T5.1.1.1.1.m1.1.1.cmml">τ</mi><annotation-xml encoding="MathML-Content" id="S5.T5.1.1.1.1.m1.1b"><ci id="S5.T5.1.1.1.1.m1.1.1.cmml" xref="S5.T5.1.1.1.1.m1.1.1">𝜏</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.1.1.1.1.m1.1c">\tau</annotation><annotation encoding="application/x-llamapun" id="S5.T5.1.1.1.1.m1.1d">italic_τ</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.3.3.3.5">SD Turbo Pretrain.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.3.3.3.6">Gram</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.3.3.3.7">Ref</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.2.2.2.2">LPIPS<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.2.2.2.2.m1.1"><semantics id="S5.T5.2.2.2.2.m1.1a"><mo id="S5.T5.2.2.2.2.m1.1.1" stretchy="false" xref="S5.T5.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.2.2.2.2.m1.1b"><ci id="S5.T5.2.2.2.2.m1.1.1.cmml" xref="S5.T5.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.3.3.3.3">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.3.3.3.3.m1.1"><semantics id="S5.T5.3.3.3.3.m1.1a"><mo id="S5.T5.3.3.3.3.m1.1.1" stretchy="false" xref="S5.T5.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.3.3.3.3.m1.1b"><ci id="S5.T5.3.3.3.3.m1.1.1.cmml" xref="S5.T5.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
<tr class="ltx_tr" id="S5.T5.3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S5.T5.3.3.4.1.1">pix2pix-Turbo</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S5.T5.3.3.4.1.2">1000</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.3.3.4.1.3">✓</th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_t" id="S5.T5.3.3.4.1.4"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_t" id="S5.T5.3.3.4.1.5"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.3.3.4.1.6">0.3810</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.3.3.4.1.7">108.86</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.3.3.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.3.3.5.1.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T5.3.3.5.1.1.1">Difix</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T5.3.3.5.1.2">200</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.3.5.1.3">✓</td>
<td class="ltx_td ltx_border_t" id="S5.T5.3.3.5.1.4"></td>
<td class="ltx_td ltx_border_t" id="S5.T5.3.3.5.1.5"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.3.5.1.6">0.3190</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.3.5.1.7">61.80</td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.3.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.3.3.6.2.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T5.3.3.6.2.1.1">Difix</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T5.3.3.6.2.2">200</th>
<td class="ltx_td ltx_align_center" id="S5.T5.3.3.6.2.3">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.3.6.2.4">✓</td>
<td class="ltx_td" id="S5.T5.3.3.6.2.5"></td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.3.6.2.6">0.3064</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.3.6.2.7">55.45</td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.3.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T5.3.3.7.3.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T5.3.3.7.3.1.1">Difix</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S5.T5.3.3.7.3.2">200</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.3.7.3.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.3.7.3.4">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.3.7.3.5">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.3.7.3.6"><span class="ltx_text ltx_font_bold" id="S5.T5.3.3.7.3.6.1">0.2996</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.3.7.3.7"><span class="ltx_text ltx_font_bold" id="S5.T5.3.3.7.3.7.1">47.87</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative evaluation of multi-view consistency for different methods on the DL3DV dataset.  Multi-view consistency refers to how well the methods maintain consistency across multiple views of a 3D scene. The evaluation metric used is Thresholded Symmetric Epipolar Distance (TSED) at different thresholds (Terror = 2, 4, and 8). A higher TSED score indicates better multi-view consistency, meaning the generated views align more accurately with the underlying 3D structure. The table compares the performance of Nerfacto, NeRFLIX, GANERF, DIFIX3D, and DIFIX3D+.
> <details>
> <summary>read the caption</summary>
> Table S1: Multi-view consistency evaluation on the DL3DV dataset. A higher TSED score indicates better multi-view consistency.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.01774/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01774/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01774/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01774/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01774/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01774/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01774/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01774/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01774/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01774/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01774/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01774/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01774/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01774/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01774/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}