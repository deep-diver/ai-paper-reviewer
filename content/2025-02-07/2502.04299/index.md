---
title: "MotionCanvas: Cinematic Shot Design with Controllable Image-to-Video Generation"
summary: "MotionCanvas lets users design cinematic video shots with intuitive controls for camera and object movements, translating scene-space intentions into video animations."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Chinese University of Hong Kong",]
showSummary: true
date: 2025-02-06
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.04299 {{< /keyword >}}
{{< keyword icon="writer" >}} Jinbo Xing et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-07 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.04299" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.04299" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.04299/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current image-to-video generation models often lack intuitive controls for shot design, especially concerning camera and object motions.  This makes it difficult for users to realize their creative vision for video content.  Existing methods frequently rely on textual descriptions or cumbersome bounding box annotations, limiting expressiveness and precision.  Furthermore,  the intertwining nature of camera and object motion makes it hard for systems to correctly interpret user intent.

MotionCanvas overcomes these limitations by introducing a user-friendly interface that allows for intuitive control of both camera and object motions in a scene-aware manner.  It achieves this by translating user-specified scene-space motion intents into spatiotemporal motion-conditioning signals for a video diffusion model.  **The key innovation is a Motion Signal Translation module that effectively bridges the gap between 3D scene-space understanding and 2D screen-space requirements of video generation models.**  The method is demonstrated to be effective in various scenarios, showcasing enhanced creative workflows for video editing and content creation.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MotionCanvas allows users to design cinematic video shots by intuitively controlling both camera and object motions. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The Motion Signal Translation module effectively converts high-level scene-space motion designs into screen-space control signals for video diffusion models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} MotionCanvas achieves 3D-aware motion control in image-to-video synthesis without requiring costly 3D training data. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important as it presents **MotionCanvas**, a novel framework for controllable image-to-video generation, addressing the limitations of existing methods.  It offers intuitive controls for both camera and object motion, improving creative workflows and opening avenues for advancements in video editing and animation.

------
#### Visual Insights



![](https://arxiv.org/html/2502.04299/x1.png)

> 🔼 This figure demonstrates the core functionality of MotionCanvas, showcasing its ability to generate diverse video animations from a single static image. The 'Inputs' column displays the initial static image, which serves as the foundation for all generated videos. Each row represents a unique type of object motion, while each column shows a different camera movement.  By systematically varying both object and camera motions, the figure visually highlights the comprehensive control MotionCanvas offers over the image-to-video generation process.  To view the animations, please use Adobe Acrobat Reader.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCanvas offers comprehensive motion controls to animate a static image (the “Inputs” column) with various types of camera movements and object motions. Note the different camera movements across columns and object motions across rows. Please use Adobe Acrobat Reader for video playback.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T1.8.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T1.7.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T1.7.5.5.6">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.3.1.1.1">RotErr<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.3.1.1.1.m1.1"><semantics id="S5.T1.3.1.1.1.m1.1a"><mo id="S5.T1.3.1.1.1.m1.1.1" stretchy="false" xref="S5.T1.3.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.3.1.1.1.m1.1b"><ci id="S5.T1.3.1.1.1.m1.1.1.cmml" xref="S5.T1.3.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.3.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.3.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.4.2.2.2">TransErr<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.4.2.2.2.m1.1"><semantics id="S5.T1.4.2.2.2.m1.1a"><mo id="S5.T1.4.2.2.2.m1.1.1" stretchy="false" xref="S5.T1.4.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.4.2.2.2.m1.1b"><ci id="S5.T1.4.2.2.2.m1.1.1.cmml" xref="S5.T1.4.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.4.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.4.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.5.3.3.3">CamMC<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.5.3.3.3.m1.1"><semantics id="S5.T1.5.3.3.3.m1.1a"><mo id="S5.T1.5.3.3.3.m1.1.1" stretchy="false" xref="S5.T1.5.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.5.3.3.3.m1.1b"><ci id="S5.T1.5.3.3.3.m1.1.1.cmml" xref="S5.T1.5.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.5.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.5.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.6.4.4.4">FVD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.6.4.4.4.m1.1"><semantics id="S5.T1.6.4.4.4.m1.1a"><mo id="S5.T1.6.4.4.4.m1.1.1" stretchy="false" xref="S5.T1.6.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.6.4.4.4.m1.1b"><ci id="S5.T1.6.4.4.4.m1.1.1.cmml" xref="S5.T1.6.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.6.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.6.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.7.5.5.5">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.7.5.5.5.m1.1"><semantics id="S5.T1.7.5.5.5.m1.1a"><mo id="S5.T1.7.5.5.5.m1.1.1" stretchy="false" xref="S5.T1.7.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.7.5.5.5.m1.1b"><ci id="S5.T1.7.5.5.5.m1.1.1.cmml" xref="S5.T1.7.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.7.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.7.5.5.5.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.8.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.8.6.7.1.1">MotionCtrl</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.6.7.1.2">0.8460</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.6.7.1.3">0.2567</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.6.7.1.4">1.2455</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.6.7.1.5">48.03</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.6.7.1.6">11.34</td>
</tr>
<tr class="ltx_tr" id="S5.T1.8.6.8.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.8.6.8.2.1">CameraCtrl</th>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.8.2.2">0.6355</td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.8.2.3">0.2332</td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.8.2.4">0.9532</td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.8.2.5">39.46</td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.8.2.6">13.14</td>
</tr>
<tr class="ltx_tr" id="S5.T1.8.6.6" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T1.8.6.6.1"><span class="ltx_text" id="S5.T1.8.6.6.1.1" style="background-color:#F2F2F2;">Ours<sup class="ltx_sup" id="S5.T1.8.6.6.1.1.1">∗</sup></span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.8.6.6.2"><span class="ltx_text ltx_font_bold" id="S5.T1.8.6.6.2.1" style="background-color:#F2F2F2;">0.6334</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.8.6.6.3"><span class="ltx_text ltx_font_bold" id="S5.T1.8.6.6.3.1" style="background-color:#F2F2F2;">0.2188</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.8.6.6.4"><span class="ltx_text ltx_font_bold" id="S5.T1.8.6.6.4.1" style="background-color:#F2F2F2;">0.9453</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.8.6.6.5"><span class="ltx_text ltx_font_bold" id="S5.T1.8.6.6.5.1" style="background-color:#F2F2F2;">34.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.8.6.6.6"><span class="ltx_text ltx_font_bold" id="S5.T1.8.6.6.6.1" style="background-color:#F2F2F2;">7.60</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of the MotionCanvas model with state-of-the-art methods for image-to-video generation on the RealEstate 10K dataset.  The comparison uses a subset of 1,000 test images.  Metrics include Rotation Error (RotErr), Translation Error (TransErr), Camera Motion Control (CamMC), Fréchet Video Distance (FVD), and Fréchet Inception Distance (FID).  The asterisk (*) indicates that the results for MotionCanvas were obtained without fine-tuning on the dataset (zero-shot performance).
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparison with state-of-the-art methods on the RealEstate10K test set (1K). ∗ denotes zero-shot performance.
> </details>





### In-depth insights


#### I2V Motion Control
Image-to-video (I2V) motion control is a crucial aspect of realistic video generation, bridging the gap between static images and dynamic scenes.  **Effective I2V motion control enables users to precisely define and manipulate both camera movements and object motions within a scene**, resulting in greater creative flexibility and higher-quality videos.  Existing methods often struggle with the intricacy of jointly specifying these motions, leading to ambiguity and limitations in expressiveness.  A key challenge lies in effectively translating high-level user intentions into low-level control signals that video generation models can readily interpret.  **Successful I2V motion control systems require intuitive user interfaces, robust motion representation schemes (such as bounding boxes or point trajectories), and sophisticated algorithms to map user input to model-compatible signals.**  Furthermore, the ability to handle complex and coordinated motion sequences, and to generate long videos with natural transitions between shots, is a significant challenge that demands further research.  Ultimately, **the goal is to create I2V systems that allow users to seamlessly and intuitively create dynamic videos with the same level of fine-grained control available in traditional video editing software.**

#### 3D-Aware Design
A 3D-aware design approach in image-to-video generation is crucial for creating realistic and engaging animations.  It allows for a more intuitive and natural design process by enabling users to plan camera and object movements within a three-dimensional space, unlike 2D screen-space approaches.  **This 3D understanding allows for a more accurate representation of user intent**, reducing ambiguity and improving the overall quality and coherence of the generated videos.  For example, 3D awareness is essential for coordinating camera movements with object interactions.  **A camera dolly-zoom effect, where the camera moves closer to a subject while simultaneously zooming out, would be challenging to achieve without 3D spatial understanding.** A 3D-aware system can capture these spatial relationships accurately.  Furthermore, **3D awareness facilitates handling of object occlusion and depth effects naturally**, leading to more visually convincing results.  The resulting videos are more aligned with intuitive design principles and produce a more immersive and realistic viewing experience.  Challenges may include the computational cost of 3D processing and the need for robust 3D scene reconstruction from 2D inputs, but the benefits significantly outweigh the difficulties for achieving high-quality, controllable video generation.

#### Motion Signal Trans.
The core of MotionCanvas lies in its ability to translate high-level user intentions into low-level signals a video diffusion model can understand.  The "Motion Signal Translation" module is crucial to this process; it acts as a bridge between intuitive 3D scene-space motion design (as performed by the user) and the 2D screen-space signals required by the video generation model.  This translation is non-trivial because users naturally think in 3D scene coordinates, while the model operates on 2D screen projections.  **The module's sophistication comes from its depth awareness and handling of the interplay between camera and object motions.**  It accounts for perspective distortions and camera movement, translating 3D bounding boxes and point trajectories to accurately reflect intended screen-space movement.  **The depth estimation step is essential;** without it, the 2D projection would be inaccurate and lead to unrealistic animations.  Essentially, this module elegantly solves the problem of mapping user-specified motion onto the constraints of the underlying model, enabling a significant improvement in realism and user control over the generated videos.  The use of point tracking for camera movement and bounding box sequences for object motion allows for robust and flexible representation of motion intent.

#### DiT-Based I2V
DiT-Based I2V, or Diffusion Transformer-based Image-to-Video, represents a significant advancement in AI-driven video generation.  It leverages the power of diffusion models, known for their ability to create high-quality images, and extends this capability to the temporal domain of video.  **The DiT architecture likely incorporates transformer networks**, allowing it to effectively process and model long-range dependencies within video sequences.  This is crucial for generating coherent and realistic video animations, as it captures the complex interplay between consecutive frames.  **The use of a pre-trained DiT model likely provides a strong foundation** for the I2V task, potentially reducing training time and improving the overall quality of the generated videos.  However, a key challenge with diffusion-based models, including DiT-based I2V, is computational cost; generating high-resolution videos can be very demanding.  Therefore, **optimization techniques, such as efficient inference strategies or model compression**, are critical for practical applications.  Further research might explore incorporating additional conditioning mechanisms, beyond simple image inputs, such as text descriptions or motion control signals, to enhance the level of user control and creative expression within DiT-based I2V systems.  The success of such methods hinges on effectively handling these conditioning signals within the DiT framework.

#### Future I2V Research
Future research in image-to-video (I2V) generation should prioritize **enhanced controllability and user experience**.  Current methods often lack fine-grained control over both camera and object motion, hindering creative expression.  **More intuitive interfaces** are needed, enabling users to easily specify complex spatiotemporal dynamics.  **Addressing limitations in handling long videos and complex scenes** is also crucial; current models often struggle with temporal consistency and detailed object interactions.  **Improving the efficiency of the models** is another important aspect; current methods are computationally expensive.  **Exploring hybrid approaches** combining generative models with classical computer graphics techniques could offer greater control and realism.  Furthermore, research into **3D-aware I2V generation** is critical;  this could provide greater scene understanding and more realistic motion synthesis without the need for explicit 3D data.  Finally, future work should focus on **developing robust methods for handling various video styles and object categories**, making I2V tools more accessible and versatile for diverse creative applications.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.04299/x2.png)

> 🔼 MotionCanvas processes user-specified scene-space motion into screen-space representations for video generation.  It takes an input image and high-level motion intentions (camera movements and object manipulations with timing).  The Motion Signal Translation module converts these scene-space motions to screen-space signals using depth-based synthesis and hierarchical transformations. These screen-space signals then guide a video generation model, creating the final cinematic video.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of MotionCanvas. Given an input image and high-level scene-space motion intent, MotionCanvas decomposes and translates the motion (camera and object motion with their timing) into screen space by leveraging the depth-based synthesis and hierarchical transformation with the Motion Signal Translation module. These screen-space motion signals are subsequently passed to a video generation model to produce the final cinematic shots.
> </details>



![](https://arxiv.org/html/2502.04299/x3.png)

> 🔼 This figure illustrates the architecture of the motion-conditioned video generation model used in MotionCanvas.  The process begins with an input image and bounding boxes (bboxes) representing objects. These are encoded using a 3D Variational Autoencoder (VAE). The encoded bboxes are combined with other conditional information (e.g., point trajectories, text prompts) and then fed into a Diffusion Transformer (DiT)-based video generation model. The DiT model processes this combined information to generate the final video output.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustration of our motion-conditioned video generation model. The input image and bbox color frames are tokenized via a 3D-VAE encoder and then summed. The resultant tokens are concatenated with other conditional tokens, and fed into the DiT-based video generation model.
> </details>



![](https://arxiv.org/html/2502.04299/x4.png)

> 🔼 This figure shows examples of video shots generated by MotionCanvas, demonstrating its ability to control both camera and object movements simultaneously.  Each row represents a different type of object motion (e.g., static objects, objects moving along a track, etc.) applied to the same input image. Each column illustrates a different camera motion technique (e.g., static camera, dolly zoom, orbit, etc.). This figure highlights the versatility and controllability of the MotionCanvas system in creating diverse cinematic shots from a single still image.
> <details>
> <summary>read the caption</summary>
> Figure 4: Shot design generated by our MotionCanvas under various types of joint camera and object motion controls.
> </details>



![](https://arxiv.org/html/2502.04299/x5.png)

> 🔼 This figure showcases the ability of MotionCanvas to generate long videos with complex and consistent camera movements, while simultaneously demonstrating control over distinct object motions within each video.  Multiple videos are shown, all sharing identical camera trajectories but exhibiting varied object movements, highlighting the model's capacity for independent control of camera and object animation.
> <details>
> <summary>read the caption</summary>
> Figure 5: Long videos with the same complex sequences of camera motion while different object motion controls in each case generated by our MotionCanvas.
> </details>



![](https://arxiv.org/html/2502.04299/x6.png)

> 🔼 This figure showcases the capabilities of MotionCanvas in generating videos with intricate and nuanced control over object motion. The top row displays examples of videos featuring diverse and fine-grained local object motions, demonstrating the system's ability to precisely manipulate individual object parts. The bottom row presents videos where these local object movements are seamlessly integrated with camera motion controls, highlighting the system's capacity to coordinate complex scene-space actions for cinematic shot design.
> <details>
> <summary>read the caption</summary>
> Figure 6: Generated videos with diverse and fine-grained local motion controls (upper), and in coordination with camera motion control (bottom).
> </details>



![](https://arxiv.org/html/2502.04299/x7.png)

> 🔼 This figure demonstrates the versatility of MotionCanvas in video editing applications. The top row showcases motion transfer, where the motion from a source video is seamlessly applied to a different image. The bottom row exemplifies the ability to modify video content by adding, removing, or changing objects within the scene.
> <details>
> <summary>read the caption</summary>
> Figure 7: Results when our method is applied for: (upper) motion transfer, and (bottom) video editing for changing objects, adding and removing objects.
> </details>



![](https://arxiv.org/html/2502.04299/x8.png)

> 🔼 This figure demonstrates a comparison of camera motion control between MotionCanvas and two existing baselines (MotionCtrl and CameraCtrl) across different shot designs.  The results show that MotionCanvas is more effective at accurately reproducing intended camera movements. The comparison is particularly striking in the second example, a complex 'Dolly-Zoom' shot, where MotionCanvas achieves significantly better accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 8: Camera motion control comparison. Compared to existing baselines, our method performs better at following the intended camera motion, especially for complex shot type such as the “Dolly-Zoom” effect (second example).
> </details>



![](https://arxiv.org/html/2502.04299/x9.png)

> 🔼 Figure 9 presents a visual comparison of video generation results from five different methods: DragAnything, MOFA-Video, TrackDiffusion, Ourscoord, and MotionCanvas.  Each method was given the same input image and task of animating a person performing a front flip. The comparison highlights the differences in motion quality, smoothness, and adherence to the intended motion parameters between various approaches.  It showcases how MotionCanvas improves upon existing methods by generating more natural and realistic animations with better control and accuracy in object and camera movement.
> <details>
> <summary>read the caption</summary>
> Figure 9: Visual comparison of the resulatant videos from DragAnything, MOFA-Video, TrackDiffusion, Ourscoordcoord{}_{\text{coord}}start_FLOATSUBSCRIPT coord end_FLOATSUBSCRIPT, and our MotionCanvas.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T2.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T2.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T2.2.2.2.3" style="padding-left:2.1pt;padding-right:2.1pt;">Metric</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.2.2.2.4" style="padding-left:2.1pt;padding-right:2.1pt;">DragAnything</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.2.2.2.5" style="padding-left:2.1pt;padding-right:2.1pt;">MOFA-Video</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T2.2.2.2.6" style="padding-left:2.1pt;padding-right:2.1pt;">TrackDiffusion</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.1.1.1.1" style="padding-left:2.1pt;padding-right:2.1pt;">Ours<math alttext="{}_{\text{coord}}" class="ltx_Math" display="inline" id="S5.T2.1.1.1.1.m1.1"><semantics id="S5.T2.1.1.1.1.m1.1a"><msub id="S5.T2.1.1.1.1.m1.1.1" xref="S5.T2.1.1.1.1.m1.1.1.cmml"><mi id="S5.T2.1.1.1.1.m1.1.1a" xref="S5.T2.1.1.1.1.m1.1.1.cmml"></mi><mtext id="S5.T2.1.1.1.1.m1.1.1.1" xref="S5.T2.1.1.1.1.m1.1.1.1a.cmml">coord</mtext></msub><annotation-xml encoding="MathML-Content" id="S5.T2.1.1.1.1.m1.1b"><apply id="S5.T2.1.1.1.1.m1.1.1.cmml" xref="S5.T2.1.1.1.1.m1.1.1"><ci id="S5.T2.1.1.1.1.m1.1.1.1a.cmml" xref="S5.T2.1.1.1.1.m1.1.1.1"><mtext id="S5.T2.1.1.1.1.m1.1.1.1.cmml" mathsize="70%" xref="S5.T2.1.1.1.1.m1.1.1.1">coord</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.1.1.1.1.m1.1c">{}_{\text{coord}}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.1.1.1.1.m1.1d">start_FLOATSUBSCRIPT coord end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.2.2.2.2" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text" id="S5.T2.2.2.2.2.1">Ours<math alttext="{}_{\text{map}}" class="ltx_Math" display="inline" id="S5.T2.2.2.2.2.1.m1.1"><semantics id="S5.T2.2.2.2.2.1.m1.1a"><msub id="S5.T2.2.2.2.2.1.m1.1.1" xref="S5.T2.2.2.2.2.1.m1.1.1.cmml"><mi id="S5.T2.2.2.2.2.1.m1.1.1a" xref="S5.T2.2.2.2.2.1.m1.1.1.cmml"></mi><mtext id="S5.T2.2.2.2.2.1.m1.1.1.1" xref="S5.T2.2.2.2.2.1.m1.1.1.1a.cmml">map</mtext></msub><annotation-xml encoding="MathML-Content" id="S5.T2.2.2.2.2.1.m1.1b"><apply id="S5.T2.2.2.2.2.1.m1.1.1.cmml" xref="S5.T2.2.2.2.2.1.m1.1.1"><ci id="S5.T2.2.2.2.2.1.m1.1.1.1a.cmml" xref="S5.T2.2.2.2.2.1.m1.1.1.1"><mtext id="S5.T2.2.2.2.2.1.m1.1.1.1.cmml" mathsize="70%" xref="S5.T2.2.2.2.2.1.m1.1.1.1">map</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.2.2.2.2.1.m1.1c">{}_{\text{map}}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.2.2.2.2.1.m1.1d">start_FLOATSUBSCRIPT map end_FLOATSUBSCRIPT</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.3.3.3.1" style="padding-left:2.1pt;padding-right:2.1pt;">ObjMC<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.3.3.3.1.m1.1"><semantics id="S5.T2.3.3.3.1.m1.1a"><mo id="S5.T2.3.3.3.1.m1.1.1" stretchy="false" xref="S5.T2.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.3.3.3.1.m1.1b"><ci id="S5.T2.3.3.3.1.m1.1.1.cmml" xref="S5.T2.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.3.3.3.1.m1.1d">↓</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.3.3.2" style="padding-left:2.1pt;padding-right:2.1pt;">32.37</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.3.3.3" style="padding-left:2.1pt;padding-right:2.1pt;">35.94</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.3.3.3.4" style="padding-left:2.1pt;padding-right:2.1pt;">30.49</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.3.3.5" style="padding-left:2.1pt;padding-right:2.1pt;">47.73</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.3.3.6" style="background-color:#F2F2F2;padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.3.3.3.6.1" style="background-color:#F2F2F2;">25.72</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T2.4.4.4.1" style="padding-left:2.1pt;padding-right:2.1pt;">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.4.4.4.1.m1.1"><semantics id="S5.T2.4.4.4.1.m1.1a"><mo id="S5.T2.4.4.4.1.m1.1.1" stretchy="false" xref="S5.T2.4.4.4.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.4.4.4.1.m1.1b"><ci id="S5.T2.4.4.4.1.m1.1.1.cmml" xref="S5.T2.4.4.4.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.4.4.4.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.4.4.4.1.m1.1d">↓</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.4.4.4.2" style="padding-left:2.1pt;padding-right:2.1pt;">64.32</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.4.4.4.3" style="padding-left:2.1pt;padding-right:2.1pt;">54.58</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.4.4.4.4" style="padding-left:2.1pt;padding-right:2.1pt;">58.08</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.4.4.4.5" style="padding-left:2.1pt;padding-right:2.1pt;">46.27</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.4.4.4.6" style="background-color:#F2F2F2;padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.4.4.4.6.1" style="background-color:#F2F2F2;">42.47</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different methods for object motion control using the VIPSeg dataset.  Metrics used likely include measures of accuracy (how well the generated object motion matches the intended motion),  quality (how realistic or natural the motion appears), and possibly others such as the Fréchet Inception Distance (FID), which evaluates the visual similarity of generated videos to real ones.  The table compares the performance of the proposed 'MotionCanvas' method against several state-of-the-art baselines, allowing for a quantitative evaluation of its effectiveness in controlling object motion.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative comparison for object motion control on VIPSeg.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T3.3.3.3.4" style="padding-left:2.9pt;padding-right:2.9pt;">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1.1" style="padding-left:2.9pt;padding-right:2.9pt;">Motion Adherence<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.1.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.1.m1.1a"><mo id="S5.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.1.m1.1b"><ci id="S5.T3.1.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.2.2.2.2" style="padding-left:2.9pt;padding-right:2.9pt;">Motion Quality<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.2.2.2.2.m1.1"><semantics id="S5.T3.2.2.2.2.m1.1a"><mo id="S5.T3.2.2.2.2.m1.1.1" stretchy="false" xref="S5.T3.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.2.2.m1.1b"><ci id="S5.T3.2.2.2.2.m1.1.1.cmml" xref="S5.T3.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.3.3.3" style="padding-left:2.9pt;padding-right:2.9pt;">Frame Fidelity<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.3.3.3.3.m1.1"><semantics id="S5.T3.3.3.3.3.m1.1a"><mo id="S5.T3.3.3.3.3.m1.1.1" stretchy="false" xref="S5.T3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.3.3.3.3.m1.1b"><ci id="S5.T3.3.3.3.3.m1.1.1.cmml" xref="S5.T3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.3.3.4.1.1" style="padding-left:2.9pt;padding-right:2.9pt;">DragAnything</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.3.4.1.2" style="padding-left:2.9pt;padding-right:2.9pt;">14.29%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.3.4.1.3" style="padding-left:2.9pt;padding-right:2.9pt;">10.10%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.3.4.1.4" style="padding-left:2.9pt;padding-right:2.9pt;">9.90%</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.3.3.5.2.1" style="padding-left:2.9pt;padding-right:2.9pt;">MOFA-Video</th>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.5.2.2" style="padding-left:2.9pt;padding-right:2.9pt;">10.48%</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.5.2.3" style="padding-left:2.9pt;padding-right:2.9pt;">10.86%</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.5.2.4" style="padding-left:2.9pt;padding-right:2.9pt;">12.95%</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.3.6.3" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T3.3.3.6.3.1" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S5.T3.3.3.6.3.1.1" style="background-color:#F2F2F2;">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.3.3.6.3.2" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S5.T3.3.3.6.3.2.1" style="background-color:#F2F2F2;">75.24%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.3.3.6.3.3" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S5.T3.3.3.6.3.3.1" style="background-color:#F2F2F2;">79.05%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.3.3.6.3.4" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S5.T3.3.3.6.3.4.1" style="background-color:#F2F2F2;">77.14%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a user study comparing three different methods for generating videos with motion control: DragAnything, MOFA-Video, and MotionCanvas.  Participants rated each method based on three criteria: motion adherence (how well the generated motion matched the intended motion), motion quality (how natural and realistic the motion appeared), and frame fidelity (the visual quality of the generated video frames). The table shows the percentage of times each method was preferred for each criterion.
> <details>
> <summary>read the caption</summary>
> Table 3: User study statistics of the preference rate for motion adherence, motion quality, and frame fidelity.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T4.9.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.7.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T4.7.5.5.6" style="padding-left:2.1pt;padding-right:2.1pt;">Variant</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.3.1.1.1" style="padding-left:2.1pt;padding-right:2.1pt;">RotErr<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.3.1.1.1.m1.1"><semantics id="S5.T4.3.1.1.1.m1.1a"><mo id="S5.T4.3.1.1.1.m1.1.1" stretchy="false" xref="S5.T4.3.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.3.1.1.1.m1.1b"><ci id="S5.T4.3.1.1.1.m1.1.1.cmml" xref="S5.T4.3.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.4.2.2.2" style="padding-left:2.1pt;padding-right:2.1pt;">TransErr<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.4.2.2.2.m1.1"><semantics id="S5.T4.4.2.2.2.m1.1a"><mo id="S5.T4.4.2.2.2.m1.1.1" stretchy="false" xref="S5.T4.4.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.4.2.2.2.m1.1b"><ci id="S5.T4.4.2.2.2.m1.1.1.cmml" xref="S5.T4.4.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.4.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.4.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.5.3.3.3" style="padding-left:2.1pt;padding-right:2.1pt;">FVD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.5.3.3.3.m1.1"><semantics id="S5.T4.5.3.3.3.m1.1a"><mo id="S5.T4.5.3.3.3.m1.1.1" stretchy="false" xref="S5.T4.5.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.5.3.3.3.m1.1b"><ci id="S5.T4.5.3.3.3.m1.1.1.cmml" xref="S5.T4.5.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.5.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.5.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.6.4.4.4" style="padding-left:2.1pt;padding-right:2.1pt;">+ Tokens(%)<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.6.4.4.4.m1.1"><semantics id="S5.T4.6.4.4.4.m1.1a"><mo id="S5.T4.6.4.4.4.m1.1.1" stretchy="false" xref="S5.T4.6.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.6.4.4.4.m1.1b"><ci id="S5.T4.6.4.4.4.m1.1.1.cmml" xref="S5.T4.6.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.6.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.6.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.7.5.5.5" style="padding-left:2.1pt;padding-right:2.1pt;">Latency<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.7.5.5.5.m1.1"><semantics id="S5.T4.7.5.5.5.m1.1a"><mo id="S5.T4.7.5.5.5.m1.1.1" stretchy="false" xref="S5.T4.7.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.7.5.5.5.m1.1b"><ci id="S5.T4.7.5.5.5.m1.1.1.cmml" xref="S5.T4.7.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.7.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.7.5.5.5.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.8.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.8.6.6.1" style="padding-left:2.1pt;padding-right:2.1pt;">Gaussian map<sup class="ltx_sup" id="S5.T4.8.6.6.1.1">∗</sup>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.6.6.2" style="padding-left:2.1pt;padding-right:2.1pt;">0.8250</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.6.6.3" style="padding-left:2.1pt;padding-right:2.1pt;">0.2551</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.6.6.4" style="padding-left:2.1pt;padding-right:2.1pt;">116.47</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.6.6.5" style="padding-left:2.1pt;padding-right:2.1pt;">99.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.6.6.6" style="padding-left:2.1pt;padding-right:2.1pt;">75s</td>
</tr>
<tr class="ltx_tr" id="S5.T4.9.7.8.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.9.7.8.1.1" style="padding-left:2.1pt;padding-right:2.1pt;">Plucker</th>
<td class="ltx_td ltx_align_center" id="S5.T4.9.7.8.1.2" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.9.7.8.1.2.1">0.5965</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.7.8.1.3" style="padding-left:2.1pt;padding-right:2.1pt;">0.2244</td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.7.8.1.4" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.9.7.8.1.4.1">25.71</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.7.8.1.5" style="padding-left:2.1pt;padding-right:2.1pt;">319.2</td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.7.8.1.6" style="padding-left:2.1pt;padding-right:2.1pt;">210s</td>
</tr>
<tr class="ltx_tr" id="S5.T4.9.7.7" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T4.9.7.7.1" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text" id="S5.T4.9.7.7.1.1" style="background-color:#F2F2F2;">Traj. coeff. (Ours)<sup class="ltx_sup" id="S5.T4.9.7.7.1.1.1">∗</sup></span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.9.7.7.2" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text" id="S5.T4.9.7.7.2.1" style="background-color:#F2F2F2;">0.6334</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.9.7.7.3" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.9.7.7.3.1" style="background-color:#F2F2F2;">0.2188</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.9.7.7.4" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text" id="S5.T4.9.7.7.4.1" style="background-color:#F2F2F2;">34.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.9.7.7.5" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.9.7.7.5.1" style="background-color:#F2F2F2;">1.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.9.7.7.6" style="padding-left:2.1pt;padding-right:2.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.9.7.7.6.1" style="background-color:#F2F2F2;">32s</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of different camera motion representations on the performance of the MotionCanvas model.  The base model is tested with three different camera motion representations: Gaussian map, Plucker coordinates, and the proposed trajectory coefficients.  The table shows the results for each representation, including rotation error (RotErr), translation error (TransErr), Fréchet Video Distance (FVD), the number of additional tokens required, and the inference time (Latency).  The study demonstrates that the proposed trajectory coefficient representation outperforms other methods in both quantitative metrics and efficiency. The * indicates that the results are obtained without any fine-tuning on the target dataset (Zero-shot performance).
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study of applying different camera motion representations on our base model. ∗: Zero-shot performance.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.04299/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04299/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04299/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04299/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04299/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04299/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04299/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04299/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04299/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04299/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04299/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04299/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04299/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04299/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04299/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04299/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04299/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04299/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}