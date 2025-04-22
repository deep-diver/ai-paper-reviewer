---
title: "Vivid4D: Improving 4D Reconstruction from Monocular Video by Video Inpainting"
summary: "Vivid4D improves 4D scene reconstruction from monocular videos by synthesizing augmented views via video inpainting, enhancing both completeness and quality."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 Zhejiang University",]
showSummary: true
date: 2025-04-15
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.11092 {{< /keyword >}}
{{< keyword icon="writer" >}} Jiaxin Huang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.11092" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.11092" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.11092/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Reconstructing dynamic 3D scenes from monocular videos is challenging because each timestamp is observed from a single viewpoint. Existing methods rely on geometric or generative priors, but they often overlook the benefits of both. Relying solely on geometric priors can lead to suboptimal results because these priors are not consistently reliable, while generative priors might overlook geometric accuracy. Moreover, existing generative models require large datasets of posed images which are difficult to obtain for dynamic scenes.



Vivid4D tackles this by integrating geometric and generative priors. It reformulates view augmentation as a video inpainting task: Observed views are warped into new viewpoints based on monocular depth priors, and then a video diffusion model inpaints missing regions to ensure spatial-temporal consistency. The method includes an iterative view augmentation strategy and a robust reconstruction loss, maximizing scene coverage while compensating for inaccurate depth priors. Experiments demonstrate that Vivid4D effectively improves monocular 4D scene reconstruction and completion.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Vivid4D enhances 4D monocular video synthesis by augmenting observation views using a video inpainting task. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method integrates geometric and generative priors to complete invisible regions in scenes. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments show improved 4D scene reconstruction and completion, demonstrating the effectiveness of the approach. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers as it **introduces a novel method for dynamic scene reconstruction**, improving upon existing techniques by integrating geometric and generative priors. The approach is applicable to various research areas, including VR and content creation, and **opens new avenues for future work**.

------
#### Visual Insights



![](https://arxiv.org/html/2504.11092/extracted/6362965/figure/diffusion_illustration/illustration.png)

> 🔼 The figure illustrates the Vivid4D method, which enhances 4D reconstruction from monocular videos.  Casually captured videos are augmented by synthesizing additional views. This is achieved by combining geometric and generative priors, treating the view augmentation as a video inpainting problem. The inpainting process fills in missing parts of the scene, leading to more complete and higher-quality 4D reconstructions.  The figure visually demonstrates this process, showing a dynamic scene, the monocular video input, and the augmented videos produced by Vivid4D.
> <details>
> <summary>read the caption</summary>
> Figure 1:   Vivid4D. We improve dynamic scene reconstruction from casually captured monocular videos by synthesizing augmented views. Our approach integrates both geometric and generative priors to reformulate the video augmentation as a video inpainting task. This enables our method to effectively complete invisible regions in the scene and enhance reconstruction quality.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.F5.10">
<tr class="ltx_tr" id="S4.F5.5.5">
<td class="ltx_td ltx_align_center" id="S4.F5.1.1.1" style="padding-bottom:-2.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="174" id="S4.F5.1.1.1.g1" src="extracted/6362965/figure/reconstruction_comparison/4dgs/teddy.png" width="131"/></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.F5.2.2.2" style="padding-bottom:-2.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="174" id="S4.F5.2.2.2.g1" src="extracted/6362965/figure/reconstruction_comparison/som/teddy/teddy_cropped.png" width="131"/></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.F5.3.3.3" style="padding-bottom:-2.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="174" id="S4.F5.3.3.3.g1" src="extracted/6362965/figure/reconstruction_comparison/cococo/teddy/teddy_cropped.png" width="131"/></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.F5.4.4.4" style="padding-bottom:-2.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="174" id="S4.F5.4.4.4.g1" src="extracted/6362965/figure/reconstruction_comparison/ours/teddy/teddy_cropped.png" width="131"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.5.5.5" style="padding-bottom:-2.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="174" id="S4.F5.5.5.5.g1" src="extracted/6362965/figure/reconstruction_comparison/gt/teddy/teddy_cropped.png" width="131"/></td>
</tr>
<tr class="ltx_tr" id="S4.F5.10.10">
<td class="ltx_td ltx_align_center" id="S4.F5.6.6.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="145" id="S4.F5.6.6.1.g1" src="extracted/6362965/figure/reconstruction_comparison/4dgs/broom/broom_cropped.png" width="131"/></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.F5.7.7.2"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="145" id="S4.F5.7.7.2.g1" src="extracted/6362965/figure/reconstruction_comparison/som/broom/broom_cropped.png" width="131"/></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.F5.8.8.3"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="145" id="S4.F5.8.8.3.g1" src="extracted/6362965/figure/reconstruction_comparison/cococo/broom/broom_cropped.png" width="131"/></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.F5.9.9.4"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="145" id="S4.F5.9.9.4.g1" src="extracted/6362965/figure/reconstruction_comparison/ours/broom/broom_cropped.png" width="131"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.10.10.5"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="145" id="S4.F5.10.10.5.g1" src="extracted/6362965/figure/reconstruction_comparison/gt/broom/broom_cropped.png" width="131"/></td>
</tr>
<tr class="ltx_tr" id="S4.F5.10.11">
<td class="ltx_td ltx_align_center" id="S4.F5.10.11.1">4D GS</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.F5.10.11.2">Shape of Motion</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.F5.10.11.3">CoCoCo</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.F5.10.11.4">Ours</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.10.11.5">Ground Truth</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative analysis of the impact of using an anchor video during training on the performance of the video inpainting diffusion model.  The experiment uses 5000 videos from the OpenVid-1M dataset.  The results show improvements in PSNR (Peak Signal-to-Noise Ratio), SSIM (Structural Similarity Index), LPIPS (Learned Perceptual Image Patch Similarity), and FVD (Fréchet Video Distance) when the anchor video is included in the training process, demonstrating its effectiveness in enhancing the quality of the inpainted video frames.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative ablation study on anchor video condition on our processed 5⁢K5𝐾5K5 italic_K videos from OpenVid-1M.
> </details>





### In-depth insights


#### 4D From Monocular
The task of reconstructing 4D dynamic scenes from a monocular video is inherently challenging due to the **lack of multi-view information**. The research addresses this by synthesizing augmented views, reformulating it as a video inpainting task. This allows completion of invisible regions, improving reconstruction quality. The method integrates geometric priors (from depth) with generative priors (from diffusion models). A key aspect is training a video inpainting model on unposed web videos using synthetically generated masks, mimicking warping occlusions. This ensures spatial and temporal consistency. An iterative view augmentation strategy addresses inaccuracies in monocular depth priors, progressively expanding the observation viewpoint. Experiments validate the approach's effectiveness in improving monocular 4D scene reconstruction and completion, showcasing advancements in novel view synthesis and handling motion complexity. By combining both priors it elevates the 4D reconstruction.

#### View Inpainting 4D
**4D View Inpainting** represents a fusion of 3D scene understanding with advanced video inpainting techniques to generate novel views of dynamic scenes. The core idea involves leveraging geometric priors derived from monocular videos, like depth maps and camera poses, to warp the original video into new viewpoints. These warped views often contain occluded or missing regions, which are then filled in using video inpainting models. This approach addresses the challenge of limited viewpoint coverage in monocular video, enabling more complete and consistent 4D scene reconstructions. **A key benefit is the ability to train inpainting models using readily available unposed web videos**, by simulating occlusions through 2D tracking. This contrasts with methods that require posed multi-view datasets, which are difficult to obtain. The effectiveness hinges on the accuracy of the geometric priors and the inpainting model's ability to synthesize realistic and temporally coherent content for the newly revealed areas. The use of iterative view augmentation and robust reconstruction losses is crucial for mitigating inaccuracies in depth priors and ensuring consistency across generated views. 

#### Iterative Warping
Iterative warping is an interesting approach to tackle the challenges of dynamic scene reconstruction from monocular videos. The method smartly addresses issues like **depth inaccuracies**, which often cause distortions when warping to novel viewpoints. Instead of a single, large-angle warp, iterative warping gradually refines the viewpoint. This progressive approach reduces the severity of artifacts and minimizes inaccuracies, especially at object boundaries. This ensures each warping step is reliable and contributes to a cleaner final reconstruction. **Blending geometry-based warping with diffusion models** refines the image and handles occlusions, ultimately leading to higher-quality reconstructions with fewer artifacts.

#### Robust IV RGB Loss
A **robust IV RGB loss** function for 4D reconstruction aims to mitigate distortions arising from imperfect depth estimation and artifacts introduced by video diffusion models. This loss function typically operates at the pixel level, comparing rendered images with augmented supervision images. To enhance robustness, it might adopt strategies inspired by existing techniques, such as selecting the closest matching pixels within a neighborhood to compute the loss, effectively reducing sensitivity to slight misalignments. This approach helps to ensure accurate and visually pleasing 4D reconstructions, even in the presence of noisy or incomplete data. Additionally, the loss could be tailored to weight the contributions of different color channels or spatial regions based on their reliability or importance. By minimizing the impact of erroneous data, a well-designed robust IV RGB loss promotes geometrically consistent and visually coherent 4D representations, ultimately improving the overall quality of the reconstructed dynamic scenes.

#### Depth Matters Most
The heading "Depth Matters Most" underscores the pivotal role of accurate depth estimation in 4D scene reconstruction from monocular video. **Reliable depth perception is fundamental for geometric understanding**, enabling the warping of input views to augment the scene and providing essential constraints for the video inpainting process. Erroneous depth data introduces distortions and artifacts, thus impacting the quality of novel view synthesis and subsequent reconstruction. While the paper utilizes techniques like robust depth scale alignment and iterative view augmentation to address inaccuracies, it acknowledges the method's dependency on depth fidelity. Future work could emphasize **integrating dense reconstruction methods to obtain more precise scene geometry and improve the robustness of the system**.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.11092/extracted/6362965/figure/pipeline/pipeline.png)

> 🔼 This figure illustrates the training and application of a video inpainting model for 4D reconstruction.  The training process uses unposed web videos and 2D tracking to identify moving objects.  Masks are generated based on this tracking data, creating incomplete video sequences. The model is trained to fill in the masked areas, learning to generate temporally and spatially consistent video frames.  During the 4D reconstruction stage, the monocular video is warped to generate new viewpoints, resulting in masked areas.  These masked videos are fed into the trained model, which inpaints the missing regions to create complete augmented videos, providing enhanced input for 4D reconstruction.
> <details>
> <summary>read the caption</summary>
> Figure 2: Video Inpainting for 4D Reconstruction. To train the video inpainting model, we use 2D tracking to generate masked training pairs from unposed web videos. During 4D reconstruction, we warp the monocular video to novel viewpoints, creating masked videos that our inpainting diffusion model then completes.
> </details>



![](https://arxiv.org/html/2504.11092/extracted/6362965/figure/view_augmentation/view_augmentation.png)

> 🔼 This figure illustrates the iterative view augmentation process used in the Vivid4D model for 4D reconstruction from monocular video.  It begins with sparse reconstruction of an input video to estimate camera poses and obtain metric depth. This information forms an initial data buffer (D0).  In each iteration, frames are selected from the previous buffer (Dj-1), warped to novel viewpoints using predefined camera poses (T), and inpainted using a video inpainting diffusion model. The inpainted videos, along with their depth and poses, are added to the current buffer (Dj), expanding the set of views over iterations. Finally, both the original and the synthesized multi-view videos are used as supervision for 4D scene reconstruction.
> <details>
> <summary>read the caption</summary>
> Figure 3: 4D reconstruction based on view augmentation. Given an input monocular video, we first perform sparse reconstruction to obtain camera poses and align monocular depth to metric scale, forming an initial data buffer 𝒟0subscript𝒟0\mathcal{D}_{0}caligraphic_D start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT. In each iterative view augmentation step, we select frames at each timestamp from the previous buffer 𝒟j−1subscript𝒟𝑗1\mathcal{D}_{j-1}caligraphic_D start_POSTSUBSCRIPT italic_j - 1 end_POSTSUBSCRIPT and warp them to novel viewpoints using pre-defined camera poses 𝐓𝐓\mathbf{T}bold_T, creating new perspective videos with continuous invisible region masks. These masked videos, along with binary masks and an anchor video, are fed into our pre-trained anchor-conditioned video inpainting diffusion model to produce completed novel-view videos. We update the buffer 𝒟jsubscript𝒟𝑗\mathcal{D}_{j}caligraphic_D start_POSTSUBSCRIPT italic_j end_POSTSUBSCRIPT with these enhanced videos, their metric depths and poses. Finally, both the original monocular video and all synthesized multi-view videos are used to supervise 4D scene reconstruction.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.4">
<tr class="ltx_tr" id="S4.T1.4.4">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.4.4.5"><span class="ltx_text" id="S4.T1.4.4.5.1" style="font-size:99%;">Condition</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T1.1.1.1">
<span class="ltx_text" id="S4.T1.1.1.1.1" style="font-size:99%;">PSNR </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.m1.1.1" mathsize="99%" stretchy="false" xref="S4.T1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T1.2.2.2">
<span class="ltx_text" id="S4.T1.2.2.2.1" style="font-size:99%;">SSIM </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.m1.1.1" mathsize="99%" stretchy="false" xref="S4.T1.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T1.3.3.3">
<span class="ltx_text" id="S4.T1.3.3.3.1" style="font-size:99%;">LPIPS </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.m1.1.1" mathsize="99%" stretchy="false" xref="S4.T1.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T1.4.4.4">
<span class="ltx_text" id="S4.T1.4.4.4.1" style="font-size:99%;">FVD </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.m1.1a"><mo id="S4.T1.4.4.4.m1.1.1" mathsize="99%" stretchy="false" xref="S4.T1.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.m1.1b"><ci id="S4.T1.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.4.5.1"><span class="ltx_text" id="S4.T1.4.5.1.1" style="font-size:99%;">w/o anchor</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.4.5.2"><span class="ltx_text" id="S4.T1.4.5.2.1" style="font-size:99%;">25.34</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.4.5.3"><span class="ltx_text" id="S4.T1.4.5.3.1" style="font-size:99%;">0.8053</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.4.5.4"><span class="ltx_text" id="S4.T1.4.5.4.1" style="font-size:99%;">0.1056</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T1.4.5.5"><span class="ltx_text" id="S4.T1.4.5.5.1" style="font-size:99%;">18.99</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.4.6.1"><span class="ltx_text" id="S4.T1.4.6.1.1" style="font-size:99%;">w anchor (ours)</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T1.4.6.2" style="background-color:#FFC8C8;"><span class="ltx_text ltx_font_bold" id="S4.T1.4.6.2.1" style="font-size:99%;background-color:#FFC8C8;">27.22</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T1.4.6.3" style="background-color:#FFC8C8;"><span class="ltx_text ltx_font_bold" id="S4.T1.4.6.3.1" style="font-size:99%;background-color:#FFC8C8;">0.8223</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T1.4.6.4" style="background-color:#FFC8C8;"><span class="ltx_text ltx_font_bold" id="S4.T1.4.6.4.1" style="font-size:99%;background-color:#FFC8C8;">0.0801</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T1.4.6.5" style="background-color:#FFC8C8;"><span class="ltx_text ltx_font_bold" id="S4.T1.4.6.5.1" style="font-size:99%;background-color:#FFC8C8;">14.30</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different methods for dynamic scene reconstruction using two datasets: iPhone and HyperNeRF.  The metrics used for comparison include mPSNR (mean Peak Signal-to-Noise Ratio), mSSIM (mean Structural Similarity Index), and mLPIPS (mean Learned Perceptual Image Patch Similarity).  The results are broken down by dataset and further categorized into dynamic foreground, static background, and overall scene performance to provide a comprehensive evaluation of the reconstruction quality.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative comparison of dynamic scene reconstruction on iPhone dataset and HyperNeRF dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.F6.6">
<tr class="ltx_tr" id="S4.F6.3.3">
<td class="ltx_td ltx_align_center" id="S4.F6.1.1.1" style="padding-bottom:-2.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S4.F6.1.1.1.g1" src="extracted/6362965/figure/ablation_anchor/masked/frame_0005.png" width="103"/></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.F6.2.2.2" style="padding-bottom:-2.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S4.F6.2.2.2.g1" src="extracted/6362965/figure/ablation_anchor/no_anchor/frame_0005.png" width="103"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F6.3.3.3" style="padding-bottom:-2.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S4.F6.3.3.3.g1" src="extracted/6362965/figure/ablation_anchor/ours/frame_0005.png" width="103"/></td>
</tr>
<tr class="ltx_tr" id="S4.F6.6.6">
<td class="ltx_td ltx_align_center" id="S4.F6.4.4.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S4.F6.4.4.1.g1" src="extracted/6362965/figure/ablation_anchor/masked/frame_0015.png" width="103"/></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.F6.5.5.2"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S4.F6.5.5.2.g1" src="extracted/6362965/figure/ablation_anchor/no_anchor/frame_0015.png" width="103"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F6.6.6.3"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S4.F6.6.6.3.g1" src="extracted/6362965/figure/ablation_anchor/ours/frame_0015.png" width="103"/></td>
</tr>
<tr class="ltx_tr" id="S4.F6.6.7">
<td class="ltx_td ltx_align_center" id="S4.F6.6.7.1"><span class="ltx_text" id="S4.F6.6.7.1.1" style="font-size:90%;">Masked Sequence</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.F6.6.7.2"><span class="ltx_text" id="S4.F6.6.7.2.1" style="font-size:90%;">w/o anchor</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F6.6.7.3"><span class="ltx_text" id="S4.F6.6.7.3.1" style="font-size:90%;">w anchor (ours)</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative analysis of the impact of view warping and video inpainting on the performance of 4D scene reconstruction.  It compares different model configurations: (a) without view warping or inpainting and without direct depth supervision, (b) without view warping or inpainting but with direct depth supervision, (c) with view warping but without video inpainting and (d) the full method with both view warping and video inpainting. The comparison is made using metrics such as mPSNR, mSSIM, and mLPIPS on two datasets: iPhone and HyperNeRF. This allows the reader to assess the contribution of each component in improving the quality of 4D reconstruction.
> <details>
> <summary>read the caption</summary>
> Table 3: Quantitative ablation study on view warping and video inpainting on iPhone dataset and HyperNeRF dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.F7.8">
<tr class="ltx_tr" id="S4.F7.4.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F7.1.1.1" style="padding-bottom:-2.0pt;padding-left:0.5pt;padding-right:0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="90" id="S4.F7.1.1.1.g1" src="extracted/6362965/figure/ablation_warp_inpainting/no_depth/3dprinter_cropped.png" width="74"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F7.2.2.2" style="padding-bottom:-2.0pt;padding-left:0.5pt;padding-right:0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="90" id="S4.F7.2.2.2.g1" src="extracted/6362965/figure/ablation_warp_inpainting/depth/3dprinter_cropped.png" width="74"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F7.3.3.3" style="padding-bottom:-2.0pt;padding-left:0.5pt;padding-right:0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="90" id="S4.F7.3.3.3.g1" src="extracted/6362965/figure/ablation_warp_inpainting/warp_only/3dprinter_cropped_with_rectangle.png" width="74"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F7.4.4.4" style="padding-bottom:-2.0pt;padding-left:0.5pt;padding-right:0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="90" id="S4.F7.4.4.4.g1" src="extracted/6362965/figure/ablation_warp_inpainting/ours/3dprinter_cropped_with_rectangle.png" width="74"/></td>
</tr>
<tr class="ltx_tr" id="S4.F7.8.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F7.5.5.1" style="padding-left:0.5pt;padding-right:0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="106" id="S4.F7.5.5.1.g1" src="extracted/6362965/figure/ablation_warp_inpainting/no_depth/chicken_cropped.png" width="74"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F7.6.6.2" style="padding-left:0.5pt;padding-right:0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="106" id="S4.F7.6.6.2.g1" src="extracted/6362965/figure/ablation_warp_inpainting/depth/chicken_cropped.png" width="74"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F7.7.7.3" style="padding-left:0.5pt;padding-right:0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="106" id="S4.F7.7.7.3.g1" src="extracted/6362965/figure/ablation_warp_inpainting/warp_only/chicken_cropped.png" width="74"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F7.8.8.4" style="padding-left:0.5pt;padding-right:0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_portrait" height="106" id="S4.F7.8.8.4.g1" src="extracted/6362965/figure/ablation_warp_inpainting/ours/chicken_cropped.png" width="74"/></td>
</tr>
<tr class="ltx_tr" id="S4.F7.8.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F7.8.9.1" style="padding-left:0.5pt;padding-right:0.5pt;"><span class="ltx_text" id="S4.F7.8.9.1.1" style="font-size:80%;">(a)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F7.8.9.2" style="padding-left:0.5pt;padding-right:0.5pt;"><span class="ltx_text" id="S4.F7.8.9.2.1" style="font-size:80%;">(b)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F7.8.9.3" style="padding-left:0.5pt;padding-right:0.5pt;"><span class="ltx_text" id="S4.F7.8.9.3.1" style="font-size:80%;">(c)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F7.8.9.4" style="padding-left:0.5pt;padding-right:0.5pt;"><span class="ltx_text" id="S4.F7.8.9.4.1" style="font-size:80%;">(d)</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative analysis of the impact of iterative view augmentation on the performance of 4D scene reconstruction.  It shows the results achieved using different numbers of iterations (N) on both the iPhone and HyperNeRF datasets, with varying numbers of progressively generated views (j). The metrics used to assess performance are mPSNR, mSSIM, and mLPIPS. This helps in understanding how the iterative refinement of views, starting from a monocular input, improves the reconstruction quality.
> <details>
> <summary>read the caption</summary>
> Table 4: Quantitative ablation study on iterations on iPhone dataset and HyperNeRF dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T3.7">
<tr class="ltx_tr" id="S4.T3.3.3">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.3.3.4"><span class="ltx_text" id="S4.T3.3.3.4.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T3.1.1.1">
<span class="ltx_text" id="S4.T3.1.1.1.1" style="font-size:80%;">mPSNR </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T3.2.2.2">
<span class="ltx_text" id="S4.T3.2.2.2.1" style="font-size:80%;">mSSIM </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T3.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T3.3.3.3">
<span class="ltx_text" id="S4.T3.3.3.3.1" style="font-size:80%;">mLPIPS </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.4.4.1">
<span class="ltx_text" id="S4.T3.4.4.1.1" style="font-size:80%;">(a) w/o warp, w/o inpaint, w/o </span><math alttext="\mathcal{L}_{D}" class="ltx_Math" display="inline" id="S4.T3.4.4.1.m1.1"><semantics id="S4.T3.4.4.1.m1.1a"><msub id="S4.T3.4.4.1.m1.1.1" xref="S4.T3.4.4.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T3.4.4.1.m1.1.1.2" mathsize="80%" xref="S4.T3.4.4.1.m1.1.1.2.cmml">ℒ</mi><mi id="S4.T3.4.4.1.m1.1.1.3" mathsize="80%" xref="S4.T3.4.4.1.m1.1.1.3.cmml">D</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.1.m1.1b"><apply id="S4.T3.4.4.1.m1.1.1.cmml" xref="S4.T3.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.4.4.1.m1.1.1.1.cmml" xref="S4.T3.4.4.1.m1.1.1">subscript</csymbol><ci id="S4.T3.4.4.1.m1.1.1.2.cmml" xref="S4.T3.4.4.1.m1.1.1.2">ℒ</ci><ci id="S4.T3.4.4.1.m1.1.1.3.cmml" xref="S4.T3.4.4.1.m1.1.1.3">𝐷</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.1.m1.1c">\mathcal{L}_{D}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.1.m1.1d">caligraphic_L start_POSTSUBSCRIPT italic_D end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.4.4.2"><span class="ltx_text" id="S4.T3.4.4.2.1" style="font-size:80%;">16.04</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.4.4.3"><span class="ltx_text" id="S4.T3.4.4.3.1" style="font-size:80%;">0.4617</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.4.4.4"><span class="ltx_text" id="S4.T3.4.4.4.1" style="font-size:80%;">0.5249</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5">
<td class="ltx_td ltx_align_left" id="S4.T3.5.5.1">
<span class="ltx_text" id="S4.T3.5.5.1.1" style="font-size:80%;">(b) w/o warp, w/o inpaint, w/ </span><math alttext="\mathcal{L}_{D}" class="ltx_Math" display="inline" id="S4.T3.5.5.1.m1.1"><semantics id="S4.T3.5.5.1.m1.1a"><msub id="S4.T3.5.5.1.m1.1.1" xref="S4.T3.5.5.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T3.5.5.1.m1.1.1.2" mathsize="80%" xref="S4.T3.5.5.1.m1.1.1.2.cmml">ℒ</mi><mi id="S4.T3.5.5.1.m1.1.1.3" mathsize="80%" xref="S4.T3.5.5.1.m1.1.1.3.cmml">D</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.1.m1.1b"><apply id="S4.T3.5.5.1.m1.1.1.cmml" xref="S4.T3.5.5.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.5.5.1.m1.1.1.1.cmml" xref="S4.T3.5.5.1.m1.1.1">subscript</csymbol><ci id="S4.T3.5.5.1.m1.1.1.2.cmml" xref="S4.T3.5.5.1.m1.1.1.2">ℒ</ci><ci id="S4.T3.5.5.1.m1.1.1.3.cmml" xref="S4.T3.5.5.1.m1.1.1.3">𝐷</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.1.m1.1c">\mathcal{L}_{D}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.1.m1.1d">caligraphic_L start_POSTSUBSCRIPT italic_D end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.5.5.2" style="background-color:#FFFFC8;"><span class="ltx_text" id="S4.T3.5.5.2.1" style="font-size:80%;background-color:#FFFFC8;">16.12</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.5.5.3" style="background-color:#FFFFC8;"><span class="ltx_text" id="S4.T3.5.5.3.1" style="font-size:80%;background-color:#FFFFC8;">0.4699</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.5.5.4" style="background-color:#FFFFC8;"><span class="ltx_text" id="S4.T3.5.5.4.1" style="font-size:80%;background-color:#FFFFC8;">0.5084</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6">
<td class="ltx_td ltx_align_left" id="S4.T3.6.6.1">
<span class="ltx_text" id="S4.T3.6.6.1.1" style="font-size:80%;">(c) w/ warp, w/o inpaint, w/o </span><math alttext="\mathcal{L}_{D}" class="ltx_Math" display="inline" id="S4.T3.6.6.1.m1.1"><semantics id="S4.T3.6.6.1.m1.1a"><msub id="S4.T3.6.6.1.m1.1.1" xref="S4.T3.6.6.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T3.6.6.1.m1.1.1.2" mathsize="80%" xref="S4.T3.6.6.1.m1.1.1.2.cmml">ℒ</mi><mi id="S4.T3.6.6.1.m1.1.1.3" mathsize="80%" xref="S4.T3.6.6.1.m1.1.1.3.cmml">D</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.1.m1.1b"><apply id="S4.T3.6.6.1.m1.1.1.cmml" xref="S4.T3.6.6.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.6.6.1.m1.1.1.1.cmml" xref="S4.T3.6.6.1.m1.1.1">subscript</csymbol><ci id="S4.T3.6.6.1.m1.1.1.2.cmml" xref="S4.T3.6.6.1.m1.1.1.2">ℒ</ci><ci id="S4.T3.6.6.1.m1.1.1.3.cmml" xref="S4.T3.6.6.1.m1.1.1.3">𝐷</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.1.m1.1c">\mathcal{L}_{D}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.1.m1.1d">caligraphic_L start_POSTSUBSCRIPT italic_D end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.6.6.2" style="background-color:#FFE6C8;"><span class="ltx_text" id="S4.T3.6.6.2.1" style="font-size:80%;background-color:#FFE6C8;">16.44</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.6.6.3" style="background-color:#FFE6C8;"><span class="ltx_text" id="S4.T3.6.6.3.1" style="font-size:80%;background-color:#FFE6C8;">0.4913</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.6.6.4" style="background-color:#FFE6C8;"><span class="ltx_text" id="S4.T3.6.6.4.1" style="font-size:80%;background-color:#FFE6C8;">0.4876</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.7">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.7.7.1">
<span class="ltx_text" id="S4.T3.7.7.1.1" style="font-size:80%;">(d) w/ warp, w/ inpaint, w/o </span><math alttext="\mathcal{L}_{D}" class="ltx_Math" display="inline" id="S4.T3.7.7.1.m1.1"><semantics id="S4.T3.7.7.1.m1.1a"><msub id="S4.T3.7.7.1.m1.1.1" xref="S4.T3.7.7.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T3.7.7.1.m1.1.1.2" mathsize="80%" xref="S4.T3.7.7.1.m1.1.1.2.cmml">ℒ</mi><mi id="S4.T3.7.7.1.m1.1.1.3" mathsize="80%" xref="S4.T3.7.7.1.m1.1.1.3.cmml">D</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.1.m1.1b"><apply id="S4.T3.7.7.1.m1.1.1.cmml" xref="S4.T3.7.7.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.7.7.1.m1.1.1.1.cmml" xref="S4.T3.7.7.1.m1.1.1">subscript</csymbol><ci id="S4.T3.7.7.1.m1.1.1.2.cmml" xref="S4.T3.7.7.1.m1.1.1.2">ℒ</ci><ci id="S4.T3.7.7.1.m1.1.1.3.cmml" xref="S4.T3.7.7.1.m1.1.1.3">𝐷</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.1.m1.1c">\mathcal{L}_{D}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.1.m1.1d">caligraphic_L start_POSTSUBSCRIPT italic_D end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S4.T3.7.7.1.2" style="font-size:80%;"> (ours)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T3.7.7.2" style="background-color:#FFC8C8;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.2.1" style="font-size:80%;background-color:#FFC8C8;">16.80</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T3.7.7.3" style="background-color:#FFC8C8;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.3.1" style="font-size:80%;background-color:#FFC8C8;">0.5170</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T3.7.7.4" style="background-color:#FFC8C8;"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.4.1" style="font-size:80%;background-color:#FFC8C8;">0.4750</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different depth estimation models used in the Vivid4D framework for 4D monocular video reconstruction.  It shows the impact of different depth estimation methods on the final reconstruction quality, measured using mPSNR, mSSIM, and mLPIPS metrics.  The results allow for evaluation of which depth estimation model provides the best performance within the larger system.
> <details>
> <summary>read the caption</summary>
> Table 5: Quantitative ablation study on various depth estimation models on iPhone dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T4.7">
<tr class="ltx_tr" id="S4.T4.3.3">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.3.3.4"><span class="ltx_text" id="S4.T4.3.3.4.1" style="font-size:82%;">Iterations</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1">
<span class="ltx_text" id="S4.T4.1.1.1.1" style="font-size:82%;">mPSNR </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.m1.1.1" mathsize="82%" stretchy="false" xref="S4.T4.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T4.2.2.2">
<span class="ltx_text" id="S4.T4.2.2.2.1" style="font-size:82%;">mSSIM </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.m1.1a"><mo id="S4.T4.2.2.2.m1.1.1" mathsize="82%" stretchy="false" xref="S4.T4.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.m1.1b"><ci id="S4.T4.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T4.3.3.3">
<span class="ltx_text" id="S4.T4.3.3.3.1" style="font-size:82%;">mLPIPS </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.m1.1a"><mo id="S4.T4.3.3.3.m1.1.1" mathsize="82%" stretchy="false" xref="S4.T4.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.m1.1b"><ci id="S4.T4.3.3.3.m1.1.1.cmml" xref="S4.T4.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.7.8.1"><span class="ltx_text" id="S4.T4.7.8.1.1" style="font-size:82%;">w/o view aug., w/o depth</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.7.8.2"><span class="ltx_text" id="S4.T4.7.8.2.1" style="font-size:82%;">16.04</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T4.7.8.3"><span class="ltx_text" id="S4.T4.7.8.3.1" style="font-size:82%;">0.4617</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T4.7.8.4"><span class="ltx_text" id="S4.T4.7.8.4.1" style="font-size:82%;">0.5249</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4">
<td class="ltx_td ltx_align_left" id="S4.T4.4.4.1"><math alttext="N=1,j=1" class="ltx_Math" display="inline" id="S4.T4.4.4.1.m1.2"><semantics id="S4.T4.4.4.1.m1.2a"><mrow id="S4.T4.4.4.1.m1.2.2.2" xref="S4.T4.4.4.1.m1.2.2.3.cmml"><mrow id="S4.T4.4.4.1.m1.1.1.1.1" xref="S4.T4.4.4.1.m1.1.1.1.1.cmml"><mi id="S4.T4.4.4.1.m1.1.1.1.1.2" mathsize="82%" xref="S4.T4.4.4.1.m1.1.1.1.1.2.cmml">N</mi><mo id="S4.T4.4.4.1.m1.1.1.1.1.1" mathsize="82%" xref="S4.T4.4.4.1.m1.1.1.1.1.1.cmml">=</mo><mn id="S4.T4.4.4.1.m1.1.1.1.1.3" mathsize="82%" xref="S4.T4.4.4.1.m1.1.1.1.1.3.cmml">1</mn></mrow><mo id="S4.T4.4.4.1.m1.2.2.2.3" mathsize="82%" xref="S4.T4.4.4.1.m1.2.2.3a.cmml">,</mo><mrow id="S4.T4.4.4.1.m1.2.2.2.2" xref="S4.T4.4.4.1.m1.2.2.2.2.cmml"><mi id="S4.T4.4.4.1.m1.2.2.2.2.2" mathsize="82%" xref="S4.T4.4.4.1.m1.2.2.2.2.2.cmml">j</mi><mo id="S4.T4.4.4.1.m1.2.2.2.2.1" mathsize="82%" xref="S4.T4.4.4.1.m1.2.2.2.2.1.cmml">=</mo><mn id="S4.T4.4.4.1.m1.2.2.2.2.3" mathsize="82%" xref="S4.T4.4.4.1.m1.2.2.2.2.3.cmml">1</mn></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.1.m1.2b"><apply id="S4.T4.4.4.1.m1.2.2.3.cmml" xref="S4.T4.4.4.1.m1.2.2.2"><csymbol cd="ambiguous" id="S4.T4.4.4.1.m1.2.2.3a.cmml" xref="S4.T4.4.4.1.m1.2.2.2.3">formulae-sequence</csymbol><apply id="S4.T4.4.4.1.m1.1.1.1.1.cmml" xref="S4.T4.4.4.1.m1.1.1.1.1"><eq id="S4.T4.4.4.1.m1.1.1.1.1.1.cmml" xref="S4.T4.4.4.1.m1.1.1.1.1.1"></eq><ci id="S4.T4.4.4.1.m1.1.1.1.1.2.cmml" xref="S4.T4.4.4.1.m1.1.1.1.1.2">𝑁</ci><cn id="S4.T4.4.4.1.m1.1.1.1.1.3.cmml" type="integer" xref="S4.T4.4.4.1.m1.1.1.1.1.3">1</cn></apply><apply id="S4.T4.4.4.1.m1.2.2.2.2.cmml" xref="S4.T4.4.4.1.m1.2.2.2.2"><eq id="S4.T4.4.4.1.m1.2.2.2.2.1.cmml" xref="S4.T4.4.4.1.m1.2.2.2.2.1"></eq><ci id="S4.T4.4.4.1.m1.2.2.2.2.2.cmml" xref="S4.T4.4.4.1.m1.2.2.2.2.2">𝑗</ci><cn id="S4.T4.4.4.1.m1.2.2.2.2.3.cmml" type="integer" xref="S4.T4.4.4.1.m1.2.2.2.2.3">1</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.1.m1.2c">N=1,j=1</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.1.m1.2d">italic_N = 1 , italic_j = 1</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.2"><span class="ltx_text" id="S4.T4.4.4.2.1" style="font-size:82%;">15.80</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.4.4.3"><span class="ltx_text" id="S4.T4.4.4.3.1" style="font-size:82%;">0.4711</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.4.4.4" style="background-color:#FFFFC8;"><span class="ltx_text" id="S4.T4.4.4.4.1" style="font-size:82%;background-color:#FFFFC8;">0.4959</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5">
<td class="ltx_td ltx_align_left" id="S4.T4.5.5.1"><math alttext="N=6,j=2" class="ltx_Math" display="inline" id="S4.T4.5.5.1.m1.2"><semantics id="S4.T4.5.5.1.m1.2a"><mrow id="S4.T4.5.5.1.m1.2.2.2" xref="S4.T4.5.5.1.m1.2.2.3.cmml"><mrow id="S4.T4.5.5.1.m1.1.1.1.1" xref="S4.T4.5.5.1.m1.1.1.1.1.cmml"><mi id="S4.T4.5.5.1.m1.1.1.1.1.2" mathsize="82%" xref="S4.T4.5.5.1.m1.1.1.1.1.2.cmml">N</mi><mo id="S4.T4.5.5.1.m1.1.1.1.1.1" mathsize="82%" xref="S4.T4.5.5.1.m1.1.1.1.1.1.cmml">=</mo><mn id="S4.T4.5.5.1.m1.1.1.1.1.3" mathsize="82%" xref="S4.T4.5.5.1.m1.1.1.1.1.3.cmml">6</mn></mrow><mo id="S4.T4.5.5.1.m1.2.2.2.3" mathsize="82%" xref="S4.T4.5.5.1.m1.2.2.3a.cmml">,</mo><mrow id="S4.T4.5.5.1.m1.2.2.2.2" xref="S4.T4.5.5.1.m1.2.2.2.2.cmml"><mi id="S4.T4.5.5.1.m1.2.2.2.2.2" mathsize="82%" xref="S4.T4.5.5.1.m1.2.2.2.2.2.cmml">j</mi><mo id="S4.T4.5.5.1.m1.2.2.2.2.1" mathsize="82%" xref="S4.T4.5.5.1.m1.2.2.2.2.1.cmml">=</mo><mn id="S4.T4.5.5.1.m1.2.2.2.2.3" mathsize="82%" xref="S4.T4.5.5.1.m1.2.2.2.2.3.cmml">2</mn></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.5.5.1.m1.2b"><apply id="S4.T4.5.5.1.m1.2.2.3.cmml" xref="S4.T4.5.5.1.m1.2.2.2"><csymbol cd="ambiguous" id="S4.T4.5.5.1.m1.2.2.3a.cmml" xref="S4.T4.5.5.1.m1.2.2.2.3">formulae-sequence</csymbol><apply id="S4.T4.5.5.1.m1.1.1.1.1.cmml" xref="S4.T4.5.5.1.m1.1.1.1.1"><eq id="S4.T4.5.5.1.m1.1.1.1.1.1.cmml" xref="S4.T4.5.5.1.m1.1.1.1.1.1"></eq><ci id="S4.T4.5.5.1.m1.1.1.1.1.2.cmml" xref="S4.T4.5.5.1.m1.1.1.1.1.2">𝑁</ci><cn id="S4.T4.5.5.1.m1.1.1.1.1.3.cmml" type="integer" xref="S4.T4.5.5.1.m1.1.1.1.1.3">6</cn></apply><apply id="S4.T4.5.5.1.m1.2.2.2.2.cmml" xref="S4.T4.5.5.1.m1.2.2.2.2"><eq id="S4.T4.5.5.1.m1.2.2.2.2.1.cmml" xref="S4.T4.5.5.1.m1.2.2.2.2.1"></eq><ci id="S4.T4.5.5.1.m1.2.2.2.2.2.cmml" xref="S4.T4.5.5.1.m1.2.2.2.2.2">𝑗</ci><cn id="S4.T4.5.5.1.m1.2.2.2.2.3.cmml" type="integer" xref="S4.T4.5.5.1.m1.2.2.2.2.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.5.1.m1.2c">N=6,j=2</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.5.1.m1.2d">italic_N = 6 , italic_j = 2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.2" style="background-color:#FFFFC8;"><span class="ltx_text" id="S4.T4.5.5.2.1" style="font-size:82%;background-color:#FFFFC8;">16.41</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.5.5.3" style="background-color:#FFFFC8;"><span class="ltx_text" id="S4.T4.5.5.3.1" style="font-size:82%;background-color:#FFFFC8;">0.5054</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.5.5.4"><span class="ltx_text" id="S4.T4.5.5.4.1" style="font-size:82%;">0.4964</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.6.6">
<td class="ltx_td ltx_align_left" id="S4.T4.6.6.1"><math alttext="N=6,j=4" class="ltx_Math" display="inline" id="S4.T4.6.6.1.m1.2"><semantics id="S4.T4.6.6.1.m1.2a"><mrow id="S4.T4.6.6.1.m1.2.2.2" xref="S4.T4.6.6.1.m1.2.2.3.cmml"><mrow id="S4.T4.6.6.1.m1.1.1.1.1" xref="S4.T4.6.6.1.m1.1.1.1.1.cmml"><mi id="S4.T4.6.6.1.m1.1.1.1.1.2" mathsize="82%" xref="S4.T4.6.6.1.m1.1.1.1.1.2.cmml">N</mi><mo id="S4.T4.6.6.1.m1.1.1.1.1.1" mathsize="82%" xref="S4.T4.6.6.1.m1.1.1.1.1.1.cmml">=</mo><mn id="S4.T4.6.6.1.m1.1.1.1.1.3" mathsize="82%" xref="S4.T4.6.6.1.m1.1.1.1.1.3.cmml">6</mn></mrow><mo id="S4.T4.6.6.1.m1.2.2.2.3" mathsize="82%" xref="S4.T4.6.6.1.m1.2.2.3a.cmml">,</mo><mrow id="S4.T4.6.6.1.m1.2.2.2.2" xref="S4.T4.6.6.1.m1.2.2.2.2.cmml"><mi id="S4.T4.6.6.1.m1.2.2.2.2.2" mathsize="82%" xref="S4.T4.6.6.1.m1.2.2.2.2.2.cmml">j</mi><mo id="S4.T4.6.6.1.m1.2.2.2.2.1" mathsize="82%" xref="S4.T4.6.6.1.m1.2.2.2.2.1.cmml">=</mo><mn id="S4.T4.6.6.1.m1.2.2.2.2.3" mathsize="82%" xref="S4.T4.6.6.1.m1.2.2.2.2.3.cmml">4</mn></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.6.6.1.m1.2b"><apply id="S4.T4.6.6.1.m1.2.2.3.cmml" xref="S4.T4.6.6.1.m1.2.2.2"><csymbol cd="ambiguous" id="S4.T4.6.6.1.m1.2.2.3a.cmml" xref="S4.T4.6.6.1.m1.2.2.2.3">formulae-sequence</csymbol><apply id="S4.T4.6.6.1.m1.1.1.1.1.cmml" xref="S4.T4.6.6.1.m1.1.1.1.1"><eq id="S4.T4.6.6.1.m1.1.1.1.1.1.cmml" xref="S4.T4.6.6.1.m1.1.1.1.1.1"></eq><ci id="S4.T4.6.6.1.m1.1.1.1.1.2.cmml" xref="S4.T4.6.6.1.m1.1.1.1.1.2">𝑁</ci><cn id="S4.T4.6.6.1.m1.1.1.1.1.3.cmml" type="integer" xref="S4.T4.6.6.1.m1.1.1.1.1.3">6</cn></apply><apply id="S4.T4.6.6.1.m1.2.2.2.2.cmml" xref="S4.T4.6.6.1.m1.2.2.2.2"><eq id="S4.T4.6.6.1.m1.2.2.2.2.1.cmml" xref="S4.T4.6.6.1.m1.2.2.2.2.1"></eq><ci id="S4.T4.6.6.1.m1.2.2.2.2.2.cmml" xref="S4.T4.6.6.1.m1.2.2.2.2.2">𝑗</ci><cn id="S4.T4.6.6.1.m1.2.2.2.2.3.cmml" type="integer" xref="S4.T4.6.6.1.m1.2.2.2.2.3">4</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.6.6.1.m1.2c">N=6,j=4</annotation><annotation encoding="application/x-llamapun" id="S4.T4.6.6.1.m1.2d">italic_N = 6 , italic_j = 4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.6.2" style="background-color:#FFE6C8;"><span class="ltx_text" id="S4.T4.6.6.2.1" style="font-size:82%;background-color:#FFE6C8;">16.56</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.6.6.3" style="background-color:#FFE6C8;"><span class="ltx_text" id="S4.T4.6.6.3.1" style="font-size:82%;background-color:#FFE6C8;">0.5104</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.6.6.4" style="background-color:#FFE6C8;"><span class="ltx_text" id="S4.T4.6.6.4.1" style="font-size:82%;background-color:#FFE6C8;">0.4868</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.7">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.7.7.1">
<math alttext="N=6,j=6" class="ltx_Math" display="inline" id="S4.T4.7.7.1.m1.2"><semantics id="S4.T4.7.7.1.m1.2a"><mrow id="S4.T4.7.7.1.m1.2.2.2" xref="S4.T4.7.7.1.m1.2.2.3.cmml"><mrow id="S4.T4.7.7.1.m1.1.1.1.1" xref="S4.T4.7.7.1.m1.1.1.1.1.cmml"><mi id="S4.T4.7.7.1.m1.1.1.1.1.2" mathsize="82%" xref="S4.T4.7.7.1.m1.1.1.1.1.2.cmml">N</mi><mo id="S4.T4.7.7.1.m1.1.1.1.1.1" mathsize="82%" xref="S4.T4.7.7.1.m1.1.1.1.1.1.cmml">=</mo><mn id="S4.T4.7.7.1.m1.1.1.1.1.3" mathsize="82%" xref="S4.T4.7.7.1.m1.1.1.1.1.3.cmml">6</mn></mrow><mo id="S4.T4.7.7.1.m1.2.2.2.3" mathsize="82%" xref="S4.T4.7.7.1.m1.2.2.3a.cmml">,</mo><mrow id="S4.T4.7.7.1.m1.2.2.2.2" xref="S4.T4.7.7.1.m1.2.2.2.2.cmml"><mi id="S4.T4.7.7.1.m1.2.2.2.2.2" mathsize="82%" xref="S4.T4.7.7.1.m1.2.2.2.2.2.cmml">j</mi><mo id="S4.T4.7.7.1.m1.2.2.2.2.1" mathsize="82%" xref="S4.T4.7.7.1.m1.2.2.2.2.1.cmml">=</mo><mn id="S4.T4.7.7.1.m1.2.2.2.2.3" mathsize="82%" xref="S4.T4.7.7.1.m1.2.2.2.2.3.cmml">6</mn></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.7.7.1.m1.2b"><apply id="S4.T4.7.7.1.m1.2.2.3.cmml" xref="S4.T4.7.7.1.m1.2.2.2"><csymbol cd="ambiguous" id="S4.T4.7.7.1.m1.2.2.3a.cmml" xref="S4.T4.7.7.1.m1.2.2.2.3">formulae-sequence</csymbol><apply id="S4.T4.7.7.1.m1.1.1.1.1.cmml" xref="S4.T4.7.7.1.m1.1.1.1.1"><eq id="S4.T4.7.7.1.m1.1.1.1.1.1.cmml" xref="S4.T4.7.7.1.m1.1.1.1.1.1"></eq><ci id="S4.T4.7.7.1.m1.1.1.1.1.2.cmml" xref="S4.T4.7.7.1.m1.1.1.1.1.2">𝑁</ci><cn id="S4.T4.7.7.1.m1.1.1.1.1.3.cmml" type="integer" xref="S4.T4.7.7.1.m1.1.1.1.1.3">6</cn></apply><apply id="S4.T4.7.7.1.m1.2.2.2.2.cmml" xref="S4.T4.7.7.1.m1.2.2.2.2"><eq id="S4.T4.7.7.1.m1.2.2.2.2.1.cmml" xref="S4.T4.7.7.1.m1.2.2.2.2.1"></eq><ci id="S4.T4.7.7.1.m1.2.2.2.2.2.cmml" xref="S4.T4.7.7.1.m1.2.2.2.2.2">𝑗</ci><cn id="S4.T4.7.7.1.m1.2.2.2.2.3.cmml" type="integer" xref="S4.T4.7.7.1.m1.2.2.2.2.3">6</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.7.7.1.m1.2c">N=6,j=6</annotation><annotation encoding="application/x-llamapun" id="S4.T4.7.7.1.m1.2d">italic_N = 6 , italic_j = 6</annotation></semantics></math><span class="ltx_text" id="S4.T4.7.7.1.1" style="font-size:82%;"> (ours)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.7.7.2" style="background-color:#FFC8C8;"><span class="ltx_text ltx_font_bold" id="S4.T4.7.7.2.1" style="font-size:82%;background-color:#FFC8C8;">16.80</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T4.7.7.3" style="background-color:#FFC8C8;"><span class="ltx_text ltx_font_bold" id="S4.T4.7.7.3.1" style="font-size:82%;background-color:#FFC8C8;">0.5170</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T4.7.7.4" style="background-color:#FFC8C8;"><span class="ltx_text ltx_font_bold" id="S4.T4.7.7.4.1" style="font-size:82%;background-color:#FFC8C8;">0.4750</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the specific video clips used for evaluating 4D reconstruction performance.  For each dataset (iPhone and HyperNeRF), it shows the scene name, the starting frame number, the ending frame number, and the total number of frames in the selected clip.  These clips were chosen to have significant perspective differences from the test viewpoints, thus highlighting the method's ability to handle challenging conditions.
> <details>
> <summary>read the caption</summary>
> Table 7: Details of the datasets we test for 4D Reconstrcution.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.F8.13">
<tr class="ltx_tr" id="S4.F8.5.5">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.F8.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="68" id="S4.F8.1.1.1.g1" src="extracted/6362965/figure/ablation_iteration/0/chicken_cropped.png" width="60"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F8.2.2.2"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="68" id="S4.F8.2.2.2.g1" src="extracted/6362965/figure/ablation_iteration/1/chicken_cropped.png" width="60"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F8.3.3.3"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="68" id="S4.F8.3.3.3.g1" src="extracted/6362965/figure/ablation_iteration/2/chicken_cropped.png" width="60"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F8.4.4.4"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="68" id="S4.F8.4.4.4.g1" src="extracted/6362965/figure/ablation_iteration/4/chicken_cropped.png" width="60"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F8.5.5.5"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="68" id="S4.F8.5.5.5.g1" src="extracted/6362965/figure/ablation_iteration/6/chicken_cropped.png" width="60"/></td>
</tr>
<tr class="ltx_tr" id="S4.F8.13.13">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.F8.13.13.9"><span class="ltx_text" id="S4.F8.13.13.9.1" style="font-size:80%;">w/o view aug.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F8.7.7.2">
<table class="ltx_tabular ltx_align_top" id="S4.F8.7.7.2.2">
<tr class="ltx_tr" id="S4.F8.6.6.1.1.1">
<td class="ltx_td ltx_align_center" id="S4.F8.6.6.1.1.1.1" style="padding-bottom:-1.0pt;">
<math alttext="N=1" class="ltx_Math" display="inline" id="S4.F8.6.6.1.1.1.1.m1.1"><semantics id="S4.F8.6.6.1.1.1.1.m1.1a"><mrow id="S4.F8.6.6.1.1.1.1.m1.1.1" xref="S4.F8.6.6.1.1.1.1.m1.1.1.cmml"><mi id="S4.F8.6.6.1.1.1.1.m1.1.1.2" mathsize="80%" xref="S4.F8.6.6.1.1.1.1.m1.1.1.2.cmml">N</mi><mo id="S4.F8.6.6.1.1.1.1.m1.1.1.1" mathsize="80%" xref="S4.F8.6.6.1.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S4.F8.6.6.1.1.1.1.m1.1.1.3" mathsize="80%" xref="S4.F8.6.6.1.1.1.1.m1.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.F8.6.6.1.1.1.1.m1.1b"><apply id="S4.F8.6.6.1.1.1.1.m1.1.1.cmml" xref="S4.F8.6.6.1.1.1.1.m1.1.1"><eq id="S4.F8.6.6.1.1.1.1.m1.1.1.1.cmml" xref="S4.F8.6.6.1.1.1.1.m1.1.1.1"></eq><ci id="S4.F8.6.6.1.1.1.1.m1.1.1.2.cmml" xref="S4.F8.6.6.1.1.1.1.m1.1.1.2">𝑁</ci><cn id="S4.F8.6.6.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.F8.6.6.1.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.F8.6.6.1.1.1.1.m1.1c">N=1</annotation><annotation encoding="application/x-llamapun" id="S4.F8.6.6.1.1.1.1.m1.1d">italic_N = 1</annotation></semantics></math><span class="ltx_text" id="S4.F8.6.6.1.1.1.1.1" style="font-size:80%;">,</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.F8.7.7.2.2.2">
<td class="ltx_td ltx_align_center" id="S4.F8.7.7.2.2.2.1"><math alttext="j=1" class="ltx_Math" display="inline" id="S4.F8.7.7.2.2.2.1.m1.1"><semantics id="S4.F8.7.7.2.2.2.1.m1.1a"><mrow id="S4.F8.7.7.2.2.2.1.m1.1.1" xref="S4.F8.7.7.2.2.2.1.m1.1.1.cmml"><mi id="S4.F8.7.7.2.2.2.1.m1.1.1.2" mathsize="80%" xref="S4.F8.7.7.2.2.2.1.m1.1.1.2.cmml">j</mi><mo id="S4.F8.7.7.2.2.2.1.m1.1.1.1" mathsize="80%" xref="S4.F8.7.7.2.2.2.1.m1.1.1.1.cmml">=</mo><mn id="S4.F8.7.7.2.2.2.1.m1.1.1.3" mathsize="80%" xref="S4.F8.7.7.2.2.2.1.m1.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.F8.7.7.2.2.2.1.m1.1b"><apply id="S4.F8.7.7.2.2.2.1.m1.1.1.cmml" xref="S4.F8.7.7.2.2.2.1.m1.1.1"><eq id="S4.F8.7.7.2.2.2.1.m1.1.1.1.cmml" xref="S4.F8.7.7.2.2.2.1.m1.1.1.1"></eq><ci id="S4.F8.7.7.2.2.2.1.m1.1.1.2.cmml" xref="S4.F8.7.7.2.2.2.1.m1.1.1.2">𝑗</ci><cn id="S4.F8.7.7.2.2.2.1.m1.1.1.3.cmml" type="integer" xref="S4.F8.7.7.2.2.2.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.F8.7.7.2.2.2.1.m1.1c">j=1</annotation><annotation encoding="application/x-llamapun" id="S4.F8.7.7.2.2.2.1.m1.1d">italic_j = 1</annotation></semantics></math></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F8.9.9.4">
<table class="ltx_tabular ltx_align_top" id="S4.F8.9.9.4.2">
<tr class="ltx_tr" id="S4.F8.8.8.3.1.1">
<td class="ltx_td ltx_align_center" id="S4.F8.8.8.3.1.1.1" style="padding-bottom:-1.0pt;">
<math alttext="N=6" class="ltx_Math" display="inline" id="S4.F8.8.8.3.1.1.1.m1.1"><semantics id="S4.F8.8.8.3.1.1.1.m1.1a"><mrow id="S4.F8.8.8.3.1.1.1.m1.1.1" xref="S4.F8.8.8.3.1.1.1.m1.1.1.cmml"><mi id="S4.F8.8.8.3.1.1.1.m1.1.1.2" mathsize="80%" xref="S4.F8.8.8.3.1.1.1.m1.1.1.2.cmml">N</mi><mo id="S4.F8.8.8.3.1.1.1.m1.1.1.1" mathsize="80%" xref="S4.F8.8.8.3.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S4.F8.8.8.3.1.1.1.m1.1.1.3" mathsize="80%" xref="S4.F8.8.8.3.1.1.1.m1.1.1.3.cmml">6</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.F8.8.8.3.1.1.1.m1.1b"><apply id="S4.F8.8.8.3.1.1.1.m1.1.1.cmml" xref="S4.F8.8.8.3.1.1.1.m1.1.1"><eq id="S4.F8.8.8.3.1.1.1.m1.1.1.1.cmml" xref="S4.F8.8.8.3.1.1.1.m1.1.1.1"></eq><ci id="S4.F8.8.8.3.1.1.1.m1.1.1.2.cmml" xref="S4.F8.8.8.3.1.1.1.m1.1.1.2">𝑁</ci><cn id="S4.F8.8.8.3.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.F8.8.8.3.1.1.1.m1.1.1.3">6</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.F8.8.8.3.1.1.1.m1.1c">N=6</annotation><annotation encoding="application/x-llamapun" id="S4.F8.8.8.3.1.1.1.m1.1d">italic_N = 6</annotation></semantics></math><span class="ltx_text" id="S4.F8.8.8.3.1.1.1.1" style="font-size:80%;">,</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.F8.9.9.4.2.2">
<td class="ltx_td ltx_align_center" id="S4.F8.9.9.4.2.2.1"><math alttext="j=2" class="ltx_Math" display="inline" id="S4.F8.9.9.4.2.2.1.m1.1"><semantics id="S4.F8.9.9.4.2.2.1.m1.1a"><mrow id="S4.F8.9.9.4.2.2.1.m1.1.1" xref="S4.F8.9.9.4.2.2.1.m1.1.1.cmml"><mi id="S4.F8.9.9.4.2.2.1.m1.1.1.2" mathsize="80%" xref="S4.F8.9.9.4.2.2.1.m1.1.1.2.cmml">j</mi><mo id="S4.F8.9.9.4.2.2.1.m1.1.1.1" mathsize="80%" xref="S4.F8.9.9.4.2.2.1.m1.1.1.1.cmml">=</mo><mn id="S4.F8.9.9.4.2.2.1.m1.1.1.3" mathsize="80%" xref="S4.F8.9.9.4.2.2.1.m1.1.1.3.cmml">2</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.F8.9.9.4.2.2.1.m1.1b"><apply id="S4.F8.9.9.4.2.2.1.m1.1.1.cmml" xref="S4.F8.9.9.4.2.2.1.m1.1.1"><eq id="S4.F8.9.9.4.2.2.1.m1.1.1.1.cmml" xref="S4.F8.9.9.4.2.2.1.m1.1.1.1"></eq><ci id="S4.F8.9.9.4.2.2.1.m1.1.1.2.cmml" xref="S4.F8.9.9.4.2.2.1.m1.1.1.2">𝑗</ci><cn id="S4.F8.9.9.4.2.2.1.m1.1.1.3.cmml" type="integer" xref="S4.F8.9.9.4.2.2.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.F8.9.9.4.2.2.1.m1.1c">j=2</annotation><annotation encoding="application/x-llamapun" id="S4.F8.9.9.4.2.2.1.m1.1d">italic_j = 2</annotation></semantics></math></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F8.11.11.6">
<table class="ltx_tabular ltx_align_top" id="S4.F8.11.11.6.2">
<tr class="ltx_tr" id="S4.F8.10.10.5.1.1">
<td class="ltx_td ltx_align_center" id="S4.F8.10.10.5.1.1.1" style="padding-bottom:-1.0pt;">
<math alttext="N=6" class="ltx_Math" display="inline" id="S4.F8.10.10.5.1.1.1.m1.1"><semantics id="S4.F8.10.10.5.1.1.1.m1.1a"><mrow id="S4.F8.10.10.5.1.1.1.m1.1.1" xref="S4.F8.10.10.5.1.1.1.m1.1.1.cmml"><mi id="S4.F8.10.10.5.1.1.1.m1.1.1.2" mathsize="80%" xref="S4.F8.10.10.5.1.1.1.m1.1.1.2.cmml">N</mi><mo id="S4.F8.10.10.5.1.1.1.m1.1.1.1" mathsize="80%" xref="S4.F8.10.10.5.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S4.F8.10.10.5.1.1.1.m1.1.1.3" mathsize="80%" xref="S4.F8.10.10.5.1.1.1.m1.1.1.3.cmml">6</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.F8.10.10.5.1.1.1.m1.1b"><apply id="S4.F8.10.10.5.1.1.1.m1.1.1.cmml" xref="S4.F8.10.10.5.1.1.1.m1.1.1"><eq id="S4.F8.10.10.5.1.1.1.m1.1.1.1.cmml" xref="S4.F8.10.10.5.1.1.1.m1.1.1.1"></eq><ci id="S4.F8.10.10.5.1.1.1.m1.1.1.2.cmml" xref="S4.F8.10.10.5.1.1.1.m1.1.1.2">𝑁</ci><cn id="S4.F8.10.10.5.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.F8.10.10.5.1.1.1.m1.1.1.3">6</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.F8.10.10.5.1.1.1.m1.1c">N=6</annotation><annotation encoding="application/x-llamapun" id="S4.F8.10.10.5.1.1.1.m1.1d">italic_N = 6</annotation></semantics></math><span class="ltx_text" id="S4.F8.10.10.5.1.1.1.1" style="font-size:80%;">,</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.F8.11.11.6.2.2">
<td class="ltx_td ltx_align_center" id="S4.F8.11.11.6.2.2.1"><math alttext="j=4" class="ltx_Math" display="inline" id="S4.F8.11.11.6.2.2.1.m1.1"><semantics id="S4.F8.11.11.6.2.2.1.m1.1a"><mrow id="S4.F8.11.11.6.2.2.1.m1.1.1" xref="S4.F8.11.11.6.2.2.1.m1.1.1.cmml"><mi id="S4.F8.11.11.6.2.2.1.m1.1.1.2" mathsize="80%" xref="S4.F8.11.11.6.2.2.1.m1.1.1.2.cmml">j</mi><mo id="S4.F8.11.11.6.2.2.1.m1.1.1.1" mathsize="80%" xref="S4.F8.11.11.6.2.2.1.m1.1.1.1.cmml">=</mo><mn id="S4.F8.11.11.6.2.2.1.m1.1.1.3" mathsize="80%" xref="S4.F8.11.11.6.2.2.1.m1.1.1.3.cmml">4</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.F8.11.11.6.2.2.1.m1.1b"><apply id="S4.F8.11.11.6.2.2.1.m1.1.1.cmml" xref="S4.F8.11.11.6.2.2.1.m1.1.1"><eq id="S4.F8.11.11.6.2.2.1.m1.1.1.1.cmml" xref="S4.F8.11.11.6.2.2.1.m1.1.1.1"></eq><ci id="S4.F8.11.11.6.2.2.1.m1.1.1.2.cmml" xref="S4.F8.11.11.6.2.2.1.m1.1.1.2">𝑗</ci><cn id="S4.F8.11.11.6.2.2.1.m1.1.1.3.cmml" type="integer" xref="S4.F8.11.11.6.2.2.1.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.F8.11.11.6.2.2.1.m1.1c">j=4</annotation><annotation encoding="application/x-llamapun" id="S4.F8.11.11.6.2.2.1.m1.1d">italic_j = 4</annotation></semantics></math></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F8.13.13.8">
<table class="ltx_tabular ltx_align_top" id="S4.F8.13.13.8.2">
<tr class="ltx_tr" id="S4.F8.12.12.7.1.1">
<td class="ltx_td ltx_align_center" id="S4.F8.12.12.7.1.1.1" style="padding-bottom:-1.0pt;">
<math alttext="N=6" class="ltx_Math" display="inline" id="S4.F8.12.12.7.1.1.1.m1.1"><semantics id="S4.F8.12.12.7.1.1.1.m1.1a"><mrow id="S4.F8.12.12.7.1.1.1.m1.1.1" xref="S4.F8.12.12.7.1.1.1.m1.1.1.cmml"><mi id="S4.F8.12.12.7.1.1.1.m1.1.1.2" mathsize="80%" xref="S4.F8.12.12.7.1.1.1.m1.1.1.2.cmml">N</mi><mo id="S4.F8.12.12.7.1.1.1.m1.1.1.1" mathsize="80%" xref="S4.F8.12.12.7.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S4.F8.12.12.7.1.1.1.m1.1.1.3" mathsize="80%" xref="S4.F8.12.12.7.1.1.1.m1.1.1.3.cmml">6</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.F8.12.12.7.1.1.1.m1.1b"><apply id="S4.F8.12.12.7.1.1.1.m1.1.1.cmml" xref="S4.F8.12.12.7.1.1.1.m1.1.1"><eq id="S4.F8.12.12.7.1.1.1.m1.1.1.1.cmml" xref="S4.F8.12.12.7.1.1.1.m1.1.1.1"></eq><ci id="S4.F8.12.12.7.1.1.1.m1.1.1.2.cmml" xref="S4.F8.12.12.7.1.1.1.m1.1.1.2">𝑁</ci><cn id="S4.F8.12.12.7.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.F8.12.12.7.1.1.1.m1.1.1.3">6</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.F8.12.12.7.1.1.1.m1.1c">N=6</annotation><annotation encoding="application/x-llamapun" id="S4.F8.12.12.7.1.1.1.m1.1d">italic_N = 6</annotation></semantics></math><span class="ltx_text" id="S4.F8.12.12.7.1.1.1.1" style="font-size:80%;">,</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.F8.13.13.8.2.2">
<td class="ltx_td ltx_align_center" id="S4.F8.13.13.8.2.2.1"><math alttext="j=6" class="ltx_Math" display="inline" id="S4.F8.13.13.8.2.2.1.m1.1"><semantics id="S4.F8.13.13.8.2.2.1.m1.1a"><mrow id="S4.F8.13.13.8.2.2.1.m1.1.1" xref="S4.F8.13.13.8.2.2.1.m1.1.1.cmml"><mi id="S4.F8.13.13.8.2.2.1.m1.1.1.2" mathsize="80%" xref="S4.F8.13.13.8.2.2.1.m1.1.1.2.cmml">j</mi><mo id="S4.F8.13.13.8.2.2.1.m1.1.1.1" mathsize="80%" xref="S4.F8.13.13.8.2.2.1.m1.1.1.1.cmml">=</mo><mn id="S4.F8.13.13.8.2.2.1.m1.1.1.3" mathsize="80%" xref="S4.F8.13.13.8.2.2.1.m1.1.1.3.cmml">6</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.F8.13.13.8.2.2.1.m1.1b"><apply id="S4.F8.13.13.8.2.2.1.m1.1.1.cmml" xref="S4.F8.13.13.8.2.2.1.m1.1.1"><eq id="S4.F8.13.13.8.2.2.1.m1.1.1.1.cmml" xref="S4.F8.13.13.8.2.2.1.m1.1.1.1"></eq><ci id="S4.F8.13.13.8.2.2.1.m1.1.1.2.cmml" xref="S4.F8.13.13.8.2.2.1.m1.1.1.2">𝑗</ci><cn id="S4.F8.13.13.8.2.2.1.m1.1.1.3.cmml" type="integer" xref="S4.F8.13.13.8.2.2.1.m1.1.1.3">6</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.F8.13.13.8.2.2.1.m1.1c">j=6</annotation><annotation encoding="application/x-llamapun" id="S4.F8.13.13.8.2.2.1.m1.1d">italic_j = 6</annotation></semantics></math></td>
</tr>
</table>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of two different backbones used for 4D scene reconstruction in the Vivid4D model: 4D GS and Motion Field.  The results are evaluated on the iPhone and HyperNeRF datasets, showing the performance of each backbone in terms of reconstruction quality metrics (mPSNR, mSSIM, and mLPIPS).  This allows for an assessment of the effectiveness of the chosen Motion Field backbone in Vivid4D.
> <details>
> <summary>read the caption</summary>
> Table 8: Quantitative ablation study on reconstruction backbones on iPhone dataset and HyperNeRF dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_top" id="S4.F8.7.7.2.2">
<tr class="ltx_tr" id="S4.F8.6.6.1.1.1">
<td class="ltx_td ltx_align_center" id="S4.F8.6.6.1.1.1.1" style="padding-bottom:-1.0pt;">
<math alttext="N=1" class="ltx_Math" display="inline" id="S4.F8.6.6.1.1.1.1.m1.1"><semantics id="S4.F8.6.6.1.1.1.1.m1.1a"><mrow id="S4.F8.6.6.1.1.1.1.m1.1.1" xref="S4.F8.6.6.1.1.1.1.m1.1.1.cmml"><mi id="S4.F8.6.6.1.1.1.1.m1.1.1.2" mathsize="80%" xref="S4.F8.6.6.1.1.1.1.m1.1.1.2.cmml">N</mi><mo id="S4.F8.6.6.1.1.1.1.m1.1.1.1" mathsize="80%" xref="S4.F8.6.6.1.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S4.F8.6.6.1.1.1.1.m1.1.1.3" mathsize="80%" xref="S4.F8.6.6.1.1.1.1.m1.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.F8.6.6.1.1.1.1.m1.1b"><apply id="S4.F8.6.6.1.1.1.1.m1.1.1.cmml" xref="S4.F8.6.6.1.1.1.1.m1.1.1"><eq id="S4.F8.6.6.1.1.1.1.m1.1.1.1.cmml" xref="S4.F8.6.6.1.1.1.1.m1.1.1.1"></eq><ci id="S4.F8.6.6.1.1.1.1.m1.1.1.2.cmml" xref="S4.F8.6.6.1.1.1.1.m1.1.1.2">𝑁</ci><cn id="S4.F8.6.6.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.F8.6.6.1.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.F8.6.6.1.1.1.1.m1.1c">N=1</annotation><annotation encoding="application/x-llamapun" id="S4.F8.6.6.1.1.1.1.m1.1d">italic_N = 1</annotation></semantics></math><span class="ltx_text" id="S4.F8.6.6.1.1.1.1.1" style="font-size:80%;">,</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.F8.7.7.2.2.2">
<td class="ltx_td ltx_align_center" id="S4.F8.7.7.2.2.2.1"><math alttext="j=1" class="ltx_Math" display="inline" id="S4.F8.7.7.2.2.2.1.m1.1"><semantics id="S4.F8.7.7.2.2.2.1.m1.1a"><mrow id="S4.F8.7.7.2.2.2.1.m1.1.1" xref="S4.F8.7.7.2.2.2.1.m1.1.1.cmml"><mi id="S4.F8.7.7.2.2.2.1.m1.1.1.2" mathsize="80%" xref="S4.F8.7.7.2.2.2.1.m1.1.1.2.cmml">j</mi><mo id="S4.F8.7.7.2.2.2.1.m1.1.1.1" mathsize="80%" xref="S4.F8.7.7.2.2.2.1.m1.1.1.1.cmml">=</mo><mn id="S4.F8.7.7.2.2.2.1.m1.1.1.3" mathsize="80%" xref="S4.F8.7.7.2.2.2.1.m1.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.F8.7.7.2.2.2.1.m1.1b"><apply id="S4.F8.7.7.2.2.2.1.m1.1.1.cmml" xref="S4.F8.7.7.2.2.2.1.m1.1.1"><eq id="S4.F8.7.7.2.2.2.1.m1.1.1.1.cmml" xref="S4.F8.7.7.2.2.2.1.m1.1.1.1"></eq><ci id="S4.F8.7.7.2.2.2.1.m1.1.1.2.cmml" xref="S4.F8.7.7.2.2.2.1.m1.1.1.2">𝑗</ci><cn id="S4.F8.7.7.2.2.2.1.m1.1.1.3.cmml" type="integer" xref="S4.F8.7.7.2.2.2.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.F8.7.7.2.2.2.1.m1.1c">j=1</annotation><annotation encoding="application/x-llamapun" id="S4.F8.7.7.2.2.2.1.m1.1d">italic_j = 1</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different novel view-aware video inpainting methods. The comparison is performed on 5,000 processed videos from the OpenVid-1M dataset.  The table evaluates the performance of each method using four metrics: PSNR, SSIM, LPIPS, and FVD.  Higher PSNR and SSIM values indicate better image quality, while lower LPIPS and FVD values suggest improved perceptual similarity and temporal consistency, respectively.
> <details>
> <summary>read the caption</summary>
> Table 9: Quantitative comparison of novel view-aware video in-painting on our processed 5⁢K5𝐾5K5 italic_K videos from OpenVid-1M.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.11092/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11092/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11092/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11092/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11092/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11092/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11092/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11092/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11092/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11092/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11092/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11092/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11092/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11092/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11092/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11092/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11092/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11092/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}