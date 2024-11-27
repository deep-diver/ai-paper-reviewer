---
title: "AnchorCrafter: Animate CyberAnchors Saling Your Products via Human-Object Interacting Video Generation"
summary: "AnchorCrafter animates cyber-anchors selling products via human-object interacting video generation, achieving high visual fidelity and controllable interactions."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Tencent AI Lab",]
showSummary: true
date: 2024-11-26
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2411.17383 {{< /keyword >}}
{{< keyword icon="writer" >}} Ziyi Xu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-11-27 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2411.17383" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2411.17383" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/anchorcrafter-animate-cyberanchors-saling" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2411.17383/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Generating realistic anchor-style product promotion videos automatically is challenging due to the difficulty in incorporating human-object interactions (HOI) into existing pose-guided human video generation models.  Current approaches struggle with accurately representing objects, controlling their movement, and ensuring seamless interaction with humans.  They often treat objects as static textures, leading to unnatural and unconvincing videos. 

AnchorCrafter tackles these issues with two key innovations. First, **HOI-appearance perception** enhances object recognition from various viewpoints and separates object and human appearances. Second, **HOI-motion injection** enables complex interactions by overcoming challenges in object trajectory prediction and managing occlusions. The model also uses a **HOI-region reweighting loss** to improve object detail learning. Experiments show that AnchorCrafter significantly outperforms existing approaches in preserving object appearance and achieving natural interactions, demonstrating its potential in automating product promotion video creation.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} AnchorCrafter, a novel diffusion-based system generates high-fidelity anchor-style product promotion videos. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} It incorporates human-object interactions (HOI) improving object appearance recognition and enabling complex interactions. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The system outperforms existing methods in preserving object appearance and generating realistic interactions. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it **addresses a significant challenge in video generation**: creating realistic and engaging anchor-style product promotion videos.  It presents a novel approach, **AnchorCrafter**, that surpasses existing methods in both preserving object appearance and creating natural human-object interactions. This opens **new avenues for research** in human-object interaction modeling and opens up **commercial applications** in e-commerce, advertising, and marketing.

------
#### Visual Insights



![](https://arxiv.org/html/2411.17383/extracted/6025749/image/Intro/reference.png)

> 🔼 AnchorCrafter is a new framework for generating high-quality videos of people promoting products, similar to what you see in online shopping.  It uses diffusion models to animate images of people holding products, precisely controlling their movements.  The key innovation is the inclusion of human-object interaction, resulting in realistic-looking videos where the product and the person naturally interact. This figure shows examples of the system's ability to handle variations: the same person demonstrating different products (a), and different people demonstrating the same product (b).
> <details>
> <summary>read the caption</summary>
> Figure 1: We propose AnchorCrafter, a diffusion-based human video generation framework for creating high-fidelity anchor-style product promotion videos by animating reference human images with specific products and motion controls. By incorporating human-object interaction into the generation process, AnchorCrafter achieves high preservation of object appearance and enhanced interaction awareness.
> </details>





{{< table-caption >}}
| Method | FID↓ | FVD↓ | FID-VID↓ | Obj-IoU↑ | Obj-CLIP↑ | LMD (Hand)↓ | LMD (Body)↓ | Subj-Cons↑ | Back-Cons↑ |
|---|---|---|---|---|---|---|---|---|---| 
| AnyV2V | 234.1 | 2873.3 | 53.1 | 0.241 | 0.744 | 94.6 | 30.5 | 68.2 | 77.9 |
| MimicMotion+AnyDoor | 167.8 | 1668.9 | 37.7 | 0.647 | 0.863 | 13.2 | 26.0 | 93.4 | 90.7 |
| AnimateAnyone | 172.8 | 2267.0 | 24.2 | 0.361 | 0.832 | 23.2 | 41.5 | 94.9 | 94.1 |
| MimicMotion | **138.1** | 1444.9 | 22.3 | 0.411 | 0.876 | 12.1 | **24.3** | 96.3 | 93.9 |
| Ours | 141.7 | **736.5** | **15.0** | **0.848** | **0.919** | **11.7** | 25.7 | **97.4** | **95.3** |
| w/o Human-Object Dual Adapter | 170.5 | 913.0 | 24.2 | 0.802 | 0.886 | 12.1 | 20.9 | 96.4 | 94.9 |
| w/o Multi-View Object Feature Fusion | 177.0 | 1371.9 | 52.0 | 0.845 | 0.908 | 12.0 | 24.6 | 97.2 | 95.3 |
| w/o 3D Hand Mesh | 164.0 | 920.1 | 21.3 | 0.847 | 0.907 | 12.0 | 22.3 | 97.3 | 95.0 |
| w/o HOI-Region Reweighting Loss | 164.7 | 807.3 | 69.9 | 0.846 | 0.895 | 11.8 | 22.0 | 97.0 | 94.8 |{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of the proposed AnchorCrafter model against state-of-the-art (SOTA) methods and ablation studies.  The metrics used assess various aspects of video generation quality, including image fidelity (FID, FID-VID, FVD), object detection accuracy (Object-IoU, Object-CLIP), and human pose consistency (LMD for hands and body).  The results demonstrate AnchorCrafter's superior performance in terms of numerical scores related to object spatial movement and appearance preservation, while achieving comparable or better results in image and video quality, and human pose control compared to existing methods.  Finally, the table also shows the consistency scores for subject and background, which are expressed as percentages.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative results of our method compared with SOTAs and ablation studies. Our method significantly outperforms existing approaches in terms of numerical performance for spatial movement and appearance preservation of objects, while also matching or exceeding current methods in image and video quality, as well as human pose control capability. Subject consistency(Subj-Cons) and background consistency(Back-Cons) are percentages.
> </details>





### In-depth insights


#### HOI Video Generation
**Human-Object Interaction (HOI) video generation** is a challenging problem aiming to create videos realistically depicting interactions between humans and objects.  Current methods often struggle with **preserving object appearance and generating natural interactions**, treating objects as static textures or failing to account for occlusions.  A key aspect is the **integration of HOI into existing pose-guided human video generation techniques**.  **Diffusion models** have shown promise, but they typically require large amounts of training data showing varied HOI examples.  A promising direction involves employing **multi-view object representations** to understand object appearance from multiple perspectives, enhancing the model's ability to accurately render them during interaction.  Furthermore, incorporating **3D scene understanding** (e.g. depth maps, 3D object meshes) can allow more precise control of object trajectories and management of occlusions during complex interactions.  Advancements in **loss functions** that emphasize the details of object appearance during interaction are also crucial.  **Fine-grained motion control** is vital for realistic interactions; methods that condition the generation process on both human poses and detailed object dynamics offer improved realism. The ultimate goal of HOI video generation is to produce videos that are both visually convincing and exhibit accurate, nuanced interactions, bridging the gap between image-centric HOI and full-fledged video understanding.

#### Diffusion Model
Diffusion models are a powerful class of generative models that have recently achieved remarkable success in image generation.  They work by gradually adding noise to an image until it becomes pure noise, then learning to reverse this process, thus generating new images from noise. **The key to their effectiveness lies in the careful design of the forward diffusion process and the sophisticated neural networks used to reverse it.**  These networks are trained to predict the noise added at each step, allowing for the generation of high-quality, realistic images.  **A core advantage of diffusion models is their ability to generate high-resolution images with fine details and coherent structures,** surpassing earlier generative adversarial networks (GANs) in this regard.  However, **the computational cost of training diffusion models can be substantial,** demanding significant resources. Further research is ongoing to improve the efficiency of these models and explore their applications in other domains beyond image generation, such as video and 3D model generation.  **Understanding the theoretical underpinnings of diffusion models and developing more efficient training methods remains a crucial area of future research.**

#### Appearance Control
Appearance control in AI-generated videos is crucial for realism and user experience.  This involves **preserving the fidelity of objects** within a scene, ensuring they maintain their natural look and properties even as the video manipulates them.  The challenge lies in dealing with interactions between humans and objects.  **HOI-Appearance Perception** is a key innovation that uses multi-view images of objects to understand their appearance. By employing techniques like DINO for feature extraction and a dual adapter for disentangling human and object features, the system successfully preserves the appearance of objects while allowing realistic human-object interaction to be generated.  **HOI-Region Reweighting Loss** further enhances object detail during training, focusing the model's attention on interactive regions.  Together, these techniques offer a robust solution to the problem of maintaining high-fidelity object appearance in dynamic video generation scenarios.  **Overall, the success hinges on effective feature extraction, feature fusion, and disentanglement to achieve the desired level of object appearance control.** This is vital for diverse applications, including product promotion videos and other media requiring high visual realism.

#### Motion Injection
The concept of 'Motion Injection,' within the context of a human-object interaction (HOI) video generation system, is crucial for realistically animating objects alongside human actions.  **Successful motion injection requires precise control over object trajectories, handling occlusions, and integrating these movements seamlessly with the human's actions.** This involves sophisticated algorithms that go beyond simply placing an object in the scene.  The system needs to understand the interplay between the human movements (e.g., hand gestures) and the object's dynamics to create believable interactions.  **Key challenges include accurately predicting the object's trajectory based on the human's actions**, particularly when complex movements or occlusions are involved.  **The effectiveness of motion injection directly impacts the realism and naturalness of the final video.**  A well-designed motion injection module should allow for fine-grained control of object motion, allowing for customization and creative control over the interaction, even with varying object types and human actions. The success of such a system hinges on the robust integration of information from multiple sources: human pose, hand 3D meshes, object depth maps, and potential other sensory information, all seamlessly combined to generate realistic object movements synchronized to the human performer.

#### Future Work
Future research directions for AnchorCrafter could focus on enhancing its ability to handle **complex scenes and diverse object types**.  The current model shows limitations with transparent or non-rigid objects, suggesting a need for improved object representation and interaction modeling.  **Improving temporal consistency** in generated videos is another crucial area, as occasional inconsistencies in human or object motion are noted.  Exploring more sophisticated **occlusion handling techniques** to improve the realism of interactions, especially when objects significantly obscure human body parts, is vital.  Furthermore, expanding the system's capabilities to handle **more complex interactions** than simple product display, such as object manipulation or multiple object interactions, would be beneficial. Investigating alternative or improved training methods to **reduce computational costs** and improve model efficiency are needed. Finally, exploring the use of **additional modalities** such as audio or haptic feedback to further enhance realism and immersive capabilities of generated videos are promising avenues.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2411.17383/extracted/6025749/image/Intro/animateanyone.png)

> 🔼 This figure demonstrates the input and output of the AnchorCrafter model. (a) shows the reference images used as input to the model: a reference image of an anchor, a product image, and a control image indicating desired interaction.  The generated video frames showcasing the AnchorCrafter's animation capabilities are displayed as output; (a) highlights how the same anchor interacts with different products, (b) illustrates various anchors demonstrating interactions with the same product.
> <details>
> <summary>read the caption</summary>
> (a) Reference Input
> </details>



![](https://arxiv.org/html/2411.17383/extracted/6025749/image/Intro/mimicmotion.png)

> 🔼 The figure shows the results of applying the AnimateAnyone method. AnimateAnyone is a method for controlling the human appearance while generating a video. In this figure, the method fails to generate hand-object interactions and treats the object as a static texture which is part of the person, leading to a lack of movement in the video.  This contrasts with the AnchorCrafter method, which successfully animates human-object interactions.
> <details>
> <summary>read the caption</summary>
> (b) AnimateAnyone
> </details>



![](https://arxiv.org/html/2411.17383/extracted/6025749/image/Intro/ours.png)

> 🔼 The figure shows qualitative results comparing the proposed AnchorCrafter model with other state-of-the-art methods in generating anchor-style product promotion videos. It specifically focuses on the results obtained using the MimicMotion method. The results illustrate that MimicMotion, while generating high-quality pose-driven human images, struggles with proper object handling. It often treats objects as static elements attached to clothing or the background, failing to dynamically represent the human-object interactions essential for anchor-style videos.
> <details>
> <summary>read the caption</summary>
> (c) MimicMotion
> </details>



![](https://arxiv.org/html/2411.17383/x2.png)

> 🔼 This figure shows results of the proposed AnchorCrafter model for generating anchor-style product promotion videos.  It showcases a comparison to other methods, highlighting the superior performance of AnchorCrafter in preserving object appearance and generating realistic human-object interactions. The video frames show an anchor interacting with a product, demonstrating the model's ability to seamlessly integrate the product into the anchor's movements and maintain visual fidelity.
> <details>
> <summary>read the caption</summary>
> (d) Ours
> </details>



![](https://arxiv.org/html/2411.17383/x3.png)

> 🔼 Figure 2 demonstrates the limitations of existing human animation methods (AnimateAnyone and MimicMotion) when dealing with human-object interaction. While these methods accurately reproduce human poses from a reference image, they fail to realistically animate the interaction between the hand and the held object. AnimateAnyone generates a hand that does not interact with the object and MimicMotion treats the object as part of the human, resulting in no movement of the object.  In contrast, the AnchorCrafter method successfully generates a video with accurate human-object interaction while preserving the object's visual fidelity and natural appearance.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Animating a reference image of a peron holding an object, existing methods accurately follow human poses but fail to generate hand-object interaction (AnimateAnyone [14]) or misinterpret the object as part of the human, leading to no movement (MimicMotion [41]). Our method accurately generates human-object interactions while preserving the object’s appearance.
> </details>



![](https://arxiv.org/html/2411.17383/x4.png)

> 🔼 AnchorCrafter, a video generation framework, is trained using a video diffusion model.  The training process incorporates human and multiple-view object references via a module called HOI-appearance perception to ensure realistic object representation.  Human-object interaction motion is controlled using a separate module called HOI-motion injection.  Finally, a reweighting loss function focuses the training on the human-object interaction regions, improving the accuracy of these key areas in the generated video.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Training pipeline for AnchorCrafter: Based on a video diffusion model, AnchorCrafter injects human and multi-view object references into the video via HOI-appearance perception. The motion is controlled through HOI-motion injection, with the training objective reweighted in the HOI region.
> </details>



![](https://arxiv.org/html/2411.17383/extracted/6025749/image/Ablation/noadapter_3.png)

> 🔼 Figure 4 details the HOI-appearance perception module.  Multi-view object reference images are fed into a pre-trained DINO model to extract features, which are then fused to create a comprehensive object representation (fO). This object feature is combined with human reference features (fH) extracted from a CLIP model within a human-object dual adapter. This adapter is designed to prevent the entanglement of human and object appearances during video generation, resulting in more accurate and realistic depictions of the object.
> <details>
> <summary>read the caption</summary>
> Figure 4:  HOI-appearance perception: The feature of the target object fOsubscript𝑓𝑂f_{O}italic_f start_POSTSUBSCRIPT italic_O end_POSTSUBSCRIPT is extracted through multi-view object feature fusion and combined with the human reference feature fHsubscript𝑓𝐻f_{H}italic_f start_POSTSUBSCRIPT italic_H end_POSTSUBSCRIPT within a human-object dual adapter to achieve improved disentanglement results.
> </details>



![](https://arxiv.org/html/2411.17383/extracted/6025749/image/Ablation/noobj.png)

> 🔼 Figure 5 presents a qualitative comparison of AnchorCrafter with four state-of-the-art methods: MimicMotion, AnimateAnyone, AnyV2V, and AnyDoor+MimicMotion. Each method is evaluated on its ability to generate videos with realistic human-object interactions, focusing on the preservation of object appearance and synchronized motion between the human and the object. The figure highlights the generation artifacts of each method using different colored squares: red indicates inadequate object appearance, orange indicates flawed hand movements, and green indicates unrealistic anchor behavior. The results show that MimicMotion and AnimateAnyone fail to maintain the objects' appearance and their movements do not sync well with the hands. AnyV2V produces noticeable artifacts in the edited videos. The combination of AnyDoor and MimicMotion struggles to maintain the object's details. In contrast, AnchorCrafter shows superior performance in terms of visual fidelity, object appearance, and synchronized object-hand interactions.
> <details>
> <summary>read the caption</summary>
> Figure 5:  Qualitative comparisons with other methods. Different colored squares highlight the different types of generation artifacts. In the results of MimicMotion and AnimateAnyone, the objects fail to maintain their appearance and cannot move in sync with the hands, while AnyV2V generates apparent artifacts in the edited videos. The combined results of AnyDoor and MimicMotion demonstrate a lack of preservation in object details.
> </details>



![](https://arxiv.org/html/2411.17383/x5.png)

> 🔼 This figure shows the results of an ablation study on the HOI-Appearance Perception module. Specifically, it demonstrates the impact of removing the Human-Object Dual Adapter component from the AnchorCrafter system. The image showcases a comparison of video generation results with and without the Dual Adapter, highlighting the role of this module in maintaining consistency and avoiding entanglement between the appearance of human subjects and the objects they interact with.
> <details>
> <summary>read the caption</summary>
> (a) w/o Dual Adapter
> </details>



![](https://arxiv.org/html/2411.17383/extracted/6025749/image/Ablation/mouse_nohand.png)

> 🔼 This figure shows the ablation study result when removing the multi-view object feature fusion module.  The results demonstrate the impact of this module on object appearance and its importance for accurate object representation in the generated videos.
> <details>
> <summary>read the caption</summary>
> (b) w/o Multi-View Obj.
> </details>



![](https://arxiv.org/html/2411.17383/extracted/6025749/image/Ablation/mouse_noloss.png)

> 🔼 This figure shows the results of the proposed AnchorCrafter model in comparison to existing methods for generating videos of a person interacting with objects.  The images illustrate the model's ability to accurately render realistic and natural-looking interactions. It showcases the superior quality of the generated videos in terms of appearance and motion consistency, highlighting the preservation of both the human and object details during interaction. The figure demonstrates AnchorCrafter's ability to generate high-fidelity human-object interaction videos while maintaining consistency in both human appearance and motion.
> <details>
> <summary>read the caption</summary>
> (c) Ours
> </details>



![](https://arxiv.org/html/2411.17383/x6.png)

> 🔼 This figure shows the ablation study result of removing 3D hand mesh information from the HOI-motion injection module.  It visually demonstrates the impact of this component on the overall quality of the generated videos, specifically highlighting how removing this information affects the accuracy and realism of the generated hand movements in relation to the object.
> <details>
> <summary>read the caption</summary>
> (d) w/o 3D Hand Mesh
> </details>



![](https://arxiv.org/html/2411.17383/x7.png)

> 🔼 This figure shows the qualitative results of the ablation study on the HOI-Region Reweighting Loss.  It visually compares the video generation results when this loss is excluded from the training process. The absence of the loss affects the learning of object details, especially in hand-object interaction regions.  The differences in object appearance and interaction quality between the model trained with and without the reweighting loss are highlighted.
> <details>
> <summary>read the caption</summary>
> (e) w/o Re. Loss
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2411.17383/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17383/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17383/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17383/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17383/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17383/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17383/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17383/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17383/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17383/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}