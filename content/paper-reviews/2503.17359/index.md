---
title: "Position: Interactive Generative Video as Next-Generation Game Engine"
summary: "Interactive Generative Video (IGV) can revolutionize game creation by using AI to generate endless, novel content for next-gen game engines."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Gaming", "🏢 Hong Kong University of Science and Technology",]
showSummary: true
date: 2025-03-21
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.17359 {{< /keyword >}}
{{< keyword icon="writer" >}} Jiwen Yu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.17359" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.17359" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.17359/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Traditional game development faces creativity and cost challenges due to predetermined content and the need for substantial resources. Current game engines also struggle with personalized content tailored to individual player preferences. Addressing these issues is critical, requiring innovative solutions that minimize costs while enabling the creation of diverse and adaptive gaming experiences.



This research introduces Interactive Generative Video (IGV) as the core of Generative Game Engines (GGE), enabling limitless content generation for next-generation gaming. The paper details GGE's core modules: **Generation, Control, Memory, Dynamics, and Intelligence**. A hierarchical maturity roadmap (L0-L4) guides its evolution, envisioning a future where AI-powered generative systems reshape how games are made and experienced.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Interactive Generative Video (IGV) is proposed as the core technology for next-generation Generative Game Engines (GGE). {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A comprehensive framework is presented, detailing GGE's core modules: Generation, Control, Memory, Dynamics, and Intelligence. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A hierarchical maturity roadmap (L0-L4) is outlined to guide the evolution of GGE systems. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces the **Generative Game Engine (GGE)**, powered by Interactive Generative Video, offering a new paradigm for game development. It could revolutionize content creation by lowering development costs, fostering innovation and opening avenues for AI-driven game experiences and personalized content generation.

------
#### Visual Insights



![](https://arxiv.org/html/2503.17359/extracted/6300123/figure/gf_demo.jpg)

> 🔼 Figure 1 demonstrates GameFactory's capacity to generalize learned action controls from Minecraft to various open-world settings.  The figure showcases examples from the GameFactory homepage depicting diverse environments where the learned control mechanisms successfully enable agent navigation and interaction.
> <details>
> <summary>read the caption</summary>
> Figure 1: Demonstration of GameFactory (Yu et al., 2025)’s ability to generalize action control capabilities learned from Minecraft data to open-domain scenarios. Examples from its homepage showcase various generalized environments where the learned control mechanisms have been successfully applied.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.1">
<tr class="ltx_tr" id="S4.T1.1.1">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S4.T1.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1">Level</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.1.1.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.2.1">
<span class="ltx_p" id="S4.T1.1.1.2.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.2.1.1.1">Name</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.1.1.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.3.1">
<span class="ltx_p" id="S4.T1.1.1.3.1.1" style="width:128.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.3.1.1.1">Technical Features</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.1.1.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.4.1">
<span class="ltx_p" id="S4.T1.1.1.4.1.1" style="width:128.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.4.1.1.1">Application Examples</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.1.1.5" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.5.1">
<span class="ltx_p" id="S4.T1.1.1.5.1.1" style="width:56.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.5.1.1.1">Category</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.2">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S4.T1.1.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">L0</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.1.2.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.2.2.1">
<span class="ltx_p" id="S4.T1.1.2.2.1.1" style="width:85.4pt;">No AI-Assisted Assets Generation</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.1.2.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.2.3.1">
<span class="ltx_p" id="S4.T1.1.2.3.1.1" style="width:128.0pt;">Manual creation and integration of all game assets and logic.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.1.2.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.2.4.1">
<span class="ltx_p" id="S4.T1.1.2.4.1.1" style="width:128.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T1.1.2.4.1.1.1">Super Mario</span>: fixed levels; <span class="ltx_text ltx_font_italic ltx_align_center" id="S4.T1.1.2.4.1.1.2">Tetris</span>: fixed rules.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.1.2.5" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.2.5.1">
<span class="ltx_p" id="S4.T1.1.2.5.1.1" style="width:56.9pt;"><span class="ltx_text" id="S4.T1.1.2.5.1.1.1">Traditional Manual Game Development</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.3">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S4.T1.1.3.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">L1</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.1.3.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.3.2.1">
<span class="ltx_p" id="S4.T1.1.3.2.1.1" style="width:85.4pt;">AI-Assisted Assets Generation</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.1.3.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.3.3.1">
<span class="ltx_p" id="S4.T1.1.3.3.1.1" style="width:128.0pt;">Al-assisted
creation and integration of
game assets and logic.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.1.3.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.3.4.1">
<span class="ltx_p" id="S4.T1.1.3.4.1.1" style="width:128.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T1.1.3.4.1.1.1">Cyberpunk 2077</span>: AI-generated assets; <span class="ltx_text ltx_font_italic ltx_align_center" id="S4.T1.1.3.4.1.1.2">AI Dungeon</span>: real-time NPC dialogues.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.1.3.5" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.3.5.1">
<span class="ltx_p" id="S4.T1.1.3.5.1.1" style="width:56.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.4">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S4.T1.1.4.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">L2</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.1.4.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.4.2.1">
<span class="ltx_p" id="S4.T1.1.4.2.1.1" style="width:85.4pt;">Physics-Compliant Interactive World Generation</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.1.4.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.4.3.1">
<span class="ltx_p" id="S4.T1.1.4.3.1.1" style="width:128.0pt;">Real-time <span class="ltx_text ltx_font_bold ltx_align_center" id="S4.T1.1.4.3.1.1.1">physics-compliant</span> video generation with user <span class="ltx_text ltx_font_bold ltx_align_center" id="S4.T1.1.4.3.1.1.2">interactions</span>, supported by the Dynamics module.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.1.4.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.4.4.1">
<span class="ltx_p" id="S4.T1.1.4.4.1.1" style="width:128.0pt;">E.g., Player sets fire to wooden bridges, AI dynamically renders blazing spans and rerouted enemy paths</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.1.4.5" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.4.5.1">
<span class="ltx_p" id="S4.T1.1.4.5.1.1" style="width:56.9pt;"><span class="ltx_text" id="S4.T1.1.4.5.1.1.1">Next-Gen AI-Driven Generative Game Engine</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.5">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S4.T1.1.5.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">L3</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.1.5.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.5.2.1">
<span class="ltx_p" id="S4.T1.1.5.2.1.1" style="width:85.4pt;">Causal-Reasoning World Simulation</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.1.5.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.5.3.1">
<span class="ltx_p" id="S4.T1.1.5.3.1.1" style="width:128.0pt;">World simulation with <span class="ltx_text ltx_font_bold ltx_align_center" id="S4.T1.1.5.3.1.1.1">causal reasoning</span> across time based on L2, incorporating the Intelligence module.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.1.5.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.5.4.1">
<span class="ltx_p" id="S4.T1.1.5.4.1.1" style="width:128.0pt;">E.g., Killing a faction leader in Act 1 triggers city-wide riots in Act 3.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.1.5.5" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.5.5.1">
<span class="ltx_p" id="S4.T1.1.5.5.1.1" style="width:56.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.6">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="S4.T1.1.6.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">L4</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r ltx_border_t" id="S4.T1.1.6.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.6.2.1">
<span class="ltx_p" id="S4.T1.1.6.2.1.1" style="width:85.4pt;">Self-Evolving World Ecosystem</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r ltx_border_t" id="S4.T1.1.6.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.6.3.1">
<span class="ltx_p" id="S4.T1.1.6.3.1.1" style="width:128.0pt;">Autonomous world <span class="ltx_text ltx_font_bold ltx_align_center" id="S4.T1.1.6.3.1.1.1">evolution</span> with <span class="ltx_text ltx_font_bold ltx_align_center" id="S4.T1.1.6.3.1.1.2">emergent</span> behaviors based on L2 and L3, requiring advanced Intelligence module.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r ltx_border_t" id="S4.T1.1.6.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.6.4.1">
<span class="ltx_p" id="S4.T1.1.6.4.1.1" style="width:128.0pt;">E.g. NPCs self-organize governments and trade as population increases.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r" id="S4.T1.1.6.5" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.6.5.1">
<span class="ltx_p" id="S4.T1.1.6.5.1.1" style="width:56.9pt;"></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table outlines a five-level maturity model (L0-L4) for Generative Game Engines (GGEs), illustrating the progression from traditional game development to AI-driven video generation. Levels L0 and L1 represent traditional manual game development with minimal AI assistance. Levels L2, L3, and L4 showcase next-generation GGEs that leverage video-based world generation, progressing from physics-compliant worlds to causal reasoning and ultimately self-evolving ecosystems.
> <details>
> <summary>read the caption</summary>
> Table 1: Proposed Maturity Levels (L0-L4) of Generative Game Engine. L0-L1 represent traditional manual game development with limited AI assistance, while L2-L4 showcase next-generation game engines featuring video-based world generation.
> </details>





### In-depth insights


#### IGV for GGE Core
Interactive Generative Video (IGV) holds immense potential as the core of Generative Game Engines (GGE) due to its unique capabilities. **IGV transcends traditional video generation by offering user control, memory of context, physics-aware simulations, and causal reasoning.** These features are crucial for creating dynamic and interactive game environments. Traditional game engines rely on pre-made assets, limiting creativity and content. IGV overcomes this by enabling the generation of unlimited, novel content. Its capacity to simulate physics enables realistic interactions within the game world, enhancing immersion. User control allows for interactive experiences, making gameplay more engaging. Furthermore, the long-term memory and causal reasoning abilities of IGV enable the creation of complex narratives and emergent gameplay. Existing video game data can be utilized to train these models.

#### Physics Learning
While the paper doesn't explicitly focus on "Physics Learning", the **Dynamics module** and discussions on **physics-aware world modeling** are highly relevant. The potential for Interactive Generative Video (IGV) to simulate physical laws and interactions offers exciting prospects for game-based physics education. Imagine players learning about gravity, momentum, and collisions through interactive gameplay within a dynamically generated environment. The ability to tune physics parameters, as mentioned in the context, could also allow for exploring different physical constants and their effects. By **visualizing complex physical phenomena**, IGV can offer a more intuitive and engaging approach to physics education compared to traditional methods. Overcoming the challenge of generating accurate and diverse physical simulations will be crucial for realizing this educational potential and creating truly immersive and informative gaming experiences. Furthermore, the development of evaluation benchmarks for assessing the physical accuracy of generated videos, as suggested in the paper, would be essential for ensuring the reliability of IGV as a learning tool. The connection between **causal reasoning and physics** should also be strengthened.

#### GGE Framework
The proposed GGE framework consists of five core modules. **Generation** offers fundamental video creation, while **Control** allows user interaction.  **Memory** preserves historical data for consistency, and **Dynamics** models physical rules. The **Intelligence** module introduces causal reasoning, enabling realistic world behavior. GGE also have **Gameplay** module, implementing external rules such as designer-imposed rewards or penality, objectives, and constraints. These components work together to create dynamic and immersive gaming experience.

#### GGE Evolution
The evolution of Generative Game Engines (GGEs) represents a staged progression towards increasingly sophisticated and autonomous game creation. **The initial stage (L0-L1) mirrors traditional game development**, relying heavily on manual asset creation, with AI serving primarily as a tool to accelerate content generation, but the game structure remains pre-defined. The real shift occurs at **L2, marked by the emergence of physics-compliant, interactive worlds powered by video generation**. This stage signifies a move away from fixed content toward dynamically generated environments shaped by player actions. Progressing to **L3 introduces causal reasoning**, enabling the game world to respond to player choices in a long-term, consequential manner, generating complex storylines. The final and most advanced **stage, L4, envisions self-evolving game worlds**, where rules and behaviors emerge autonomously, leading to virtual ecosystems populated by intelligent agents, mirroring metaverses. This staged evolution provides a roadmap, highlighting key areas for research, including enhanced physics understanding, improved reasoning capabilities, and the development of sophisticated AI agents.

#### IGV Limitations
**IGV (Interactive Generative Video) limitations** stem from several factors. Current models lack sufficient **physical understanding**, making realistic game environments difficult to create. Objects' trajectories, velocities, and interactions are often inaccurate. **Scene consistency** is also a challenge. Simple camera movements can cause dramatic and unrealistic scene changes, breaking spatial continuity. Furthermore, current IGV models have **limited logical reasoning** capabilities, hindering complex narrative progression. They function more as rendering engines, failing to address deeper game environment logic. To overcome the limitation, combine video models with **LLMs to enable robust understanding**, high-quality data is essential for addressing the limitations and to effectively function as GGE's core technology.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.17359/x1.png)

> 🔼 Figure 2 showcases the physics simulation capabilities of advanced video generation models.  The top half displays examples from NVIDIA's Cosmos (2025) model, illustrating its ability to generate realistic simulations across various domains. These include scenarios featuring robots interacting with objects, self-driving cars navigating complex environments, manufacturing processes, and everyday activities in home settings.  All examples demonstrate the model's understanding and accurate depiction of physical laws. The bottom half presents examples of human motion sequences generated by the Kling model, further highlighting the capacity of these models to accurately simulate complex physical interactions.
> <details>
> <summary>read the caption</summary>
> Figure 2: Physics-aware generation capabilities of video models. Top: Examples from Cosmos (NVIDIA, 2025) demonstrating physical understanding in diverse scenarios including robotics, autonomous driving, manufacturing, and home environments. Bottom: Human motion examples generated by Kling.
> </details>



![](https://arxiv.org/html/2503.17359/x2.png)

> 🔼 This figure illustrates the proposed framework for a Generative Game Engine (GGE).  Part (a) shows a diagram of the GGE architecture, highlighting the interactions between its five core modules: Generation, Control, Memory, Dynamics, and Intelligence, and an additional GamePlay module. Part (b) provides a table listing the technical keywords associated with each module.  Examples of how each module's capabilities are applied in various games are displayed in gray boxes, with further details discussed in the paper.
> <details>
> <summary>read the caption</summary>
> Figure 3: Proposed framework of Generative Game Engine (GGE). (a) Framework of GGE shows the architecture and interactions between modules. (b) Technical keywords of each module. The game examples shown in gray boxes demonstrate typical applications of each module’s capabilities, with detailed analysis provided in the main text.
> </details>



![](https://arxiv.org/html/2503.17359/x3.png)

> 🔼 Figure 4 showcases examples from the GameNGen model (Valevski et al., 2024) demonstrating interactive gameplay.  The figure visually represents how users can control character actions within videos generated by the model, illustrating the model's ability to produce dynamic and responsive game environments.
> <details>
> <summary>read the caption</summary>
> Figure 4: Character control demonstrations from GameNGen (Valevski et al., 2024), showing interactive gameplay operations in generated videos.
> </details>



![](https://arxiv.org/html/2503.17359/x4.png)

> 🔼 This figure illustrates the Control module within the Interactive Generative Video (IGV) framework.  The Control module is responsible for managing player interactions within the game environment. It is divided into two main aspects:  1.  **Navigation Control:** This aspect allows players to navigate the game's virtual world.  This could involve moving a camera, moving a character, or adjusting the player's viewpoint. 2. **Interaction Control:** This aspect enables players to interact with objects and elements within the game environment.  Examples include picking up items, manipulating objects, breaking objects, or interacting with characters.  The diagram visually represents these control mechanisms.
> <details>
> <summary>read the caption</summary>
> Figure 5: The Control module of IGV manages player control through two aspect: Navigation Control and Interaction Control.
> </details>



![](https://arxiv.org/html/2503.17359/x5.png)

> 🔼 The figure illustrates the Memory module within the Interactive Generative Video (IGV) framework.  This module is crucial for maintaining consistency in generated videos over time. It's divided into two main components: static memory and dynamic memory.  Static memory stores persistent elements of the game world, such as maps, building structures, and character models.  Dynamic memory tracks temporary elements and changes within the game, including character animations, movement, and environmental effects like weather changes. The interplay between static and dynamic memory ensures that generated videos remain coherent and consistent despite changes in game states.
> <details>
> <summary>read the caption</summary>
> Figure 6: The Memory module of IGV consists of two components: static memory and dynamic memory.
> </details>



![](https://arxiv.org/html/2503.17359/x6.png)

> 🔼 The figure illustrates the Dynamics module within the Interactive Generative Video (IGV) framework. This module is responsible for ensuring that the generated videos adhere to the laws of physics.  It achieves this through two key approaches: (1) the simulation of fundamental physical laws (like gravity, collisions, and momentum) which govern the interactions within the simulated world; (2) the ability to adjust or 'tune' physics parameters (such as gravity strength or friction) to achieve desired gameplay effects, thus creating flexibility in how the physics within the game world are implemented. The image visually depicts these concepts.
> <details>
> <summary>read the caption</summary>
> Figure 7: The Dynamics module of IGV focuses on two aspects: physical laws and physics tuning.
> </details>



![](https://arxiv.org/html/2503.17359/x7.png)

> 🔼 The Intelligence module within the proposed Interactive Generative Video (IGV) framework is responsible for two key functionalities: causal reasoning and self-evolution.  Causal reasoning allows the model to understand and predict long-term consequences within the simulated environment. This means the system can anticipate how changes made by players (or the system itself) will affect the world over time. Self-evolution refers to the model's ability to create and evolve dynamic rules and behaviors within the simulated world.  This could result in the emergence of new civilizations, evolving ecosystems, or other unforeseen events that were not explicitly programmed.
> <details>
> <summary>read the caption</summary>
> Figure 8: The Intelligence module of IGV implements two aspects: causal reasoning and self-evolution.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.17359/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17359/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17359/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17359/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17359/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17359/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17359/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17359/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17359/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17359/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17359/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17359/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17359/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17359/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}