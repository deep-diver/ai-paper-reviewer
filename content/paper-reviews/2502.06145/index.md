---
title: "Animate Anyone 2: High-Fidelity Character Image Animation with Environment Affordance"
summary: "Animate Anyone 2 creates high-fidelity character animations by incorporating environmental context, resulting in seamless character-environment integration and more realistic object interactions."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Tongyi Lab, Alibaba Group",]
showSummary: true
date: 2025-02-10
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.06145 {{< /keyword >}}
{{< keyword icon="writer" >}} Li Hu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-13 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.06145" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.06145" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.06145/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current character animation methods often fail to create realistic interactions between animated characters and their surroundings. This is mainly due to the fact that existing methods primarily focus on motion signals extracted from separate videos, ignoring the spatial and interactive relationships between characters and their environments. This limitation results in animations that lack authenticity and fail to represent the complexities of real-world human-object interactions. 



To overcome these limitations, Animate Anyone 2 is proposed.  It captures environmental representations from the source video, along with motion and object interaction signals.  A shape-agnostic mask strategy improves the boundary representation between characters and the environment. Object interaction fidelity is increased by injecting object features, and a pose modulation strategy enhances the ability to handle diverse motion patterns. The results significantly outperform state-of-the-art methods, demonstrating improvements in animation quality, realism and handling complex interactions, thereby addressing the issues of previous methods.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Animate Anyone 2 surpasses existing methods by integrating environmental context into character image animation, resulting in more realistic and believable animations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The novel shape-agnostic mask strategy and object injection technique significantly improve the quality and fidelity of the generated animations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Depth-wise pose modulation enhances the model's ability to handle diverse and complex character motions. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it **significantly advances the field of character image animation** by addressing the limitation of existing methods that struggle to realistically integrate characters within their environments.  The **introduction of environment affordance** allows for more natural and believable animations, opening new avenues for research in areas like virtual reality, filmmaking, and advertising.  The novel techniques presented, such as **shape-agnostic masking and object injection**, offer valuable tools for researchers working on similar problems, and the superior performance demonstrated on various benchmarks makes this work a significant contribution. The **depth-wise pose modulation** improves handling diverse motions. 

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.4.4.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">SSIM <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">PSNR <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T1.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.3.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">LPIPS <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T1.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.4.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">FVD <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.4.m1.1a"><mo id="S4.T1.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T1.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.4.m1.1b"><ci id="S4.T1.4.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.4.4.5.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.5.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">MRAA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06145v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.5.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.672</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.5.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">29.39</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.5.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.672</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.4.4.5.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">284.82</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.6.2">
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.6.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">DisCo <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06145v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.6.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.668</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.6.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">29.03</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.6.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.292</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.4.4.6.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">292.80</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.7.3">
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.7.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">MagicAnimate <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06145v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.7.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.714</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.7.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">29.16</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.7.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.239</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.4.4.7.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">179.07</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.8.4">
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.8.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">Animate Anyone <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06145v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.8.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.718</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.8.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">29.56</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.8.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.285</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.4.4.8.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">171.90</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.9.5">
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.9.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">Champ* <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06145v1#bib.bib60" title=""><span class="ltx_text" style="font-size:90%;">60</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.9.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.802</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.9.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">29.91</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.9.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.234</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.4.4.9.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">160.82</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.10.6">
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.10.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">UniAnimate* <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06145v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.10.6.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.811</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.10.6.3" style="padding-left:4.0pt;padding-right:4.0pt;">30.77</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.10.6.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.231</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.4.4.10.6.5" style="padding-left:4.0pt;padding-right:4.0pt;">148.06</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.11.7">
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.11.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">Ours</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.11.7.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.778</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.11.7.3" style="padding-left:4.0pt;padding-right:4.0pt;">29.82</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.11.7.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.248</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.4.4.11.7.5" style="padding-left:4.0pt;padding-right:4.0pt;">158.97</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.12.8">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.4.12.8.1" style="padding-left:4.0pt;padding-right:4.0pt;">Ours*</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.4.12.8.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.12.8.2.1">0.812</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.4.12.8.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.12.8.3.1">30.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.4.12.8.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.12.8.4.1">0.223</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.4.4.12.8.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.12.8.5.1">144.65</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of different methods for character image animation on the TikTok benchmark dataset.  The metrics used are SSIM (structural similarity index), PSNR (peak signal-to-noise ratio), LPIPS (learned perceptual image patch similarity), and FVD (Fréchet Video Distance).  Higher SSIM and PSNR values indicate better image quality, while lower LPIPS and FVD values represent better perceptual similarity and temporal consistency, respectively. The asterisk (*) next to some method names indicates that those methods utilized additional video data during pre-training.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparison on Tiktok benchmark. * means utilizing other video data for pretraining.
> </details>





### In-depth insights


#### Env Affordance Anim
The concept of "Env Affordance Anim" suggests a novel approach to character animation that emphasizes the **interaction between animated characters and their environment**.  Instead of treating the environment as a static backdrop, this method would aim to model how the environment's properties (affordances) influence character movement, behavior, and interactions. This involves **dynamically generating animations** where the character's actions are responsive to the possibilities and limitations presented by the surrounding scene. Key advantages would likely be more realistic and engaging animations, with characters exhibiting natural behaviors like navigating obstacles, using tools, or interacting with other objects appropriately. This also implies a more **complex model that accounts for physics and interactions**, going beyond simply overlaying animation onto a background.  **Challenges** may include the computational cost of handling dynamic interactions, accurate modeling of diverse environments, and creating robust algorithms that can generalize to unseen scenarios. Ultimately, this approach could lead to significantly more natural and believable animated characters within rich virtual worlds.

#### Shape-Agnostic Masks
The concept of "Shape-Agnostic Masks" in character animation is a significant advancement.  It directly addresses the limitations of previous methods that relied on precise character masks. **Traditional methods suffered from shape leakage and artifacts, especially when dealing with diverse character shapes and clothing styles in unseen data**.  By intentionally disrupting the direct correspondence between the mask boundary and character outlines during training, a shape-agnostic approach allows the model to learn more robustly and generalize better to novel characters.  **This strategy focuses on learning the contextual relationship between the character and its environment, rather than memorizing specific shapes.**  The use of a shape-agnostic mask promotes character-environment coherence without enforcing strict boundary constraints. This approach is particularly valuable in real-world scenarios involving diverse and complex interactions between characters and their surroundings, significantly improving the fidelity and naturalism of the resulting animations.  The technique's success hinges on the ability to learn the contextual information effectively, which is achieved by forcing the model to focus on environmental context rather than relying on precise shape matching during both training and inference.**

#### Object Injection
The concept of 'Object Injection' in the context of image animation is crucial for achieving high-fidelity results.  It addresses the shortcoming of existing methods, which often fail to accurately represent the interaction between animated characters and environmental objects. **Object Injection focuses on precisely integrating object features into the animation process,** ensuring that these features seamlessly blend with the character's movements and the surrounding environment. This is achieved by first using an object guider to detect and extract relevant object features from the input video, and then merging these features into the animation generation process using a spatial blending mechanism. **This spatial blending is key, allowing for the subtle and realistic interplay of character and object.**  The method effectively preserves intricate interaction dynamics, resulting in a far more natural and believable animation.  The use of a lightweight object guider is especially insightful as it avoids adding significant computational overhead to the already complex animation process.  **It allows for flexible handling of both simple and complex object interactions,** making the animation process more scalable and versatile.  Furthermore, the focus on injection of multi-scale features enhances the fine details of the interactions, preventing visual artifacts and enhancing the overall fidelity of the animation.  **This is a significant advancement, moving beyond simply placing objects in the scene to dynamically and realistically modeling their interaction with the animated character.**

#### Pose Modulation
The concept of 'Pose Modulation' in the context of character animation is crucial for achieving natural and believable movement.  The authors recognize the limitations of existing methods, which often rely on simplistic skeleton representations, lacking detailed inter-limb relationships and hierarchical dependencies.  **Their proposed 'Depth-wise Pose Modulation' elegantly addresses this by incorporating structured depth information alongside skeleton signals.**  This addition provides richer contextual understanding, allowing the model to better capture the intricate spatial dynamics and interactions between body parts. This approach also enhances robustness by mitigating the impact of errors commonly found in pose estimation from real-world videos. The integration of depth data improves the model's ability to handle diverse and complex poses, resulting in smoother, more realistic character animations.  The use of Conv3D for temporal motion modeling further refines the animation, ensuring consistency and preventing errors from propagating across frames. **This strategy is vital for generating high-fidelity results, demonstrating a significant improvement over previous approaches.**  Overall, the innovation lies in moving beyond simple skeleton-based representations to incorporate richer depth information, yielding more natural and sophisticated character movements.

#### Anim 2 Limitations
Animate Anyone 2 (Anim2), while a significant advancement in character image animation, exhibits limitations.  **The model struggles with complex hand-object interactions**, particularly when objects occupy small pixel regions, potentially introducing visual artifacts.  **Shape discrepancies between the source and target characters** can also lead to deformation artifacts in the generated animation, highlighting a need for improved robustness in handling diverse character morphologies.  **The performance is also impacted by the accuracy of object segmentation**, relying heavily on the quality of the input masks.  In scenarios with intricate human-object interactions, the model may fail to completely capture the detailed interactions, producing unnatural or incomplete representations.  Finally, the method's reliance on self-supervised training and the generation of composite background/character images could potentially lead to biases and limitations in its generalization capabilities when encountering novel scenarios or variations outside its training dataset.  **Addressing these limitations through improved robustness to shape variations, enhanced processing of fine-grained object detail, and exploration of alternative training strategies** would further enhance Anim2's overall performance and applicability.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.4.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">SSIM <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">PSNR <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.3.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">LPIPS <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.3.m1.1a"><mo id="S4.T2.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.m1.1b"><ci id="S4.T2.3.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">FVD <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.4.m1.1"><semantics id="S4.T2.4.4.4.4.m1.1a"><mo id="S4.T2.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T2.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.4.m1.1b"><ci id="S4.T2.4.4.4.4.m1.1.1.cmml" xref="S4.T2.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.4.4.5.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.5.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Animate Anyone<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06145v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.5.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.761</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.5.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">28.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.5.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.324</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.4.4.5.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">228.53</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.6.2">
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.6.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">Champ<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06145v1#bib.bib60" title=""><span class="ltx_text" style="font-size:90%;">60</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.6.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.771</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.6.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">28.69</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.6.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.294</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.4.4.6.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">205.79</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.7.3">
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.7.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">MimicMotion<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.06145v1#bib.bib56" title=""><span class="ltx_text" style="font-size:90%;">56</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.7.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.767</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.7.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">28.52</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.7.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.307</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.4.4.7.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">212.48</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.8.4">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.4.8.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.4.8.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.8.4.2.1">0.809</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.4.8.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.8.4.3.1">29.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.4.8.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.8.4.4.1">0.259</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.4.4.8.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.8.4.5.1">172.54</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a quantitative comparison of different character animation methods on a new dataset created by the authors.  The dataset is designed to evaluate performance across a wider range of scenarios and motion complexity than existing benchmarks. The metrics used include SSIM, PSNR, LPIPS, and FVD, measuring image quality and video consistency. The results show that the proposed 'Animate Anyone 2' method significantly outperforms other leading approaches in all metrics, highlighting its robustness and superior performance in more generalized animation tasks.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative comparison on our dataset. Our approach demonstrates superior performance across generalized scenarios.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.4.4.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">SSIM <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">PSNR <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">LPIPS <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T3.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.4.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">FVD <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.4.m1.1"><semantics id="S4.T3.4.4.4.4.m1.1a"><mo id="S4.T3.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T3.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.4.m1.1b"><ci id="S4.T3.4.4.4.4.m1.1.1.cmml" xref="S4.T3.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.4.4.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T3.4.4.5.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Baseline</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.5.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.785</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.5.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">28.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.5.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.291</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.4.4.5.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">195.45</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.6.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T3.4.4.6.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">Ours</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.4.6.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.6.2.2.1">0.794</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.4.6.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.6.2.3.1">28.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.4.6.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.6.2.4.1">0.276</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T3.4.4.6.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.6.2.5.1">186.17</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the proposed Animate Anyone 2 model against a baseline method for character-environment integration. The baseline method creates a pseudo integration by directly compositing character animation results onto the original video background using image inpainting.  The comparison uses the metrics SSIM (Structural Similarity Index), PSNR (Peak Signal-to-Noise Ratio), LPIPS (Learned Perceptual Image Patch Similarity), and FVD (Fréchet Video Distance) to evaluate the quality of the character animation and its integration with the environment.  Higher values for SSIM and PSNR and lower values for LPIPS and FVD indicate better quality and more seamless integration.
> <details>
> <summary>read the caption</summary>
> Table 3: Quantitative comparison with baseline on our dataset. Baseline refers to the pseudo character-environment integration.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.4.4.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">SSIM <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">PSNR <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.2.m1.1a"><mo id="S4.T4.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T4.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.2.m1.1b"><ci id="S4.T4.2.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.3.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">LPIPS <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.3.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.3.m1.1a"><mo id="S4.T4.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T4.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.3.m1.1b"><ci id="S4.T4.3.3.3.3.m1.1.1.cmml" xref="S4.T4.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.4.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">FVD <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.4.4.4.4.m1.1"><semantics id="S4.T4.4.4.4.4.m1.1a"><mo id="S4.T4.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T4.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.4.m1.1b"><ci id="S4.T4.4.4.4.4.m1.1.1.cmml" xref="S4.T4.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.4.4.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T4.4.4.5.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">w/o Spatial Blending</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.5.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.789</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.5.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">28.74</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.5.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.283</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.4.4.5.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">191.23</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.6.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.4.4.6.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">w/o Pose Modulation</th>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.6.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.769</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.6.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">28.56</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.6.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.301</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.4.4.6.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">211.15</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.7.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T4.4.4.7.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">Ours</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.4.7.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.7.3.2.1">0.794</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.4.7.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.7.3.3.1">28.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.4.7.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.7.3.4.1">0.276</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T4.4.4.7.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.7.3.5.1">186.17</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study evaluating the impact of different components of the proposed Animate Anyone 2 model.  It shows how the model's performance (measured by SSIM, PSNR, LPIPS, and FVD) changes when key components such as spatial blending, pose modulation, and environment formulation are removed. This helps to understand the contribution of each component to the overall performance of the model.
> <details>
> <summary>read the caption</summary>
> Table 4: Quantitative ablation study.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.06145/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06145/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06145/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06145/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06145/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06145/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06145/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06145/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06145/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06145/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06145/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}