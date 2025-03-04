---
title: "CLEA: Closed-Loop Embodied Agent for Enhancing Task Execution in Dynamic Environments"
summary: "CLEA: Enhancing task execution in dynamic environments with a closed-loop embodied agent."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Embodied AI", "🏢 Shenzhen Future Network of Intelligence Institute",]
showSummary: true
date: 2025-03-02
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.00729 {{< /keyword >}}
{{< keyword icon="writer" >}} Mingcong Lei et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.00729" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.00729" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.00729/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) have shown promise in task planning, but struggle with long-horizon tasks and dynamic environments. Existing systems lack adaptability and real-time environmental awareness, hindering their robustness in real-world scenarios. To tackle this, current integrations still face limits in feedback quality and struggle with continuous adaptation and deployment complexities.



This paper introduces **CLEA, a novel architecture using four specialized LLMs for closed-loop task management**. It features an interactive task planner for dynamic subtask generation and a multimodal execution critic for assessing action feasibility. **CLEA enhances robustness in object search and manipulation tasks, outperforming baselines with significant improvements in success and completion rates**.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} CLEA, a novel closed-loop embodied agent, significantly improves task success and completion rates in dynamic environments. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The framework integrates interactive task planning and multimodal execution criticism, enabling adaptive decision-making and robustness. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Open-source LLMs and VLMs are leveraged to create a reproducible and extensible agent system for real-world robotic platforms. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces CLEA, advancing embodied AI by enhancing task planning & execution in dynamic environments. Its closed-loop architecture & open-source LLMs offer researchers a robust, reproducible platform for complex robotic tasks, pushing forward real-world AI applications.

------
#### Visual Insights



![](https://arxiv.org/html/2503.00729/extracted/6245032/img/AC.jpg)

> 🔼 CLEA's architecture is depicted in this figure.  Environmental data is received by the Observer (VLM), which then sends it to the Summarizer (LLM). This module creates a memory representation that is used by the Planner (LLM) to create an initial sequence of actions based on the robot's skill set and memory.  The Critic (VLM) examines the actions' feasibility and proposes alternative plans as necessary in response to changing conditions in the environment.  This closed-loop system enables continuous adaptation to real-time situations.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of CLEA. The observer (VLM) provides environmental data, which the summarizer (LLM) processes into memory. The planner (LLM) generates an initial action sequence based on the robot’s skill pool and memory, while the critic (VLM) evaluates action feasibility and offers re-plan recommendations in response to environmental dynamics.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_t" id="S5.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.1.1">Skill pool</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S5.T1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.2.1">Description</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="S5.T1.1.2.1.1">open(robot, openable_object)</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T1.1.2.1.2">robot open object</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.3.2">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="S5.T1.1.3.2.1">close(robot, openable_object)</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T1.1.3.2.2">robot close object</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.4.3">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="S5.T1.1.4.3.1">pick_from(robot, object, space)</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T1.1.4.3.2">robot pick object from space</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.5.4">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="S5.T1.1.5.4.1">release_to(robot, space)</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T1.1.5.4.2">robot release the object on its hand</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.6.5">
<td class="ltx_td ltx_border_l ltx_border_r" id="S5.T1.1.6.5.1"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.1.6.5.2">to space</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.7.6">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="S5.T1.1.7.6.1">go_to(robot, navi_point)</td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r ltx_border_t" id="S5.T1.1.7.6.2">robot navigate to navigation point</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table lists the predefined skills available to the robots within the CLEA system's environment.  Each skill is a function call that the planner can use to direct the robots' actions.  These skills encompass basic functionalities such as opening and closing containers, picking up and releasing objects, and navigating to specific points in the environment.  The descriptions provide concise explanations of each skill's function.
> <details>
> <summary>read the caption</summary>
> TABLE I: Predefined skill pool in the environment
> </details>





### In-depth insights


#### CLEA: Overview
Based on the text, the CLEA framework is illustrated as having three main components: an observer, a memory module, and a planner-critic agent. **The observer is key for converting visual data into a format usable by the language models, bridging the gap between what the robot sees and what the language model can understand.** The memory module maintains a structured belief about the environment, using a history buffer of interactions and a summarizer to create beliefs based on this history. **The planner-critic agent then tackles dynamic planning, divided into two sub-parts: the planner, which sets sub-goals and action sequences, and the critic, which evaluates the plan at each step, re-adjusting as needed.** CLEA helps the robot understand its behavior, recognize when its current strategy is suboptimal, and correct in real-time.

#### Planner-Critic
The Planner-Critic module is a crucial component for **closed-loop decision-making** in embodied agents. It likely involves two sub-modules: the **Planner**, responsible for generating action sequences based on current beliefs and environmental information, and the **Critic**, which evaluates the feasibility and effectiveness of those actions in real-time. The **Planner** likely employs hierarchical planning, generating sub-goals and action sequences to achieve them, while the **Critic** leverages sensory input and contextual understanding to assess action validity. **The Critic's** feedback is essential for re-planning and adapting to dynamic environments, ensuring robustness and flexibility. The interaction between these modules enables the agent to dynamically adjust its plan in response to unexpected events or environmental changes, thereby facilitating successful task completion and error recovery.

#### Env. Dynamics
In embodied AI, environmental dynamics pose significant challenges. Traditional task planning often struggles with **unpredictable changes in object states and spatial relationships**, leading to failures in long-horizon tasks. Robustness necessitates continuous adaptation through closed-loop feedback mechanisms, where agents perceive the environment, reason about actions, and execute accordingly. Key considerations include **handling partial observability**, as robots only have limited sensory input, and **maintaining consistent task state tracking** despite environmental perturbations. Incorporating memory and predictive models can aid in anticipating changes and refining plans in real-time. Addressing these complexities is crucial for developing truly adaptable and reliable robotic systems operating in dynamic real-world scenarios where disturbances frequently occur.

#### Robustness study
**Robustness in embodied AI systems, like CLEA, is paramount for real-world deployment.** It entails the ability to maintain performance despite environmental changes, object misplacements, and unexpected robot behaviors. **A rigorous robustness study involves testing the agent across diverse scenarios and tasks.** Key metrics include success rate and average score, reflecting both task completion and action efficiency. **Ablation studies are crucial for identifying the contribution of specific modules**, such as the critic, in ensuring robustness. **Analyzing failure modes, like outdated actions or critic errors, pinpoints areas for improvement.** Benchmarking against simpler open-loop agents highlights the advantages of closed-loop planning in handling dynamic environments. Understanding robustness in embodied AI systems is essential for trustworthy application.

#### Failure analysis
The failure analysis section of the paper offers valuable insights into the limitations and potential areas for improvement in the CLEA framework. The identification of "Invalid actions" as the most frequent failure mode highlights a crucial area where the LLM struggles with adhering to the predefined action format. **This suggests a need for refining the interface between the LLM planner and the robotic platform,** potentially through improved prompt engineering or a more flexible action representation. The "Critic failures", where the critic fails to identify improper actions, underscores the limitations in the VLM's perceptual capabilities. **This calls for exploring more advanced visual reasoning techniques** or incorporating additional sensory input to enhance the critic's ability to accurately assess the environment and action feasibility. The "Multi-robot collaboration issues" point to a challenge in coordinating multiple agents, indicating that the **LLMs are not particularly adept at understanding and managing complex inter-robot relationships.** This suggests a direction for future work involving incorporating more sophisticated multi-agent reasoning capabilities into the CLEA framework.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.00729/extracted/6245032/img/AC+.jpg)

> 🔼 Figure 3 illustrates CLEA's closed-loop reasoning process. Unlike traditional systems that simply halt upon detecting a failure (like not finding medication), CLEA performs internal reasoning. When the robot doesn't find medication in the drawer, the critic module analyzes the situation.  Instead of stopping, the critic suggests alternative actions, such as checking other compartments, enabling the robot to adapt and continue toward task completion.
> <details>
> <summary>read the caption</summary>
> Figure 3: The reasoning and output of CLEA. Unlike traditional failure-detection classification systems, CLEA performs internal reasoning upon receiving visual input and provides structured outputs. In the case where no medication is found in an empty drawer, the planner does not halt its intent. Instead, the critic suggests exploring alternative locations and provides the correct advice to check other compartments of the drawer, thereby guiding the successful completion of the task.
> </details>



![](https://arxiv.org/html/2503.00729/extracted/6245032/img/ENV+.jpg)

> 🔼 The figure visualizes the experimental setup used in the paper. It shows a kitchen-like environment with various objects, such as a refrigerator, oven, drawer, trash can, sink, plate, apple, and orange. Two robots, a dual-arm robot and a single-arm robot, are included, highlighting the multi-robot aspect of the experiments.  The environment is designed to be partially observable and dynamic to test the robustness of the proposed system. 
> <details>
> <summary>read the caption</summary>
> Figure 4: Visualization of the experimental environment.
> </details>



![](https://arxiv.org/html/2503.00729/extracted/6245032/img/result.png)

> 🔼 Figure 5 presents a comparative analysis of the performance of three different agents across three types of tasks: search, manipulation, and integration tasks.  The three agents are: CLEA (the proposed closed-loop embodied agent), CLEA w/o critic (an ablation study removing the critic module from CLEA), and a baseline open-loop agent.  The bar charts visually compare the Success Rates (SR) and Average Scores (AS) achieved by each agent on each task type.  This allows for a direct comparison of the effectiveness of the closed-loop approach (CLEA) compared to the open-loop baseline and the importance of the critic module within the CLEA architecture.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparisons among the CLEA, the ablation, and the baseline agent.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T2.3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T2.3.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.3.1.1.1.1"><span class="ltx_text" id="S5.T2.3.1.1.1.1.1" style="font-size:70%;">Type</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.3.1.1.1.2"><span class="ltx_text" id="S5.T2.3.1.1.1.2.1" style="font-size:70%;">Reason</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.3.1.1.1.3"><span class="ltx_text" id="S5.T2.3.1.1.1.3.1" style="font-size:70%;">Count</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.3.1.1.1.4"><span class="ltx_text" id="S5.T2.3.1.1.1.4.1" style="font-size:70%;">Total</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.3.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.3.1.2.1.1" rowspan="4"><span class="ltx_text ltx_font_bold" id="S5.T2.3.1.2.1.1.1" style="font-size:70%;">Critic</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.1.2.1.2"><span class="ltx_text" id="S5.T2.3.1.2.1.2.1" style="font-size:70%;">Outdated actions</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.1.2.1.3"><span class="ltx_text" id="S5.T2.3.1.2.1.3.1" style="font-size:70%;">8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.1.2.1.4"><span class="ltx_text" id="S5.T2.3.1.2.1.4.1" style="font-size:70%;">44.4%</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.3.1.3.2">
<td class="ltx_td ltx_align_center" id="S5.T2.3.1.3.2.1"><span class="ltx_text" id="S5.T2.3.1.3.2.1.1" style="font-size:70%;">Redundant actions</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.1.3.2.2"><span class="ltx_text" id="S5.T2.3.1.3.2.2.1" style="font-size:70%;">6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.1.3.2.3"><span class="ltx_text" id="S5.T2.3.1.3.2.3.1" style="font-size:70%;">33.3%</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.3.1.4.3">
<td class="ltx_td ltx_align_center" id="S5.T2.3.1.4.3.1"><span class="ltx_text" id="S5.T2.3.1.4.3.1.1" style="font-size:70%;">Invalid actions</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.1.4.3.2"><span class="ltx_text" id="S5.T2.3.1.4.3.2.1" style="font-size:70%;">2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.3.1.4.3.3"><span class="ltx_text" id="S5.T2.3.1.4.3.3.1" style="font-size:70%;">11.1%</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.3.1.5.4">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.3.1.5.4.1"><span class="ltx_text" id="S5.T2.3.1.5.4.1.1" style="font-size:70%;">Wrong planning</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.3.1.5.4.2"><span class="ltx_text" id="S5.T2.3.1.5.4.2.1" style="font-size:70%;">2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.3.1.5.4.3"><span class="ltx_text" id="S5.T2.3.1.5.4.3.1" style="font-size:70%;">11.1%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a breakdown of the reasons why the critic module in CLEA (Closed-Loop Embodied Agent) flags an action as unsuitable (pi = false).  It categorizes the instances of unsuitable actions into four main reasons: outdated actions, redundant actions, invalid actions, and wrong planning.  For each reason, the table shows the count of occurrences and the percentage of the total number of instances where the critic raised a false flag.
> <details>
> <summary>read the caption</summary>
> TABLE II: Reasons and ratios when critic raise pi=falsesubscript𝑝𝑖falsep_{i}=\text{false}italic_p start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT = false
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1.1.1"><span class="ltx_text" id="S5.T3.1.1.1.1.1.1" style="font-size:70%;">Type</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1.1.2"><span class="ltx_text" id="S5.T3.1.1.1.1.2.1" style="font-size:70%;">Reason</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1.1.3"><span class="ltx_text" id="S5.T3.1.1.1.1.3.1" style="font-size:70%;">Count</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1.1.4"><span class="ltx_text" id="S5.T3.1.1.1.1.4.1" style="font-size:70%;">Total</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.1.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.1.1.2.1.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.2.1.1.1" style="font-size:70%;">Failure</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.2.1.2"><span class="ltx_text" id="S5.T3.1.1.2.1.2.1" style="font-size:70%;">Invalid actions</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.2.1.3"><span class="ltx_text" id="S5.T3.1.1.2.1.3.1" style="font-size:70%;">9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.2.1.4"><span class="ltx_text" id="S5.T3.1.1.2.1.4.1" style="font-size:70%;">45%</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.3.2">
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.3.2.1"><span class="ltx_text" id="S5.T3.1.1.3.2.1.1" style="font-size:70%;">Critic failures</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.3.2.2"><span class="ltx_text" id="S5.T3.1.1.3.2.2.1" style="font-size:70%;">8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.3.2.3"><span class="ltx_text" id="S5.T3.1.1.3.2.3.1" style="font-size:70%;">26.7%</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.4.3">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.4.3.1"><span class="ltx_text" id="S5.T3.1.1.4.3.1.1" style="font-size:70%;">Multi-robot collaboration</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.4.3.2"><span class="ltx_text" id="S5.T3.1.1.4.3.2.1" style="font-size:70%;">3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.4.3.3"><span class="ltx_text" id="S5.T3.1.1.4.3.3.1" style="font-size:70%;">15%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a failure analysis of the CLEA system, categorizing the reasons behind its failures and providing the count and percentage for each category.  The categories include invalid actions generated by the system, failures originating from the critic module (which assesses action feasibility), and issues related to multi-robot collaboration.
> <details>
> <summary>read the caption</summary>
> TABLE III: Reasons and ratios of failure caused by CLEA
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.00729/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00729/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00729/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00729/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00729/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00729/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00729/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}