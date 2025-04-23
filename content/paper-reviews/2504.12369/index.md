---
title: "WORLDMEM: Long-term Consistent World Simulation with Memory"
summary: "WORLDMEM: Achieves long-term consistent world simulation with a memory bank that stores and recalls past states."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 S-Lab, Nanyang Technological University",]
showSummary: true
date: 2025-04-16
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.12369 {{< /keyword >}}
{{< keyword icon="writer" >}} Zeqi Xiao et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.12369" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.12369" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.12369/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

World simulation is gaining popularity, but current methods struggle with long-term consistency due to limited temporal context, especially in preserving 3D spatial consistency. Existing methods often fail to maintain consistent environments, particularly when viewpoints change or time elapses. Simply increasing the temporal window is impractical due to high memory and computational costs.



To address this, WORLDMEM uses a memory bank of memory frames and states. It employs a memory attention mechanism to extract relevant information, accurately reconstructing previously observed scenes, even with viewpoint or temporal gaps. By incorporating timestamps, it models both static and dynamic world evolution, enabling perception and interaction. Experiments validate the approach's effectiveness in virtual and real scenarios.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} WORLDMEM enhances scene generation with a memory bank, improving long-term consistency. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method accurately reconstructs previously observed scenes, even with viewpoint or temporal gaps. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} WORLDMEM captures dynamic evolution over time, enabling perception and interaction in virtual worlds. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel approach to enhance long-term consistency in world simulation, addressing a key limitation in current methods. By incorporating a memory mechanism, this research paves the way for more **accurate, persistent, and immersive virtual environments**. It opens avenues for future research on memory-based consistent world simulation.

------
#### Visual Insights



![](https://arxiv.org/html/2504.12369/x2.png)

> 🔼 This figure compares two scenarios of world simulation: one without memory and one with WorldMem's integrated memory mechanism.  The top row (a) shows a previous method that struggles with world consistency. The limited temporal context window leads to changes in the environment after the agent moves and returns to a previous viewpoint. The bottom row (b) demonstrates WorldMem's ability to maintain long-term consistency. By using memory, the agent can place objects (like pumpkin lights) and freely roam, returning later to find the objects still in their original location and observing temporal changes (snow melting near the light).  The red and green boxes highlight scene areas where consistency should be maintained.  WorldMem’s memory mechanism enables consistent world simulation even after lengthy explorations.
> <details>
> <summary>read the caption</summary>
> Figure 1: WorldMem enables long-term consistent world simulation with an integrated memory mechanism. (a) Previous world simulation methods typically face the problem of inconsistent world due to limited temporal context window size. (b) WorldMem  empowers the agent to explore diverse and consistent worlds with an expansive action space, e.g., crafting environments by placing objects like pumpkin light or freely roaming around. Most importantly, after exploring for a while and glancing back, we find the objects we placed are still there, with the inspiring sight of the light melting surrounding snow, testifying to the passage of time. Red and green boxes indicate scenes that should be consistent. Project page at https://xizaoqu.github.io/worldmem.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.6.7.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S4.T1.6.7.1.1"><span class="ltx_text" id="S4.T1.6.7.1.1.1" style="font-size:90%;">Within context window</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T1.3.3.4"><span class="ltx_text" id="S4.T1.3.3.4.1" style="font-size:90%;">Methods</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T1.1.1.1">
<span class="ltx_text" id="S4.T1.1.1.1.1" style="font-size:90%;">PSNR </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T1.2.2.2">
<span class="ltx_text" id="S4.T1.2.2.2.1" style="font-size:90%;">LPIPS </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.3.3.3">
<span class="ltx_text" id="S4.T1.3.3.3.1" style="font-size:90%;">rFID </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.6.8.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.8.1.1"><span class="ltx_text" id="S4.T1.6.8.1.1.1" style="font-size:90%;">Full Sequence</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.8.1.2"><span class="ltx_text" id="S4.T1.6.8.1.2.1" style="font-size:90%;">20.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.8.1.3"><span class="ltx_text" id="S4.T1.6.8.1.3.1" style="font-size:90%;">0.0691</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.8.1.4"><span class="ltx_text" id="S4.T1.6.8.1.4.1" style="font-size:90%;">13.87</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.9.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.9.2.1">
<span class="ltx_text" id="S4.T1.6.9.2.1.1" style="font-size:90%;">Diffusion Forcing </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.6.9.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12369v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a><span class="ltx_text" id="S4.T1.6.9.2.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.9.2.2"><span class="ltx_text" id="S4.T1.6.9.2.2.1" style="font-size:90%;">26.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.9.2.3"><span class="ltx_text" id="S4.T1.6.9.2.3.1" style="font-size:90%;">0.0094</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.2.4"><span class="ltx_text" id="S4.T1.6.9.2.4.1" style="font-size:90%;">13.88</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.10.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.10.3.1"><span class="ltx_text" id="S4.T1.6.10.3.1.1" style="font-size:90%;">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.10.3.2"><span class="ltx_text ltx_font_bold" id="S4.T1.6.10.3.2.1" style="font-size:90%;">27.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.10.3.3"><span class="ltx_text ltx_font_bold" id="S4.T1.6.10.3.3.1" style="font-size:90%;">0.0072</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.10.3.4"><span class="ltx_text ltx_font_bold" id="S4.T1.6.10.3.4.1" style="font-size:90%;">13.73</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.11.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="4" id="S4.T1.6.11.4.1"><span class="ltx_text" id="S4.T1.6.11.4.1.1" style="font-size:90%;">Beyond context window</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T1.6.6.4"><span class="ltx_text" id="S4.T1.6.6.4.1" style="font-size:90%;">Methods</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T1.4.4.1">
<span class="ltx_text" id="S4.T1.4.4.1.1" style="font-size:90%;">PSNR </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.4.4.1.m1.1"><semantics id="S4.T1.4.4.1.m1.1a"><mo id="S4.T1.4.4.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.1.m1.1b"><ci id="S4.T1.4.4.1.m1.1.1.cmml" xref="S4.T1.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T1.5.5.2">
<span class="ltx_text" id="S4.T1.5.5.2.1" style="font-size:90%;">LPIPS </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.5.5.2.m1.1"><semantics id="S4.T1.5.5.2.m1.1a"><mo id="S4.T1.5.5.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.5.5.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.2.m1.1b"><ci id="S4.T1.5.5.2.m1.1.1.cmml" xref="S4.T1.5.5.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.6.6.3">
<span class="ltx_text" id="S4.T1.6.6.3.1" style="font-size:90%;">rFID </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.6.6.3.m1.1"><semantics id="S4.T1.6.6.3.m1.1a"><mo id="S4.T1.6.6.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.6.6.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.3.m1.1b"><ci id="S4.T1.6.6.3.m1.1.1.cmml" xref="S4.T1.6.6.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
<tr class="ltx_tr" id="S4.T1.6.12.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.12.5.1"><span class="ltx_text" id="S4.T1.6.12.5.1.1" style="font-size:90%;">Full Sequence</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.12.5.2"><span class="ltx_text" id="S4.T1.6.12.5.2.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.12.5.3"><span class="ltx_text" id="S4.T1.6.12.5.3.1" style="font-size:90%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.12.5.4"><span class="ltx_text" id="S4.T1.6.12.5.4.1" style="font-size:90%;">/</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.13.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.13.6.1">
<span class="ltx_text" id="S4.T1.6.13.6.1.1" style="font-size:90%;">Diffusion Forcing </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.6.13.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12369v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a><span class="ltx_text" id="S4.T1.6.13.6.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.13.6.2"><span class="ltx_text" id="S4.T1.6.13.6.2.1" style="font-size:90%;">18.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.13.6.3"><span class="ltx_text" id="S4.T1.6.13.6.3.1" style="font-size:90%;">0.4376</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.13.6.4"><span class="ltx_text" id="S4.T1.6.13.6.4.1" style="font-size:90%;">51.28</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.14.7">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.6.14.7.1"><span class="ltx_text" id="S4.T1.6.14.7.1.1" style="font-size:90%;">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.6.14.7.2"><span class="ltx_text ltx_font_bold" id="S4.T1.6.14.7.2.1" style="font-size:90%;">25.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.6.14.7.3"><span class="ltx_text ltx_font_bold" id="S4.T1.6.14.7.3.1" style="font-size:90%;">0.1429</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.14.7.4"><span class="ltx_text ltx_font_bold" id="S4.T1.6.14.7.4.1" style="font-size:90%;">15.37</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative evaluation of different methods on the MineDojo Minecraft benchmark [6].  It compares the performance of three approaches: a full-sequence model, a diffusion forcing (DF) model, and the proposed WORLDMEM model. The evaluation is conducted both within and beyond the temporal context window used during training.  Metrics used for comparison include Peak Signal-to-Noise Ratio (PSNR), Learned Perceptual Image Patch Similarity (LPIPS), and reconstruction Fréchet Inception Distance (rFID). Higher PSNR values indicate better image quality, while lower LPIPS and rFID values suggest improved perceptual similarity and overall generation quality respectively.  The results illustrate how WORLDMEM maintains better consistency and generates higher quality video even when considering frames outside of its training context window.
> <details>
> <summary>read the caption</summary>
> Table 1: Evaluation on Minecraft benchmark [6]
> </details>





### In-depth insights


#### Memory-Guided Sim
**Memory-Guided Simulation** could represent a significant advancement in how we approach virtual environment creation and interaction. The core idea revolves around equipping a simulation with a robust memory system. This addresses a key limitation in traditional simulations, which often struggle to maintain long-term consistency due to limited context windows. By storing and retrieving past states and events, a memory-guided approach allows the simulation to exhibit a more coherent and realistic behavior over extended periods. The simulation could learn to adapt and evolve in more nuanced ways, leading to more engaging and believable experiences for users.

#### WorldMem Insight
**WorldMem** offers a novel approach to enhance long-term consistency in video-based world simulators. By incorporating a **dedicated memory mechanism**, it addresses the limitations of existing methods that struggle with maintaining consistency due to limited temporal context windows. The core idea involves continuously storing visual and state information in an external memory bank and retrieving the most relevant memories for generating new frames. This allows the model to capture and reuse historical cues, ensuring better preservation of environment details and past events. **WorldMem** offers the potential to significantly advance the field of interactive world simulators, paving the way for more accurate, persistent, and immersive virtual environments.

#### Attention Memory
**Attention mechanisms in memory networks are crucial for effectively retrieving and integrating relevant information**. By focusing on specific parts of the memory, the system can **prioritize important details and filter out noise**. This allows for a **more efficient and context-aware processing of stored knowledge**, leading to improved performance in tasks that require recalling and reasoning about past experiences. It ensures that the most pertinent information is readily accessible, promoting **better decision-making and consistent behavior** over extended periods.

#### Minecraft Study
A Minecraft study, if present, would offer a **controlled virtual environment** to examine long-term consistency in world simulation. Minecraft's block-based world allows for precise manipulation and observation of how an agent maintains a coherent understanding of its surroundings over time. It would serve as a **benchmark** for evaluating the proposed WORLDMEM framework. Scenarios could involve navigation, object interaction, and environmental changes, providing quantitative metrics like PSNR, LPIPS, and rFID to assess the framework's ability to **preserve spatial and temporal consistency** compared to existing methods. A Minecraft setting enables controlled experiments where ground truth information is readily available.

#### Pose Embedding
From what I understand, **pose embeddings** appear to be a crucial component for **encoding spatial information** within the memory blocks. The use of **Plücker embeddings** is interesting, as they offer a way to represent 3D poses in a dense and informative manner. The shift toward **relative embeddings** rather than absolute ones also seems significant. By focusing on the relationships between poses, the model can likely learn spatial reasoning more effectively and generalize better across different environments. The combination of Plücker embeddings for pose and MLPs for timestamps makes sense for capturing both spatial and temporal context. Overall, the design of the pose embedding is well-thought-out and plays a key role in the model's ability to maintain consistency in the simulated world.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.12369/x3.png)

> 🔼 WORLDMEM's architecture consists of a conditional diffusion transformer enhanced with memory blocks and a memory bank. The memory bank stores past frames and their associated states (e.g., poses, timestamps). During generation, relevant memories are retrieved from the bank via a memory attention mechanism. This mechanism utilizes Plücker embeddings and relative positional embeddings to effectively extract information from past frames, based on their states, enabling the accurate reconstruction of previous scenes. By incorporating timestamps into the memory, WORLDMEM models not just static scenes but also captures dynamic changes over time. This approach allows for robust long-term consistency during world simulation.
> <details>
> <summary>read the caption</summary>
> Figure 2: Comprehensive overview of WorldMem. The framework comprises a conditional diffusion transformer integrated with memory blocks, with a dedicated memory bank storing memory units from previously generated content. By retrieving these memory units from the memory bank and incorporating the information by memory blocks to guide generation, our approach ensures long-term consistency in world simulation.
> </details>



![](https://arxiv.org/html/2504.12369/x4.png)

> 🔼 This figure visualizes how the field of view (FOV) overlap is calculated between two different viewpoints.  The Monte Carlo sampling method, used for calculating the overlap ratio, is illustrated. The overlap ratio is a key component of the memory retrieval algorithm, which helps to identify relevant memory frames to use during scene generation.
> <details>
> <summary>read the caption</summary>
> Figure 3: Two-view FOV overlapping visualization
> </details>



![](https://arxiv.org/html/2504.12369/x5.png)

> 🔼 Figure 4 presents a qualitative evaluation of WorldMem's performance in generating long-term consistent world simulations. The top row compares WorldMem's output to the ground truth, demonstrating its ability to accurately capture diverse dynamic elements, such as rain, over extended sequences (600 frames). This highlights WorldMem's temporal consistency. The bottom row showcases WorldMem's ability to maintain consistency in object interactions over time. For example, objects placed in the environment (hay in a desert, wheat in a plain) persist over time, and even show dynamic changes (e.g., wheat visibly growing), demonstrating the model's ability to accurately simulate object behavior and environmental changes over long time frames. Supplementary videos are recommended for a complete understanding.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative results. We showcase WorldMem’s capabilities through two sets of examples. Top: A comparison with Ground Truth (GT). WorldMem accurately models diverse dynamics (e.g., rain) by conditioning on 600 past frames, ensuring temporal consistency. Bottom: Interaction with the world. Objects like hay in the desert or wheat in the plains persist over time, with wheat visibly growing. For the best experience, see the supplementary videos.
> </details>



![](https://arxiv.org/html/2504.12369/x6.png)

> 🔼 This figure demonstrates the ability of different methods to maintain consistency within a limited temporal window. The example shows an agent turning right and then returning to its starting position.  The image visually compares the results of different world simulation approaches, highlighting whether they successfully preserve the scene's state after the sequence of actions.  Inconsistencies in the generated environment after the agent returns to its starting point would indicate a failure to maintain short-term consistency.
> <details>
> <summary>read the caption</summary>
> Figure 5: Within context window evaluation examples. It illustrates an example where the motion sequence first involves turning right and then returning to the original position, demonstrating methods’ ability to maintain self-contained consistency.
> </details>



![](https://arxiv.org/html/2504.12369/x7.png)

> 🔼 This figure demonstrates the long-term consistency capabilities of the proposed WORLDMEM model compared to the Diffusion-Forcing (DF) baseline.  The top row shows ground truth frames from the Minecraft environment. The middle row displays frames generated by DF, which loses visual consistency and quality after a certain number of frames, showing inconsistency in reconstructing scenes after generating a long sequence. The bottom row showcases WORLDMEM’s results, demonstrating faithful reconstruction and maintained high image quality, even when the viewpoint revisits previously generated scenes.  The results highlight WORLDMEM's ability to overcome the limitations of limited context window, enabling it to build consistent long-term simulations.
> <details>
> <summary>read the caption</summary>
> Figure 6: Beyond context window evaluation examples. It shows that Diffusion-Forcing suffers from inconsistency and quality degradation after generating a certain number of frames. In contrast, our method maintains high quality and faithfully reconstructs previously observed scenarios.
> </details>



![](https://arxiv.org/html/2504.12369/x8.png)

> 🔼 This figure demonstrates a comparison of the results obtained from using two different methods (DFoT and the proposed method) for generating a sequence of images from a real-world dataset. DFoT, due to its limited context window, fails to maintain consistency across a 360-degree rotation, showing significant discrepancies in the generated images as the viewpoint changes. In contrast, the proposed method, by employing a memory mechanism, successfully maintains consistency throughout the rotation, demonstrating a remarkable ability to preserve image details and accurately return to the original viewpoint.
> <details>
> <summary>read the caption</summary>
> Figure 7: Examples on RealEstate [51]. DFoT [32] discards content beyond its context window, losing 360-degree consistency. In contrast, our method preserves details and accurately returns to the original location.
> </details>



![](https://arxiv.org/html/2504.12369/x9.png)

> 🔼 This figure compares the performance of several variations of the WORLDMEM model on a 300-frame sequence generation task, evaluating the Peak Signal-to-Noise Ratio (PSNR) against the ground truth.  The variations include removing the memory blocks, using a random memory retrieval method, and removing relative embeddings. The results demonstrate that the complete WORLDMEM model (with memory blocks, strategic retrieval, and relative embeddings) maintains high consistency and accuracy throughout the entire 300-frame sequence, while the other variants show significant inconsistencies, particularly after frame 100.
> <details>
> <summary>read the caption</summary>
> Figure 8: Long-term Generation Comparison. This figure presents the PSNR of different ablation methods compared to the ground truth over a 300-frame sequence. The results show that our method without memory blocks or using random memory retrieval exhibits immediate inconsistencies with the ground truth. Additionally, the model lacking relative embeddings begins to degrade significantly beyond 100 frames. In contrast, our full method maintains strong consistency even beyond 300 frames.
> </details>



![](https://arxiv.org/html/2504.12369/x10.png)

> 🔼 This figure demonstrates the importance of incorporating timestamps into the memory mechanism.  The left side shows the results without timestamps.  Because the model can't distinguish between memory units from the same location but at different times, inconsistencies arise in the generated world. The right side shows the results with timestamps included. In this case, the model correctly identifies and uses the appropriate memory units based on both location and time, leading to a consistent and accurate simulation.
> <details>
> <summary>read the caption</summary>
> Figure 9: Results w/o and w/ time condition. Without timestamps, the model fails to differentiate memory units from the same location at different times, causing errors. With time conditioning, it aligns with the updated world state, ensuring consistency.
> </details>



![](https://arxiv.org/html/2504.12369/x11.png)

> 🔼 This figure details the design of the different embeddings used in WORLDMEM.  It shows four subfigures: (a) Timestep Embedding, illustrating how temporal information is encoded; (b) Action Embedding, showcasing the representation of actions performed by the agent; (c) Pose Embedding, which represents the camera's position and orientation in 3D space using Plücker coordinates; and (d) Timestamp Embedding, which encodes the time information associated with each frame.  Each subfigure shows the input dimensions, any transformations (like sinusoidal or linear embeddings, or Plücker embedding), and the resulting embedding dimensions.
> <details>
> <summary>read the caption</summary>
> Figure 10: Illustration of different embeddings.
> </details>



![](https://arxiv.org/html/2504.12369/x12.png)

> 🔼 The pose predictor module predicts the pose of the next frame, taking the previous image, pose, and the upcoming action as inputs.  It uses a 3-layer CNN to process the image, followed by fully connected layers to combine image features, the previous pose, and the action embedding. Finally, a 2-layer MLP outputs the predicted next pose. This is crucial for enabling autonomous operation without needing ground truth poses during inference.
> <details>
> <summary>read the caption</summary>
> Figure 11: Structure of pose predictor.
> </details>



![](https://arxiv.org/html/2504.12369/x13.png)

> 🔼 Figure 12 showcases the diverse training environments used in the WORLDMEM model.  These environments include various terrains (e.g., plains, deserts, snowy areas), a wide range of agent actions (movement, object interaction, etc.), and different weather conditions. This variety ensures that the model is robust and generalizes well to unseen scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 12: Training Examples. Our training environments encompass diverse terrains, action spaces, and weather conditions, providing a comprehensive setting for learning.
> </details>



![](https://arxiv.org/html/2504.12369/x14.png)

> 🔼 This figure visualizes example trajectories of an agent within a Minecraft environment, specifically focusing on the X and Z coordinates. The scale of the axes directly corresponds to the distances within the game world. Each trajectory line represents the path taken by the agent over a sequence of 100 frames. The seemingly random nature of these paths indicates that the agent was operating under a stochastic policy and highlights the diversity of actions and environments that the model is capable of simulating.
> <details>
> <summary>read the caption</summary>
> Figure 13: Visualization of Trajectory Examples in the X-Z Space. The axis scales represent distances within the Minecraft environment.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T2.3.3.4"><span class="ltx_text" id="S4.T2.3.3.4.1" style="font-size:90%;">Methods</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T2.1.1.1">
<span class="ltx_text" id="S4.T2.1.1.1.1" style="font-size:90%;">PSNR </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T2.2.2.2">
<span class="ltx_text" id="S4.T2.2.2.2.1" style="font-size:90%;">LPIPS </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.3.3.3">
<span class="ltx_text" id="S4.T2.3.3.3.1" style="font-size:90%;">rFID </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.m1.1a"><mo id="S4.T2.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.m1.1b"><ci id="S4.T2.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.3.4.1.1">
<span class="ltx_text" id="S4.T2.3.4.1.1.1" style="font-size:90%;">DFoT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.3.4.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12369v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a><span class="ltx_text" id="S4.T2.3.4.1.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.4.1.2"><span class="ltx_text" id="S4.T2.3.4.1.2.1" style="font-size:90%;">8.396</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.4.1.3"><span class="ltx_text" id="S4.T2.3.4.1.3.1" style="font-size:90%;">0.6676</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.4.1.4"><span class="ltx_text" id="S4.T2.3.4.1.4.1" style="font-size:90%;">156.74</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.5.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T2.3.5.2.1"><span class="ltx_text" id="S4.T2.3.5.2.1.1" style="font-size:90%;">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.3.5.2.2"><span class="ltx_text ltx_font_bold" id="S4.T2.3.5.2.2.1" style="font-size:90%;">20.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.3.5.2.3"><span class="ltx_text ltx_font_bold" id="S4.T2.3.5.2.3.1" style="font-size:90%;">0.1773</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.5.2.4"><span class="ltx_text ltx_font_bold" id="S4.T2.3.5.2.4.1" style="font-size:90%;">67.14</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative evaluation of the WORLDMEM model on the RealEstate10K dataset [51].  It compares the performance of WORLDMEM against the DFoT [32] method using standard video generation metrics: PSNR (Peak Signal-to-Noise Ratio), LPIPS (Learned Perceptual Image Patch Similarity), and rFID (reconstruction Fréchet Inception Distance).  Higher PSNR values indicate better reconstruction fidelity, while lower LPIPS and rFID scores indicate greater perceptual similarity and overall generation quality, respectively. The results demonstrate WORLDMEM's superior performance in generating consistent and high-quality video sequences compared to the baseline method.
> <details>
> <summary>read the caption</summary>
> Table 2: Evaluation on RealEstate10K [51]
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T3.3.3.4"><span class="ltx_text" id="S4.T3.3.3.4.1" style="font-size:90%;">Pose type</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T3.3.3.5"><span class="ltx_text" id="S4.T3.3.3.5.1" style="font-size:90%;">Embed. type</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T3.1.1.1">
<span class="ltx_text" id="S4.T3.1.1.1.1" style="font-size:90%;">PSNR </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T3.2.2.2">
<span class="ltx_text" id="S4.T3.2.2.2.1" style="font-size:90%;">LPIPS </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.3.3">
<span class="ltx_text" id="S4.T3.3.3.3.1" style="font-size:90%;">rFID </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.3.4.1.1"><span class="ltx_text" id="S4.T3.3.4.1.1.1" style="font-size:90%;">Sparse</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.3.4.1.2"><span class="ltx_text" id="S4.T3.3.4.1.2.1" style="font-size:90%;">Absolute</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.3.4.1.3"><span class="ltx_text" id="S4.T3.3.4.1.3.1" style="font-size:90%;">20.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.3.4.1.4"><span class="ltx_text" id="S4.T3.3.4.1.4.1" style="font-size:90%;">0.2887</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.4.1.5"><span class="ltx_text" id="S4.T3.3.4.1.5.1" style="font-size:90%;">39.23</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.5.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.3.5.2.1"><span class="ltx_text" id="S4.T3.3.5.2.1.1" style="font-size:90%;">Dense</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.3.5.2.2"><span class="ltx_text" id="S4.T3.3.5.2.2.1" style="font-size:90%;">Absolute</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.3.5.2.3"><span class="ltx_text" id="S4.T3.3.5.2.3.1" style="font-size:90%;">23.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.3.5.2.4"><span class="ltx_text" id="S4.T3.3.5.2.4.1" style="font-size:90%;">0.1830</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.5.2.5"><span class="ltx_text" id="S4.T3.3.5.2.5.1" style="font-size:90%;">29.34</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.6.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T3.3.6.3.1"><span class="ltx_text" id="S4.T3.3.6.3.1.1" style="font-size:90%;">Dense</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T3.3.6.3.2"><span class="ltx_text" id="S4.T3.3.6.3.2.1" style="font-size:90%;">Relative</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.3.6.3.3"><span class="ltx_text ltx_font_bold" id="S4.T3.3.6.3.3.1" style="font-size:90%;">25.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.3.6.3.4"><span class="ltx_text ltx_font_bold" id="S4.T3.3.6.3.4.1" style="font-size:90%;">0.1429</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.6.3.5"><span class="ltx_text ltx_font_bold" id="S4.T3.3.6.3.5.1" style="font-size:90%;">15.37</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies conducted on different embedding designs used in the WORLDMEM model. It compares the performance of the model using various pose embedding types (sparse/dense, absolute/relative) and shows how these choices impact the key metrics: PSNR, LPIPS, and rFID. This allows for a quantitative analysis of the impact of different state representation methods on the overall model's ability to maintain long-term consistency in world simulation.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation on embedding designs
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T4.3.3.4"><span class="ltx_text" id="S4.T4.3.3.4.1" style="font-size:90%;">Time embedding</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T4.1.1.1">
<span class="ltx_text" id="S4.T4.1.1.1.1" style="font-size:90%;">PSNR </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T4.2.2.2">
<span class="ltx_text" id="S4.T4.2.2.2.1" style="font-size:90%;">LPIPS </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.m1.1a"><mo id="S4.T4.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.m1.1b"><ci id="S4.T4.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.3.3.3">
<span class="ltx_text" id="S4.T4.3.3.3.1" style="font-size:90%;">rFID </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.m1.1a"><mo id="S4.T4.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.m1.1b"><ci id="S4.T4.3.3.3.m1.1.1.cmml" xref="S4.T4.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.3.4.1.1"><span class="ltx_text" id="S4.T4.3.4.1.1.1" style="font-size:90%;">w/o</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.3.4.1.2"><span class="ltx_text" id="S4.T4.3.4.1.2.1" style="font-size:90%;">23.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.3.4.1.3"><span class="ltx_text" id="S4.T4.3.4.1.3.1" style="font-size:90%;">0.1989</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.4.1.4"><span class="ltx_text" id="S4.T4.3.4.1.4.1" style="font-size:90%;">23.89</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.5.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T4.3.5.2.1"><span class="ltx_text" id="S4.T4.3.5.2.1.1" style="font-size:90%;">w/</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.3.5.2.2"><span class="ltx_text ltx_font_bold" id="S4.T4.3.5.2.2.1" style="font-size:90%;">25.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.3.5.2.3"><span class="ltx_text ltx_font_bold" id="S4.T4.3.5.2.3.1" style="font-size:90%;">0.1613</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.3.5.2.4"><span class="ltx_text ltx_font_bold" id="S4.T4.3.5.2.4.1" style="font-size:90%;">16.53</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of incorporating timestamps into the state embeddings used within the WORLDMEM model.  The study compares the performance of the model with and without time embeddings, quantifying the effect on the PSNR, LPIPS, and rFID metrics.  These metrics evaluate the quality of the generated videos, measuring pixel-level fidelity, perceptual similarity, and overall realism respectively.  The table provides a quantitative assessment of the effectiveness of temporal information in enhancing long-term consistency during world simulation.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation on time condition
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T5.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T5.3.3.4"><span class="ltx_text" id="S4.T5.3.3.4.1" style="font-size:90%;">Strategy</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T5.1.1.1">
<span class="ltx_text" id="S4.T5.1.1.1.1" style="font-size:90%;">PSNR </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T5.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T5.2.2.2">
<span class="ltx_text" id="S4.T5.2.2.2.1" style="font-size:90%;">LPIPS </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.2.2.2.m1.1"><semantics id="S4.T5.2.2.2.m1.1a"><mo id="S4.T5.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T5.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.m1.1b"><ci id="S4.T5.2.2.2.m1.1.1.cmml" xref="S4.T5.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.3.3.3">
<span class="ltx_text" id="S4.T5.3.3.3.1" style="font-size:90%;">rFID </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.3.3.3.m1.1"><semantics id="S4.T5.3.3.3.m1.1a"><mo id="S4.T5.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T5.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.3.3.3.m1.1b"><ci id="S4.T5.3.3.3.m1.1.1.cmml" xref="S4.T5.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.3.4.1.1"><span class="ltx_text" id="S4.T5.3.4.1.1.1" style="font-size:90%;">Random</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.3.4.1.2"><span class="ltx_text" id="S4.T5.3.4.1.2.1" style="font-size:90%;">18.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.3.4.1.3"><span class="ltx_text" id="S4.T5.3.4.1.3.1" style="font-size:90%;">0.3224</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.4.1.4"><span class="ltx_text" id="S4.T5.3.4.1.4.1" style="font-size:90%;">47.35</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.5.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.3.5.2.1"><span class="ltx_text" id="S4.T5.3.5.2.1.1" style="font-size:90%;">+ Confidence Filter</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.3.5.2.2"><span class="ltx_text" id="S4.T5.3.5.2.2.1" style="font-size:90%;">23.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.3.5.2.3"><span class="ltx_text" id="S4.T5.3.5.2.3.1" style="font-size:90%;">0.1863</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.5.2.4"><span class="ltx_text" id="S4.T5.3.5.2.4.1" style="font-size:90%;">24.33</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.6.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T5.3.6.3.1"><span class="ltx_text" id="S4.T5.3.6.3.1.1" style="font-size:90%;">+ Similarity Filter</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T5.3.6.3.2"><span class="ltx_text ltx_font_bold" id="S4.T5.3.6.3.2.1" style="font-size:90%;">25.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T5.3.6.3.3"><span class="ltx_text ltx_font_bold" id="S4.T5.3.6.3.3.1" style="font-size:90%;">0.1429</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.6.3.4"><span class="ltx_text ltx_font_bold" id="S4.T5.3.6.3.4.1" style="font-size:90%;">15.37</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on different memory retrieval strategies used in the WORLDMEM model.  It compares the performance of three approaches: a baseline random sampling method, a method incorporating a confidence filter, and a method employing both a confidence filter and a similarity filter. The performance is evaluated across three metrics: PSNR (Peak Signal-to-Noise Ratio), LPIPS (Learned Perceptual Image Patch Similarity), and rFID (reconstruction Fréchet Inception Distance). The results demonstrate how each enhancement to the retrieval strategy improves the model's ability to maintain long-term consistency in world simulation.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation on memory retrieve strategy
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T6.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T6.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S6.T6.3.3.4">Sampling strategy</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S6.T6.1.1.1">PSNR <math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T6.1.1.1.m1.1"><semantics id="S6.T6.1.1.1.m1.1a"><mo id="S6.T6.1.1.1.m1.1.1" stretchy="false" xref="S6.T6.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T6.1.1.1.m1.1b"><ci id="S6.T6.1.1.1.m1.1.1.cmml" xref="S6.T6.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T6.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T6.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S6.T6.2.2.2">LPIPS <math alttext="\downarrow" class="ltx_Math" display="inline" id="S6.T6.2.2.2.m1.1"><semantics id="S6.T6.2.2.2.m1.1a"><mo id="S6.T6.2.2.2.m1.1.1" stretchy="false" xref="S6.T6.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S6.T6.2.2.2.m1.1b"><ci id="S6.T6.2.2.2.m1.1.1.cmml" xref="S6.T6.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T6.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T6.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T6.3.3.3">rFID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S6.T6.3.3.3.m1.1"><semantics id="S6.T6.3.3.3.m1.1a"><mo id="S6.T6.3.3.3.m1.1.1" stretchy="false" xref="S6.T6.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S6.T6.3.3.3.m1.1b"><ci id="S6.T6.3.3.3.m1.1.1.cmml" xref="S6.T6.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T6.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T6.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T6.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T6.3.4.1.1">Small-range</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.3.4.1.2">19.23</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.3.4.1.3">0.3786</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.3.4.1.4">46.55</td>
</tr>
<tr class="ltx_tr" id="S6.T6.3.5.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S6.T6.3.5.2.1">Large-range</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.3.5.2.2">21.11</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.3.5.2.3">0.3855</td>
<td class="ltx_td ltx_align_center" id="S6.T6.3.5.2.4">42.96</td>
</tr>
<tr class="ltx_tr" id="S6.T6.3.6.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S6.T6.3.6.3.1">Progressive</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.T6.3.6.3.2"><span class="ltx_text ltx_font_bold" id="S6.T6.3.6.3.2.1">25.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.T6.3.6.3.3"><span class="ltx_text ltx_font_bold" id="S6.T6.3.6.3.3.1">0.1429</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T6.3.6.3.4"><span class="ltx_text ltx_font_bold" id="S6.T6.3.6.3.4.1">15.37</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study on the effect of different sampling strategies used during the training of the WORLDMEM model.  The strategies compared are small-range sampling (where the model only considers frames within a small spatial range), large-range sampling (where a larger spatial range is used), and progressive sampling (where the range of spatial contexts gradually increases during training). The table shows how these different sampling strategies impact the model's performance, as measured by PSNR, LPIPS, and rFID scores. This analysis helps to determine which sampling strategy is most effective for training the model and improving its overall consistency and accuracy.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation on sampling strategy for training
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T7.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T7.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S6.T7.3.3.4">Length</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S6.T7.1.1.1">PSNR <math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T7.1.1.1.m1.1"><semantics id="S6.T7.1.1.1.m1.1a"><mo id="S6.T7.1.1.1.m1.1.1" stretchy="false" xref="S6.T7.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T7.1.1.1.m1.1b"><ci id="S6.T7.1.1.1.m1.1.1.cmml" xref="S6.T7.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T7.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T7.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S6.T7.2.2.2">LPIPS <math alttext="\downarrow" class="ltx_Math" display="inline" id="S6.T7.2.2.2.m1.1"><semantics id="S6.T7.2.2.2.m1.1a"><mo id="S6.T7.2.2.2.m1.1.1" stretchy="false" xref="S6.T7.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S6.T7.2.2.2.m1.1b"><ci id="S6.T7.2.2.2.m1.1.1.cmml" xref="S6.T7.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T7.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T7.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T7.3.3.3">rFID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S6.T7.3.3.3.m1.1"><semantics id="S6.T7.3.3.3.m1.1a"><mo id="S6.T7.3.3.3.m1.1.1" stretchy="false" xref="S6.T7.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S6.T7.3.3.3.m1.1b"><ci id="S6.T7.3.3.3.m1.1.1.cmml" xref="S6.T7.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T7.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T7.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T7.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T7.3.4.1.1">1</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T7.3.4.1.2">22.18</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T7.3.4.1.3">0.1899</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.3.4.1.4">20.47</td>
</tr>
<tr class="ltx_tr" id="S6.T7.3.5.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S6.T7.3.5.2.1">4</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.3.5.2.2">24.68</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.3.5.2.3">0.1568</td>
<td class="ltx_td ltx_align_center" id="S6.T7.3.5.2.4">16.54</td>
</tr>
<tr class="ltx_tr" id="S6.T7.3.6.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S6.T7.3.6.3.1">8</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.3.6.3.2"><span class="ltx_text ltx_font_bold" id="S6.T7.3.6.3.2.1">25.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.3.6.3.3"><span class="ltx_text ltx_font_bold" id="S6.T7.3.6.3.3.1">0.1429</span></td>
<td class="ltx_td ltx_align_center" id="S6.T7.3.6.3.4"><span class="ltx_text ltx_font_bold" id="S6.T7.3.6.3.4.1">15.37</span></td>
</tr>
<tr class="ltx_tr" id="S6.T7.3.7.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S6.T7.3.7.4.1">16</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.T7.3.7.4.2">23.14</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.T7.3.7.4.3">0.1687</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T7.3.7.4.4">18.33</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study on the length of the memory context, a key hyperparameter in the WORLDMEM model.  The study investigates how varying the length of the memory context (the number of past frames considered when generating new frames) affects the model's performance in generating consistent long-term videos in Minecraft.  The table shows the impact of different memory context lengths (1, 4, 8, and 16 frames) on three key metrics: PSNR (Peak Signal-to-Noise Ratio), LPIPS (Learned Perceptual Image Patch Similarity), and rFID (reconstruction Fréchet Inception Distance). Higher PSNR and lower LPIPS and rFID values generally indicate better image quality and higher consistency.
> <details>
> <summary>read the caption</summary>
> Table 7: Ablation on length of memory context length
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T8.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T8.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S6.T8.3.3.4">Pose Type</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S6.T8.1.1.1">PSNR <math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T8.1.1.1.m1.1"><semantics id="S6.T8.1.1.1.m1.1a"><mo id="S6.T8.1.1.1.m1.1.1" stretchy="false" xref="S6.T8.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T8.1.1.1.m1.1b"><ci id="S6.T8.1.1.1.m1.1.1.cmml" xref="S6.T8.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T8.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T8.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S6.T8.2.2.2">LPIPS <math alttext="\downarrow" class="ltx_Math" display="inline" id="S6.T8.2.2.2.m1.1"><semantics id="S6.T8.2.2.2.m1.1a"><mo id="S6.T8.2.2.2.m1.1.1" stretchy="false" xref="S6.T8.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S6.T8.2.2.2.m1.1b"><ci id="S6.T8.2.2.2.m1.1.1.cmml" xref="S6.T8.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T8.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T8.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T8.3.3.3">rFID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S6.T8.3.3.3.m1.1"><semantics id="S6.T8.3.3.3.m1.1a"><mo id="S6.T8.3.3.3.m1.1.1" stretchy="false" xref="S6.T8.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S6.T8.3.3.3.m1.1b"><ci id="S6.T8.3.3.3.m1.1.1.cmml" xref="S6.T8.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T8.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T8.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T8.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T8.3.4.1.1">Ground truth</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.4.1.2">25.32</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T8.3.4.1.3">0.1429</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T8.3.4.1.4">15.37</td>
</tr>
<tr class="ltx_tr" id="S6.T8.3.5.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S6.T8.3.5.2.1">Predicted</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.T8.3.5.2.2">23.13</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.T8.3.5.2.3">0.1786</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T8.3.5.2.4">20.36</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the model's performance using two different types of pose information: ground truth poses and predicted poses.  It shows the PSNR, LPIPS, and rFID scores for both scenarios.  The comparison helps evaluate the impact of pose prediction on the model's ability to generate consistent and high-quality videos, providing insights into the reliability of the pose prediction module for real-world applications where ground truth poses may not be readily available.
> <details>
> <summary>read the caption</summary>
> Table 8: Comparison between using predicted poses and ground truth poses
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.12369/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12369/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12369/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12369/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12369/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12369/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12369/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12369/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12369/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12369/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12369/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12369/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12369/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12369/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}