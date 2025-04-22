---
title: "UFO2: The Desktop AgentOS"
summary: "UFO²: A new OS-integrated desktop agent that elevates computer-using agents for practical, system-level automation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Robotics", "🏢 Microsoft",]
showSummary: true
date: 2025-04-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.14603 {{< /keyword >}}
{{< keyword icon="writer" >}} Chaoyun Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-22 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.14603" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.14603" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.14603/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Desktop automation**, which uses multimodal large language models, has recently made great strides. However, present systems are mainly conceptual prototypes. They face several difficulties due to shallow OS integration, unreliable screenshot-based interactions, and intrusive execution. The agents and the users cannot run concurrently because the agents' execution disrupts the users. The current automation methods are difficult to scale, adapt, and execute practically, limiting their uses in complicated and diverse situations. To address these problems, there is a need for reliable, integrated automation systems. 



This paper introduces **UFO²**, a multiagent AgentOS for Windows desktops that elevates computer-using agents to practical, system-level automation. The system features a centralized agent for task coordination, application-specialized agents with native APIs, and a unified action layer. It combines Windows UI Automation with vision-based parsing for diverse interfaces. It enhances runtime efficiency through speculative multi-action planning. Finally, it introduces a PiP interface that allows parallel user-agent operation. **UFO²** achieves notable gains in robustness and accuracy when tested on over 20 Windows apps.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Deep OS integration unlocks scalable desktop automation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A hybrid GUI-API action layer enables flexible and robust automation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Continuous knowledge integration improves agent autonomy over time. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work presents UFO², a novel desktop automation system, demonstrating superior performance and robustness by tightly integrating with the Windows OS. It offers a practical pathway for developing reliable user-aligned automation solutions, paving the way for future research in OS-level automation.

------
#### Visual Insights



![](https://arxiv.org/html/2504.14603/x1.png)

> 🔼 This figure compares the architecture of existing Computer-Using Agents (CUAs) with the architecture of the novel desktop AgentOS UFO2.  Panel (a) illustrates the shallow OS integration and reliance on screenshot-based interaction of traditional CUAs. These systems lack deep access to OS-level functionalities and APIs, which limits their robustness and scalability. In contrast, panel (b) highlights the key features of UFO2, including deep OS integration, the use of application-specific APIs alongside GUI actions, and the hybrid control detection pipeline that fuses Windows UI Automation (UIA) and vision-based parsing.  The unified GUI-API action layer, HoSTAGENT for task decomposition and coordination, and the collection of application-specialized APPAGENTS are also shown. The Picture-in-Picture user interface is also depicted as a feature that enhances usability.  Overall, the figure visually demonstrates the significant architectural advancements of UFO2 compared to existing CUAs.
> <details>
> <summary>read the caption</summary>
> Figure 1. A comparison of (a) existing CUAs and (b) desktop AgentOS UFO2.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T1.1.1.1.1.1">Agent</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T1.1.1.1.2.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S6.T1.1.1.1.3.1">WAA</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S6.T1.1.1.1.4.1">OSWorld-W</span></td>
</tr>
<tr class="ltx_tr" id="S6.T1.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T1.1.2.2.1">UFO</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T1.1.2.2.2">GPT-4o</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T1.1.2.2.3">19.5%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.1.2.2.4">12.2%</td>
</tr>
<tr class="ltx_tr" id="S6.T1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T1.1.3.3.1">NAVI</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T1.1.3.3.2">GPT-4o</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T1.1.3.3.3">13.3%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.1.3.3.4">10.2%</td>
</tr>
<tr class="ltx_tr" id="S6.T1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T1.1.4.4.1">OmniAgent</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T1.1.4.4.2">GPT-4o</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T1.1.4.4.3">19.5%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.1.4.4.4">8.2%</td>
</tr>
<tr class="ltx_tr" id="S6.T1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T1.1.5.5.1">Agent S</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T1.1.5.5.2">GPT-4o</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T1.1.5.5.3">18.2%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.1.5.5.4">12.2%</td>
</tr>
<tr class="ltx_tr" id="S6.T1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T1.1.6.6.1">Operator</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T1.1.6.6.2">computer-use</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T1.1.6.6.3">20.8%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.1.6.6.4">14.3%</td>
</tr>
<tr class="ltx_tr" id="S6.T1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S6.T1.1.7.7.1">
<span class="ltx_text ltx_font_smallcaps" id="S6.T1.1.7.7.1.1">UFO<sup class="ltx_sup" id="S6.T1.1.7.7.1.1.1"><span class="ltx_text ltx_font_upright" id="S6.T1.1.7.7.1.1.1.1">2</span></sup></span>-base</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S6.T1.1.7.7.2">GPT-4o</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T1.1.7.7.3">23.4%</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T1.1.7.7.4">16.3%</td>
</tr>
<tr class="ltx_tr" id="S6.T1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T1.1.8.8.1">
<span class="ltx_text ltx_font_smallcaps" id="S6.T1.1.8.8.1.1">UFO<sup class="ltx_sup" id="S6.T1.1.8.8.1.1.1"><span class="ltx_text ltx_font_upright" id="S6.T1.1.8.8.1.1.1.1">2</span></sup></span>-base</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T1.1.8.8.2">o1</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T1.1.8.8.3">25.3%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.1.8.8.4">16.3%</td>
</tr>
<tr class="ltx_tr" id="S6.T1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T1.1.9.9.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S6.T1.1.9.9.1.1">UFO<sup class="ltx_sup" id="S6.T1.1.9.9.1.1.1"><span class="ltx_text ltx_font_upright" id="S6.T1.1.9.9.1.1.1.1">2</span></sup></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T1.1.9.9.2"><span class="ltx_text ltx_font_bold" id="S6.T1.1.9.9.2.1">GPT-4o</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T1.1.9.9.3"><span class="ltx_text ltx_font_bold" id="S6.T1.1.9.9.3.1">27.9%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.1.9.9.4"><span class="ltx_text ltx_font_bold" id="S6.T1.1.9.9.4.1">28.6%</span></td>
</tr>
<tr class="ltx_tr" id="S6.T1.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S6.T1.1.10.10.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S6.T1.1.10.10.1.1">UFO<sup class="ltx_sup" id="S6.T1.1.10.10.1.1.1"><span class="ltx_text ltx_font_upright" id="S6.T1.1.10.10.1.1.1.1">2</span></sup></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S6.T1.1.10.10.2"><span class="ltx_text ltx_font_bold" id="S6.T1.1.10.10.2.1">o1</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S6.T1.1.10.10.3"><span class="ltx_text ltx_font_bold" id="S6.T1.1.10.10.3.1">30.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T1.1.10.10.4"><span class="ltx_text ltx_font_bold" id="S6.T1.1.10.10.4.1">32.7%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of success rates achieved by different AI agents across two benchmark datasets: Windows Agent Arena (WAA) and OSWorld-W.  It evaluates the performance of several agents, including UFO (a multi-agent system), NAVI (single-agent baseline), OmniAgent, Agent S, Operator (a high-performance CUA), and two versions of UFO2 (a base version and a fully integrated version).  The success rate is a measure of how often the agent successfully completed tasks in the benchmark datasets. The table shows the results for both GPT-4 and 01 language models, allowing for a comparison of performance across different model capabilities.
> <details>
> <summary>read the caption</summary>
> Table 1. Comparison of success rates (SR) across agents on WAA and OSWorld-W benchmarks.
> </details>





### In-depth insights


#### AgentOS Design
The AgentOS design represents a shift toward **system-level automation**, moving beyond simple GUI scripting. By embedding automation deep within the OS, it enables **structured application control** rather than relying on fragile, surface-level interactions. Key aspects could involve a centralized architecture for multi-agent coordination, a modular design for adaptability and native API access for interaction with the applications. This AgentOS could expose GUI controls, application APIs, and task orchestration as programmable, inspectable, and composable system services, creating a robust foundation for reliable and scalable desktop automation. Security could be paramount, ensuring safe execution and data protection in this novel paradigm.

#### Hybrid UI control
The concept of a hybrid UI control system marks a significant advancement in UI design and automation. It bridges the gap between traditional, structured UI elements and visually-driven, unstructured interfaces. Such a system could intelligently combine the strengths of both approaches: **leveraging accessibility APIs for standard elements while employing computer vision techniques for custom or legacy components**. This would lead to more robust and adaptable automation, as changes in one area wouldn't necessarily break the entire system. Furthermore, a hybrid approach allows for a richer understanding of the UI, enabling more sophisticated interactions and decision-making processes. This could involve using APIs to extract semantic information and visual analysis to identify and interact with non-standard controls. The development of such a system would require careful consideration of the trade-offs between accuracy, performance, and complexity, but the potential benefits are substantial for creating more intelligent and user-friendly interfaces.

#### Speculative LLM
While the paper does not explicitly have a section titled "Speculative LLM," it dedicates significant attention to **reducing LLM invocation overhead**. UFO2's approach centers on **speculative multi-action execution**, proactively inferring and validating action sequences in advance. This parallels speculative execution in processor design, where potential instruction paths are pre-calculated. UFO2 validates actions via Windows UIA API to ensure they are still viable, similar to branch prediction in CPUs. This approach significantly reduces reliance on LLMs, leading to more efficient task handling. Key benefits include reduction in latency and cost, which makes a compelling argument for adopting a more proactive approach in LLM-driven task automation. The insights highlight a shift from purely reactive systems to those that anticipate and pre-compute actions.

#### PiP Automation
The Picture-in-Picture (PiP) interface in UFO² represents a significant advancement in desktop automation by addressing key usability and safety concerns. Unlike conventional CUAs that monopolize the user's primary desktop, the **PiP interface creates a virtualized, isolated environment for agent execution**, enabling concurrent user and agent workflows. This addresses a major limitation of existing CUAs, which often disrupt user activity and create a poor user experience. This isolation is achieved via Windows' native Remote Desktop Protocol (RDP) loopback, ensuring a functional replica of the user's desktop within a resizable, movable window. **Crucially, the PiP session inherits the user's identity, credentials, and network context**, maintaining consistency with foreground operations. The RDP subsystem maintains distinct input queues and device contexts, preventing interference between agent actions and user activities. Overall, the **PiP interface reconciles concurrency, usability, and safety, serving as a system-level abstraction**.

#### OS Integration
**Operating system (OS) integration** is crucial for Computer-Using Agents (CUAs) to move beyond conceptual prototypes. **Deep OS integration** enables CUAs to access system-level functionalities such as accessibility APIs, application process states, and inter-process communication mechanisms. This access enhances decision accuracy, reduces latency, and facilitates reliable execution. A unified GUI-API action layer, integrating traditional GUI interactions with application-native API calls, further improves automation. By building **AgentOS** as an operating system abstraction, it unlocks opportunities for **introspection**, **fine-grained execution control**, and managing diverse applications. This **deep level of control** is necessary for creating robust and scalable desktop automation solutions. By embedding OS capabilities, it promotes adaptability and reduces disruptions to user workflows during automation tasks.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.14603/x2.png)

> 🔼 The figure illustrates the architecture of UFO2, a multiagent AgentOS for Windows desktops.  It highlights the centralized HostAgent, responsible for task decomposition and coordination, and the application-specialized AppAgents which utilize native APIs and a unified GUI-API action layer for robust task execution.  The diagram also shows the interaction between the HostAgent, AppAgents, and Windows applications, emphasizing the system-level integration and modularity of the UFO2 design.
> <details>
> <summary>read the caption</summary>
> Figure 2. An overview of the architecture of UFO2.
> </details>



![](https://arxiv.org/html/2504.14603/x3.png)

> 🔼 The HostAgent is the central control plane of UFO2, responsible for managing the entire automation process.  It receives user requests (natural language), decomposes them into a series of subtasks, and dispatches these subtasks to specialized AppAgents.  The HostAgent maintains a persistent state machine that tracks the progress of each subtask and the overall workflow. It uses a two-pronged approach to understand the system's state: a visual layer (screenshots) for layout and context, and a semantic layer (Windows UI Automation APIs) for structural information about applications and controls.  The HostAgent uses this information to manage AppAgent instantiation, task scheduling, and the overall execution plan, facilitating communication and coordination among the AppAgents through a shared blackboard.
> <details>
> <summary>read the caption</summary>
> Figure 3. High-level architecture of HostAgent as a control-plane orchestrator.
> </details>



![](https://arxiv.org/html/2504.14603/x4.png)

> 🔼 This figure illustrates the finite-state machine (FSM) that governs the HostAgent's behavior.  The HostAgent manages the workflow and coordination of multiple AppAgents, moving through different states to handle tasks and their execution.  The states include ASSIGN (assigning a subtask to an AppAgent), PENDING (waiting for user input or clarification), CONTINUE (main execution loop), FINISH (all subtasks complete), and FAIL (an unrecoverable error occurred).  The transitions between these states are shown, indicating the flow of the automation process.
> <details>
> <summary>read the caption</summary>
> Figure 4. Control-state transitions managed by HostAgent.
> </details>



![](https://arxiv.org/html/2504.14603/x5.png)

> 🔼 This figure details the architecture of an AppAgent within the UFO2 system.  AppAgents are responsible for executing individual subtasks within specific Windows applications. The diagram shows how an AppAgent uses visual input (GUI screenshots), semantic metadata (extracted from Windows UI Automation APIs), and symbolic annotations (from Set-of-Mark techniques) to understand the application state. This information feeds into an action execution module, which utilizes a hybrid approach, employing application-specific APIs when available and falling back to traditional GUI actions when necessary.  The APPAGENT incorporates a knowledge integration layer, drawing upon application documentation and prior execution experiences, to improve task reliability and efficiency. Finally, the AppAgent's operations are managed by a finite-state machine, ensuring proper control flow and error handling.
> <details>
> <summary>read the caption</summary>
> Figure 5. Architecture of an AppAgent, the per-application execution runtime in UFO2.
> </details>



![](https://arxiv.org/html/2504.14603/x6.png)

> 🔼 This figure illustrates the finite state machine governing the execution lifecycle of an individual AppAgent within UFO2.  The AppAgent starts in the CONTINUE state, iteratively performing perception, planning, and action. If a sensitive operation is needed, it transitions to PENDING, requiring user confirmation.  Successful task completion leads to the FINISH state, while failures result in the FAIL state. This FSM ensures robust and safe execution even in the context of a dynamic desktop environment.
> <details>
> <summary>read the caption</summary>
> Figure 6. Control-state transitions for an AppAgent runtime.
> </details>



![](https://arxiv.org/html/2504.14603/x7.png)

> 🔼 This figure illustrates UFO2's hybrid control detection method, which combines the strengths of both Windows UI Automation (UIA) APIs and vision-based grounding models. UIA provides structured information about GUI elements, but might miss custom-rendered controls. In contrast, vision-based grounding offers pixel-level perception for a more complete understanding of the interface, including the identification of controls that are not accessible through UIA APIs. Therefore, UFO2 leverages a hybrid approach, integrating both methods to ensure reliable control grounding, even in complex or non-standard interfaces.  The figure shows how UIA and OmniParser-v2 (a vision-based model) detect controls, and how these detections are merged and refined to create a comprehensive control graph, representing the GUI state for an APPAGENT.
> <details>
> <summary>read the caption</summary>
> Figure 7. The hybrid control detection approach employed in UFO2.
> </details>



![](https://arxiv.org/html/2504.14603/x8.png)

> 🔼 The Puppeteer is a module within the UFO2 architecture that acts as an intermediary between the APPAGENT and the target application.  It analyzes the task and decides whether it's more efficient to use the application's native APIs or traditional GUI actions (mouse clicks and keyboard inputs). The goal is to ensure tasks are completed quickly and accurately, prioritizing efficient API calls whenever possible, but resorting to GUI actions if APIs are unavailable or unsuitable.
> <details>
> <summary>read the caption</summary>
> Figure 8. Puppeteer serves as a unified execution engine that harmonizes GUI actions and native API calls.
> </details>



![](https://arxiv.org/html/2504.14603/x9.png)

> 🔼 This figure shows a code snippet demonstrating how to register a custom API function, `select_table_range`, for use with Excel within the UFO2 framework.  The code uses Python decorators to define the function's name and behavior, making it easily discoverable and usable by the APPAGENT responsible for interacting with Excel. This allows the agent to perform actions such as selecting a table range directly through an API call, instead of relying on slower and less reliable GUI-based actions.  The example highlights the modularity and extensibility of UFO2's approach to application control.
> <details>
> <summary>read the caption</summary>
> Figure 9. Example API registration for Excel.
> </details>



![](https://arxiv.org/html/2504.14603/x10.png)

> 🔼 The figure illustrates how UFO2 leverages a hybrid knowledge base for enhanced automation.  It combines static knowledge, such as help documents and user manuals (Help Document Database), with dynamic execution history, including successful task trajectories (Demonstrated Examples) and logs of previous actions (Logs).  This combined knowledge is used by the LLM summarizer to generate concise guidance for AppAgents, improving automation reliability and adaptability.
> <details>
> <summary>read the caption</summary>
> Figure 10. Overview of the knowledge substrate in UFO2, combining static documentation with dynamic execution history.
> </details>



![](https://arxiv.org/html/2504.14603/x11.png)

> 🔼 This figure illustrates the process of speculative multi-action execution in UFO2.  Instead of executing actions one at a time (requiring a separate LLM inference for each), UFO2 predicts multiple actions in a batch, significantly reducing the LLM overhead.  However, to ensure accuracy, each action is validated online (using Windows UI Automation) before execution. If validation fails for any action, the execution stops early and UFO2 replan based on the current UI state. This approach balances efficiency and robustness.
> <details>
> <summary>read the caption</summary>
> Figure 11. Speculative multi-action execution in UFO2: batched inference with online validation.
> </details>



![](https://arxiv.org/html/2504.14603/x12.png)

> 🔼 The Picture-in-Picture (PiP) interface in UFO2 allows agents to operate in an isolated virtual desktop environment. This prevents interference with the user's primary desktop session, ensuring non-disruptive automation.  The PiP window shows a separate virtual desktop where the agents perform their tasks. The user can view this PiP window alongside their active work without interruption.  This approach ensures that automation is running without affecting the main workspace.
> <details>
> <summary>read the caption</summary>
> Figure 12. The Picture-in-Picture interface: a virtual desktop window for non-disruptive automation.
> </details>



![](https://arxiv.org/html/2504.14603/x13.png)

> 🔼 The figure illustrates the multi-round interactive session model in UFO2.  A user provides an initial request, and the system processes it, resulting in a series of actions (Round 1). The system presents the results, and the user can then provide further refinements or additional requests based on the initial results (Round 2). This iterative process continues until the user is satisfied with the outcome (Round n), demonstrating the system's ability to support multi-round task refinement and user interaction.
> <details>
> <summary>read the caption</summary>
> Figure 13. The interactive Session model in UFO2 supports multi-round refinement.
> </details>



![](https://arxiv.org/html/2504.14603/x14.png)

> 🔼 This figure illustrates the safeguard mechanism implemented in UFO2 to prevent potentially harmful actions.  The safeguard mechanism is designed to detect actions that meet predefined risk criteria, such as deleting files or terminating applications. When such an action is detected, the system pauses execution and prompts the user for confirmation. This ensures that users maintain control and can prevent unintended consequences, enhancing the safety and security of the automation process. The safeguard mechanism is highly customizable, allowing users and system administrators to define what constitutes a risky action based on their organization's specific needs.
> <details>
> <summary>read the caption</summary>
> Figure 14. The safeguard mechanism employed in UFO2.
> </details>



![](https://arxiv.org/html/2504.14603/x15.png)

> 🔼 This figure illustrates the UFO2 agent registry's ability to integrate external tools and libraries into its framework.  The registry acts as a central point for managing and orchestrating diverse agents, enabling the system to leverage both custom-developed APPAGENTS and pre-existing third-party tools for enhanced automation flexibility and capability. The seamless integration allows for easy expansion of UFO2's functionality without requiring substantial modifications to the core system architecture.
> <details>
> <summary>read the caption</summary>
> Figure 15. The agent registry supports seamless wrapping of third-party components into the AppAgent framework.
> </details>



![](https://arxiv.org/html/2504.14603/x16.png)

> 🔼 The figure illustrates the client-server architecture of AgentOS-as-a-Service.  A lightweight client resides on the user's machine, responsible for capturing screenshots and OS/app state data. This data is sent to a cloud-hosted server (the AgentOS server) via a REST API. The server houses the core components of the AgentOS, including the HOSTAGENT and the APPAGENTS' state machines, which handle task execution, orchestration and data processing. Results and action commands are sent back to the client to interact with the user's applications.
> <details>
> <summary>read the caption</summary>
> Figure 16. The client-server deployment model used in AgentOS-as-a-Service.
> </details>



![](https://arxiv.org/html/2504.14603/x17.png)

> 🔼 This figure showcases two key tools within the UFO2 framework: a markdown-formatted log viewer and a debugging tool.  The log viewer provides a structured, human-readable summary of each automated task's execution, including inputs (user requests, prompts), outputs (agent responses, actions), the sequence of steps taken (task trajectory), and any relevant screenshots.  The debugging tool allows for step-by-step analysis of past sessions, allowing developers to pinpoint where failures occurred, inspect intermediate results, and experiment with alternative approaches.  Both tools contribute to the overall transparency and debuggability of the UFO2 system.
> <details>
> <summary>read the caption</summary>
> Figure 17. An illustration of the markdown-formatted log viewer and debugging tool in UFO2.
> </details>



![](https://arxiv.org/html/2504.14603/x18.png)

> 🔼 This figure illustrates the automated task evaluation process within the UFO2 system.  The system uses a large language model (LLM) and chain-of-thought (CoT) reasoning to analyze structured session logs, which contain information about the tasks performed, the steps taken, and their outcomes. The LLM evaluates these logs to determine whether the task was completed successfully, partially, or failed, providing insights into the performance of the automation. This automated process provides feedback that facilitates ongoing improvement and refinement of the UFO2 system.
> <details>
> <summary>read the caption</summary>
> Figure 18. The LLM-based task evaluator applies CoT reasoning to structured session logs.
> </details>



![](https://arxiv.org/html/2504.14603/x19.png)

> 🔼 This figure presents a breakdown of error types encountered by the UFO2-base model (using GPT-40) when tested on two different benchmarks, WAA and OSWorld-W.  It visually represents the proportion of failures attributed to three categories: Plan Errors (incorrect high-level task understanding), Execution Errors (flawed execution despite a correct plan), and Control Detection Failures (inability to detect essential GUI controls). This breakdown helps to identify the strengths and weaknesses of the model and pinpoint areas needing further improvement.
> <details>
> <summary>read the caption</summary>
> Figure 19. Error analysis of UFO2-base (GPT-4o) on the two benchmarks.
> </details>



![](https://arxiv.org/html/2504.14603/x20.png)

> 🔼 This bar chart compares the number of GUI controls detected by three different methods: using only UI Automation (UIA) APIs, using only OmniParser-v2 (a vision-based grounding model), and using a hybrid approach that combines both UIA and OmniParser-v2.  The chart shows the number of controls detected for each method on two benchmark datasets: WAA and OSWorld-W. The hybrid approach consistently detects a larger number of controls than either UIA or OmniParser-v2 alone, highlighting its effectiveness in comprehensively detecting GUI controls across a range of application interfaces.
> <details>
> <summary>read the caption</summary>
> Figure 20. The number of detected controls of different approaches.
> </details>



![](https://arxiv.org/html/2504.14603/x21.png)

> 🔼 This figure shows a side-by-side comparison of completing the same task using two different methods: one relying solely on Graphical User Interface (GUI) actions and the other incorporating Application Programming Interface (API) calls.  The GUI-only approach demonstrates a multi-step process involving several clicks and menu selections, while the GUI+API method shows a simplified, single-step execution using an API call. This comparison highlights the efficiency and robustness gains achievable through API integration.
> <details>
> <summary>read the caption</summary>
> Figure 21. A case study comparing the completion of the same task using GUI-only actions vs. GUI + API actions.
> </details>



![](https://arxiv.org/html/2504.14603/x22.png)

> 🔼 This figure showcases a successful example of UFO2's speculative multi-action execution.  The user requests to center-align a heading in a Word document.  Instead of executing this task as a sequence of individual actions (selecting the heading, clicking the Center button), the system uses a single LLM inference to predict and execute both steps simultaneously. This demonstrates the efficiency gains achieved by speculative execution, reducing the number of required LLM calls and thus the overall latency.
> <details>
> <summary>read the caption</summary>
> Figure 22. A case study of the successful speculative multi-action execution.
> </details>



![](https://arxiv.org/html/2504.14603/x23.png)

> 🔼 This figure compares the success rates of Operator, a state-of-the-art Computer Using Agent (CUA), against UFO2 + Operator on the Windows Agent Arena (WAA) and OSWorld-W benchmarks.  UFO2 + Operator refers to running the Operator CUA within the UFO2 AgentOS framework. The chart visually represents the improvement in success rates achieved by integrating Operator into the UFO2 system, showcasing UFO2's ability to enhance the performance of existing CUAs.  The x-axis represents the benchmark (WAA and OSWorld-W), and the y-axis represents the success rate.  The bars depict the success rates for Operator and UFO2 + Operator in each benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 23. Comparison of Operator vs. UFO2 + Operator on WAA and OSWorld-W.
> </details>



![](https://arxiv.org/html/2504.14603/x24.png)

> 🔼 This figure is a bar chart that shows the breakdown of the average time spent on each stage of a single execution step in the UFO2 system.  The stages include screenshot capture, control detection, prompt preparation (including knowledge retrieval), LLM inference, and action execution.  The chart allows for comparison of the time spent in each phase across various configurations and helps illustrate which steps are the most time-consuming in the process.
> <details>
> <summary>read the caption</summary>
> Figure 24. Average time cost per-stage of a single execution step.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S6.T2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T2.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.1.1.1">Agent</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T2.1.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.1.2.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="6" id="S6.T2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.1.3.1">WAA</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S6.T2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.1.4.1">OSWorld-W</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.2.2.1">Office</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.2.2.2">
<table class="ltx_tabular ltx_align_middle" id="S6.T2.1.2.2.2.1">
<tr class="ltx_tr" id="S6.T2.1.2.2.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T2.1.2.2.2.1.1.1">Web</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.2.2.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T2.1.2.2.2.1.2.1">Browser</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.2.2.3">
<table class="ltx_tabular ltx_align_middle" id="S6.T2.1.2.2.3.1">
<tr class="ltx_tr" id="S6.T2.1.2.2.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T2.1.2.2.3.1.1.1">Windows</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.2.2.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T2.1.2.2.3.1.2.1">System</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.2.2.4">Coding</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.2.2.5">
<table class="ltx_tabular ltx_align_middle" id="S6.T2.1.2.2.5.1">
<tr class="ltx_tr" id="S6.T2.1.2.2.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T2.1.2.2.5.1.1.1">Media &amp;</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.2.2.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T2.1.2.2.5.1.2.1">Video</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.2.2.6">
<table class="ltx_tabular ltx_align_middle" id="S6.T2.1.2.2.6.1">
<tr class="ltx_tr" id="S6.T2.1.2.2.6.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T2.1.2.2.6.1.1.1">Windows</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.2.2.6.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T2.1.2.2.6.1.2.1">Utils</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.2.2.7">Office</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.2.2.8">Cross-App</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T2.1.3.3.1">UFO</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T2.1.3.3.2">GPT-4o</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.3.3.3">0.0%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.3.3.4">23.3%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.3.3.5">33.3%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.3.3.6">29.2%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.3.3.7">33.3%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.3.3.8">8.3%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.3.3.9">18.5%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.3.3.10">4.5%</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T2.1.4.4.1">NAVI</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T2.1.4.4.2">GPT-4o</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.4.4.3">0.0%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.4.4.4">20.0%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.4.4.5">29.2%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.4.4.6">9.1%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.4.4.7">25.3%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.4.4.8">0.0%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.4.4.9">18.5%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.4.4.10">0.0%</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T2.1.5.5.1">OmniAgent</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T2.1.5.5.2">GPT-4o</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.5.5.3">0.0%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.5.5.4">27.3%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.5.5.5">33.3%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.5.5.6">27.3%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.5.5.7">30.3%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.5.5.8">8.3%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.5.5.9">14.8%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.5.5.10">0.0%</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T2.1.6.6.1">Agent S</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T2.1.6.6.2">GPT-4o</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.6.6.3">0.0%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.6.6.4">13.3%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.6.6.5">45.8%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.6.6.6">29.2%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.6.6.7">19.1%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.6.6.8"><span class="ltx_text ltx_font_bold" id="S6.T2.1.6.6.8.1">22.2%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.6.6.9">22.2%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.6.6.10">0.0%</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T2.1.7.7.1">Operator</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T2.1.7.7.2">computer-use</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.7.7.3"><span class="ltx_text ltx_font_bold" id="S6.T2.1.7.7.3.1">7%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.7.7.4">26.7%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.7.7.5">29.2%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.7.7.6">29.2%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.7.7.7">28.6%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.7.7.8">8.3%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.7.7.9">22.2%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.7.7.10">4.5%</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S6.T2.1.8.8.1">
<span class="ltx_text ltx_font_smallcaps" id="S6.T2.1.8.8.1.1">UFO<sup class="ltx_sup" id="S6.T2.1.8.8.1.1.1"><span class="ltx_text ltx_font_upright" id="S6.T2.1.8.8.1.1.1.1">2</span></sup></span>-base</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S6.T2.1.8.8.2">GPT-4o</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T2.1.8.8.3">2.3%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T2.1.8.8.4">36.7%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T2.1.8.8.5">29.2%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T2.1.8.8.6">41.7%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T2.1.8.8.7">33.3%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T2.1.8.8.8">0.0%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T2.1.8.8.9">22.2%</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T2.1.8.8.10"><span class="ltx_text ltx_font_bold" id="S6.T2.1.8.8.10.1">9.1%</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T2.1.9.9.1">
<span class="ltx_text ltx_font_smallcaps" id="S6.T2.1.9.9.1.1">UFO<sup class="ltx_sup" id="S6.T2.1.9.9.1.1.1"><span class="ltx_text ltx_font_upright" id="S6.T2.1.9.9.1.1.1.1">2</span></sup></span>-base</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T2.1.9.9.2">o1</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.9.9.3">2.3%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.9.9.4">30.0%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.9.9.5">37.5%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.9.9.6">50.0%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.9.9.7">33.3%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.9.9.8">8.3%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.9.9.9">22.2%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.9.9.10"><span class="ltx_text ltx_font_bold" id="S6.T2.1.9.9.10.1">9.1%</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T2.1.10.10.1"><span class="ltx_text ltx_font_smallcaps" id="S6.T2.1.10.10.1.1">UFO<sup class="ltx_sup" id="S6.T2.1.10.10.1.1.1"><span class="ltx_text ltx_font_upright" id="S6.T2.1.10.10.1.1.1.1">2</span></sup></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T2.1.10.10.2">GPT-4o</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.10.10.3">4.7%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.10.10.4">30.0%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.10.10.5">41.7%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.10.10.6"><span class="ltx_text ltx_font_bold" id="S6.T2.1.10.10.6.1">58.3%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.10.10.7">33.3%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.10.10.8">8.3%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.10.10.9">44.4%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.10.10.10"><span class="ltx_text ltx_font_bold" id="S6.T2.1.10.10.10.1">9.1%</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r ltx_border_t" id="S6.T2.1.11.11.1"><span class="ltx_text ltx_font_smallcaps" id="S6.T2.1.11.11.1.1">UFO<sup class="ltx_sup" id="S6.T2.1.11.11.1.1.1"><span class="ltx_text ltx_font_upright" id="S6.T2.1.11.11.1.1.1.1">2</span></sup></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r ltx_border_t" id="S6.T2.1.11.11.2">o1</th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T2.1.11.11.3">4.7%</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T2.1.11.11.4"><span class="ltx_text ltx_font_bold" id="S6.T2.1.11.11.4.1">40.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T2.1.11.11.5"><span class="ltx_text ltx_font_bold" id="S6.T2.1.11.11.5.1">45.8%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T2.1.11.11.6">50.0%</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T2.1.11.11.7"><span class="ltx_text ltx_font_bold" id="S6.T2.1.11.11.7.1">38.1%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T2.1.11.11.8">16.7%</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T2.1.11.11.9"><span class="ltx_text ltx_font_bold" id="S6.T2.1.11.11.9.1">51.9%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S6.T2.1.11.11.10"><span class="ltx_text ltx_font_bold" id="S6.T2.1.11.11.10.1">9.1%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of success rates (SR) achieved by different models across various application types within two benchmark datasets: the Windows Agent Arena (WAA) and the OSWorld-W benchmark.  It allows for a granular analysis of model performance, identifying strengths and weaknesses across different application categories (e.g., Office applications, web browsers, coding tools, etc.). This breakdown helps in understanding which types of applications are more effectively automated and where further improvements are needed.
> <details>
> <summary>read the caption</summary>
> Table 2. SR breakdown by application type on WAA and OSWorld-W.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.T2.1.2.2.2.1">
<tr class="ltx_tr" id="S6.T2.1.2.2.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T2.1.2.2.2.1.1.1">Web</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.2.2.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T2.1.2.2.2.1.2.1">Browser</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the success rate (SR) and control recovery ratio (CRR) of three different control detection methods used in UFO2: UIA-only, OmniParser-v2 only, and the hybrid approach combining both.  The SR shows the percentage of tasks successfully completed using each method, while the CRR indicates the percentage of tasks that failed with UIA alone but were successfully completed using the OmniParser or hybrid methods. The table also displays the results for two different language models (GPT-40 and 01). This helps illustrate the effectiveness of the hybrid approach in improving the robustness and accuracy of GUI control detection.
> <details>
> <summary>read the caption</summary>
> Table 3. Comparison of SR and CRR across control detection mechanisms.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.T2.1.2.2.3.1">
<tr class="ltx_tr" id="S6.T2.1.2.2.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T2.1.2.2.3.1.1.1">Windows</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.2.2.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T2.1.2.2.3.1.2.1">System</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the Application Programming Interfaces (APIs) that are supported across different Microsoft Office applications (Word, Excel, PowerPoint) within the UFO2 system.  For each API, the table shows the application it belongs to and a brief description of its function.  These APIs allow for more efficient and robust automation compared to relying solely on GUI interactions.
> <details>
> <summary>read the caption</summary>
> Table 4. APIs supported across Office applications.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.T2.1.2.2.5.1">
<tr class="ltx_tr" id="S6.T2.1.2.2.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T2.1.2.2.5.1.1.1">Media &amp;</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.2.2.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T2.1.2.2.5.1.2.1">Video</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of using only Graphical User Interface (GUI) actions versus a combined approach using both GUI and Application Programming Interface (API) actions for automating tasks.  It shows the success rate, plan error recovery rate, execution error recovery rate, control detection failure recovery rate, and average completion steps for each approach using two different language models (GPT-40 and 01). This allows for a quantitative comparison of the effectiveness and efficiency of the two automation strategies.
> <details>
> <summary>read the caption</summary>
> Table 5. Performance comparison of GUI-only vs. GUI + API actions.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.T2.1.2.2.6.1">
<tr class="ltx_tr" id="S6.T2.1.2.2.6.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T2.1.2.2.6.1.1.1">Windows</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.2.2.6.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T2.1.2.2.6.1.2.1">Utils</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of UFO2 with and without knowledge integration, showing the impact of incorporating both static documentation and dynamic execution logs on success rates (SR) and plan recovery rates (PRR).  It highlights how continuous learning improves task completion, particularly in complex scenarios.
> <details>
> <summary>read the caption</summary>
> Table 6. Performance comparison with and without knowledge integration.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S6.T3.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T3.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T3.1.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.1.1.1.1">Control Detector</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T3.1.1.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.1.1.2.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S6.T3.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.1.1.3.1">WAA</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S6.T3.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.1.1.4.1">OSWorld-W</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.1.2.2.1">SR</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.1.2.2.2">CRR</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.1.2.2.3">SR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.1.2.2.4">CRR</td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T3.1.1.3.3.1">UIA</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T3.1.1.3.3.2">GPT-4o</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.1.3.3.3">23.4%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.1.3.3.4">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.1.3.3.5">22.4%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.1.3.3.6">-</td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T3.1.1.4.4.1">OmniParser-v2</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T3.1.1.4.4.2">GPT-4o</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.1.4.4.3">26.6%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.1.4.4.4">7.0%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.1.4.4.5">14.3%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.1.4.4.6">0%</td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T3.1.1.5.5.1"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.5.5.1.1">Hybrid</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T3.1.1.5.5.2"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.5.5.2.1">GPT-4o</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.1.5.5.3"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.5.5.3.1">26.6%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.1.5.5.4"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.5.5.4.1">9.9%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.1.5.5.5"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.5.5.5.1">22.4%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.1.5.5.6"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.5.5.6.1">12.5%</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S6.T3.1.1.6.6.1">UIA</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S6.T3.1.1.6.6.2">o1</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T3.1.1.6.6.3">25.3%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T3.1.1.6.6.4">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T3.1.1.6.6.5">24.5%</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T3.1.1.6.6.6">-</td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T3.1.1.7.7.1">OmniParser-v2</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T3.1.1.7.7.2">o1</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.1.7.7.3">20.8%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.1.7.7.4">7.0%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T3.1.1.7.7.5">14.3%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.1.7.7.6">0%</td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r ltx_border_t" id="S6.T3.1.1.8.8.1"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.8.8.1.1">Hybrid</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r ltx_border_t" id="S6.T3.1.1.8.8.2"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.8.8.2.1">o1</span></th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T3.1.1.8.8.3"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.8.8.3.1">27.9%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T3.1.1.8.8.4"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.8.8.4.1">9.9%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T3.1.1.8.8.5"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.8.8.5.1">28.6%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S6.T3.1.1.8.8.6"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.8.8.6.1">25.0%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the success rate (SR) and average completion steps (ACS) between two execution modes: single action and speculative multi-action.  The single-action mode executes one action per LLM inference, while the speculative multi-action mode predicts and validates multiple actions before execution. The comparison is made to show the impact of speculative multi-action execution on efficiency and success rate.
> <details>
> <summary>read the caption</summary>
> Table 7. The SR and ACS comparison between single action and speculative multi-action mode.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S6.T4.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T4.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S6.T4.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.1.1.1.1">API</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S6.T4.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.1.1.2.1">Application</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S6.T4.1.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.1.1.1.1.3.1">
<span class="ltx_p" id="S6.T4.1.1.1.1.3.1.1" style="width:113.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.1.1.3.1.1.1">Description</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T4.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S6.T4.1.1.2.1.1"><span class="ltx_text ltx_font_typewriter" id="S6.T4.1.1.2.1.1.1">select_text</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.1.1.2.1.2">Word</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S6.T4.1.1.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.1.1.2.1.3.1">
<span class="ltx_p" id="S6.T4.1.1.2.1.3.1.1" style="width:113.8pt;">Select matched text in the document.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.1.3.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S6.T4.1.1.3.2.1"><span class="ltx_text ltx_font_typewriter" id="S6.T4.1.1.3.2.1.1">select_paragraph</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.1.1.3.2.2">Word</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S6.T4.1.1.3.2.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.1.1.3.2.3.1">
<span class="ltx_p" id="S6.T4.1.1.3.2.3.1.1" style="width:113.8pt;">Select a paragraph in the document.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.1.4.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S6.T4.1.1.4.3.1"><span class="ltx_text ltx_font_typewriter" id="S6.T4.1.1.4.3.1.1">set_font</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.1.1.4.3.2">Word</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S6.T4.1.1.4.3.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.1.1.4.3.3.1">
<span class="ltx_p" id="S6.T4.1.1.4.3.3.1.1" style="width:113.8pt;">Set the font size and style of selected text.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.1.5.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S6.T4.1.1.5.4.1"><span class="ltx_text ltx_font_typewriter" id="S6.T4.1.1.5.4.1.1">save_as</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.1.1.5.4.2">Word</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S6.T4.1.1.5.4.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.1.1.5.4.3.1">
<span class="ltx_p" id="S6.T4.1.1.5.4.3.1.1" style="width:113.8pt;">Save the current document to a desired format.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.1.6.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S6.T4.1.1.6.5.1"><span class="ltx_text ltx_font_typewriter" id="S6.T4.1.1.6.5.1.1">insert_excel_table</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.1.1.6.5.2">Excel</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S6.T4.1.1.6.5.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.1.1.6.5.3.1">
<span class="ltx_p" id="S6.T4.1.1.6.5.3.1.1" style="width:113.8pt;">Insert a table at the desired position.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.1.7.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S6.T4.1.1.7.6.1"><span class="ltx_text ltx_font_typewriter" id="S6.T4.1.1.7.6.1.1">select_table_range</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.1.1.7.6.2">Excel</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S6.T4.1.1.7.6.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.1.1.7.6.3.1">
<span class="ltx_p" id="S6.T4.1.1.7.6.3.1.1" style="width:113.8pt;">Select a range within a table.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.1.8.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S6.T4.1.1.8.7.1"><span class="ltx_text ltx_font_typewriter" id="S6.T4.1.1.8.7.1.1">reorder_column</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.1.1.8.7.2">Excel</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S6.T4.1.1.8.7.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.1.1.8.7.3.1">
<span class="ltx_p" id="S6.T4.1.1.8.7.3.1.1" style="width:113.8pt;">Reorder columns of a table.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.1.9.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S6.T4.1.1.9.8.1"><span class="ltx_text ltx_font_typewriter" id="S6.T4.1.1.9.8.1.1">save_as</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.1.1.9.8.2">Excel</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S6.T4.1.1.9.8.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.1.1.9.8.3.1">
<span class="ltx_p" id="S6.T4.1.1.9.8.3.1.1" style="width:113.8pt;">Save the current sheet to a desired format.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.1.10.9">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S6.T4.1.1.10.9.1"><span class="ltx_text ltx_font_typewriter" id="S6.T4.1.1.10.9.1.1">set_background_color</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T4.1.1.10.9.2">PowerPoint</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S6.T4.1.1.10.9.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.1.1.10.9.3.1">
<span class="ltx_p" id="S6.T4.1.1.10.9.3.1.1" style="width:113.8pt;">Set the background color of slide(s).</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.1.11.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S6.T4.1.1.11.10.1"><span class="ltx_text ltx_font_typewriter" id="S6.T4.1.1.11.10.1.1">save_as</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S6.T4.1.1.11.10.2">PowerPoint</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S6.T4.1.1.11.10.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.1.1.11.10.3.1">
<span class="ltx_p" id="S6.T4.1.1.11.10.3.1.1" style="width:113.8pt;">Save the current presentation to a desired format.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the number of steps taken by the HOSTAGENT and APPAGENTS in UFO2 during task execution for both the Windows Agent Arena (WAA) and OSWorld-W benchmarks.  It shows the average number of steps for HOSTAGENT, the average number of steps for APPAGENTS, and the total number of steps for each task.  The 'Success Subset' column indicates how many tasks were successfully completed. The data is categorized by model (GPT-40 and 01) and whether or not the system was using its base configuration or the complete set of features.
> <details>
> <summary>read the caption</summary>
> Table 8. Step count statistic for UFO2.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.14603/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14603/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14603/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14603/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14603/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14603/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14603/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14603/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14603/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14603/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14603/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14603/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14603/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14603/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14603/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14603/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14603/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14603/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14603/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14603/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}