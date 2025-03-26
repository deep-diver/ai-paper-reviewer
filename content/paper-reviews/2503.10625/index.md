---
title: "LHM: Large Animatable Human Reconstruction Model from a Single Image in Seconds"
summary: "LHM: Animatable 3D avatars from a single image in seconds."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 Alibaba Group",]
showSummary: true
date: 2025-03-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.10625 {{< /keyword >}}
{{< keyword icon="writer" >}} Lingteng Qiu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.10625" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.10625" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.10625/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Creating 3D avatars from single images is hard because of geometry, appearance, and movement. Existing methods mainly focus on static models, rely on synthetic data which limits real-world use, or need intensive refinement processes. To solve these issues, researchers need methods that are good at handling clothing, facial details, and animation consistency without needing lots of computing power or special setups. A model that can quickly and accurately create 3D avatars from single images would greatly benefit AR/VR. 



This paper introduces a new approach called LHM, which is short for Large Animatable Human Reconstruction Model. It is a **feed-forward transformer model** that creates animatable 3D human avatars in seconds from a single image. The model uses a special transformer design to **fuse 3D body features with 2D image features**, and a new head feature method to improve face details. LHM is trained using readily available video data which avoids needing expensive 3D scans and achieves better results.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LHM achieves state-of-the-art performance in single-image 3D human reconstruction and animation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The multimodal transformer effectively fuses 3D and 2D features, enhancing geometric and visual detail. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A large-scale video dataset and self-supervised training enable generalizable human priors without requiring 3D scans. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel method of **creating animatable 3D human avatars from a single image in seconds**. It surpasses existing methods and provides new avenues for real-time avatar creation and animation. Its **generalization ability and potential impact on AR/VR applications** make it significant for future research.

------
#### Visual Insights



![](https://arxiv.org/html/2503.10625/x2.png)

> 🔼 This figure showcases the capabilities of the Large Animatable Human Model (LHM).  It presents several examples of human avatars reconstructed from single input images.  The top row illustrates the input image, followed by the reconstructed 3D avatar, the avatar in various poses, demonstrating pose-controlled animation, and finally another reconstructed 3D avatar from a different input image. The reconstruction process takes only a couple of seconds per image using a single feed-forward pass through the model.  The generated avatars are designed for real-time rendering and can be animated with different poses.
> <details>
> <summary>read the caption</summary>
> Figure 1: 3D Avatar Reconstruction and Animation Results of our LHM. Our method reconstructs an animatable human avatar in a single feed-forward pass in seconds. The resulting model supports real-time rendering and pose-controlled animation.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T1.4.4">
<tr class="ltx_tr" id="S5.T1.4.4.4">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.4.4.4.5"><span class="ltx_text" id="S5.T1.4.4.4.5.1" style="font-size:120%;">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.1.1.1.1">
<span class="ltx_text" id="S5.T1.1.1.1.1.1" style="font-size:120%;">PSNR </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.1.1.1.1.m1.1"><semantics id="S5.T1.1.1.1.1.m1.1a"><mo id="S5.T1.1.1.1.1.m1.1.1" mathsize="120%" stretchy="false" xref="S5.T1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.1.1.1.1.m1.1b"><ci id="S5.T1.1.1.1.1.m1.1.1.cmml" xref="S5.T1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.2.2.2.2">
<span class="ltx_text" id="S5.T1.2.2.2.2.1" style="font-size:120%;">SSIM </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.2.2.2.2.m1.1"><semantics id="S5.T1.2.2.2.2.m1.1a"><mo id="S5.T1.2.2.2.2.m1.1.1" mathsize="120%" stretchy="false" xref="S5.T1.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.2.2.2.2.m1.1b"><ci id="S5.T1.2.2.2.2.m1.1.1.cmml" xref="S5.T1.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.3.3.3.3">
<span class="ltx_text" id="S5.T1.3.3.3.3.1" style="font-size:120%;">LPIPS </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.3.3.3.3.m1.1"><semantics id="S5.T1.3.3.3.3.m1.1a"><mo id="S5.T1.3.3.3.3.m1.1.1" mathsize="120%" stretchy="false" xref="S5.T1.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.3.3.3.3.m1.1b"><ci id="S5.T1.3.3.3.3.m1.1.1.cmml" xref="S5.T1.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.4.4.4.4">
<span class="ltx_text" id="S5.T1.4.4.4.4.1" style="font-size:120%;">FC </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.4.4.4.4.m1.1"><semantics id="S5.T1.4.4.4.4.m1.1a"><mo id="S5.T1.4.4.4.4.m1.1.1" mathsize="120%" stretchy="false" xref="S5.T1.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.4.4.4.4.m1.1b"><ci id="S5.T1.4.4.4.4.m1.1.1.cmml" xref="S5.T1.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_border_tt" id="S5.T1.4.4.4.6"></td>
</tr>
<tr class="ltx_tr" id="S5.T1.4.4.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.4.5.1">
<span class="ltx_text" id="S5.T1.4.4.5.1.1" style="font-size:120%;">GTA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.4.4.5.1.2.1" style="font-size:120%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10625v1#bib.bib65" title=""><span class="ltx_text" style="font-size:90%;">65</span></a><span class="ltx_text" id="S5.T1.4.4.5.1.3.2" style="font-size:120%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.4.5.2"><span class="ltx_text" id="S5.T1.4.4.5.2.1" style="font-size:120%;">17.025</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.4.5.3"><span class="ltx_text" id="S5.T1.4.4.5.3.1" style="font-size:120%;">0.919</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.4.5.4"><span class="ltx_text" id="S5.T1.4.4.5.4.1" style="font-size:120%;">0.087</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.4.5.5"><span class="ltx_text" id="S5.T1.4.4.5.5.1" style="font-size:120%;">0.051</span></td>
<td class="ltx_td ltx_border_t" id="S5.T1.4.4.5.6"></td>
</tr>
<tr class="ltx_tr" id="S5.T1.4.4.6">
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.6.1">
<span class="ltx_text" id="S5.T1.4.4.6.1.1" style="font-size:120%;">SIFu </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.4.4.6.1.2.1" style="font-size:120%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10625v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">66</span></a><span class="ltx_text" id="S5.T1.4.4.6.1.3.2" style="font-size:120%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.6.2"><span class="ltx_text" id="S5.T1.4.4.6.2.1" style="font-size:120%;">16.681</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.6.3"><span class="ltx_text" id="S5.T1.4.4.6.3.1" style="font-size:120%;">0.917</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.6.4"><span class="ltx_text" id="S5.T1.4.4.6.4.1" style="font-size:120%;">0.093</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.6.5"><span class="ltx_text" id="S5.T1.4.4.6.5.1" style="font-size:120%;">0.060</span></td>
<td class="ltx_td" id="S5.T1.4.4.6.6"></td>
</tr>
<tr class="ltx_tr" id="S5.T1.4.4.7">
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.7.1">
<span class="ltx_text" id="S5.T1.4.4.7.1.1" style="font-size:120%;">PSHuman </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.4.4.7.1.2.1" style="font-size:120%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10625v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a><span class="ltx_text" id="S5.T1.4.4.7.1.3.2" style="font-size:120%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.7.2"><span class="ltx_text" id="S5.T1.4.4.7.2.1" style="font-size:120%;">17.556</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.7.3"><span class="ltx_text" id="S5.T1.4.4.7.3.1" style="font-size:120%;">0.921</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.7.4"><span class="ltx_text" id="S5.T1.4.4.7.4.1" style="font-size:120%;">0.076</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.7.5"><span class="ltx_text" id="S5.T1.4.4.7.5.1" style="font-size:120%;">0.037</span></td>
<td class="ltx_td" id="S5.T1.4.4.7.6"></td>
</tr>
<tr class="ltx_tr" id="S5.T1.4.4.8">
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.8.1">
<span class="ltx_text" id="S5.T1.4.4.8.1.1" style="font-size:120%;">DreamGaussian </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.4.4.8.1.2.1" style="font-size:120%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10625v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a><span class="ltx_text" id="S5.T1.4.4.8.1.3.2" style="font-size:120%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.8.2"><span class="ltx_text" id="S5.T1.4.4.8.2.1" style="font-size:120%;">18.544</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.8.3"><span class="ltx_text" id="S5.T1.4.4.8.3.1" style="font-size:120%;">0.917</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.8.4"><span class="ltx_text" id="S5.T1.4.4.8.4.1" style="font-size:120%;">0.075</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.8.5"><span class="ltx_text" id="S5.T1.4.4.8.5.1" style="font-size:120%;">0.056</span></td>
<td class="ltx_td" id="S5.T1.4.4.8.6"></td>
</tr>
<tr class="ltx_tr" id="S5.T1.4.4.9">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.4.4.9.1"><span class="ltx_text" id="S5.T1.4.4.9.1.1" style="font-size:120%;">LHM-0.5B*</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.4.4.9.2"><span class="ltx_text ltx_font_bold" id="S5.T1.4.4.9.2.1" style="font-size:120%;">25.183</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.4.4.9.3"><span class="ltx_text ltx_font_bold" id="S5.T1.4.4.9.3.1" style="font-size:120%;">0.951</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.4.4.9.4"><span class="ltx_text ltx_font_bold" id="S5.T1.4.4.9.4.1" style="font-size:120%;">0.029</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.4.4.9.5"><span class="ltx_text ltx_font_bold" id="S5.T1.4.4.9.5.1" style="font-size:120%;">0.035</span></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="S5.T1.4.4.9.6"></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of different methods for static 3D human reconstruction using synthetic data.  The metrics used to evaluate the performance are PSNR (Peak Signal-to-Noise Ratio), SSIM (Structural Similarity Index), LPIPS (Learned Perceptual Image Patch Similarity), and FC (Face Consistency).  Higher PSNR and SSIM values and lower LPIPS and FC values indicate better performance. The asterisk (*) indicates models trained exclusively on synthetic data, highlighting their potential limitations in generalizing to real-world scenarios.
> <details>
> <summary>read the caption</summary>
> Table 1: Evaluation of static 3D reconstruction on synthtic data. * indicates this model only trains on synthetic data.
> </details>





### In-depth insights


#### 3D Avatar LHM
While "3D Avatar LHM" isn't explicitly a section title, we can infer its meaning from the paper's content. **LHM (Large Animatable Human Reconstruction Model) aims to create high-quality, animatable 3D avatars from single images.** It tackles the challenge of decoupling geometry, appearance, and deformation, which are often ambiguous in single-image 3D reconstruction. The method stands out by using 3D Gaussian splatting for avatar representation, enabling real-time rendering and pose control. A key aspect is the **multimodal transformer architecture**, effectively encoding both 3D human body positional features and 2D image features, paying special attention to clothing geometry and texture, plus preserving face identity. The innovation lies in its feed-forward nature, achieving reconstruction in seconds, and its ability to generalize well to real-world images thanks to training on large-scale video data without relying on scarce 3D scans. **LHM represents a leap towards efficient and generalizable 3D avatar creation**.

#### Animatable Models
Animatable models represent a crucial step beyond static 3D reconstruction, offering the capability to manipulate and pose reconstructed humans. This field addresses the challenge of decoupling geometry, appearance, and deformation, enabling realistic dynamic simulations. Early approaches relied on **parametric models** like SMPL, providing strong body priors but struggling with clothing details and facial expressions. Recent advancements combine **implicit surfaces** with human priors to model clothed bodies more effectively. Video-based techniques leverage temporal cues to improve reconstruction consistency from monocular or multi-view sequences. Text-to-3D methods enable avatar generation from text prompts, though often requiring extensive optimization. Current research explores diffusion models and transformer-based architectures to achieve high-quality, animatable human avatars with improved generalization and real-time performance. A key challenge lies in creating models that are both expressive and efficient, capable of capturing fine-grained details while supporting realistic animation.

#### MM Transformer
The MM Transformer seems to play a pivotal role, acting as the **central processing unit** for fusing different modalities of data, specifically 3D geometric information with 2D image features. It's architecture likely leverages attention mechanisms to allow the model to selectively focus on the most relevant features from each modality, facilitating a more nuanced understanding of the human form. This fusion enables the model to **reason jointly across geometric and visual domains**, capturing intricate details of clothing and body shape that might be missed by processing each modality separately. By incorporating a global context feature, the MM Transformer can contextualize local features, improving its ability to resolve ambiguities and generate more coherent and realistic human reconstructions. Overall, the MM Transformer architecture appears to be a key innovation for achieving **high-fidelity and animatable 3D human models**.

#### Geometric encode
Geometric encoding is crucial for 3D human reconstruction, addressing ambiguities in appearance and deformation. Early methods relied on **parametric models** like SMPL, but these struggle with diverse clothing. Recent advancements use **implicit functions** for finer details. The Large Animatable Human Reconstruction Model (LHM) leverages SMPL-X surface points, encoding **structural priors**. Positional encoding and MLPs transform these points into geometric tokens. LHM's geometric encoding effectively attends to image tokens, allowing for local and global refinement, which ultimately leading to more detailed and accurate 3D representations.

#### Canonical Space
The concept of "Canonical Space" in 3D human reconstruction, particularly when dealing with single images, is pivotal for disentangling pose and shape. **It provides a pose-invariant representation**, enabling the model to learn shape priors independently of articulation. This addresses the inherent ambiguity in monocular 3D reconstruction, where pose variations can be misinterpreted as shape changes. Regularization in this space, as observed in the paper, is crucial because photometric losses alone, while effective in target view space, often leave the canonical representation under-constrained. **This can lead to implausible deformations** when the avatar is posed. Therefore, techniques like Gaussian shape regularization and positional anchoring are employed to ensure geometric coherence in canonical space, preventing excessive anisotropy and maintaining body surface plausibility. **Canonical space constraints enhance the model's generalization ability**, enabling robust reconstruction and animation even for novel poses not seen during training.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.10625/x3.png)

> 🔼 The figure illustrates the architecture of the Large Animatable Human Model (LHM).  The LHM takes a single image as input and processes it through several steps. First, it extracts image tokens representing both the body and the head from the input image.  Simultaneously, 3D geometric body tokens are generated from a SMPL-X template mesh.  These two types of tokens (image and geometric) are fed into a Multimodal Body-Head Transformer (MBHT) module. Inside the MBHT, the tokens are fused using an attention mechanism, combining visual information with geometric priors. Finally, the resulting fused geometric tokens are decoded into parameters defining a 3D Gaussian splatting representation of the human body, allowing for realistic and animatable 3D rendering.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of the proposed LHM. Our method extracts body and head image tokens from the input image, and utilizes the proposed Multimodal Body-Head Transformer (MBHT) to fuse the 3D geometric body tokens with the image tokens. After the attention-based fusion process, the geometric body tokens are decoded into Gaussian parameters.
> </details>



![](https://arxiv.org/html/2503.10625/x4.png)

> 🔼 The Multimodal Body-Head Transformer (MBHT) block fuses 3D geometric tokens with body and head image features.  Global context features, image tokens, and query point tokens are fed into the MBHT block.  3D head point tokens first fuse with head image features, and then concatenate with 3D body point tokens to interact with body image tokens.  This architecture facilitates balanced attention across different body regions, improving the overall accuracy and detail preservation in the resulting 3D human model.
> <details>
> <summary>read the caption</summary>
> Figure 3: Architecture of the proposed Multimodal Body-Head Transformer Block (MBHT-block).
> </details>



![](https://arxiv.org/html/2503.10625/x5.png)

> 🔼 Figure 4 presents a comparison of single-image 3D human reconstruction results from different methods, including the proposed LHM model.  The comparison uses images from the DeepFashion dataset and also real-world, in-the-wild images. The results visually demonstrate that LHM achieves significantly higher levels of visual fidelity and detail, particularly noticeable in the sharpness of facial features and the accurate rendering of wrinkles and folds in clothing compared to other existing methods.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Single-view reconstruction comparisons on DeepFashion [33] and in-the-wild images. LHM achieves superior appearance fidelity and texture sharpness, particularly evident in facial details and garment wrinkles.
> </details>



![](https://arxiv.org/html/2503.10625/x8.png)

> 🔼 Figure 5 presents a comparison of single-image animatable human reconstruction results between LHM and three other methods (AniGS, Ours). The results demonstrate LHM's superior ability to produce more accurate and photorealistic animation sequences compared to existing approaches.  The figure highlights that while other techniques can generate animations, they often fail to accurately capture the details and appearance of the input image, particularly evident in the results from the AniGS method, which deviates significantly from the input.
> <details>
> <summary>read the caption</summary>
> Figure 5:  Single-view animatable human reconstruction comparisons on in-the-wild sequences. LHM produces more accurate and photorealistic animation results than the baseline methods. Note that the results of AniGS are not faithful to the input images.
> </details>



![](https://arxiv.org/html/2503.10625/x9.png)

> 🔼 This ablation study analyzes the effects of different model parameters and architectural choices on the overall performance of the LHM model.  Specifically, it compares results using the multimodal body-head transformer against a simpler alternative.  It also demonstrates the influence of the head token shrinkage regularization technique and the impact of varying the model's size (parameter count) on the quality of the generated 3D avatars. Visual comparisons of the generated avatars highlight the differences in reconstruction quality and detail across these various model configurations.
> <details>
> <summary>read the caption</summary>
> Figure 6: Ablation study on model design and parameters.
> </details>



![](https://arxiv.org/html/2503.10625/x10.png)

> 🔼 This figure presents a detailed breakdown of the Multi-Modal Transformer architecture, a key component of the LHM model.  It shows the flow of information, including query points, image tokens, and global context features, through the various layers including attention mechanisms and adaptive layer normalization. The diagram illustrates how these different input modalities are integrated using multi-head attention to produce a refined output.
> <details>
> <summary>read the caption</summary>
> Figure 7: Detailed architecture of Multi-Modal Transformer [11].
> </details>



![](https://arxiv.org/html/2503.10625/x11.png)

> 🔼 Figure 8 illustrates the architecture of the Head Feature Pyramid Encoding (HFPE) module.  The HFPE module is designed to address the challenge of capturing high-frequency details in facial features, particularly given the small size of the face region within the input image and potential spatial downsampling during processing. The figure shows multiple stages: the input image, various feature extractors (ViT blocks), and the final concatenation and projection to output multi-scale facial features.
> <details>
> <summary>read the caption</summary>
> Figure 8: Architecture of our HFPE for multi-scale facial feature extraction
> </details>



![](https://arxiv.org/html/2503.10625/x12.png)

> 🔼 This ablation study visualizes the impact of the canonical space shape regularization loss on the quality of 3D human reconstruction.  The images show that using both the 'as spherical as possible' loss (LASAP) and the 'as close as possible' loss (LACAP) results in more accurate and realistic human models, compared to models trained without these losses.  The lack of LASAP leads to artifacts such as semi-transparent boundaries, while the lack of LACAP causes floating points around the human body, indicating the importance of both regularization techniques for robust and accurate reconstruction.
> <details>
> <summary>read the caption</summary>
> Figure 9: Ablation for canonical space shape regularization.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T2.6.6">
<tr class="ltx_tr" id="S5.T2.6.6.6">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.6.6.6.7"><span class="ltx_text" id="S5.T2.6.6.6.7.1" style="font-size:120%;">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.1.1.1.1">
<span class="ltx_text" id="S5.T2.1.1.1.1.1" style="font-size:120%;">PSNR </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.1.1.1.1.m1.1"><semantics id="S5.T2.1.1.1.1.m1.1a"><mo id="S5.T2.1.1.1.1.m1.1.1" mathsize="120%" stretchy="false" xref="S5.T2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.1.1.1.1.m1.1b"><ci id="S5.T2.1.1.1.1.m1.1.1.cmml" xref="S5.T2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.2.2.2">
<span class="ltx_text" id="S5.T2.2.2.2.2.1" style="font-size:120%;">SSIM </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.2.2.2.2.m1.1"><semantics id="S5.T2.2.2.2.2.m1.1a"><mo id="S5.T2.2.2.2.2.m1.1.1" mathsize="120%" stretchy="false" xref="S5.T2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.2.2.2.2.m1.1b"><ci id="S5.T2.2.2.2.2.m1.1.1.cmml" xref="S5.T2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.3.3.3.3">
<span class="ltx_text" id="S5.T2.3.3.3.3.1" style="font-size:120%;">LPIPS </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.3.3.3.3.m1.1"><semantics id="S5.T2.3.3.3.3.m1.1a"><mo id="S5.T2.3.3.3.3.m1.1.1" mathsize="120%" stretchy="false" xref="S5.T2.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.3.3.3.3.m1.1b"><ci id="S5.T2.3.3.3.3.m1.1.1.cmml" xref="S5.T2.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.4.4.4.4">
<span class="ltx_text" id="S5.T2.4.4.4.4.1" style="font-size:120%;">FC </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.4.4.4.4.m1.1"><semantics id="S5.T2.4.4.4.4.m1.1a"><mo id="S5.T2.4.4.4.4.m1.1.1" mathsize="120%" stretchy="false" xref="S5.T2.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.4.4.4.4.m1.1b"><ci id="S5.T2.4.4.4.4.m1.1.1.cmml" xref="S5.T2.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.5.5.5.5">
<span class="ltx_text" id="S5.T2.5.5.5.5.1" style="font-size:120%;">Time</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.5.5.5.5.m1.1"><semantics id="S5.T2.5.5.5.5.m1.1a"><mo id="S5.T2.5.5.5.5.m1.1.1" mathsize="120%" stretchy="false" xref="S5.T2.5.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.5.5.5.5.m1.1b"><ci id="S5.T2.5.5.5.5.m1.1.1.cmml" xref="S5.T2.5.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.5.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.5.5.5.5.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.6.6.6.6">
<span class="ltx_text" id="S5.T2.6.6.6.6.1" style="font-size:120%;">Memory </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.6.6.6.6.m1.1"><semantics id="S5.T2.6.6.6.6.m1.1a"><mo id="S5.T2.6.6.6.6.m1.1.1" mathsize="120%" stretchy="false" xref="S5.T2.6.6.6.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.6.6.6.6.m1.1b"><ci id="S5.T2.6.6.6.6.m1.1.1.cmml" xref="S5.T2.6.6.6.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.6.6.6.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.6.6.6.6.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_border_tt" id="S5.T2.6.6.6.8"></td>
</tr>
<tr class="ltx_tr" id="S5.T2.6.6.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.7.1">
<span class="ltx_text" id="S5.T2.6.6.7.1.1" style="font-size:120%;">En3D </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.6.6.7.1.2.1" style="font-size:120%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10625v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a><span class="ltx_text" id="S5.T2.6.6.7.1.3.2" style="font-size:120%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.7.2"><span class="ltx_text" id="S5.T2.6.6.7.2.1" style="font-size:120%;">15.231</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.7.3"><span class="ltx_text" id="S5.T2.6.6.7.3.1" style="font-size:120%;">0.734</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.7.4"><span class="ltx_text" id="S5.T2.6.6.7.4.1" style="font-size:120%;">0.172</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.7.5"><span class="ltx_text" id="S5.T2.6.6.7.5.1" style="font-size:120%;">0.058</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.7.6"><span class="ltx_text" id="S5.T2.6.6.7.6.1" style="font-size:120%;">5 minutes</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.7.7"><span class="ltx_text" id="S5.T2.6.6.7.7.1" style="font-size:120%;">32 GB</span></td>
<td class="ltx_td ltx_border_t" id="S5.T2.6.6.7.8"></td>
</tr>
<tr class="ltx_tr" id="S5.T2.6.6.8">
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.8.1">
<span class="ltx_text" id="S5.T2.6.6.8.1.1" style="font-size:120%;">AniGS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.6.6.8.1.2.1" style="font-size:120%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10625v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a><span class="ltx_text" id="S5.T2.6.6.8.1.3.2" style="font-size:120%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.8.2"><span class="ltx_text" id="S5.T2.6.6.8.2.1" style="font-size:120%;">18.681</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.8.3"><span class="ltx_text" id="S5.T2.6.6.8.3.1" style="font-size:120%;">0.871</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.8.4"><span class="ltx_text" id="S5.T2.6.6.8.4.1" style="font-size:120%;">0.103</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.8.5"><span class="ltx_text" id="S5.T2.6.6.8.5.1" style="font-size:120%;">0.053</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.8.6"><span class="ltx_text" id="S5.T2.6.6.8.6.1" style="font-size:120%;">15 minutes</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.8.7"><span class="ltx_text" id="S5.T2.6.6.8.7.1" style="font-size:120%;">24 GB</span></td>
<td class="ltx_td" id="S5.T2.6.6.8.8"></td>
</tr>
<tr class="ltx_tr" id="S5.T2.6.6.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.9.1"><span class="ltx_text" id="S5.T2.6.6.9.1.1" style="font-size:120%;">LHM-0.5B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.9.2"><span class="ltx_text" id="S5.T2.6.6.9.2.1" style="font-size:120%;">21.648</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.9.3"><span class="ltx_text" id="S5.T2.6.6.9.3.1" style="font-size:120%;">0.924</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.9.4"><span class="ltx_text" id="S5.T2.6.6.9.4.1" style="font-size:120%;">0.044</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.9.5"><span class="ltx_text" id="S5.T2.6.6.9.5.1" style="font-size:120%;">0.042</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.9.6"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.9.6.1" style="font-size:120%;color:#FF0000;">2.01 seconds</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.9.7"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.9.7.1" style="font-size:120%;color:#FF0000;">18 GB</span></td>
<td class="ltx_td ltx_border_t" id="S5.T2.6.6.9.8"></td>
</tr>
<tr class="ltx_tr" id="S5.T2.6.6.10">
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.10.1"><span class="ltx_text" id="S5.T2.6.6.10.1.1" style="font-size:120%;">LHM-0.7B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.10.2"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.10.2.1" style="font-size:120%;color:#0000FF;">21.879</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.10.3"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.10.3.1" style="font-size:120%;color:#0000FF;">0.930</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.10.4"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.10.4.1" style="font-size:120%;color:#FF0000;">0.039</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.10.5"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.10.5.1" style="font-size:120%;color:#0000FF;">0.039</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.10.6"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.10.6.1" style="font-size:120%;color:#0000FF;">4.13 seconds</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.10.7"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.10.7.1" style="font-size:120%;color:#0000FF;">21 GB</span></td>
<td class="ltx_td" id="S5.T2.6.6.10.8"></td>
</tr>
<tr class="ltx_tr" id="S5.T2.6.6.11">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.6.6.11.1"><span class="ltx_text" id="S5.T2.6.6.11.1.1" style="font-size:120%;">LHM-1B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.6.6.11.2"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.11.2.1" style="font-size:120%;color:#FF0000;">22.003</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.6.6.11.3"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.11.3.1" style="font-size:120%;color:#FF0000;">0.930</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.6.6.11.4"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.11.4.1" style="font-size:120%;color:#0000FF;">0.040</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.6.6.11.5"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.11.5.1" style="font-size:120%;color:#FF0000;">0.035</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.6.6.11.6"><span class="ltx_text" id="S5.T2.6.6.11.6.1" style="font-size:120%;">6.57 seconds</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.6.6.11.7"><span class="ltx_text" id="S5.T2.6.6.11.7.1" style="font-size:120%;">24 GB</span></td>
<td class="ltx_td ltx_border_bb" id="S5.T2.6.6.11.8"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of human animation results from different methods on real-world video datasets.  It evaluates the performance of the proposed LHM model (Large Animatable Human Reconstruction Model) against two established baseline methods (En3D and AniGS) using metrics such as Peak Signal-to-Noise Ratio (PSNR), Structural Similarity Index (SSIM), Learned Perceptual Image Patch Similarity (LPIPS), Face Consistency (FC), processing time, and memory usage. The results showcase the superior performance of LHM in generating high-quality, photorealistic, and consistent human animations, significantly outperforming baseline methods in terms of accuracy and efficiency.
> <details>
> <summary>read the caption</summary>
> Table 2: Human animation results on in-the-wild video dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.SS3.SSS0.Px2.4.4.4.4">
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.4.4.4.4.4">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS3.SSS0.Px2.4.4.4.4.4.5"><span class="ltx_text" id="S5.SS3.SSS0.Px2.4.4.4.4.4.5.1" style="font-size:120%;">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS3.SSS0.Px2.1.1.1.1.1.1">
<span class="ltx_text" id="S5.SS3.SSS0.Px2.1.1.1.1.1.1.1" style="font-size:120%;">PSNR </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.SS3.SSS0.Px2.1.1.1.1.1.1.m1.1"><semantics id="S5.SS3.SSS0.Px2.1.1.1.1.1.1.m1.1a"><mo id="S5.SS3.SSS0.Px2.1.1.1.1.1.1.m1.1.1" mathsize="120%" stretchy="false" xref="S5.SS3.SSS0.Px2.1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.SS3.SSS0.Px2.1.1.1.1.1.1.m1.1b"><ci id="S5.SS3.SSS0.Px2.1.1.1.1.1.1.m1.1.1.cmml" xref="S5.SS3.SSS0.Px2.1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS3.SSS0.Px2.1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS3.SSS0.Px2.1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS3.SSS0.Px2.2.2.2.2.2.2">
<span class="ltx_text" id="S5.SS3.SSS0.Px2.2.2.2.2.2.2.1" style="font-size:120%;">SSIM </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.SS3.SSS0.Px2.2.2.2.2.2.2.m1.1"><semantics id="S5.SS3.SSS0.Px2.2.2.2.2.2.2.m1.1a"><mo id="S5.SS3.SSS0.Px2.2.2.2.2.2.2.m1.1.1" mathsize="120%" stretchy="false" xref="S5.SS3.SSS0.Px2.2.2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.SS3.SSS0.Px2.2.2.2.2.2.2.m1.1b"><ci id="S5.SS3.SSS0.Px2.2.2.2.2.2.2.m1.1.1.cmml" xref="S5.SS3.SSS0.Px2.2.2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS3.SSS0.Px2.2.2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS3.SSS0.Px2.2.2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS3.SSS0.Px2.3.3.3.3.3.3">
<span class="ltx_text" id="S5.SS3.SSS0.Px2.3.3.3.3.3.3.1" style="font-size:120%;">LPIPS </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.SS3.SSS0.Px2.3.3.3.3.3.3.m1.1"><semantics id="S5.SS3.SSS0.Px2.3.3.3.3.3.3.m1.1a"><mo id="S5.SS3.SSS0.Px2.3.3.3.3.3.3.m1.1.1" mathsize="120%" stretchy="false" xref="S5.SS3.SSS0.Px2.3.3.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.SS3.SSS0.Px2.3.3.3.3.3.3.m1.1b"><ci id="S5.SS3.SSS0.Px2.3.3.3.3.3.3.m1.1.1.cmml" xref="S5.SS3.SSS0.Px2.3.3.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS3.SSS0.Px2.3.3.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS3.SSS0.Px2.3.3.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS3.SSS0.Px2.4.4.4.4.4.4">
<span class="ltx_text" id="S5.SS3.SSS0.Px2.4.4.4.4.4.4.1" style="font-size:120%;">FC </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.SS3.SSS0.Px2.4.4.4.4.4.4.m1.1"><semantics id="S5.SS3.SSS0.Px2.4.4.4.4.4.4.m1.1a"><mo id="S5.SS3.SSS0.Px2.4.4.4.4.4.4.m1.1.1" mathsize="120%" stretchy="false" xref="S5.SS3.SSS0.Px2.4.4.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.SS3.SSS0.Px2.4.4.4.4.4.4.m1.1b"><ci id="S5.SS3.SSS0.Px2.4.4.4.4.4.4.m1.1.1.cmml" xref="S5.SS3.SSS0.Px2.4.4.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS3.SSS0.Px2.4.4.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS3.SSS0.Px2.4.4.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_border_tt" id="S5.SS3.SSS0.Px2.4.4.4.4.4.6"></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.4.4.4.4.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.4.4.4.4.5.1"><span class="ltx_text" id="S5.SS3.SSS0.Px2.4.4.4.4.5.1.1" style="font-size:120%;">LHM-0.5B + Synthetic Data</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.4.4.4.4.5.2"><span class="ltx_text" id="S5.SS3.SSS0.Px2.4.4.4.4.5.2.1" style="font-size:120%;">19.753</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.4.4.4.4.5.3"><span class="ltx_text" id="S5.SS3.SSS0.Px2.4.4.4.4.5.3.1" style="font-size:120%;">0.904</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.4.4.4.4.5.4"><span class="ltx_text" id="S5.SS3.SSS0.Px2.4.4.4.4.5.4.1" style="font-size:120%;">0.060</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.4.4.4.4.5.5"><span class="ltx_text" id="S5.SS3.SSS0.Px2.4.4.4.4.5.5.1" style="font-size:120%;">0.057</span></td>
<td class="ltx_td ltx_border_t" id="S5.SS3.SSS0.Px2.4.4.4.4.5.6"></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.4.4.4.4.6">
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.4.4.4.4.6.1"><span class="ltx_text" id="S5.SS3.SSS0.Px2.4.4.4.4.6.1.1" style="font-size:120%;">LHM-0.5B + 10K Videos</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.4.4.4.4.6.2"><span class="ltx_text" id="S5.SS3.SSS0.Px2.4.4.4.4.6.2.1" style="font-size:120%;">20.692</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.4.4.4.4.6.3"><span class="ltx_text" id="S5.SS3.SSS0.Px2.4.4.4.4.6.3.1" style="font-size:120%;">0.911</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.4.4.4.4.6.4"><span class="ltx_text" id="S5.SS3.SSS0.Px2.4.4.4.4.6.4.1" style="font-size:120%;">0.052</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.4.4.4.4.6.5"><span class="ltx_text" id="S5.SS3.SSS0.Px2.4.4.4.4.6.5.1" style="font-size:120%;">0.048</span></td>
<td class="ltx_td" id="S5.SS3.SSS0.Px2.4.4.4.4.6.6"></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.4.4.4.4.7">
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.4.4.4.4.7.1"><span class="ltx_text" id="S5.SS3.SSS0.Px2.4.4.4.4.7.1.1" style="font-size:120%;">LHM-0.5B + 50K Videos</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.4.4.4.4.7.2"><span class="ltx_text" id="S5.SS3.SSS0.Px2.4.4.4.4.7.2.1" style="font-size:120%;">21.108</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.4.4.4.4.7.3"><span class="ltx_text" id="S5.SS3.SSS0.Px2.4.4.4.4.7.3.1" style="font-size:120%;">0.915</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.4.4.4.4.7.4"><span class="ltx_text" id="S5.SS3.SSS0.Px2.4.4.4.4.7.4.1" style="font-size:120%;">0.050</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.4.4.4.4.7.5"><span class="ltx_text" id="S5.SS3.SSS0.Px2.4.4.4.4.7.5.1" style="font-size:120%;">0.043</span></td>
<td class="ltx_td" id="S5.SS3.SSS0.Px2.4.4.4.4.7.6"></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.4.4.4.4.8">
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.4.4.4.4.8.1"><span class="ltx_text" id="S5.SS3.SSS0.Px2.4.4.4.4.8.1.1" style="font-size:120%;">LHM-0.5B + 100K Videos</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.4.4.4.4.8.2"><span class="ltx_text" id="S5.SS3.SSS0.Px2.4.4.4.4.8.2.1" style="font-size:120%;">21.429</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.4.4.4.4.8.3"><span class="ltx_text" id="S5.SS3.SSS0.Px2.4.4.4.4.8.3.1" style="font-size:120%;">0.920</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.4.4.4.4.8.4"><span class="ltx_text" id="S5.SS3.SSS0.Px2.4.4.4.4.8.4.1" style="font-size:120%;">0.049</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.4.4.4.4.8.5"><span class="ltx_text" id="S5.SS3.SSS0.Px2.4.4.4.4.8.5.1" style="font-size:120%;">0.045</span></td>
<td class="ltx_td" id="S5.SS3.SSS0.Px2.4.4.4.4.8.6"></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.4.4.4.4.9">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.4.4.4.4.9.1"><span class="ltx_text" id="S5.SS3.SSS0.Px2.4.4.4.4.9.1.1" style="font-size:120%;">LHM-0.5B + All</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.4.4.4.4.9.2"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.4.4.4.4.9.2.1" style="font-size:120%;">21.648</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.4.4.4.4.9.3"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.4.4.4.4.9.3.1" style="font-size:120%;">0.924</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.4.4.4.4.9.4"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.4.4.4.4.9.4.1" style="font-size:120%;">0.044</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.4.4.4.4.9.5"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.4.4.4.4.9.5.1" style="font-size:120%;">0.042</span></td>
<td class="ltx_td ltx_border_bb" id="S5.SS3.SSS0.Px2.4.4.4.4.9.6"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different methods for human animation on real-world video data.  It shows the performance of several models, including LHM variants with different model sizes and training data amounts, as well as two baseline methods (En3D and AniGS). The evaluation metrics used are PSNR, SSIM, LPIPS, and Face Consistency (FC), providing a comprehensive assessment of reconstruction quality.  Inference time and memory usage are also reported to highlight the efficiency of the different approaches.
> <details>
> <summary>read the caption</summary>
> Table 3: Quantitative results on in-the-wild video dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.SS3.SSS0.Px2.8.8.4">
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.8.8.4.4">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS3.SSS0.Px2.8.8.4.4.5"><span class="ltx_text" id="S5.SS3.SSS0.Px2.8.8.4.4.5.1" style="font-size:120%;">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS3.SSS0.Px2.5.5.1.1.1">
<span class="ltx_text" id="S5.SS3.SSS0.Px2.5.5.1.1.1.1" style="font-size:120%;">PSNR </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.SS3.SSS0.Px2.5.5.1.1.1.m1.1"><semantics id="S5.SS3.SSS0.Px2.5.5.1.1.1.m1.1a"><mo id="S5.SS3.SSS0.Px2.5.5.1.1.1.m1.1.1" mathsize="120%" stretchy="false" xref="S5.SS3.SSS0.Px2.5.5.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.SS3.SSS0.Px2.5.5.1.1.1.m1.1b"><ci id="S5.SS3.SSS0.Px2.5.5.1.1.1.m1.1.1.cmml" xref="S5.SS3.SSS0.Px2.5.5.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS3.SSS0.Px2.5.5.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS3.SSS0.Px2.5.5.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS3.SSS0.Px2.6.6.2.2.2">
<span class="ltx_text" id="S5.SS3.SSS0.Px2.6.6.2.2.2.1" style="font-size:120%;">SSIM </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.SS3.SSS0.Px2.6.6.2.2.2.m1.1"><semantics id="S5.SS3.SSS0.Px2.6.6.2.2.2.m1.1a"><mo id="S5.SS3.SSS0.Px2.6.6.2.2.2.m1.1.1" mathsize="120%" stretchy="false" xref="S5.SS3.SSS0.Px2.6.6.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.SS3.SSS0.Px2.6.6.2.2.2.m1.1b"><ci id="S5.SS3.SSS0.Px2.6.6.2.2.2.m1.1.1.cmml" xref="S5.SS3.SSS0.Px2.6.6.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS3.SSS0.Px2.6.6.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS3.SSS0.Px2.6.6.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS3.SSS0.Px2.7.7.3.3.3">
<span class="ltx_text" id="S5.SS3.SSS0.Px2.7.7.3.3.3.1" style="font-size:120%;">LPIPS </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.SS3.SSS0.Px2.7.7.3.3.3.m1.1"><semantics id="S5.SS3.SSS0.Px2.7.7.3.3.3.m1.1a"><mo id="S5.SS3.SSS0.Px2.7.7.3.3.3.m1.1.1" mathsize="120%" stretchy="false" xref="S5.SS3.SSS0.Px2.7.7.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.SS3.SSS0.Px2.7.7.3.3.3.m1.1b"><ci id="S5.SS3.SSS0.Px2.7.7.3.3.3.m1.1.1.cmml" xref="S5.SS3.SSS0.Px2.7.7.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS3.SSS0.Px2.7.7.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS3.SSS0.Px2.7.7.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.SS3.SSS0.Px2.8.8.4.4.4">
<span class="ltx_text" id="S5.SS3.SSS0.Px2.8.8.4.4.4.1" style="font-size:120%;">FC </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.SS3.SSS0.Px2.8.8.4.4.4.m1.1"><semantics id="S5.SS3.SSS0.Px2.8.8.4.4.4.m1.1a"><mo id="S5.SS3.SSS0.Px2.8.8.4.4.4.m1.1.1" mathsize="120%" stretchy="false" xref="S5.SS3.SSS0.Px2.8.8.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.SS3.SSS0.Px2.8.8.4.4.4.m1.1b"><ci id="S5.SS3.SSS0.Px2.8.8.4.4.4.m1.1.1.cmml" xref="S5.SS3.SSS0.Px2.8.8.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.SS3.SSS0.Px2.8.8.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.SS3.SSS0.Px2.8.8.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_border_tt" id="S5.SS3.SSS0.Px2.8.8.4.4.6"></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.8.8.4.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.8.8.4.5.1"><span class="ltx_text" id="S5.SS3.SSS0.Px2.8.8.4.5.1.1" style="font-size:120%;">LHM-0.5B w/ MM-Transformer</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.8.8.4.5.2"><span class="ltx_text" id="S5.SS3.SSS0.Px2.8.8.4.5.2.1" style="font-size:120%;">20.072</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.8.8.4.5.3"><span class="ltx_text" id="S5.SS3.SSS0.Px2.8.8.4.5.3.1" style="font-size:120%;">0.907</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.8.8.4.5.4"><span class="ltx_text" id="S5.SS3.SSS0.Px2.8.8.4.5.4.1" style="font-size:120%;">0.100</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.SS3.SSS0.Px2.8.8.4.5.5"><span class="ltx_text" id="S5.SS3.SSS0.Px2.8.8.4.5.5.1" style="font-size:120%;">0.053</span></td>
<td class="ltx_td ltx_border_t" id="S5.SS3.SSS0.Px2.8.8.4.5.6"></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.8.8.4.6">
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.8.8.4.6.1"><span class="ltx_text" id="S5.SS3.SSS0.Px2.8.8.4.6.1.1" style="font-size:120%;">LHM-0.5B w/o Shrinkage Regularization</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.8.8.4.6.2"><span class="ltx_text" id="S5.SS3.SSS0.Px2.8.8.4.6.2.1" style="font-size:120%;">21.037</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.8.8.4.6.3"><span class="ltx_text" id="S5.SS3.SSS0.Px2.8.8.4.6.3.1" style="font-size:120%;">0.915</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.8.8.4.6.4"><span class="ltx_text" id="S5.SS3.SSS0.Px2.8.8.4.6.4.1" style="font-size:120%;">0.049</span></td>
<td class="ltx_td ltx_align_center" id="S5.SS3.SSS0.Px2.8.8.4.6.5"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.8.8.4.6.5.1" style="font-size:120%;">0.041</span></td>
<td class="ltx_td" id="S5.SS3.SSS0.Px2.8.8.4.6.6"></td>
</tr>
<tr class="ltx_tr" id="S5.SS3.SSS0.Px2.8.8.4.7">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.8.8.4.7.1"><span class="ltx_text" id="S5.SS3.SSS0.Px2.8.8.4.7.1.1" style="font-size:120%;">LHM-0.5B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.8.8.4.7.2"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.8.8.4.7.2.1" style="font-size:120%;">21.648</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.8.8.4.7.3"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.8.8.4.7.3.1" style="font-size:120%;">0.924</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.8.8.4.7.4"><span class="ltx_text ltx_font_bold" id="S5.SS3.SSS0.Px2.8.8.4.7.4.1" style="font-size:120%;">0.044</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.SS3.SSS0.Px2.8.8.4.7.5"><span class="ltx_text" id="S5.SS3.SSS0.Px2.8.8.4.7.5.1" style="font-size:120%;">0.042</span></td>
<td class="ltx_td ltx_border_bb" id="S5.SS3.SSS0.Px2.8.8.4.7.6"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the effectiveness of different components within the model's transformer architecture. It compares the performance of the full model against variations where specific parts of the transformer are removed or modified, allowing for an analysis of their individual contributions to the overall model's accuracy and performance.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study for the transformer architecture.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.10625/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10625/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10625/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10625/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10625/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10625/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10625/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10625/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10625/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10625/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10625/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10625/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10625/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10625/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10625/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}