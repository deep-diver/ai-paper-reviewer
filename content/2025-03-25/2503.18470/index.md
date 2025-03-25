---
title: "MetaSpatial: Reinforcing 3D Spatial Reasoning in VLMs for the Metaverse"
summary: "MetaSpatial: RL for 3D Spatial Reasoning in VLMs"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Northwestern University",]
showSummary: true
date: 2025-03-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.18470 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhenyu Pan et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.18470" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.18470" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.18470/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current Vision-Language Models(VLMs) struggle with 3D spatial reasoning, hindering their ability to generate realistic and coherent 3D scenes for applications like metaverse. Supervised fine-tuning(SFT) is limited as there is no single correct layout and existing methods often require extensive post-processing to ensure physical plausibility, coherence and structural consistency. Therefore, there is a need to enhance VLM with 3D spatial reasoning for real-time 3D scene generation, eliminating hard-coded optimization.



To address these issues, MetaSpatial, a reinforcement learning(RL) framework, enhances 3D spatial reasoning in VLMs. This approach involves a multi-turn RL-based optimization mechanism integrating physics-aware constraints and rendered image evaluations. It introduces an adaptive, iterative reasoning process, enabling VLMs to refine spatial arrangements over multiple turns by analyzing rendered outputs, ensuring generated 3D layouts are coherent, physically plausible, and aesthetically consistent.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} RL can enhance VLMs for 3D spatial reasoning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A multi-turn refinement strategy improves layout quality. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A novel reward mechanism guides RL training. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **a novel RL approach to enhance 3D spatial reasoning in VLMs,** a critical area for metaverse, AR/VR, and digital twin development. It offers practical solutions to overcome the limitations of current VLM technologies and sets new directions for future research in AI-driven 3D content creation, offering generalizable methods for creating intelligent systems.

------
#### Visual Insights



![](https://arxiv.org/html/2503.18470/extracted/6304738/framework.png)

> 🔼 MetaSpatial is a reinforcement learning framework that enhances 3D spatial reasoning in vision-language models (VLMs).  The figure illustrates its process: given a room image, user preferences, and object information, the VLM generates a JSON layout with precise (x,y,z) coordinates and a reasoning trace explaining its decisions. This layout is then evaluated by three reward signals: Format Detection (correct JSON structure), Physical Detection (physical plausibility, no collisions), and Rendering-based Evaluation (aesthetic quality, judged by a language model).  The RL algorithm uses multiple multi-turn refinement trajectories (iterative improvements to the layout), optimized with Group Relative Policy Optimization (GRPO) to learn better spatial reasoning from various outcomes.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of MetaSpatial framework. Given room images, user preferences, and object status, the model generates a JSON-formatted object layout with precise (x, y, z) coordinates and a reasoning process. It evaluates the layout using three reward signals: Format Detection, Physical Detection, and Rendering-based Evaluation. The RL updates are based on multiple multi-turn refinement trajectories, optimizing a grouped policy via Group Relative Policy Optimization (GRPO) to enable the VLM to learn deeper spatial reasoning from diverse refinement outcomes.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T1.4.4.5"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.5.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1">Format <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.2.2.2">GPT-4o Score <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.m1.1a"><mo id="S3.T1.2.2.2.m1.1.1" stretchy="false" xref="S3.T1.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.m1.1b"><ci id="S3.T1.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.3.3.3">Collision <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.3.3.3.m1.1"><semantics id="S3.T1.3.3.3.m1.1a"><mo id="S3.T1.3.3.3.m1.1.1" stretchy="false" xref="S3.T1.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.m1.1b"><ci id="S3.T1.3.3.3.m1.1.1.cmml" xref="S3.T1.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.4.4.4">Constraint <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.4.4.4.m1.1"><semantics id="S3.T1.4.4.4.m1.1a"><mo id="S3.T1.4.4.4.m1.1.1" stretchy="false" xref="S3.T1.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.m1.1b"><ci id="S3.T1.4.4.4.m1.1.1.cmml" xref="S3.T1.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.4.4.6">Overall</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.4.5.1.1">Qwen 3B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.5.1.2">0.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.5.1.3">0.03</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.5.1.4">79.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.5.1.5">100%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.5.1.6">-0.27</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.4.6.2.1">Qwen 3B + MetaSpatial</th>
<td class="ltx_td ltx_align_center" id="S3.T1.4.6.2.2">0.49</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.6.2.3">0.18</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.6.2.4">68.5%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.6.2.5">100%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.6.2.6">-0.09</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.4.7.3.1">Qwen 7B</th>
<td class="ltx_td ltx_align_center" id="S3.T1.4.7.3.2">0.85</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.7.3.3">0.35</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.7.3.4">38.2%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.7.3.5">95.5%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.7.3.6"><span class="ltx_text ltx_font_bold" id="S3.T1.4.7.3.6.1">0.51</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T1.4.8.4.1">Qwen 7B + MetaSpatial</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.4.8.4.2"><span class="ltx_text ltx_font_bold" id="S3.T1.4.8.4.2.1">0.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.4.8.4.3"><span class="ltx_text ltx_font_bold" id="S3.T1.4.8.4.3.1">0.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.4.8.4.4"><span class="ltx_text ltx_font_bold" id="S3.T1.4.8.4.4.1">13.7%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.4.8.4.5"><span class="ltx_text ltx_font_bold" id="S3.T1.4.8.4.5.1">76.2%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.4.8.4.6"><span class="ltx_text ltx_font_bold" id="S3.T1.4.8.4.6.1">0.89</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of vision-language models (VLMs) with and without reinforcement learning (RL) enabled by the proposed MetaSpatial framework.  It shows consistent improvements across three key metrics when RL is applied: formatting accuracy (how well the generated layout adheres to the expected JSON format), physical feasibility (how often generated object placements are physically plausible, without collisions or impossible placements), and perceptual scene quality (as assessed by a GPT-40 language model evaluating the realism and overall aesthetic quality of the rendered 3D scene).  The results highlight the benefits of using RL to enhance 3D scene generation in VLMs.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison across models with and without RL. RL leads to consistent improvements in formatting accuracy, physical feasibility, and perceptual scene quality.
> </details>





### In-depth insights


#### RL 4 3D Layout
**Reinforcement Learning (RL) offers a compelling paradigm for 3D layout tasks, addressing limitations of supervised learning.** Unlike fixed datasets, RL enables dynamic adaptation to varying spatial constraints and design goals. This is especially relevant in 3D layout, where numerous valid configurations exist for a given scene. **RL facilitates learning from interactive feedback, optimizing for physical plausibility and aesthetic coherence.** By defining appropriate reward functions (e.g., collision avoidance, user preference alignment), an agent can iteratively refine object placements, achieving realistic and functional layouts. The exploration inherent in RL can also lead to novel and creative arrangements beyond those present in training data. **However, designing effective reward functions is crucial**; they must be carefully crafted to guide the agent towards desired outcomes without over-constraining the solution space. Challenges include balancing competing objectives (e.g., realism vs. aesthetics) and ensuring efficient exploration to avoid local optima. Despite these challenges, RL holds significant promise for automated 3D layout generation, especially when integrated with other techniques like generative models or constraint programming to enhance its capabilities and improve solution quality.

#### MetaSpatial VLM
The concept of "MetaSpatial VLM" suggests a novel approach to integrating spatial reasoning capabilities within Vision-Language Models, potentially revolutionizing how VLMs interact with and understand 3D environments. **The "MetaSpatial" aspect likely refers to imbuing the VLM with an awareness of spatial relationships, object arrangements, and physical constraints inherent in real-world or simulated 3D spaces.** This could involve new architectures, training methodologies, or data representations that allow the VLM to process and generate information grounded in a 3D context. A key challenge lies in effectively encoding and representing spatial information in a way that VLMs can readily learn and utilize. This may also involve using reinforcement learning to guide spatial layout refinement. The ultimate goal would be to enable VLMs to generate realistic and coherent 3D scenes from textual descriptions or visual cues, paving the way for advancements in metaverse creation, AR/VR applications, and robotics. **Enhancements in spatial understanding, including physical plausibility and coherence, mark a significant step forward.

#### GRPO Refinement
The paper introduces Group Relative Policy Optimization (GRPO) as a crucial element for training VLMs in 3D spatial reasoning, addressing the limitations of traditional methods. **GRPO optimizes spatial understanding by leveraging grouped refinement trajectories and relative reward comparisons.** This eliminates the need for ground truth labels, relying on constraint-driven and evaluative feedback, fostering adaptable spatial reasoning. **Key benefits include encouraging high-quality layouts in early refinement steps, eliminating the need for ground truth labels**, and facilitating stable, group-wise updates, enhancing generalization. **GRPO is designed to promote diverse exploration** of the state space, leading to more robust and generalizable policies, making the training process more efficient.

#### Adaptive Spatial
While the exact phrase "Adaptive Spatial" isn't present, the research points towards that direction. The core of the idea would revolve around creating systems that can dynamically adjust their understanding and manipulation of space. This might involve adapting to different scales, recognizing objects under varying conditions, and maintaining spatial consistency even with noisy or incomplete data. **Adaptive spatial reasoning** would require robust perception, allowing models to interpret visual inputs from different viewpoints and lighting conditions. Furthermore, it needs sophisticated memory to track objects and their relationships over time. **The system should be able to handle uncertainty**, updating its spatial understanding as new information becomes available. This adaptability will be crucial for deploying these models in real-world scenarios, where the environment is constantly changing and the unexpected is common. Crucially, adaptation isn't just about correcting errors but about proactively refining spatial understanding based on prior experience, creating a positive feedback loop that enhances performance over time. The ultimate goal would be to create AI agents that can interact with the physical world in a safe, reliable, and intelligent manner.

#### Towards AR/VR
The paper's exploration of reinforcement learning (RL) to enhance 3D spatial reasoning in VLMs has significant implications for AR/VR applications. **MetaSpatial's ability to generate coherent and physically plausible 3D scenes in real-time** addresses a key challenge in creating immersive AR/VR experiences. By internalizing spatial constraints through RL, the system reduces the reliance on manual design or extensive post-processing, making it more scalable for dynamic virtual environments. **The multi-turn refinement strategy** allows for iterative improvements in scene quality, crucial for AR/VR where user interaction demands responsive and realistic environments. **The focus on perceptual coherence and alignment with user preferences** ensures that generated scenes are aesthetically pleasing and functional, contributing to user engagement and usability. Furthermore, the research suggests a move towards more interactive and adaptive AR/VR systems that respond dynamically to user input and changing environmental conditions. This will be crucial in creating highly responsive and personalized experiences.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T2.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T2.4.4.5"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.5.1">Reward Setting</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1">Format <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.m1.1a"><mo id="S3.T2.1.1.1.m1.1.1" stretchy="false" xref="S3.T2.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.m1.1b"><ci id="S3.T2.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.2.2.2">GPT-4o Score <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.2.2.2.m1.1"><semantics id="S3.T2.2.2.2.m1.1a"><mo id="S3.T2.2.2.2.m1.1.1" stretchy="false" xref="S3.T2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.m1.1b"><ci id="S3.T2.2.2.2.m1.1.1.cmml" xref="S3.T2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.3.3.3">Collision <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.3.3.3.m1.1"><semantics id="S3.T2.3.3.3.m1.1a"><mo id="S3.T2.3.3.3.m1.1.1" stretchy="false" xref="S3.T2.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.3.m1.1b"><ci id="S3.T2.3.3.3.m1.1.1.cmml" xref="S3.T2.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.4.4.4">Constraint <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.4.4.4.m1.1"><semantics id="S3.T2.4.4.4.m1.1a"><mo id="S3.T2.4.4.4.m1.1.1" stretchy="false" xref="S3.T2.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.4.4.4.m1.1b"><ci id="S3.T2.4.4.4.m1.1.1.cmml" xref="S3.T2.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.7.8.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.7.8.1.1">Full Reward (Ours)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.8.1.2"><span class="ltx_text ltx_font_bold" id="S3.T2.7.8.1.2.1">0.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.8.1.3"><span class="ltx_text ltx_font_bold" id="S3.T2.7.8.1.3.1">0.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.8.1.4"><span class="ltx_text ltx_font_bold" id="S3.T2.7.8.1.4.1">13.7%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.8.1.5"><span class="ltx_text ltx_font_bold" id="S3.T2.7.8.1.5.1">76.2%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.5.5.1">w/o Rendering (<math alttext="\lambda_{3}=0" class="ltx_Math" display="inline" id="S3.T2.5.5.1.m1.1"><semantics id="S3.T2.5.5.1.m1.1a"><mrow id="S3.T2.5.5.1.m1.1.1" xref="S3.T2.5.5.1.m1.1.1.cmml"><msub id="S3.T2.5.5.1.m1.1.1.2" xref="S3.T2.5.5.1.m1.1.1.2.cmml"><mi id="S3.T2.5.5.1.m1.1.1.2.2" xref="S3.T2.5.5.1.m1.1.1.2.2.cmml">λ</mi><mn id="S3.T2.5.5.1.m1.1.1.2.3" xref="S3.T2.5.5.1.m1.1.1.2.3.cmml">3</mn></msub><mo id="S3.T2.5.5.1.m1.1.1.1" xref="S3.T2.5.5.1.m1.1.1.1.cmml">=</mo><mn id="S3.T2.5.5.1.m1.1.1.3" xref="S3.T2.5.5.1.m1.1.1.3.cmml">0</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.5.5.1.m1.1b"><apply id="S3.T2.5.5.1.m1.1.1.cmml" xref="S3.T2.5.5.1.m1.1.1"><eq id="S3.T2.5.5.1.m1.1.1.1.cmml" xref="S3.T2.5.5.1.m1.1.1.1"></eq><apply id="S3.T2.5.5.1.m1.1.1.2.cmml" xref="S3.T2.5.5.1.m1.1.1.2"><csymbol cd="ambiguous" id="S3.T2.5.5.1.m1.1.1.2.1.cmml" xref="S3.T2.5.5.1.m1.1.1.2">subscript</csymbol><ci id="S3.T2.5.5.1.m1.1.1.2.2.cmml" xref="S3.T2.5.5.1.m1.1.1.2.2">𝜆</ci><cn id="S3.T2.5.5.1.m1.1.1.2.3.cmml" type="integer" xref="S3.T2.5.5.1.m1.1.1.2.3">3</cn></apply><cn id="S3.T2.5.5.1.m1.1.1.3.cmml" type="integer" xref="S3.T2.5.5.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.5.1.m1.1c">\lambda_{3}=0</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.5.1.m1.1d">italic_λ start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT = 0</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.2">0.96</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.3">0.45</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.4">17.5%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.5">80.5%</td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.6.6.1">w/o Physics (<math alttext="\lambda_{2}=0" class="ltx_Math" display="inline" id="S3.T2.6.6.1.m1.1"><semantics id="S3.T2.6.6.1.m1.1a"><mrow id="S3.T2.6.6.1.m1.1.1" xref="S3.T2.6.6.1.m1.1.1.cmml"><msub id="S3.T2.6.6.1.m1.1.1.2" xref="S3.T2.6.6.1.m1.1.1.2.cmml"><mi id="S3.T2.6.6.1.m1.1.1.2.2" xref="S3.T2.6.6.1.m1.1.1.2.2.cmml">λ</mi><mn id="S3.T2.6.6.1.m1.1.1.2.3" xref="S3.T2.6.6.1.m1.1.1.2.3.cmml">2</mn></msub><mo id="S3.T2.6.6.1.m1.1.1.1" xref="S3.T2.6.6.1.m1.1.1.1.cmml">=</mo><mn id="S3.T2.6.6.1.m1.1.1.3" xref="S3.T2.6.6.1.m1.1.1.3.cmml">0</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.6.6.1.m1.1b"><apply id="S3.T2.6.6.1.m1.1.1.cmml" xref="S3.T2.6.6.1.m1.1.1"><eq id="S3.T2.6.6.1.m1.1.1.1.cmml" xref="S3.T2.6.6.1.m1.1.1.1"></eq><apply id="S3.T2.6.6.1.m1.1.1.2.cmml" xref="S3.T2.6.6.1.m1.1.1.2"><csymbol cd="ambiguous" id="S3.T2.6.6.1.m1.1.1.2.1.cmml" xref="S3.T2.6.6.1.m1.1.1.2">subscript</csymbol><ci id="S3.T2.6.6.1.m1.1.1.2.2.cmml" xref="S3.T2.6.6.1.m1.1.1.2.2">𝜆</ci><cn id="S3.T2.6.6.1.m1.1.1.2.3.cmml" type="integer" xref="S3.T2.6.6.1.m1.1.1.2.3">2</cn></apply><cn id="S3.T2.6.6.1.m1.1.1.3.cmml" type="integer" xref="S3.T2.6.6.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.6.6.1.m1.1c">\lambda_{2}=0</annotation><annotation encoding="application/x-llamapun" id="S3.T2.6.6.1.m1.1d">italic_λ start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT = 0</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_center" id="S3.T2.6.6.2">0.97</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.6.3">0.40</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.6.4">35.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.6.5">89.6%</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T2.7.7.1">w/o Format (<math alttext="\lambda_{1}=0" class="ltx_Math" display="inline" id="S3.T2.7.7.1.m1.1"><semantics id="S3.T2.7.7.1.m1.1a"><mrow id="S3.T2.7.7.1.m1.1.1" xref="S3.T2.7.7.1.m1.1.1.cmml"><msub id="S3.T2.7.7.1.m1.1.1.2" xref="S3.T2.7.7.1.m1.1.1.2.cmml"><mi id="S3.T2.7.7.1.m1.1.1.2.2" xref="S3.T2.7.7.1.m1.1.1.2.2.cmml">λ</mi><mn id="S3.T2.7.7.1.m1.1.1.2.3" xref="S3.T2.7.7.1.m1.1.1.2.3.cmml">1</mn></msub><mo id="S3.T2.7.7.1.m1.1.1.1" xref="S3.T2.7.7.1.m1.1.1.1.cmml">=</mo><mn id="S3.T2.7.7.1.m1.1.1.3" xref="S3.T2.7.7.1.m1.1.1.3.cmml">0</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.7.7.1.m1.1b"><apply id="S3.T2.7.7.1.m1.1.1.cmml" xref="S3.T2.7.7.1.m1.1.1"><eq id="S3.T2.7.7.1.m1.1.1.1.cmml" xref="S3.T2.7.7.1.m1.1.1.1"></eq><apply id="S3.T2.7.7.1.m1.1.1.2.cmml" xref="S3.T2.7.7.1.m1.1.1.2"><csymbol cd="ambiguous" id="S3.T2.7.7.1.m1.1.1.2.1.cmml" xref="S3.T2.7.7.1.m1.1.1.2">subscript</csymbol><ci id="S3.T2.7.7.1.m1.1.1.2.2.cmml" xref="S3.T2.7.7.1.m1.1.1.2.2">𝜆</ci><cn id="S3.T2.7.7.1.m1.1.1.2.3.cmml" type="integer" xref="S3.T2.7.7.1.m1.1.1.2.3">1</cn></apply><cn id="S3.T2.7.7.1.m1.1.1.3.cmml" type="integer" xref="S3.T2.7.7.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.7.7.1.m1.1c">\lambda_{1}=0</annotation><annotation encoding="application/x-llamapun" id="S3.T2.7.7.1.m1.1d">italic_λ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT = 0</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.7.7.2">0.72</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.7.7.3">0.41</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.7.7.4">16.3%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.7.7.5">84.8%</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of each reward component (format, rendering, and physics) on the overall performance of the MetaSpatial model using the Qwen2.5-VL 7B. By removing one component at a time, it shows how each reward type contributes to the model's ability to generate high-quality 3D layouts.  The results demonstrate the relative importance of each reward component in terms of format accuracy, GPT-40 score, collision rate, and constraint violation rate.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablation study of reward components on Qwen2.5-VL 7B.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T3.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T3.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T3.4.4.5"><span class="ltx_text ltx_font_bold" id="S3.T3.4.4.5.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.1.1.1">Format <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.1.1.1.m1.1"><semantics id="S3.T3.1.1.1.m1.1a"><mo id="S3.T3.1.1.1.m1.1.1" stretchy="false" xref="S3.T3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.1.1.1.m1.1b"><ci id="S3.T3.1.1.1.m1.1.1.cmml" xref="S3.T3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.2.2.2">GPT-4o Score <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.2.2.2.m1.1"><semantics id="S3.T3.2.2.2.m1.1a"><mo id="S3.T3.2.2.2.m1.1.1" stretchy="false" xref="S3.T3.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.2.2.2.m1.1b"><ci id="S3.T3.2.2.2.m1.1.1.cmml" xref="S3.T3.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.3.3.3">Collision <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T3.3.3.3.m1.1"><semantics id="S3.T3.3.3.3.m1.1a"><mo id="S3.T3.3.3.3.m1.1.1" stretchy="false" xref="S3.T3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T3.3.3.3.m1.1b"><ci id="S3.T3.3.3.3.m1.1.1.cmml" xref="S3.T3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.4.4.4">Constraint <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T3.4.4.4.m1.1"><semantics id="S3.T3.4.4.4.m1.1a"><mo id="S3.T3.4.4.4.m1.1.1" stretchy="false" xref="S3.T3.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T3.4.4.4.m1.1b"><ci id="S3.T3.4.4.4.m1.1.1.cmml" xref="S3.T3.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.4.5.1.1">One-step RL (PPO)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.5.1.2">0.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.5.1.3">0.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.5.1.4">26.6%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.5.1.5">83.0%</td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.4.6.2.1">Multi-turn RL (GRPO) w/o T = 1</th>
<td class="ltx_td ltx_align_center" id="S3.T3.4.6.2.2">0.96</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.6.2.3">0.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.6.2.4">21.3%</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.6.2.5">81.2%</td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.4.7.3.1">Multi-turn RL (GRPO) w/o T = 3</th>
<td class="ltx_td ltx_align_center" id="S3.T3.4.7.3.2">0.96</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.7.3.3">0.54</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.7.3.4">16.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.7.3.5">79.5%</td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T3.4.8.4.1">Multi-turn RL (GRPO) w/o T = 5</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.4.8.4.2"><span class="ltx_text ltx_font_bold" id="S3.T3.4.8.4.2.1">0.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.4.8.4.3"><span class="ltx_text ltx_font_bold" id="S3.T3.4.8.4.3.1">0.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.4.8.4.4"><span class="ltx_text ltx_font_bold" id="S3.T3.4.8.4.4.1">13.7%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.4.8.4.5"><span class="ltx_text ltx_font_bold" id="S3.T3.4.8.4.5.1">76.2%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of single-step reinforcement learning (RL) using Proximal Policy Optimization (PPO) with MetaSpatial's multi-turn refinement strategy using Group Relative Policy Optimization (GRPO).  It shows the impact of the multi-turn approach on several key metrics: format accuracy (how well the model generates correctly structured JSON outputs), GPT-40 score (a measure of the overall quality and realism of the 3D scene as evaluated by a large language model), collision ratio (the percentage of objects that overlap unnaturally), and constraint violation ratio (the percentage of objects violating spatial constraints).  Different numbers of refinement turns (T) are compared for the GRPO method to demonstrate the effect of increasing the number of iterative improvements on model performance.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of single-step RL and our multi-turn refinement strategy with GRPO.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.18470/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18470/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18470/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18470/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18470/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18470/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18470/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18470/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18470/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18470/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18470/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}