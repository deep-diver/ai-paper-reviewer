---
title: "Agent S2: A Compositional Generalist-Specialist Framework for Computer Use Agents"
summary: "Agent S2: Compositional generalist-specialist framework for computer use agents."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Robotics", "🏢 Simular Research",]
showSummary: true
date: 2025-04-01
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.00906 {{< /keyword >}}
{{< keyword icon="writer" >}} Saaket Agashe et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-02 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.00906" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.00906" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.00906/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing computer use agents face challenges in GUI grounding, long-horizon task planning, and performance bottlenecks due to reliance on single generalist models. These agents struggle with accurately interpreting GUI elements and handling tasks with distractions and evolving user contexts. Current methods often underperform compared to specialist models in domain-specific subtasks, limiting overall effectiveness.



This paper introduces **Agent S2, a compositional framework** that delegates cognitive responsibilities across generalist and specialist models. It uses a Mixture-of-Grounding technique for precise GUI localization and Proactive Hierarchical Planning for dynamic action plan refinement. **Agent S2 achieves state-of-the-art performance on computer use benchmarks like OSWorld, WindowsAgentArena, and AndroidWorld**, demonstrating its effectiveness and scalability.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Agent S2 is a novel compositional framework for computer use agents, integrating generalist and specialist models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Agent S2 introduces a Mixture of Grounding and Proactive Hierarchical Planning to improve grounding and dynamic replanning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Agent S2 achieves SOTA performance across OSWorld, WindowsAgentArena, and AndroidWorld benchmarks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces Agent S2, a novel framework for computer use agents that surpasses existing methods on OSWorld, WindowsAgentArena, and AndroidWorld benchmarks. Agent S2 leverages a composition of generalist and specialist models, addressing key challenges such as **GUI grounding and long-horizon task planning**. This advancement promises to streamline human-computer interaction and **opens avenues for more efficient and adaptable AI-driven automation**. The modular approach allows for easier integration and optimization of specialized models, **potentially revolutionizing how agents interact with digital environments**.

------
#### Visual Insights



![](https://arxiv.org/html/2504.00906/x1.png)

> 🔼 The bar chart compares the success rates of Agent S2 and several other state-of-the-art computer use agents on the OSWorld benchmark.  The benchmark involves completing computer use tasks within 15 and 50 steps. Agent S2 significantly outperforms all other agents on both the 15-step and 50-step evaluations, highlighting its superior performance in automating digital tasks.
> <details>
> <summary>read the caption</summary>
> Figure 1: Agent S2 achieves new SOTA results (Success Rate) on computer use tasks on both 15-step and 50-step evaluation in OSWorld.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.2.1">15-step</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.3.1">50-step</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.2.1.1">Aria-UI w/ GPT-4o <cite class="ltx_cite ltx_citemacro_citep">(Yang et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.00906v1#bib.bib29" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.2.1.2">15.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.2.1.3">–</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.3.2">
<td class="ltx_td ltx_align_left" id="S4.T1.1.3.2.1">Aguvis-72B w/ GPT-4o <cite class="ltx_cite ltx_citemacro_citep">(Xu et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.00906v1#bib.bib28" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.3.2.2">17.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.3.2.3">–</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.4.3">
<td class="ltx_td ltx_align_left" id="S4.T1.1.4.3.1">Agent S w/ GPT-4o <cite class="ltx_cite ltx_citemacro_citep">(Agashe et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.00906v1#bib.bib1" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.4.3.2">20.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.4.3.3">–</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.5.4">
<td class="ltx_td ltx_align_left" id="S4.T1.1.5.4.1">Agent S w/ Claude-3.5-Sonnet  <cite class="ltx_cite ltx_citemacro_citep">(Agashe et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.00906v1#bib.bib1" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.5.4.2">20.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.5.4.3">–</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.6.5">
<td class="ltx_td ltx_align_left" id="S4.T1.1.6.5.1">UI-TARS-72B-SFT <cite class="ltx_cite ltx_citemacro_citep">(Qin et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.00906v1#bib.bib17" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.6.5.2">18.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.6.5.3">18.8</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.7.6">
<td class="ltx_td ltx_align_left" id="S4.T1.1.7.6.1">UI-TARS-72B-DPO <cite class="ltx_cite ltx_citemacro_citep">(Qin et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.00906v1#bib.bib17" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.7.6.2">22.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.7.6.3">24.6</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.8.7">
<td class="ltx_td ltx_align_left" id="S4.T1.1.8.7.1">OpenAI CUA <cite class="ltx_cite ltx_citemacro_citep">(OpenAI, <a class="ltx_ref" href="https://arxiv.org/html/2504.00906v1#bib.bib16" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.8.7.2">19.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.8.7.3">32.6</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.9.8">
<td class="ltx_td ltx_align_left" id="S4.T1.1.9.8.1">CCU w/ Claude-3.5-Sonnet (new) <cite class="ltx_cite ltx_citemacro_citep">(Anthropic, <a class="ltx_ref" href="https://arxiv.org/html/2504.00906v1#bib.bib2" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.9.8.2">14.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.9.8.3">22.0</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.10.9">
<td class="ltx_td ltx_align_left" id="S4.T1.1.10.9.1">CCU w/ Claude-3.7-Sonnet <cite class="ltx_cite ltx_citemacro_citep">(Anthropic, <a class="ltx_ref" href="https://arxiv.org/html/2504.00906v1#bib.bib3" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.10.9.2">15.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.10.9.3">26.0</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.11.10">
<td class="ltx_td ltx_align_left" id="S4.T1.1.11.10.1">
<span class="ltx_ERROR undefined" id="S4.T1.1.11.10.1.1">\hdashline</span><span class="ltx_text ltx_font_bold" id="S4.T1.1.11.10.1.2">Ours</span>
</td>
<td class="ltx_td" id="S4.T1.1.11.10.2"></td>
<td class="ltx_td" id="S4.T1.1.11.10.3"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.12.11">
<td class="ltx_td ltx_align_left" id="S4.T1.1.12.11.1">Agent S2 w/ Claude-3.5-Sonnet (new)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.12.11.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.12.11.2.1">24.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.12.11.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.12.11.3.1">33.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.13.12">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.1.13.12.1">Agent S2 w/ Claude-3.7-Sonnet</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.13.12.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.13.12.2.1">27.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.13.12.3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.13.12.3.1">34.5</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the success rates of various computer use agents on the OSWorld benchmark, a test of AI agents' ability to complete complex tasks by interacting with a computer's graphical user interface (GUI).  The benchmark involves two evaluation settings: 15-step and 50-step, representing tasks requiring shorter or longer sequences of actions.  The table compares the performance of Agent S2 (a new method proposed in the paper) against several existing state-of-the-art (SOTA) models, demonstrating Agent S2's superior performance in both scenarios. Notably, all agents except Agent S rely solely on screenshots as input for the GUI, while Agent S uses both accessibility trees and screenshots. This comparison highlights the effectiveness of Agent S2's approach.
> <details>
> <summary>read the caption</summary>
> Table 1: Success Rate (%) on OSWorld for different agents. Agent S2 achieves new state-of-the-art results on OSWorld for both 15 and 50-step evaluations. All Agents use only screenshots as input, except Agent S, which uses accessibility tree and screenshots.
> </details>





### In-depth insights


#### S2: Compositional AI
Compositional AI like Agent S2 represents a significant shift in how we approach building computer use agents. Instead of relying on a single, massive generalist model, it advocates for **delegating specific cognitive responsibilities** to specialized modules. This mimics how humans solve complex tasks by breaking them down into smaller, more manageable components handled by experts. The use of specialized components for grounding, planning, and execution allows for **greater precision and efficiency**, especially in tasks requiring intricate interaction with graphical user interfaces. This approach tackles the grounding bottleneck. By strategically combining generalist and specialist modules, it could allow systems to **outperform monolithic models**. The ability to refine action plans dynamically is crucial for robustness. The emergent behaviors resulting from compositional architectures also lead to improved capabilities.

#### Mixture of Grounding
**Mixture of Grounding** addresses the challenge of precisely localizing GUI elements. Instead of relying on a single model, the agent uses a **gating mechanism** to route actions to specialized grounding experts (Visual, Textual, Structural). This approach improves grounding by distributing the cognitive load, allowing the primary model to focus on reasoning. The **Visual Grounding Expert** uses description-based visual grounding, eliminating the need for accessibility trees. **Textual Grounding Expert** uses OCR to address the need for fine-grained text grounding. **Structural Grounding Expert** handles structured data. By composing these diverse specialists, the agent improves the accuracy and robustness of GUI interactions.

#### Proactive Planning
**Proactive planning** refines task execution by adapting to new data. Unlike reactive planning, which corrects after failure, **proactive planning** updates the strategy after each step. It minimizes noise by accounting for current states. The paper demonstrates its benefits in computer-use tasks where initial states can vary. By re-evaluating subgoals and integrating observations, it improves context awareness and reduces errors, contrasting with rigid, pre-set plans. This dynamic approach makes the system more robust to changes.

#### SOTA on 3 OS
**Agent S2** excels as **SOTA** on OSWorld, WindowsAgentArena, and AndroidWorld. It implies broad applicability. **OSWorld** tests desktop tasks in Ubuntu, **WindowsAgentArena** parallels in Windows, and **AndroidWorld** tests mobile UI navigation. This multi-OS focus is crucial because real-world agents must operate across diverse platforms. Achieving **SOTA** in all three demonstrates **Agent S2's** robust ability to handle various GUIs and task demands. Such versatility implies compositional design and a capacity for environmental adaptation, thus leading to efficiency across platforms.

#### Scaling Agent S2
**Scaling Agent S2** involves several critical aspects that are not explicitly detailed in the provided text, but can be inferred. The original paper emphasized that **scaling compute and timesteps enhances the agent's performance**. One can expect that increasing computational resources would lead to better model performance. As the model is allowed more steps, it is also more likely to complete the task at hand. Therefore, the Agent can now go through more data to make a better plan for completing the tasks. From the paper, the more steps that it takes, the better Agent S2 does. It can also leverage Proactive Hierarchical planning as more time steps are given. Also, by making use of the Mixture of Grounding, it will be able to delegate tasks effectively and properly as time steps increase.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.00906/extracted/6326309/assets/framework.png)

> 🔼 Agent S2 is a compositional framework that uses both generalist and specialist modules to handle complex computer tasks that require long-term planning.  The figure shows the system's architecture.  The Manager (M) handles high-level planning, breaking down complex tasks into smaller sub-goals.  The Worker (W) executes these sub-goals, using specialist grounding experts (MoG) to accurately locate and interact with GUI elements.  The interaction between these modules is dynamic and iterative, allowing Agent S2 to adapt to changing circumstances and unexpected events.
> <details>
> <summary>read the caption</summary>
> Figure 2: The Agent S2 framework. It composes generalist planning modules, Manager M𝑀Mitalic_M and Worker W𝑊Witalic_W, with specialist grounding experts to complete complex, long-horizon computer use tasks. Please refer to Section 3 for a detailed explanation.
> </details>



![](https://arxiv.org/html/2504.00906/extracted/6326309/assets/reactive_vs_proactive_planning.png)

> 🔼 This figure illustrates the core difference between reactive and proactive planning approaches in the context of hierarchical planning for computer use agents.  Reactive planning rigidly follows a pre-defined plan, only adjusting if a subtask fails.  In contrast, proactive planning dynamically updates the remaining plan after each completed subtask, allowing for adaptation to evolving observations and increased robustness in response to unforeseen circumstances.
> <details>
> <summary>read the caption</summary>
> Figure 3: Comparison between Reactive and Proactive Planning. Proactive planning re-evaluates and updates the remainder of the plan after every subtask, while reactive planning adheres to a fixed plan and only revises it in response to subtask failures.
> </details>



![](https://arxiv.org/html/2504.00906/x2.png)

> 🔼 Agent S2 initially tries to select a paragraph using the Visual Grounding Expert, but this attempt fails. It then self-corrects by switching to the Textual Grounding Expert, which successfully selects the desired span of text. Once this subgoal is achieved, Agent S2 proactively replan its actions, updating its internal state to reflect the successful completion of the subgoal and then proceeds to the next subgoal in its plan.
> <details>
> <summary>read the caption</summary>
> Figure 4: Agent S2 attempts to use Visual Grounding Expert to select a paragraph, then self-corrects and uses Textual Grounding Expert for span selection. After completing the subgoal, it replans from the new state and starts working on a new subgoal.
> </details>



![](https://arxiv.org/html/2504.00906/x3.png)

> 🔼 This ablation study investigates the individual and combined effects of Mixture of Grounding (MoG) and Proactive Hierarchical Planning (PHP) on the success rate of Agent S2.  The graph displays success rates for different configurations: Agent S2 with both MoG and PHP, Agent S2 without MoG, Agent S2 without PHP, and several baseline agents (UI-TARS-72B-DPO, UI-TARS-7B-DPO, UGround-V1-7B, and Claude-3.7-Sonnet). The results show the performance gains achieved by incorporating both MoG and PHP, highlighting their importance for improved performance on 15-step and 50-step tasks.
> <details>
> <summary>read the caption</summary>
> Figure 5: Ablation study on Mixture of Grounding (MoG) and Proactive Hierarchical Planning (PHP).
> </details>



![](https://arxiv.org/html/2504.00906/x4.png)

> 🔼 This figure presents a bar chart comparing the 15-step success rates of Agent S2 using different visual grounding models.  The results show that smaller, open-source models achieved higher success rates compared to larger, closed-source reasoning models. This highlights the potential advantage of leveraging smaller, more specialized models for specific tasks within a larger, compositional agent architecture.
> <details>
> <summary>read the caption</summary>
> Figure 6: 15-step performance of Agent S2 with different visual grounding models. Small open-sourced models can outperform large close-sourced reasoning models.
> </details>



![](https://arxiv.org/html/2504.00906/x5.png)

> 🔼 This figure shows the breakdown of reasons why Agent S2, a computer-use agent, improves its performance when given more time steps (from 15 to 50).  The analysis focuses on successful cases and identifies four key contributing factors: Adaptive Navigation (exploring different ways to interact), Adaptive Interaction (trying different methods to achieve a goal), Backward Correction (correcting previous mistakes), and Task Complexity (inherent difficulty of tasks).  The percentages indicate the contribution of each factor to the overall improvement in success rate.
> <details>
> <summary>read the caption</summary>
> Figure 7: Contributing factors of 15-step to 50-step scaling success.
> </details>



![](https://arxiv.org/html/2504.00906/x6.png)

> 🔼 This figure shows a breakdown of the reasons why Agent S2 failed on a subset of tasks from the OSWorld benchmark.  It categorizes failures into several key areas, such as problems with the overall plan, issues with grounding (locating specific UI elements), difficulties interacting with elements, problems with navigation within the application, and tasks that were inherently infeasible to complete. The size of each category's slice reflects the proportion of failures attributed to that particular cause. This helps to identify and analyze the main challenges faced by the agent.
> <details>
> <summary>read the caption</summary>
> Figure 8: Failure categories on a subset of the OSWorld benchmark.
> </details>



![](https://arxiv.org/html/2504.00906/x7.png)

> 🔼 Agent S2 is tasked with adding strikethrough formatting to the last paragraph of a document.  The figure shows the agent's step-by-step process using textual grounding. Initially, it attempts visual grounding but self-corrects, demonstrating adaptive behavior.  It then leverages the textual grounding expert to precisely select the target words before applying the formatting. This highlights the system's ability to accurately identify and manipulate specific text within a document, showcasing its advanced grounding capabilities. The precise word selection is key, avoiding the limitations of selecting larger text blocks, demonstrating sophisticated text understanding.
> <details>
> <summary>read the caption</summary>
> Figure 9: Agent S2 demonstrates textual grounding. The task instruction is: I think the last paragraph is redundant so I want to add strike-through on words in the last paragraph. Can you do this for me? Agent S2 intelligently utilizes the textual grounding expert to perform a precise word-level selection of text.
> </details>



![](https://arxiv.org/html/2504.00906/x8.png)

> 🔼 Agent S2 is shown using structural grounding to add a new column named 'Profit' to a spreadsheet.  The goal is to calculate profit for each week by subtracting the COGS (cost of goods sold) from the Sales figures. The figure visually shows the steps involved, highlighting how Agent S2 interacts with the spreadsheet cells at a low level. This involves using a specialized 'structural grounding expert' that understands spreadsheet structure to perform fine-grained actions within cells, such as entering formulas and dragging to fill in values.  The adaptive nature of Agent S2 is apparent, dynamically adjusting its actions based on the evolving state of the spreadsheet.  This illustrates Agent S2's ability to handle detailed, low-level operations within specific applications.
> <details>
> <summary>read the caption</summary>
> Figure 10: Agent S2 demonstrates structural grounding. The task instruction is: Add a new column named “Profit” and calculate the profit for each week by subtracting “COGS” from “Sales” in that column. Agent S2 adaptively interacts with the “Profit” column and chooses to use the structural grounding expert to perform cell-level operations.
> </details>



![](https://arxiv.org/html/2504.00906/x9.png)

> 🔼 Agent S2 receives the instruction to disable the 'Dim screen when inactive' setting in the system settings.  However, this exact setting name is not present in the user interface. The figure shows how Agent S2, using its proactive hierarchical planning, dynamically adjusts its plan. Initially, it attempts to locate the setting directly. Upon failure to find the verbatim setting, it re-evaluates the situation, exploring related settings (like screen brightness or power saving modes).  It revises its plan, identifying alternative options that achieve the user's intent. This process of replanning and exploration, illustrated through screenshots of the user interface, demonstrates Agent S2's adaptive behavior and problem-solving capabilities in uncertain environments.
> <details>
> <summary>read the caption</summary>
> Figure 11: Agent S2 demonstrates replanning. The task instruction is: Could you set the ‘Dim screen when inactive’ to off in settings? Even though the ‘Dim screen when inactive’ option is not found in verbatim, Agent S2 proactively replans and reasons to find the correct setting.
> </details>



![](https://arxiv.org/html/2504.00906/x10.png)

> 🔼 Agent S2 successfully completes a complex task on the WindowsAgentArena benchmark.  The task involves creating a desktop shortcut for a folder, requiring multiple steps and interaction with the Windows GUI. The figure showcases Agent S2's ability to dynamically adjust its plan, refining its actions based on the evolving state of the environment and feedback from the interface. This highlights the effectiveness of the Proactive Hierarchical Planning component of the Agent S2 framework.
> <details>
> <summary>read the caption</summary>
> Figure 12: Agent S2 on the WindowsAgentArena environment. The task instruction is: Create a shortcut on the Desktop for the folder named ”Projects” that is located in the Documents folder. Name the shortcut ”Projects - Shortcut”. Through consistent replanning, Agent S2 is able to dynamically update its plan and revise its current subtask in more detail.
> </details>



![](https://arxiv.org/html/2504.00906/x11.png)

> 🔼 Agent S2 successfully navigates the AndroidWorld environment to create a new contact.  The figure displays a sequence of screenshots showing the agent's interactions, starting with opening the Contacts app and culminating in entering all requested contact details (First Name, Last Name, Phone number, and Phone Label). This demonstrates Agent S2's ability to handle touch, typing, and dropdown menu selection actions within a mobile GUI.
> <details>
> <summary>read the caption</summary>
> Figure 13: Agent S2 on the AndroidWorld mobile environment. It utilizes open, touch, and type interactions to complete the instruction “Go to the new contact screen and enter the following details: First Name: Grace, Last Name: Taylor, Phone: 799-802-XXXX, Phone Label: Work”.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.2.1">OS</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.3.1">Daily</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.4.1">Office</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.5.1">Professional</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.6.1">Workflow</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.7.1">Overall</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.2.1.1">GPT-4o</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.2.1.2">50.00</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.1.3">30.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.1.4">18.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.1.5">51.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.1.6">14.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.1.7">26.62</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.3.2.1">Claude-3.5-Sonnet (new)</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.3.2.2">58.33</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.2.3">48.44</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.2.4">29.06</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.2.5">51.02</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.2.6">13.46</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.2.7">33.71</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.1.4.3.1">Claude-3.7-Sonnet</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.1.4.3.2">50.00</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.4.3.3">49.73</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.4.3.4">25.64</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.4.3.5">57.14</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.4.3.6">18.21</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.4.3.7">34.47</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a breakdown of Agent S2's performance on the OSWorld 50-step benchmark, categorized by task type (OS, Daily, Office, Professional, Workflow).  Success rates are shown, illustrating the model's effectiveness across various task domains.  The results are further broken down to show the impact of using different large language models (LLMs) as the Manager and Worker components within the Agent S2 framework.
> <details>
> <summary>read the caption</summary>
> Table 2: Categorized Success Rate (%) of Agent S2 on the OSWorld 50-step evaluation. We report results with various MLLMs as Manager and Worker.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.1.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.2.1">Office</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.3.1">Web</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.4.1">Windows System</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.5.1">Coding</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.6.1">Media &amp; Video</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.7.1">Windows Utils</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.8.1">Overall</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.1.2.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">Agent S <cite class="ltx_cite ltx_citemacro_citep">(Agashe et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.00906v1#bib.bib1" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">13.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">45.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.1.5" style="padding-left:3.0pt;padding-right:3.0pt;">29.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.1.6" style="padding-left:3.0pt;padding-right:3.0pt;">19.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.1.7" style="padding-left:3.0pt;padding-right:3.0pt;">22.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.1.8" style="padding-left:3.0pt;padding-right:3.0pt;">18.2</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.3.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">NAVI <cite class="ltx_cite ltx_citemacro_citep">(Bonatti et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.00906v1#bib.bib4" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">0.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.2.3.1">27.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">33.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2.5" style="padding-left:3.0pt;padding-right:3.0pt;">27.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.2.6.1">30.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2.7" style="padding-left:3.0pt;padding-right:3.0pt;">  8.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2.8" style="padding-left:3.0pt;padding-right:3.0pt;">19.5</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.1.1.4.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_ERROR undefined" id="S4.T3.1.1.4.3.1.1">\hdashline</span>Agent S2 (Ours)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.4.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.4.3.2.1">7.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.4.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">16.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.4.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.4.3.4.1">54.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.4.3.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.4.3.5.1">62.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.4.3.6" style="padding-left:3.0pt;padding-right:3.0pt;">28.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.4.3.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.4.3.7.1">33.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.4.3.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.4.3.8.1">29.8</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the success rates of different computer use agents on the WindowsAgentArena benchmark, focusing on the performance within 15 steps.  It highlights Agent S2's state-of-the-art (SOTA) achievement by comparing its performance against baselines like Agent S and NAVI.  A key differentiator is that Agent S2 uniquely relies only on screenshots as input, unlike Agent S and NAVI, which also utilize accessibility trees. This comparison underscores Agent S2's superior performance in achieving the SOTA despite its use of less information.
> <details>
> <summary>read the caption</summary>
> Table 3: Success Rate (%) on the WindowsAgentArena test set (within 15 steps). Note that both Agent S and NAVI use screenshots and accessibility trees, while our agent only takes screenshots as the input. Agent S2 sets new SOTA on WindowsAgentArena.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.2.1">SR (%)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.1.1.2.2.1">GPT-4o + UGround <cite class="ltx_cite ltx_citemacro_citep">(Gou et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.00906v1#bib.bib7" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.2.2">44.0</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.3.3">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.3.3.1">GPT-4o + Aria-UI <cite class="ltx_cite ltx_citemacro_citep">(Yang et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.00906v1#bib.bib29" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.3.2">44.8</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.4.4">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.4.4.1">UI-TARS-72B-SFT <cite class="ltx_cite ltx_citemacro_citep">(Qin et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.00906v1#bib.bib17" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.4.2">46.6</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.5.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.1.1.5.5.1">
<span class="ltx_ERROR undefined" id="S4.T4.1.1.5.5.1.1">\hdashline</span>Agent S2 (Ours)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.5.5.2"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.5.5.2.1">54.3</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of Agent S2's performance on the AndroidWorld benchmark, specifically focusing on tasks involving smartphone use. It compares Agent S2's success rate to other state-of-the-art methods.
> <details>
> <summary>read the caption</summary>
> Table 4: Agent S2 results on AndroidWorld for smartphone use.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T5.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T5.1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.2.1">OS</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.3.1">Gimp</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.4.1">Code</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.5.1">TB</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.1.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.6.1">Writer</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.1.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.7.1">Calc</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.1.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.8.1">Impress</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.1.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.9.1">Chrome</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.1.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.10.1">VLC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.1.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.11.1">Multiapps</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.1.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.12.1">Overall</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.1.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Claude-3.5-Sonnet</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">58.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">38.46</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">65.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">60.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">43.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">25.53</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.1.8" style="padding-left:4.0pt;padding-right:4.0pt;">25.53</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.1.9" style="padding-left:4.0pt;padding-right:4.0pt;">41.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.1.10" style="padding-left:4.0pt;padding-right:4.0pt;">57.87</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.1.11" style="padding-left:4.0pt;padding-right:4.0pt;">13.46</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.1.12" style="padding-left:4.0pt;padding-right:4.0pt;">33.71</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.3.2">
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">Claude-3.7-Sonnet</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">50.00</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">50.00</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">65.22</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">73.33</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">34.77</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">25.53</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">21.28</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.2.9" style="padding-left:4.0pt;padding-right:4.0pt;">41.19</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.2.10" style="padding-left:4.0pt;padding-right:4.0pt;">51.99</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.2.11" style="padding-left:4.0pt;padding-right:4.0pt;">18.21</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.2.12" style="padding-left:4.0pt;padding-right:4.0pt;">34.47</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.4.3">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.1.4.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.1.4.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">50.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.1.4.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">42.31</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.1.4.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">60.87</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.1.4.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">33.33</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.1.4.3.6" style="padding-left:4.0pt;padding-right:4.0pt;">34.77</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.1.4.3.7" style="padding-left:4.0pt;padding-right:4.0pt;">10.64</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.1.4.3.8" style="padding-left:4.0pt;padding-right:4.0pt;">19.57</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.1.4.3.9" style="padding-left:4.0pt;padding-right:4.0pt;">28.15</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.1.4.3.10" style="padding-left:4.0pt;padding-right:4.0pt;">35.29</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.1.4.3.11" style="padding-left:4.0pt;padding-right:4.0pt;">14.93</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.1.4.3.12" style="padding-left:4.0pt;padding-right:4.0pt;">26.62</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of Agent S2's performance on the OSWorld benchmark's 50-step evaluation.  It shows success rates across different application domains (OS, GIMP, VS Code, Thunderbird, LibreOffice Writer, Calc, Impress, Chrome, VLC, and Multiapps).  Importantly, it also demonstrates how performance varies depending on the specific large language models (LLMs) used as the 'Manager' and 'Worker' components within the Agent S2 framework.
> <details>
> <summary>read the caption</summary>
> Table 5: Success rate (%) of Agent S2 on 50 step evaluation in OSWorld, divided by domains: OS, GIMP, VS Code, Thunderbird, LibreOffice Writer, LibreOffice Calc, LibreOffice Impress, Chrome, VLC, and Multiapps. We also report performance using different models as the Manager and Worker backbones.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T6.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T6.1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.2.1">OS</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.3.1">Gimp</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.4.1">Code</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.5.1">TB</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.1.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.6.1">Writer</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.1.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.7.1">Calc</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.1.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.8.1">Impress</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.1.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.9.1">Chrome</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.1.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.10.1">VLC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.1.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.11.1">Multiapps</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.1.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.12.1">Overall</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T6.1.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Claude-3.5-Sonnet</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">45.84</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">50.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">65.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">40.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">30.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">17.39</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.8" style="padding-left:4.0pt;padding-right:4.0pt;">6.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.9" style="padding-left:4.0pt;padding-right:4.0pt;">36.84</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.10" style="padding-left:4.0pt;padding-right:4.0pt;">29.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.11" style="padding-left:4.0pt;padding-right:4.0pt;">5.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1.12" style="padding-left:4.0pt;padding-right:4.0pt;">24.50</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.3.2">
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">Claude-3.7-Sonnet</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">41.67</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">61.54</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">69.57</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">33.33</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">34.77</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">19.15</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">14.89</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.2.9" style="padding-left:4.0pt;padding-right:4.0pt;">34.67</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.2.10" style="padding-left:4.0pt;padding-right:4.0pt;">40.22</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.2.11" style="padding-left:4.0pt;padding-right:4.0pt;">5.94</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.2.12" style="padding-left:4.0pt;padding-right:4.0pt;">27.04</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.4.3">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.4.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.4.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">37.50</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.4.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">50.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.4.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">47.83</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.4.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">26.67</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.4.3.6" style="padding-left:4.0pt;padding-right:4.0pt;">21.73</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.4.3.7" style="padding-left:4.0pt;padding-right:4.0pt;">8.51</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.4.3.8" style="padding-left:4.0pt;padding-right:4.0pt;">10.64</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.4.3.9" style="padding-left:4.0pt;padding-right:4.0pt;">23.80</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.4.3.10" style="padding-left:4.0pt;padding-right:4.0pt;">29.41</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.4.3.11" style="padding-left:4.0pt;padding-right:4.0pt;">10.89</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.4.3.12" style="padding-left:4.0pt;padding-right:4.0pt;">21.12</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the success rate of Agent S2, a computer use agent, on the OSWorld benchmark.  The success rate is broken down by specific application domains (OS, GIMP, Code, Thunderbird, LibreOffice Writer, LibreOffice Calc, LibreOffice Impress, Chrome, VLC, Multiapps), providing a granular view of performance across different task types.  The results are shown for a 15-step evaluation, and the table also includes comparative results using different models (Claude-3.5-Sonnet, Claude-3.7-Sonnet, GPT-40) as the Manager and Worker components within the Agent S2 framework.
> <details>
> <summary>read the caption</summary>
> Table 6: Success rate (%) of Agent S2 on 15 step evaluation in OSWorld, divided by domains. We also report performance using different models as the Manager and Worker backbones.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T7.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T7.1.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.1.1">Chrome</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.1.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.2.1">Edge</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.1.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.3.1">Code</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.1.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.4.1">Notepad</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.1.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.5.1">Lib_Calc</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.1.1.1.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.6.1">Settings</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.1.1.1.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.7.1">Win_Calc</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.1.1.1.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.8.1">Clock</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.1.1.1.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.9.1">Paint</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.1.1.1.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.10.1">File</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.1.1.1.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.11.1">Writer</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.1.1.1.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.12.1">VLC</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.1.1.1.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.13.1">Overall</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T7.1.1.2.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">17.08</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T7.1.1.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">15.38</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T7.1.1.2.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">62.50</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T7.1.1.2.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">50.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T7.1.1.2.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">4.17</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T7.1.1.2.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T7.1.1.2.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T7.1.1.2.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">50.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T7.1.1.2.2.9" style="padding-left:4.0pt;padding-right:4.0pt;">33.33</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T7.1.1.2.2.10" style="padding-left:4.0pt;padding-right:4.0pt;">42.11</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T7.1.1.2.2.11" style="padding-left:4.0pt;padding-right:4.0pt;">10.53</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T7.1.1.2.2.12" style="padding-left:4.0pt;padding-right:4.0pt;">28.57</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T7.1.1.2.2.13" style="padding-left:4.0pt;padding-right:4.0pt;">29.81</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of Agent S2's performance on the WindowsAgentArena benchmark.  It shows the success rate achieved for each of 12 different applications, categorized by application type (browser, code editor, office suite, etc.).  Agent S2, using the Claude-3.7-Sonnet model, is evaluated on tasks within these applications. The success rate is expressed as a percentage and provides a granular view of the agent's capabilities across various software types.
> <details>
> <summary>read the caption</summary>
> Table 7: Success rate (%) of Agent S2 with Claude-3.7-Sonnet on WindowsAgentArena, divided by apps: Chrome, Microsoft Edge, VS Code, Notepad, LibreOffice Calc, Settings, Windows Calc, Clock, Microsoft Paint, File Explorer, LibreOffice Writer, VLC Player.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A3.T8.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T8.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A3.T8.1.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.1.1.1.1.1.1">Agent Action</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A3.T8.1.1.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.1.1.1.1.2.1">Action Details</span></th>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.2.2">
<th class="ltx_td ltx_th ltx_th_row" id="A3.T8.1.1.2.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="A3.T8.1.1.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.1.1.2.2.2.1">Description</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="A3.T8.1.1.2.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.1.1.2.2.3.1">Arguments</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T8.1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T8.1.1.3.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">click</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T8.1.1.3.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">Click on an element.</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T8.1.1.3.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="A3.T8.1.1.3.1.3.1">element_description, num_clicks, button_type, hold_keys</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T8.1.1.4.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">type</th>
<td class="ltx_td ltx_align_left" id="A3.T8.1.1.4.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">Type text into an element.</td>
<td class="ltx_td ltx_align_left" id="A3.T8.1.1.4.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="A3.T8.1.1.4.2.3.1">element_description, text, overwrite, enter</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T8.1.1.5.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">scroll</th>
<td class="ltx_td ltx_align_left" id="A3.T8.1.1.5.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">Scroll within an element.</td>
<td class="ltx_td ltx_align_left" id="A3.T8.1.1.5.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="A3.T8.1.1.5.3.3.1">element_description, clicks, shift</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T8.1.1.6.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">hotkey</th>
<td class="ltx_td ltx_align_left" id="A3.T8.1.1.6.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">Press a hotkey combo.</td>
<td class="ltx_td ltx_align_left" id="A3.T8.1.1.6.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="A3.T8.1.1.6.4.3.1">keys</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T8.1.1.7.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">hold_and_press</th>
<td class="ltx_td ltx_align_left" id="A3.T8.1.1.7.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">Hold keys and press others.</td>
<td class="ltx_td ltx_align_left" id="A3.T8.1.1.7.5.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="A3.T8.1.1.7.5.3.1">hold_keys, press_keys</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T8.1.1.8.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">drag_and_drop</th>
<td class="ltx_td ltx_align_left" id="A3.T8.1.1.8.6.2" style="padding-left:4.0pt;padding-right:4.0pt;">Drag and drop between elements.</td>
<td class="ltx_td ltx_align_left" id="A3.T8.1.1.8.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="A3.T8.1.1.8.6.3.1">element_description_1, element_description_2, hold_keys</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T8.1.1.9.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">save_to_knowledge</th>
<td class="ltx_td ltx_align_left" id="A3.T8.1.1.9.7.2" style="padding-left:4.0pt;padding-right:4.0pt;">Saves data to a per-task memory.</td>
<td class="ltx_td ltx_align_left" id="A3.T8.1.1.9.7.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="A3.T8.1.1.9.7.3.1">text</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.10.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T8.1.1.10.8.1" style="padding-left:4.0pt;padding-right:4.0pt;">switch_applications</th>
<td class="ltx_td ltx_align_left" id="A3.T8.1.1.10.8.2" style="padding-left:4.0pt;padding-right:4.0pt;">Switch to another app.</td>
<td class="ltx_td ltx_align_left" id="A3.T8.1.1.10.8.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="A3.T8.1.1.10.8.3.1">app_name</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.11.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T8.1.1.11.9.1" style="padding-left:4.0pt;padding-right:4.0pt;">highlight_text_span</th>
<td class="ltx_td ltx_align_left" id="A3.T8.1.1.11.9.2" style="padding-left:4.0pt;padding-right:4.0pt;">Highlights a text span.</td>
<td class="ltx_td ltx_align_left" id="A3.T8.1.1.11.9.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="A3.T8.1.1.11.9.3.1">starting_phrase, ending_phrase</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.12.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T8.1.1.12.10.1" style="padding-left:4.0pt;padding-right:4.0pt;">set_cell_values</th>
<td class="ltx_td ltx_align_left" id="A3.T8.1.1.12.10.2" style="padding-left:4.0pt;padding-right:4.0pt;">Sets tabular cell values.</td>
<td class="ltx_td ltx_align_left" id="A3.T8.1.1.12.10.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="A3.T8.1.1.12.10.3.1">cell_values, app_name, sheet_name</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.13.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T8.1.1.13.11.1" style="padding-left:4.0pt;padding-right:4.0pt;">wait</th>
<td class="ltx_td ltx_align_left" id="A3.T8.1.1.13.11.2" style="padding-left:4.0pt;padding-right:4.0pt;">Wait for some time.</td>
<td class="ltx_td ltx_align_left" id="A3.T8.1.1.13.11.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="A3.T8.1.1.13.11.3.1">time</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.14.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T8.1.1.14.12.1" style="padding-left:4.0pt;padding-right:4.0pt;">done</th>
<td class="ltx_td ltx_align_left" id="A3.T8.1.1.14.12.2" style="padding-left:4.0pt;padding-right:4.0pt;">Mark subtask as success.</td>
<td class="ltx_td ltx_align_left" id="A3.T8.1.1.14.12.3" style="padding-left:4.0pt;padding-right:4.0pt;">None</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1.15.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A3.T8.1.1.15.13.1" style="padding-left:4.0pt;padding-right:4.0pt;">fail</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T8.1.1.15.13.2" style="padding-left:4.0pt;padding-right:4.0pt;">Mark subtask as failure.</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T8.1.1.15.13.3" style="padding-left:4.0pt;padding-right:4.0pt;">None</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the actions Agent S2 can perform when interacting with a graphical user interface (GUI).  For each action (e.g., click, type, scroll), it lists the action type, a description of its purpose, and the arguments required to specify the action's parameters. This provides a comprehensive overview of Agent S2's capabilities in manipulating GUI elements.
> <details>
> <summary>read the caption</summary>
> Table 8: Agent S2 action space, descriptions, and arguments.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.00906/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00906/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00906/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00906/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00906/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00906/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00906/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00906/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00906/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00906/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00906/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00906/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00906/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00906/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00906/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00906/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00906/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00906/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}