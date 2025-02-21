---
title: "Dynamic Concepts Personalization from Single Videos"
summary: "Personalizing video models for dynamic concepts is now achievable with Set-and-Sequence: enabling high-fidelity generation, editing, and composition!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 SNAP RESEARCH",]
showSummary: true
date: 2025-02-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.14844 {{< /keyword >}}
{{< keyword icon="writer" >}} Rameen Abdal et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.14844" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.14844" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.14844/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Personalizing video models to capture dynamic concepts has been a challenge because videos introduce a temporal dimension and concepts encompass both appearance and motion. Current methods fail to generalize across contexts or support meaningful composition. **The paper introduces Set-and-Sequence,** a framework for personalizing video models with dynamic concepts. It imposes a spatio-temporal weight space within Diffusion Transformers. 



Set-and-Sequence fine-tunes Low-Rank Adaptation layers using an unordered set of frames to learn an appearance identity, free from temporal interference. Then, it augments these coefficients with Motion Residuals, fine-tuning them on the full video sequence to capture motion dynamics. **This enables unprecedented editability and compositionality**, setting a new benchmark for personalizing dynamic concepts.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} The Set-and-Sequence framework enables learning and representing dynamic concepts by imposing a spatio-temporal weight space in video models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The two-stage approach (Identity Basis Learning and Motion Residual Encoding) effectively disentangles appearance and motion. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The framework achieves unprecedented editability and compositionality in personalized video generation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it **presents a novel approach to personalizing video generation models,** addressing limitations of current methods in capturing dynamic concepts. The Set-and-Sequence framework and the concept of spatiotemporal weight space pave the way for more realistic and controllable video editing and composition, **opening new research directions** in generative video modeling and content creation.

------
#### Visual Insights



![](https://arxiv.org/html/2502.14844/x1.png)

> 🔼 Figure 1 demonstrates the personalization of a video generation model to capture dynamic concepts. The left panel shows examples of dynamic concepts, such as ocean waves and a bonfire, which are defined by both their visual appearance and characteristic motion patterns.  The right panel illustrates the high-fidelity generation, editing, and composition capabilities enabled by this personalization. It shows how these dynamic elements can be seamlessly integrated into a single video, interacting naturally with each other.
> <details>
> <summary>read the caption</summary>
> Figure 1. We personalize a video model to capture dynamic concepts – entities defined not only by their appearance but also by their unique motion patterns, such as the fluid motion of ocean waves or the flickering dynamics of a bonfire (left). This enables high-fidelity generation, editing, and the composition of these dynamic elements into a single video, where they interact naturally (right).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T1.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T1.4.4.5"><span class="ltx_text ltx_font_bold" id="S5.T1.4.4.5.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.1">MSE <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.1.1.1.1.m1.1"><semantics id="S5.T1.1.1.1.1.m1.1a"><mo id="S5.T1.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.1.1.1.1.m1.1b"><ci id="S5.T1.1.1.1.1.m1.1.1.cmml" xref="S5.T1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.2.2.2"><span class="ltx_text ltx_font_bold" id="S5.T1.2.2.2.1">ID <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.2.2.2.1.m1.1"><semantics id="S5.T1.2.2.2.1.m1.1a"><mo id="S5.T1.2.2.2.1.m1.1.1" stretchy="false" xref="S5.T1.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.2.2.2.1.m1.1b"><ci id="S5.T1.2.2.2.1.m1.1.1.cmml" xref="S5.T1.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.3.3.3"><span class="ltx_text ltx_font_bold" id="S5.T1.3.3.3.1">C-T <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.3.3.3.1.m1.1"><semantics id="S5.T1.3.3.3.1.m1.1a"><mo id="S5.T1.3.3.3.1.m1.1.1" stretchy="false" xref="S5.T1.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.3.3.3.1.m1.1b"><ci id="S5.T1.3.3.3.1.m1.1.1.cmml" xref="S5.T1.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.4.4.4"><span class="ltx_text ltx_font_bold" id="S5.T1.4.4.4.1">TC <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.4.4.4.1.m1.1"><semantics id="S5.T1.4.4.4.1.m1.1a"><mo id="S5.T1.4.4.4.1.m1.1.1" stretchy="false" xref="S5.T1.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.4.4.4.1.m1.1b"><ci id="S5.T1.4.4.4.1.m1.1.1.cmml" xref="S5.T1.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.4.5.1.1">LoRA-1</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.5.1.2">0.0432</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.5.1.3">0.622</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.5.1.4">0.226</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.5.1.5"><span class="ltx_text ltx_font_bold" id="S5.T1.4.5.1.5.1">0.9974</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.4.6.2.1">LoRA-8</th>
<td class="ltx_td ltx_align_center" id="S5.T1.4.6.2.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.4.6.2.2.1">0.0223</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.6.2.3"><span class="ltx_text ltx_font_bold" id="S5.T1.4.6.2.3.1">0.703</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.6.2.4">0.224</td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.6.2.5">0.9969</td>
</tr>
<tr class="ltx_tr" id="S5.T1.4.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.4.7.3.1">+ Two-Stage</th>
<td class="ltx_td ltx_align_center" id="S5.T1.4.7.3.2">0.0461</td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.7.3.3">0.629</td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.7.3.4"><span class="ltx_text ltx_font_bold" id="S5.T1.4.7.3.4.1">0.250</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.7.3.5">0.9971</td>
</tr>
<tr class="ltx_tr" id="S5.T1.4.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T1.4.8.4.1">+ Reg</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.4.8.4.2"><span class="ltx_text ltx_font_bold" id="S5.T1.4.8.4.2.1">0.0221</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.4.8.4.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.4.8.4.3.1">0.680</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.4.8.4.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.4.8.4.4.1">0.239</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.4.8.4.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.4.8.4.5.1">0.9972</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents an ablation study comparing the performance of different baselines and the proposed method on a video editing task.  The metrics used to evaluate the models are Mean Squared Error (MSE) to measure reconstruction quality, Identity Preservation (ID) to assess how well the model maintains the identity of the subject, CLIP-Text similarity (C-T) to gauge the semantic alignment between the generated video and the input text prompt, and Temporal Coherency (TC) to evaluate the smoothness of motion in the video. The table shows that the proposed method achieves a better balance between the quality of the reconstruction and the ability to edit and adapt the video content, which is represented by the Identity and Temporal Coherency metrics. 
> <details>
> <summary>read the caption</summary>
> Table 1. Ablation of Baselines. Table evaluating Mean Square Error (MSE), Identity Preservation (ID), CLIP-T (C-T), and Temporal Coherency (TC) on the editing task. Our method demonstrates better reconstruction-edibility trade-off.
> </details>





### In-depth insights


#### Dynamic Motion LoRA
**Dynamic Motion LoRA** could refer to a Low-Rank Adaptation (LoRA) technique specifically designed to capture and manipulate the dynamic aspects of motion within videos. This may involve training separate LoRA modules to disentangle and control different motion styles or patterns. One could envision a framework where a base LoRA captures the static appearance, and then a series of motion-specific LoRAs additively layer on top, enabling fine-grained control over movement. Careful regularization and conditioning would be required to prevent motion artifacts and ensure temporal coherence. The effectiveness would likely hinge on the choice of architecture, loss functions, and the composition strategy of combining static and dynamic LoRAs.

#### Set-and-Sequence
The 'Set-and-Sequence' framework seems to tackle the challenge of **personalizing video generation models** to capture dynamic concepts, going beyond static image personalization. It likely involves a two-stage process. The 'Set' stage probably deals with **learning the appearance of the concept** from a collection of unordered frames, stripping out temporal information to get a clean representation. The 'Sequence' stage likely focuses on **embedding motion dynamics** by analyzing the full video sequence and refining the initial appearance representation, thus enabling edits and compositions while preserving the unique motion characteristics. This approach appears to address limitations in existing methods that struggle to disentangle appearance and motion, resulting in more robust and adaptable video personalization.

#### Motion Residuals
**Motion Residuals** are a crucial element in video personalization, enabling the capture of dynamic concepts. Unlike static images, videos contain motion, requiring models to understand how objects move and change over time. By learning motion residuals, models can effectively **disentangle appearance and motion**, allowing for independent manipulation and composition. This is achieved by freezing the identity LoRAs and then augmenting their coefficients with motion residuals, which are fine-tuned on the full video sequence. This approach allows the model to capture the nuances of motion dynamics, leading to more realistic and controllable video generation. Incorporating motion residuals is essential for advanced video editing and synthesis tasks.

#### DiT Spatio-Temp
**DiT (Diffusion Transformer) for Spatio-Temporal Data**: DiT's architecture handles video generation with high-quality. Unlike UNet, DiT processes spatial and temporal data, achieving high-fidelity video synthesis. It's absence of innate inductive biases presents challenges for dynamic concept embedding. The architecture's ability to effectively capture complex motions and interactions in videos remains a key area of research. Novel training frameworks are needed to capture both appearance and motion within a unified representation.

#### Video Personalization
Video personalization is a burgeoning field aimed at tailoring video content to individual user preferences. **Unlike static images, videos introduce the temporal dimension, posing unique challenges for personalization.** Existing methods often leverage UNet-based architectures, which may suffer from limitations in capturing complex motion dynamics. **Current approaches can be broadly categorized into stylization, motion transfer, and local editing.** While stylization focuses on altering the visual appearance, motion transfer emphasizes extracting and applying motion patterns from different videos. Local editing, on the other hand, targets specific parts of a single video for modification. The central challenge involves disentangling appearance and motion while ensuring temporal coherence and contextual realism. Future research could explore novel architectures and learning techniques to overcome these limitations and unlock new possibilities for personalized video experiences, especially in applications such as content creation, education, and entertainment. Also, it is important to note that **identity leakage** is one of the many challanges of personalizing the video content. 


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.14844/extracted/6219306/images/editing.jpg)

> 🔼 The Set-and-Sequence framework is a two-stage process for personalizing video generation models with dynamic concepts.  Stage 1, Identity Basis, focuses on appearance. It uses an unordered set of frames from the input video to train LoRA (Low-Rank Adaptation) layers. This training learns an 'identity LoRA basis' representing the appearance of the concept without temporal information. In Stage 2, Motion Residuals, the identity LoRAs are frozen.  The coefficients are augmented using additional LoRAs trained on the full temporal sequence of the video. This captures the motion dynamics. The final result is a spatio-temporal weight space that effectively integrates both appearance and motion into the model, allowing for high-fidelity generation and editing.
> <details>
> <summary>read the caption</summary>
> Figure 2. Set-and-Sequence framework operates in two stages: (i) Identity Basis: We train LoRA Set Encoding on a unordered set of frames extracted from the video, focusing only on the appearance of the dynamic concept to achieve high fidelity without temporal distractions. (ii) Motion Residuals: The Basis of the Identity LoRAs is frozen and the coefficient part is augmented with coefficients of LoRA Sequence Encoding trained on the temporal sequence of full video clip, allowing the model to capture the motion dynamics of the concept.
> </details>



![](https://arxiv.org/html/2502.14844/extracted/6219306/images/pixar.jpg)

> 🔼 This figure demonstrates the capabilities of the Set-and-Sequence framework for editing personalized videos.  The framework allows for both global edits (affecting the entire scene, such as changing the background or lighting) and local edits (focused changes, such as altering clothing or replacing an object).  Importantly, these edits are performed while maintaining the original appearance and motion characteristics of the dynamic concept, ensuring high-fidelity results. The images show several examples of these edits being applied, highlighting the flexibility and precision of the method.
> <details>
> <summary>read the caption</summary>
> Figure 3. Local and Global Editing. Our Set-and-Sequence framework enables text-driven edits of dynamic concepts while preserving both their appearance and motion. Edits can be global (e.g., background and lighting) or local (e.g., clothing and object replacement), ensuring high fidelity to the original dynamic concepts.
> </details>



![](https://arxiv.org/html/2502.14844/extracted/6219306/images/compose.jpg)

> 🔼 This figure demonstrates the stylization capabilities of the Set-and-Sequence framework. The top row showcases how merely adjusting the identity basis weights allows for stylizing the appearance of the dynamic concept (a person) without altering its motion. The bottom row shows the result of applying both stylization and motion editing to the same concept; this time, edits are text-driven, demonstrating how the framework facilitates precise control over both the appearance and motion of dynamic elements.
> <details>
> <summary>read the caption</summary>
> Figure 4. Stylization. Top: Stylization of dynamic concepts achieved by reweighting the identity basis. Bottom: Stylization and motion editing performed using prompt derived from the video in the top row.
> </details>



![](https://arxiv.org/html/2502.14844/extracted/6219306/images/compare.jpg)

> 🔼 This figure demonstrates the ability of the Set-and-Sequence framework to seamlessly integrate multiple dynamic concepts into a single video.  Each concept is color-coded for easy identification. The results showcase high-fidelity generation and editing capabilities, where different dynamic elements interact naturally. For a more complete view of these capabilities, please refer to the supplementary videos.
> <details>
> <summary>read the caption</summary>
> Figure 5. Dynamic Concepts Composition. Composition results achieved by our framework showcasing seamless integration of dynamic concepts. with each concept color-coded for clarity. For a more comprehensive demonstration, refer to the supplementary videos.
> </details>



![](https://arxiv.org/html/2502.14844/extracted/6219306/images/ablation.jpg)

> 🔼 This figure compares the performance of the proposed 'Set-and-Sequence' method against several baseline approaches on two video editing tasks.  The tasks involve modifying a video to (1) change the subject's background and shirt, and (2) add a glass to the scene. The baselines include NewMove, DreamVideo, DB-LoRA, and DreamMix. The comparison highlights the superior performance of the proposed method in adhering to the specified edits described in text prompts while maintaining the subject's identity and producing higher quality results than other methods.
> <details>
> <summary>read the caption</summary>
> Figure 6. Comparison with baselines. Comparison of our method with baseline approaches (NewMove (Materzyńska et al., 2024), DreamVideo (Wei et al., 2024), DB-LoRA (Ryu, 2023; Ruiz et al., 2023a), and DreamMix (Molad et al., 2023)) on two editing scenarios: changing the background and shirt, and adding a glass. Our method demonstrates superior adherence to the prompt while preserving the subject identity, outperforming the baselines.
> </details>



![](https://arxiv.org/html/2502.14844/extracted/6219306/images/stitch.jpg)

> 🔼 This ablation study analyzes the impact of different LoRA ranks and the two-stage training approach on video editing. Using the task of changing a shirt and background, it demonstrates that low-rank LoRAs (LoRA-1) cause underfitting, missing crucial details, while high-rank LoRAs (LoRA-8) lead to overfitting, reducing adaptability. The results highlight that the proposed two-stage approach with regularization provides the best balance, maintaining both high fidelity and the capacity for edits.
> <details>
> <summary>read the caption</summary>
> Figure 7. Ablation. Ablation of design choices on the editing task of adding a different shirt and background. Low-rank LoRA (LoRA-1) results in underfitting, failing to capture sufficient detail, while high-rank LoRA (LoRA-8) overfits, compromising adaptability. Our two-stage approach with added regularization achieves a balanced trade-off, preserving both fidelity and editability.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T2.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T2.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T2.4.4.5"><span class="ltx_text ltx_font_bold" id="S5.T2.4.4.5.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.1">MSE <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.1.1.1.1.m1.1"><semantics id="S5.T2.1.1.1.1.m1.1a"><mo id="S5.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T2.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.1.1.1.1.m1.1b"><ci id="S5.T2.1.1.1.1.m1.1.1.cmml" xref="S5.T2.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.2.2.2"><span class="ltx_text ltx_font_bold" id="S5.T2.2.2.2.1">ID <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.2.2.2.1.m1.1"><semantics id="S5.T2.2.2.2.1.m1.1a"><mo id="S5.T2.2.2.2.1.m1.1.1" stretchy="false" xref="S5.T2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.2.2.2.1.m1.1b"><ci id="S5.T2.2.2.2.1.m1.1.1.cmml" xref="S5.T2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.3.3.3"><span class="ltx_text ltx_font_bold" id="S5.T2.3.3.3.1">C-T <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.3.3.3.1.m1.1"><semantics id="S5.T2.3.3.3.1.m1.1a"><mo id="S5.T2.3.3.3.1.m1.1.1" stretchy="false" xref="S5.T2.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.3.3.3.1.m1.1b"><ci id="S5.T2.3.3.3.1.m1.1.1.cmml" xref="S5.T2.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.4.4.4"><span class="ltx_text ltx_font_bold" id="S5.T2.4.4.4.1">TC <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.4.4.4.1.m1.1"><semantics id="S5.T2.4.4.4.1.m1.1a"><mo id="S5.T2.4.4.4.1.m1.1.1" stretchy="false" xref="S5.T2.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.4.4.4.1.m1.1b"><ci id="S5.T2.4.4.4.1.m1.1.1.cmml" xref="S5.T2.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.4.5.1.1">Tex-Inv</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.4.5.1.2">0.0714</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.4.5.1.3">0.145</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.4.5.1.4">0.201</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.4.5.1.5">0.9927</td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.4.6.2.1">DB-LoRA</th>
<td class="ltx_td ltx_align_center" id="S5.T2.4.6.2.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.4.6.2.2.1">0.0223</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.6.2.3"><span class="ltx_text ltx_font_bold" id="S5.T2.4.6.2.3.1">0.703</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.6.2.4">0.224</td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.6.2.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.4.6.2.5.1">0.9969</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.4.7.3.1">NewMove</th>
<td class="ltx_td ltx_align_center" id="S5.T2.4.7.3.2">0.2223</td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.7.3.3">0.270</td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.7.3.4">0.204</td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.7.3.5">0.9914</td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.4.8.4.1">DreamVideo</th>
<td class="ltx_td ltx_align_center" id="S5.T2.4.8.4.2">0.2021</td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.8.4.3">0.118</td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.8.4.4">0.218</td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.8.4.5">0.9657</td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.9.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.4.9.5.1">DreamMix</th>
<td class="ltx_td ltx_align_center" id="S5.T2.4.9.5.2">0.0429</td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.9.5.3">0.579</td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.9.5.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.4.9.5.4.1">0.226</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.9.5.5">0.9965</td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.10.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T2.4.10.6.1">Ours</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.4.10.6.2"><span class="ltx_text ltx_font_bold" id="S5.T2.4.10.6.2.1">0.0221</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.4.10.6.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.4.10.6.3.1">0.680</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.4.10.6.4"><span class="ltx_text ltx_font_bold" id="S5.T2.4.10.6.4.1">0.239</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.4.10.6.5"><span class="ltx_text ltx_font_bold" id="S5.T2.4.10.6.5.1">0.9972</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different methods for video editing, focusing on the trade-off between reconstruction quality and the ability to edit videos successfully.  It evaluates four metrics: Mean Square Error (MSE) to assess reconstruction quality, Identity Preservation (ID) to measure how well the identity of subjects is maintained after editing, CLIP-T (C-T) to evaluate the semantic alignment between the generated video and the input text prompt, and Temporal Coherency (TC) to assess the smoothness of motion and transitions. The results show that the proposed 'Our method' outperforms other methods by achieving a better balance between high reconstruction quality and effective editing capabilities.
> <details>
> <summary>read the caption</summary>
> Table 2. Editing Task Evaluation. Table evaluating Mean Square Error (MSE), Identity Preservation (ID), CLIP-T (C-T), and Temporal Coherency (TC) on the editing task. Our method achieves a superior reconstruction-editability trade-off compared to the competing approaches.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.1.2.1">IP</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.1.3.1">MP</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.1.4.1">AP</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.1.5.1">OP</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.3.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.3.2.1.1">Ours <span class="ltx_text ltx_font_italic" id="S5.T3.3.2.1.1.1">vs</span> DreamMix</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.2.1.2">87%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.2.1.3">88%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.2.1.4">98%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.2.1.5">100%</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.3.2">
<td class="ltx_td ltx_align_left" id="S5.T3.3.3.2.1">Ours <span class="ltx_text ltx_font_italic" id="S5.T3.3.3.2.1.1">vs</span> LoRA-1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.2.2">99%</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.2.3">95%</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.2.4">94%</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.2.5">100%</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.4.3">
<td class="ltx_td ltx_align_left" id="S5.T3.3.4.3.1">Ours <span class="ltx_text ltx_font_italic" id="S5.T3.3.4.3.1.1">vs</span> LoRA-8 (DB-LoRA)</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.4.3.2">78%</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.4.3.3">75%</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.4.3.4">98%</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.4.3.5">98%</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.5.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T3.3.5.4.1">Ours <span class="ltx_text ltx_font_italic" id="S5.T3.3.5.4.1.1">vs</span> Two-Stage</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.3.5.4.2">86%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.3.5.4.3">97%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.3.5.4.4">76%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.3.5.4.5">90%</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a user study comparing different video editing methods.  Ten participants evaluated each method based on four criteria: Identity Preservation (how well the method maintained the original identity of the subject in the video), Motion Preservation (how well the method maintained the original motion of the subject), Adherence to Prompt (how well the generated video matched the user's specified edits), and Overall Preference (participants' overall ranking of each method). The results are shown as percentages, indicating the proportion of participants who preferred a given method for each criterion.
> <details>
> <summary>read the caption</summary>
> Table 3. User Study. User study results comparing methods on Identity Preservation (ID), Motion Preservation (MP), Adherence to Prompt (AP), and Overall Preference of the edits (OP). Preference is computed in percentages.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S8.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S8.T4.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S8.T4.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S8.T4.1.2.1.1.1">Autoencoder</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S8.T4.1.2.1.2"><span class="ltx_text ltx_font_bold" id="S8.T4.1.2.1.2.1">MAGVIT</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S8.T4.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S8.T4.1.3.1.1">Base channels</th>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S8.T4.1.3.1.2">16</td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T4.1.4.2.1">Channel multiplier</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S8.T4.1.4.2.2">[1, 4, 16, 32, 64]</td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T4.1.5.3.1">Encoder blocks count</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S8.T4.1.5.3.2">[1, 1, 2, 8, 8]</td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T4.1.6.4.1">Decoder blocks count</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S8.T4.1.6.4.2">[4, 4, 4, 4, 4]</td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T4.1.7.5.1">Stride of frame</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S8.T4.1.7.5.2">[1, 2, 2, 2, 1]</td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T4.1.8.6.1">Stride of h and w</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S8.T4.1.8.6.2">[2, 2, 2, 2, 1]</td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T4.1.9.7.1">Padding mode</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S8.T4.1.9.7.2">replicate</td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T4.1.1.2">Compression rate</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S8.T4.1.1.1"><math alttext="8\times 16\times 16" class="ltx_Math" display="inline" id="S8.T4.1.1.1.m1.1"><semantics id="S8.T4.1.1.1.m1.1a"><mrow id="S8.T4.1.1.1.m1.1.1" xref="S8.T4.1.1.1.m1.1.1.cmml"><mn id="S8.T4.1.1.1.m1.1.1.2" xref="S8.T4.1.1.1.m1.1.1.2.cmml">8</mn><mo id="S8.T4.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S8.T4.1.1.1.m1.1.1.1.cmml">×</mo><mn id="S8.T4.1.1.1.m1.1.1.3" xref="S8.T4.1.1.1.m1.1.1.3.cmml">16</mn><mo id="S8.T4.1.1.1.m1.1.1.1a" lspace="0.222em" rspace="0.222em" xref="S8.T4.1.1.1.m1.1.1.1.cmml">×</mo><mn id="S8.T4.1.1.1.m1.1.1.4" xref="S8.T4.1.1.1.m1.1.1.4.cmml">16</mn></mrow><annotation-xml encoding="MathML-Content" id="S8.T4.1.1.1.m1.1b"><apply id="S8.T4.1.1.1.m1.1.1.cmml" xref="S8.T4.1.1.1.m1.1.1"><times id="S8.T4.1.1.1.m1.1.1.1.cmml" xref="S8.T4.1.1.1.m1.1.1.1"></times><cn id="S8.T4.1.1.1.m1.1.1.2.cmml" type="integer" xref="S8.T4.1.1.1.m1.1.1.2">8</cn><cn id="S8.T4.1.1.1.m1.1.1.3.cmml" type="integer" xref="S8.T4.1.1.1.m1.1.1.3">16</cn><cn id="S8.T4.1.1.1.m1.1.1.4.cmml" type="integer" xref="S8.T4.1.1.1.m1.1.1.4">16</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S8.T4.1.1.1.m1.1c">8\times 16\times 16</annotation><annotation encoding="application/x-llamapun" id="S8.T4.1.1.1.m1.1d">8 × 16 × 16</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.10.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T4.1.10.8.1">Bottleneck channels</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S8.T4.1.10.8.2">32</td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.11.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T4.1.11.9.1">Use KL divergence</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S8.T4.1.11.9.2">✓</td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.12.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S8.T4.1.12.10.1">Use adaptive norm</th>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_bb" id="S8.T4.1.12.10.2">✓(decoder only)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the architecture and hyperparameters of the autoencoder and MAGVIT model used in the paper.  It specifies parameters such as base channels, channel multiplier, the number of encoder and decoder blocks, stride of frames and spatial dimensions, padding mode, compression rate, bottleneck channels, and whether KL divergence or adaptive normalization were used.  This information is crucial for understanding the model's ability to compress video data into a lower-dimensional latent space, which is important for efficient processing by the diffusion model.
> <details>
> <summary>read the caption</summary>
> Table 4. Autoencoder and MAGVIT specifications.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S8.T5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S8.T5.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S8.T5.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S8.T5.1.2.1.1.1">Backbone</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S8.T5.1.2.1.2"><span class="ltx_text ltx_font_bold" id="S8.T5.1.2.1.2.1">DiT</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S8.T5.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S8.T5.1.3.1.1">Input channels</th>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S8.T5.1.3.1.2">32</td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T5.1.1.2">Patch size</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S8.T5.1.1.1"><math alttext="1\times 2\times 2" class="ltx_Math" display="inline" id="S8.T5.1.1.1.m1.1"><semantics id="S8.T5.1.1.1.m1.1a"><mrow id="S8.T5.1.1.1.m1.1.1" xref="S8.T5.1.1.1.m1.1.1.cmml"><mn id="S8.T5.1.1.1.m1.1.1.2" xref="S8.T5.1.1.1.m1.1.1.2.cmml">1</mn><mo id="S8.T5.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S8.T5.1.1.1.m1.1.1.1.cmml">×</mo><mn id="S8.T5.1.1.1.m1.1.1.3" xref="S8.T5.1.1.1.m1.1.1.3.cmml">2</mn><mo id="S8.T5.1.1.1.m1.1.1.1a" lspace="0.222em" rspace="0.222em" xref="S8.T5.1.1.1.m1.1.1.1.cmml">×</mo><mn id="S8.T5.1.1.1.m1.1.1.4" xref="S8.T5.1.1.1.m1.1.1.4.cmml">2</mn></mrow><annotation-xml encoding="MathML-Content" id="S8.T5.1.1.1.m1.1b"><apply id="S8.T5.1.1.1.m1.1.1.cmml" xref="S8.T5.1.1.1.m1.1.1"><times id="S8.T5.1.1.1.m1.1.1.1.cmml" xref="S8.T5.1.1.1.m1.1.1.1"></times><cn id="S8.T5.1.1.1.m1.1.1.2.cmml" type="integer" xref="S8.T5.1.1.1.m1.1.1.2">1</cn><cn id="S8.T5.1.1.1.m1.1.1.3.cmml" type="integer" xref="S8.T5.1.1.1.m1.1.1.3">2</cn><cn id="S8.T5.1.1.1.m1.1.1.4.cmml" type="integer" xref="S8.T5.1.1.1.m1.1.1.4">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S8.T5.1.1.1.m1.1c">1\times 2\times 2</annotation><annotation encoding="application/x-llamapun" id="S8.T5.1.1.1.m1.1d">1 × 2 × 2</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T5.1.4.2.1">Latent token channels</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S8.T5.1.4.2.2">4096</td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T5.1.5.3.1">Positional embeddings</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S8.T5.1.5.3.2">3D-RoPE</td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T5.1.6.4.1">DiT blocks count</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S8.T5.1.6.4.2">32</td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T5.1.7.5.1">Attention heads count</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S8.T5.1.7.5.2">32</td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T5.1.8.6.1">Window size</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S8.T5.1.8.6.2">6144 (center)</td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T5.1.9.7.1">Normalization</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S8.T5.1.9.7.2">Layer normalization</td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.10.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T5.1.10.8.1">Use flash attention</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S8.T5.1.10.8.2">✓</td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.11.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T5.1.11.9.1">Use QK-normalization</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S8.T5.1.11.9.2">✓</td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.12.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T5.1.12.10.1">Use self conditioning</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S8.T5.1.12.10.2">✓</td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.13.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T5.1.13.11.1">Self conditioning prob.</th>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S8.T5.1.13.11.2">0.9</td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.14.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S8.T5.1.14.12.1">Context channels</th>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_bb" id="S8.T5.1.14.12.2">1024</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the architecture of the DiT (Diffusion Transformer) model used as the backbone for video generation in the paper. It lists specifications for various components including input channels, patch size, latent token channels, positional embeddings, the number of DiT blocks, attention heads, window size, normalization techniques used, flash attention, QK-normalization, self-conditioning probability, and the number of context channels.
> <details>
> <summary>read the caption</summary>
> Table 5. Backbone and DiT specifications.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S8.T6.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S8.T6.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S8.T6.1.2.1.1">Optimizer</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S8.T6.1.2.1.2">AdamW</th>
</tr>
<tr class="ltx_tr" id="S8.T6.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S8.T6.1.1.2">Learning rate</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S8.T6.1.1.1"><math alttext="1\times 10^{-4}" class="ltx_Math" display="inline" id="S8.T6.1.1.1.m1.1"><semantics id="S8.T6.1.1.1.m1.1a"><mrow id="S8.T6.1.1.1.m1.1.1" xref="S8.T6.1.1.1.m1.1.1.cmml"><mn id="S8.T6.1.1.1.m1.1.1.2" xref="S8.T6.1.1.1.m1.1.1.2.cmml">1</mn><mo id="S8.T6.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S8.T6.1.1.1.m1.1.1.1.cmml">×</mo><msup id="S8.T6.1.1.1.m1.1.1.3" xref="S8.T6.1.1.1.m1.1.1.3.cmml"><mn id="S8.T6.1.1.1.m1.1.1.3.2" xref="S8.T6.1.1.1.m1.1.1.3.2.cmml">10</mn><mrow id="S8.T6.1.1.1.m1.1.1.3.3" xref="S8.T6.1.1.1.m1.1.1.3.3.cmml"><mo id="S8.T6.1.1.1.m1.1.1.3.3a" xref="S8.T6.1.1.1.m1.1.1.3.3.cmml">−</mo><mn id="S8.T6.1.1.1.m1.1.1.3.3.2" xref="S8.T6.1.1.1.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S8.T6.1.1.1.m1.1b"><apply id="S8.T6.1.1.1.m1.1.1.cmml" xref="S8.T6.1.1.1.m1.1.1"><times id="S8.T6.1.1.1.m1.1.1.1.cmml" xref="S8.T6.1.1.1.m1.1.1.1"></times><cn id="S8.T6.1.1.1.m1.1.1.2.cmml" type="integer" xref="S8.T6.1.1.1.m1.1.1.2">1</cn><apply id="S8.T6.1.1.1.m1.1.1.3.cmml" xref="S8.T6.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S8.T6.1.1.1.m1.1.1.3.1.cmml" xref="S8.T6.1.1.1.m1.1.1.3">superscript</csymbol><cn id="S8.T6.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="S8.T6.1.1.1.m1.1.1.3.2">10</cn><apply id="S8.T6.1.1.1.m1.1.1.3.3.cmml" xref="S8.T6.1.1.1.m1.1.1.3.3"><minus id="S8.T6.1.1.1.m1.1.1.3.3.1.cmml" xref="S8.T6.1.1.1.m1.1.1.3.3"></minus><cn id="S8.T6.1.1.1.m1.1.1.3.3.2.cmml" type="integer" xref="S8.T6.1.1.1.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S8.T6.1.1.1.m1.1c">1\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="S8.T6.1.1.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S8.T6.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T6.1.3.1.1">LR scheduler</th>
<td class="ltx_td ltx_align_center" id="S8.T6.1.3.1.2">constant</td>
</tr>
<tr class="ltx_tr" id="S8.T6.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T6.1.4.2.1">Beta</th>
<td class="ltx_td ltx_align_center" id="S8.T6.1.4.2.2">[0.9, 0.99]</td>
</tr>
<tr class="ltx_tr" id="S8.T6.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T6.1.5.3.1">Weight decay</th>
<td class="ltx_td ltx_align_center" id="S8.T6.1.5.3.2">0.01</td>
</tr>
<tr class="ltx_tr" id="S8.T6.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T6.1.6.4.1">Gradient clipping</th>
<td class="ltx_td ltx_align_center" id="S8.T6.1.6.4.2">0.05</td>
</tr>
<tr class="ltx_tr" id="S8.T6.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T6.1.7.5.1">Dropout (Stage I)</th>
<td class="ltx_td ltx_align_center" id="S8.T6.1.7.5.2">0.8</td>
</tr>
<tr class="ltx_tr" id="S8.T6.1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S8.T6.1.8.6.1">Dropout (Stage II)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S8.T6.1.8.6.2">0.5</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 6 details the hyperparameters and settings used during the training process of the Set-and-Sequence model. It provides a comprehensive overview of the optimization strategy employed for both stages of training, including the optimizer used, learning rate schedule, beta parameters, weight decay, gradient clipping, and dropout rates.  This information is crucial for understanding the model's training process and the choices made to achieve optimal performance.
> <details>
> <summary>read the caption</summary>
> Table 6. Training stages and optimization settings.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.14844/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14844/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14844/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14844/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14844/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14844/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14844/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14844/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14844/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14844/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}