---
title: "VidCRAFT3: Camera, Object, and Lighting Control for Image-to-Video Generation"
summary: "VidCRAFT3 enables high-quality image-to-video generation with precise control over camera movement, object motion, and lighting, pushing the boundaries of visual content creation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Fudan University",]
showSummary: true
date: 2025-02-11
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.07531 {{< /keyword >}}
{{< keyword icon="writer" >}} Sixiao Zheng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-12 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.07531" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.07531" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.07531/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current image-to-video generation methods struggle to provide fine-grained control over multiple visual elements simultaneously, especially lighting.  Existing datasets often lack comprehensive annotations, hindering the development of sophisticated models.  Furthermore, training models to handle multiple control signals jointly is computationally expensive and data-intensive.

VidCRAFT3 tackles these challenges by introducing a novel framework with three main components:  Image2Cloud (for 3D scene reconstruction and camera control), ObjMotionNet (for object motion encoding), and a Spatial Triple-Attention Transformer (for integrating lighting, image, and text information).  The model is trained using a three-stage approach to effectively learn disentangled control over each visual element.  The paper also introduces a new VideoLightingDirection (VLD) dataset annotated with lighting direction, facilitating the training of models capable of handling complex lighting effects.  **VidCRAFT3 demonstrates superior performance compared to existing methods in control precision, video quality, and generalization.**

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} VidCRAFT3 achieves simultaneous control over camera motion, object motion, and lighting direction in image-to-video generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The introduction of the VideoLightingDirection (VLD) dataset provides valuable training data with lighting annotations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A three-stage training strategy efficiently learns complex relationships between visual elements, improving model performance. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it presents VidCRAFT3, a novel framework that allows for high-quality image-to-video generation with unprecedented control over camera motion, object motion, and lighting direction.  This significantly advances the field of image-to-video generation, enabling more realistic and controllable video synthesis for various applications.  Its introduction of a new dataset with lighting annotations also addresses a significant gap in existing resources.  The three-stage training strategy offers a more efficient and effective approach to learning complex relationships between visual elements.  These contributions open up new avenues for research in generative models, video editing, and visual effects.

------
#### Visual Insights



![](https://arxiv.org/html/2502.07531/x1.png)

> 🔼 Figure 1 showcases the capabilities of VidCRAFT3, a novel image-to-video generation model.  It demonstrates the model's ability to generate high-quality videos with control over multiple visual aspects simultaneously. The figure presents five example videos, each illustrating a different combination of controls: (a) camera motion only; (b) object motion only; (c) both camera and object motion; (d) camera motion and lighting direction control; and (e) camera motion, object motion, and lighting direction control.  The controls are visualized using trajectories (blue for camera, red for objects) and arrows indicating lighting direction. This figure highlights VidCRAFT3's capacity for fine-grained control and realistic video generation from a single image, allowing users to manipulate various aspects of the scene independently.
> <details>
> <summary>read the caption</summary>
> Figure 1. VidCRAFT3 is a high-quality image-to-video generation model that supports large object motion, view changes, and strong lighting effects. It offers user-friendly control over camera motion (a trajectory in blue), object motion (sparse trajectories in red), and lighting direction. VidCRAFT3 can take any combination of supported control signals and deliver fine-grained and faithful generation results.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T1.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T1.7.7.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.7.7.8.1" style="font-size:70%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.1" style="font-size:70%;">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.1.1.1.1.m1.1"><semantics id="S5.T1.1.1.1.1.m1.1a"><mo id="S5.T1.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.1.1.1.1.m1.1b"><ci id="S5.T1.1.1.1.1.m1.1.1.cmml" xref="S5.T1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.2.2.2.1" style="font-size:70%;">FVD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.2.2.2.1.m1.1"><semantics id="S5.T1.2.2.2.1.m1.1a"><mo id="S5.T1.2.2.2.1.m1.1.1" stretchy="false" xref="S5.T1.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.2.2.2.1.m1.1b"><ci id="S5.T1.2.2.2.1.m1.1.1.cmml" xref="S5.T1.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.3.3.3.1" style="font-size:70%;">CLIPSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.3.3.3.1.m1.1"><semantics id="S5.T1.3.3.3.1.m1.1a"><mo id="S5.T1.3.3.3.1.m1.1.1" stretchy="false" xref="S5.T1.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.3.3.3.1.m1.1b"><ci id="S5.T1.3.3.3.1.m1.1.1.cmml" xref="S5.T1.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.4.4.4.1" style="font-size:70%;">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.4.4.4.1.m1.1"><semantics id="S5.T1.4.4.4.1.m1.1a"><mo id="S5.T1.4.4.4.1.m1.1.1" stretchy="false" xref="S5.T1.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.4.4.4.1.m1.1b"><ci id="S5.T1.4.4.4.1.m1.1.1.cmml" xref="S5.T1.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.5.5.5.1" style="font-size:70%;">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.5.5.5.1.m1.1"><semantics id="S5.T1.5.5.5.1.m1.1a"><mo id="S5.T1.5.5.5.1.m1.1.1" stretchy="false" xref="S5.T1.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.5.5.5.1.m1.1b"><ci id="S5.T1.5.5.5.1.m1.1.1.cmml" xref="S5.T1.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.6.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.6.6.6.1" style="font-size:70%;">LPIPS<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.6.6.6.1.m1.1"><semantics id="S5.T1.6.6.6.1.m1.1a"><mo id="S5.T1.6.6.6.1.m1.1.1" stretchy="false" xref="S5.T1.6.6.6.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.6.6.6.1.m1.1b"><ci id="S5.T1.6.6.6.1.m1.1.1.cmml" xref="S5.T1.6.6.6.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.6.6.6.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.6.6.6.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.7.7.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.7.7.7.1" style="font-size:70%;">CamMC<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.7.7.7.1.m1.1"><semantics id="S5.T1.7.7.7.1.m1.1a"><mo id="S5.T1.7.7.7.1.m1.1.1" stretchy="false" xref="S5.T1.7.7.7.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.7.7.7.1.m1.1b"><ci id="S5.T1.7.7.7.1.m1.1.1.cmml" xref="S5.T1.7.7.7.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.7.7.7.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.7.7.7.1.m1.1d">↓</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.7.8.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.7.8.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T1.7.8.1.1.1" style="font-size:70%;">CameraCtrl</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.8.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T1.7.8.1.2.1" style="font-size:70%;">97.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.8.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T1.7.8.1.3.1" style="font-size:70%;">96.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.8.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T1.7.8.1.4.1" style="font-size:70%;">29.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.8.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T1.7.8.1.5.1" style="font-size:70%;">14.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.8.1.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T1.7.8.1.6.1" style="font-size:70%;">0.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.8.1.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T1.7.8.1.7.1" style="font-size:70%;">0.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.8.1.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T1.7.8.1.8.1" style="font-size:70%;">4.19</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.9.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.7.9.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T1.7.9.2.1.1" style="font-size:70%;">CamI2V</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.7.9.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T1.7.9.2.2.1" style="font-size:70%;">98.54</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.9.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T1.7.9.2.3.1" style="font-size:70%;">85.03</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.9.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T1.7.9.2.4.1" style="font-size:70%;">30.37</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.9.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T1.7.9.2.5.1" style="font-size:70%;">14.53</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.9.2.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T1.7.9.2.6.1" style="font-size:70%;">0.51</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.9.2.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T1.7.9.2.7.1" style="font-size:70%;">0.28</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.9.2.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T1.7.9.2.8.1" style="font-size:70%;">4.24</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.10.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.7.10.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T1.7.10.3.1.1" style="font-size:70%;">MotionCtrl</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.7.10.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T1.7.10.3.2.1" style="font-size:70%;">103.82</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.10.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T1.7.10.3.3.1" style="font-size:70%;">188.93</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.10.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T1.7.10.3.4.1" style="font-size:70%;">30.18</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.10.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T1.7.10.3.5.1" style="font-size:70%;">12.81</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.10.3.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T1.7.10.3.6.1" style="font-size:70%;">0.47</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.10.3.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T1.7.10.3.7.1" style="font-size:70%;">0.35</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.10.3.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T1.7.10.3.8.1" style="font-size:70%;">4.23</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.11.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T1.7.11.4.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.7.11.4.1.1" style="font-size:70%;">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.7.11.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.7.11.4.2.1" style="font-size:70%;">75.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.7.11.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.7.11.4.3.1" style="font-size:70%;">49.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.7.11.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.7.11.4.4.1" style="font-size:70%;">32.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.7.11.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.7.11.4.5.1" style="font-size:70%;">18.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.7.11.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.7.11.4.6.1" style="font-size:70%;">0.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.7.11.4.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.7.11.4.7.1" style="font-size:70%;">0.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.7.11.4.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.7.11.4.8.1" style="font-size:70%;">4.07</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of VidCRAFT3's performance against state-of-the-art (SOTA) methods on the RealEstate10K dataset.  The comparison uses several metrics to evaluate the quality of generated videos, including Fréchet Inception Distance (FID), which measures the similarity between real and generated images, and Video FID (FVD), which measures the quality and consistency of generated videos across time.  It also includes CLIP similarity (CLIPSIM), Peak Signal-to-Noise Ratio (PSNR), Structural Similarity Index (SSIM), Learned Perceptual Image Patch Similarity (LPIPS), and Camera Motion Control error (CamMC). Lower FID and FVD scores, along with higher values for other metrics, indicate better performance.
> <details>
> <summary>read the caption</summary>
> Table 1. Quantitative comparison with SOTA methods on RealEstate10K.
> </details>





### In-depth insights


#### VidCRAFT3 Overview
VidCRAFT3 is presented as a novel image-to-video generation model offering **unprecedented control** over three key visual elements: camera motion, object motion, and lighting direction.  Its innovative approach lies in the **disentangled architecture**, employing separate modules for each element.  Image2Cloud handles camera control via 3D point cloud rendering from a single input image; ObjMotionNet manages object motion using sparse trajectories; and the Spatial Triple-Attention Transformer integrates lighting direction, text, and image features for realistic illumination. The three-stage training strategy is a crucial aspect, progressively training the model on individual aspects to ultimately combine them.  This **modular and stepwise approach** addresses the challenges of simultaneously controlling multiple visual elements, thereby mitigating the need for exceptionally large and precisely annotated datasets. The overall aim is to generate high-quality, temporally consistent videos with fine-grained control, surpassing existing methods in control precision and visual realism.

#### 3D Scene Control
A hypothetical section on "3D Scene Control" in a research paper on image-to-video generation would likely explore how to manipulate the three-dimensional aspects of a scene to generate realistic and controllable videos. This could involve techniques for **direct 3D scene manipulation**, such as modifying existing 3D models or creating new ones from scratch, as well as **indirect methods**, such as leveraging 2D image information and neural rendering to infer and adjust 3D scene properties. The discussion might cover the challenges of achieving accurate and consistent scene representations from limited 2D input, the computational cost of working with full 3D models, and the need for robust methods to handle occlusions and complex object interactions.  The paper would likely also discuss the potential for **user interaction**, allowing users to modify scene elements in real-time and see the effects reflected in the generated videos.  Key aspects to cover might include methods for 3D object placement and animation, realistic lighting and shadow effects, and the efficient generation of diverse scene viewpoints. A successful approach would need to strike a balance between realism, controllability, and computational efficiency.

#### Multi-Stage Training
Multi-stage training, as a training strategy, offers a compelling approach to complex problems by breaking them down into smaller, more manageable steps.  **Each stage focuses on a specific aspect of the model's capabilities**, progressively building upon previously learned skills. This approach offers several key advantages. First, it simplifies the learning process by gradually introducing complexity, preventing the model from being overwhelmed by the sheer number of variables or training data involved. Second, it allows for more efficient use of computational resources by focusing training efforts on specific aspects at each stage.  **This sequential approach can be particularly effective when dealing with datasets that may lack comprehensive annotations across all aspects of the task.** In such cases, multi-stage training can effectively leverage partially labeled datasets, significantly reducing the cost and time associated with full dataset annotation.  Third, this method enables the model to achieve better disentanglement between different control variables. By training sequentially, the model learns to better separate and control individual aspects of the video generation process, leading to improved control precision and overall quality.  **However, careful consideration needs to be given to the design of the stages and the transitions between them to prevent catastrophic forgetting or suboptimal performance.** The order of training, selection of training data for each stage, and the hyperparameters used can significantly impact the final results. Thus, a thorough understanding and careful experimentation are crucial to effectively leverage the benefits of a multi-stage training approach.

#### Dataset Creation
The creation of a robust and comprehensive dataset is a crucial aspect of this research, particularly given the novelty of simultaneously controlling camera motion, object motion, and lighting direction in image-to-video generation.  The authors acknowledge the scarcity of existing datasets with such detailed annotations, highlighting the necessity of creating their own.  **Three specialized datasets** were meticulously constructed: one focused on camera motion control, another on object motion control, and a third, the VideoLightingDirection (VLD) dataset, uniquely designed for precise lighting direction control.  The VLD dataset stands out due to its synthetic nature, allowing for precise annotation of lighting directions, which are difficult to obtain from real-world videos.  Furthermore, the creation of these datasets involved sophisticated data preprocessing and augmentation techniques like Gaussian filtering for sparse trajectory smoothing, showcasing a high level of attention to data quality.  **The systematic approach** taken for dataset creation, along with the clear rationale provided, underscores the commitment to rigorous methodology and contributes significantly to the reliability and validity of the experimental results.

#### Future Directions
Future research could explore **improving control over complex interactions** between multiple visual elements.  The current model handles individual controls well, but the interplay of camera movement, object motion, and lighting changes could be more sophisticated.  **Developing methods to address this intricate interplay** would enhance the model's ability to generate highly realistic and dynamic videos, particularly in scenes with numerous interactive elements.  Another direction involves **expanding the types of controllable elements**, such as adding control over materials, textures, and even the weather.  This would drastically increase the range of creative possibilities and open up new avenues of applications in visual effects and digital art.  Further advancements could focus on **efficiency improvements**. The current training process is computationally intensive, and streamlining this would make the model more accessible to a broader community.  Finally, exploring ways to **integrate user feedback and iterative refinement** in the generation process would elevate user control and improve the final product's quality.  **Addressing the limitations in handling large, complex motions** is also crucial for broadening the applicability of the technique.  Overall, the future is rich with opportunities to further advance the capabilities of this compelling image-to-video generation model.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.07531/x2.png)

> 🔼 VidCRAFT3 architecture diagram.  It shows how the model, based on a Video Diffusion Model (VDM), takes an input image and text description and uses three main components to generate a video.  The Image2Cloud module converts the image into a 3D point cloud, which is used for camera motion control. The ObjMotionNet module processes sparse object motion trajectories, integrating them into the UNet encoder.  The Spatial Triple-Attention Transformer combines image, text, and lighting direction embeddings, using cross-attention layers to generate the video frames.  Crucially, the model generates video frames by conditioning on camera motion, object motion, and lighting direction to make the video more realistic and consistent.
> <details>
> <summary>read the caption</summary>
> Figure 2. Architecture of VidCRAFT3 for controlled image-to-video generation. The model builds on Video Diffusion Model (VDM) and consists of three main components: the Image2Cloud module generates high-quality 3D point cloud renderings from a reference image; the ObjMotionNet module encodes object motion represented by sparse trajectories, the output is integrated into the UNet encoder by element-wise addition; the Spatial Triple-Attention Transformer module integrates image, text, and lighting information via parallel cross-attention modules. The model generates video by conditioning on camera motion, object motion, and lighting direction, ensuring realistic and consistent outputs across different modalities.
> </details>



![](https://arxiv.org/html/2502.07531/x3.png)

> 🔼 Figure 3 shows examples from the Video Lighting Direction (VLD) dataset, a synthetic dataset created to provide precise lighting direction annotations.  The figure illustrates how the dataset incorporates both 3D models and backgrounds to create realistic lighting scenarios. Panel (a) displays examples using Poly Haven assets, characterized by HDR (High Dynamic Range) backgrounds. Panel (b) shows examples using BOP (Benchmark for Object Pose Estimation) assets, which feature textured backgrounds.  In both panels, each set shows video frames of two different samples, each rendered under two different lighting conditions, highlighting the variety of lighting situations present within the dataset. This dataset helps train a model capable of understanding and generating videos with realistic lighting effects under different conditions.
> <details>
> <summary>read the caption</summary>
> Figure 3. Illustrations of examples from the Video Lighting Direction (VLD) Dataset, showcasing samples with 3D models and backgrounds. (a) Poly Haven-based VLD Samples with HDR backgrounds. (b) BOP-based VLD Samples with textured backgrounds. Each set includes video frames of two samples under two different lighting conditions.
> </details>



![](https://arxiv.org/html/2502.07531/x4.png)

> 🔼 Figure 4 presents a qualitative comparison of VidCRAFT3's performance against state-of-the-art (SOTA) methods on the RealEstate10K dataset, focusing on camera motion control.  It visually demonstrates the generated video sequences produced by VidCRAFT3 and the competing models. The figure allows for a direct visual comparison of the quality and accuracy of camera motion control achieved by each method. This comparison highlights VidCRAFT3's ability to produce more realistic and smoother camera movements.
> <details>
> <summary>read the caption</summary>
> Figure 4. Qualitative comparisons with SOTA methods on RealEstate10K.
> </details>



![](https://arxiv.org/html/2502.07531/x5.png)

> 🔼 Figure 5 presents a qualitative comparison of VidCRAFT3 against state-of-the-art (SOTA) methods for object motion control on the WebVid-10M dataset.  The figure visually demonstrates the performance of each model in generating videos with accurate and realistic object motion.  Each row represents a different video sequence, showing the ground truth (GT) video alongside the results generated by VidCRAFT3 and other SOTA methods. This allows for a visual assessment of each model's ability to faithfully recreate the object's movement based on provided motion signals.
> <details>
> <summary>read the caption</summary>
> Figure 5. Qualitative comparisons with SOTA methods on WebVid-10M.
> </details>



![](https://arxiv.org/html/2502.07531/x6.png)

> 🔼 Figure 6 presents supplementary experimental results demonstrating the combined effects of camera motion and lighting direction control in the VidCRAFT3 model.  The figure displays several image sequences showcasing the consistent and realistic video generation achieved when simultaneously manipulating camera trajectory and lighting direction. Each sequence provides a visual comparison, highlighting the fidelity and control capabilities of the VidCRAFT3 model under varying conditions. The results underscore the model's robustness in handling complex scene dynamics when presented with multiple, coordinated control signals.
> <details>
> <summary>read the caption</summary>
> Figure 6. Additional experimental results on camera motion control + lighting direction control.
> </details>



![](https://arxiv.org/html/2502.07531/x7.png)

> 🔼 This figure displays qualitative comparisons of video generation results using different methods, specifically focusing on camera motion control. It showcases the generated videos produced by VidCRAFT3 alongside those from other state-of-the-art methods such as CameraCtrl, CamI2V, and MotionCtrl.  The comparison helps to visually demonstrate VidCRAFT3's superior performance in terms of camera motion accuracy, smoothness, and visual realism. The ground truth videos are also included as a benchmark for comparison.
> <details>
> <summary>read the caption</summary>
> Figure 7. Additional experimental results on camera motion control.
> </details>



![](https://arxiv.org/html/2502.07531/x8.png)

> 🔼 Figure 8 presents a qualitative comparison of video generation results, focusing on the combined control of camera and object motion.  It showcases how different methods compare to VidCRAFT3's performance in creating videos where both camera and object movements are specified by the user. The figure visually demonstrates VidCRAFT3's superiority in generating high-quality, temporally consistent videos with accurate control over both camera trajectories and object motion, surpassing other state-of-the-art methods.
> <details>
> <summary>read the caption</summary>
> Figure 8. Additional experimental results on camera motion control + object motion control.
> </details>



![](https://arxiv.org/html/2502.07531/x9.png)

> 🔼 Figure 9 shows a comparison of video generation results using different training strategies on the WebVid-10M dataset.  The strategies being compared are training with dense trajectories, sparse trajectories, and a combination of both (dense+sparse). Each row displays a sequence of frames, showing the ground truth (GT) alongside the output generated by the model trained with each strategy. The visual differences highlight the effect of different trajectory densities on the quality and accuracy of the generated videos, specifically on the smoothness and fidelity of object motions.
> <details>
> <summary>read the caption</summary>
> Figure 9. Qualitative results of the ablation study on training strategies with WebVId-10M.
> </details>



![](https://arxiv.org/html/2502.07531/x10.png)

> 🔼 This ablation study compares different methods for integrating lighting information into the image-to-video generation model.  It shows the generated videos using three different methods: Text Cross-Attention, Time Embedding, and Lighting Cross-Attention.  The results demonstrate the effectiveness of the Lighting Cross-Attention method in achieving the highest quality in video generation that closely matches the ground truth, as judged by visual inspection.
> <details>
> <summary>read the caption</summary>
> Figure 10. Qualitative results of the ablation study on lighting embedding integration strategies on VLD.
> </details>



![](https://arxiv.org/html/2502.07531/x11.png)

> 🔼 Figure 11 shows a comparison of video generation results using different lighting direction representations within the VidCRAFT3 model.  The ablation study focuses on the impact of representing the lighting direction using either Spherical Harmonic (SH) encoding or Fourier embedding. The figure visually demonstrates the quality of videos generated using each method, showing how accurately the lighting effects match the ground truth lighting direction.  This comparison highlights the superior performance of SH encoding in terms of visual realism and fidelity to the intended lighting.
> <details>
> <summary>read the caption</summary>
> Figure 11. Qualitative results of the ablation study on the representation of lighting direction on VLD.
> </details>



![](https://arxiv.org/html/2502.07531/x12.png)

> 🔼 Figure 12 displays further examples showcasing VidCRAFT3's capabilities in controlling object motion during video generation.  Each row presents a comparison between the ground truth video (GT), outputs from competitor models (Image Conductor and Motion-I2V), and VidCRAFT3's generated video. This visual comparison highlights VidCRAFT3's superior performance in terms of accuracy, smoothness, and naturalness of object motion.
> <details>
> <summary>read the caption</summary>
> Figure 12. Additional experimental results on object motion control.
> </details>



![](https://arxiv.org/html/2502.07531/x13.png)

> 🔼 Figure 13 shows additional examples demonstrating VidCRAFT3's ability to control lighting direction during video generation.  The figure showcases various scenes with different lighting conditions, illustrating the model's capacity to realistically alter the illumination in a video based on user-specified lighting direction parameters.  Each example shows a comparison between the original scene, the scene with user-specified lighting direction changes, and a ground truth example to evaluate the accuracy of the model’s manipulation.
> <details>
> <summary>read the caption</summary>
> Figure 13. Additional experimental results on lighting direction control.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T2.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T2.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T2.7.7.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.7.8.1" style="font-size:70%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.1" style="font-size:70%;">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.1.1.1.1.m1.1"><semantics id="S5.T2.1.1.1.1.m1.1a"><mo id="S5.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T2.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.1.1.1.1.m1.1b"><ci id="S5.T2.1.1.1.1.m1.1.1.cmml" xref="S5.T2.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.2.2.2.1" style="font-size:70%;">FVD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.2.2.2.1.m1.1"><semantics id="S5.T2.2.2.2.1.m1.1a"><mo id="S5.T2.2.2.2.1.m1.1.1" stretchy="false" xref="S5.T2.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.2.2.2.1.m1.1b"><ci id="S5.T2.2.2.2.1.m1.1.1.cmml" xref="S5.T2.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.3.3.3.1" style="font-size:70%;">CLIPSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.3.3.3.1.m1.1"><semantics id="S5.T2.3.3.3.1.m1.1a"><mo id="S5.T2.3.3.3.1.m1.1.1" stretchy="false" xref="S5.T2.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.3.3.3.1.m1.1b"><ci id="S5.T2.3.3.3.1.m1.1.1.cmml" xref="S5.T2.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.4.4.4.1" style="font-size:70%;">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.4.4.4.1.m1.1"><semantics id="S5.T2.4.4.4.1.m1.1a"><mo id="S5.T2.4.4.4.1.m1.1.1" stretchy="false" xref="S5.T2.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.4.4.4.1.m1.1b"><ci id="S5.T2.4.4.4.1.m1.1.1.cmml" xref="S5.T2.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.5.5.5.1" style="font-size:70%;">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.5.5.5.1.m1.1"><semantics id="S5.T2.5.5.5.1.m1.1a"><mo id="S5.T2.5.5.5.1.m1.1.1" stretchy="false" xref="S5.T2.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.5.5.5.1.m1.1b"><ci id="S5.T2.5.5.5.1.m1.1.1.cmml" xref="S5.T2.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.6.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.6.1" style="font-size:70%;">LPIPS<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.6.6.6.1.m1.1"><semantics id="S5.T2.6.6.6.1.m1.1a"><mo id="S5.T2.6.6.6.1.m1.1.1" stretchy="false" xref="S5.T2.6.6.6.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.6.6.6.1.m1.1b"><ci id="S5.T2.6.6.6.1.m1.1.1.cmml" xref="S5.T2.6.6.6.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.6.6.6.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.6.6.6.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.7.7.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.7.7.1" style="font-size:70%;">ObjMC<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.7.7.7.1.m1.1"><semantics id="S5.T2.7.7.7.1.m1.1a"><mo id="S5.T2.7.7.7.1.m1.1.1" stretchy="false" xref="S5.T2.7.7.7.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.7.7.7.1.m1.1b"><ci id="S5.T2.7.7.7.1.m1.1.1.cmml" xref="S5.T2.7.7.7.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.7.7.7.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.7.7.7.1.m1.1d">↓</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.7.8.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.7.8.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T2.7.8.1.1.1" style="font-size:70%;">Image Conductor</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.8.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T2.7.8.1.2.1" style="font-size:70%;">150.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.8.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T2.7.8.1.3.1" style="font-size:70%;">242.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.8.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T2.7.8.1.4.1" style="font-size:70%;">29.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.8.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T2.7.8.1.5.1" style="font-size:70%;">15.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.8.1.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T2.7.8.1.6.1" style="font-size:70%;">0.501</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.8.1.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T2.7.8.1.7.1" style="font-size:70%;">0.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.8.1.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T2.7.8.1.8.1" style="font-size:70%;">12.96</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.9.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.7.9.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T2.7.9.2.1.1" style="font-size:70%;">Motion-I2V</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.7.9.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T2.7.9.2.2.1" style="font-size:70%;">128.35</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.9.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T2.7.9.2.3.1" style="font-size:70%;">171.35</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.9.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T2.7.9.2.4.1" style="font-size:70%;">30.92</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.9.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T2.7.9.2.5.1" style="font-size:70%;">16.20</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.9.2.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T2.7.9.2.6.1" style="font-size:70%;">0.53</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.9.2.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T2.7.9.2.7.1" style="font-size:70%;">0.26</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.9.2.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T2.7.9.2.8.1" style="font-size:70%;">3.96</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.10.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T2.7.10.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.10.3.1.1" style="font-size:70%;">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.10.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.10.3.2.1" style="font-size:70%;">87.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.10.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.10.3.3.1" style="font-size:70%;">120.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.10.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.10.3.4.1" style="font-size:70%;">32.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.10.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.10.3.5.1" style="font-size:70%;">18.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.10.3.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.10.3.6.1" style="font-size:70%;">0.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.10.3.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.10.3.7.1" style="font-size:70%;">0.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.10.3.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.10.3.8.1" style="font-size:70%;">3.51</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a quantitative comparison of VidCRAFT3's performance against other state-of-the-art (SOTA) methods on the WebVid-10M dataset.  It evaluates the models across multiple metrics to assess their effectiveness in generating high-quality videos. These metrics likely include: Fréchet Inception Distance (FID) and Video FID (FVD) which measure the visual quality and temporal consistency of the generated videos; CLIP similarity (CLIPSIM), which evaluates semantic alignment between the generated video and the original image; Peak Signal-to-Noise Ratio (PSNR) and Structural Similarity Index (SSIM) that assesses image quality; Learned Perceptual Image Patch Similarity (LPIPS), another measure of perceptual similarity between images; and finally, Object Motion Control (ObjMC), a metric specifically designed to gauge the accuracy of object motion control in generated videos.
> <details>
> <summary>read the caption</summary>
> Table 2. Quantitative comparison with SOTA methods on WebVid-10M.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T3.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T3.7.7.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.7.7.8.1" style="font-size:70%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.1" style="font-size:70%;">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.1.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.1.m1.1a"><mo id="S5.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.1.m1.1b"><ci id="S5.T3.1.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.2.2.1" style="font-size:70%;">FVD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.2.2.2.1.m1.1"><semantics id="S5.T3.2.2.2.1.m1.1a"><mo id="S5.T3.2.2.2.1.m1.1.1" stretchy="false" xref="S5.T3.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.2.1.m1.1b"><ci id="S5.T3.2.2.2.1.m1.1.1.cmml" xref="S5.T3.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.3.3.1" style="font-size:70%;">CLIPSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.3.3.3.1.m1.1"><semantics id="S5.T3.3.3.3.1.m1.1a"><mo id="S5.T3.3.3.3.1.m1.1.1" stretchy="false" xref="S5.T3.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.3.3.3.1.m1.1b"><ci id="S5.T3.3.3.3.1.m1.1.1.cmml" xref="S5.T3.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.4.1" style="font-size:70%;">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.4.4.4.1.m1.1"><semantics id="S5.T3.4.4.4.1.m1.1a"><mo id="S5.T3.4.4.4.1.m1.1.1" stretchy="false" xref="S5.T3.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.4.4.4.1.m1.1b"><ci id="S5.T3.4.4.4.1.m1.1.1.cmml" xref="S5.T3.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.5.5.1" style="font-size:70%;">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.5.5.5.1.m1.1"><semantics id="S5.T3.5.5.5.1.m1.1a"><mo id="S5.T3.5.5.5.1.m1.1.1" stretchy="false" xref="S5.T3.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.5.5.5.1.m1.1b"><ci id="S5.T3.5.5.5.1.m1.1.1.cmml" xref="S5.T3.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.6.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.6.1" style="font-size:70%;">LPIPS<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.6.6.6.1.m1.1"><semantics id="S5.T3.6.6.6.1.m1.1a"><mo id="S5.T3.6.6.6.1.m1.1.1" stretchy="false" xref="S5.T3.6.6.6.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.6.6.6.1.m1.1b"><ci id="S5.T3.6.6.6.1.m1.1.1.cmml" xref="S5.T3.6.6.6.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.6.6.6.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.6.6.6.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.7.7.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.7.7.7.1" style="font-size:70%;">ObjMC<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.7.7.7.1.m1.1"><semantics id="S5.T3.7.7.7.1.m1.1a"><mo id="S5.T3.7.7.7.1.m1.1.1" stretchy="false" xref="S5.T3.7.7.7.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.7.7.7.1.m1.1b"><ci id="S5.T3.7.7.7.1.m1.1.1.cmml" xref="S5.T3.7.7.7.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.7.7.7.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.7.7.7.1.m1.1d">↓</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.7.8.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.7.8.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.7.8.1.1.1" style="font-size:70%;">Dense</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.8.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.7.8.1.2.1" style="font-size:70%;">92.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.8.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.7.8.1.3.1" style="font-size:70%;">143.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.8.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.7.8.1.4.1" style="font-size:70%;">30.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.8.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.7.8.1.5.1" style="font-size:70%;">18.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.8.1.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.7.8.1.6.1" style="font-size:70%;">0.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.8.1.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.7.8.1.7.1" style="font-size:70%;">0.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.8.1.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.7.8.1.8.1" style="font-size:70%;">4.39</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.9.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.7.9.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.7.9.2.1.1" style="font-size:70%;">Sparse</span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.7.9.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.7.9.2.2.1" style="font-size:70%;">91.54</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.9.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.7.9.2.3.1" style="font-size:70%;">123.15</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.9.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.7.9.2.4.1" style="font-size:70%;">30.93</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.9.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.7.9.2.5.1" style="font-size:70%;">18.47</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.9.2.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.7.9.2.6.1" style="font-size:70%;">0.59</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.9.2.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.7.9.2.7.1" style="font-size:70%;">0.20</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.9.2.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T3.7.9.2.8.1" style="font-size:70%;">4.05</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.10.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T3.7.10.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.7.10.3.1.1" style="font-size:70%;">Dense+Sparse</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.7.10.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.7.10.3.2.1" style="font-size:70%;">87.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.7.10.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.7.10.3.3.1" style="font-size:70%;">120.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.7.10.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.7.10.3.4.1" style="font-size:70%;">32.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.7.10.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.7.10.3.5.1" style="font-size:70%;">18.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.7.10.3.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.7.10.3.6.1" style="font-size:70%;">0.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.7.10.3.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.7.10.3.7.1" style="font-size:70%;">0.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.7.10.3.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.7.10.3.8.1" style="font-size:70%;">3.51</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study on the training strategy used for the VidCRAFT3 model on the WebVid-10M dataset.  The study compares three different training strategies: using dense object trajectories, using sparse object trajectories, and using a combination of both dense and sparse trajectories.  The table shows how each training strategy affects the model's performance on various metrics, including FID (Fréchet Inception Distance), FVD (Fréchet Video Distance), CLIPSIM (CLIP similarity), PSNR (Peak Signal-to-Noise Ratio), SSIM (Structural Similarity Index), LPIPS (Learned Perceptual Image Patch Similarity), and ObjMC (Object Motion Control). By comparing the results across different metrics, this table helps to determine the optimal training strategy for achieving the best balance between model accuracy and efficiency.
> <details>
> <summary>read the caption</summary>
> Table 3. Ablation of training strategy on WebVid-10M.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T4.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T4.7.7.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.7.8.1" style="font-size:70%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.1" style="font-size:70%;">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.1.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.1.m1.1a"><mo id="S5.T4.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T4.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.1.m1.1b"><ci id="S5.T4.1.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.2.2.1" style="font-size:70%;">FVD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.2.2.2.1.m1.1"><semantics id="S5.T4.2.2.2.1.m1.1a"><mo id="S5.T4.2.2.2.1.m1.1.1" stretchy="false" xref="S5.T4.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.1.m1.1b"><ci id="S5.T4.2.2.2.1.m1.1.1.cmml" xref="S5.T4.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.3.3.3.1" style="font-size:70%;">CLIPSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.3.3.3.1.m1.1"><semantics id="S5.T4.3.3.3.1.m1.1a"><mo id="S5.T4.3.3.3.1.m1.1.1" stretchy="false" xref="S5.T4.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.3.1.m1.1b"><ci id="S5.T4.3.3.3.1.m1.1.1.cmml" xref="S5.T4.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.4.4.1" style="font-size:70%;">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.4.4.4.1.m1.1"><semantics id="S5.T4.4.4.4.1.m1.1a"><mo id="S5.T4.4.4.4.1.m1.1.1" stretchy="false" xref="S5.T4.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.4.4.4.1.m1.1b"><ci id="S5.T4.4.4.4.1.m1.1.1.cmml" xref="S5.T4.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.5.5.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.5.5.5.1" style="font-size:70%;">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.5.5.5.1.m1.1"><semantics id="S5.T4.5.5.5.1.m1.1a"><mo id="S5.T4.5.5.5.1.m1.1.1" stretchy="false" xref="S5.T4.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.5.5.5.1.m1.1b"><ci id="S5.T4.5.5.5.1.m1.1.1.cmml" xref="S5.T4.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.6.6.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.6.6.6.1" style="font-size:70%;">LPIPS<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.6.6.6.1.m1.1"><semantics id="S5.T4.6.6.6.1.m1.1a"><mo id="S5.T4.6.6.6.1.m1.1.1" stretchy="false" xref="S5.T4.6.6.6.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.6.6.6.1.m1.1b"><ci id="S5.T4.6.6.6.1.m1.1.1.cmml" xref="S5.T4.6.6.6.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.6.6.6.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.6.6.6.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.7.7.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.7.7.1" style="font-size:70%;">CamMC<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.7.7.7.1.m1.1"><semantics id="S5.T4.7.7.7.1.m1.1a"><mo id="S5.T4.7.7.7.1.m1.1.1" stretchy="false" xref="S5.T4.7.7.7.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.7.7.7.1.m1.1b"><ci id="S5.T4.7.7.7.1.m1.1.1.cmml" xref="S5.T4.7.7.7.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.7.7.7.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.7.7.7.1.m1.1d">↓</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.7.8.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.7.8.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.7.8.1.1.1" style="font-size:70%;">Text Cross-Attention</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.8.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.7.8.1.2.1" style="font-size:70%;">111.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.8.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.7.8.1.3.1" style="font-size:70%;">121.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.8.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.7.8.1.4.1" style="font-size:70%;">22.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.8.1.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.7.8.1.5.1" style="font-size:70%;">18.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.8.1.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.7.8.1.6.1" style="font-size:70%;">0.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.8.1.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.7.8.1.7.1" style="font-size:70%;">0.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.8.1.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.7.8.1.8.1" style="font-size:70%;">5.31</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.9.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.7.9.2.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.7.9.2.1.1" style="font-size:70%;">Time Embedding</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.7.9.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.7.9.2.2.1" style="font-size:70%;">101.71</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.9.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.7.9.2.3.1" style="font-size:70%;">123.31</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.9.2.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.7.9.2.4.1" style="font-size:70%;">22.70</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.9.2.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.7.9.2.5.1" style="font-size:70%;">19.07</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.9.2.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.7.9.2.6.1" style="font-size:70%;">0.73</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.9.2.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.7.9.2.7.1" style="font-size:70%;">0.12</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.9.2.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.7.9.2.8.1" style="font-size:70%;">5.21</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.10.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T4.7.10.3.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.10.3.1.1" style="font-size:70%;">Lighting Cross-Attention</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.10.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.10.3.2.1" style="font-size:70%;">100.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.10.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.10.3.3.1" style="font-size:70%;">117.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.10.3.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.10.3.4.1" style="font-size:70%;">23.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.10.3.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.10.3.5.1" style="font-size:70%;">19.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.10.3.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.10.3.6.1" style="font-size:70%;">0.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.10.3.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.10.3.7.1" style="font-size:70%;">0.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.7.10.3.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.10.3.8.1" style="font-size:70%;">5.00</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study on different strategies for integrating lighting embeddings into the VidCRAFT3 model.  Specifically, it investigates how various methods of combining lighting information with image and text features affect the model's performance on the Video Lighting Direction (VLD) dataset.  The metrics used likely include FID (Fréchet Inception Distance), FVD (Fréchet Video Distance), CLIP-SIM (CLIP similarity), PSNR (Peak Signal-to-Noise Ratio), SSIM (Structural Similarity Index), LPIPS (Learned Perceptual Image Patch Similarity), and ObjMC (Object Motion Control).  The comparison allows for determining which integration method yields the best quality video generation with precise lighting control.
> <details>
> <summary>read the caption</summary>
> Table 4. Ablation of lighting embedding integration strategies on VLD.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T5.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T5.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T5.7.7.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.7.7.8.1" style="font-size:70%;">Light Representation</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.1" style="font-size:70%;">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.1.1.1.1.m1.1"><semantics id="S5.T5.1.1.1.1.m1.1a"><mo id="S5.T5.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T5.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.1.1.1.1.m1.1b"><ci id="S5.T5.1.1.1.1.m1.1.1.cmml" xref="S5.T5.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.2.2.1" style="font-size:70%;">FVD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.2.2.2.1.m1.1"><semantics id="S5.T5.2.2.2.1.m1.1a"><mo id="S5.T5.2.2.2.1.m1.1.1" stretchy="false" xref="S5.T5.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.2.2.2.1.m1.1b"><ci id="S5.T5.2.2.2.1.m1.1.1.cmml" xref="S5.T5.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.3.3.3.1" style="font-size:70%;">CLIPSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.3.3.3.1.m1.1"><semantics id="S5.T5.3.3.3.1.m1.1a"><mo id="S5.T5.3.3.3.1.m1.1.1" stretchy="false" xref="S5.T5.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.3.3.3.1.m1.1b"><ci id="S5.T5.3.3.3.1.m1.1.1.cmml" xref="S5.T5.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.4.4.4.1" style="font-size:70%;">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.4.4.4.1.m1.1"><semantics id="S5.T5.4.4.4.1.m1.1a"><mo id="S5.T5.4.4.4.1.m1.1.1" stretchy="false" xref="S5.T5.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.4.4.4.1.m1.1b"><ci id="S5.T5.4.4.4.1.m1.1.1.cmml" xref="S5.T5.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.5.5.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.5.5.5.1" style="font-size:70%;">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T5.5.5.5.1.m1.1"><semantics id="S5.T5.5.5.5.1.m1.1a"><mo id="S5.T5.5.5.5.1.m1.1.1" stretchy="false" xref="S5.T5.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T5.5.5.5.1.m1.1b"><ci id="S5.T5.5.5.5.1.m1.1.1.cmml" xref="S5.T5.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.6.6.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.6.6.6.1" style="font-size:70%;">LPIPS<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.6.6.6.1.m1.1"><semantics id="S5.T5.6.6.6.1.m1.1a"><mo id="S5.T5.6.6.6.1.m1.1.1" stretchy="false" xref="S5.T5.6.6.6.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.6.6.6.1.m1.1b"><ci id="S5.T5.6.6.6.1.m1.1.1.cmml" xref="S5.T5.6.6.6.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.6.6.6.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.6.6.6.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.7.7.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.7.7.7.1" style="font-size:70%;">CamMC<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T5.7.7.7.1.m1.1"><semantics id="S5.T5.7.7.7.1.m1.1a"><mo id="S5.T5.7.7.7.1.m1.1.1" stretchy="false" xref="S5.T5.7.7.7.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T5.7.7.7.1.m1.1b"><ci id="S5.T5.7.7.7.1.m1.1.1.cmml" xref="S5.T5.7.7.7.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.7.7.7.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.7.7.7.1.m1.1d">↓</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.7.8.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.7.8.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.7.8.1.1.1" style="font-size:70%;">Fourier Embedding</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.7.8.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.7.8.1.2.1" style="font-size:70%;">107.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.7.8.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.7.8.1.3.1" style="font-size:70%;">121.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.7.8.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.7.8.1.4.1" style="font-size:70%;">21.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.7.8.1.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.7.8.1.5.1" style="font-size:70%;">17.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.7.8.1.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.7.8.1.6.1" style="font-size:70%;">0.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.7.8.1.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.7.8.1.7.1" style="font-size:70%;">0.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.7.8.1.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T5.7.8.1.8.1" style="font-size:70%;">5.03</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.7.9.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T5.7.9.2.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.7.9.2.1.1" style="font-size:70%;">SH Encoding</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.7.9.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.7.9.2.2.1" style="font-size:70%;">100.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.7.9.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.7.9.2.3.1" style="font-size:70%;">117.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.7.9.2.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.7.9.2.4.1" style="font-size:70%;">23.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.7.9.2.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.7.9.2.5.1" style="font-size:70%;">19.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.7.9.2.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.7.9.2.6.1" style="font-size:70%;">0.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.7.9.2.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.7.9.2.7.1" style="font-size:70%;">0.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.7.9.2.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.7.9.2.8.1" style="font-size:70%;">5.00</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study evaluating different methods for representing lighting direction in the Video Lighting Direction (VLD) dataset.  It compares the performance of using Fourier Embedding versus Spherical Harmonic (SH) Encoding to represent lighting direction.  The results are evaluated using several metrics (FID, FVD, CLIPSIM, PSNR, SSIM, LPIPS, CamMC) to assess the impact on image quality, temporal coherence, and control accuracy.
> <details>
> <summary>read the caption</summary>
> Table 5. Ablation of representation of lighting direction on VLD.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.07531/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07531/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07531/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07531/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07531/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07531/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07531/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07531/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07531/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07531/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07531/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}