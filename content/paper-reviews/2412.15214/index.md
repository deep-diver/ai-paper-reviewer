---
title: "LeviTor: 3D Trajectory Oriented Image-to-Video Synthesis"
summary: "LeviTor:  Revolutionizing image-to-video synthesis with intuitive 3D trajectory control, generating realistic videos from static images by abstracting object masks into depth-aware control points."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Hong Kong University of Science and Technology",]
showSummary: true
date: 2024-12-19
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.15214 {{< /keyword >}}
{{< keyword icon="writer" >}} Hanlin Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-20 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.15214" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.15214" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/levitor-3d-trajectory-oriented-image-to-video" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.15214/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current image-to-video synthesis methods often rely on 2D trajectory inputs, leading to ambiguities when handling 3D movements and occlusions.  This makes it difficult for users to precisely control object trajectories in complex scenes.  Existing approaches either demand specialized knowledge (for accurate 3D trajectory input) or are inherently limited in their ability to represent and control 3D motion accurately. 

LeviTor tackles these challenges by introducing a pioneering method that combines depth information with K-means clustered points of object masks.  This innovative approach allows for intuitive 3D trajectory control via a user-friendly interface.  The model leverages the SAM dataset for training and demonstrates superior performance in generating realistic videos with precise control over object movement, occlusion, and depth changes. **The user-friendly inference pipeline simplifies 3D trajectory input for non-expert users, expanding the accessibility and creative possibilities of video synthesis.**

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LeviTor introduces a novel method for 3D trajectory control in image-to-video synthesis, overcoming the ambiguities of 2D-based approaches. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method uses K-means clustering of object masks combined with depth information to create an effective and user-friendly control signal. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Extensive experiments demonstrate LeviTor's superior performance in precisely manipulating object movements and generating high-quality, photorealistic videos. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it presents a novel approach to 3D trajectory control in image-to-video synthesis, a crucial task with wide-ranging applications.  **It addresses the limitations of existing 2D-based methods by introducing a user-friendly 3D interaction paradigm and a more effective control signal representation, enabling precise manipulation of object movements in generated videos.** This opens up new possibilities for generating realistic and compelling visual content for various applications, such as animation, virtual reality, and interactive media.

------
#### Visual Insights



![](https://arxiv.org/html/2412.15214/x2.png)

> 🔼 This figure showcases LeviTor's ability to generate videos with fine-grained control over 3D object movement.  Starting with a single image, users can interactively define a 3D trajectory by drawing on the 2D image and specifying depth. The generated videos demonstrate LeviTor's capacity to handle complex 3D orbiting motion, accurate depth changes, and controlled occlusion between objects along that trajectory. The results highlight the system's ability to translate simple user inputs into realistic and dynamic video sequences.
> <details>
> <summary>read the caption</summary>
> Figure 1: LeviTor is capable of generating videos with controlled occlusion, better depth changes, and complex 3D orbiting movement based on user inputs. Given an initial frame, users can easily draw 3D trajectory using our inference pipeline to represent their desired movements for designated area. We highly recommend viewing the supplementary materials for detailed video demonstrations.
> </details>





{{< table-caption >}}
| Settings | Methods | FID↓ | FVD↓ | ObjMC↓ |
|---|---|---|---|---|
|  | DragAnything [47] | 36.69 | 327.41 | 42.19 |
|  | DragNUWA1.5 [53] | 44.82 | 330.17 | **33.03** |
| Single-Point | LeviTor (Ours) | **28.79** | **226.45** | 37.39 |
|  | DragAnything [47] | 36.04 | 324.95 | 38.86 |
|  | DragNUWA 1.5 [53] | 42.34 | 299.96 | **23.12** |
| Multi-Points | LeviTor (Ours) | **25.41** | **190.44** | 25.97 |{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of different video generation methods on the DAVIS [6] dataset.  The metrics used for comparison include the Frechet Inception Distance (FID), which measures the quality of generated images; the Frechet Video Distance (FVD), which assesses the quality of generated videos; and the Object Motion Consistency (ObjMC), which evaluates how well the generated object motions match the predefined trajectories.  The comparison includes the results from three different methods: DragAnything [47], DragNUWA 1.5 [53], and the authors' proposed LeviTor model, both under settings with single and multiple control points. The results show that the LeviTor method outperforms other approaches in terms of FID and FVD, indicating superior image and video quality.
> <details>
> <summary>read the caption</summary>
> Table 1:  Quantitative comparison on DAVIS [6].
> </details>





### In-depth insights


#### 3D Trajectory Control
The concept of '3D Trajectory Control' in video generation signifies a substantial leap from traditional 2D methods.  It addresses the inherent ambiguity in 2D approaches where a single 2D path can correspond to multiple 3D trajectories.  **LeviTor's innovative approach leverages depth information alongside K-means clustered points from object masks**, offering a more intuitive and accurate means of 3D trajectory input. This clever representation implicitly encodes crucial 3D attributes like occlusion and depth changes without requiring explicit 3D trajectory estimation.  The method's effectiveness is further bolstered by a user-friendly interface that simplifies trajectory input, allowing for intuitive depth adjustment. This makes complex 3D motion control accessible even to users lacking specialized 3D modeling skills. **The results demonstrate a significant improvement in generating realistic videos with accurate 3D object movements**, particularly regarding occlusion and complex interactions, surpassing the limitations of prior 2D-based methods.  The success of LeviTor highlights the importance of incorporating depth cues for precise control and underscores the potential for user-friendly interfaces to democratize the creation of high-quality, dynamic video content.

#### Video Diffusion Models
Video diffusion models have emerged as a powerful technique for generating high-quality videos, surpassing traditional methods in realism and control.  These models leverage the principles of diffusion processes, gradually adding noise to a video until it becomes pure noise, and then reversing this process to generate a new video from random noise. **This approach allows for the generation of diverse and coherent videos**. However, several challenges remain. One major challenge is **scalability**: training these models requires significant computational resources and massive datasets, limiting accessibility. Another key area of concern is **controllability**: while initial models focused on generating videos from simple inputs like text prompts, more sophisticated approaches are needed to precisely control aspects like object motion, style, and content.  **Integrating depth information and 3D trajectory control is an active area of research**, enabling more realistic and nuanced video generation,  as demonstrated by the paper's proposed LeviTor method.  Further advancements will likely focus on improving control mechanisms, enhancing efficiency and scalability, and exploring applications in fields like virtual reality, interactive media, and visual effects.

#### User Interaction Design
The user interaction design in LeviTor is a **key strength**, cleverly balancing simplicity with powerful 3D control.  Instead of demanding complex 3D modeling skills, it empowers users to intuitively manipulate object trajectories via 2D interactions.  Users draw trajectories on a 2D image and assign relative depth values to each point, a process that is straightforward and accessible. This **intuitive approach** dramatically reduces the barrier to entry for non-experts, widening the potential user base significantly. The system then translates these inputs into precise 3D control signals, a feat achieved through K-means clustering of object masks and integration of depth information. The design's effectiveness hinges on its **ability to represent complex 3D movements from simple 2D interactions**, successfully mitigating the ambiguity inherent in 2D-only approaches.  However, there's room for improvement.  The dependence on a pre-trained depth estimation model could introduce errors, and handling very complex scenes with many interacting objects might present challenges. Further development could explore more sophisticated interaction techniques, perhaps integrating 3D sketching or virtual reality tools, to provide even greater precision and flexibility.

#### Limitations and Future
The LeviTor model, while innovative in enabling 3D trajectory control for image-to-video synthesis, exhibits certain limitations.  **The reliance on pre-trained video generation models** (like Stable Video Diffusion) restricts its ability to handle highly complex, non-rigid object movements and deformations.  The current framework struggles with accurate representation of smaller details, especially in faces or fine-grained movements of limbs. **The K-means clustering approach**, used to represent control points, might oversimplify intricate object shapes, impacting realism.   Future improvements should focus on integrating more advanced video generation models capable of handling deformable objects and dynamic scenes more realistically.  **Further research into more sophisticated control signal representations**, possibly incorporating explicit 3D trajectory information or learned motion priors, could enhance precision and reduce ambiguity.  Exploring alternative clustering methods that better preserve object details could enhance visual fidelity.  Finally, a robust user interface designed to aid intuitive control point selection and depth adjustment is crucial to improve user experience and broaden accessibility.

#### Ablation Experiments
Ablation experiments systematically remove components of a model to assess their individual contributions.  In this context, it would involve selectively disabling features like depth information, instance segmentation, or varying the number of control points to analyze their impact on video generation quality.  **Results would reveal the relative importance of each component**, showing whether certain features are crucial for realistic motion, occlusion handling, or overall visual fidelity. For instance, removing depth information might lead to a significant drop in accuracy of 3D trajectory representation, while reducing control points could simplify the generation process but at the cost of reduced precision in movement.  By carefully evaluating the effects of each ablation, researchers can gain **deep insights into the model's architecture**, understand feature interactions, and identify areas for improvement or simplification. **The findings provide valuable information** for optimizing the model, potentially achieving similar performance with a less computationally intensive design.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.15214/x3.png)

> 🔼 This figure shows how object movement and occlusion are represented using K-means clustering. The K-means algorithm groups similar pixels in the object masks into clusters, represented by points.  The spatial distribution and density of these points convey information about the object's movement and occlusion. For instance, as an object moves closer to the camera, the points spread out due to perspective scaling, indicating depth changes. Similarly, when objects occlude each other, the distribution of points shifts, reflecting the occlusion dynamics. This representation simplifies user interaction while capturing essential 3D attributes of object trajectories without explicitly estimating 3D trajectories.
> <details>
> <summary>read the caption</summary>
> Figure 2: An example of object movement and occlusion represented by K-means clustered points.
> </details>



![](https://arxiv.org/html/2412.15214/x4.png)

> 🔼 This figure illustrates the process of generating the control signals used by the LeviTor model for image-to-video synthesis.  It starts with input video data, including object masks. These masks undergo K-means clustering to identify key representative points. A depth estimation network (DepthAnythingV2) is then used to determine the relative depth of these points. Finally, these points with their depth information and instance information are combined to create a comprehensive control signal that guides the video generation process.
> <details>
> <summary>read the caption</summary>
> Figure 3: Control signal generation process of LeviTor.
> </details>



![](https://arxiv.org/html/2412.15214/x5.png)

> 🔼 The figure illustrates the LeviTor inference pipeline, detailing the user interaction and processing steps for 3D trajectory-based video generation.  Users start by selecting objects in a retrieval panel, then use an interactive panel to draw 3D trajectories by clicking points and specifying depth.  The system processes this input by generating 3D rendered object masks, which are then used as control signals for a video diffusion model to synthesize the final video, aligning with the user-defined 3D trajectories.
> <details>
> <summary>read the caption</summary>
> Figure 4: Inference pipeline of LeviTor, which consists of user retrieval panel, interactive panel, 3D rendered object masks generation and video synthesis. Users can easily draw 3D trajectories through our retrieval panel and interactive panel, and our system later use these inputs to generate user desired videos.
> </details>



![](https://arxiv.org/html/2412.15214/x6.png)

> 🔼 This figure illustrates the process of generating 3D rendered object masks, a crucial step in LeviTor's inference pipeline.  It starts with user-provided sparse 3D trajectories (points in 2D space with associated depth values). These points are projected into a 3D camera coordinate system.  Then, a 3D rendering process creates 3D object masks. Finally, K-means clustering on these rendered masks refines the control signals by generating a set of representative clustered points that serve as input for the video generation model. This process efficiently translates user-provided sparse 3D trajectory information into a representation suitable for controlling the video generation process while addressing depth and occlusion challenges inherent in 3D scene synthesis.
> <details>
> <summary>read the caption</summary>
> Figure 5: 3D rendered object masks generation pipeline.
> </details>



![](https://arxiv.org/html/2412.15214/x7.png)

> 🔼 Figure 6 presents a qualitative comparison of LeviTor against two state-of-the-art methods, DragAnything and DragNUWA, in controlling object movements within video generation.  All three methods are evaluated on three key aspects: handling mutual occlusion between objects (top two rows), controlling forward and backward object movements (bottom-left), and implementing complex motions (bottom-right).  The comparison highlights LeviTor's ability to provide more nuanced control compared to methods that use only 2D trajectory inputs or pre-encoded trajectories. DragAnything allows user-selected mask areas to be moved, similar to LeviTor. DragNUWA, however, operates by directly encoding trajectories without user selection of areas of operation.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative comparison with DragAnything [47] and DragNUWA [53]. LeviTor and DragAnything both support moving user-selected mask areas, whereas DragNUWA directly encodes trajectories as control signals and does not support user selection of operation areas. The top two rows show evaluation on control of mutual occlusion between objects. The left bottom images show comparison of forward and backward object movements control. The right bottom images show a case of complex motion implementation.
> </details>



![](https://arxiv.org/html/2412.15214/x8.png)

> 🔼 This figure shows an ablation study on the impact of instance and depth information on the image-to-video synthesis results.  The results are presented as videos. The top row shows the results when both instance and depth information are used. Subsequent rows show results when either instance or depth information are omitted.  Red boxes highlight key areas to emphasize the differences in video synthesis quality. Zooming in enhances the visibility of details.
> <details>
> <summary>read the caption</summary>
> Figure 7: Ablation on Instance and Depth information. Enlarged details are shown in red boxes. Zoom in for better viewing.
> </details>



![](https://arxiv.org/html/2412.15214/x9.png)

> 🔼 This ablation study investigates the effect of varying the number of control points used during inference in the LeviTor model.  The figure shows several examples of video generation results using different scaling factors applied to the initial number of control points.  It demonstrates the trade-off between motion amplitude and generation quality. Fewer control points may lead to large movements but blurry results, while excessively many control points may constrain the motion and introduce artifacts.  The optimal number of control points balances these factors to achieve both realistic movement and visual fidelity.
> <details>
> <summary>read the caption</summary>
> Figure 8: Ablation on number of inference control points.
> </details>



![](https://arxiv.org/html/2412.15214/x10.png)

> 🔼 This figure shows an ablation study on the impact of varying the number of control points used during inference in the LeviTor model.  The study compares results using the model's default number of control points and a significantly higher density of control points. The results demonstrate that while using the default number of points yields realistic results for fluid motion and human running, excessively increasing the number of points can lead to unnatural artifacts and limitations in capturing non-rigid movements. This highlights the importance of using a carefully balanced number of control points in LeviTor to effectively generate video with both rigid and non-rigid motions.
> <details>
> <summary>read the caption</summary>
> Figure S1: Ablation results on the Number of Control Points for Inference. We highly recommend viewing the visualization results for detailed video demonstrations.
> </details>



![](https://arxiv.org/html/2412.15214/x11.png)

> 🔼 Figure S2 shows a comparison between LeviTor and a single-point control model for video generation.  The single-point control method uses only the center point of each object's mask and its depth changes as the control signal, lacking the richer information provided by multiple clustered points used in LeviTor. The figure visually demonstrates the limitations of the single-point method in representing 3D motion accurately, highlighting LeviTor's advantages in handling complex scenarios such as occlusions and size changes due to movement. The differences in visual fidelity and accuracy of motion representation are apparent.  To fully appreciate the differences, it is recommended to view the accompanying videos.
> <details>
> <summary>read the caption</summary>
> Figure S2: Comparison with Single-point Control model. We highly recommend viewing the visualization results for detailed video demonstrations.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Depth | Instance | FID↓ | FVD↓ | ObjMC↓ |
|---|---|---|---|---|
| ✗ | ✗ | 27.83 | 227.58 | 29.82 |
| ✓ | ✗ | 28.04 | 221.29 | 29.13 |
| ✗ | ✓ | 25.45 | 199.44 | **25.40** |
| ✓ | ✓ | **25.41** | **190.44** | 25.97 |{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies conducted to evaluate the impact of object instance and depth information on the performance of the LeviTor model.  The study removes either object instance information, depth information, or both, and assesses the resulting impact on FID, FVD, and ObjMC scores. This allows for a quantitative analysis of the contribution of these data elements to the model's accuracy and effectiveness in video generation.
> <details>
> <summary>read the caption</summary>
> Table 2:  Ablations on Object Instance and Depth information.
> </details>

{{< table-caption >}}
| Methods | FID ↓ | FVD ↓ | ObjMC ↓ |
|---|---|---|---|
| Single-Point Control | 30.91 | 253.73 | 38.21 |
| Ours | **25.41** | **190.44** | **25.97** |{{< /table-caption >}}
> 🔼 Table S1 provides a quantitative comparison of video generation results between using single-point control and the proposed LeviTor method on the DAVIS dataset. The metrics used for comparison include FID (Fréchet Inception Distance) for image quality, FVD (Fréchet Video Distance) for video quality, and ObjMC (object motion consistency) for evaluating the accuracy of the generated motion. Lower scores for FID, FVD, and ObjMC indicate better quality and motion accuracy.
> <details>
> <summary>read the caption</summary>
> Table S1:  Quantitative comparison with Single-point Control on DAVIS [6].
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.15214/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.15214/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.15214/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.15214/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.15214/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.15214/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.15214/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.15214/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.15214/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.15214/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.15214/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.15214/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.15214/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}