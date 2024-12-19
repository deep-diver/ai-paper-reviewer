---
title: "AniDoc: Animation Creation Made Easier"
summary: "AniDoc automates cartoon animation line art video colorization, making animation creation easier!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Hong Kong University of Science and Technology",]
showSummary: true
date: 2024-12-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.14173 {{< /keyword >}}
{{< keyword icon="writer" >}} Yihao Meng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.14173" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.14173" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/anidoc-animation-creation-made-easier" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.14173/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Creating 2D animation like anime involves coloring sketches, a tedious and labor-intensive process.  Current methods face challenges like mismatches between character designs and sketch poses, maintaining consistent coloring across frames, and dependence on densely drawn sketches. Automating colorization offers huge potential for streamlining animation workflows but is hindered by these issues. Existing tools require coloring keyframes or have limitations with real-world sketches. 

This paper introduces AniDoc, an AI-powered tool that **automates the colorization of sketch animations**. It uses video diffusion models and correspondence matching to **ensure accurate coloring even when character designs and sketches differ**.  A two-stage training approach allows it to handle both dense and **sparse sketch input**, **reducing artist workload**.  It also addresses limitations of existing methods by processing **binarized sketches** and using **background augmentation**, resulting in more robust and realistic colorization, closer to real-world production pipelines.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} AniDoc uses AI to automatically colorize line art animation, reducing manual effort. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} It handles variations in character design, sketches, and temporal coherence. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} It supports sparse sketch input, easing the creation of consistent animations.  {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**Automating 2D animation colorization** is crucial for streamlining production. This work introduces a novel approach using **AI**, impacting researchers in computer graphics, animation, and AI by offering a more efficient and robust solution for **line art video colorization**. The ability to maintain **temporal coherence**, handle **sparse sketches**, and adapt to **varying character designs** opens new avenues for AI-assisted animation production research and development of advanced video generation models. 

------
#### Visual Insights



![](https://arxiv.org/html/2412.14173/x2.png)

> 🔼 AniDoc effectively colorizes a sequence of character sketches, referencing a provided character design image. The model maintains high fidelity even with variations in pose and scale across sketches.  Furthermore, it supports sparse sketch input, facilitating both interpolation and colorization between keyframes, as demonstrated in the last row where only the first and last frame sketches are provided.
> <details>
> <summary>read the caption</summary>
> Figure 1: AniDoc colorizes a sequence of sketches based on a character design reference with high fidelity, even when the sketches significantly differ in pose and scale. Additionally, the model supports sparse sketch inputs, enabling effective interpolation and high-quality colorization simultaneously, as shown in the last row.
> </details>







### In-depth insights


#### Anime Colorization
**AniDoc revolutionizes anime colorization**, automating the tedious process of coloring line art sketches. By leveraging video diffusion models and correspondence matching, AniDoc maintains **high fidelity to reference character designs** while ensuring **temporal coherence across frames**, addressing the common issue of flickering or inconsistent colors.  Importantly, AniDoc handles **binarized sketches**, mirroring real-world production, and utilizes **background augmentation** to improve robustness.  The innovative **sparse sketch training** further streamlines workflow by requiring only start and end sketches. Though limitations exist in coloring novel objects and clothing variations, AniDoc's ability to colorize based on a **single reference image across multiple clips** represents a major advancement in animation production.

#### Diffusion Models
**Diffusion models** are a powerful class of **generative models** used for various applications, including **image and video generation**. Their strength lies in producing **high-quality and diverse outputs**. Diffusion models work by **gradually adding noise to data** and then learning to **reverse this process**. This denoising process allows them to generate data from pure noise by iteratively refining it. In the context of anime production, diffusion models are particularly promising due to their ability to **capture the stylistic nuances and temporal dynamics** of animation. They excel at tasks such as **line art colorization**, **video interpolation**, and **character motion generation**, offering substantial potential for **automating and streamlining** the animation workflow.

#### Sparse Sketch Input
AniDoc tackles the labor-intensive task of in-betweening through **sparse sketch input**. By providing only the start and end keyframes, the model leverages **video diffusion models** and **explicit correspondence matching** to interpolate and colorize the intermediate frames. This significantly reduces the manual effort required from artists, streamlining animation production. The two-stage training process, initial dense sketch training followed by sparse sketch training, enables robust interpolation and colorization, even with limited input. The effectiveness of this approach, demonstrated on the Sakuga-42M dataset, highlights the potential for automating a critical aspect of 2D animation.

#### Mismatch Handling
AniDoc tackles the **mismatch** between character designs and sketches.  This is crucial because reference images often differ from animation keyframes in **pose, scale, and angle**.  Existing methods struggle with this, requiring artists to manually color keyframes, negating automation benefits. AniDoc's **correspondence matching** maps colors from the reference to the sketch, addressing this misalignment.  This approach improves **color accuracy** and maintains character **consistency**.  The model handles sparse sketches, further reducing manual effort. It also addresses the challenge of **binarized sketches**, which lack color information, through background augmentation during training, improving robustness.

#### Color Leakage Fix
**Color leakage** in pre-trained sketch colorization models trained on non-binarized sketches can hinder effective colorization. These sketches, often derived from color images using neural networks, retain subtle color information, leading models to **recover leaked colors instead of learning true color correspondence**. Binarizing sketches during training, as proposed in AniDoc, forces the model to rely solely on the reference image for color information.  This approach, combined with **background augmentation**, addresses the ambiguity between foreground and background regions. This training strategy mitigates the leakage issue, pushing the model to learn **genuine color matching** between sketches and the reference, thereby improving the fidelity and realism of the final colorized animations.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.14173/x3.png)

> 🔼 This figure provides a simplified overview of the 2D animation production workflow.  It starts with *Character Design*, where artists create reference sheets defining the visual appearance of characters.  This is followed by *Keyframe sketches*, which depict the main poses and movements at key moments in a scene. *Inbetweening* follows, where artists draw the intermediate frames between keyframes to create smooth motion and transitions. Finally, *Colorization* is the process of adding color to the line art sketches, bringing the characters and scenes to life.  This workflow is the standard process typically used in the animation industry, and this paper aims to automate the colorization step while keeping quality and consistency with the original character design.
> <details>
> <summary>read the caption</summary>
> Figure 2: Illustration of the workflow of 2D animation production.
> </details>



![](https://arxiv.org/html/2412.14173/x4.png)

> 🔼 AniDoc uses a two-stage training approach. The dense-sketch stage extracts matching keypoints between a reference image and each frame of a video, creating point maps to represent correspondences. The sparse-sketch stage removes intermediate sketches and interpolates point trajectories from the start and end frame keypoints, guiding intermediate frame generation.
> <details>
> <summary>read the caption</summary>
> Figure 3: Overview of AniDoc pipeline. We adopt a two-stage training strategy. In the dense-sketch training stage, we explicitly extract matching keypoints pairs between the reference image and each frame of the training video, constructing point maps to represent the correspondences. In the sparse-sketch training stage, we remove the intermediate frame sketches and use the matching points from the start and end frames to interpolate point trajectories, which guide the generation of the intermediate frames.
> </details>



![](https://arxiv.org/html/2412.14173/x5.png)

> 🔼 This figure illustrates the color leakage issue present in previous video colorization methods when using non-binarized sketches.  Specifically, using the method from [21], even with an empty reference image, the model can still generate a colorized output that somewhat resembles the ground truth due to the leaked color information within the non-binarized sketch. However, when a binarized sketch (with true black and white values) is used, the output degrades significantly, demonstrating the reliance of previous methods on these leaked color cues.
> <details>
> <summary>read the caption</summary>
> Figure 4: Illustration of color leakage issue in non-binarized sketch. For previous video colorization method [21], when given non-binarized sketch, even if the reference is an empty image, it can still generate colorized results with similar color pattern to the ground truth. After binarizing the sketch, the colorization results degrade significantly.
> </details>



![](https://arxiv.org/html/2412.14173/x6.png)

> 🔼 This figure presents a visual comparison of our AniDoc method with four other reference-based video colorization methods: LVCD, LVCD combined with IP-Adapter, ID-animator, and ToonCrafter. Two distinct anime sequences are used for this comparison. The first sequence features a character with varying poses against a predominantly dark background. The second sequence showcases a character interacting with a bookshelf. For each sequence, a reference image of the character, along with the input line art sketches, are displayed. The output colorized animations from each method are shown for comparison. It's evident that AniDoc produces results with superior visual quality and better maintains character identity compared to the other methods.  Noticeably, LVCD and ID-animator struggle to accurately colorize, even when using IP-Adapter to color the first frame.  While ToonCrafter enhances temporal smoothness by employing colorized start and end frames with IP-Adapter, its overall color accuracy and character preservation remain inferior to AniDoc.
> <details>
> <summary>read the caption</summary>
> Figure 5: Visual comparison of reference-based colorization with four methods LVCD [21], LVCD+IP-Adapter [55], ID-animator [17], ToonCrafter [52].
> </details>



![](https://arxiv.org/html/2412.14173/x7.png)

> 🔼 This figure presents an ablation study showcasing the impact of key components in the proposed AniDoc model.  It compares the full model's output with versions where either the correspondence matching module or the binarization/background augmentation is removed.  The reference image is a character portrait. The first row shows the ground truth animation frames.  The second row displays the results from the full AniDoc model. The third row ('w/o matching') demonstrates the effect of removing the correspondence matching, resulting in color bleeding and inaccuracies. The fourth row ('w/o binarize') shows the outcome of training without binarized sketches and background augmentation, leading to washed-out colors and artifacts.
> <details>
> <summary>read the caption</summary>
> Figure 6: Ablations on each component. “w/o matching” indicates without the corresponding matching module, “w/o binarize” indicates without binarization and background augmentation.
> </details>



![](https://arxiv.org/html/2412.14173/x8.png)

> 🔼 This figure illustrates the flexibility and versatility of the AniDoc model by showcasing its performance under three different scenarios: (a) using the same reference image to colorize a variety of sketches with varying poses, demonstrating consistency in colorization; (b) applying different reference images to the same sketch sequence, demonstrating adaptability to diverse styles while maintaining character identity; and (c) generating consistent and smooth animations using only sparse sketches (start and end frames), reducing the need for detailed in-between drawings.
> <details>
> <summary>read the caption</summary>
> Figure 7: Illustration of the flexible usage of our model. Figure (a) shows the ability of using same reference to colorize different sketches. Figure (b) demonstrates the robustness to different references. Figure (c) shows the sparse-sketch generation results.
> </details>



![](https://arxiv.org/html/2412.14173/x9.png)

> 🔼 This figure shows how the model can generate colorizations of line art with different backgrounds when provided with character reference images featuring those backgrounds. It showcases the model's ability to transfer the style from the reference images to create new backgrounds while maintaining consistency with the character's core visual features, like their expression and clothing.
> <details>
> <summary>read the caption</summary>
> Figure S1: Illustration of reference with different backgrounds.
> </details>



![](https://arxiv.org/html/2412.14173/x10.png)

> 🔼 This figure shows how the model handles multiple characters in a reference image, demonstrating its ability to correctly colorize each character individually even when there are variations in pose, angle, and position between the reference and the line art sketches.
> <details>
> <summary>read the caption</summary>
> Figure S2: Illustration of the multiple characters situation. When the reference image contains multiple characters, our method can correctly infer the correspondence and apply colorization to each character accordingly.
> </details>



![](https://arxiv.org/html/2412.14173/x11.png)

> 🔼 This figure showcases the impact of employing various line art extraction methods on the final colorization results. Besides the default method used in the paper, three additional methods – Anime Lineart, HED, and PiDiNet – were tested. The figure displays the colorization outputs produced by the model when using these different line art extraction techniques as input. Anime Lineart is specifically trained on anime datasets, HED is an edge detection method leading to thick line art, while PiDiNet results in simplistic, near hand-drawn style line art. Post-extraction, the same binarization process described in the main text is applied. Results reveal the method's capacity to effectively colorize across diverse extraction techniques, yet the variations in line art characteristics influence the resultant output.
> <details>
> <summary>read the caption</summary>
> Figure S3: Impact of different line art extraction methods.
> </details>



![](https://arxiv.org/html/2412.14173/x12.png)

> 🔼 During the early stages of training the stable video diffusion (SVD) model, specifically at the 10,000th step, the generated video exhibits a static behavior. The frames within this video closely resemble the provided reference design image, primarily due to SVD's inherent tendency to prioritize information from the input image during its initial training phase.
> <details>
> <summary>read the caption</summary>
> Figure S4: In the early training stage (10k step), the video generation model produces static videos that closely resemble the given reference design.
> </details>



![](https://arxiv.org/html/2412.14173/x13.png)

> 🔼 During training, the authors use LightGlue with SIFT descriptor for keypoint selection and matching between the reference image and the training video frames. However, during inference, they lack access to the ground truth color image. As techniques that rely on low-level image features like SIFT descriptors are ineffective at accurately matching keypoints between sketches and color reference images due to the significant domain gap between them, the authors use the semantic level keypoint matching method DIFT to establish the correspondence between the color reference image and the sketches, as shown in this figure. In this image, matching keypoints between the reference color image (left) and binarized sketch (right) are visualized. Red lines connecting circular markers on both images indicates matched keypoints. It can be seen that semantic keypoints effectively find correspondences between color and sketch images.
> <details>
> <summary>read the caption</summary>
> Figure S5: Semantic feature can effectively find matching keypoints between reference color image and binarized sketch.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.14173/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14173/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14173/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14173/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14173/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14173/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14173/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14173/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14173/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14173/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14173/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14173/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14173/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}