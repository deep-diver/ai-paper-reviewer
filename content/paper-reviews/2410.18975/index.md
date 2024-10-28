---
title: "Unbounded: A Generative Infinite Game of Character Life Simulation"
summary: "UNBOUNDED, a generative infinite game, uses AI to create a continuously evolving character life simulation with open-ended interactions and real-time visual generation."
categories: ["AI Generated"]
tags: ["🔖 24-10-24", "🤗 24-10-25"]
showSummary: true
date: 2024-10-24
draft: false
---

### TL;DR


{{< lead >}}

UNBOUNDED is a groundbreaking video game that uses artificial intelligence to create a never-ending simulation of a character's life. Unlike typical video games with fixed rules and endings, UNBOUNDED generates its gameplay and visuals in real-time using AI models. Players interact with the character via natural language, shaping the story's direction.  This innovative approach uses a specialized large language model (LLM) to dynamically generate game mechanics, narratives, and character interactions.  A new "dynamic regional image prompt adapter" ensures that the game's visuals remain consistent across various environments. The research demonstrates significant improvements in character life simulation, narrative coherence, and visual quality, showcasing the potential of generative AI to revolutionize interactive entertainment.  The developers claim UNBOUNDED represents the first generative infinite game, a significant advance over finite, pre-defined systems.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18975" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.18975" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is highly relevant to researchers in AI, game development, and computer graphics. It introduces a novel concept of generative infinite games, pushing the boundaries of traditional game design. The technical innovations in LLM and vision generation, particularly the regional IP-Adapter, offer significant advancements for controllable image generation.  The work opens up new avenues for research into AI-driven interactive experiences and opens up new possibilities in the design of more dynamic and engaging games.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} UNBOUNDED introduces the novel concept of a generative infinite game, transcending traditional finite game systems. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The paper details technical innovations, including a specialized LLM for dynamic game mechanics and a novel dynamic regional image prompt adapter for consistent visual generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Evaluations show significant improvements in character life simulation, user instruction following, narrative coherence, and visual consistency compared to traditional approaches. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_1_0.png)

> 🔼 The figure shows a sequence of game screens illustrating the UNBOUNDED game, where a user interacts with a custom wizard character through natural language, influencing the character's actions and environment.
> <details>
> <summary>read the caption</summary>
> Figure 1: An example of UNBOUNDED. We follow the life of Archibus, the user's custom wizard character. The user can interact with the generative game using natural language, and Archibus' hunger, energy and fun meters update accordingly. A spontaneous and unconstrained story unfolds while the user playing, and the character can explore new environments with a myriad of possible actions and unexpected interactions. The game runs in interactive speeds, refreshing every second.
> </details>







{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td rowspan="2">Methods</td><td colspan="3">Environment Consistency</td><td colspan="3">Character Consistency</td><td>Semantic Alignment</td></tr><tr><td>CLIP-IE ↑</td><td>DINOE ↑</td><td>DreamSimE ↓</td><td>CLIP-IC ↑</td><td>DINOC ↑</td><td>DreamSim� ↓</td><td>CLIP-T↑</td></tr><tr><td>IP-Adapter Ye et al.. 2023</td><td>0.470</td><td>0.381</td><td>0.595</td><td>0.366</td><td>0.139</td><td>0.832</td><td>0.168</td></tr><tr><td>IP-Adapter-Instruct Kowles et al. 2024</td><td>0.334</td><td>0.151</td><td>0.832</td><td>0.246</td><td>0.124</td><td>0.872</td><td>0.098</td></tr><tr><td>StoryDiffusion Zhou etal., 2024b</td><td>0.528</td><td>0.257</td><td>0.733</td><td>0.629</td><td>0.464</td><td>0.545</td><td>0.242</td></tr><tr><td>Ours</td><td>0.563</td><td>0.322</td><td>0.675</td><td>0.676</td><td>0.470</td><td>0.488</td><td>0.242</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 compares UNBOUNDED against other methods across environment and character consistency, showing UNBOUNDED's superior performance while maintaining semantic alignment with text prompts.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of UNBOUNDED and other methods for maintaining environment consistency and character consistency. UNBOUNDED achieves the best performance in maintaining consistency, while maintaining comparable semantic alignment with the text prompt. Best scores are in bold.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](figures/figures_3_0.png)

> 🔼 Figure 2 shows an example of UNBOUNDED, illustrating the game's setup, environment generation, character actions, and user interaction using natural language instructions.
> <details>
> <summary>read the caption</summary>
> Figure 2: Example of UNBOUNDED. Based on an initial user input, UNBOUNDED sets up game simulation environments, and generates character actions in the environments. Users can interact with the character with natural language instructions, exploring the game with unlimited options.
> </details>



![](figures/figures_4_0.png)

> 🔼 The figure shows various examples of UNBOUNDED showcasing different characters in diverse game environments, interacting via natural language instructions.
> <details>
> <summary>read the caption</summary>
> Figure 3: Generative game examples of UNBOUNDED. The user can insert a custom character into the game, engage with the character through natural language instructions, bring the character to different environments, and interact with it to maintain a healthy state under the games' mechanics.
> </details>



![](figures/figures_5_0.png)

> 🔼 Figure 4 illustrates the overall image generation method of UNBOUNDED, highlighting real-time image generation, character consistency using DreamBooth LoRAs, and a novel regional IP-Adapter for improved consistency between environment and character.
> <details>
> <summary>read the caption</summary>
> Figure 4: (a) Our overall image generation method. We achieve real-time image generation with LCM LORA, maintain character consistency with DreamBooth LoRAs, and introduce a regional IP-Adapter (shown in (c)) for improved environment and character consistency. (b) Our proposed dynamic mask genreation separating the environment and character conditioning, preventing interference between the two.
> </details>



![](figures/figures_7_0.png)

> 🔼 The figure illustrates the two-stage process of collecting user-simulation data for LLM distillation, including topic and character data collection and user-simulation data generation through LLM interaction.
> <details>
> <summary>read the caption</summary>
> Figure 6: Overview of our user-simulation data collection process for LLM distillation. (a) We begin by collecting diverse topic and character data, filtered using ROUGE-L for diversity. (b) The World LLM and User LLM interact to generate user-simulation data through multi-round exchanges.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='3' style='font-size:16px'><tr><td>Character Environment</td><td>Story Diffusion IP-Adapter IP-Adapter- Instruct Ours</td></tr><tr><td></td><td>[V] witch raised her hands and the twisted trunks unwound, their branches stretching towards the sky, making the glowing leaves sparkle in the twilight.</td></tr><tr><td>Environment Consistency Character Consistency Semantic Alignment</td><td>X X x x x x</td></tr><tr><td></td><td>[V] wizard kneels by the pond, casting a spell. The water's surface ripples, reflecting a myriad of colors from the luminescent flowers surrounding the clearing.</td></tr><tr><td>Environment Consistency Character Consistency Semantic Alignment</td><td></td></tr><tr><td></td><td>V V X x X</td></tr><tr><td></td><td>Amidst the strange rock formations, [V] panda finds a hidden grove filled with glowing, otherworldly flora.</td></tr><tr><td>Environment Consistency Character Consistency Semantic Alignment</td><td>X V X V X V</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 compares UNBOUNDED's performance against other methods on maintaining environment and character consistency during image generation, highlighting UNBOUNDED's superior performance while preserving semantic alignment.


{{< table-caption >}}
<br><table id='3' style='font-size:14px'><tr><td>No.</td><td>Drop</td><td>IP-Adapter</td><td>Scale</td><td>CLIP-IE ↑</td><td>DINOE ↑</td><td>DreamSimE ↓</td><td>CLIP-I⌀ ↑</td><td>DINO� ↑</td><td>DreamSim⌀ ↓</td><td>CLIP-T↑</td></tr><tr><td>1.</td><td>X</td><td>X</td><td>1.0</td><td>0.123</td><td>0.111</td><td>0.885</td><td>0.073</td><td>0.024</td><td>0.973</td><td>0.034</td></tr><tr><td>2.</td><td></td><td>X</td><td>1.0</td><td>0.414</td><td>0.331</td><td>0.647</td><td>0.337</td><td>0.147</td><td>0.832</td><td>0.149</td></tr><tr><td>3.</td><td>V</td><td>V</td><td>1.0</td><td>0.563</td><td>0.322</td><td>0.675</td><td>0.676</td><td>0.470</td><td>0.488</td><td>0.242</td></tr><tr><td>4.</td><td>X</td><td>X</td><td>0.5</td><td>0.470</td><td>0.381</td><td>0.595</td><td>0.366</td><td>0.139</td><td>0.832</td><td>0.168</td></tr><tr><td>5.</td><td></td><td>X</td><td>0.5</td><td>0.577</td><td>0.332</td><td>0.640</td><td>0.627</td><td>0.374</td><td>0.575</td><td>0.252</td></tr><tr><td>6.</td><td></td><td>V</td><td>0.5</td><td>0.549</td><td>0.263</td><td>0.726</td><td>0.705</td><td>0.514</td><td>0.450</td><td>0.246</td></tr><tr><td rowspan="5"></td><td rowspan="5"></td><td>Character</td><td rowspan="5" colspan="2">Environment</td><td colspan="6">+ Regional No Condition IP-Adapter +Block Drop IP-Adapter</td></tr><tr><td></td><td colspan="6">lanterns, vibrating with unseen robot.</td></tr><tr><td>[V] dog playfully chased its tail under the sway of hanging cobblestone paths slightly</td><td colspan="6"></td></tr><tr><td></td><td colspan="6"></td></tr><tr><td>[V] dog cautiously ascends the creaky wooden steps, each one groaning louder as it climbs the narrow, winding staircase of the haunted castle.</td><td colspan="6"></td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 compares UNBOUNDED's performance against other methods in maintaining environment and character consistency in image generation while considering semantic alignment with text prompts.


{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td>Model</td><td colspan="2">Overall</td><td colspan="2">State Update</td><td colspan="2">Environment Relevance</td><td colspan="2">Story Coherence</td><td colspan="2">Instruction Following</td></tr><tr><td></td><td>Base</td><td>Ours</td><td>Base</td><td>Ours</td><td>Base</td><td>Ours</td><td>Base</td><td>Ours</td><td>Base</td><td>Ours</td></tr><tr><td>Gemma-2B Team et al 2024</td><td>6.22</td><td>7.44</td><td>5.60</td><td>7.47</td><td>6.12</td><td>7.94</td><td>6.34</td><td>7.57</td><td>6.43</td><td>7.67</td></tr><tr><td>Gemma-7B Team et al. 2024</td><td>6.80</td><td>7.39</td><td>6.29</td><td>7.43</td><td>7.07</td><td>7.91</td><td>6.90</td><td>7.48</td><td>6.89</td><td>7.53</td></tr><tr><td>Llama3.2-3B Meta, 2024,</td><td>7.21</td><td>7.50</td><td>6.86</td><td>7.38</td><td>7.63</td><td>7.93</td><td>7.36</td><td>7.56</td><td>7.31</td><td>7.67</td></tr><tr><td>Ours-1k</td><td>7.65</td><td>7.82</td><td>7.50</td><td>7.74</td><td>8.10</td><td>8.19</td><td>7.78</td><td>7.93</td><td>7.82</td><td>7.97</td></tr><tr><td>GPT-4o OpenAI, 2023</td><td>7.76</td><td>7.68</td><td>7.69</td><td>7.66</td><td>8.20</td><td>8.10</td><td>7.95</td><td>7.82</td><td>7.85</td><td>7.82</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 3 compares UNBOUNDED's performance against other LLMs in aspects like state updates, environment relevance, story coherence, and instruction following, using GPT-4 for pairwise scoring.


</details>


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