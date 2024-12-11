---
title: "ObjCtrl-2.5D: Training-free Object Control with Camera Poses"
summary: "ObjCtrl-2.5D: Training-free, precise image-to-video object control using 3D trajectories and camera poses."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Nanyang Technological University",]
showSummary: true
date: 2024-12-10
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.07721 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhouxia Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.07721" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.07721" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/objctrl-2-5d-training-free-object-control" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.07721/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current image-to-video generation methods struggle with precise and versatile object control, largely due to the use of 2D trajectories which often fail to capture user intent and can result in unrealistic movements. This paper introduces ObjCtrl-2.5D, a novel approach that leverages 3D trajectories (extended from 2D with depth information) and models object movement as camera movement.  This allows the use of existing camera motion control modules without retraining. 

ObjCtrl-2.5D addresses the limitations of 2D-based approaches by incorporating depth information to create more accurate 3D representations of object movement.  **The system uses a Layer Control Module to isolate the target object, ensuring independent local control**, and a **Shared Warping Latent technique to improve accuracy**. Experiments demonstrate that ObjCtrl-2.5D significantly enhances control accuracy and versatility compared to other methods, handling complex movements such as rotation.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} ObjCtrl-2.5D enables precise object control in image-to-video generation without requiring training. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Using 3D trajectories significantly improves object motion realism compared to existing 2D methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The method introduces a novel Layer Control Module and Shared Warping Latent for more accurate local object manipulation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses a critical challenge in image-to-video generation: achieving precise and versatile object control.  **The training-free approach** is particularly valuable as it avoids the need for extensive training data, making the method more accessible and applicable to broader research settings.  **The introduction of 3D trajectories** significantly improves the naturalness and realism of generated videos, opening new avenues for creating more engaging and realistic video content.

------
#### Visual Insights



![](https://arxiv.org/html/2412.07721/x1.png)

> 🔼 ObjCtrl-2.5D is a novel method for image-to-video generation that allows for versatile object motion control using 2D trajectories, 3D trajectories, or camera poses.  The method leverages an existing camera motion control module, eliminating the need for additional training.  It improves upon existing methods by enabling precise control and supporting complex motions (such as rotation) that go beyond simple planar movements. The figure visually demonstrates the diverse control capabilities of ObjCtrl-2.5D with several examples.
> <details>
> <summary>read the caption</summary>
> Figure 1: ObjCtrl-2.5D enables versatile object motion control for image-to-video generation. It accepts 2D trajectories, 3D trajectories, or camera poses as control guidance (all transformed to camera poses) and achieves precise motion control by utilizing an existing camera motion control module without additional training. Unlike existing methods based on 2D trajectories, ObjCtrl-2.5D supports complex motion control beyond planar movement, such as object rotation, as demonstrated in the last row. We strongly recommend viewing the project page for dynamic results.
> </details>





{{< table-caption >}}
| Methods | DAVIS FID ↓ | DAVIS FVD ↓ | DAVIS ObjMC ↓ | ObjCtrl-Test FID ↓ | ObjCtrl-Test FVD ↓ | ObjCtrl-Test ObjMC ↓ |
|---|---|---|---|---|---|---|
| DragNUWA [64] | 62.36 | 11.68 | 37.57 | 235.94 | 27.45 | 58.80 |
| DragAnything [58] | 59.81 | 11.05 | 46.10 | 227.72 | 26.93 | 60.81 |
| PEEKABOO∗ [19] | 62.43 | 11.97 | 128.05 | 250.68 | 27.54 | 164.40 |
| FreeTraj∗ [32] | 69.72 | 12.62 | 125.30 | 244.88 | 26.74 | 158.39 |
| **ObjCtrl-2.5D** | 59.77 | 12.22 | 91.42 | 247.48 | 27.82 | 120.37 |{{< /table-caption >}}

> 🔼 Table 1 presents a quantitative comparison of different video generation methods on two datasets: DAVIS [31] and the newly introduced ObjCtrl-Test.  The metrics used are Fréchet Inception Distance (FID), Fréchet Video Distance (FVD), and Object Motion Control (ObjMC) error. The table highlights that ObjCtrl-2.5D, a training-free method, shows significant improvement in object motion control accuracy (as measured by ObjMC) compared to other training-free methods like PEEKABOO [19] and FreeTraj [32]. While still slightly behind training-based methods (DragNUWA [64] and DragAnything [58]) in terms of overall accuracy, ObjCtrl-2.5D demonstrates greater versatility in controlling object movement, as shown in Figures 1 and 6 of the paper.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative Comparisons on DAVIS [31] and ObjCtrl-Test. ObjCtrl-2.5D, as a training-free approach, shows promising improvement in object motion control compared to prior training-free methods, PEEKABOO [19] and FreeTraj [32], as indicated by ObjMC scores. Although there remains room for improvement compared to training-based methods such as DragNUWA [64] and DragAnything [58], ObjCtrl-2.5D offers more versatile object control, as demonstrated in Figure 1 and Figure 6.
> </details>





### In-depth insights


#### 3D Trajectory Control
The concept of '3D Trajectory Control' in the context of image-to-video generation represents a significant advancement over traditional 2D methods.  **Existing 2D approaches often struggle to capture nuanced user intent**, resulting in unnatural or imprecise object movements. By incorporating depth information to extend 2D trajectories into 3D, and then representing this 3D movement as a sequence of camera poses, a more intuitive and accurate control mechanism is established.  This approach leverages the strengths of existing camera motion control models, eliminating the need for extensive retraining while achieving enhanced versatility.  **The key is the transformation of the spatial trajectory into camera poses**, which directly addresses the limitations of 2D methods.  This transformation is crucial because it allows the system to naturally control object movement in three dimensions, leading to more realistic and engaging video outputs.  Furthermore, techniques like the Layer Control Module (LCM) and Shared Warping Latents (SWL) are pivotal in ensuring precise and targeted control without interfering with the background and ensuring the object movement remains accurate over time.

#### Training-Free Method
The core concept of a "Training-Free Method" in the context of this research paper is the ability to achieve precise object control within video generation **without the need for any additional training** of the underlying model.  This is a significant departure from many existing approaches that require extensive training data for object manipulation. The paper proposes a novel method that leverages existing camera motion control models, thereby bypassing the usual training phase.  The focus shifts to cleverly adapting existing models to the task, rather than creating new ones, **resulting in significant computational cost savings and increased efficiency**. By representing object motion as camera poses, the method exploits the inherent capabilities of existing camera control mechanisms, making this approach both innovative and practical.  A key element is the extension of 2D trajectories to 3D using depth information, adding another layer of realism and control.  The method's effectiveness is demonstrated through rigorous experimentation and comparison against both training-free and training-based alternatives.  This approach highlights the potential to reduce reliance on large training datasets while still achieving high-quality results and versatile object control.

#### Camera Pose Control
Camera pose control, in the context of image-to-video generation, offers a powerful approach to manipulating object motion.  Instead of relying on less precise 2D trajectory inputs, **using camera poses directly provides a more intuitive and accurate means of specifying 3D object movement.**  This is because camera poses inherently encapsulate 3D spatial information, including both position and orientation.  A method leveraging camera poses allows for the creation of nuanced animations, capturing both translational and rotational object movement with greater fidelity. **The choice to represent object motion via camera poses significantly enhances the controllability and realism of generated videos.** Moreover, **training-free object control via camera pose manipulation simplifies the pipeline, avoiding the need for extensive training datasets or complex models specifically tailored for object motion.** By utilizing pre-trained camera motion control modules, this approach offers a computationally efficient and versatile solution for complex object movements in I2V generation.

#### Ablation Study Results
An ablation study systematically removes components of a model to assess their individual contributions.  In this context, an ablation study on a video generation model with object control would likely evaluate the impact of removing key modules, such as **the depth estimation module**, **the layer control module**, or the **shared warping latent module**. Removing the depth estimation would test the model's performance solely on 2D trajectories. Removing the layer control module would assess how well the model isolates the target object for motion control without separating foreground and background. Finally, removing the shared warping latent module would test whether this feature significantly improves object control precision.  The ablation study would likely quantify these effects using standard metrics like FID and FVD to evaluate video quality and ObjMC to measure the accuracy of object trajectory following.  **The results would demonstrate the relative importance of each module**, providing valuable insights into the model's architecture and the effectiveness of its design choices.  Significant performance drops when removing certain components would highlight their crucial role in achieving high-quality, controllable video generation.

#### Future Work
Future research directions stemming from this work on ObjCtrl-2.5D could involve several key improvements.  **Extending the approach to handle more complex 3D geometries and object interactions** would be crucial; the current method simplifies 3D object motion as camera translation. Incorporating object rotation and more nuanced interactions (collisions, occlusions) presents a significant challenge.  Another avenue is **enhancing the robustness of the system to handle more complex scenes and varied object appearances**. The current method relies on readily extractable object masks; adapting it to more challenging visual scenarios would significantly improve its generalizability. **Improving the efficiency and scalability of the approach** is also important; the current implementation requires depth estimation and other computationally intensive steps.  Finally, **exploring alternative control mechanisms beyond trajectories and camera poses** (e.g., natural language descriptions or sketches) would make the system more user-friendly and accessible to a wider range of users.  Addressing these aspects would lead to a more versatile and powerful object control system in the context of image-to-video generation.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.07721/x2.png)

> 🔼 This figure compares object control using 2D and 3D trajectories in image-to-video generation.  The left side shows the input: a 2D trajectory (red line) and a 3D trajectory (blue line) extracted from a real-world video, with the green dot representing the starting point. The right side presents the results.  DragAnything [58], a training-based method using the 2D trajectory, accurately follows the path but unrealistically moves the car horizontally toward the grass, ignoring the depth.  In contrast, the proposed ObjCtrl-2.5D method, using the 3D trajectory, correctly guides the car's movement, demonstrating better accuracy and more realistic behavior, including its approach towards the camera (indicated by the decreasing depth).  The depth information from the 3D trajectory allows for more accurate and natural object movement.
> <details>
> <summary>read the caption</summary>
> Figure 2: Object control results using 2D and 3D trajectories. On the right, the red line represents the 2D trajectory, the blue line indicates the 3D trajectory extracted from real-world video in DAVIS [31], and the green point marks the starting point of the trajectory. The training-based method DragAnything [58], which controls objects using a 2D trajectory, closely follows the specified path; however, it results in the car appearing to move horizontally toward the grass, which is atypical in real-world settings. By incorporating depth information from a 3D trajectory, our proposed method generates videos that not only follow the spatial trajectory but also achieve more realistic movement.
> </details>



![](https://arxiv.org/html/2412.07721/x3.png)

> 🔼 ObjCtrl-2.5D uses a 2D trajectory and depth information from an image to create a 3D trajectory.  This 3D trajectory is converted into camera poses using Algorithm 1.  To control object movement within an existing camera motion control module, a Layer Control Module (LCM) separates the object and background using distinct camera poses.  A camera encoder extracts features from these poses, which are then spatially combined using scale-wise masks by the LCM. Finally, a Shared Warping Latent (SWL) technique improves control accuracy by sharing low-frequency noise across frames within the object's warped region.
> <details>
> <summary>read the caption</summary>
> Figure 3: Framework of ObjCtrl-2.5D. ObjCtrl-2.5D first extends the provided 2D trajectory 𝒯2⁢dsubscript𝒯2𝑑\mathcal{T}_{2d}caligraphic_T start_POSTSUBSCRIPT 2 italic_d end_POSTSUBSCRIPT to a 3D trajectory 𝒯3⁢dsubscript𝒯3𝑑\mathcal{T}_{3d}caligraphic_T start_POSTSUBSCRIPT 3 italic_d end_POSTSUBSCRIPT using depth information from the conditioning image. This 3D trajectory is then transformed into a camera pose 𝐄𝐨subscript𝐄𝐨\mathbf{E_{o}}bold_E start_POSTSUBSCRIPT bold_o end_POSTSUBSCRIPT via Algrithm 1. To achieve object motion control within a frozen camera motion control module, ObjCtrl-2.5D integrates a Layer Control Module (LCM) that separates the object and background with distinct camera poses (𝐄𝐨subscript𝐄𝐨\mathbf{E_{o}}bold_E start_POSTSUBSCRIPT bold_o end_POSTSUBSCRIPT and 𝐄𝐛𝐠subscript𝐄𝐛𝐠\mathbf{E_{bg}}bold_E start_POSTSUBSCRIPT bold_bg end_POSTSUBSCRIPT). After extracting camera pose features via a Camera Encoder, LCM spatially combines these features using a series of scale-wise masks. Additionally, ObjCtrl-2.5D introduces a Shared Warping Latent (SWL) technique, which enhances control by sharing low-frequency initialized noise across frames within the warped areas of the object.
> </details>



![](https://arxiv.org/html/2412.07721/x4.png)

> 🔼 This figure illustrates the method used to translate a 3D trajectory of an object's movement into a series of camera poses.  The object's movement from one point to the next in the 3D trajectory is represented by a camera translation.  The rotation of the camera is not considered, thus simplifying the transformation. This process leverages triangulation to map points in the 3D trajectory to camera positions, thereby enabling control of object motion using an existing camera motion control model. Algorithm 1 provides the detailed pseudocode for this transformation.
> <details>
> <summary>read the caption</summary>
> Figure 4: 3D Trajectory to Camera Poses. We model the object movement in a video, indicated by a 3D trajectory, as the camera’s location translation in 3D space. Details refer to Sec. 3.2.1 and Algorithm. 1.
> </details>



![](https://arxiv.org/html/2412.07721/x5.png)

> 🔼 This figure compares the object control capabilities of ObjCtrl-2.5D against two other training-free methods, PEEKABOO and FreeTraj.  PEEKABOO and FreeTraj use 2D trajectories and bounding boxes to control object movement, resulting in less precise control and alignment with the intended trajectory. ObjCtrl-2.5D, however, improves accuracy by expanding the 2D trajectory into 3D using depth information, and then converting the 3D trajectory into camera poses using a geometric projection (triangulation).  This allows for more precise control and better alignment of the object's movement to the desired trajectory.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative Comparison with Training-free Methods. While PEEKABOO [19] and FreeTraj [32] can move the object coarsely within the bounding boxes generated from the trajectory, they lack control precision. In contrast, ObjCtrl-2.5D achieves higher trajectory alignment by extending the 2D trajectory to 3D and accurately transforming it into camera poses through a geometric projection algorithm (triangulation [38, 39]).
> </details>



![](https://arxiv.org/html/2412.07721/x6.png)

> 🔼 This figure compares the object control capabilities of ObjCtrl-2.5D with two training-based methods: DragAnything and DragNUWA.  The comparison highlights how the training strategies of the existing methods lead to less precise and less versatile object control.  DragAnything applies global movement, unintentionally affecting all objects, even when only one object's movement is specified.  DragNUWA often only moves a portion of the targeted object. In contrast, ObjCtrl-2.5D, with its Layer Control Module, demonstrates precise and targeted control, even when the trajectory involves complex movements like front-to-back-to-front motion (as indicated by the green point).  This shows the superior versatility of ObjCtrl-2.5D.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative Comparison with Training-based Methods. Due to their training strategy, DragAnything [58] tends to apply global movement to objects (both potted plants shift downward, despite only the right plant being specified to move), and DragNUWA [64] often moves only part of the target object. In contrast, our proposed ObjCtrl-2.5D achieves precise, targeted object control thanks to its Layer Control Module. Additionally, ObjCtrl-2.5D is capable of performing more versatile object control when given a trajectory with a fixed spatial position (the green point in the second sample), such as front-to-back-to-front movement, while DragAnything [58] generates a relatively static video.
> </details>



![](https://arxiv.org/html/2412.07721/x7.png)

> 🔼 This ablation study evaluates the individual contributions of the Layer Control Module (LCM), scale-wise mask, and Shared Warping Latent (SWL) to ObjCtrl-2.5D's object control capabilities.  (a) shows that without the LCM, the entire scene is affected by the motion control, leading to unnatural results. (b) demonstrates the importance of the scale-wise mask, as removing it results in a loss of object controllability. (c) shows reduced control accuracy without the SWL, highlighting its role in refining object movement.  (d) presents the complete ObjCtrl-2.5D model with all components, showcasing effective object motion control.
> <details>
> <summary>read the caption</summary>
> Figure 7: Qualitative Results of Ablation Studies on LCM, Scale-wise Mask, and SWL. Without the Layer Control Module (LCM), ObjCtrl-2.5D applies motion control to the entire scene (a) rather than isolating the specific object (d). Removing the Shared Warping Latent (SWL) reduces controllability (c), while omitting the scale-wise mask may eliminate controllability (b).
> </details>



![](https://arxiv.org/html/2412.07721/extracted/6059641/figures/user_study.png)

> 🔼 A user study was conducted to compare the video generation results of ObjCtrl-2.5D against other state-of-the-art training-free and training-based methods. Participants were asked to evaluate the quality of object motion control in generated videos. The results show that a clear majority of participants favored ObjCtrl-2.5D, citing its superior trajectory alignment and more natural-looking object movements.
> <details>
> <summary>read the caption</summary>
> Figure 8: User Study. The majority of participants preferred the results obtained with ObjCtrl-2.5D over both training-free and training-based methods, attributing this preference to its better trajectory alignment and more natural motion generation.
> </details>



![](https://arxiv.org/html/2412.07721/x8.png)

> 🔼 This ablation study compares the performance of ObjCtrl-2.5D's Shared Warping Latent (SWL) method against FreeTraj's [32] copy-pasting approach.  SWL selectively applies shared latent information only to the object's warped region, thus preventing unintentional modifications to the background. In contrast, FreeTraj's method broadly applies the shared latent within bounding boxes, leading to noticeable artifacts in the generated video.  The figure visually demonstrates the superior control and reduced artifacts achieved by SWL.
> <details>
> <summary>read the caption</summary>
> Figure 9: Qualitative Results of Ablation Studies on SWL and Copy-pasting Shared Latent. The Shared Warping Latent (SWL) in ObjCtrl-2.5D restricts the shared latent specifically within the object’s warping areas, effectively avoiding unintended effects on the background while controlling the target object. In contrast, the copy-pasting mechanism used in FreeTraj [32] coarsely applies the shared latent within bounding boxes, resulting in pronounced artifacts in the generated video.
> </details>



![](https://arxiv.org/html/2412.07721/x9.png)

> 🔼 This figure showcases the versatility of ObjCtrl-2.5D in controlling both the foreground object and the background simultaneously using user-provided camera pose sequences.  Unlike methods restricted to pre-defined trajectories, ObjCtrl-2.5D allows for complex camera movements, such as zooming, panning, and other custom effects, demonstrating its adaptability and potential for creating highly customized video generation.
> <details>
> <summary>read the caption</summary>
> Figure 10: Additional Results with User-Defined Camera Poses. ObjCtrl-2.5D allows both the object and background to be manipulated using user-defined camera poses, enabling effects like zooming in, as shown in these examples. More results can be found in the supplementary materials.
> </details>



![](https://arxiv.org/html/2412.07721/x10.png)

> 🔼 Figure 11 shows examples where ObjCtrl-2.5D fails to accurately control object motion when using high-speed camera movements.  The limitations of the underlying SVD video generation model in handling rapid changes in motion cause the target object to disappear from the scene in the later frames, leaving only the background visible. While this is a limitation of the current method, it also suggests a potential application for image inpainting techniques to fill in the missing object.
> <details>
> <summary>read the caption</summary>
> Figure 11: Failure Cases. Due to the limitations of SVD [3] in handling large motions, ObjCtrl-2.5D with high-speed camera poses results in the object fading out of the scene, leaving only the background. Interestingly, this outcome reveals potential for image inpainting applications, as seen in the last frames of the generated videos.
> </details>



![](https://arxiv.org/html/2412.07721/x11.png)

> 🔼 Figure 12 illustrates the recommended approach for drawing 2D trajectories when using depth information for improved 3D object control in video generation.  Directly drawing the trajectory onto the depth map ensures smoother depth transitions between frames and prevents unnatural, abrupt changes in depth. The method is superior to drawing on the original image as the depth information is inherently smooth in the depth map. Additionally, the flexibility to draw the trajectory anywhere on the depth image, rather than restricting it to start on the object, allows for a more intuitive interaction and more appropriate depth values without impacting the movement of the target object.
> <details>
> <summary>read the caption</summary>
> Figure 12: Guidelines for Drawing Trajectories. Drawing 2D trajectories directly on the depth image is recommended, as it ensures smoother depth transitions and avoids abrupt changes (refer to (a)) with the intrinsic depth information. Furthermore, trajectories can be drawn anywhere on the depth image to achieve appropriate depth values without affecting the movement of the target object.
> </details>



![](https://arxiv.org/html/2412.07721/x12.png)

> 🔼 This figure shows additional results obtained using user-defined camera poses with ObjCtrl-2.5D.  It demonstrates the versatility of the model by showcasing how it can produce different video outputs from the same input image, simply by changing the camera movement instructions.  The top row shows examples of changing the camera's zoom level, while the bottom shows panning left, right, and zoom.  The variations highlight the precise control ObjCtrl-2.5D offers over object motion within a video generation context.
> <details>
> <summary>read the caption</summary>
> Figure 13: Additional Results with User-Defined Camera Poses. ObjCtrl-2.5D can drive the same sample differently with different camera poses. We strongly recommend viewing the project page for dynamic results.
> </details>



![](https://arxiv.org/html/2412.07721/x13.png)

> 🔼 Figure 14 presents a qualitative comparison of object control results between ObjCtrl-2.5D and other state-of-the-art methods, both training-free and training-based.  The figure showcases three example scenarios, each demonstrating the differences in object control precision.  ObjCtrl-2.5D exhibits superior trajectory alignment and more precise control over the target object, while the other methods, particularly the training-free ones, either suffer from imprecise alignment or unintentionally affect the background or only parts of the target object. The training-based approaches, while achieving good alignment, sometimes inadvertently move the entire scene instead of just the specified object. This highlights ObjCtrl-2.5D's ability to effectively control object movement within a complex scene without affecting unwanted elements.
> <details>
> <summary>read the caption</summary>
> Figure 14: More Compared Results with Previous Methods. ObjCtrl-2.5D outperforms training-free methods (PEEKABOO [19] and FreeTraj [32]) in trajectory alignment and achieves more precise target object movement compared to training-based methods (DragNUWA [64] and DragAnything [58]), which often result in either global scene movement or partial object movement. We strongly recommend viewing the project page for dynamic results.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.07721/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.07721/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.07721/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.07721/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.07721/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.07721/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.07721/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.07721/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.07721/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.07721/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.07721/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.07721/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.07721/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.07721/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.07721/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}