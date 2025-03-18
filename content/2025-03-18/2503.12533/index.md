---
title: "Being-0: A Humanoid Robotic Agent with Vision-Language Models and Modular Skills"
summary: "Being-0: A humanoid robot agent achieves complex tasks by integrating a vision-language model with modular skills, enhancing efficiency and real-time performance."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Embodied AI", "🏢 Peking University",]
showSummary: true
date: 2025-03-16
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.12533 {{< /keyword >}}
{{< keyword icon="writer" >}} Haoqi Yuan et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.12533" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.12533" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.12533/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

The paper addresses challenges in building autonomous agents for humanoid robots, where directly combining Foundation Models (FMs) for high-level cognition with low-level skills often results in poor robustness and efficiency. This is due to compounding errors in long-horizon tasks and varied module latencies. To resolve this, the authors introduce Being-0, a hierarchical agent framework that integrates an FM with a modular skill library. 



Being-0 utilizes a novel Connector module, powered by a lightweight vision-language model (VLM), to bridge the gap between the FM's language-based plans and the execution of low-level skills. **This enhances embodied decision-making** and effectively coordinates locomotion and manipulation. With most components deployable on low-cost onboard devices, Being-0 achieves efficient, real-time performance on a full-sized humanoid robot.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A hierarchical agent framework for humanoid robots is introduced, optimizing cloud and onboard deployment. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A vision-language model (VLM) based Connector enhances embodied decision-making and skill coordination. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The agent achieves high success rates in complex, long-horizon tasks with dexterous manipulation and active vision. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
Being-0 offers a practical framework for humanoid robots in real-world tasks, balancing cloud-based planning with on-robot skill execution. It is relevant for researchers by **demonstrating efficient, real-time performance**, and opens up avenues for advancing humanoid dexterity, navigation, and human-robot collaboration.

------
#### Visual Insights



![](https://arxiv.org/html/2503.12533/x1.png)

> 🔼 Being-0 is a hierarchical framework for humanoid robots.  It consists of three main components: a Foundation Model (FM) for high-level planning and reasoning; a Connector, a vision-language model (VLM), which translates high-level plans into low-level actions; and a Modular Skill Library for locomotion and manipulation.  These components work together to enable the robot to perform complex, long-horizon tasks in real-world environments.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the Being-0 framework. The humanoid agent framework, Being-0, comprises three key components: (1) the Foundation Model (FM) for high-level task planning and reasoning, (2) the Connector, a vision-language model (VLM) that bridges the FM and low-level skills, and (3) the Modular Skill Library for robust locomotion and dexterous manipulation. Together, these components enable Being-0 to effectively control a full-sized humanoid robot equipped with multi-fingered hands and active vision, solving complex, long-horizon embodied tasks in real-world environments.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T1.1">
<tr class="ltx_tr" id="S5.T1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="S5.T1.1.1.1" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.1.1.1">
<span class="ltx_p" id="S5.T1.1.1.1.1.1" style="width:62.6pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.1.1.1">Task</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="S5.T1.1.1.2" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.1.2.1">
<span class="ltx_p" id="S5.T1.1.1.2.1.1" style="width:37.0pt;">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.1.1.2.1.1.1">
<span class="ltx_tr" id="S5.T1.1.1.2.1.1.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.1.1.2.1.1.1.1.1" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.2.1.1.1.1.1.1">w/o Connector</span></span></span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="S5.T1.1.1.3" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.1.3.1">
<span class="ltx_p" id="S5.T1.1.1.3.1.1" style="width:37.0pt;">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.1.1.3.1.1.1">
<span class="ltx_tr" id="S5.T1.1.1.3.1.1.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.1.1.3.1.1.1.1.1" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.3.1.1.1.1.1.1">Being-0</span></span></span>
</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S5.T1.1.2.1" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.2.1.1">
<span class="ltx_p" id="S5.T1.1.2.1.1.1" style="width:62.6pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.2.1.1.1.1">Fetch-bottle</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S5.T1.1.2.2" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.2.2.1">
<span class="ltx_p" id="S5.T1.1.2.2.1.1" style="width:37.0pt;">0.00</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S5.T1.1.2.3" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.2.3.1">
<span class="ltx_p" id="S5.T1.1.2.3.1.1" style="width:37.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.2.3.1.1.1">0.90</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T1.1.3.1" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.3.1.1">
<span class="ltx_p" id="S5.T1.1.3.1.1.1" style="width:62.6pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.3.1.1.1.1">Deliver-basket</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T1.1.3.2" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.3.2.1">
<span class="ltx_p" id="S5.T1.1.3.2.1.1" style="width:37.0pt;">0.00</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T1.1.3.3" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.3.3.1">
<span class="ltx_p" id="S5.T1.1.3.3.1.1" style="width:37.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.3.3.1.1.1">0.80</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T1.1.4.1" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.4.1.1">
<span class="ltx_p" id="S5.T1.1.4.1.1.1" style="width:62.6pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.4.1.1.1.1">Prepare-coffee</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T1.1.4.2" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.4.2.1">
<span class="ltx_p" id="S5.T1.1.4.2.1.1" style="width:37.0pt;">0.00</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T1.1.4.3" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.4.3.1">
<span class="ltx_p" id="S5.T1.1.4.3.1.1" style="width:37.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.4.3.1.1.1">0.75</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T1.1.5.1" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.5.1.1">
<span class="ltx_p" id="S5.T1.1.5.1.1.1" style="width:62.6pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.5.1.1.1.1">Make-coffee</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T1.1.5.2" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.5.2.1">
<span class="ltx_p" id="S5.T1.1.5.2.1.1" style="width:37.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.5.2.1.1.1">0.90</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T1.1.5.3" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.5.3.1">
<span class="ltx_p" id="S5.T1.1.5.3.1.1" style="width:37.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.5.3.1.1.1">0.90</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T1.1.6.1" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.6.1.1">
<span class="ltx_p" id="S5.T1.1.6.1.1.1" style="width:62.6pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.6.1.1.1.1">Deliver-coffee</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T1.1.6.2" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.6.2.1">
<span class="ltx_p" id="S5.T1.1.6.2.1.1" style="width:37.0pt;">0.33</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T1.1.6.3" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.6.3.1">
<span class="ltx_p" id="S5.T1.1.6.3.1.1" style="width:37.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.6.3.1.1.1">0.87</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of the task completion success rates for the Being-0 robotic agent, both with and without the Connector module, across a range of complex, long-horizon tasks.  The results clearly show a substantial increase in successful task completion when the Connector module is utilized, highlighting its significant contribution to the overall performance of the agent.
> <details>
> <summary>read the caption</summary>
> Table 1: Task completion rates for Being-0 with and without the Connector across various long-horizon tasks. The results demonstrate significant performance improvements when the Connector is used.
> </details>





### In-depth insights


#### Skill Stitching
**Skill stitching** is crucial for humanoid robots to perform complex tasks. The paper highlights the challenges in smoothly transitioning between skills like navigation and manipulation, **requiring precise pose adjustments** to avoid failures. A vision-language model, or a similar connector, is proposed to bridge the gap between high-level plans and low-level skill execution. The connector enhances decision-making and coordination to improve task success and efficiency. This integration facilitates **real-time adaptation**, better task sequencing, and improved robustness in dynamic environments. Skill coordination leads to successful completion of complicated tasks in real-world scenarios.

#### VLM Connector
The VLM Connector serves as a crucial bridge, **translating FM plans into actionable skills**. By grounding abstract language plans in real-time visual input, it enhances the robot's adaptability and robustness. **Key functions include grounding FM plans, closed-loop navigation**, and improving transitions between navigation and manipulation. It leverages visual understanding and object detection to inform skill selection. The VLM's rapid inference capabilities and pose adjustment improve the initialization states for subsequent manipulations, **reducing compounding errors** and enhancing overall task success with greater navigation efficiency. This approach allows the robot to perceive surroundings, adapt to unexpected obstacles, and coordinate locomotion and manipulation to tackle complex, long-horizon tasks in dynamic environments.

#### Active Vision
The research paper highlights the significant role of **active vision** in enhancing a humanoid robot's capabilities. Traditional fixed camera setups impose limitations on both navigation and manipulation tasks. By contrast, **Being-0, equips the humanoid with an actuated neck and binocular RGB cameras**, enabling it to dynamically adapt its field of view. This dynamic adjustment is crucial for tasks requiring both broad environmental awareness during navigation and precise object localization for manipulation. The system leverages VLM to estimate the relative position and trigger locomotion skills, allowing robot can search the target in 3D space.  The **integration of an active camera** consistently achieves high success rates, showcasing superior performance in tasks where visual adaptability is essential. This approach, therefore, significantly contributes to the robot's dexterity and robustness in complex, real-world environments.

#### FM + Skills
Combining Foundation Models (**FMs**) with robotic skills holds immense potential but faces challenges. **FMs** excel at high-level planning but can lack real-time responsiveness needed for complex robotic tasks. The efficiency and precision of **FMs** directly control robots are often compromised. Directly connecting FMs with skills often leads to issues, particularly for humanoid robots due to their unstable locomotion. Humanoid robots' unpredictable movements necessitate continuous adjustments, exceeding the processing capabilities of existing **FMs** and compounding errors. The inherent instability of humanoid robots requires **FM** to continuously react and adjust, adding an additional layer of complexity. 

#### Limited FM
**Limited FMs in Robotics**: The paper highlights challenges when directly using large, general-purpose Foundation Models (FMs) like GPT-40 for humanoid robots. **Instability and poor 3D understanding** lead to inefficiency. High inference times make real-time adaptation difficult. This motivates exploring smaller, specialized models, like the VLM-based Connector, which can perform grounded planning. It also calls for finding a lightweight design in model architecture to optimize resource allocation.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.12533/x2.png)

> 🔼 Figure 2 illustrates the step-by-step workflow of the Being-0 system in accomplishing the task of 'making a cup of coffee'.  The process is divided into two rows of images, progressing from left to right.  Yellow borders highlight the decision points where the Foundation Model (FM) plans the next step, presented in yellow dialog boxes.  The Connector module's decisions are shown in green boxes, while the blue boxes represent the low-level skills from the modular skill library that are executed. This visualization helps to understand the hierarchical interaction between the high-level planning (FM), mid-level coordination (Connector), and low-level skill execution. 
> <details>
> <summary>read the caption</summary>
> Figure 2: Workflow of Being-0 for the task “make a cup of coffee”. The figure illustrates the step-by-step execution of the task, with images arranged in two rows. The execution order proceeds left to right in the first row, then continues left to right in the second row. Images with yellow borders indicate decision-making points for the Foundation Model (FM). The yellow dialog boxes display the FM’s plans, the green boxes show decisions made by the Connector, and the blue boxes represent the skills called from the modular skill library.
> </details>



![](https://arxiv.org/html/2503.12533/x3.png)

> 🔼 This figure compares the performance of two versions of the Being-0 robotic agent on the 'Prepare-coffee' task. The top row shows the agent without the Connector module, highlighting frequent queries to the Foundation Model (FM) due to poor embodied scene understanding, ultimately failing to complete the task. The bottom row demonstrates the improved performance of the agent with the Connector module, which successfully bridges the high-level planning of the FM and low-level robot control, resulting in task completion with far fewer queries to the FM.
> <details>
> <summary>read the caption</summary>
> Figure 3: A comparison of Being-0 w/o Connector and Being-0 in the long-horizon task “Prepare-coffee.” The first row shows recordings of Being-0 without the Connector, while the second row shows recordings of Being-0 with the Connector. Being-0 w/o Connector frequently queries the FM, which often fails to provide correct plans due to its limited embodied scene understanding. In contrast, Being-0 with the Connector completes the task, requiring only a few queries to the FM.
> </details>



![](https://arxiv.org/html/2503.12533/x4.png)

> 🔼 This figure presents an ablation study comparing the performance of Being-0 with different camera configurations on navigation and manipulation tasks.  The left three images in each row show the navigation phase, where the robot moves toward a target object (coffee machine). The right three images display the subsequent manipulation phase (grasping coffee).  The rows represent different setups: fixed cameras with varying pitch angles (0.3, 0.6, and 0.9 radians) and Being-0 with its active camera.  The results clearly show that only Being-0, using its active camera, successfully completes both tasks reliably. Fixed camera setups, regardless of angle, fail to achieve consistent success in either navigation or manipulation.
> <details>
> <summary>read the caption</summary>
> Figure 4: Recordings from the ablation study on the active camera. Each row represents a different camera configuration, with the left three images depicting the navigation task and the right three images depicting the manipulation task. Only Being-0 with an active camera achieves robust performance in both navigation and manipulation.
> </details>



![](https://arxiv.org/html/2503.12533/x5.png)

> 🔼 This figure compares the performance of the Being-0 agent with and without the proposed adjustment method for navigation.  Two-stage tasks were used, each consisting of navigation followed by manipulation.  The left three images in each row show the results of Being-0 without the adjustment, demonstrating that improper navigation poses often led to failed manipulation attempts. The right three images show Being-0 with the adjustment, highlighting its success in producing appropriate poses for successful manipulation.
> <details>
> <summary>read the caption</summary>
> Figure 5: A comparison of Being-0 with and without the adjustment method in two-stage tasks involving navigation and manipulation. Each row corresponds to a specific task, with the left three images showing results for Being-0 w/o Adjustment and the right three images showing results for Being-0. Without adjustment, the agent may terminate navigation in improper poses, leading to failed manipulations.
> </details>



![](https://arxiv.org/html/2503.12533/x6.png)

> 🔼 This figure presents a series of first-person viewpoints demonstrating the humanoid robot's learned manipulation skills. Each row showcases a different skill, with images progressing from left to right to illustrate the sequential steps involved in successfully completing each task.  The skills shown highlight the robot's dexterity and precision in manipulating various objects.
> <details>
> <summary>read the caption</summary>
> Figure 6: First-person view recordings of the learned manipulation skills. Each row corresponds to a specific skill, with images from left to right depicting the progression of the manipulation process.
> </details>



![](https://arxiv.org/html/2503.12533/x7.png)

> 🔼 This figure shows the detailed reasoning process of the Foundation Model (FM) in Being-0 while executing the 'Prepare-coffee' task. It breaks down the task into subtasks and illustrates how the FM uses image observation and reasoning to decide on the next action. The process is depicted in three stages: 1. Information gathering, including image description, target identification, and self-reflection. 2. Task Inference, involving subtask identification and reasoning. 3. Action planning, outlining the next action to be taken and the reasoning behind it. Each step demonstrates how the FM reasons about the task, identifies the next step, and plans accordingly, showcasing its hierarchical decision-making process in tackling complex tasks.
> <details>
> <summary>read the caption</summary>
> Figure 7: Planning traces of the Foundation Model in Being-0 for the task “Prepare-coffee.”
> </details>



![](https://arxiv.org/html/2503.12533/x8.png)

> 🔼 This figure shows a continuation of the planning traces from Figure 7, illustrating how the Foundation Model (FM) in the Being-0 framework plans and reasons to complete the 'Prepare-coffee' task.  It details the FM's image observations, reasoning, task inference, action planning, and self-reflection steps as it guides the robot through various subtasks, like grabbing the cup and interacting with the coffee machine. The traces provide a detailed, step-by-step view of the FM's decision-making process and highlight its ability to break down a complex task into smaller, manageable actions.
> <details>
> <summary>read the caption</summary>
> Figure 8: (Continued) Planning traces of the Foundation Model in Being-0 for the task “Prepare-coffee.”
> </details>



![](https://arxiv.org/html/2503.12533/x9.png)

> 🔼 Figure 9 shows a continuation of the detailed planning process of the Foundation Model in the Being-0 framework for the 'Prepare-coffee' task.  It illustrates the step-by-step reasoning, decision-making, and action planning of the Foundation Model as it processes visual information and updates its understanding of the task's progress. The figure details the model's internal state, including its understanding of the current situation, the selection of subsequent actions, and its self-reflection on past actions.  This detailed trace provides insights into the internal workings of the Foundation Model and its ability to decompose complex tasks into smaller, manageable subtasks.
> <details>
> <summary>read the caption</summary>
> Figure 9: (Continued) Planning traces of the Foundation Model in Being-0 for the task “Prepare-coffee.”
> </details>



![](https://arxiv.org/html/2503.12533/x10.png)

> 🔼 This figure shows a continuation of the detailed planning steps taken by the Foundation Model (FM) in the Being-0 system while attempting to complete the 'Prepare-coffee' task.  It provides a detailed, step-by-step view of how the FM processes visual information from the robot's cameras, reasons about the task's progress, and plans subsequent actions.  The detailed text shows the FM's internal reasoning steps, including image descriptions, subtask inferences, self-reflection analysis, and the selection of actions. This illustrates the complex decision-making process involved in executing even a seemingly simple task like making coffee with a humanoid robot.
> <details>
> <summary>read the caption</summary>
> Figure 10: (Continued) Planning traces of the Foundation Model in Being-0 for the task “Prepare-coffee.”
> </details>



![](https://arxiv.org/html/2503.12533/x11.png)

> 🔼 This figure displays the planning traces of the Foundation Model used in the Being-0 system (without the Connector module) while executing the 'Prepare-coffee' task.  It shows a step-by-step breakdown of how the model reasons, makes decisions, and selects actions based solely on its high-level understanding and without the benefit of real-time visual feedback from the Connector. Each step includes the model's interpretation of the image data, its reasoning process, the selected action, and a self-reflection evaluating the success of the previous action. The detailed traces highlight the challenges faced by a purely high-level approach in executing complex, real-world tasks, particularly involving navigation and manipulation in dynamic environments.
> <details>
> <summary>read the caption</summary>
> Figure 11: Planning traces of the Foundation Model in Being-0 w/o Connector for the task “Prepare-coffee.”
> </details>



![](https://arxiv.org/html/2503.12533/x12.png)

> 🔼 This figure shows the detailed planning traces of the Foundation Model in the Being-0 framework, specifically when the Embodied Connector module is NOT used, for the task of preparing coffee.  It provides a step-by-step breakdown of the Foundation Model's reasoning, including image descriptions, self-reflection on previous actions, inference of subtasks, and ultimately, the planned actions for the robot. This detailed view highlights the challenges faced by the Foundation Model when operating without the intermediary assistance of the Connector, revealing its difficulties in consistently achieving successful task completion due to limitations in real-time visual understanding and precise skill execution.
> <details>
> <summary>read the caption</summary>
> Figure 12: (Continued) Planning traces of the Foundation Model in Being-0 w/o Connector for the task “Prepare-coffee.”
> </details>



![](https://arxiv.org/html/2503.12533/x13.png)

> 🔼 This figure shows the detailed planning traces of the Foundation Model in the Being-0 system without the Connector module for the 'Prepare coffee' task.  It provides a step-by-step breakdown of the model's reasoning, including image descriptions, self-reflection, task inference, and action planning.  It illustrates the challenges of using the Foundation Model alone, such as failure to detect the cup on the table and inefficient search strategies, due to a lack of direct perception and embodiment.
> <details>
> <summary>read the caption</summary>
> Figure 13: (Continued) Planning traces of the Foundation Model in Being-0 w/o Connector for the task “Prepare-coffee.”
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T2.5">
<tr class="ltx_tr" id="S5.T2.5.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="S5.T2.5.1.1" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.5.1.1.1">
<span class="ltx_p" id="S5.T2.5.1.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.5.1.1.1.1.1">Task</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="S5.T2.5.1.2" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.5.1.2.1">
<span class="ltx_p" id="S5.T2.5.1.2.1.1" style="width:34.1pt;">
<span class="ltx_tabular ltx_align_middle" id="S5.T2.5.1.2.1.1.1">
<span class="ltx_tr" id="S5.T2.5.1.2.1.1.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.5.1.2.1.1.1.1.1" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.5.1.2.1.1.1.1.1.1">w/o Adjust.</span></span></span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="S5.T2.5.1.3" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.5.1.3.1">
<span class="ltx_p" id="S5.T2.5.1.3.1.1" style="width:34.1pt;">
<span class="ltx_tabular ltx_align_middle" id="S5.T2.5.1.3.1.1.1">
<span class="ltx_tr" id="S5.T2.5.1.3.1.1.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.5.1.3.1.1.1.1.1" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.5.1.3.1.1.1.1.1.1">Being-0</span></span></span>
</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.5.2.1" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.5.2.1.1">
<span class="ltx_p" id="S5.T2.5.2.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.5.2.1.1.1.1">Grasp-bottle</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.5.2.2" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.5.2.2.1">
<span class="ltx_p" id="S5.T2.5.2.2.1.1" style="width:34.1pt;">2 / 5</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.5.2.3" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.5.2.3.1">
<span class="ltx_p" id="S5.T2.5.2.3.1.1" style="width:34.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.5.2.3.1.1.1">4</span> / 5</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T2.5.3.1" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.5.3.1.1">
<span class="ltx_p" id="S5.T2.5.3.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.5.3.1.1.1.1">Place-basket</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T2.5.3.2" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.5.3.2.1">
<span class="ltx_p" id="S5.T2.5.3.2.1.1" style="width:34.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.5.3.2.1.1.1">4</span> / 5</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T2.5.3.3" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.5.3.3.1">
<span class="ltx_p" id="S5.T2.5.3.3.1.1" style="width:34.1pt;">3 / 5</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T2.5.4.1" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.5.4.1.1">
<span class="ltx_p" id="S5.T2.5.4.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.5.4.1.1.1.1">Grasp-coffee</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T2.5.4.2" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.5.4.2.1">
<span class="ltx_p" id="S5.T2.5.4.2.1.1" style="width:34.1pt;">1 / 5</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T2.5.4.3" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.5.4.3.1">
<span class="ltx_p" id="S5.T2.5.4.3.1.1" style="width:34.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.5.4.3.1.1.1">4</span> / 5</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T2.5.5.1" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.5.5.1.1">
<span class="ltx_p" id="S5.T2.5.5.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.5.5.1.1.1.1">Place-coffee <span class="ltx_text ltx_font_italic" id="S5.T2.5.5.1.1.1.1.1">(t)</span></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T2.5.5.2" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.5.5.2.1">
<span class="ltx_p" id="S5.T2.5.5.2.1.1" style="width:34.1pt;">4 / 5</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T2.5.5.3" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.5.5.3.1">
<span class="ltx_p" id="S5.T2.5.5.3.1.1" style="width:34.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.5.5.3.1.1.1">5</span> / 5</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T2.5.6.1" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.5.6.1.1">
<span class="ltx_p" id="S5.T2.5.6.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.5.6.1.1.1.1">Place-coffee <span class="ltx_text ltx_font_italic" id="S5.T2.5.6.1.1.1.1.1">(m)</span></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T2.5.6.2" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.5.6.2.1">
<span class="ltx_p" id="S5.T2.5.6.2.1.1" style="width:34.1pt;">0 / 5</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T2.5.6.3" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.5.6.3.1">
<span class="ltx_p" id="S5.T2.5.6.3.1.1" style="width:34.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.5.6.3.1.1.1">3</span> / 5</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of the proposed adjustment method within the Connector module on the success rate of manipulation tasks.  Five navigation trials were conducted for each task, and the table shows how many of those trials resulted in successful manipulation. The tasks involve grasping and placing objects either on a table (denoted by 't') or on a coffee machine (denoted by 'm').  The results highlight the effectiveness of the adjustment method in improving manipulation success rates, particularly in scenarios where precise positioning is crucial.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablation study on the proposed adjustment method in the Connector module. The results indicate the number of successful manipulations out of 5 navigation trials. (t) denotes “on the table” and (m) denotes “on the coffee machine”.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T3.3">
<tr class="ltx_tr" id="S5.T3.3.1">
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_tt" id="S5.T3.3.1.1" rowspan="2" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.1.1">Method</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S5.T3.3.1.2" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.2.1">Navigation</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S5.T3.3.1.3" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.3.1">Manipulation</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.3.2.1" style="padding:1pt 0.0pt;">table</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.3.2.2" style="padding:1pt 0.0pt;">coffee machine</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.3.2.3" style="padding:1pt 0.0pt;">grasp coffee</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.3.2.4" style="padding:1pt 0.0pt;">place coffee</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S5.T3.3.3.1" style="padding:1pt 0.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S5.T3.3.3.1.1">
<tr class="ltx_tr" id="S5.T3.3.3.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.3.3.1.1.1.1" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.3.1.1.1.1.1">Fixed Cam. (0.3)</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.3.3.2" style="padding:1pt 0.0pt;">
<span class="ltx_text ltx_font_bold" id="S5.T3.3.3.2.1">5</span> / 5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.3.3.3" style="padding:1pt 0.0pt;">
<span class="ltx_text ltx_font_bold" id="S5.T3.3.3.3.1">5</span> / 5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.3.3.4" style="padding:1pt 0.0pt;">0 / 5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.3.3.5" style="padding:1pt 0.0pt;">0 / 5</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.3.4.1" style="padding:1pt 0.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S5.T3.3.4.1.1">
<tr class="ltx_tr" id="S5.T3.3.4.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.3.4.1.1.1.1" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.4.1.1.1.1.1">Fixed Cam. (0.6)</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.3.4.2" style="padding:1pt 0.0pt;">0 / 5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.3.4.3" style="padding:1pt 0.0pt;">0 / 5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.3.4.4" style="padding:1pt 0.0pt;">2 / 5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.3.4.5" style="padding:1pt 0.0pt;">1 / 5</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.3.5.1" style="padding:1pt 0.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S5.T3.3.5.1.1">
<tr class="ltx_tr" id="S5.T3.3.5.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.3.5.1.1.1.1" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.5.1.1.1.1.1">Fixed Cam. (0.9)</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.3.5.2" style="padding:1pt 0.0pt;">0 / 5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.3.5.3" style="padding:1pt 0.0pt;">0 / 5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.3.5.4" style="padding:1pt 0.0pt;">4 / 5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.3.5.5" style="padding:1pt 0.0pt;">
<span class="ltx_text ltx_font_bold" id="S5.T3.3.5.5.1">5</span> / 5</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S5.T3.3.6.1" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.6.1.1">Being-0 (Active Cam.)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.3.6.2" style="padding:1pt 0.0pt;">
<span class="ltx_text ltx_font_bold" id="S5.T3.3.6.2.1">5</span> / 5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.3.6.3" style="padding:1pt 0.0pt;">
<span class="ltx_text ltx_font_bold" id="S5.T3.3.6.3.1">5</span> / 5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.3.6.4" style="padding:1pt 0.0pt;">
<span class="ltx_text ltx_font_bold" id="S5.T3.3.6.4.1">5</span> / 5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.3.6.5" style="padding:1pt 0.0pt;">
<span class="ltx_text ltx_font_bold" id="S5.T3.3.6.5.1">5</span> / 5</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the success rates of navigation and manipulation tasks performed by the robot with various camera configurations.  Specifically, it compares the performance of the robot using an active camera (that can adjust its pitch angle dynamically) against several configurations using a fixed camera at different pre-set pitch angles (0.3, 0.6, and 0.9). The results demonstrate the impact of active vision on task completion success rates.
> <details>
> <summary>read the caption</summary>
> Table 3: Success rates of navigation and manipulation tasks with different active camera configurations. The number following Fixed Cam. denotes the pitch angle set for the camera in the absence of active neck movement.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.3.3.1.1">
<tr class="ltx_tr" id="S5.T3.3.3.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.3.3.1.1.1.1" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.3.1.1.1.1.1">Fixed Cam. (0.3)</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study evaluating the efficiency of the Being-0 navigation system.  It compares three configurations: Being-0 (the complete system), a version without the Connector module, and a version with a fixed camera at a specific pitch angle. For each configuration, the average moving speed (in cm/s) and the success rate (number of successful navigation trials out of 5) are reported.  This allows for an assessment of the impact of the Connector module and the use of active vision on navigation performance.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study on the efficiency of Being-0 in navigation. The table reports the average moving speed (cm/s) and success rates for various agent configurations.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.3.4.1.1">
<tr class="ltx_tr" id="S5.T3.3.4.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.3.4.1.1.1.1" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.4.1.1.1.1.1">Fixed Cam. (0.6)</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the success rates of the Being-0 navigation system across various experimental conditions.  It shows how well the robot navigated to different target locations within various indoor environments.  The environments tested included simple rooms, rooms with obstacles, and rooms that required crossing between areas. This data demonstrates the robustness and generalizability of the navigation system in complex scenarios.
> <details>
> <summary>read the caption</summary>
> Table 5: Navigation performance across various scene configurations and target locations.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.3.5.1.1">
<tr class="ltx_tr" id="S5.T3.3.5.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.3.5.1.1.1.1" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.5.1.1.1.1.1">Fixed Cam. (0.9)</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the success rates of various manipulation skills performed by the humanoid robot in different scenarios. These scenarios include using seen and unseen objects and situations with visual disturbances. The results demonstrate the robustness and generalizability of the learned manipulation skills.  The asterisk (*) indicates that tactile sensors were added to the dexterous hands for those specific trials.
> <details>
> <summary>read the caption</summary>
> Table 6: Performance of manipulation skills across different scene configurations, including seen objects, unseen objects, and scenarios with visual perturbations. * denotes the use of dexterous hands equipped with tactile sensors.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T4.1.1">
<tr class="ltx_tr" id="S5.T4.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S5.T4.1.1.1.1" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T4.1.1.1.2" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.2.1">Avg. Speed</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T4.1.1.1.3" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.3.1">Success</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S5.T4.1.1.2.1" style="padding:1pt 0.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S5.T4.1.1.2.1.1">
<tr class="ltx_tr" id="S5.T4.1.1.2.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.1.2.1.1.1.1" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.2.1.1.1.1.1">w/o Connector</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T4.1.1.2.2" style="padding:1pt 0.0pt;">2.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T4.1.1.2.3" style="padding:1pt 0.0pt;">0 / 5</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T4.1.1.3.1" style="padding:1pt 0.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S5.T4.1.1.3.1.1">
<tr class="ltx_tr" id="S5.T4.1.1.3.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.1.3.1.1.1.1" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.3.1.1.1.1.1">Fixed Cam. (0.3)</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.1.3.2" style="padding:1pt 0.0pt;">8.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.1.3.3" style="padding:1pt 0.0pt;">
<span class="ltx_text ltx_font_bold" id="S5.T4.1.1.3.3.1">5</span> / 5</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S5.T4.1.1.4.1" style="padding:1pt 0.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S5.T4.1.1.4.1.1">
<tr class="ltx_tr" id="S5.T4.1.1.4.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.1.4.1.1.1.1" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.4.1.1.1.1.1">Being-0</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T4.1.1.4.2" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.4.2.1">9.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T4.1.1.4.3" style="padding:1pt 0.0pt;">
<span class="ltx_text ltx_font_bold" id="S5.T4.1.1.4.3.1">5</span> / 5</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a breakdown of the sub-processes involved in completing several long-horizon tasks.  For each task, it lists the individual steps required, and shows the success rates achieved by the Being-0 system (with the Connector module) and a baseline system (without the Connector).  The results highlight the improvement in task completion rates resulting from the addition of the Connector module.
> <details>
> <summary>read the caption</summary>
> Table 7: Detailed sub-processes required to complete each long-horizon task, along with the success rates of Being-0 and the baseline.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T4.1.1.2.1.1">
<tr class="ltx_tr" id="S5.T4.1.1.2.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.1.2.1.1.1.1" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.2.1.1.1.1.1">w/o Connector</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table shows the number of successful trajectory demonstrations collected for each manipulation skill during the teleoperation phase of skill acquisition.  The data was used to train the manipulation skill policies via imitation learning.  The number of trajectories varies based on the complexity of the task and the ease of demonstration.
> <details>
> <summary>read the caption</summary>
> Table 8: Number of trajectories collected for each manipulation skill.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T4.1.1.3.1.1">
<tr class="ltx_tr" id="S5.T4.1.1.3.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.1.3.1.1.1.1" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.3.1.1.1.1.1">Fixed Cam. (0.3)</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used during the training of the Actor-Critic (ACT) policy for acquiring manipulation skills.  The ACT policy is a behavior cloning method that uses a Transformer architecture and is trained using teleoperation data. The hyperparameters shown control aspects of the training process, such as the number of training steps, batch size, learning rate, and gradient clipping.
> <details>
> <summary>read the caption</summary>
> Table 9: Hyperparameters used for training the ACT policy.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T4.1.1.4.1.1">
<tr class="ltx_tr" id="S5.T4.1.1.4.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T4.1.1.4.1.1.1.1" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.4.1.1.1.1.1">Being-0</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents examples of training data used to teach the vision-language model to perform visual understanding tasks.  It illustrates how different question types (bounding box detection, item identification, image description, and ground identification) are phrased and what types of answers are expected.  This data helps the model learn to connect visual input with various language-based queries.
> <details>
> <summary>read the caption</summary>
> Table 10: Examples of the training data for training the vision-language model to acquire the visual understanding ability.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T5.1">
<tr class="ltx_tr" id="S5.T5.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S5.T5.1.1.1" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.1">Task</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T5.1.1.2" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.2.1">Success</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S5.T5.1.2.1" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.2.1.1">In-room</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T5.1.2.2" style="padding:1pt 0.0pt;">1.00</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T5.1.3.1" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.3.1.1">In-room with obstacles</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.1.3.2" style="padding:1pt 0.0pt;">0.80</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S5.T5.1.4.1" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.4.1.1">Cross-room</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T5.1.4.2" style="padding:1pt 0.0pt;">0.83</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a summary of the dataset used to train the vision-language model (VLM) within the embodied connector module.  It breaks down the number of samples collected for each type of visual understanding (VLU) task and action planning (AP) task.  The VLU tasks include bounding box detection, yes/no questions, and image description, while the AP tasks involve the planning of actions by the robot.
> <details>
> <summary>read the caption</summary>
> Table 11: Task Categories and Sample Numbers
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T6.3">
<tr class="ltx_tr" id="S5.T6.3.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="S5.T6.3.1.1" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.3.1.1.1">
<span class="ltx_p" id="S5.T6.3.1.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.3.1.1.1.1.1">Task</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="S5.T6.3.1.2" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.3.1.2.1">
<span class="ltx_p" id="S5.T6.3.1.2.1.1" style="width:14.2pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.3.1.2.1.1.1">Seen Obj.</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="S5.T6.3.1.3" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.3.1.3.1">
<span class="ltx_p" id="S5.T6.3.1.3.1.1" style="width:14.2pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.3.1.3.1.1.1">Unseen Obj.</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="S5.T6.3.1.4" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.3.1.4.1">
<span class="ltx_p" id="S5.T6.3.1.4.1.1" style="width:37.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.3.1.4.1.1.1">Perturb.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T6.3.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S5.T6.3.2.1" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.3.2.1.1">
<span class="ltx_p" id="S5.T6.3.2.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.3.2.1.1.1.1">Grasp-bottle</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S5.T6.3.2.2" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.3.2.2.1">
<span class="ltx_p" id="S5.T6.3.2.2.1.1" style="width:14.2pt;">0.86</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S5.T6.3.2.3" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.3.2.3.1">
<span class="ltx_p" id="S5.T6.3.2.3.1.1" style="width:14.2pt;">0.63</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S5.T6.3.2.4" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.3.2.4.1">
<span class="ltx_p" id="S5.T6.3.2.4.1.1" style="width:37.0pt;">0.77</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T6.3.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T6.3.3.1" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.3.3.1.1">
<span class="ltx_p" id="S5.T6.3.3.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.3.3.1.1.1.1">Handout-snack</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T6.3.3.2" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.3.3.2.1">
<span class="ltx_p" id="S5.T6.3.3.2.1.1" style="width:14.2pt;">0.90</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T6.3.3.3" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.3.3.3.1">
<span class="ltx_p" id="S5.T6.3.3.3.1.1" style="width:14.2pt;">1.00</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T6.3.3.4" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.3.3.4.1">
<span class="ltx_p" id="S5.T6.3.3.4.1.1" style="width:37.0pt;">0.80</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T6.3.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T6.3.4.1" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.3.4.1.1">
<span class="ltx_p" id="S5.T6.3.4.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.3.4.1.1.1.1">Place-pole</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T6.3.4.2" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.3.4.2.1">
<span class="ltx_p" id="S5.T6.3.4.2.1.1" style="width:14.2pt;">0.90</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T6.3.4.3" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.3.4.3.1">
<span class="ltx_p" id="S5.T6.3.4.3.1.1" style="width:14.2pt;">–</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T6.3.4.4" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.3.4.4.1">
<span class="ltx_p" id="S5.T6.3.4.4.1.1" style="width:37.0pt;">0.80</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T6.3.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T6.3.5.1" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.3.5.1.1">
<span class="ltx_p" id="S5.T6.3.5.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.3.5.1.1.1.1">Play-chess*</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T6.3.5.2" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.3.5.2.1">
<span class="ltx_p" id="S5.T6.3.5.2.1.1" style="width:14.2pt;">0.90</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T6.3.5.3" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.3.5.3.1">
<span class="ltx_p" id="S5.T6.3.5.3.1.1" style="width:14.2pt;">–</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T6.3.5.4" style="padding:1pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.3.5.4.1">
<span class="ltx_p" id="S5.T6.3.5.4.1.1" style="width:37.0pt;">0.90</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the data used for training the bounding box prediction model. Each row represents a category of objects or areas within the dataset, indicating how many images are associated with each category. The categories cover various locations (e.g., Kitchen Area, Robot Laboratory Room) and specific objects within these locations (e.g., coffee machine, espresso coffee button).  The 'Value' column shows the frequency of appearance of each category in the dataset, crucial for understanding the class distribution and potential biases in the model's training data. This information is important for assessing the model's performance and identifying areas for potential improvement.
> <details>
> <summary>read the caption</summary>
> Table 12: Category data overview for the bounding box task.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T7.1">
<tr class="ltx_tr" id="A1.T7.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="A1.T7.1.1.1" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1">Task</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="A1.T7.1.1.2" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.2.1">Sub-Process</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A1.T7.1.1.3" style="padding:1pt 0.0pt;">
<table class="ltx_tabular ltx_align_middle" id="A1.T7.1.1.3.1">
<tr class="ltx_tr" id="A1.T7.1.1.3.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.1.1.3.1.1.1" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.3.1.1.1.1">w/o Connector</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A1.T7.1.1.4" style="padding:1pt 0.0pt;">
<table class="ltx_tabular ltx_align_middle" id="A1.T7.1.1.4.1">
<tr class="ltx_tr" id="A1.T7.1.1.4.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.1.1.4.1.1.1" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.4.1.1.1.1">Being-0</span></td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="A1.T7.1.2.1" rowspan="2" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.2.1.1">Fetch-bottle</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="A1.T7.1.2.2" style="padding:1pt 0.0pt;">Navigate to table.</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T7.1.2.3" style="padding:1pt 0.0pt;">0 / 5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T7.1.2.4" style="padding:1pt 0.0pt;">5 / 5</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T7.1.3.1" style="padding:1pt 0.0pt;">Grasp cup.</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.1.3.2" style="padding:1pt 0.0pt;">0 / 5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.1.3.3" style="padding:1pt 0.0pt;">4 / 5</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="A1.T7.1.4.1" rowspan="2" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.4.1.1">Deliver-basket</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="A1.T7.1.4.2" style="padding:1pt 0.0pt;">Navigate to table.</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T7.1.4.3" style="padding:1pt 0.0pt;">0 / 5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T7.1.4.4" style="padding:1pt 0.0pt;">5 / 5</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T7.1.5.1" style="padding:1pt 0.0pt;">Place basket.</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.1.5.2" style="padding:1pt 0.0pt;">0 / 5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.1.5.3" style="padding:1pt 0.0pt;">3 / 5</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="A1.T7.1.6.1" rowspan="4" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.6.1.1">Prepare-coffee</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="A1.T7.1.6.2" style="padding:1pt 0.0pt;">Navigate to table.</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T7.1.6.3" style="padding:1pt 0.0pt;">0 / 5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T7.1.6.4" style="padding:1pt 0.0pt;">5 / 5</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T7.1.7.1" style="padding:1pt 0.0pt;">Grasp cup.</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.1.7.2" style="padding:1pt 0.0pt;">0 / 5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.1.7.3" style="padding:1pt 0.0pt;">4 / 5</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T7.1.8.1" style="padding:1pt 0.0pt;">Navigate to coffee machine.</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.1.8.2" style="padding:1pt 0.0pt;">0 / 5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.1.8.3" style="padding:1pt 0.0pt;">3 / 5</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T7.1.9.1" style="padding:1pt 0.0pt;">Place cup.</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.1.9.2" style="padding:1pt 0.0pt;">0 / 5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.1.9.3" style="padding:1pt 0.0pt;">3 / 5</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="A1.T7.1.10.1" rowspan="4" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.10.1.1">Make-coffee</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="A1.T7.1.10.2" style="padding:1pt 0.0pt;">Place cup.</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T7.1.10.3" style="padding:1pt 0.0pt;">5 / 5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T7.1.10.4" style="padding:1pt 0.0pt;">5 / 5</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T7.1.11.1" style="padding:1pt 0.0pt;">Select coffee.</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.1.11.2" style="padding:1pt 0.0pt;">5 / 5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.1.11.3" style="padding:1pt 0.0pt;">5 / 5</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T7.1.12.1" style="padding:1pt 0.0pt;">Select confirmation.</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.1.12.2" style="padding:1pt 0.0pt;">4 / 5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.1.12.3" style="padding:1pt 0.0pt;">4 / 5</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T7.1.13.1" style="padding:1pt 0.0pt;">Grasp cup.</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.1.13.2" style="padding:1pt 0.0pt;">4 / 5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.1.13.3" style="padding:1pt 0.0pt;">4 / 5</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb ltx_border_t" id="A1.T7.1.14.1" rowspan="3" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.14.1.1">Deliver-coffee</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="A1.T7.1.14.2" style="padding:1pt 0.0pt;">Grasp-cup.</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T7.1.14.3" style="padding:1pt 0.0pt;">5 / 5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T7.1.14.4" style="padding:1pt 0.0pt;">5 / 5</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T7.1.15.1" style="padding:1pt 0.0pt;">Navigate to table.</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.1.15.2" style="padding:1pt 0.0pt;">0 / 5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.1.15.3" style="padding:1pt 0.0pt;">4 / 5</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.16">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="A1.T7.1.16.1" style="padding:1pt 0.0pt;">Place cup.</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T7.1.16.2" style="padding:1pt 0.0pt;">0 / 5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T7.1.16.3" style="padding:1pt 0.0pt;">4 / 5</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a breakdown of the data used for training the vision-language model's 'yes/no' question answering ability.  It lists the different categories of objects or scenarios (e.g., 'Coffee Machine', 'Reception Desk', 'Hallway') and the number of training samples associated with each category. This helps to understand the distribution of data across various aspects of the environment, ensuring a balanced model.
> <details>
> <summary>read the caption</summary>
> Table 13: Category data overview for the yes/no task.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T7.1.1.3.1">
<tr class="ltx_tr" id="A1.T7.1.1.3.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.1.1.3.1.1.1" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.3.1.1.1.1">w/o Connector</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the prompt used in the information gathering process.  The prompt instructs the foundation model (a large language model) on how to process visual and textual inputs to understand the robot's environment and task.  Specific instructions are given for image description, identifying the robot's current location,  determining the cup-holding status, and determining which objects need to be targeted next.
> <details>
> <summary>read the caption</summary>
> Table 14: The prompt we used for information gathering process.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T7.1.1.4.1">
<tr class="ltx_tr" id="A1.T7.1.1.4.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.1.1.4.1.1.1" style="padding:1pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.4.1.1.1.1">Being-0</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the prompt used by the foundation model in the Being-0 framework to summarize the progress of a task and to propose a new subtask.  The prompt guides the model through a structured process, incorporating information from previous subtasks, the current image, and a semantic map. It includes sections for summarizing past actions, self-reflection, error analysis, and ultimately proposing a well-reasoned next step for the robot to take toward task completion. The prompt design emphasizes a systematic and logical approach to decision making in complex, real-world scenarios.
> <details>
> <summary>read the caption</summary>
> Table 15: The prompt for summarizing task progress and proposing a new subtask.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T8.1">
<tr class="ltx_tr" id="A2.T8.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="A2.T8.1.1.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.1.1">Skill</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_tt" id="A2.T8.1.1.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.2.1">Num. Trajectories</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="A2.T8.1.2.1" style="padding-left:0.0pt;padding-right:0.0pt;">Carry Basket</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_t" id="A2.T8.1.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">25</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A2.T8.1.3.1" style="padding-left:0.0pt;padding-right:0.0pt;">Handout Snack</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="A2.T8.1.3.2" style="padding-left:0.0pt;padding-right:0.0pt;">50</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A2.T8.1.4.1" style="padding-left:0.0pt;padding-right:0.0pt;">Grasp Bottle</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="A2.T8.1.4.2" style="padding-left:0.0pt;padding-right:0.0pt;">150</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A2.T8.1.5.1" style="padding-left:0.0pt;padding-right:0.0pt;">Grasp Cup</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="A2.T8.1.5.2" style="padding-left:0.0pt;padding-right:0.0pt;">200</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A2.T8.1.6.1" style="padding-left:0.0pt;padding-right:0.0pt;">Open Beer</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="A2.T8.1.6.2" style="padding-left:0.0pt;padding-right:0.0pt;">50</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A2.T8.1.7.1" style="padding-left:0.0pt;padding-right:0.0pt;">Place Basket</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="A2.T8.1.7.2" style="padding-left:0.0pt;padding-right:0.0pt;">25</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A2.T8.1.8.1" style="padding-left:0.0pt;padding-right:0.0pt;">Place Cup</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="A2.T8.1.8.2" style="padding-left:0.0pt;padding-right:0.0pt;">200</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A2.T8.1.9.1" style="padding-left:0.0pt;padding-right:0.0pt;">Place Pole</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="A2.T8.1.9.2" style="padding-left:0.0pt;padding-right:0.0pt;">50</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A2.T8.1.10.1" style="padding-left:0.0pt;padding-right:0.0pt;">Play Chess</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="A2.T8.1.10.2" style="padding-left:0.0pt;padding-right:0.0pt;">70</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="A2.T8.1.11.1" style="padding-left:0.0pt;padding-right:0.0pt;">Play Toy Bricks</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_bb" id="A2.T8.1.11.2" style="padding-left:0.0pt;padding-right:0.0pt;">50</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the prompt used for the self-reflection step in the Being-0 framework.  The prompt guides the foundation model to analyze the results of the last action, evaluate its success in achieving the overall goal, and provide a reasoned analysis of why it succeeded or failed.  It also includes fields for providing visual information (images) and contextual data (semantic map, robot location). The prompt aims to make the foundation model's reasoning process more transparent and robust, leading to better decision-making and task completion. 
> <details>
> <summary>read the caption</summary>
> Table 16: The prompt for reflecting on the task and evaluating success.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T9.1">
<tr class="ltx_tr" id="A2.T9.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="A2.T9.1.1.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.1.1.1.1">Hyperparameter</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_tt" id="A2.T9.1.1.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.1.1.2.1">Value</span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="A2.T9.1.2.1" style="padding-left:0.0pt;padding-right:0.0pt;">Training steps</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_t" id="A2.T9.1.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">500,000</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A2.T9.1.3.1" style="padding-left:0.0pt;padding-right:0.0pt;">Batch size</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="A2.T9.1.3.2" style="padding-left:0.0pt;padding-right:0.0pt;">90</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A2.T9.1.4.1" style="padding-left:0.0pt;padding-right:0.0pt;">Learning rate</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="A2.T9.1.4.2" style="padding-left:0.0pt;padding-right:0.0pt;">1e-5</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A2.T9.1.5.1" style="padding-left:0.0pt;padding-right:0.0pt;">Gradient clip norm</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="A2.T9.1.5.2" style="padding-left:0.0pt;padding-right:0.0pt;">10</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A2.T9.1.6.1" style="padding-left:0.0pt;padding-right:0.0pt;">Chunk size (train)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="A2.T9.1.6.2" style="padding-left:0.0pt;padding-right:0.0pt;">30</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="A2.T9.1.7.1" style="padding-left:0.0pt;padding-right:0.0pt;">Chunk size (test)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_bb" id="A2.T9.1.7.2" style="padding-left:0.0pt;padding-right:0.0pt;">10</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table displays the prompt used for the Foundation Model (FM) in the Being-0 framework.  The prompt instructs the FM on how to select the next action for the humanoid robot. It provides the FM with relevant context, including the current task, subtask, visual input (image description), robot's status (location, whether it holds an object), past actions and their outcomes, a list of available actions (skill library), and a semantic map. The prompt guides the FM in making decisions by asking it to consider success conditions, relevant spatial relationships, and the need to search for targets that might not be immediately visible.  The prompt is designed to promote both successful task execution and efficient decision-making by the FM.
> <details>
> <summary>read the caption</summary>
> Table 17: The prompt for decision-making and action execution in humanoid robot tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T10.1.1">
<tr class="ltx_tr" id="A2.T10.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_l ltx_border_r ltx_border_tt" id="A2.T10.1.1.1.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T10.1.1.1.1.1">Task Name</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_tt" id="A2.T10.1.1.1.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T10.1.1.1.2.1">Samples</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.1.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T10.1.1.2.1" style="padding-left:0.0pt;padding-right:0.0pt;">Bounding Boxes</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="A2.T10.1.1.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text ltx_font_bold" id="A2.T10.1.1.2.2.1">Text Prompt</span>: Detect the bounding box of target object: Reception desk.</td>
</tr>
<tr class="ltx_tr" id="A2.T10.1.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_l ltx_border_r" id="A2.T10.1.1.3.1" style="padding-left:0.0pt;padding-right:0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A2.T10.1.1.3.2" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text ltx_font_bold" id="A2.T10.1.1.3.2.1">Answer</span>: [0.471, 0.082, 0.765, 0.951]</td>
</tr>
<tr class="ltx_tr" id="A2.T10.1.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T10.1.1.4.1" style="padding-left:0.0pt;padding-right:0.0pt;">Identify items</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="A2.T10.1.1.4.2" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text ltx_font_bold" id="A2.T10.1.1.4.2.1">Text Prompt</span>: Is there an exit in the image? Do not generate anything else except ’Yes’ or ’No’.</td>
</tr>
<tr class="ltx_tr" id="A2.T10.1.1.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_l ltx_border_r" id="A2.T10.1.1.5.1" style="padding-left:0.0pt;padding-right:0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A2.T10.1.1.5.2" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text ltx_font_bold" id="A2.T10.1.1.5.2.1">Answer</span>: No.</td>
</tr>
<tr class="ltx_tr" id="A2.T10.1.1.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T10.1.1.6.1" style="padding-left:0.0pt;padding-right:0.0pt;">Describe image</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="A2.T10.1.1.6.2" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text ltx_font_bold" id="A2.T10.1.1.6.2.1">Text Prompt</span>: Describe the current image. List all the items you could see.</td>
</tr>
<tr class="ltx_tr" id="A2.T10.1.1.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_l ltx_border_r" id="A2.T10.1.1.7.1" style="padding-left:0.0pt;padding-right:0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A2.T10.1.1.7.2" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text ltx_font_bold" id="A2.T10.1.1.7.2.1">Answer</span>: The image shows a corridor or office area with the following items visible:</td>
</tr>
<tr class="ltx_tr" id="A2.T10.1.1.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_l ltx_border_r" id="A2.T10.1.1.8.1" style="padding-left:0.0pt;padding-right:0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A2.T10.1.1.8.2" style="padding-left:0.0pt;padding-right:0.0pt;">1. A person wearing a light-colored outfit.</td>
</tr>
<tr class="ltx_tr" id="A2.T10.1.1.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_l ltx_border_r" id="A2.T10.1.1.9.1" style="padding-left:0.0pt;padding-right:0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A2.T10.1.1.9.2" style="padding-left:0.0pt;padding-right:0.0pt;">2. A green-framed glass door.</td>
</tr>
<tr class="ltx_tr" id="A2.T10.1.1.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_l ltx_border_r" id="A2.T10.1.1.10.1" style="padding-left:0.0pt;padding-right:0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A2.T10.1.1.10.2" style="padding-left:0.0pt;padding-right:0.0pt;">3. A yellow sofa with cushions.</td>
</tr>
<tr class="ltx_tr" id="A2.T10.1.1.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_l ltx_border_r" id="A2.T10.1.1.11.1" style="padding-left:0.0pt;padding-right:0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A2.T10.1.1.11.2" style="padding-left:0.0pt;padding-right:0.0pt;">4. A wall-mounted tablet or screen.</td>
</tr>
<tr class="ltx_tr" id="A2.T10.1.1.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.T10.1.1.12.1" style="padding-left:0.0pt;padding-right:0.0pt;">Describe the ground and identify the transition</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="A2.T10.1.1.12.2" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text ltx_font_bold" id="A2.T10.1.1.12.2.1">Text Prompt</span>: Describe the ground and identify the transition between different grounds if there are any.</td>
</tr>
<tr class="ltx_tr" id="A2.T10.1.1.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_bb ltx_border_l ltx_border_r" id="A2.T10.1.1.13.1" style="padding-left:0.0pt;padding-right:0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb ltx_border_r" id="A2.T10.1.1.13.2" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text ltx_font_bold" id="A2.T10.1.1.13.2.1">Answer</span>: grey pattern carpet</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table shows a concise prompt used for guiding a humanoid robot's decision-making process and action execution. It provides essential information like the overall task, subtask details, a map of the environment, available actions, and prompts the model to respond using Python code for action execution.
> <details>
> <summary>read the caption</summary>
> Table 18: The shorter version of the prompt we used for decision making and action execution of humanoid robot
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.12533/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12533/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12533/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12533/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12533/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12533/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12533/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12533/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12533/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12533/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12533/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12533/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12533/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12533/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12533/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12533/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12533/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12533/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12533/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12533/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}