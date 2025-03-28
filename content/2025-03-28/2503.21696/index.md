---
title: "Embodied-Reasoner: Synergizing Visual Search, Reasoning, and Action for Embodied Interactive Tasks"
summary: "Embodied-Reasoner: Integrates visual search, reasoning, and action for interactive tasks, outperforming existing models in embodied environments."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Embodied AI", "🏢 Zhejiang University",]
showSummary: true
date: 2025-03-27
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.21696 {{< /keyword >}}
{{< keyword icon="writer" >}} Wenqi Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.21696" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.21696" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.21696/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Deep thinking models excel in math and coding but struggle with embodied tasks needing constant environment interaction. **This paper introduces Embodied-Reasoner**, which brings 01-style reasoning to embodied search. Unlike logic-based math reasoning, embodied tasks need spatial understanding, temporal reasoning, and reflection using interaction history. It includes 9.3k Observation-Thought-Action trajectories with 64k images and 90k thinking processes for analysis and planning.



The model trains in three stages: imitation learning, self-exploration through rejection sampling, and self-correction using reflection tuning. **Embodied-Reasoner outperforms visual reasoning models like OpenAI 01, 03-mini, and Claude-3.7 by +9%, 24%, and +13% respectively**. It reduces repeated searches and logical errors, excelling in complex tasks. Real-world tests prove its superiority with fewer repeated searches and logical inconsistencies.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces a new framework for extending deep-thinking to embodied scenarios. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Presents a data engine that synthesizes diverse embodied reasoning trajectories. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Demonstrates superior performance over state-of-the-art models in complex, long-horizon tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper offers a valuable dataset and model for **embodied AI research**. It tackles the challenges of interactive reasoning, paving the way for more intelligent agents in complex environments. It opens doors for future work in long-horizon tasks and real-world applications.

------
#### Visual Insights



![](https://arxiv.org/html/2503.21696/x1.png)

> 🔼 The figure illustrates an embodied interactive task where an agent searches for objects within an unfamiliar room.  The Embodied-Reasoner model is introduced, showcasing its ability to engage in spontaneous reasoning and interact with the environment.  Before each action, the model generates diverse thoughts (e.g., self-reflection, spatial reasoning), creating an image-text interleaved trajectory.  This approach results in consistent reasoning and efficient search strategies.  In contrast, the figure highlights how OpenAI's o3-mini model frequently performs repetitive searches and demonstrates logical inconsistencies, leading to a higher failure rate in completing the task.
> <details>
> <summary>read the caption</summary>
> Figure 1: We design an embodied interactive task: searching for objects in an unknown room. Then we propose Embodied-Reasoner, which presents spontaneous reasoning and interaction ability. Before each action, it generates diverse thoughts, e.g., self-reflection or spatial reasoning, forming an image-text interleaved trajectory. It shows consistent reasoning and efficient search behaviors, whereas OpenAI o3-mini often exhibits repetitive searches and logical inconsistencies with higher failure rates.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.6">
<tr class="ltx_tr" id="S3.T1.3.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_tt" id="S3.T1.3.3.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.4.1" style="font-size:80%;">Stage</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T1.3.3.5" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S3.T1.3.3.5.1" style="font-size:80%;">#</span><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.5.2" style="font-size:80%;">Trajectory</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S3.T1.3.3.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.6.1" style="font-size:80%;">Source</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T1.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S3.T1.1.1.1.2"></span><span class="ltx_text" id="S3.T1.1.1.1.1" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.1.1.1.1.1">
<span class="ltx_tr" id="S3.T1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.1.1.1.1.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;">#<span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1.1.1.1">Image<sub class="ltx_sub" id="S3.T1.1.1.1.1.1.1.1.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S3.T1.1.1.1.1.1.1.1.1.1.1">all</span></sub></span></span></span>
</span></span><span class="ltx_text" id="S3.T1.1.1.1.3"></span><span class="ltx_text" id="S3.T1.1.1.1.4" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T1.2.2.2" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S3.T1.2.2.2.2"></span><span class="ltx_text" id="S3.T1.2.2.2.1" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.2.2.2.1.1">
<span class="ltx_tr" id="S3.T1.2.2.2.1.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.2.2.2.1.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;">#<span class="ltx_text ltx_font_bold" id="S3.T1.2.2.2.1.1.1.1.1">Image<sub class="ltx_sub" id="S3.T1.2.2.2.1.1.1.1.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S3.T1.2.2.2.1.1.1.1.1.1.1">max</span></sub></span></span></span>
</span></span><span class="ltx_text" id="S3.T1.2.2.2.3"></span><span class="ltx_text" id="S3.T1.2.2.2.4" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T1.3.3.3" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S3.T1.3.3.3.2"></span><span class="ltx_text" id="S3.T1.3.3.3.1" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.3.3.3.1.1">
<span class="ltx_tr" id="S3.T1.3.3.3.1.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.3.3.3.1.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;">#<span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.1.1.1.1.1">Action<sub class="ltx_sub" id="S3.T1.3.3.3.1.1.1.1.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S3.T1.3.3.3.1.1.1.1.1.1.1">avg</span></sub></span></span></span>
</span></span><span class="ltx_text" id="S3.T1.3.3.3.3"></span><span class="ltx_text" id="S3.T1.3.3.3.4" style="font-size:80%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_tt" id="S3.T1.4.4.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S3.T1.4.4.1.1" style="font-size:80%;">Train</span><sub class="ltx_sub" id="S3.T1.4.4.1.2"><span class="ltx_text ltx_font_italic" id="S3.T1.4.4.1.2.1" style="font-size:80%;">1st</span></sub>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T1.4.4.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S3.T1.4.4.2.1" style="font-size:80%;">1,128</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S3.T1.4.4.3" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S3.T1.4.4.3.1"></span><span class="ltx_text" id="S3.T1.4.4.3.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.4.4.3.2.1">
<span class="ltx_tr" id="S3.T1.4.4.3.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.4.4.3.2.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;">Synthesis</span></span>
</span></span><span class="ltx_text" id="S3.T1.4.4.3.3"></span><span class="ltx_text" id="S3.T1.4.4.3.4" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T1.4.4.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S3.T1.4.4.4.1" style="font-size:80%;">4636</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T1.4.4.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S3.T1.4.4.5.1" style="font-size:80%;">11</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T1.4.4.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S3.T1.4.4.6.1" style="font-size:80%;">4.11</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T1.5.5.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S3.T1.5.5.1.1" style="font-size:80%;">Train</span><sub class="ltx_sub" id="S3.T1.5.5.1.2"><span class="ltx_text ltx_font_italic" id="S3.T1.5.5.1.2.1" style="font-size:80%;">2nd</span></sub>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.5.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S3.T1.5.5.2.1" style="font-size:80%;">6,246</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.5.5.3" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S3.T1.5.5.3.1"></span><span class="ltx_text" id="S3.T1.5.5.3.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.5.5.3.2.1">
<span class="ltx_tr" id="S3.T1.5.5.3.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.5.5.3.2.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;">Self-Explore</span></span>
</span></span><span class="ltx_text" id="S3.T1.5.5.3.3"></span><span class="ltx_text" id="S3.T1.5.5.3.4" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.5.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S3.T1.5.5.4.1" style="font-size:80%;">45.8k</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.5.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S3.T1.5.5.5.1" style="font-size:80%;">26</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.5.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S3.T1.5.5.6.1" style="font-size:80%;">7.33</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T1.6.6.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S3.T1.6.6.1.1" style="font-size:80%;">Train</span><sub class="ltx_sub" id="S3.T1.6.6.1.2"><span class="ltx_text ltx_font_italic" id="S3.T1.6.6.1.2.1" style="font-size:80%;">3rd</span></sub>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.6.6.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S3.T1.6.6.2.1" style="font-size:80%;">2,016</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.6.6.3" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S3.T1.6.6.3.1"></span><span class="ltx_text" id="S3.T1.6.6.3.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.6.6.3.2.1">
<span class="ltx_tr" id="S3.T1.6.6.3.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.6.6.3.2.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;">Synthesis</span></span>
</span></span><span class="ltx_text" id="S3.T1.6.6.3.3"></span><span class="ltx_text" id="S3.T1.6.6.3.4" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.6.6.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S3.T1.6.6.4.1" style="font-size:80%;">13.8k</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.6.6.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S3.T1.6.6.5.1" style="font-size:80%;">29</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.6.6.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S3.T1.6.6.6.1" style="font-size:80%;">8.63</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T1.6.7.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S3.T1.6.7.1.1" style="font-size:80%;">Total</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.6.7.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S3.T1.6.7.2.1" style="font-size:80%;">9,390</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.6.7.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S3.T1.6.7.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.6.7.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S3.T1.6.7.4.1" style="font-size:80%;">64k</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.6.7.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S3.T1.6.7.5.1" style="font-size:80%;">29</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.6.7.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S3.T1.6.7.6.1" style="font-size:80%;">7.22</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.6.8.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S3.T1.6.8.1.1" style="font-size:80%;">Testset</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.6.8.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S3.T1.6.8.2.1" style="font-size:80%;">809</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb ltx_border_t" id="S3.T1.6.8.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S3.T1.6.8.3.1" style="font-size:80%;">Human</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.6.8.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S3.T1.6.8.4.1" style="font-size:80%;">4.9k</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.6.8.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S3.T1.6.8.5.1" style="font-size:80%;">29</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.6.8.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S3.T1.6.8.6.1" style="font-size:80%;">6.06</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table summarizes the dataset used for training and testing the Embodied-Reasoner model.  The training dataset consists of 9,390 ⟨task, trajectory⟩ pairs, where each pair includes a task instruction and the corresponding sequence of observations, thoughts, and actions taken by an agent in the AI2-THOR simulator.  The trajectories were synthesized using a data engine, which automatically generates coherent and diverse sequences of actions and accompanying thoughts.  In addition to this synthesized training data, 809 novel testing tasks were manually annotated with key actions to enable a comprehensive evaluation of the model.
> <details>
> <summary>read the caption</summary>
> Table 1: We synthesize 9.3k𝑘kitalic_k ⟨⟨\langle⟨task, trajectory⟩⟩\rangle⟩ for training. Also, we manually annotate key actions for 809 novel testing tasks.
> </details>





### In-depth insights


#### Embodied Logic
**Embodied logic** focuses on how reasoning is integrated with physical interaction and perception. It's about understanding how agents, whether robots or humans, make decisions and solve problems while actively engaging with their environment. This involves a **synergy of perception, cognition, and action**, where logical deductions are informed by real-time sensory input. Unlike abstract reasoning, embodied logic considers **spatial understanding, temporal awareness, and the agent's interaction history**.  Models employing embodied logic need to address challenges such as **extended multimodal interaction**, where reasoning is based on a continuous stream of visual and textual data. Further, they must handle **diverse reasoning modalities**, such as situational analysis, spatial reasoning, and self-reflection, which are essential for navigating and manipulating the physical world. **Embodied-Reasoner** addresses this by synthesizing coherent observation-thought-action trajectories. The ultimate goal is to create AI agents that can reason, plan, and act effectively in complex, real-world scenarios, similar to how humans do.

#### Visuomotor Tuning
While 'Visuomotor Tuning' isn't explicitly in the paper, the concept is interwoven within the embodied AI task. The paper leverages visuomotor coordination through its three-stage training: imitation, exploration, and reflection. **Imitation learning initiates basic visuomotor skills**, exploration refines action selection based on visual feedback, and reflection corrects errors, essentially tuning the policy. The framework emphasizes spatial reasoning and memory. The agent uses observations and previous actions to plan and adjust strategies, indicating visuomotor tuning is essential for navigation, object manipulation, and more. **Error correction further hones this by learning from failures**. By incorporating real-time visual processing with reasoned actions, the model exhibits a form of adaptive visuomotor tuning, crucial for long-horizon tasks.

#### Data Engine
The paper introduces a data engine to **synthesize Observation-Thought-Action trajectories**, crucial for training an embodied agent. It automates the generation of **coherent and diverse datasets**, addressing the limitations of existing datasets. The data engine leverages **task templates and an affiliation graph** to ensure constraint satisfaction and derive key actions. It **integrates LLMs** to diversify instructions and **synthesize reasoning tokens**, creating a realistic interactive experience. This methodology is essential to equip the embodied agent in **planning and decision making** and the ability to exhibit behaviors when interacting with novel situations and environments.

#### Iterative Refine
Iterative refinement, a cornerstone in diverse fields, emphasizes incremental improvements. In the context of research papers, it likely denotes a methodology where initial results are progressively refined through multiple cycles of experimentation, analysis, and adjustment. This process is crucial for **robustness and accuracy**. It helps in **eliminating errors**, and refining models for **optimal performance**. Such an approach contrasts with single-pass methods, highlighting a commitment to thoroughness and nuanced understanding by continually revisiting and improving on prior work. This dedication often leads to a more credible result, better-optimized parameters, and a higher degree of confidence in the findings. Further research is needed to fully validate the results. 

#### Beyond Robotics
While the research paper primarily focuses on synergizing visual search, reasoning, and action within embodied interactive tasks, the concept of 'Beyond Robotics' suggests exploring broader implications and future directions. **Traditional robotics** often emphasizes task execution in structured environments, but this paper implicitly pushes for **greater adaptability and cognitive capabilities in robots operating in dynamic and unstructured settings**. Envisioning the future, we anticipate robots that seamlessly integrate with human environments, **understanding nuanced instructions**, adapting to unexpected changes, and even **exhibiting a degree of creativity** in problem-solving. By endowing robots with advanced perception, reasoning, and self-reflection mechanisms, we move beyond mere task completion and toward genuinely intelligent and helpful robotic companions. This could mean deploying similar models in more **high-stakes environments** such as search and rescue or hazardous material handling.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.21696/x2.png)

> 🔼 The figure showcases the Embodied-Reasoner's superior performance in handling complex, interactive tasks compared to traditional Vision-Language Models (VLMs). It highlights the model's ability to generate spontaneous and coherent thoughts (analysis, reflection, planning) across multiple steps.  Specifically, it demonstrates how Embodied-Reasoner effectively analyzes the environment (#1, #3), considers previously missed information (#4), reasons using the latest observations (#5), and recalls previous cues to create efficient plans (#9).  This contrasts with traditional VLMs, which often struggle with long-horizon tasks, leading to inconsistent or illogical actions, such as forgetting tasks or repetitive searching.
> <details>
> <summary>read the caption</summary>
> Figure 2: Embodied-Reasoner exhibits spontaneous thinking behaviors, e.g., analyzing environmental states (#1,3), reflecting on missed details (#4), reasoning based on the latest observations (#5), and recalling cues for efficient planning (#9). These thoughts remain coherent and logically consistent despite spanning multiple rounds. In contrast, general VLMs lacking thinking abilities struggle with long-horizon interactive tasks and produce unreasonable actions, e.g., forget tasks or repetitive searching.
> </details>



![](https://arxiv.org/html/2503.21696/x3.png)

> 🔼 Figure 3 illustrates the process of creating a dataset for training an embodied reasoning model and the three-stage training process used. The left side shows how instructions are generated from task templates and an affiliation graph, which represents relationships between objects, is built.  Exploratory actions and interleaved thoughts are then added to create interactive trajectories.  The right side depicts the three-stage training recipe: 1) imitation learning using the synthesized trajectories, 2) self-exploration through rejection sampling to enhance exploration abilities, and 3) self-correction by adding anomalous states and reflective thoughts to refine the model's behavior.  The final outcome is the Embodied-Reasoner model.
> <details>
> <summary>read the caption</summary>
> Figure 3: Left: Data Engine for <<<Instruction, Interactive Trajectory>>> synthesis. First, we synthesize instructions from task templates, and build an affiliation graph from scene’s meta-data. It enables us to derive key actions needed for task. We add exploratory actions and insert thinking thoughts between observation and actions. Right: Three-stage training recipe. ①We fine-tune on synthesized trajectory to develop interaction skills. ②We sample multiple trajectories on novel tasks and evaluate their correctness. The successful ones are used for developing its exploring abilities. ③We continue to sample trajectories using updated model, injecting anomalous states and reflective thoughts in successful cases and correcting errors in failed ones. This self-correction training yields Embodied-Reasoner.
> </details>



![](https://arxiv.org/html/2503.21696/x4.png)

> 🔼 This figure visualizes the frequency of five different types of thought processes (Situation Analysis, Task Planning, Spatial Reasoning, Self-Reflection, and Double Verification) within the generated embodied reasoning trajectories.  It also shows the dynamic transitions between these thought types, highlighting their flexible and interconnected nature within the problem-solving process. This demonstrates the model's ability to adapt its reasoning approach depending on the task's demands and the current situation.
> <details>
> <summary>read the caption</summary>
> Figure 4: We analyze the frequency of five types of thoughts and their flexible transition relationships in all trajectories.
> </details>



![](https://arxiv.org/html/2503.21696/x5.png)

> 🔼 Figure 5 illustrates the relationship between task complexity, model performance, and the number of reasoning tokens generated.  The x-axis represents task length (number of key actions required), indicating increasing complexity. The y-axis shows two key metrics: success rate and the number of reasoning tokens produced by the model.  The figure demonstrates that as task complexity increases (longer task lengths), the success rate of baseline models drops significantly. However, the Embodied-Reasoner model maintains high success rates even for complex tasks, achieving this by generating a substantially larger number of reasoning tokens. This suggests that the model leverages more extensive reasoning to tackle more challenging problems, showcasing the effectiveness of its deep-thinking mechanism.
> <details>
> <summary>read the caption</summary>
> Figure 5: Relations between task length and success rate, and output token number. As task complexity increases, our model generates more reasoning tokens to maintain high success rates.
> </details>



![](https://arxiv.org/html/2503.21696/x6.png)

> 🔼 This figure illustrates the results of evaluating the models' tendency to repeatedly explore the same areas during a search task.  The x-axis represents different task types (search, manipulate, transport, composite, overall), while the y-axis shows the percentage of repetitive explorations.  The bars indicate the repetitive exploration rate (RER) for various models including the authors' proposed Embodied-Reasoner and Embodied-Explorer, as well as several baseline models (GPT-40, Claude 3.5-Sonnet, Gemini-2.0 Flash Thinking, Qwen-VL-Max, GPT-03-mini, and two versions of Qwen2.5-VL-72B). The lower the RER, the more efficient the search strategy.  This figure highlights that the proposed models significantly reduce repetitive searches compared to baseline models, demonstrating the efficiency of their planning and self-reflection capabilities in avoiding unnecessary exploration.
> <details>
> <summary>read the caption</summary>
> Figure 6: Repetitive Exploration Rate measures repetitive search issues, which are often observed in baselines. Our models reduce repetitive searches by recalling and reflecting on past trajectories.
> </details>



![](https://arxiv.org/html/2503.21696/x7.png)

> 🔼 The figure showcases a comparison of the success rates achieved in real-world experiments across three different models.  Embodied-Reasoner demonstrated a significantly higher success rate (56.7%) compared to OpenAI's O3-mini (43.4%) and O1 (50%).  This highlights the model's improved performance in real-world settings for object searching tasks.
> <details>
> <summary>read the caption</summary>
> Figure 7: Real-world experiments. Our model achieves a higher success rate (56.7%) than OpenAI o3-mini (43.4%) and o1 (50%).
> </details>



![](https://arxiv.org/html/2503.21696/x8.png)

> 🔼 This figure shows a breakdown of the 9,390 samples in the training dataset.  It visualizes the proportions of four main task types (Search, Manipulate, Transport, Composite) and their further subdivisions into ten sub-task types.  The sizes of the sections in the circular diagram represent the relative number of samples belonging to each category. This provides a clear overview of the dataset's composition and the distribution of various task complexities.
> <details>
> <summary>read the caption</summary>
> Figure C1: The distribution of the training dataset with 9,390 samples, including 4 task types and 10 sub-task types.
> </details>



![](https://arxiv.org/html/2503.21696/x9.png)

> 🔼 This figure shows a breakdown of the 809 tasks used in the test set of the Embodied-Reasoner model.  It details the distribution of tasks across four main task types (Search, Manipulate, Transport, Composite) and further specifies the distribution within each main type according to 11 sub-task categories. This provides a visual representation of the complexity and diversity of tasks the model was evaluated on.
> <details>
> <summary>read the caption</summary>
> Figure C2: The distribution of the test set with 809 tasks, including 4 task types and 11 sub-task types.
> </details>



![](https://arxiv.org/html/2503.21696/x10.png)

> 🔼 Figure C3 shows a breakdown of the actions taken within the training dataset's trajectories.  It displays the frequency of eight distinct interaction types: 'navigate to', 'pickup', 'open', 'close', 'put in', 'observe', 'move forward', and 'toggle'.  The bar chart visually represents the number of times each action was performed across all trajectories in the training dataset, providing insights into the distribution of actions within the embodied interactive tasks.
> <details>
> <summary>read the caption</summary>
> Figure C3: The distribution of the training set interactions, including 8 interaction types in trajectories: navigate to, pickup, open, close, put in, observe, move forward, and toggle.
> </details>



![](https://arxiv.org/html/2503.21696/x11.png)

> 🔼 Figure C4 shows the frequency of six different interaction types within the key actions of the test dataset.  The six interaction types are: 'navigate to', 'pickup', 'open', 'close', 'put in', and 'toggle'. The chart visually represents the number of times each action occurred in the test set's key action sequences, providing insights into the relative frequency of different action types during task execution.
> <details>
> <summary>read the caption</summary>
> Figure C4: The distribution of the test set interactions, including 6 interaction types in key actions: navigate to, pickup, open, close, put in, and toggle.
> </details>



![](https://arxiv.org/html/2503.21696/x12.png)

> 🔼 This figure shows the distribution of trajectory lengths for different task types in the training dataset.  The x-axis represents the length of the trajectory (number of actions taken), and the y-axis shows the number of tasks with that trajectory length.  Each colored bar represents a different task type: Search, Manipulate, Transport, and Composite. The figure highlights that Search tasks tend to have shorter trajectories (mostly between 1 and 9 actions), Manipulate tasks have slightly longer trajectories (between 2 and 11 actions), Transport tasks are longer still (between 3 and 14 actions), and Composite tasks have the longest trajectories, often exceeding 23 actions.
> <details>
> <summary>read the caption</summary>
> Figure C5: The quantity distribution of trajectory lengths in the training set and the corresponding task type composition, where Search Task is mainly within 1-9, Manipulate Task within 2-11, Transport Task within 3-14, and Composite Task above 8, extending beyond 23.
> </details>



![](https://arxiv.org/html/2503.21696/x13.png)

> 🔼 Figure C6 shows the distribution of the number of key actions needed to complete tasks in the test dataset.  The x-axis represents the length of the action sequence, and the y-axis shows the count of tasks.  Each bar is further divided into four colors representing the four task types: Search, Manipulate, Transport, and Composite.  The figure reveals that Search tasks generally require 1–2 actions, Manipulate tasks 2–5, Transport tasks 4–7, and Composite tasks 8 or more, with some extending beyond 19 actions.
> <details>
> <summary>read the caption</summary>
> Figure C6: The quantity distribution of key action lengths in the test set and the corresponding task type composition, where Search Task is mainly within 1-2, Manipulate Task within 2, 4-5, Transport Task within 4-7, and Composite Task above 8, extending beyond 19.
> </details>



![](https://arxiv.org/html/2503.21696/x14.png)

> 🔼 This figure shows the frequency distribution of the top 32 most common object types across all trajectories in the training dataset.  The 'Others' category encompasses the remaining 62 less frequent object types, examples of which include Bread, Book, and DeskLamp.  The visualization helps to understand the prevalence of different object types within the simulated environments used for training the embodied reasoning model.
> <details>
> <summary>read the caption</summary>
> Figure C7: The quantity distribution of the top 32 object types in the training dataset’s trajectories, with Others representing the remaining 62 categories, such as Bread, Book, DeskLamp, etc.
> </details>



![](https://arxiv.org/html/2503.21696/x15.png)

> 🔼 Figure C8 shows the frequency distribution of the top 32 most frequently appearing object types within the key actions of the test set.  The chart visually represents the number of times each object type is involved in the key action sequences during testing.  The category 'Others' encompasses the remaining 44 object types that did not rank within the top 32, including items like watches, pencils, cups, etc. This visualization helps to understand the prevalence of various object types in the tasks and the overall composition of the test dataset.
> <details>
> <summary>read the caption</summary>
> Figure C8: The quantity distribution of the top 32 object types in the test set’s key actions, with Others representing the remaining 44 categories, such as Watch, Pencil, Cup, etc.
> </details>



![](https://arxiv.org/html/2503.21696/x26.png)

> 🔼 This figure visualizes a step-by-step example of Embodied Reasoner completing a complex task. It showcases the model's ability to generate coherent reasoning tokens (thoughts), plan actions, and execute them successfully in a simulated environment. Each step includes an image from the agent's perspective, followed by the model's reasoning process and the selected action. The process demonstrates capabilities like spatial understanding, planning, and self-reflection.
> <details>
> <summary>read the caption</summary>
> Figure F9: Trajectory Case for Embodied Reasoner
> </details>



![](https://arxiv.org/html/2503.21696/x27.png)

> 🔼 This figure shows a step-by-step breakdown of GPT-01's performance on the task of placing a laptop on a sofa and then a cellphone in a drawer.  It highlights GPT-01's struggles with task completion due to issues like forgetting the task objective, getting stuck in action loops, and failing to appropriately respond to feedback regarding illegal actions or unavailable objects.  The figure contrasts with Figure F9, which showcases Embodied-Reasoner's superior performance on the same task.
> <details>
> <summary>read the caption</summary>
> Figure F10: Trajectory Case for GPT-o1
> </details>



![](https://arxiv.org/html/2503.21696/x28.png)

> 🔼 This figure showcases a real-world application of the Embodied Reasoner model.  The task is to place a carton of milk on a coffee table. The figure depicts a sequence of images showing the robot's actions and the model's thought process at each step.  The model begins by locating the milk in the refrigerator, retrieves it, and then, after a moment of re-evaluation of the environment (to make sure the coffee table's location is clearly identified), places it on the coffee table and concludes the task.
> <details>
> <summary>read the caption</summary>
> Figure F11: Trajectory Case for Embodied Reasoner in Real World
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.5">
<tr class="ltx_tr" id="S4.T2.4.4">
<td class="ltx_td ltx_align_left" colspan="3" id="S4.T2.4.4.5" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_rule" style="width:100%;height:0.8pt;background:black;display:inline-block;"> </span><span class="ltx_text" id="S4.T2.4.4.5.1" style="font-size:80%;">      </span><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.5.2" style="font-size:80%;">Model</span><span class="ltx_text" id="S4.T2.4.4.5.3" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.1" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.1" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.1.1.1">
<span class="ltx_tr" id="S4.T2.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.1.1.2.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.1.2.1.1">Success</span></span></span>
<span class="ltx_tr" id="S4.T2.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.1.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.1.1.1.1">Rate</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.2" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.2.2.2.1" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.2.2.2.1.1">
<span class="ltx_tr" id="S4.T2.2.2.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.2.2.2.1.1.2.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.1.1.2.1.1">Search</span></span></span>
<span class="ltx_tr" id="S4.T2.2.2.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.2.2.2.1.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.1.1.1.1.1">Efficiency</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.1.1.1.1.m1.1"><semantics id="S4.T2.2.2.2.1.1.1.1.m1.1a"><mo id="S4.T2.2.2.2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.1.1.1.1.m1.1b"><ci id="S4.T2.2.2.2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.2.2.2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.3.3.3.1" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.3.3.3.1.1">
<span class="ltx_tr" id="S4.T2.3.3.3.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.3.3.3.1.1.2.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.3.1.1.2.1.1">Task</span></span></span>
<span class="ltx_tr" id="S4.T2.3.3.3.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.3.3.3.1.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.3.1.1.1.1.1">Completeness</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.1.1.1.1.m1.1"><semantics id="S4.T2.3.3.3.1.1.1.1.m1.1a"><mo id="S4.T2.3.3.3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.1.1.1.1.m1.1b"><ci id="S4.T2.3.3.3.1.1.1.1.m1.1.1.cmml" xref="S4.T2.3.3.3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" colspan="4" id="S4.T2.4.4.4" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.1" style="font-size:80%;">Success Rate for SubTasks</span><span class="ltx_text" id="S4.T2.4.4.4.2" style="font-size:80%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.m1.1"><semantics id="S4.T2.4.4.4.m1.1a"><mo id="S4.T2.4.4.4.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T2.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.m1.1b"><ci id="S4.T2.4.4.4.m1.1.1.cmml" xref="S4.T2.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.6.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.6.1.1" style="font-size:80%;">Search</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.6.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.6.2.1" style="font-size:80%;">Manipulate</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.6.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.6.3.1" style="font-size:80%;">Transport</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.6.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.6.4.1" style="font-size:80%;">Composite</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.7">
<td class="ltx_td ltx_align_left" colspan="2" id="S4.T2.5.7.1" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_rule" style="width:100%;height:0.8pt;background:black;display:inline-block;"> </span><span class="ltx_text" id="S4.T2.5.7.1.1" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.7.2" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.7.2.1" style="font-size:80%;background-color:#FFF1F1;">Qwen2.5-VL-7B-Instruct <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21696v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.7.3" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.7.3.1" style="font-size:80%;background-color:#FFF1F1;">12.38%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.7.4" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.7.4.1" style="font-size:80%;background-color:#FFF1F1;">10.87%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.7.5" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.7.5.1" style="font-size:80%;background-color:#FFF1F1;">27.53%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.7.6" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.7.6.1" style="font-size:80%;background-color:#FFF1F1;">6.45%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.7.7" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.7.7.1" style="font-size:80%;background-color:#FFF1F1;">23.55%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.7.8" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.7.8.1" style="font-size:80%;background-color:#FFF1F1;">7.56%</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.5.7.9" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.7.9.1" style="font-size:80%;background-color:#FFF1F1;">0.95%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.8">
<td class="ltx_td ltx_border_r" id="S4.T2.5.8.1" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.8.2" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.8.2.1" style="font-size:80%;background-color:#FFF1F1;">Qwen2-VL-7B-Instruct <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21696v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.8.3" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.8.3.1" style="font-size:80%;background-color:#FFF1F1;">14.79%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.8.4" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.8.4.1" style="font-size:80%;background-color:#FFF1F1;">11.97%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.8.5" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.8.5.1" style="font-size:80%;background-color:#FFF1F1;">38.67%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.8.6" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.8.6.1" style="font-size:80%;background-color:#FFF1F1;">23.33%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.8.7" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.8.7.1" style="font-size:80%;background-color:#FFF1F1;">25.50%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.8.8" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.8.8.1" style="font-size:80%;background-color:#FFF1F1;">2.82%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.8.9" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.8.9.1" style="font-size:80%;background-color:#FFF1F1;">0.00%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.9.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.5.9.1.1" style="font-size:80%;">General-</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.9.2" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.9.2.1" style="font-size:80%;background-color:#FFF1F1;">Qwen2.5-VL-72B-Instruct <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21696v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.9.3" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.9.3.1" style="font-size:80%;background-color:#FFF1F1;">31.75%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.9.4" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.9.4.1" style="font-size:80%;background-color:#FFF1F1;">22.61%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.9.5" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.9.5.1" style="font-size:80%;background-color:#FFF1F1;">50.62%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.9.6" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.9.6.1" style="font-size:80%;background-color:#FFF1F1;">52.14%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.9.7" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.9.7.1" style="font-size:80%;background-color:#FFF1F1;">38.89%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.9.8" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.9.8.1" style="font-size:80%;background-color:#FFF1F1;">21.90%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.9.9" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.9.9.1" style="font-size:80%;background-color:#FFF1F1;">0.00%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.10.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.5.10.1.1" style="font-size:80%;">purpose</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.10.2" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.10.2.1" style="font-size:80%;background-color:#FFF1F1;">Qwen2-VL-72B-Instruct <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21696v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.10.3" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.10.3.1" style="font-size:80%;background-color:#FFF1F1;">39.00%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.10.4" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.10.4.1" style="font-size:80%;background-color:#FFF1F1;">28.88%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.10.5" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.10.5.1" style="font-size:80%;background-color:#FFF1F1;">54.56%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.10.6" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.10.6.1" style="font-size:80%;background-color:#FFF1F1;">50.00%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.10.7" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.10.7.1" style="font-size:80%;background-color:#FFF1F1;">52.36%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.10.8" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.10.8.1" style="font-size:80%;background-color:#FFF1F1;">33.19%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.10.9" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.10.9.1" style="font-size:80%;background-color:#FFF1F1;">0.00%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.11.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.5.11.1.1" style="font-size:80%;">VLMs</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.11.2" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.11.2.1" style="font-size:80%;background-color:#FFF1F1;">Claude 3.5-Sonnet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21696v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.11.3" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.11.3.1" style="font-size:80%;background-color:#FFF1F1;">45.35%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.11.4" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.11.4.1" style="font-size:80%;background-color:#FFF1F1;">28.05%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.11.5" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.11.5.1" style="font-size:80%;background-color:#FFF1F1;">64.12%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.11.6" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.11.6.1" style="font-size:80%;background-color:#FFF1F1;">54.25%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.11.7" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.11.7.1" style="font-size:80%;background-color:#FFF1F1;">50.51%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.11.8" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.11.8.1" style="font-size:80%;background-color:#FFF1F1;">51.22%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.11.9" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.11.9.1" style="font-size:80%;background-color:#FFF1F1;">3.84%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.12">
<td class="ltx_td ltx_border_r" id="S4.T2.5.12.1" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.12.2" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.12.2.1" style="font-size:80%;background-color:#FFF1F1;">Qwen-VL-Max <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21696v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.12.3" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.12.3.1" style="font-size:80%;background-color:#FFF1F1;">49.81%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.12.4" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.12.4.1" style="font-size:80%;background-color:#FFF1F1;">36.28%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.12.5" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.12.5.1" style="font-size:80%;background-color:#FFF1F1;">68.39%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.12.6" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.12.6.1" style="font-size:80%;background-color:#FFF1F1;">63.87%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.12.7" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.12.7.1" style="font-size:80%;background-color:#FFF1F1;">63.21%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.12.8" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.12.8.1" style="font-size:80%;background-color:#FFF1F1;">45.16%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.12.9" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.12.9.1" style="font-size:80%;background-color:#FFF1F1;">1.90%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.13">
<td class="ltx_td ltx_border_r" id="S4.T2.5.13.1" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.13.2" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.13.2.1" style="font-size:80%;background-color:#FFF1F1;">GPT-4o <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21696v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.13.3" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.13.3.1" style="font-size:80%;background-color:#FFF1F1;">66.67%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.13.4" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.13.4.1" style="font-size:80%;background-color:#FFF1F1;">41.68%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.13.5" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.13.5.1" style="font-size:80%;background-color:#FFF1F1;">79.07%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.13.6" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.13.6.1" style="font-size:80%;background-color:#FFF1F1;">69.03%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.13.7" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.13.7.1" style="font-size:80%;background-color:#FFF1F1;">79.26%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.13.8" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.13.8.1" style="font-size:80%;background-color:#FFF1F1;">71.95%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.13.9" style="background-color:#FFF1F1;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.13.9.1" style="font-size:80%;background-color:#FFF1F1;">14.42%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.14">
<td class="ltx_td ltx_align_left" colspan="2" id="S4.T2.5.14.1" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_rule" style="width:100%;height:0.8pt;background:black;display:inline-block;"> </span><span class="ltx_text" id="S4.T2.5.14.1.1" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.14.2" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.14.2.1" style="font-size:80%;background-color:#FFF9E5;">QVQ-72B-Preview <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21696v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.14.3" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.14.3.1" style="font-size:80%;background-color:#FFF9E5;">7.54%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.14.4" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.14.4.1" style="font-size:80%;background-color:#FFF9E5;">6.39%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.14.5" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.14.5.1" style="font-size:80%;background-color:#FFF9E5;">36.33%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.14.6" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.14.6.1" style="font-size:80%;background-color:#FFF9E5;">4.35%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.14.7" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.14.7.1" style="font-size:80%;background-color:#FFF9E5;">7.50%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.14.8" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.14.8.1" style="font-size:80%;background-color:#FFF9E5;">10.53%</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.5.14.9" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.14.9.1" style="font-size:80%;background-color:#FFF9E5;">0.00%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5">
<td class="ltx_td ltx_border_r" id="S4.T2.5.5.2" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.5.1" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.5.1.1" style="font-size:80%;background-color:#FFF9E5;">Kimi-K1.5<sup class="ltx_sup" id="S4.T2.5.5.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.5.5.1.1.1.1" style="background-color:#FFF9E5;">†</span></sup> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21696v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.3" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.5.3.1" style="font-size:80%;background-color:#FFF9E5;">46.00%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.4" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.5.4.1" style="font-size:80%;background-color:#FFF9E5;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.5.5.1" style="font-size:80%;background-color:#FFF9E5;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.6" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.5.6.1" style="font-size:80%;background-color:#FFF9E5;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.5.7.1" style="font-size:80%;background-color:#FFF9E5;"><span class="ltx_text" id="S4.T2.5.5.7.1.1"> -</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.5.8.1" style="font-size:80%;background-color:#FFF9E5;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.5.9.1" style="font-size:80%;background-color:#FFF9E5;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.15">
<td class="ltx_td ltx_border_r" id="S4.T2.5.15.1" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.15.2" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.15.2.1" style="font-size:80%;background-color:#FFF9E5;">GPT-o3-mini <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21696v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.15.3" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.15.3.1" style="font-size:80%;background-color:#FFF9E5;">56.55%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.15.4" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.15.4.1" style="font-size:80%;background-color:#FFF9E5;">26.93%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.15.5" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.15.5.1" style="font-size:80%;background-color:#FFF9E5;">67.41%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.15.6" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.15.6.1" style="font-size:80%;background-color:#FFF9E5;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.15.6.1.1" style="background-color:#FFF9E5;">78.57%</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.15.7" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.15.7.1" style="font-size:80%;background-color:#FFF9E5;">59.32%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.15.8" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.15.8.1" style="font-size:80%;background-color:#FFF9E5;">66.67%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.15.9" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.15.9.1" style="font-size:80%;background-color:#FFF9E5;">0.00%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.16.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.5.16.1.1" style="font-size:80%;">Visual</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.16.2" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.16.2.1" style="font-size:80%;background-color:#FFF9E5;">Gemini-2.0 Flash Thinking <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21696v1#bib.bib10" title=""><span class="ltx_text" style="font-size:90%;">10</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.16.3" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.16.3.1" style="font-size:80%;background-color:#FFF9E5;">56.74%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.16.4" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.16.4.1" style="font-size:80%;background-color:#FFF9E5;">43.01%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.16.5" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.16.5.1" style="font-size:80%;background-color:#FFF9E5;">71.70%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.16.6" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.16.6.1" style="font-size:80%;background-color:#FFF9E5;">71.05%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.16.7" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.16.7.1" style="font-size:80%;background-color:#FFF9E5;">75.60%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.16.8" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.16.8.1" style="font-size:80%;background-color:#FFF9E5;">40.67%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.16.9" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.16.9.1" style="font-size:80%;background-color:#FFF9E5;">8.89%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.17.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.5.17.1.1" style="font-size:80%;">Reasoning</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.17.2" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.17.2.1" style="font-size:80%;background-color:#FFF9E5;">Claude-3.7-Sonnet-thinking <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21696v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.17.3" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.17.3.1" style="font-size:80%;background-color:#FFF9E5;">67.70%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.17.4" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.17.4.1" style="font-size:80%;background-color:#FFF9E5;">37.95%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.17.5" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.17.5.1" style="font-size:80%;background-color:#FFF9E5;">78.63%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.17.6" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.17.6.1" style="font-size:80%;background-color:#FFF9E5;">69.12%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.17.7" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.17.7.1" style="font-size:80%;background-color:#FFF9E5;">75.88%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.17.8" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.17.8.1" style="font-size:80%;background-color:#FFF9E5;">71.94%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.17.9" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.17.9.1" style="font-size:80%;background-color:#FFF9E5;">13.79%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.18.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.5.18.1.1" style="font-size:80%;">Models</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.18.2" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.18.2.1" style="font-size:80%;background-color:#FFF9E5;">GPT-o1 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21696v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.18.3" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.18.3.1" style="font-size:80%;background-color:#FFF9E5;">71.73%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.18.4" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.18.4.1" style="font-size:80%;background-color:#FFF9E5;">43.06%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.18.5" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.18.5.1" style="font-size:80%;background-color:#FFF9E5;"><span class="ltx_text" id="S4.T2.5.18.5.1.1"> 82.49%</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.18.6" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.18.6.1" style="font-size:80%;background-color:#FFF9E5;">78.42%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.18.7" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.18.7.1" style="font-size:80%;background-color:#FFF9E5;">79.10%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.18.8" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.18.8.1" style="font-size:80%;background-color:#FFF9E5;">67.36%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.18.9" style="background-color:#FFF9E5;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.18.9.1" style="font-size:80%;background-color:#FFF9E5;">13.16%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.19">
<td class="ltx_td ltx_border_r" id="S4.T2.5.19.1" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.5.19.2" style="background-color:#ECF1E6;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.19.2.1" style="font-size:80%;background-color:#ECF1E6;">Embodied-Interactor-7B (ours-1st)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.19.3" style="background-color:#ECF1E6;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.19.3.1" style="font-size:80%;background-color:#ECF1E6;">25.46%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.19.4" style="background-color:#ECF1E6;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.19.4.1" style="font-size:80%;background-color:#ECF1E6;">24.75%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.19.5" style="background-color:#ECF1E6;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.19.5.1" style="font-size:80%;background-color:#ECF1E6;">53.67%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.19.6" style="background-color:#ECF1E6;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.19.6.1" style="font-size:80%;background-color:#ECF1E6;">30.97%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.19.7" style="background-color:#ECF1E6;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.19.7.1" style="font-size:80%;background-color:#ECF1E6;">27.09%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.19.8" style="background-color:#ECF1E6;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.19.8.1" style="font-size:80%;background-color:#ECF1E6;">29.20%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.19.9" style="background-color:#ECF1E6;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.19.9.1" style="font-size:80%;background-color:#ECF1E6;">3.81%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.20">
<td class="ltx_td ltx_border_r" id="S4.T2.5.20.1" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.20.2" style="background-color:#ECF1E6;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.20.2.1" style="font-size:80%;background-color:#ECF1E6;">Embodied-Explorer-7B (ours-2nd)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.20.3" style="background-color:#ECF1E6;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.20.3.1" style="font-size:80%;background-color:#ECF1E6;">65.39%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.20.4" style="background-color:#ECF1E6;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.20.4.1" style="font-size:80%;background-color:#ECF1E6;">46.25%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.20.5" style="background-color:#ECF1E6;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.20.5.1" style="font-size:80%;background-color:#ECF1E6;">77.73%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.20.6" style="background-color:#ECF1E6;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.20.6.1" style="font-size:80%;background-color:#ECF1E6;">60.00%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.20.7" style="background-color:#ECF1E6;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.20.7.1" style="font-size:80%;background-color:#ECF1E6;">75.92%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.20.8" style="background-color:#ECF1E6;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.20.8.1" style="font-size:80%;background-color:#ECF1E6;">72.24%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.20.9" style="background-color:#ECF1E6;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.20.9.1" style="font-size:80%;background-color:#ECF1E6;">26.67%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.21">
<td class="ltx_td ltx_border_r" id="S4.T2.5.21.1" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.21.2" style="background-color:#ECF1E6;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.21.2.1" style="font-size:80%;background-color:#ECF1E6;">Embodied-Reasoner-7B (ours-3rd)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.21.3" style="background-color:#ECF1E6;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.21.3.1" style="font-size:80%;background-color:#ECF1E6;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.21.3.1.1">80.96%</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.21.4" style="background-color:#ECF1E6;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.21.4.1" style="font-size:80%;background-color:#ECF1E6;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.21.4.1.1">55.07%</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.21.5" style="background-color:#ECF1E6;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.21.5.1" style="font-size:80%;background-color:#ECF1E6;"><span class="ltx_text" id="S4.T2.5.21.5.1.1"> <span class="ltx_text ltx_font_bold" id="S4.T2.5.21.5.1.1.1">86.30%</span></span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.21.6" style="background-color:#ECF1E6;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.21.6.1" style="font-size:80%;background-color:#ECF1E6;">65.16%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.21.7" style="background-color:#ECF1E6;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.21.7.1" style="font-size:80%;background-color:#ECF1E6;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.21.7.1.1">93.31%</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.21.8" style="background-color:#ECF1E6;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.21.8.1" style="font-size:80%;background-color:#ECF1E6;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.21.8.1.1">87.20%</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.21.9" style="background-color:#ECF1E6;padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.5.21.9.1" style="font-size:80%;background-color:#ECF1E6;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.21.9.1.1">54.29%</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.22">
<td class="ltx_td ltx_align_left" id="S4.T2.5.22.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_rule" style="width:100%;height:0.8pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td" id="S4.T2.5.22.2" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td" id="S4.T2.5.22.3" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td" id="S4.T2.5.22.4" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td" id="S4.T2.5.22.5" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td" id="S4.T2.5.22.6" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td" id="S4.T2.5.22.7" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td" id="S4.T2.5.22.8" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td" id="S4.T2.5.22.9" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the Embodied-Reasoner model's performance against other advanced Vision-Language Models (VLMs) and visual reasoning models on various metrics.  The metrics include success rate (percentage of tasks successfully completed), search efficiency (ratio of key actions to predicted actions), and task completeness (percentage of predicted actions that are also key actions). The table shows that the Embodied-Reasoner significantly outperforms the other models, especially in complex tasks.  It also highlights the improvement achieved by the three-stage training process used to develop the Embodied-Reasoner model, specifically boosting the Qwen2-VL-7B model's performance from a success rate of 14.8% to 80.9%.  Note that for the Kimi-K1.5 model, results are based on a manual evaluation of only 50 test cases.
> <details>
> <summary>read the caption</summary>
> Table 2: We compare the performance of Embodied-Reasoner against advanced VLMs and visual reasoning models. After the three-stage training process, we boost Qwen2-VL-7B from 14.8 to 81. Kimi-K1.5† means we manually evaluate 50 testing cases through the webpage.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T1.2">
<tr class="ltx_tr" id="A2.T1.2.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A2.T1.2.1.1" style="padding:-0.4pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T1.2.1.1.1" style="font-size:80%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T1.2.1.2" style="padding:-0.4pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T1.2.1.2.1" style="font-size:80%;">Success Rate (%)</span></td>
</tr>
<tr class="ltx_tr" id="A2.T1.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A2.T1.2.2.1" style="padding:-0.4pt 4.0pt;"><span class="ltx_text" id="A2.T1.2.2.1.1" style="font-size:80%;">Qwen2.5-VL-72B-Instruct</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T1.2.2.2" style="padding:-0.4pt 4.0pt;"><span class="ltx_text" id="A2.T1.2.2.2.1" style="font-size:80%;">43.3</span></td>
</tr>
<tr class="ltx_tr" id="A2.T1.2.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T1.2.3.1" style="padding:-0.4pt 4.0pt;"><span class="ltx_text" id="A2.T1.2.3.1.1" style="font-size:80%;">OpenAI o1</span></td>
<td class="ltx_td ltx_align_center" id="A2.T1.2.3.2" style="padding:-0.4pt 4.0pt;"><span class="ltx_text" id="A2.T1.2.3.2.1" style="font-size:80%;">50.0</span></td>
</tr>
<tr class="ltx_tr" id="A2.T1.2.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T1.2.4.1" style="padding:-0.4pt 4.0pt;"><span class="ltx_text" id="A2.T1.2.4.1.1" style="font-size:80%;">OpenAI o3-mini</span></td>
<td class="ltx_td ltx_align_center" id="A2.T1.2.4.2" style="padding:-0.4pt 4.0pt;"><span class="ltx_text" id="A2.T1.2.4.2.1" style="font-size:80%;">44.0</span></td>
</tr>
<tr class="ltx_tr" id="A2.T1.2.5">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A2.T1.2.5.1" style="padding:-0.4pt 4.0pt;"><span class="ltx_text" id="A2.T1.2.5.1.1" style="font-size:80%;">Embodied-Reasoner</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T1.2.5.2" style="padding:-0.4pt 4.0pt;"><span class="ltx_text" id="A2.T1.2.5.2.1" style="font-size:80%;">56.7</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of real-world experiments evaluating the Embodied-Reasoner model.  It compares the success rate of the model against several baselines (OpenAI 01, OpenAI 03-mini, and Qwen2.5-VL-72B-Instruct) on a set of real-world object search tasks performed by a human operator following the model's instructions. The tasks were conducted in various real-world environments (kitchen, bathroom, bedroom). The success rate metric indicates the percentage of tasks successfully completed by the model.
> <details>
> <summary>read the caption</summary>
> Table B1: The results of real-world experiments.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.21696/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21696/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21696/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21696/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21696/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21696/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21696/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21696/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21696/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21696/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21696/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21696/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21696/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21696/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21696/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21696/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21696/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21696/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21696/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21696/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}