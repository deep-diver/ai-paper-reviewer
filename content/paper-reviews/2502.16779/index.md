---
title: "Unposed Sparse Views Room Layout Reconstruction in the Age of Pretrain Model"
summary: "Plane-DUSt3R:  Leveraging pre-trained models for unposed sparse views room layout reconstruction, enhancing robustness and generalization."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Scene Understanding", "🏢 Hong Kong Center for Construction Robotics, The Hong Kong University of Science and Technology",]
showSummary: true
date: 2025-02-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.16779 {{< /keyword >}}
{{< keyword icon="writer" >}} Yaxuan Huang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.16779" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.16779" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.16779/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

3D room layout estimation uses multiple images but suffers from multi-view geometry complexities, needing camera info, image matching, and triangulation. Recent 3D models like **DUSt3R** changed things from multi-step to single-step processing. Still, multi-view datasets are scarce, leading to an open problem: **wide-baseline sparse-view SfM**. New models offer solutions. To that end, This paper uses DUSt3R for multi-view room layout, a natural solution. 



This paper introduces **Plane-DUSt3R**, a new method leveraging DUSt3R for multi-view room layout. It fine-tunes DUSt3R on **Structure3D** to estimate structural planes, generating uniform results with one post-processing step and 2D detections. Unlike single-view methods, Plane-DUSt3R handles multiple views, streamlining the process and reducing errors. It improves on synthetic datasets and proves robust in-the-wild with different image styles.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces Plane-DUSt3R, a novel method for multi-view room layout estimation using the DUSt3R framework. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Achieves state-of-the-art performance on the Structure3D dataset and demonstrates strong generalization to in-the-wild and cartoon data. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Presents the first pipeline capable of unposed multi-view (perspective images) layout estimation, addressing a natural yet underexplored setting. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel **multi-view layout estimation** method, offering a new approach to 3D scene understanding and **robotic navigation**. It addresses the challenges of **sparse-view SfM** and generalizes well to diverse datasets, opening new research directions in **unposed multi-view 3D reconstruction**.

------
#### Visual Insights



![](https://arxiv.org/html/2502.16779/x1.png)

> 🔼 Figure 1 showcases the effectiveness of a novel room layout estimation method.  The figure visually demonstrates the method's ability to accurately reconstruct room layouts from multiple, unconstrained indoor images.  Importantly, it highlights the model's robustness and generalization capabilities by successfully processing both realistic images from in-the-wild datasets (as seen in the left image group) and significantly different, cartoon-style images from an out-of-domain dataset (as seen in the right image group).  This showcases the method's ability to work effectively across diverse image styles and data sources.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present a novel method for estimating room layouts from a set of unconstrained indoor images. Our approach demonstrates robust generalization capabilities, performing well on both in-the-wild datasets (Zhou et al., 2018) and out-of-domain cartoon (Weber et al., 2024) data.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.6.6.7"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.7.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1">re-IoU(%)<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.1">re-PE(%) <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.1.m1.1"><semantics id="S4.T1.2.2.2.1.m1.1a"><mo id="S4.T1.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T1.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.1.m1.1b"><ci id="S4.T1.2.2.2.1.m1.1.1.cmml" xref="S4.T1.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.3.3.3"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.3.1">re-EE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.1.m1.1"><semantics id="S4.T1.3.3.3.1.m1.1a"><mo id="S4.T1.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T1.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.1.m1.1b"><ci id="S4.T1.3.3.3.1.m1.1.1.cmml" xref="S4.T1.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.4.4.4"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.4.1">re-RMSE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.1.m1.1"><semantics id="S4.T1.4.4.4.1.m1.1a"><mo id="S4.T1.4.4.4.1.m1.1.1" stretchy="false" xref="S4.T1.4.4.4.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.1.m1.1b"><ci id="S4.T1.4.4.4.1.m1.1.1.cmml" xref="S4.T1.4.4.4.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.5.5.5"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.5.1">3D-precision(%)<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.5.5.5.1.m1.1"><semantics id="S4.T1.5.5.5.1.m1.1a"><mo id="S4.T1.5.5.5.1.m1.1.1" stretchy="false" xref="S4.T1.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.1.m1.1b"><ci id="S4.T1.5.5.5.1.m1.1.1.cmml" xref="S4.T1.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.6.6.6"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.6.1">3D-recall(%)<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.6.6.6.1.m1.1"><semantics id="S4.T1.6.6.6.1.m1.1a"><mo id="S4.T1.6.6.6.1.m1.1.1" stretchy="false" xref="S4.T1.6.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.1.m1.1b"><ci id="S4.T1.6.6.6.1.m1.1.1.cmml" xref="S4.T1.6.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.1.m1.1d">↑</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.6.7.1.1">Noncuboid + MASt3R</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.7.1.2">74.51</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.7.1.3">8.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.7.1.4">12.72</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.7.1.5">0.4831</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.7.1.6">37.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.7.1.7">43.39</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.8.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.8.2.1">Noncuboid + GT pose</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.8.2.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.8.2.2.1">75.93</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.8.2.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.8.2.3.1">7.97</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.8.2.4">11.37</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.8.2.5">0.4457</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.8.2.6">46.96</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.8.2.7"><span class="ltx_text ltx_font_bold" id="S4.T1.6.8.2.7.1">50.59</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.9.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.9.3.1">Ours (metric)</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.3.2">75.34</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.3.3">8.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.3.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.9.3.4.1">10.83</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.3.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.9.3.5.1">0.4388</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.3.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.9.3.6.1">48.98</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.3.7">45.35</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.10.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.6.10.4.1">Ours (aligned)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.10.4.2"><span class="ltx_text ltx_font_bold" id="S4.T1.6.10.4.2.1">76.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.10.4.3"><span class="ltx_text ltx_font_bold" id="S4.T1.6.10.4.3.1">7.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.10.4.4"><span class="ltx_text ltx_font_bold" id="S4.T1.6.10.4.4.1">9.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.10.4.5"><span class="ltx_text ltx_font_bold" id="S4.T1.6.10.4.5.1">0.4099</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.10.4.6"><span class="ltx_text ltx_font_bold" id="S4.T1.6.10.4.6.1">52.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.10.4.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.10.4.7.1">48.37</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comprehensive quantitative comparison of different methods for 3D room layout estimation on the Structure3D dataset.  It shows the performance of various methods across multiple metrics, including 2D metrics (Intersection over Union (IoU), Pixel Error (PE), Edge Error (EE), and Root Mean Square Error (RMSE)) and 3D metrics (3D precision and 3D recall). The table enables a detailed analysis of the accuracy and effectiveness of each method in predicting room layouts.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative results on Structure3D dataset.
> </details>





### In-depth insights


#### Sparse View SfM
**Sparse View Structure from Motion (SfM)** presents significant challenges in 3D reconstruction. It is primarily due to the limited data available. This makes accurate camera pose estimation and feature matching difficult. Traditional SfM pipelines often struggle with sparse views. They heavily rely on robust feature detection and matching across multiple images. The challenge arises from the potential for ambiguous or incorrect matches. Such errors can lead to drifting and inaccurate reconstructions. Recent advancements in deep learning offer promising solutions for sparse view SfM. The advancements include neural networks capable of inferring depth and camera pose from limited inputs. These methods often utilize learned priors and regularization techniques to constrain the reconstruction process. This helps to mitigate the ambiguities inherent in sparse data. Key research directions involve developing robust feature descriptors that are invariant to viewpoint changes. Effective strategies for outlier rejection are also important, especially when dealing with noisy or incomplete data. Additionally, exploring techniques for incorporating semantic information. This can further improve the accuracy and completeness of reconstructions from sparse views.

#### Plane-DUSt3R
**Plane-DUSt3R** is introduced as a novel method for multi-view room layout estimation, leveraging the 3D foundation model **DUSt3R**. It **incorporates the DUSt3R framework and fine-tunes** on a room layout dataset (Structure3D) with a modified objective to estimate structural planes.  By generating uniform and parsimonious results, **Plane-DUSt3R enables room layout estimation with only a single post-processing step and 2D detection results**. Unlike previous methods that rely on single-perspective or panorama image, **Plane-DUSt3R extends the setting to handle multiple-perspective images.** It offers a streamlined, end-to-end solution that simplifies the process and reduces error accumulation, demonstrating state-of-the-art performance on synthetic datasets and robustness on in-the-wild data with diverse image styles, including cartoons.

#### No Camera Poses
The idea of "no camera poses" in the context of room layout reconstruction represents a significant leap in the field. It implies the ability to infer the 3D structure of a room from multiple images **without needing prior knowledge of the camera's position or orientation** for each image. This is valuable because in real-world scenarios, obtaining precise camera poses can be difficult or impossible. This approach usually leverages advanced techniques such as **simultaneous localization and mapping (SLAM)** or **structure from motion (SFM)**, potentially enhanced by deep learning to estimate camera parameters and the 3D layout jointly. By eliminating the need for pre-calibration, this method increases the flexibility and applicability of room layout reconstruction systems, especially in unstructured environments or when dealing with legacy image data. The success of such methods hinges on **robust algorithms capable of handling noisy or incomplete data** and **accurately estimating the geometric relationships** between different viewpoints.

#### Plane Extraction
While the provided document doesn't explicitly have a 'Plane Extraction' heading, the paper's core revolves around reconstructing room layouts by identifying and utilizing planar surfaces.  The method, Plane-DUSt3R, heavily relies on **extracting meaningful planes** from 3D point clouds generated from multiple images. This implicit plane extraction process differs from traditional methods, where planes are detected directly from images.  Instead, Plane-DUSt3R is finetuned to predict pointmaps representing *only* structural planes (walls, floors, ceilings), thereby filtering out irrelevant details and guiding the 3D reconstruction. A key challenge lies in establishing **correspondences between planes** observed in different views, particularly with sparse views. This is addressed through the DUSt3R framework, which enables robust reconstruction even without explicit camera pose information. To further refine the plane parameters, the method employs a post-processing step that leverages 2D plane detections to guide parameter extraction from the pointmap, improving the accuracy and parsimony of the plane representation. The entire pipeline aims to achieve a simplified and streamlined end-to-end solution that leverages both 3D vision and 2D image understanding. The **reconstruction with plane benefits** and outperforms the other architectures.

#### Generalization
Based on the paper, **generalization** is a critical aspect for the proposed room layout reconstruction method. The method should not only perform well on the specific synthetic dataset it was trained on (**Structure3D**), but also demonstrate robustness and adaptability to real-world data (**in-the-wild datasets**) and scenarios with different image styles (e.g., **cartoon data**). This indicates the importance of the method's ability to handle variations in image quality, lighting conditions, object arrangements, and even artistic representations of indoor environments. Achieving good generalization suggests that the method has learned underlying structural principles rather than overfitting to the specifics of the training data. The **robustness** is further confirmed by the experiment on CAD-estate, ensuring the pipeline to be effective. This ability to generalize is essential for practical applications where the method would encounter diverse and unseen indoor scenes.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.16779/x2.png)

> 🔼 This figure illustrates the three-stage pipeline for multi-view room layout estimation.  The first stage uses a 2D plane detector (f<sub>1</sub>) to identify planar regions in each input image.  The second stage employs Plane-DUSt3R (f<sub>2</sub>), a modified version of the DUSt3R 3D reconstruction model, to predict 3D information from the 2D detections and establish correspondences between planes across multiple views.  The final stage involves a post-processing algorithm (f<sub>3</sub>) that refines the 3D layout by merging corresponding planes and resolving inconsistencies.
> <details>
> <summary>read the caption</summary>
> Figure 2: Our multi-view room layout estimation pipeline. It consists of three parts: 1) a 2D plane detector f1subscript𝑓1f_{1}italic_f start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT, 2) a 3D information prediction and correspondence establishment method Plane-DUSt3R f2subscript𝑓2f_{2}italic_f start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT, and 3) a post-processing algorithm f3subscript𝑓3f_{3}italic_f start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT.
> </details>



![](https://arxiv.org/html/2502.16779/extracted/6239959/figs/arch_2.png)

> 🔼 The Plane-DUSt3R architecture is a modified version of the DUSt3R architecture.  The core components remain the same: a Vision Transformer (ViT) encoder, a transformer decoder, and two regression heads. However, a key difference is that Plane-DUSt3R is fine-tuned on a depth map that has been pre-processed to remove occlusions caused by objects within the room. This allows Plane-DUSt3R to focus solely on the structural planes, such as walls, floors, and ceilings, simplifying the layout prediction task.  The figure visually depicts the architecture of Plane-DUSt3R, emphasizing its similarity to DUSt3R while highlighting the modifications made for the specific purpose of room layout estimation. 
> <details>
> <summary>read the caption</summary>
> Figure 3: Plane-DUSt3R architecture remains identical to DUSt3R. The transformer decoder and regression head are further fine-tuned on the occlusion-free depth map (see Figure 4).
> </details>



![](https://arxiv.org/html/2502.16779/extracted/6239959/figs/depth_ori.png)

> 🔼 This figure shows a comparison of depth maps generated by two different methods. (a) displays the depth map produced by the original DUSt3R model, which contains information about all 3D elements within the scene, including both structural elements (walls, floors, ceilings) and non-structural objects (furniture). This comprehensive depth map can be complex and noisy.  The goal of Plane-DUSt3R is to simplify this for better room layout estimation.
> <details>
> <summary>read the caption</summary>
> (a) The original DUSt3R depth map.
> </details>



![](https://arxiv.org/html/2502.16779/extracted/6239959/figs/depth_plane.png)

> 🔼 Figure 4(b) shows the depth map generated by the Plane-DUSt3R model.  Unlike the original DUSt3R depth map (shown in Figure 4(a)), this depth map focuses exclusively on structural planes (walls, floors, ceilings), effectively removing occlusions caused by objects or furniture. This processed depth map serves as crucial input for subsequent steps in the room layout estimation pipeline, leading to a more accurate and streamlined layout prediction.
> <details>
> <summary>read the caption</summary>
> (b) The Plane-DUSt3R depth map.
> </details>



![](https://arxiv.org/html/2502.16779/extracted/6239959/figs/bird-view/ori.png)

> 🔼 This figure compares the depth maps generated by the original DUSt3R model and the modified Plane-DUSt3R model.  (a) shows the depth map produced by DUSt3R which includes various objects and occlusions within the scene. (b) displays the depth map generated by Plane-DUSt3R after modifications.  The key difference is that Plane-DUSt3R's depth map focuses exclusively on structural planes (walls, floor, ceiling), effectively removing occlusions from non-structural elements like furniture to improve room layout estimation.
> <details>
> <summary>read the caption</summary>
> Figure 4: The (a) original DUSt3R depth map and (b) occlusion removed depth map.
> </details>



![](https://arxiv.org/html/2502.16779/extracted/6239959/figs/bird-view/rotated.png)

> 🔼 Figure 5(a) shows the visualization of the plane projection step in the multi-view room layout estimation pipeline.  The input is a set of planes detected in multiple images of the same scene. Each plane is represented by a line segment in the image, and these line segments are then projected onto a common 2D plane (such as the xz plane). This projection simplifies the scene representation, making the subsequent merging process easier. The line segments shown in this figure form the basis for classifying lines as horizontal or vertical before the final merging step.  They will then be used in the steps described in (b), (c) and (d) to align and merge them into coherent planes for the final layout. 
> <details>
> <summary>read the caption</summary>
> (a) Projected Lines
> </details>



![](https://arxiv.org/html/2502.16779/extracted/6239959/figs/bird-view/calibrated.png)

> 🔼 This figure shows the results of rotating the line segments representing planes projected onto the x-z plane so that they become approximately horizontal or vertical. This rotation step simplifies the subsequent classification and merging of line segments into complete planes.
> <details>
> <summary>read the caption</summary>
> (b) Rotated Lines
> </details>



![](https://arxiv.org/html/2502.16779/extracted/6239959/figs/bird-view/layout.png)

> 🔼 This figure shows the results of aligning line segments to be either horizontal or vertical after a rotation. This step is part of a multi-view room layout estimation process where the goal is to merge planes from different images to create a unified 3D room layout. The alignment simplifies the merging process by ensuring that line segments representing the same wall are parallel to each other, facilitating their identification and combination.
> <details>
> <summary>read the caption</summary>
> (c) Aligned Lines
> </details>



![](https://arxiv.org/html/2502.16779/extracted/6239959/figs/out_domain/friends/chandler-apartment.png)

> 🔼 This figure shows the results of merging plane segments to create a unified representation of the room layout.  Panel (a) displays the initial projection of plane segments onto the x-z plane. Panel (b) shows the rotation of these segments to be either horizontal or vertical. Panel (c) shows the classification and further alignment of segments. Panel (d) presents the final result of merged planes, with segments of the same plane highlighted with the same color and index. This illustrates the process of combining individual plane segments from multiple views into a consistent 3D room layout.
> <details>
> <summary>read the caption</summary>
> (d) Correspondance
> </details>



![](https://arxiv.org/html/2502.16779/extracted/6239959/figs/out_domain/friends/friends-overnight-joey-chandler-apartment.jpeg)

> 🔼 Figure 5 illustrates the multi-view plane merging process. (a) shows the projection of planes onto the x-z plane, represented as 2D line segments.  (b) depicts the scene's rotation to make these line segments roughly horizontal or vertical. (c) shows classification and alignment of these line segments as either horizontal or vertical. Finally, (d) presents the merged planes with segments of the same plane indicated using a consistent color and index, resolving plane correspondence across multiple images.
> <details>
> <summary>read the caption</summary>
> Figure 5: (a) Planes are projected onto the x-z plane as 2D line segments. (b) The scene is rotated so that line segments are approximately horizontal or vertical. (c) Line segments are classified and aligned to be either horizontal or vertical. (d) Merged planes are shown, with segments belonging to the same plane indicated by the same color and index.
> </details>



![](https://arxiv.org/html/2502.16779/extracted/6239959/figs/out_domain/friends/result.png)

> 🔼 This figure showcases qualitative results of room layout reconstruction on the Structure3D dataset's testing set.  The first three columns display the input images from multiple viewpoints. The fourth column presents the results obtained using the Noncuboid+MASt3R method. The fifth column shows the results produced by the proposed Plane-DUSt3R pipeline in this paper.  Due to space constraints in the publication, additional results are available in the appendix for a more comprehensive evaluation.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative results on Structure3D testing set. The first 3 columns are input views, the fourth and fifth columns are layout results of Noncuboid+MASt3R and our pipeline respectively. Due to space limitations, we refer reader to appendix for more complete results.
> </details>



![](https://arxiv.org/html/2502.16779/extracted/6239959/figs/out_domain/burger/1.png)

> 🔼 This figure displays a bird's-eye view of 3D room layouts generated from multiple images using two different methods. The top row presents five examples of 3D room layouts produced by the proposed pipeline (Plane-DUSt3R), illustrating the pipeline's ability to reconstruct the spatial structure of rooms from sparse, unconstrained viewpoints.  Each plane is represented by a unique color, making it easy to distinguish individual walls, floors, and ceilings in the reconstruction. The bottom row shows five comparative results obtained using a baseline method (Noncuboid+MASt3R), highlighting differences in accuracy and completeness of the room layout reconstruction. The consistent use of color-coding for corresponding planes in both rows enables a direct visual comparison of the two methods' performance.  This visualization effectively demonstrates the superior performance of the proposed Plane-DUSt3R method in handling multi-view scenarios with sparse image data.
> <details>
> <summary>read the caption</summary>
> Figure 7: Birdview of multi-view 3D planes aligned to the same coordinate. The first row shows 5 cases of our pipeline results after post-processing step. The second row is the results of Noncuboid+MASt3R. Line segments of the same color indicate that they belong to the same plane.
> </details>



![](https://arxiv.org/html/2502.16779/extracted/6239959/figs/out_domain/burger/2.jpg)

> 🔼 Figure 8 displays a qualitative comparison of room layout estimations on the 'in-the-wild' dataset (Zhou et al., 2018).  The figure presents sets of three input images from various viewpoints for each room, followed by the room layout estimated using the Noncuboid+MASt3R method. The final column shows the predicted 3D plane point cloud generated by the proposed method, with the extracted wireframe structure overlaid in red, providing a clear visualization of the planes detected and their spatial relationships within each scene.
> <details>
> <summary>read the caption</summary>
> Figure 8: Qualitative results on in-the-wild data (Zhou et al., 2018). The first three columns are input views, the fourth column is the layout results of Noncuboid+MASt3R. The rightmost column shows the predicted plane pointmap with the extracted wireframe drawn in red.
> </details>



![](https://arxiv.org/html/2502.16779/extracted/6239959/figs/out_domain/burger/result.png)

> 🔼 Figure 9 presents a qualitative comparison of the proposed multi-view room layout estimation method's performance on the Structure3D test set.  Each row shows a different room scene. The first four columns display the input views (multiple perspectives of the same scene).  The fifth column shows the 3D reconstruction results using point cloud visualization to represent the room's layout, demonstrating the method's ability to accurately estimate the positions of planes representing walls, floors, and ceilings. The final column displays the same results using only the wireframe, providing a simplified representation focusing solely on the geometric structure of the layout and omitting the detailed 3D point cloud.
> <details>
> <summary>read the caption</summary>
> Figure 9: Qualitative results on Structure3D testing set. The 5-th column is our result visualized with pointcloud, the last column is the result shown in pure wireframe
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.3.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" colspan="2" id="S4.T2.3.1.1.1" rowspan="2"><span class="ltx_text" id="S4.T2.3.1.1.1.1">Methods</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.3.1.1.2">RealEstate10K</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T2.3.1.1.3">Structured3D</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T2.3.1.1.4">CAD-estate</th>
</tr>
<tr class="ltx_tr" id="S4.T2.3.2.2">
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.2.2.1">mAA@30</th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.2.2.2">RRA@15</th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.2.2.3">RTA@15</th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.2.2.4">mAA@30</th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.2.2.5">RRA@15</th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.2.2.6">RTA@15</th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.2.2.7">mAA@30</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.3.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T2.3.3.1.1"><span class="ltx_text" id="S4.T2.3.3.1.1.1">(a)</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.3.3.1.2">DUSt3R <cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.16779v2#bib.bib27" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.3.3.1.3">61.2</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.3.3.1.4">89.44</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.3.3.1.5">85.00</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.3.3.1.6">76.13</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.3.3.1.7">99.88</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.3.3.1.8">84.82</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.3.3.1.9">76.38</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.4.2">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T2.3.4.2.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.4.2.2">MASt3R <cite class="ltx_cite ltx_citemacro_citep">(Leroy et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.16779v2#bib.bib11" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.3.4.2.3">76.4</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.3.4.2.4">92.94</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.3.4.2.5">89.77</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.3.4.2.6">85.34</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.3.4.2.7">99.94</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.3.4.2.8">99.00</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.3.4.2.9">95.29</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.5.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T2.3.5.3.1" rowspan="2"><span class="ltx_text" id="S4.T2.3.5.3.1.1">(b)</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.3.5.3.2">Plane-DUSt3R (metric)</th>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.3.5.3.3">-</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.3.5.3.4">98.21</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.3.5.3.5">96.66</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.3.5.3.6">90.67</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.3.5.3.7">94.61</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.3.5.3.8">70.52</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.3.5.3.9">61.48</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.3.6.4.1">Plane-DUSt3R (aligned)</th>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T2.3.6.4.2">-</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T2.3.6.4.3">97.95</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T2.3.6.4.4">96.59</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T2.3.6.4.5">91.80</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T2.3.6.4.6">94.96</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T2.3.6.4.7">73.74</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T2.3.6.4.8">64.21</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the Plane-DUSt3R model's performance against other state-of-the-art data-driven image matching approaches on three datasets: RealEstate10K, Structured3D, and CAD-estate.  The comparison uses the metrics mAA@30, RRA@15, and RTA@15 to evaluate the accuracy of relative camera pose estimation.  This allows for an assessment of the Plane-DUSt3R model's ability to accurately estimate the relative positions and orientations of cameras in multi-view scenes. The inclusion of three diverse datasets enables a comprehensive evaluation of the model's robustness and generalization capabilities across different scene complexities and data characteristics.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison with data-driven image matching approaches.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.4.4.5"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.5.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1">IoU(%)<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.2.1">PE(%) <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.1.m1.1"><semantics id="S4.T3.2.2.2.1.m1.1a"><mo id="S4.T3.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.1.m1.1b"><ci id="S4.T3.2.2.2.1.m1.1.1.cmml" xref="S4.T3.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.3.3"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.3.1">EE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.1.m1.1"><semantics id="S4.T3.3.3.3.1.m1.1a"><mo id="S4.T3.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T3.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.1.m1.1b"><ci id="S4.T3.3.3.3.1.m1.1.1.cmml" xref="S4.T3.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.4.4.4"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.4.1">RMSE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.1.m1.1"><semantics id="S4.T3.4.4.4.1.m1.1a"><mo id="S4.T3.4.4.4.1.m1.1.1" stretchy="false" xref="S4.T3.4.4.4.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.1.m1.1b"><ci id="S4.T3.4.4.4.1.m1.1.1.cmml" xref="S4.T3.4.4.4.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.1.m1.1d">↓</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.4.5.1.1">Planar R-CNN <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.16779v2#bib.bib13" title="">2019</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.5.1.2">79.64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.5.1.3">7.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.5.1.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.4.5.1.4.1">6.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.5.1.5">0.4013</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.4.6.2.1">Rac <cite class="ltx_cite ltx_citemacro_citep">(Stekovic et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.16779v2#bib.bib22" title="">2020</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.4.6.2.2">76.29</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.6.2.3">8.07</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.6.2.4">7.19</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.6.2.5">0.3865</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.4.7.3.1">Noncuboid <cite class="ltx_cite ltx_citemacro_citep">(Yang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.16779v2#bib.bib29" title="">2022</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.4.7.3.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.4.7.3.2.1">79.94</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.7.3.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.4.7.3.3.1">6.40</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.7.3.4">6.80</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.7.3.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.4.7.3.5.1">0.2827</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.4.8.4.1">Noncuboid (re-trained)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.8.4.2"><span class="ltx_text ltx_font_bold" id="S4.T3.4.8.4.2.1">80.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.8.4.3"><span class="ltx_text ltx_font_bold" id="S4.T3.4.8.4.3.1">6.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.8.4.4"><span class="ltx_text ltx_font_bold" id="S4.T3.4.8.4.4.1">6.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.8.4.5"><span class="ltx_text ltx_font_bold" id="S4.T3.4.8.4.5.1">0.2631</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of different 2D plane detectors on the Structure3D dataset.  The metrics used for comparison include Intersection over Union (IoU), Pixel Error (PE), Edge Error (EE), and Root Mean Square Error (RMSE).  These metrics assess the accuracy and precision of each detector in identifying and localizing planar regions within the images.  The table helps determine which 2D plane detector is the most effective in terms of accuracy and efficiency for the Structure3D dataset.
> <details>
> <summary>read the caption</summary>
> Table 3: 2D detectors comparison on Structure3D dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T4.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T4.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T4.2.2.3"><span class="ltx_text ltx_font_bold" id="A3.T4.2.2.3.1">Threshold(Translation &amp; Rotation)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T4.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T4.1.1.1.1">3D-precision(%)<math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T4.1.1.1.1.m1.1"><semantics id="A3.T4.1.1.1.1.m1.1a"><mo id="A3.T4.1.1.1.1.m1.1.1" stretchy="false" xref="A3.T4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T4.1.1.1.1.m1.1b"><ci id="A3.T4.1.1.1.1.m1.1.1.cmml" xref="A3.T4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T4.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T4.2.2.2"><span class="ltx_text ltx_font_bold" id="A3.T4.2.2.2.1">3D-recall(%)<math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T4.2.2.2.1.m1.1"><semantics id="A3.T4.2.2.2.1.m1.1a"><mo id="A3.T4.2.2.2.1.m1.1.1" stretchy="false" xref="A3.T4.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T4.2.2.2.1.m1.1b"><ci id="A3.T4.2.2.2.1.m1.1.1.cmml" xref="A3.T4.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T4.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T4.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T4.2.3.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.2.3.1.1">0.1m, 5°</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.2.3.1.2">34.11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.2.3.1.3">31.66</td>
</tr>
<tr class="ltx_tr" id="A3.T4.2.4.2">
<td class="ltx_td ltx_align_center" id="A3.T4.2.4.2.1">0.15m, 10°</td>
<td class="ltx_td ltx_align_center" id="A3.T4.2.4.2.2">52.63</td>
<td class="ltx_td ltx_align_center" id="A3.T4.2.4.2.3">48.37</td>
</tr>
<tr class="ltx_tr" id="A3.T4.2.5.3">
<td class="ltx_td ltx_align_center" id="A3.T4.2.5.3.1">0.2m, 15°</td>
<td class="ltx_td ltx_align_center" id="A3.T4.2.5.3.2">64.64</td>
<td class="ltx_td ltx_align_center" id="A3.T4.2.5.3.3">59.53</td>
</tr>
<tr class="ltx_tr" id="A3.T4.2.6.4">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T4.2.6.4.1">0.4m, 30°</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T4.2.6.4.2"><span class="ltx_text ltx_font_bold" id="A3.T4.2.6.4.2.1">82.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T4.2.6.4.3"><span class="ltx_text ltx_font_bold" id="A3.T4.2.6.4.3.1">76.13</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative evaluation of the Plane-DUSt3R model's performance on the Structure3D dataset under various thresholds for camera translation and rotation.  It shows the impact of different thresholds on the accuracy of 3D plane prediction and reconstruction. The metrics used are 3D precision and 3D recall, illustrating the model's ability to correctly identify and represent planes in the 3D scene based on different thresholds of tolerance.  Higher thresholds allow for greater error margins and would likely result in higher recall (more planes detected), but potentially at the cost of lower precision (fewer correctly identified planes).
> <details>
> <summary>read the caption</summary>
> Table 4: Quantitative results with different thresholds on Structure3D dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T5.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T5.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A3.T5.6.6.7"><span class="ltx_text ltx_font_bold" id="A3.T5.6.6.7.1">Input views</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T5.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T5.1.1.1.1">re-IoU(%)<math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T5.1.1.1.1.m1.1"><semantics id="A3.T5.1.1.1.1.m1.1a"><mo id="A3.T5.1.1.1.1.m1.1.1" stretchy="false" xref="A3.T5.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T5.1.1.1.1.m1.1b"><ci id="A3.T5.1.1.1.1.m1.1.1.cmml" xref="A3.T5.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T5.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T5.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T5.2.2.2"><span class="ltx_text ltx_font_bold" id="A3.T5.2.2.2.1">re-PE(%) <math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T5.2.2.2.1.m1.1"><semantics id="A3.T5.2.2.2.1.m1.1a"><mo id="A3.T5.2.2.2.1.m1.1.1" stretchy="false" xref="A3.T5.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T5.2.2.2.1.m1.1b"><ci id="A3.T5.2.2.2.1.m1.1.1.cmml" xref="A3.T5.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T5.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T5.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T5.3.3.3"><span class="ltx_text ltx_font_bold" id="A3.T5.3.3.3.1">re-EE<math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T5.3.3.3.1.m1.1"><semantics id="A3.T5.3.3.3.1.m1.1a"><mo id="A3.T5.3.3.3.1.m1.1.1" stretchy="false" xref="A3.T5.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T5.3.3.3.1.m1.1b"><ci id="A3.T5.3.3.3.1.m1.1.1.cmml" xref="A3.T5.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T5.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T5.3.3.3.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T5.4.4.4"><span class="ltx_text ltx_font_bold" id="A3.T5.4.4.4.1">re-RMSE<math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T5.4.4.4.1.m1.1"><semantics id="A3.T5.4.4.4.1.m1.1a"><mo id="A3.T5.4.4.4.1.m1.1.1" stretchy="false" xref="A3.T5.4.4.4.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T5.4.4.4.1.m1.1b"><ci id="A3.T5.4.4.4.1.m1.1.1.cmml" xref="A3.T5.4.4.4.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T5.4.4.4.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T5.4.4.4.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T5.5.5.5"><span class="ltx_text ltx_font_bold" id="A3.T5.5.5.5.1">3D-precision(%)<math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T5.5.5.5.1.m1.1"><semantics id="A3.T5.5.5.5.1.m1.1a"><mo id="A3.T5.5.5.5.1.m1.1.1" stretchy="false" xref="A3.T5.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T5.5.5.5.1.m1.1b"><ci id="A3.T5.5.5.5.1.m1.1.1.cmml" xref="A3.T5.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T5.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T5.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T5.6.6.6"><span class="ltx_text ltx_font_bold" id="A3.T5.6.6.6.1">3D-recall(%)<math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T5.6.6.6.1.m1.1"><semantics id="A3.T5.6.6.6.1.m1.1a"><mo id="A3.T5.6.6.6.1.m1.1.1" stretchy="false" xref="A3.T5.6.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T5.6.6.6.1.m1.1b"><ci id="A3.T5.6.6.6.1.m1.1.1.cmml" xref="A3.T5.6.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T5.6.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T5.6.6.6.1.m1.1d">↑</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T5.6.7.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A3.T5.6.7.1.1">2</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.6.7.1.2">75.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.6.7.1.3">8.72</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.6.7.1.4">8.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.6.7.1.5">0.4148</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.6.7.1.6">53.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.6.7.1.7">42.60</td>
</tr>
<tr class="ltx_tr" id="A3.T5.6.8.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T5.6.8.2.1">3</th>
<td class="ltx_td ltx_align_center" id="A3.T5.6.8.2.2">75.29</td>
<td class="ltx_td ltx_align_center" id="A3.T5.6.8.2.3">8.53</td>
<td class="ltx_td ltx_align_center" id="A3.T5.6.8.2.4">8.56</td>
<td class="ltx_td ltx_align_center" id="A3.T5.6.8.2.5">0.3596</td>
<td class="ltx_td ltx_align_center" id="A3.T5.6.8.2.6">54.43</td>
<td class="ltx_td ltx_align_center" id="A3.T5.6.8.2.7">47.97</td>
</tr>
<tr class="ltx_tr" id="A3.T5.6.9.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T5.6.9.3.1">4</th>
<td class="ltx_td ltx_align_center" id="A3.T5.6.9.3.2">75.55</td>
<td class="ltx_td ltx_align_center" id="A3.T5.6.9.3.3">8.39</td>
<td class="ltx_td ltx_align_center" id="A3.T5.6.9.3.4"><span class="ltx_text ltx_font_bold" id="A3.T5.6.9.3.4.1">8.55</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.6.9.3.5">0.3463</td>
<td class="ltx_td ltx_align_center" id="A3.T5.6.9.3.6">54.91</td>
<td class="ltx_td ltx_align_center" id="A3.T5.6.9.3.7">49.44</td>
</tr>
<tr class="ltx_tr" id="A3.T5.6.10.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="A3.T5.6.10.4.1">5</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.6.10.4.2"><span class="ltx_text ltx_font_bold" id="A3.T5.6.10.4.2.1">75.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.6.10.4.3"><span class="ltx_text ltx_font_bold" id="A3.T5.6.10.4.3.1">8.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.6.10.4.4">8.59</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.6.10.4.5"><span class="ltx_text ltx_font_bold" id="A3.T5.6.10.4.5.1">0.3422</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.6.10.4.6"><span class="ltx_text ltx_font_bold" id="A3.T5.6.10.4.6.1">55.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.6.10.4.7"><span class="ltx_text ltx_font_bold" id="A3.T5.6.10.4.7.1">49.59</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative analysis of the impact of varying the number of input views on the performance of the room layout estimation model.  Specifically, it shows how metrics such as Intersection over Union (IoU), Pixel Error (PE), Edge Error (EE), Root Mean Square Error (RMSE), 3D precision, and 3D recall change as the number of input views increases from 2 to 5.  The results are based on the Structure3D dataset, allowing for a detailed assessment of the model's robustness and efficiency with different data conditions.
> <details>
> <summary>read the caption</summary>
> Table 5: Quantitative results with different input views on Structure3D dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A5.T6.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A5.T6.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A5.T6.2.2.3"><span class="ltx_text ltx_font_bold" id="A5.T6.2.2.3.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A5.T6.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T6.1.1.1.1">re-IoU(%)<math alttext="\uparrow" class="ltx_Math" display="inline" id="A5.T6.1.1.1.1.m1.1"><semantics id="A5.T6.1.1.1.1.m1.1a"><mo id="A5.T6.1.1.1.1.m1.1.1" stretchy="false" xref="A5.T6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A5.T6.1.1.1.1.m1.1b"><ci id="A5.T6.1.1.1.1.m1.1.1.cmml" xref="A5.T6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A5.T6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A5.T6.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A5.T6.2.2.2"><span class="ltx_text ltx_font_bold" id="A5.T6.2.2.2.1">re-PE(%) <math alttext="\downarrow" class="ltx_Math" display="inline" id="A5.T6.2.2.2.1.m1.1"><semantics id="A5.T6.2.2.2.1.m1.1a"><mo id="A5.T6.2.2.2.1.m1.1.1" stretchy="false" xref="A5.T6.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A5.T6.2.2.2.1.m1.1b"><ci id="A5.T6.2.2.2.1.m1.1.1.cmml" xref="A5.T6.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A5.T6.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A5.T6.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A5.T6.2.3.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.2.3.1.1">Noncuboid + GT pose</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.2.3.1.2">55.99</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T6.2.3.1.3">20.33</td>
</tr>
<tr class="ltx_tr" id="A5.T6.2.4.2">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T6.2.4.2.1">Ours (metric)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T6.2.4.2.2"><span class="ltx_text ltx_font_bold" id="A5.T6.2.4.2.2.1">63.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T6.2.4.2.3"><span class="ltx_text ltx_font_bold" id="A5.T6.2.4.2.3.1">15.15</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents a quantitative comparison of room layout estimation results on the CAD-Estate dataset.  It compares the performance of the proposed method (Plane-DUSt3R) against a baseline (Noncuboid + GT pose) using two key metrics: Intersection over Union (IoU), measuring the overlap between predicted and ground truth segmentations, and Pixel Error (PE), quantifying the average pixel-wise distance between the predictions and ground truth. The CAD-Estate dataset is chosen because it aligns well with the research method's focus and assumptions.
> <details>
> <summary>read the caption</summary>
> Table 6: Quantitative results with on CAD-estate dataset.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.16779/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16779/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16779/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16779/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16779/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16779/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16779/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16779/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16779/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16779/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16779/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16779/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16779/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16779/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16779/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16779/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16779/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16779/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}