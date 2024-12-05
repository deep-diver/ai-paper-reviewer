---
title: "One Shot, One Talk: Whole-body Talking Avatar from a Single Image"
summary: "One-shot image to realistic, animatable talking avatar!  Novel pipeline uses diffusion models and a hybrid 3DGS-mesh representation, achieving seamless generalization and precise control."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 University of Science and Technology of China",]
showSummary: true
date: 2024-12-02
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.01106 {{< /keyword >}}
{{< keyword icon="writer" >}} Jun Xiang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-05 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.01106" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.01106" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/one-shot-one-talk-whole-body-talking-avatar" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.01106/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Creating realistic and animatable talking avatars typically requires extensive video data, a limitation that hinders applications like AR/VR and digital humans.  Existing methods often struggle with precise control of expressions and seamless generalization to novel gestures.  This research tackles the challenge of constructing a whole-body talking avatar from a single image, a task with broad implications for various fields.

The proposed method leverages the power of **recent advances in pose-guided video diffusion models** to generate pseudo-labels for training.  It introduces a novel **3DGS-mesh hybrid avatar representation** to handle inconsistencies in these pseudo-labels and address dynamic modeling challenges.  Careful use of perceptual-based losses and key regularizations improves the accuracy and expressiveness of the generated avatars.  The results demonstrate photorealistic avatars exhibiting natural movements and expressions are achievable from a single image.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A novel pipeline generates photorealistic, animatable talking avatars from a single image, pushing the boundaries of current methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The use of pose-guided image-to-video diffusion models and a tightly coupled 3DGS-mesh representation enables seamless generalization to novel gestures and expressions. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The proposed method effectively overcomes challenges in complex dynamic modeling and generalization to novel gestures and expressions, significantly advancing avatar creation technology. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it presents a novel approach to creating realistic and expressive talking avatars from a single image, addressing a significant challenge in computer vision and graphics.  **This addresses limitations of existing methods that require extensive video data.** The proposed techniques are relevant to several research trends including AR/VR, digital humans, and image-to-video generation. The work also opens up exciting avenues for further investigation into one-shot avatar generation, improving the efficiency and realism of digital avatars.

------
#### Visual Insights



![](https://arxiv.org/html/2412.01106/x2.png)

> 🔼 This figure demonstrates the capabilities of the One Shot, One Talk method.  A single input image (like a personal photo) is used to generate a detailed, fully expressive whole-body avatar. The generated avatar is capable of realistic animation, including natural facial expressions and body movements.  This showcases the ability of the system to create personalized avatars from minimal input.
> <details>
> <summary>read the caption</summary>
> Figure 1: Given a one-shot image (e.g., your favorite photo) as input, our method reconstructs a fully expressive whole-body talking avatar that captures personalized details and supports realistic animation, including vivid body gestures and natural expression changes. Project page: https://ustc3dv.github.io/OneShotOneTalk/
> </details>





{{< table-caption >}}
| Metrics | ELICIT | ExAvatar | MimicMotion | Ours |
|---|---|---|---|---|
| MSE(10<sup>-3</sup>)↓ | 5.65 | 3.93 | 2.69 | **1.22** |
| L1(10<sup>-2</sup>)↓ | 1.65 | 1.24 | 1.41 | **0.84** |
| PSNR↑ | 22.56 | 24.22 | 25.84 | **29.31** |
| SSIM(10<sup>-1</sup>)↑ | 9.21 | 9.24 | 9.18 | **9.43** |
| LPIPS(10<sup>-2</sup>)↓ | 6.60 | 4.09 | 3.89 | **2.99** |{{< /table-caption >}}

> 🔼 Table 1 presents a quantitative comparison of the proposed method against three other representative methods (MimicMotion [65], ExAvatar-40shot [36], and ELICIT [18]) on a self-driven motion reenactment task.  The comparison uses five common metrics: Mean Squared Error (MSE), L1 distance, Peak Signal-to-Noise Ratio (PSNR), Structural Similarity Index (SSIM), and Learned Perceptual Image Patch Similarity (LPIPS). Lower MSE and L1 scores, and higher PSNR and SSIM scores indicate better performance, while a lower LPIPS score reflects better perceptual similarity to the ground truth. The results demonstrate that the proposed method achieves superior performance across all five metrics, signifying improved realism and 3D consistency.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparisons with representative methods [65, 36, 18] on self-driven data. Our method outperforms others in pixel-wise error metrics, realism evaluation metrics and perceptual quality metrics. (ExAvatar here denotes ExAvatar-40shot.)
> </details>





### In-depth insights


#### Single-Image Avatars
The concept of "Single-Image Avatars" represents a significant advancement in the field of digital avatar creation.  Traditional methods demand extensive video footage for accurate modeling, but the single-image approach drastically reduces this requirement.  This offers **increased accessibility** and efficiency. However, reconstructing a detailed, expressive avatar from a single image presents considerable challenges. The paper likely explores techniques such as **deep learning and generative models** to overcome the lack of multiple viewpoints and temporal information present in videos.  The resulting avatar would likely involve advanced techniques to handle variations in pose, expression, and lighting.  The core challenge lies in **generalizing from a single image** to diverse poses and expressions. The successful creation of realistic, animatable avatars from a single image would have wide-ranging implications for various applications like virtual reality, video conferencing, and entertainment, opening new possibilities in personalized digital experiences.

#### Diffusion-Based Gen
Diffusion-based generative models represent a powerful paradigm shift in generating realistic and high-quality data, including images, audio, and video.  The core idea revolves around gradually adding noise to data until it becomes pure noise, and then learning to reverse this process to generate new data samples.  **This approach allows for impressive control over generation and avoids some of the limitations of traditional GANs, particularly in terms of mode collapse and training instability.**  The effectiveness of diffusion models depends heavily on the choice of diffusion process (how noise is added and removed), the neural network architecture used to model the process, and the training data.  **A key advantage is the ability to handle high-dimensional data effectively**, making it suitable for generating complex, realistic outputs that other methods struggle with.  However, challenges remain, including the computational cost of the iterative denoising process, the sensitivity to hyperparameter tuning, and the potential for bias amplification from biased training data.  **Future research is focused on enhancing efficiency, improving controllability, and mitigating potential biases for ethical considerations.**

#### Hybrid Mesh Avatar
A hybrid mesh avatar model represents a significant advancement in 3D avatar creation.  By combining the strengths of both mesh-based and point-based (e.g., 3D Gaussian Splatting) representations, it aims to overcome limitations inherent in each individual approach.  **Mesh-based models** provide a strong foundation for accurate geometry, articulated pose, and realistic deformations, while **point-based methods** excel at representing fine details, such as hair, clothing textures, and facial features. The fusion of these techniques allows for a more comprehensive and expressive avatar.  **The challenge lies in seamlessly integrating these different representations**, ensuring consistency and efficient computation.  Successful implementation would likely involve novel techniques for blending mesh and point data, handling potential conflicts between geometric constraints and detailed surface representations, and managing the increased computational complexity.  The result, however, promises a higher-fidelity avatar than those solely relying on either mesh or point-cloud methods.  Moreover, the hybrid mesh avatar will need to be thoroughly tested for generalizability to different poses, expressions, and individuals to ensure its practical applicability.  Finally, effective control and animation systems will be crucial for making the hybrid mesh avatar a truly versatile tool.

#### Motion Generalization
Motion generalization in the context of this research paper centers on the ability of a model to generate realistic and diverse human movements beyond those explicitly seen during training.  **The core challenge lies in overcoming the limitations of data-driven approaches**, where models struggle to produce novel actions or expressions unseen in the training data. The proposed solution attempts to address this by using a multi-pronged strategy that leverages a pre-trained video diffusion model and a 3D face animation model to synthesize pseudo videos.  **These videos, though imperfect, serve as pseudo-labels to expand the training data's coverage**.  However, the direct use of such imperfect data presents its own set of issues, specifically temporal consistency and identity preservation, which are addressed by incorporating various regularization techniques during model training. The key is to create a robust model that can extrapolate from the limited training information and generate diverse, yet realistic and plausible, motions and expressions. The success of this approach hinges on a proper balance between the accuracy of initial input and the generalization power stemming from the generated pseudo data.

#### Method Limitations
The method's limitations stem from its reliance on accurate SMPL-X body tracking and precise registration between the input image and the parametric human mesh.  **Inaccurate tracking, particularly affecting finger regions, and self-intersection issues during cross-identity animation are significant challenges.** The approach's performance also degrades with larger viewing angles, highlighting its sensitivity to viewpoint variations.  Furthermore, generalization to diverse gestures and expressions, while improved by the use of pre-trained generative models, remains an area of potential limitations.  **The imperfect nature of pseudo-labels generated by diffusion models introduces inconsistencies that limit the avatar's realism and expressiveness.** While perceptual losses mitigate some issues, artifacts and distortions can still appear, especially in areas like texture details. Finally, the method's dependence on accurate initial registration between the input image and mesh makes it susceptible to errors, particularly in cases where the input image quality is poor or the subject's pose is ambiguous.  **Addressing these limitations will be crucial for broader adoption of this one-shot avatar generation technique.**


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.01106/x3.png)

> 🔼 This figure illustrates the pipeline for creating a talking avatar from a single image.  It starts by using pre-trained models and a diverse video dataset to generate pseudo-body and head video frames. These frames, along with the input single image, are used to train a 3DGS-mesh coupled avatar.  Three types of supervision guide the training: per-pixel supervision on the input image, perceptual supervision on the imperfect pseudo labels, and mesh-related constraints. The result is a realistic and expressive avatar that can be animated.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview. Our method constructs an expressive whole-body talking avatar from a single image. We begin by generating pseudo body and head frames using pre-trained generative models, driven by a collected video dataset with diverse poses. Per-pixel supervision on the input image, perceptual supervision on imperfect pseudo labels, and mesh-related constraints are then applied to guide the 3DGS-mesh coupled avatar representation, ensuring realistic and expressive avatar reconstruction and animation.
> </details>



![](https://arxiv.org/html/2412.01106/x4.png)

> 🔼 Figure 3 presents a qualitative comparison of the proposed method against three representative methods (MimicMotion [65], ExAvatar [36], and ELICIT [18]) for cross-identity motion reenactment.  The task involves animating a target person with the motions of a different person. The figure shows that the proposed method produces highly accurate and realistic animation, preserving fine details and maintaining the identity of the target person, unlike the other methods which show various degrees of artifacts, such as blurry textures, identity mismatches, or missing details.
> <details>
> <summary>read the caption</summary>
> Figure 3: Qualitative comparisons with representative methods [65, 36, 18] in the cross-identity motion reenactment task. Our method achieves accurate and realistic animation with almost all fine details preserved and identity unchanged.
> </details>



![](https://arxiv.org/html/2412.01106/x5.png)

> 🔼 Figure 4 presents a qualitative comparison of different avatar generation methods on a self-driven motion reenactment task.  The goal was to recreate the subject's movements and expressions using only the input image and a motion sequence. The methods compared are MimicMotion [65], ExAvatar [36], ELICIT [18], and Make-Your-Anchor [20]. The figure visually demonstrates that the proposed method generates a more realistic and detailed avatar, especially in facial and hand areas, even surpassing some models trained on full video data which have more information to work with.  The global identity is better preserved, and finer details are more accurately represented.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative comparisons with representative methods [65, 36, 18, 20] in the self-driven motion reenactment task. Our method well models facial and hand regions, which match the input image most in global identity preservation and local details modeling, even compared with some methods trained on captured videos.
> </details>



![](https://arxiv.org/html/2412.01106/x6.png)

> 🔼 This figure showcases additional examples of cross-identity pose reenactment.  It demonstrates the model's ability to accurately animate diverse subjects using the same set of poses. The consistent animation quality across different individuals highlights the generalization capabilities of the proposed approach.
> <details>
> <summary>read the caption</summary>
> Figure 5: More examples of cross-identity pose reenactment. Different subjects can be accurately animated with the same poses.
> </details>



![](https://arxiv.org/html/2412.01106/x7.png)

> 🔼 Figure 6 demonstrates the importance of perceptual guidance in enhancing the quality of pseudo-labels generated by diffusion models.  The figure compares the results of using perceptual guidance with those using only L1 and SSIM losses, and also with no guidance at all.  Perceptual guidance significantly improves the generation of realistic textures, particularly in regions where data is missing from the input image, resulting in more natural and accurate facial and hand details.
> <details>
> <summary>read the caption</summary>
> Figure 6: Perceptual diffusion guidance is of great importance to inpainting unseen regions and modeling natural and realistic textures.
> </details>



![](https://arxiv.org/html/2412.01106/x8.png)

> 🔼 Figure 7 presents an ablation study demonstrating the importance of mesh-related constraints and Gaussian Laplacian regularization in preserving geometric integrity and detailing for the generated 3D human avatar.  The figure visually compares the quality of avatar generation under different conditions: with all constraints and regularization applied (full model), without mesh-specific constraints (w/o mesh SC), and without both mesh constraints and Laplacian smoothing (w/o mesh SC & Lap).  The results highlight how the combination of these techniques leads to more accurate, detailed, and realistic results in the final avatar, particularly in challenging areas such as hands and facial features.
> <details>
> <summary>read the caption</summary>
> Figure 7: Soft mesh constraints together with Gaussian Laplacian help preserve geometric integrity and model fine details.
> </details>



![](https://arxiv.org/html/2412.01106/x10.png)

> 🔼 This figure shows an ablation study on the impact of the re-tracking step in the proposed pipeline.  The re-tracking step refines the pose parameters obtained from the initial pseudo-labels generated by a motion diffusion model. By comparing the results with and without this re-tracking step, the figure visually demonstrates that re-tracking preserves better texture structures and helps prevent texture loss in the generated video frames. The comparison highlights the improved quality and accuracy of the final avatar animation achieved through this refinement step.
> <details>
> <summary>read the caption</summary>
> Figure 8: Re-Tracking step preserves better texture structures and avoid texture loss.
> </details>



![](https://arxiv.org/html/2412.01106/x11.png)

> 🔼 Figure 9 illustrates the detailed steps of the proposed pipeline for generating a whole-body talking avatar from a single image.  It begins with the training stage where a single input image is used along with motion data from a large-scale dataset.  Generative models are used to produce pseudo-frames, and these frames are used with the single image for training a 3DGS-mesh coupled avatar representation.  The inference stage shows how, given new inference poses, this avatar is animated, leveraging perceptual supervision and mesh-related constraints to ensure realism and expressiveness.
> <details>
> <summary>read the caption</summary>
> Figure 9: A detailed illustration of our pipeline.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.01106/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.01106/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.01106/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.01106/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.01106/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.01106/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.01106/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.01106/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.01106/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.01106/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.01106/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.01106/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}