---
title: "X-Dyna: Expressive Dynamic Human Image Animation"
summary: "X-Dyna: a novel diffusion-based pipeline generates realistic human image animation using a zero-shot approach by integrating a Dynamics-Adapter for dynamic detail preservation, exceeding state-of-the-..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 University of Southern California",]
showSummary: true
date: 2025-01-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.10021 {{< /keyword >}}
{{< keyword icon="writer" >}} Di Chang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-20 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.10021" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.10021" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.10021/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current human image animation methods often struggle to generate truly lifelike and expressive animations due to issues like loss of dynamic details and rigid motions.  These limitations arise from shortcomings in existing approaches that focus on human pose control, often neglecting the complexity of natural human movements and environmental interactions.  Existing methods often cause the loss of dynamic details, resulting in static backgrounds and unnatural human motion. This paper also finds that prior methods for maintaining appearance consistency can lead to overly strong constraints, hindering the generation of fluid and dynamic scenes. 

The researchers present X-Dyna, a novel zero-shot diffusion-based method that addresses these issues.  **X-Dyna uses a "Dynamics-Adapter" module to effectively integrate reference appearance into spatial attentions without sacrificing dynamic details.** It also incorporates a local face control module for more precise facial expression transfer.  The model is trained on a diverse dataset of human motion and natural scene videos, allowing it to learn subtle human dynamics and fluid environmental effects.  **Comprehensive evaluations show X-Dyna outperforms state-of-the-art methods, demonstrating superior expressiveness, identity preservation, and visual quality.**

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} X-Dyna, a novel zero-shot human image animation pipeline produces highly realistic and expressive animations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The Dynamics-Adapter module effectively integrates reference appearance context into the diffusion backbone, enhancing lifelike qualities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The approach outperforms state-of-the-art methods, demonstrated through comprehensive qualitative and quantitative evaluations. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it significantly advances the field of human image animation.  It addresses limitations of prior methods by generating more realistic and expressive animations, thus opening up new avenues for research in areas such as virtual humans, digital arts, and social media.  **The introduction of the Dynamics-Adapter module and a novel training strategy are particularly significant contributions**, paving the way for more lifelike and controllable human image animation.

------
#### Visual Insights



![](https://arxiv.org/html/2501.10021/x1.png)

> 🔼 This figure illustrates the X-Dyna architecture, a diffusion-based model for human image animation. It uses a pretrained diffusion UNet, enhanced with a Dynamics Adapter (D) to integrate reference image context into spatial attention, improving dynamic detail generation without sacrificing pose control.  A ControlNet (CP) handles body pose, while a local face control module (CF) manages facial expressions using synthesized cross-identity face patches. The model is trained on a diverse dataset of human motion and natural scene videos, resulting in realistic animations with accurate pose and expression transfer.
> <details>
> <summary>read the caption</summary>
> Figure 1:  We leverage a pretrained diffusion UNet backbone for controlled human image animation, enabling expressive dynamic details and precise motion control. Specifically, we introduce a dynamics adapter D𝐷Ditalic_D that seamlessly integrates the reference image context as a trainable residual to the spatial attention, in parallel with the denoising process, while preserving the original spatial and temporal attention mechanisms within the UNet. In addition to body pose control via a ControlNet CPsubscript𝐶𝑃C_{P}italic_C start_POSTSUBSCRIPT italic_P end_POSTSUBSCRIPT , we introduce a local face control module CFsubscript𝐶𝐹C_{F}italic_C start_POSTSUBSCRIPT italic_F end_POSTSUBSCRIPT that implicitly learns facial expression control from a synthesized cross-identity face patch. We train our model on a diverse dataset of human motion videos and natural scene videos simultaneously. Our model achieves remarkable transfer of body poses and facial expressions, as well as highly vivid and detailed dynamics for both the human and the scene.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.3.3.3.4">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1">
<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.1">FG-DTFVD</span> <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.2.2.2">
<span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.2.1">BG-DTFVD</span> <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T1.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.3.3.3.3">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.3.3.3.1">DTFVD</span> <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T1.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.3.3.4.1.1">MagicAnimate <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.10021v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.4.1.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.3.4.1.2.1">1.753</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.4.1.3">2.142</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.4.1.4">2.601</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.3.5.2.1">Animate-Anyone <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2501.10021v1#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">16</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.5.2.2">1.789</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.5.2.3">2.034</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.5.2.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.3.5.2.4.1">2.310</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.3.6.3.1">MagicPose <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.10021v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6.3.2">1.846</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6.3.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.3.6.3.3.1">1.901</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6.3.4">2.412</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.3.7.4.1">MimicMotion <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.10021v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7.4.2">2.639</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7.4.3">3.274</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7.4.4">3.590</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.3.3.8.5.1">X-Dyna</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.3.8.5.2"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.8.5.2.1">0.900</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.3.8.5.3"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.8.5.3.1">1.101</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.3.8.5.4"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.8.5.4.1">1.518</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of the X-Dyna model against state-of-the-art methods in terms of dynamics texture generation.  The metrics used are FG-DTFVD (foreground dynamics texture Frechet Video Distance), BG-DTFVD (background dynamics texture Frechet Video Distance), and DTFVD (overall dynamics texture Frechet Video Distance). Lower scores indicate better performance.  The DTFVD metric is specifically calculated by replacing the pre-trained backbone of the FVD (Frechet Video Distance) metric with one trained on the DTDB (Dynamics Texture Database) dataset. This allows for a more focused evaluation of the dynamic texture quality in the generated videos.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparisons of X-Dyna with the recent state-of-the-art (SOTA) methods on dynamics texture generation. A downward-pointing arrow indicates that lower values are better and vise versa. DTFVD [5] is calculated by replacing the FVD pre-trained backbone with one trained on DTDB [10]. FG-DTFVD denotes the DTFVD is running on the foreground parts of the videos after segmentation, and BG-DTFVD denotes the DTFVD of the background parts.
> </details>





### In-depth insights


#### X-Dyna: Background
X-Dyna's background likely involves a review of existing human image animation techniques.  The authors probably discussed limitations of previous approaches, such as difficulties in generating realistic, dynamic motions while maintaining identity consistency, particularly with zero-shot methods.  Prior methods may have struggled with dynamic background generation, often resulting in static or unrealistic environments.  Therefore, **X-Dyna aims to address these shortcomings by introducing novel methods to handle both human motion and scene dynamics simultaneously.**  This likely involved researching various architectures, such as diffusion models, and exploring ways to effectively integrate appearance information from a single reference image while preserving fine details and fluid movements. The background section would set the stage by highlighting the challenges faced and the gap that X-Dyna attempts to fill within the broader field of computer vision and video generation. **A thorough exploration of existing diffusion models and control mechanisms would have formed a crucial part of the background research.** Finally, the background section likely positioned X-Dyna by comparing it to state-of-the-art approaches, demonstrating its improvement and novel contributions.

#### Dynamics Adapter
The Dynamics Adapter is a crucial innovation enhancing the X-Dyna model.  It directly addresses the shortcomings of prior methods by **seamlessly integrating reference appearance context** into the diffusion process without hindering the generation of dynamic details. Unlike previous approaches that rely on fully trainable parallel UNets (ReferenceNet) or simple residual connections (IP-Adapter), which often lead to static backgrounds and limited expressiveness, the Dynamics Adapter cleverly leverages a lightweight module that propagates context via trainable query and output projection layers within the self-attention mechanism of the diffusion backbone. This subtle yet effective integration preserves the UNet's inherent ability to synthesize fluid and intricate dynamics while ensuring that the generated human image and scene maintain visual consistency with the provided reference image.  **The design is ingenious in its efficiency**, achieving high-quality results with minimal added parameters, thereby avoiding the limitations of heavier, fully trainable modules.  By disentangling appearance from motion synthesis, the Dynamics Adapter demonstrates a **significant step toward more realistic and expressive human image animation**.

#### Face Expression Ctrl
The concept of 'Face Expression Ctrl' within the context of a research paper on human image animation is crucial for achieving realism.  It suggests a method for **precisely controlling facial expressions** in generated animations, going beyond simple pose imitation. This is likely achieved through techniques that isolate facial features from body movements, enabling independent manipulation.  **Deep learning models** might be employed, trained on datasets of diverse facial expressions paired with corresponding control signals.  A critical aspect would be disentangling identity from expression, ensuring that changes in expression don't alter the identity of the animated person. This could involve employing **generative adversarial networks (GANs) or diffusion models**, carefully designed to preserve identity features while allowing for nuanced expression changes.   The success of 'Face Expression Ctrl' would significantly impact the quality of the animations, moving them closer to photorealistic levels and offering a greater degree of creative control.

#### Training & Results
A thorough analysis of a research paper's "Training & Results" section should delve into the specifics of the training process, encompassing the dataset used, model architecture, hyperparameters, and training methodology.  Crucially, it should **evaluate the chosen metrics** for assessing model performance and discuss their limitations. The results section needs to present a **comprehensive evaluation**, including both quantitative (e.g., precision, recall, F1-score, AUC) and qualitative (e.g., visual inspection, user studies) analyses.  **Statistical significance** of findings should be established, avoiding overfitting and highlighting potential biases in the dataset.  The discussion should compare results to prior work, emphasizing **novelty and improvements**. Finally, any limitations of the training or evaluation processes, potential sources of error, and future research directions should be explicitly addressed.

#### Future of X-Dyna
The future of X-Dyna hinges on addressing its current limitations and expanding its capabilities.  **Improving handling of extreme pose variations** is crucial; the model struggles when target poses deviate significantly from the reference image.  **Enhancing hand pose generation** is another key area for improvement, requiring potentially higher-resolution data and advanced hand-pose representation models.  Exploring integration with more advanced diffusion models like Stable Diffusion 3 and incorporating camera trajectory or drag control would enhance user interaction and control. **Extending the training data** to include more diverse scenes and dynamic backgrounds will further improve the realism of generated animations.  Finally, **research into disentanglement techniques** for better separation of appearance, motion, and background elements will allow for finer-grained control and higher-quality results. Addressing these aspects will solidify X-Dyna's position as a leading technology in human image animation.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.10021/x2.png)

> 🔼 Figure 2 illustrates a comparison of three different methods for incorporating reference images into a diffusion model for human image animation. Panel (a) shows the results using IP-Adapter, which generates vivid textures but struggles to preserve the appearance of the reference image. Panel (b) displays the results obtained using ReferenceNet, which successfully maintains identity but generates static backgrounds and lacks dynamic elements. Finally, panel (c) presents the results achieved using the proposed Dynamics-Adapter, demonstrating its ability to produce both expressive details and consistent identities.
> <details>
> <summary>read the caption</summary>
> Figure 2:  a) IP-Adapter [50] can generate vivid texture from the reference image but fails to preserve the appearance. b) Though ReferenceNet [16] can preserve the identity from the human reference, it generates a static background without any dynamics. c) Dynamics-Adapter provides both expressive details and consistent identities.
> </details>



![](https://arxiv.org/html/2501.10021/x3.png)

> 🔼 Figure 3 illustrates three different approaches to integrating reference image information into a Stable Diffusion (SD) model for controlled image generation.  (a) shows the IP-Adapter method, where the reference image is encoded as a CLIP embedding and added as a residual to the cross-attention layers of the SD UNet. (b) depicts ReferenceNet, which uses a parallel, trainable UNet to process the reference image and concatenate its self-attention features with those of the SD UNet. (c) presents the Dynamics-Adapter, a more efficient method that uses a partially shared-weight UNet to process the reference image and learns a residual within the self-attention mechanism of the SD UNet using trainable query and output layers, while keeping the rest of the SD UNet's weights frozen.
> <details>
> <summary>read the caption</summary>
> Figure 3: a) IP-Adapter [50] encodes the reference image as an image CLIP embedding and injects the information into the cross-attention layers in SD as the residual. b) ReferenceNet [16] is a trainable parallel UNet and feeds the semantic information into SD via concatenation of self-attention features. c) Dynamics-Adapter encodes the reference image with a partially shared-weight UNet. The appearance control is realized by learning a residual in the self-attention with trainable query and output linear layers. All other components share the same frozen weight with SD.
> </details>



![](https://arxiv.org/html/2501.10021/x4.png)

> 🔼 This figure shows a qualitative comparison of human image animation results in dynamic scenes.  It compares the output of the proposed X-Dyna method against several state-of-the-art (SOTA) techniques. The goal is to highlight X-Dyna's ability to generate realistic human and scene dynamics while maintaining the original image structure. The comparison demonstrates that unlike the existing methods, X-Dyna successfully generates consistent and lifelike interactions between the animated human and their environment.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative Comparison on Human in Dynamic Scene. While existing SOTA methods struggle to generate consistent and realistic scene dynamics involving humans, our method successfully produces dynamic human-scene interactions while preserving the structure of the reference image.
> </details>



![](https://arxiv.org/html/2501.10021/x5.png)

> 🔼 This figure compares the results of different human image animation methods on pose and facial expression control.  Each method is tested using the same reference image and pose skeleton.  Zoomed-in views of the face are included for detailed comparison. The results show that the proposed method (X-Dyna) most accurately matches the ground truth and best preserves the identity of the subject.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative Comparison on Poses and Face Expressions Control. We show each method on test cases using the same reference image and pose skeleton. For improved visualization, a zoomed-in view of the face area is also provided. Our method produces results that most closely match the ground truth and best preserve face identity.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.13.11">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.13.11.12.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.13.11.12.1.1" rowspan="2"><span class="ltx_text" id="S4.T2.13.11.12.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="8" id="S4.T2.13.11.12.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.13.11.12.1.2.1">Foreground</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T2.13.11.12.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.13.11.12.1.3.1">Background</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.12.10.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.1.1.1">
<span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.1">L1</span> <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.3.1.1.1.m1.1"><semantics id="S4.T2.3.1.1.1.m1.1a"><mo id="S4.T2.3.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.3.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.1.1.1.m1.1b"><ci id="S4.T2.3.1.1.1.m1.1.1.cmml" xref="S4.T2.3.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.4.2.2.2">
<span class="ltx_text ltx_font_bold" id="S4.T2.4.2.2.2.1">PSNR</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.4.2.2.2.m1.1"><semantics id="S4.T2.4.2.2.2.m1.1a"><mo id="S4.T2.4.2.2.2.m1.1.1" stretchy="false" xref="S4.T2.4.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.2.2.2.m1.1b"><ci id="S4.T2.4.2.2.2.m1.1.1.cmml" xref="S4.T2.4.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.5.3.3.3">
<span class="ltx_text ltx_font_bold" id="S4.T2.5.3.3.3.1">LPIPS</span> <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.5.3.3.3.m1.1"><semantics id="S4.T2.5.3.3.3.m1.1a"><mo id="S4.T2.5.3.3.3.m1.1.1" stretchy="false" xref="S4.T2.5.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.3.3.3.m1.1b"><ci id="S4.T2.5.3.3.3.m1.1.1.cmml" xref="S4.T2.5.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.6.4.4.4">
<span class="ltx_text ltx_font_bold" id="S4.T2.6.4.4.4.1">SSIM</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.6.4.4.4.m1.1"><semantics id="S4.T2.6.4.4.4.m1.1a"><mo id="S4.T2.6.4.4.4.m1.1.1" stretchy="false" xref="S4.T2.6.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.6.4.4.4.m1.1b"><ci id="S4.T2.6.4.4.4.m1.1.1.cmml" xref="S4.T2.6.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.7.5.5.5">
<span class="ltx_text ltx_font_bold" id="S4.T2.7.5.5.5.1">Face-Cos</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.7.5.5.5.m1.1"><semantics id="S4.T2.7.5.5.5.m1.1a"><mo id="S4.T2.7.5.5.5.m1.1.1" stretchy="false" xref="S4.T2.7.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.7.5.5.5.m1.1b"><ci id="S4.T2.7.5.5.5.m1.1.1.cmml" xref="S4.T2.7.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.8.6.6.6">
<span class="ltx_text ltx_font_bold" id="S4.T2.8.6.6.6.1">Face-Det</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.8.6.6.6.m1.1"><semantics id="S4.T2.8.6.6.6.m1.1a"><mo id="S4.T2.8.6.6.6.m1.1.1" stretchy="false" xref="S4.T2.8.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.8.6.6.6.m1.1b"><ci id="S4.T2.8.6.6.6.m1.1.1.cmml" xref="S4.T2.8.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.6.6.6.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.9.7.7.7">
<span class="ltx_text ltx_font_bold" id="S4.T2.9.7.7.7.1">FID</span>  <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.9.7.7.7.m1.1"><semantics id="S4.T2.9.7.7.7.m1.1a"><mo id="S4.T2.9.7.7.7.m1.1.1" stretchy="false" xref="S4.T2.9.7.7.7.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.9.7.7.7.m1.1b"><ci id="S4.T2.9.7.7.7.m1.1.1.cmml" xref="S4.T2.9.7.7.7.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.7.7.7.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.7.7.7.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.10.8.8.8">
<span class="ltx_text ltx_font_bold" id="S4.T2.10.8.8.8.1">cd-FVD</span>  <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.10.8.8.8.m1.1"><semantics id="S4.T2.10.8.8.8.m1.1a"><mo id="S4.T2.10.8.8.8.m1.1.1" stretchy="false" xref="S4.T2.10.8.8.8.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.10.8.8.8.m1.1b"><ci id="S4.T2.10.8.8.8.m1.1.1.cmml" xref="S4.T2.10.8.8.8.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.8.8.8.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.8.8.8.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.11.9.9.9">
<span class="ltx_text ltx_font_bold" id="S4.T2.11.9.9.9.1">FID</span> <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.11.9.9.9.m1.1"><semantics id="S4.T2.11.9.9.9.m1.1a"><mo id="S4.T2.11.9.9.9.m1.1.1" stretchy="false" xref="S4.T2.11.9.9.9.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.11.9.9.9.m1.1b"><ci id="S4.T2.11.9.9.9.m1.1.1.cmml" xref="S4.T2.11.9.9.9.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.11.9.9.9.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.11.9.9.9.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.12.10.10.10">
<span class="ltx_text ltx_font_bold" id="S4.T2.12.10.10.10.1">cd-FVD</span>  <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.12.10.10.10.m1.1"><semantics id="S4.T2.12.10.10.10.m1.1a"><mo id="S4.T2.12.10.10.10.m1.1.1" stretchy="false" xref="S4.T2.12.10.10.10.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.12.10.10.10.m1.1b"><ci id="S4.T2.12.10.10.10.m1.1.1.cmml" xref="S4.T2.12.10.10.10.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.12.10.10.10.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.12.10.10.10.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.13.11.13.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.13.11.13.1.1">MagicAnimate <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2501.10021v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.11.13.1.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.13.11.13.1.2.1">7.42e-05</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.11.13.1.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.13.11.13.1.3.1">17.143</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.11.13.1.4"><span class="ltx_text ltx_font_bold" id="S4.T2.13.11.13.1.4.1">0.228</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.11.13.1.5"><span class="ltx_text ltx_font_bold" id="S4.T2.13.11.13.1.5.1">0.739</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.11.13.1.6">0.297</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.11.13.1.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.13.11.13.1.7.1">92.1%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.11.13.1.8">31.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.11.13.1.9">237.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.11.13.1.10">38.86</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.11.13.1.11"><span class="ltx_text ltx_font_bold" id="S4.T2.13.11.13.1.11.1">176.17</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.13.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.13.11.11.1">Animate-Anyone<sup class="ltx_sup" id="S4.T2.13.11.11.1.1">∗</sup> <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2501.10021v1#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">16</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.13.11.11.2">11.8e-05</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.11.11.3">13.411</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.11.11.4">0.338</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.11.11.5">0.605</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.11.11.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.13.11.11.6.1">0.402</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.11.11.7">89.0%</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.11.11.8">33.75</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.11.11.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.13.11.11.9.1">233.39</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.11.11.10">34.27</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.11.11.11">203.59</td>
</tr>
<tr class="ltx_tr" id="S4.T2.13.11.14.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.13.11.14.2.1">MagicPose <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2501.10021v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.13.11.14.2.2">13.7e-05</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.11.14.2.3">12.639</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.11.14.2.4">0.345</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.11.14.2.5">0.618</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.11.14.2.6">0.396</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.11.14.2.7">85.5%</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.11.14.2.8"><span class="ltx_text ltx_font_bold" id="S4.T2.13.11.14.2.8.1">18.52</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.11.14.2.9">537.96</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.11.14.2.10"><span class="ltx_text ltx_font_bold" id="S4.T2.13.11.14.2.10.1">24.43</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.11.14.2.11">480.14</td>
</tr>
<tr class="ltx_tr" id="S4.T2.13.11.15.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.13.11.15.3.1">MimicMotion <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2501.10021v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.13.11.15.3.2">9.78e-05</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.11.15.3.3">14.903</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.11.15.3.4">0.278</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.11.15.3.5">0.647</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.11.15.3.6">0.193</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.11.15.3.7">92.0%</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.11.15.3.8">45.67</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.11.15.3.9"><span class="ltx_text ltx_font_bold" id="S4.T2.13.11.15.3.9.1">150.01</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.11.15.3.10">60.32</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.11.15.3.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.13.11.15.3.11.1">194.17</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.13.11.16.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T2.13.11.16.4.1">X-Dyna</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.13.11.16.4.2"><span class="ltx_text ltx_font_bold" id="S4.T2.13.11.16.4.2.1">7.15e-05</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.13.11.16.4.3"><span class="ltx_text ltx_font_bold" id="S4.T2.13.11.16.4.3.1">17.201</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.13.11.16.4.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.13.11.16.4.4.1">0.249</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.13.11.16.4.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.13.11.16.4.5.1">0.724</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.13.11.16.4.6"><span class="ltx_text ltx_font_bold" id="S4.T2.13.11.16.4.6.1">0.497</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.13.11.16.4.7"><span class="ltx_text ltx_font_bold" id="S4.T2.13.11.16.4.7.1">94.8%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.13.11.16.4.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.13.11.16.4.8.1">22.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.13.11.16.4.9">325.35</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.13.11.16.4.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.13.11.16.4.10.1">25.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.13.11.16.4.11">281.78</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table quantitatively compares the performance of X-Dyna against other state-of-the-art (SOTA) methods in human video animation.  It uses several metrics to assess quality: L1 loss (lower is better, indicating less error), PSNR (higher is better, measuring peak signal-to-noise ratio), LPIPS (lower is better, representing perceptual similarity), SSIM (higher is better, indicating structural similarity), Face-Cosine Similarity (higher is better, showing how well face identity is preserved), and the percentage of frames where a face is successfully detected (Face-Det, higher is better).  It also includes FID and cd-FVD scores (lower is better), evaluating the quality of generated videos overall.  The asterisk (*) indicates that results for one method were obtained using an unofficial implementation because the original code wasn't publicly available.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative comparisons of X-Dyna with the recent SOTA methods on human video animation. A downward-pointing arrow indicates that lower values are better and vise versa. Face-Cos represents the cosine similarity of the extracted feature by AdaFace [21] of face area between generation and ground truth image. Face-Det denotes the percentage rate of detected valid faces among all frames. ∗ denotes the method is not open-sourced; hence, we used the unofficial implementation from [29] to run their method for inference.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.8.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.8.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.8.1.1.1.1">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.8.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.8.1.1.1.2.1">FG-Dyn</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.8.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.8.1.1.1.3.1">BG-Dyn</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.8.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.8.1.1.1.4.1">ID</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.8.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T3.8.1.1.1.5.1">Overall</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.8.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.8.1.2.1.1">MagicAnimate <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.10021v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.1.2.1.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.8.1.2.1.2.1">2.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.1.2.1.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.8.1.2.1.3.1">2.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.1.2.1.4">3.45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.1.2.1.5">2.86</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.8.1.3.2.1">Animate-Anyone <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.10021v1#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">16</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.8.1.3.2.2">2.21</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.1.3.2.3">2.57</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.1.3.2.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.8.1.3.2.4.1">3.89</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.1.3.2.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.8.1.3.2.5.1">2.89</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.8.1.4.3.1">MagicPose <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.10021v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.8.1.4.3.2">2.23</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.1.4.3.3">2.18</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.1.4.3.4">3.85</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.1.4.3.5">2.75</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.8.1.5.4.1">MimicMotion <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.10021v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.8.1.5.4.2">2.02</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.1.5.4.3">2.63</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.1.5.4.4">2.79</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.1.5.4.5">2.48</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.8.1.6.5.1">X-Dyna</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.8.1.6.5.2"><span class="ltx_text ltx_font_bold" id="S4.T3.8.1.6.5.2.1">3.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.8.1.6.5.3"><span class="ltx_text ltx_font_bold" id="S4.T3.8.1.6.5.3.1">4.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.8.1.6.5.4"><span class="ltx_text ltx_font_bold" id="S4.T3.8.1.6.5.4.1">4.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.8.1.6.5.5"><span class="ltx_text ltx_font_bold" id="S4.T3.8.1.6.5.5.1">4.09</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This user study evaluates X-Dyna's performance in generating high-quality human video animations by collecting ratings from 100 participants on 50 different video clips. Each participant provided scores (0-5) assessing three aspects of the generated videos: Foreground Dynamics (how well the model animates the foreground human), Background Dynamics (how well it animates the background elements), and Identity Preservation (how well the model maintains the identity of the reference image). The results provide insights into X-Dyna's capability in various aspects of video animation.
> <details>
> <summary>read the caption</summary>
> Table 3: User study of X-Dyna. We collect the ratings (0-5) from 100 participants for 50 test cases in the test set. We ask them to rate the generation in terms of Foreground Dynamics (FG-Dyn), Background Dynamics (BG-Dyn) and Identity Preserving (ID).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.4.4.4.5">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.1">FG-DTFVD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.2.2.2">
<span class="ltx_text ltx_font_bold" id="S4.T4.2.2.2.2.1">BG-DTFVD</span> <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.2.m1.1a"><mo id="S4.T4.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T4.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.2.m1.1b"><ci id="S4.T4.2.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.3.3.3.3">
<span class="ltx_text ltx_font_bold" id="S4.T4.3.3.3.3.1">DTFVD</span> <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.3.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.3.m1.1a"><mo id="S4.T4.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T4.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.3.m1.1b"><ci id="S4.T4.3.3.3.3.m1.1.1.cmml" xref="S4.T4.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.4.4.4.4">
<span class="ltx_text ltx_font_bold" id="S4.T4.4.4.4.4.1">Face-Cos</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.4.4.4.4.m1.1"><semantics id="S4.T4.4.4.4.4.m1.1a"><mo id="S4.T4.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T4.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.4.m1.1b"><ci id="S4.T4.4.4.4.4.m1.1.1.cmml" xref="S4.T4.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.4.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.4.4.5.1.1">w/RefNet</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.5.1.2">2.137</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.5.1.3">2.694</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.5.1.4">2.823</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.5.1.5">0.466</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.4.4.6.2.1">w/IP-A</th>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.6.2.2">3.738</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.6.2.3">4.702</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.6.2.4">4.851</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.6.2.5">0.292</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.4.4.7.3.1">w/lmk</th>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.7.3.2">0.914</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.7.3.3">1.125</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.7.3.4">1.589</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.7.3.5">0.406</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.4.4.8.4.1">wo/face</th>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.8.4.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.4.4.8.4.2.1">0.912</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.8.4.3"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.8.4.3.1">1.098</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.8.4.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.4.4.8.4.4.1">1.550</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.8.4.5">0.442</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.9.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.4.4.9.5.1">wo/fusion</th>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.9.5.2">1.301</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.9.5.3">1.467</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.9.5.4">1.652</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.9.5.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.4.4.9.5.5.1">0.495</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.10.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T4.4.4.10.6.1">X-Dyna</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.4.10.6.2"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.10.6.2.1">0.900</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.4.10.6.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.4.4.10.6.3.1">1.101</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.4.10.6.4"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.10.6.4.1">1.518</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.4.10.6.5"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.10.6.5.1">0.497</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study evaluating the impact of different components of the X-Dyna model on dynamics texture generation and facial expression control.  It compares the performance of the full X-Dyna model against variations where specific modules are removed or replaced.  Specifically, it shows results with and without the Dynamics-Adapter, using alternative reference modules (ReferenceNet, IP-Adapter), with and without the S-Face ControlNet (which handles facial expressions using local face control rather than landmarks), and with and without Harmonic Data Fusion Training (which mixes data from human videos and natural scenes).  The metrics used likely assess the quality of generated video dynamics and perhaps facial realism.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation Analysis of X-Dyna on dynamics texture generation and local facial expressions generation. w/RefNet denotes Dynamics-Adapter is replaced by a ReferenceNet. w/IP-A denotes Dynamics-Adapter is replaced by an IP-Adapter. w/lmk denotes S-Face ControlNet is not used for fine-tuning and face landmarks are used together with the pose skeleton. wo/face denotes S-Face ControlNet is not used for fine-tuning. wo/fusion denotes Harmonic Data Fusion Training is not used for disentangled animation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S7.T5.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S7.T5.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S7.T5.3.3.3.4"><span class="ltx_text" id="S7.T5.3.3.3.4.1" style="font-size:144%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S7.T5.1.1.1.1">
<span class="ltx_text ltx_font_bold" id="S7.T5.1.1.1.1.1" style="font-size:144%;">DTFVD</span><span class="ltx_text" id="S7.T5.1.1.1.1.2" style="font-size:144%;"> </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S7.T5.1.1.1.1.m1.1"><semantics id="S7.T5.1.1.1.1.m1.1a"><mo id="S7.T5.1.1.1.1.m1.1.1" mathsize="144%" stretchy="false" xref="S7.T5.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S7.T5.1.1.1.1.m1.1b"><ci id="S7.T5.1.1.1.1.m1.1.1.cmml" xref="S7.T5.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T5.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S7.T5.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S7.T5.2.2.2.2">
<span class="ltx_text ltx_font_bold" id="S7.T5.2.2.2.2.1" style="font-size:144%;">FID</span><span class="ltx_text" id="S7.T5.2.2.2.2.2" style="font-size:144%;"> </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S7.T5.2.2.2.2.m1.1"><semantics id="S7.T5.2.2.2.2.m1.1a"><mo id="S7.T5.2.2.2.2.m1.1.1" mathsize="144%" stretchy="false" xref="S7.T5.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S7.T5.2.2.2.2.m1.1b"><ci id="S7.T5.2.2.2.2.m1.1.1.cmml" xref="S7.T5.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T5.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S7.T5.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S7.T5.3.3.3.3">
<span class="ltx_text ltx_font_bold" id="S7.T5.3.3.3.3.1" style="font-size:144%;">Face-Exp</span><span class="ltx_text" id="S7.T5.3.3.3.3.2" style="font-size:144%;"> </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S7.T5.3.3.3.3.m1.1"><semantics id="S7.T5.3.3.3.3.m1.1a"><mo id="S7.T5.3.3.3.3.m1.1.1" mathsize="144%" stretchy="false" xref="S7.T5.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S7.T5.3.3.3.3.m1.1b"><ci id="S7.T5.3.3.3.3.m1.1.1.cmml" xref="S7.T5.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T5.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S7.T5.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S7.T5.3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S7.T5.3.3.4.1.1">
<span class="ltx_text" id="S7.T5.3.3.4.1.1.1" style="font-size:144%;">MagicAnimate </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S7.T5.3.3.4.1.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.10021v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a><span class="ltx_text" id="S7.T5.3.3.4.1.1.3.2" style="font-size:144%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T5.3.3.4.1.2"><span class="ltx_text" id="S7.T5.3.3.4.1.2.1" style="font-size:144%;">6.708</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T5.3.3.4.1.3"><span class="ltx_text" id="S7.T5.3.3.4.1.3.1" style="font-size:144%;">250.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T5.3.3.4.1.4"><span class="ltx_text" id="S7.T5.3.3.4.1.4.1" style="font-size:144%;">0.134</span></td>
</tr>
<tr class="ltx_tr" id="S7.T5.3.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S7.T5.3.3.5.2.1">
<span class="ltx_text" id="S7.T5.3.3.5.2.1.1" style="font-size:144%;">Animate-Anyone </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S7.T5.3.3.5.2.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.10021v1#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">16</span></a><span class="ltx_text" id="S7.T5.3.3.5.2.1.3.2" style="font-size:144%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S7.T5.3.3.5.2.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S7.T5.3.3.5.2.2.1" style="font-size:144%;">6.820</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.3.3.5.2.3"><span class="ltx_text" id="S7.T5.3.3.5.2.3.1" style="font-size:144%;">253.29</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.3.3.5.2.4"><span class="ltx_text" id="S7.T5.3.3.5.2.4.1" style="font-size:144%;">0.123</span></td>
</tr>
<tr class="ltx_tr" id="S7.T5.3.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S7.T5.3.3.6.3.1">
<span class="ltx_text" id="S7.T5.3.3.6.3.1.1" style="font-size:144%;">MagicPose </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S7.T5.3.3.6.3.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.10021v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a><span class="ltx_text" id="S7.T5.3.3.6.3.1.3.2" style="font-size:144%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S7.T5.3.3.6.3.2"><span class="ltx_text" id="S7.T5.3.3.6.3.2.1" style="font-size:144%;">7.062</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.3.3.6.3.3"><span class="ltx_text ltx_font_bold" id="S7.T5.3.3.6.3.3.1" style="font-size:144%;">244.25</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.3.3.6.3.4"><span class="ltx_text" id="S7.T5.3.3.6.3.4.1" style="font-size:144%;">0.121</span></td>
</tr>
<tr class="ltx_tr" id="S7.T5.3.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S7.T5.3.3.7.4.1">
<span class="ltx_text" id="S7.T5.3.3.7.4.1.1" style="font-size:144%;">MimicMotion </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S7.T5.3.3.7.4.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.10021v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a><span class="ltx_text" id="S7.T5.3.3.7.4.1.3.2" style="font-size:144%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S7.T5.3.3.7.4.2"><span class="ltx_text" id="S7.T5.3.3.7.4.2.1" style="font-size:144%;">6.823</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.3.3.7.4.3"><span class="ltx_text" id="S7.T5.3.3.7.4.3.1" style="font-size:144%;">258.91</span></td>
<td class="ltx_td ltx_align_center" id="S7.T5.3.3.7.4.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S7.T5.3.3.7.4.4.1" style="font-size:144%;">0.109</span></td>
</tr>
<tr class="ltx_tr" id="S7.T5.3.3.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S7.T5.3.3.8.5.1"><span class="ltx_text" id="S7.T5.3.3.8.5.1.1" style="font-size:144%;">X-Dyna</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T5.3.3.8.5.2"><span class="ltx_text ltx_font_bold" id="S7.T5.3.3.8.5.2.1" style="font-size:144%;">5.923</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T5.3.3.8.5.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S7.T5.3.3.8.5.3.1" style="font-size:144%;">246.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T5.3.3.8.5.4"><span class="ltx_text ltx_font_bold" id="S7.T5.3.3.8.5.4.1" style="font-size:144%;">0.105</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents a quantitative comparison of X-Dyna's performance against state-of-the-art (SOTA) methods in cross-driving human animation.  Lower values indicate better performance for all metrics.  The table uses DTFVD (Dynamic Texture Frechet Video Distance) and FID (Frechet Inception Distance) to assess the overall quality of the generated videos. Face-Exp represents the absolute error between facial expressions in the generated and driving videos. This table provides a numerical comparison of the different methods' performance across these key metrics.
> <details>
> <summary>read the caption</summary>
> Table 5: Quantitative comparisons of X-Dyna with recent state-of-the-art (SOTA) methods on cross-driving human animation. A downward-pointing arrow indicates that lower values are better. DTFVD and FID are used to evaluate the overall quality of generated videos. Face-Exp denotes the absolute error of facial expressions between generated videos and driving videos.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S8.T6.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S8.T6.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S8.T6.2.1.1.1"><span class="ltx_text" id="S8.T6.2.1.1.1.1" style="font-size:144%;">Metric</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S8.T6.2.1.1.2"><span class="ltx_text ltx_font_bold" id="S8.T6.2.1.1.2.1" style="font-size:144%;">F-statistic</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S8.T6.2.1.1.3"><span class="ltx_text ltx_font_bold" id="S8.T6.2.1.1.3.1" style="font-size:144%;">p-value</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S8.T6.2.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S8.T6.2.2.1.1"><span class="ltx_text" id="S8.T6.2.2.1.1.1" style="font-size:144%;">FG-Dyn</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T6.2.2.1.2"><span class="ltx_text" id="S8.T6.2.2.1.2.1" style="font-size:144%;">7.495</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T6.2.2.1.3"><span class="ltx_text" id="S8.T6.2.2.1.3.1" style="font-size:144%;">0.000007</span></td>
</tr>
<tr class="ltx_tr" id="S8.T6.2.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T6.2.3.2.1"><span class="ltx_text" id="S8.T6.2.3.2.1.1" style="font-size:144%;">BG-Dyn</span></th>
<td class="ltx_td ltx_align_center" id="S8.T6.2.3.2.2"><span class="ltx_text" id="S8.T6.2.3.2.2.1" style="font-size:144%;">5.327</span></td>
<td class="ltx_td ltx_align_center" id="S8.T6.2.3.2.3"><span class="ltx_text" id="S8.T6.2.3.2.3.1" style="font-size:144%;">0.000331</span></td>
</tr>
<tr class="ltx_tr" id="S8.T6.2.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T6.2.4.3.1"><span class="ltx_text" id="S8.T6.2.4.3.1.1" style="font-size:144%;">ID</span></th>
<td class="ltx_td ltx_align_center" id="S8.T6.2.4.3.2"><span class="ltx_text" id="S8.T6.2.4.3.2.1" style="font-size:144%;">4.685</span></td>
<td class="ltx_td ltx_align_center" id="S8.T6.2.4.3.3"><span class="ltx_text" id="S8.T6.2.4.3.3.1" style="font-size:144%;">0.001016</span></td>
</tr>
<tr class="ltx_tr" id="S8.T6.2.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S8.T6.2.5.4.1"><span class="ltx_text" id="S8.T6.2.5.4.1.1" style="font-size:144%;">Overall</span></th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S8.T6.2.5.4.2"><span class="ltx_text" id="S8.T6.2.5.4.2.1" style="font-size:144%;">5.617</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S8.T6.2.5.4.3"><span class="ltx_text" id="S8.T6.2.5.4.3.1" style="font-size:144%;">0.000199</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a one-way analysis of variance (ANOVA) test performed on user ratings from a user study. The study evaluated three criteria: Foreground Dynamics (FG-Dyn), Background Dynamics (BG-Dyn), and Identity Preservation (ID), along with an overall score.  The ANOVA test determines if there are statistically significant differences in the ratings across different methods. The F-statistic indicates the strength of these differences, and the p-value shows if these differences are statistically significant (p≤0.05 indicates significance).
> <details>
> <summary>read the caption</summary>
> Table 6: ANOVA Test Results for Ratings from the User Study.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.10021/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10021/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10021/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10021/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10021/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10021/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10021/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10021/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10021/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10021/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10021/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10021/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10021/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10021/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}