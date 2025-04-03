---
title: "AnimeGamer: Infinite Anime Life Simulation with Next Game State Prediction"
summary: "AnimeGamer: Play infinite anime lives with language! Predictable game states, dynamic animations & character updates."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Gaming", "🏢 Tencent PCG",]
showSummary: true
date: 2025-04-01
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.01014 {{< /keyword >}}
{{< keyword icon="writer" >}} Junhao Cheng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-03 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.01014" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.01014" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.01014/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Recent advancements in generative models have paved the way for transforming anime characters into interactive entities. However, current approaches, like Unbounded, fall short by neglecting historical visual context and generating static images, leading to inconsistent gameplay and a lack of dynamic interactions. These limitations hinder the creation of truly immersive and engaging infinite anime life simulations.



To address these issues, this work introduces AnimeGamer, a novel framework that leverages Multimodal Large Language Models (MLLMs) to generate dynamic game states, including animation shots and character state updates. By introducing action-aware multimodal representations and incorporating historical context, AnimeGamer ensures contextual consistency and satisfactory dynamics. The framework includes a data collection pipeline from anime, allowing training on customized data. This approach outperforms existing methods.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} AnimeGamer enables continuous interaction in anime worlds through language, generating dynamic game states. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Action-aware multimodal representations effectively capture animation details for high-quality video generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The framework ensures contextual consistency and satisfactory dynamics in infinite anime life simulations. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel approach to infinite anime life simulation, offering researchers a new framework for interactive storytelling and character interaction. **It bridges the gap between static anime content and dynamic, playable experiences, opening new avenues for AI-driven game development** and personalized entertainment.

------
#### Visual Insights



![](https://arxiv.org/html/2504.01014/x3.png)

> 🔼 The figure compares AnimeGamer with previous methods, specifically Unbounded. Unbounded uses an LLM to translate text-based dialogues into instructions for static image generation, relying on reference images. AnimeGamer, in contrast, uses an MLLM to predict multimodal representations (ℛ), incorporating past visual and textual data.  These representations are then decoded into consistent, dynamic video clips via a video diffusion model, showcasing AnimeGamer's ability to generate continuous and coherent animations.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparison of AnimeGamer with previous methods. Unbounded employs an LLM to translate multi-turn text-only dialogues into language descriptions for static image generation, with an additional condition based on reference images. In contrast, AnimeGamer utilizes an MLLM to predict multimodal representations ℛℛ\mathcal{R}caligraphic_R by incorporating historical multimodal context as input. These generated representations can then be directly decoded into consistent dynamic clips using a video diffusion model.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S1.F1.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.F1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="122" id="S1.F1.1.1.1.g1" src="x1.png" width="467"/></td>
</tr>
<tr class="ltx_tr" id="S1.F1.2.3.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.2.3.1.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S1.F1.2.3.1.1.1" style="font-size:90%;">(a) LLM-based methods (e.g., Unbounded <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.01014v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a>]</cite>)</span></td>
</tr>
<tr class="ltx_tr" id="S1.F1.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.2.2.1" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="122" id="S1.F1.2.2.1.g1" src="x2.png" width="467"/></td>
</tr>
<tr class="ltx_tr" id="S1.F1.2.4.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.2.4.2.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S1.F1.2.4.2.1.1" style="font-size:90%;">(b) AnimeGamer</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of AnimeGamer against three baseline models (GSC, GFC, GC) using automatic evaluation metrics.  The metrics assess character consistency, semantic consistency, motion quality, and state updates.  Higher scores indicate better performance.  The best-performing model for each metric is highlighted in bold.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparison with baseline models on automatic metrics. Bold indicate the best performance.
> </details>





### In-depth insights


#### Anime's Infinite Life
The concept of an "Anime's Infinite Life" is intriguing, suggesting a dynamic and virtually endless interactive experience centered around anime characters and worlds. This points towards a paradigm shift in gaming, moving beyond pre-defined storylines and embracing emergent narratives driven by user interaction and AI-generated content. **The potential lies in creating deeply immersive experiences** where players can truly embody their favorite characters and explore ever-evolving anime universes. **Challenges include maintaining character consistency**, visual coherence, and a compelling gameplay loop within a system of open-ended possibilities, but, if realized correctly, then this idea would be a revolution.

#### Action-Aware Shots
Action-aware shots in video generation emphasize capturing the **dynamics and movements** within a scene. This involves representing not just the visual content, but also the **specific actions** performed by characters or objects. This is crucial for creating engaging and realistic animations, where subtle movements can significantly impact the viewer's experience. Effectively modeling action requires representing motion intensity and scope, potentially through optical flow or other motion estimation techniques. Accurately capturing the interplay between characters' actions and the environment ensures a **coherent and immersive** experience, vital for interactive applications like games or simulations. Furthermore, action-aware representations must maintain **temporal consistency**, preserving the flow of movement across frames to avoid jarring transitions or unrealistic animations.

#### AnimeGamer Engine
While the document does not explicitly detail an "AnimeGamer Engine," the core concept revolves around a system enabling **infinite anime life simulation**.  The proposed AnimeGamer leverages a multimodal large language model (MLLM) to generate game states from language instructions.  This suggests the 'engine' would need to manage **dynamic animation shots**, character states, and contextual consistency.  A critical aspect would be the **action-aware multimodal representations** used to encode animation clips, allowing for high-quality video generation and predictable dynamics. The underlying architecture also must support a mechanism for incorporating historical visual context to maintain coherence across turns, avoiding the pitfalls of previous methods that only rely on text. Finally, a robust engine will be able to translate user commands to character actions. 

#### Context is Key
**Context is key** for achieving coherence in AI-generated content, especially for complex tasks like anime life simulation.  A model must understand the history of interactions, character states, and environment to generate a plausible next step. Neglecting prior context leads to jarring inconsistencies and unrealistic scenarios. **Visual and semantic context** are equally crucial; the model must maintain a consistent visual style and ensure actions align with the established narrative. Incorporating memory mechanisms and attention to detail greatly improves the overall quality and user experience.  The ability to retain context leads to truly immersive and engaging experiences. **Multimodal contextual analysis** allows the model to capture the nuances of both visual and textual elements, leading to more believable actions and believable states. A deep understanding is necessary to generate dynamically consistent videos and gameplay.

#### Limited Domains
In the realm of AI and game development, focusing on limited domains offers significant advantages. **By narrowing the scope**, researchers and developers can create more specialized and effective models. This approach facilitates better control over variables, leading to improved performance and predictability. Limited domains allow for the creation of targeted datasets, **enhancing training efficiency** and enabling the development of sophisticated algorithms tailored to specific tasks. The constraints also foster innovation within the defined space, pushing the boundaries of what's possible within those limits. Further, it addresses the current problems with **scalability and generalization** in current research.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.01014/x4.png)

> 🔼 AnimeGamer's training involves three stages. First, an encoder generates action-aware multimodal representations of animation shots, which are then decoded into videos by a diffusion-based decoder using motion scope to control action intensity.  Second, an MLLM (Multimodal Large Language Model) predicts the next game state's multimodal representations using past instructions and game states. Finally, the decoder is fine-tuned using the MLLM's predictions to improve the quality of generated animation shots.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of our AnimeGamer. The training process consists of three phases: (a) We model animation shots using action-aware multimodal representations through an encoder and train a diffusion-based decoder to reconstruct videos, with the additional input of motion scope that indicates action intensity. (b) We train an MLLM to predict the next game state representations by taking the history instructions and game state representations as input. (c) We further enhance the quality of decoded animation shots from the MLLM via an adaptation phase, where the decoder is fine-tuned by taking MLLM’s predictions as input.
> </details>



![](https://arxiv.org/html/2504.01014/x13.png)

> 🔼 Figure 3 illustrates the architecture of the animation shot encoder and decoder within the AnimeGamer model.  The encoder takes in both visual features from the first frame of an animation clip (processed by CLIP) and textual features describing the action (processed by T5). These multimodal features are then combined and used to generate an action-aware multimodal representation. This representation serves as input to the modulation module of the decoder, a video diffusion model (CogVideoX).  A further input, 'motion scope', representing the intensity of the motion in the clip, is separately injected via a condition module into the decoder to control the generated video's dynamism.  This detailed process allows for the generation of high-quality, contextually consistent video clips reflecting the specified animation.
> <details>
> <summary>read the caption</summary>
> Figure 3: Architecture of animation shot encoder and decoder. The action-aware multimodal representation integrates visual features of the first frame with textual features of action description, and serve as the input to the modulation module of the decoder. Additional motion scope indicating action intensity is injected using a condition module.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.10.10">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.2" rowspan="2"><span class="ltx_text" id="S4.T1.1.1.1.2.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T1.1.1.1.3">Character Consistency</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T1.1.1.1.4">Semantic Consistency</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T1.1.1.1.5">Motion Quality</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T1.1.1.1.6">State Update</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1" rowspan="2"><span class="ltx_text" id="S4.T1.1.1.1.1.1">Inference Time (s/turn) <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.10.10.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.2.2.2.1">CLIP-I <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.1.m1.1"><semantics id="S4.T1.2.2.2.1.m1.1a"><mo id="S4.T1.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T1.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.1.m1.1b"><ci id="S4.T1.2.2.2.1.m1.1.1.cmml" xref="S4.T1.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.3.3.3.2">DreamSim <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.2.m1.1"><semantics id="S4.T1.3.3.3.2.m1.1a"><mo id="S4.T1.3.3.3.2.m1.1.1" stretchy="false" xref="S4.T1.3.3.3.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.2.m1.1b"><ci id="S4.T1.3.3.3.2.m1.1.1.cmml" xref="S4.T1.3.3.3.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.4.4.4.3">CLIP-T <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.3.m1.1"><semantics id="S4.T1.4.4.4.3.m1.1a"><mo id="S4.T1.4.4.4.3.m1.1.1" stretchy="false" xref="S4.T1.4.4.4.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.3.m1.1b"><ci id="S4.T1.4.4.4.3.m1.1.1.cmml" xref="S4.T1.4.4.4.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.6.6.6.5">
<math alttext="\text{CLIP-T}^{\text{E}}" class="ltx_Math" display="inline" id="S4.T1.5.5.5.4.m1.1"><semantics id="S4.T1.5.5.5.4.m1.1a"><msup id="S4.T1.5.5.5.4.m1.1.1" xref="S4.T1.5.5.5.4.m1.1.1.cmml"><mtext id="S4.T1.5.5.5.4.m1.1.1.2" xref="S4.T1.5.5.5.4.m1.1.1.2a.cmml">CLIP-T</mtext><mtext id="S4.T1.5.5.5.4.m1.1.1.3" xref="S4.T1.5.5.5.4.m1.1.1.3a.cmml">E</mtext></msup><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.4.m1.1b"><apply id="S4.T1.5.5.5.4.m1.1.1.cmml" xref="S4.T1.5.5.5.4.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.5.5.5.4.m1.1.1.1.cmml" xref="S4.T1.5.5.5.4.m1.1.1">superscript</csymbol><ci id="S4.T1.5.5.5.4.m1.1.1.2a.cmml" xref="S4.T1.5.5.5.4.m1.1.1.2"><mtext id="S4.T1.5.5.5.4.m1.1.1.2.cmml" xref="S4.T1.5.5.5.4.m1.1.1.2">CLIP-T</mtext></ci><ci id="S4.T1.5.5.5.4.m1.1.1.3a.cmml" xref="S4.T1.5.5.5.4.m1.1.1.3"><mtext id="S4.T1.5.5.5.4.m1.1.1.3.cmml" mathsize="70%" xref="S4.T1.5.5.5.4.m1.1.1.3">E</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.4.m1.1c">\text{CLIP-T}^{\text{E}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.4.m1.1d">CLIP-T start_POSTSUPERSCRIPT E end_POSTSUPERSCRIPT</annotation></semantics></math><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.6.6.6.5.m2.1"><semantics id="S4.T1.6.6.6.5.m2.1a"><mo id="S4.T1.6.6.6.5.m2.1.1" stretchy="false" xref="S4.T1.6.6.6.5.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.5.m2.1b"><ci id="S4.T1.6.6.6.5.m2.1.1.cmml" xref="S4.T1.6.6.6.5.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.5.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.5.m2.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.7.7.7.6">ACC-F <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.7.7.7.6.m1.1"><semantics id="S4.T1.7.7.7.6.m1.1a"><mo id="S4.T1.7.7.7.6.m1.1.1" stretchy="false" xref="S4.T1.7.7.7.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.7.6.m1.1b"><ci id="S4.T1.7.7.7.6.m1.1.1.cmml" xref="S4.T1.7.7.7.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.7.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.7.6.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.8.8.8.7">MAE-F <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.8.8.8.7.m1.1"><semantics id="S4.T1.8.8.8.7.m1.1a"><mo id="S4.T1.8.8.8.7.m1.1.1" stretchy="false" xref="S4.T1.8.8.8.7.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.8.8.8.7.m1.1b"><ci id="S4.T1.8.8.8.7.m1.1.1.cmml" xref="S4.T1.8.8.8.7.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.8.8.7.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.8.8.7.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.9.9.9.8">ACC-S <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.9.9.9.8.m1.1"><semantics id="S4.T1.9.9.9.8.m1.1a"><mo id="S4.T1.9.9.9.8.m1.1.1" stretchy="false" xref="S4.T1.9.9.9.8.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.9.9.9.8.m1.1b"><ci id="S4.T1.9.9.9.8.m1.1.1.cmml" xref="S4.T1.9.9.9.8.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.9.9.8.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.9.9.8.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.10.10.10.9">MAE-S <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.10.10.10.9.m1.1"><semantics id="S4.T1.10.10.10.9.m1.1a"><mo id="S4.T1.10.10.10.9.m1.1.1" stretchy="false" xref="S4.T1.10.10.10.9.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.10.10.10.9.m1.1b"><ci id="S4.T1.10.10.10.9.m1.1.1.cmml" xref="S4.T1.10.10.10.9.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.10.10.9.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.10.10.9.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.10.10.11.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.11.1.1">GSC</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.11.1.2">0.7862</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.11.1.3">0.5019</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.11.1.4">0.3331</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.11.1.5">0.3142</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.11.1.6">0.3163</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.11.1.7">0.8263</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.11.1.8">0.6773</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.11.1.9">0.5888</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.11.1.10">50</td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.10.12.2">
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.12.2.1">GFC</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.12.2.2">0.7662</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.12.2.3">0.5797</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.12.2.4">0.3325</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.12.2.5">0.3123</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.12.2.6">0.2923</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.12.2.7">1.0212</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.12.2.8">0.6771</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.12.2.9">0.5888</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.12.2.10">63</td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.10.13.3">
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.13.3.1">GC</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.13.3.2">0.7960</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.13.3.3">0.6416</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.13.3.4">0.3339</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.13.3.5">0.3158</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.13.3.6">0.4249</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.13.3.7">0.7223</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.13.3.8"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.13.3.8.1">0.6779</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.13.3.9">0.5888</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.13.3.10">25</td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.10.14.4">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.10.14.4.1" style="background-color:#E6F0E8;"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.14.4.1.1" style="background-color:#E6F0E8;">AnimeGamer</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.10.14.4.2" style="background-color:#E6F0E8;"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.14.4.2.1" style="background-color:#E6F0E8;">0.8132</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.10.14.4.3" style="background-color:#E6F0E8;"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.14.4.3.1" style="background-color:#E6F0E8;">0.7403</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.10.14.4.4" style="background-color:#E6F0E8;"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.14.4.4.1" style="background-color:#E6F0E8;">0.4161</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.10.14.4.5" style="background-color:#E6F0E8;"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.14.4.5.1" style="background-color:#E6F0E8;">0.4012</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.10.14.4.6" style="background-color:#E6F0E8;"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.14.4.6.1" style="background-color:#E6F0E8;">0.6744</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.10.14.4.7" style="background-color:#E6F0E8;"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.14.4.7.1" style="background-color:#E6F0E8;">0.4238</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.10.14.4.8" style="background-color:#E6F0E8;"><span class="ltx_text" id="S4.T1.10.10.14.4.8.1" style="background-color:#E6F0E8;">0.6773</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.10.14.4.9" style="background-color:#E6F0E8;"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.14.4.9.1" style="background-color:#E6F0E8;">0.5872</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.10.14.4.10" style="background-color:#E6F0E8;"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.14.4.10.1" style="background-color:#E6F0E8;">24</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of AnimeGamer against three baseline models (GSC, GFC, GC) using both automated metrics from an MLLM (GPT-4v) and human evaluations.  The metrics assess several aspects of the generated infinite anime life simulation game, including overall quality, instruction following, contextual and character consistency, style consistency, and the quality of state updates.  Bold values highlight the top-performing model for each metric, showcasing AnimeGamer's superior performance across multiple evaluation criteria.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative comparison with baseline models on MLLM judgement and human evaluation. Bold indicate the best performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.6.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.6.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.6.6.6.7" rowspan="2"><span class="ltx_text" id="S4.T2.6.6.6.7.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T2.1.1.1.1">Overall <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T2.2.2.2.2">Instruction Following <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T2.3.3.3.3">Contexual Consistency <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.3.m1.1a"><mo id="S4.T2.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.m1.1b"><ci id="S4.T2.3.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T2.4.4.4.4">Chracter Consistency <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.4.m1.1"><semantics id="S4.T2.4.4.4.4.m1.1a"><mo id="S4.T2.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T2.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.4.m1.1b"><ci id="S4.T2.4.4.4.4.m1.1.1.cmml" xref="S4.T2.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T2.5.5.5.5">Style consistency <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.5.5.5.5.m1.1"><semantics id="S4.T2.5.5.5.5.m1.1a"><mo id="S4.T2.5.5.5.5.m1.1.1" stretchy="false" xref="S4.T2.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.5.m1.1b"><ci id="S4.T2.5.5.5.5.m1.1.1.cmml" xref="S4.T2.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T2.6.6.6.6">State Update <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.6.6.6.6.m1.1"><semantics id="S4.T2.6.6.6.6.m1.1a"><mo id="S4.T2.6.6.6.6.m1.1.1" stretchy="false" xref="S4.T2.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.6.m1.1b"><ci id="S4.T2.6.6.6.6.m1.1.1.cmml" xref="S4.T2.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.7.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.6.6.7.1.1">GPT-4V</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.6.6.7.1.2">Human</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.6.6.7.1.3">GPT-4V</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.6.6.7.1.4">Human</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.6.6.7.1.5">GPT-4V</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.6.6.7.1.6">Human</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.6.6.7.1.7">GPT-4V</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.6.6.7.1.8">Human</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.6.6.7.1.9">GPT-4V</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.6.6.7.1.10">Human</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.6.6.7.1.11">GPT-4V</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.6.6.7.1.12">Human</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.6.6.8.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T2.6.6.8.1.1">GSC</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.8.1.2">5.35</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.8.1.3">2.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.8.1.4">6.13</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.8.1.5">2.96</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.8.1.6">5.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.8.1.7">2.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.8.1.8">5.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.8.1.9">2.96</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.8.1.10">5.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.8.1.11">5.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.8.1.12">8.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.8.1.13">9.92</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.9.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.6.6.9.2.1">GFC</th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.2.2">4.96</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.2.3">4.27</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.2.4">5.51</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.2.5">3.57</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.2.6">4.73</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.2.7">3.20</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.2.8">6.22</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.2.9">3.76</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.2.10">4.84</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.2.11">3.62</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.2.12">8.38</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.9.2.13">9.92</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.10.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.6.6.10.3.1">GC</th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.3.2">6.42</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.3.3">7.38</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.3.4">7.29</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.3.5">7.37</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.3.6">6.58</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.3.7">6.89</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.3.8">7.49</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.3.9">7.55</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.3.10">6.57</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.3.11">6.10</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.3.12"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.10.3.12.1">8.39</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.3.13"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.10.3.13.1">9.94</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.11.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T2.6.6.11.4.1" style="background-color:#E6F0E8;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.11.4.1.1" style="background-color:#E6F0E8;">AnimeGamer</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.11.4.2" style="background-color:#E6F0E8;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.11.4.2.1" style="background-color:#E6F0E8;">8.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.11.4.3" style="background-color:#E6F0E8;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.11.4.3.1" style="background-color:#E6F0E8;">10.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.11.4.4" style="background-color:#E6F0E8;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.11.4.4.1" style="background-color:#E6F0E8;">9.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.11.4.5" style="background-color:#E6F0E8;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.11.4.5.1" style="background-color:#E6F0E8;">9.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.11.4.6" style="background-color:#E6F0E8;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.11.4.6.1" style="background-color:#E6F0E8;">8.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.11.4.7" style="background-color:#E6F0E8;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.11.4.7.1" style="background-color:#E6F0E8;">9.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.11.4.8" style="background-color:#E6F0E8;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.11.4.8.1" style="background-color:#E6F0E8;">9.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.11.4.9" style="background-color:#E6F0E8;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.11.4.9.1" style="background-color:#E6F0E8;">9.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.11.4.10" style="background-color:#E6F0E8;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.11.4.10.1" style="background-color:#E6F0E8;">7.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.11.4.11" style="background-color:#E6F0E8;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.11.4.11.1" style="background-color:#E6F0E8;">9.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.11.4.12" style="background-color:#E6F0E8;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.11.4.12.1" style="background-color:#E6F0E8;">8.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.11.4.13" style="background-color:#E6F0E8;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.11.4.13.1" style="background-color:#E6F0E8;">9.94</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted on the AnimeGamer model, specifically focusing on the animation shot tokenizer and detokenizer.  The study excludes the Multimodal Large Language Model (MLLM) to isolate the impact of these components.  Rows represent different experimental variations (e.g., using random frames instead of the first frame, reducing parameters in the model, using different fusion methods, removing the warm-up training phase, and removing the decoder adaptation phase).  Columns represent various metrics used to evaluate the quality of the generated animation, including image consistency (CLIP-I, DreamSim), semantic consistency (CLIP-T, CLIP-TE), and motion quality (ACC-F, MAE-F). The 'Ours' row shows the results with the full model, providing a baseline for comparison against the ablation variants.
> <details>
> <summary>read the caption</summary>
> Table 3: Results of the ablation study of our AnimeGamer, where the columns in the table above pertain to the ablation experiments on the tokenizer and de-tokenizer (w/o MLLM).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.01014/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01014/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01014/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01014/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01014/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01014/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01014/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01014/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01014/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01014/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01014/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01014/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01014/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01014/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01014/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01014/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}