---
title: "Unbounded: A Generative Infinite Game of Character Life Simulation"
summary: "UNBOUNDED is a novel generative infinite game using AI to simulate character life in real-time. It overcomes limitations of traditional games by employing a specialized LLM for dynamic game mechanics ....."
categories: ["AI Generated"]
tags: ["🔖 2024-10-24", "🤗 2024-10-25"]
showSummary: true
date: 2024-10-24
draft: false
---

### TL;DR


{{< lead >}}

UNBOUNDED is a novel generative infinite game using AI to simulate character life in real-time. It overcomes limitations of traditional games by employing a specialized LLM for dynamic game mechanics and a new dynamic regional IP-Adapter for consistent visual generation of characters and environments.  The system is evaluated through qualitative and quantitative analysis, demonstrating significant improvements over previous approaches. 

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18975" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
This paper introduces UNBOUNDED, a generative infinite game using LLMs and diffusion models for real-time character life simulation.  It addresses challenges in generating consistent characters and environments across multiple scenes by introducing a novel dynamic regional IP-Adapter with block drop.  The authors also present a distilled LLM game engine for interactive gameplay, achieving interactive speeds by leveraging collaborative strong LLMs and distillation techniques.  The work pushes boundaries in generative game design and provides new technical innovations.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} UNBOUNDED, a generative infinite game that transcends traditional video game limitations using AI. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A novel dynamic regional IP-Adapter with block drop, ensuring consistent character and environment generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A distilled LLM game engine enabling real-time interactive gameplay with open-ended mechanics. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_1_0.png "🔼 Figure 1: An example of UNBOUNDED. We follow the life of Archibus, the user's custom wizard character. The user can interact with the generative game using natural language, and Archibus' hunger, energy and fun meters update accordingly. A spontaneous and unconstrained story unfolds while the user playing, and the character can explore new environments with a myriad of possible actions and unexpected interactions. The game runs in interactive speeds, refreshing every second.")





{{< table-caption caption="🔽 Comparison of UNBOUNDED and other methods for maintaining environment consistency and character consistency. UNBOUNDED achieves the best performance in maintaining consistency, while maintaining comparable semantic alignment with the text prompt. Best scores are in bold." >}}
| Methods | Environment Consistency | Environment Consistency | Environment Consistency | Character Consistency | Character Consistency | Character Consistency | Semantic Alignment |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Methods | CLIP-IE ↑ | DINOE ↑ | DreamSimE ↓ | CLIP-IC ↑ | DINOC ↑ | DreamSim� ↓ | CLIP-T↑ |
| IP-Adapter Ye et al.. 2023 | 0.470 | 0.381 | 0.595 | 0.366 | 0.139 | 0.832 | 0.168 |
| IP-Adapter-Instruct Kowles et al. 2024 | 0.334 | 0.151 | 0.832 | 0.246 | 0.124 | 0.872 | 0.098 |
| StoryDiffusion Zhou etal., 2024b | 0.528 | 0.257 | 0.733 | 0.629 | 0.464 | 0.545 | 0.242 |
| Ours | 0.563 | 0.322 | 0.675 | 0.676 | 0.470 | 0.488 | 0.242 |
{{< /table-caption >}}





<details>
<summary>More on figures
</summary>


![](figures/figures_3_0.png "🔼 Figure 2: Example of UNBOUNDED. Based on an initial user input, UNBOUNDED sets up game simulation environments, and generates character actions in the environments. Users can interact with the character with natural language instructions, exploring the game with unlimited options.")

![](figures/figures_4_0.png "🔼 Figure 3: Generative game examples of UNBOUNDED. The user can insert a custom character into the game, engage with the character through natural language instructions, bring the character to different environments, and interact with it to maintain a healthy state under the games' mechanics.")

![](figures/figures_5_0.png "🔼 Figure 4: (a) Our overall image generation method. We achieve real-time image generation with LCM LORA, maintain character consistency with DreamBooth LoRAs, and introduce a regional IP-Adapter (shown in (c)) for improved environment and character consistency. (b) Our proposed dynamic mask generation separating the environment and character conditioning, preventing interference between the two.")

![](figures/figures_7_0.png "🔼 Figure 6: Overview of our user-simulation data collection process for LLM distillation. (a) We begin by collecting diverse topic and character data, filtered using ROUGE-L for diversity. (b) The World LLM and User LLM interact to generate user-simulation data through multi-round exchanges.")


</details>

------







<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Table 1: Comparison of UNBOUNDED and other methods for maintaining environment consistency and character consistency. UNBOUNDED achieves the best performance in maintaining consistency, while maintaining comparable semantic alignment with the text prompt. Best scores are in bold." >}}
| Character Environment | Story Diffusion IP-Adapter IP-Adapter- Instruct Ours |
| --- | --- |
|  | [V] witch raised her hands and the twisted trunks unwound, their branches stretching towards the sky, making the glowing leaves sparkle in the twilight. |
| Environment Consistency Character Consistency Semantic Alignment | X X x x x x |
|  | [V] wizard kneels by the pond, casting a spell. The water's surface ripples, reflecting a myriad of colors from the luminescent flowers surrounding the clearing. |
| Environment Consistency Character Consistency Semantic Alignment |  |
|  | V V X x X |
|  | Amidst the strange rock formations, [V] panda finds a hidden grove filled with glowing, otherworldly flora. |
| Environment Consistency Character Consistency Semantic Alignment | X V X V X V |
{{< /table-caption >}}

{{< table-caption caption="🔽 Comparison of UNBOUNDED and other methods for maintaining environment consistency and character consistency. UNBOUNDED achieves the best performance in maintaining consistency, while maintaining comparable semantic alignment with the text prompt. Best scores are in bold." >}}
| No. | Drop | IP-Adapter | Scale | CLIP-IE ↑ | DINOE ↑ | DreamSimE ↓ | CLIP-I⌀ ↑ | DINO� ↑ | DreamSim⌀ ↓ | CLIP-T↑ |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1. | X | X | 1.0 | 0.123 | 0.111 | 0.885 | 0.073 | 0.024 | 0.973 | 0.034 |
| 2. |  | X | 1.0 | 0.414 | 0.331 | 0.647 | 0.337 | 0.147 | 0.832 | 0.149 |
| 3. | V | V | 1.0 | 0.563 | 0.322 | 0.675 | 0.676 | 0.470 | 0.488 | 0.242 |
| 4. | X | X | 0.5 | 0.470 | 0.381 | 0.595 | 0.366 | 0.139 | 0.832 | 0.168 |
| 5. |  | X | 0.5 | 0.577 | 0.332 | 0.640 | 0.627 | 0.374 | 0.575 | 0.252 |
| 6. |  | V | 0.5 | 0.549 | 0.263 | 0.726 | 0.705 | 0.514 | 0.450 | 0.246 |
|  |  | Character | Environment | Environment | + Regional No Condition IP-Adapter +Block Drop IP-Adapter | + Regional No Condition IP-Adapter +Block Drop IP-Adapter | + Regional No Condition IP-Adapter +Block Drop IP-Adapter | + Regional No Condition IP-Adapter +Block Drop IP-Adapter | + Regional No Condition IP-Adapter +Block Drop IP-Adapter | + Regional No Condition IP-Adapter +Block Drop IP-Adapter |
|  | lanterns, vibrating with unseen robot. | lanterns, vibrating with unseen robot. | Environment | Environment | lanterns, vibrating with unseen robot. | lanterns, vibrating with unseen robot. | lanterns, vibrating with unseen robot. | lanterns, vibrating with unseen robot. |  |  |
| [V] dog playfully chased its tail under the sway of hanging cobblestone paths slightly |  |  | Environment | Environment |  |  |  |  |  |  |
|  |  |  | Environment | Environment |  |  |  |  |  |  |
| [V] dog cautiously ascends the creaky wooden steps, each one groaning louder as it climbs the narrow, winding staircase of the haunted castle. |  |  | Environment | Environment |  |  |  |  |  |  |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 3: Comparison of UNBOUNDED and different LLMs on serving as game engines for open-ended interactions and integrated game mechanics. We use GPT-4 to provide pairwise scores between our model and other LLMs." >}}
| Model | Overall | Overall | State Update | State Update | Environment Relevance | Environment Relevance | Story Coherence | Story Coherence | Instruction Following | Instruction Following |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  | Base | Ours | Base | Ours | Base | Ours | Base | Ours | Base | Ours |
| Gemma-2B Team et al 2024 | 6.22 | 7.44 | 5.60 | 7.47 | 6.12 | 7.94 | 6.34 | 7.57 | 6.43 | 7.67 |
| Gemma-7B Team et al. 2024 | 6.80 | 7.39 | 6.29 | 7.43 | 7.07 | 7.91 | 6.90 | 7.48 | 6.89 | 7.53 |
| Llama3.2-3B Meta, 2024, | 7.21 | 7.50 | 6.86 | 7.38 | 7.63 | 7.93 | 7.36 | 7.56 | 7.31 | 7.67 |
| Ours-1k | 7.65 | 7.82 | 7.50 | 7.74 | 8.10 | 8.19 | 7.78 | 7.93 | 7.82 | 7.97 |
| GPT-4o OpenAI, 2023 | 7.76 | 7.68 | 7.69 | 7.66 | 8.20 | 8.10 | 7.95 | 7.82 | 7.85 | 7.82 |
{{< /table-caption >}}


</details>

------



### Full paper

{{< gallery >}}

  <img src="paper_images/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

{{< /gallery >}}