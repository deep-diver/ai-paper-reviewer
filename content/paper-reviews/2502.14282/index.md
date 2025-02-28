---
title: "PC-Agent: A Hierarchical Multi-Agent Collaboration Framework for Complex Task Automation on PC"
summary: "PC-Agent: A new hierarchical framework that significantly improves complex task automation on PCs by 32%!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Embodied AI", "🏢 MAIS, Institute of Automation, Chinese Academy of Sciences, China",]
showSummary: true
date: 2025-02-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.14282 {{< /keyword >}}
{{< keyword icon="writer" >}} Haowei Liu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.14282" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.14282" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.14282/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing MLLM-based GUI agents often struggle with the complexities of PC environments, which feature denser interactive elements, varied text layouts, and intricate workflows compared to smartphones. Current methods lack fine-grained perception and struggle with interdependent subtasks across multiple applications, hindering their ability to perform real-world instructions effectively. This paper addresses the challenge in GUI agents.



This paper proposes a hierarchical agent framework called **PC-Agent** to tackle complex tasks on PCs. PC-Agent includes an Active Perception Module (APM) for refined perception and a hierarchical multi-agent collaboration architecture that decomposes decision-making into instruction-subtask-action levels. Additionally, it introduces a reflection-based dynamic decision-making mechanism for error detection and adjustment. A new benchmark, PC-Eval, is introduced. The PC-Agent achieves a 32% improvement in task success rate.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} PC-Agent, a hierarchical multi-agent framework, overcomes the limitations of existing methods in handling complex PC tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The Active Perception Module enhances the agent's perception and operation abilities on PC screens. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The PC-Eval benchmark provides a challenging and realistic evaluation of agents in PC productivity environments. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work introduces PC-Agent, a hierarchical multi-agent framework, and PC-Eval benchmark which is important for the **GUI agent** research community. It demonstrates a significant advancement in automating complex tasks on PCs, offering a robust solution and benchmark for future research and development.

------
#### Visual Insights



![](https://arxiv.org/html/2502.14282/x1.png)

> 🔼 Figure 1 illustrates the challenges posed by the PC environment for automated task completion, contrasting it with simpler smartphone interfaces.  The figure highlights two key aspects: (1) The PC GUI presents a significantly more complex visual landscape, characterized by a high density and variety of interactive elements (icons, widgets, text layouts) compared to the relatively simpler arrangement on smartphones. This density and diversity pose a substantial challenge for accurate screen perception and understanding by AI agents. (2) Tasks on PCs typically involve considerably more complex sequences of operations spanning multiple applications. These sequences are not only longer but also exhibit strong interdependencies between individual subtasks, meaning the successful completion of one step is often crucial to the success of subsequent steps.  This high degree of complexity makes automated task completion significantly more challenging than for similar tasks on smartphones.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustration of the complexity of the PC scenario: (1) Complex interactive environment with dense and diverse elements. (2) Long and complex task sequences containing intra- and inter-software workflows.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.1">
<tr class="ltx_tr" id="S3.T1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_tt" id="S3.T1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.1.1">
<span class="ltx_p" id="S3.T1.1.1.1.1.1" style="width:56.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1.1">Applications</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_tt" id="S3.T1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.2.1">
<span class="ltx_p" id="S3.T1.1.1.2.1.1" style="width:341.4pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.1.1.1">Instruction</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.3.1">
<span class="ltx_p" id="S3.T1.1.1.3.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.3.1.1.1">Steps</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.2.1.1">
<span class="ltx_p" id="S3.T1.1.2.1.1.1" style="width:56.9pt;">File Explorer 
<br class="ltx_break"/>Notepad, Clock 
<br class="ltx_break"/>Calculator</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.1.2.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.2.2.1">
<span class="ltx_p" id="S3.T1.1.2.2.1.1" style="width:341.4pt;">In the Notepad app, open the ’travel_plan’ file in ’Documents’, and check the time and location of the travel plans. Add the travel destination to the World Clock list on the Clock app. Calculate the interval between February 18 and the start time of the travel on the Calculator.</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.2.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.2.3.1">
<span class="ltx_p" id="S3.T1.1.2.3.1.1" style="width:28.5pt;">20</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.3.1.1">
<span class="ltx_p" id="S3.T1.1.3.1.1.1" style="width:56.9pt;">Chrome 
<br class="ltx_break"/>Excel</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.3.2.1">
<span class="ltx_p" id="S3.T1.1.3.2.1.1" style="width:341.4pt;">Search on Chrome for the total population of China, the United States, and India in 2024 respectively. Create a new spreadsheet in Excel, write the three countries’ names in column A in descending order of population, and the corresponding populations in column B.</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.3.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.3.3.1">
<span class="ltx_p" id="S3.T1.1.3.3.1.1" style="width:28.5pt;">23</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.4.1.1">
<span class="ltx_p" id="S3.T1.1.4.1.1.1" style="width:56.9pt;">File Explorer 
<br class="ltx_break"/>Word</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.1.4.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.4.2.1">
<span class="ltx_p" id="S3.T1.1.4.2.1.1" style="width:341.4pt;">Open the ’test_doc1’ file in ’Documents’ in File Explorer, set the title to be bold, and set the line spacing of the first two paragraphs to 1.5x in Word.</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S3.T1.1.4.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.4.3.1">
<span class="ltx_p" id="S3.T1.1.4.3.1.1" style="width:28.5pt;">8</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents three examples of complex instructions from the PC-Eval benchmark dataset.  Each example details the applications involved (File Explorer, Notepad, Clock, Calculator, Chrome, Excel, File Explorer, Word), the specific instruction given to the agent, and the total number of steps required to complete the task. These examples showcase the complexity and length of real-world workflows on a PC, highlighting the challenges faced by AI agents in completing such tasks.
> <details>
> <summary>read the caption</summary>
> Table 1: Examples of complex instructions in PC-Eval.
> </details>





### In-depth insights


#### PC-Agent Design
The PC-Agent design centers around a hierarchical, collaborative architecture to tackle the complexities of PC automation. **It addresses the limitations of existing MLLM-based agents in handling intricate GUI environments and multi-step workflows.** A key component is the **Active Perception Module (APM)**, enhancing the agent's ability to perceive and ground elements and text accurately. The design employs a **hierarchical multi-agent collaboration** approach, dividing decision-making into Instruction, Subtask, and Action levels. This involves a Manager Agent (MA) for instruction decomposition, a Progress Agent (PA) for subtask progress tracking, and a Decision Agent (DA) for step-by-step action. **Reflection-based dynamic decision-making** is incorporated with a Reflection Agent to detect errors and provide feedback, enabling adjustments. **This comprehensive approach enables the agent to overcome existing limitations.

#### Active Perception
**Active perception** is crucial for intelligent agents operating in complex environments like PCs. It involves more than passive observation; it entails actively gathering information relevant to the task at hand. An active perception module should enable the agent to **intelligently select which parts of the screen to focus on**, based on the current goal. This might involve prioritizing interactive elements like buttons and input fields, or strategically sampling text to extract key information. The module should dynamically adjust its focus as the task progresses, responding to changes in the environment and the agent's own understanding of the situation. By actively seeking out information, the agent can overcome the limitations of static screenshots and make more informed decisions. This approach is important as it allows the agent to actively query the environment for information it needs, instead of relying solely on pre-existing data, enabling greater adaptability and robustness.

#### Hierarchical MAs
**Hierarchical Multi-Agent Systems (HMAS)** represent a sophisticated approach to task decomposition and coordination, particularly relevant in complex environments. This involves structuring multiple agents in a hierarchical manner, typically reflecting the organizational structure of the problem itself. **The key advantage lies in improved scalability and efficiency**, as higher-level agents manage overall goals and delegate subtasks to lower-level agents. **Decision-making is distributed**, reducing the cognitive load on individual agents and facilitating parallel execution. This **hierarchical approach enhances robustness**, as local failures are less likely to disrupt the entire system. **Communication overhead can be optimized** by limiting interactions to within and between adjacent levels of the hierarchy. However, designing an effective HMAS requires careful consideration of the hierarchical structure, task allocation strategies, and communication protocols, which can be challenging. Proper management ensures that the **system maintains coherence**.

#### Dynamic Reflection
**Dynamic Reflection** in AI agents, particularly in PC automation, is crucial for enhancing reliability and accuracy. It involves the agent's ability to observe the outcomes of its actions and adjust its strategy based on the observed results. This contrasts with static, pre-programmed routines. A core element is the **Reflection Agent (RA)**, which parallels the Decision Agent (DA). The RA observes state changes before and after DA's actions to assess goal alignment. This process informs three types of judgments: non-conforming changes, lack of effective response, or successful execution. Incorrect or ineffective outcomes trigger feedback to the DA and PA, prompting error correction or alternative actions, thereby avoiding repetitive mistakes. The RA's insights refine decision-making and improve overall task completion accuracy.

#### PC-Eval Details
**PC-Eval**, as detailed in this research, is a custom-built benchmark designed to evaluate the performance of GUI agents, specifically in PC environments, addressing limitations of existing datasets. It includes **25 complex instructions spanning eight popular PC applications**, emphasizing intricate workflows, refined operations, and extended decision-making. A key aspect is its **focus on real-world productivity scenarios** with interdependent subtasks, going beyond basic actions. Evaluation relies on **success rate (SR)**, measuring completed instructions, and **subtask success rate (SSR)** for a thorough agent capability assessment. The benchmark's design aims to challenge current models with tasks reflecting realistic PC usage, offering a valuable resource for advancing GUI agent research and development. The benchmark fills a crucial gap by presenting difficult PC automation challenges, focusing on long workflows and complex scenarios.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.14282/x2.png)

> 🔼 The figure illustrates the hierarchical structure of PC-Agent, a multi-agent system designed for complex task automation on PCs.  It shows how the system decomposes the decision-making process into three levels: instruction, subtask, and action.  The orange lines represent the top-down decomposition of a user's instruction into manageable subtasks, while the purple lines depict the bottom-up feedback mechanism provided by the Reflection Agent, which monitors the execution and provides error correction and adjustment. The figure highlights the collaboration between the Manager Agent, Progress Agent, and Decision Agent at each level to ensure smooth task completion.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of the proposed PC-Agent, which decomposes the decision-making process into three levels. The orange lines denote the top-down decision-making decomposition, and the purple lines represent the bottom-up reflection process.
> </details>



![](https://arxiv.org/html/2502.14282/x3.png)

> 🔼 This figure illustrates the PC-Agent's Active Perception Module (APM), a key component for handling complex interactive environments on a PC.  The APM uses two main approaches for perception:  For interactive GUI elements (buttons, menus, etc.), it leverages the accessibility tree (A11y tree) to extract precise bounding boxes and functional descriptions. This allows the agent to accurately locate and interact with these elements.  For text-based elements, the APM employs a two-step process. First, an intention understanding agent processes the user's request to identify the target text. Second, an OCR (Optical Character Recognition) tool is used to precisely locate and extract the identified text from the screen. This dual approach enables accurate text selection and editing operations.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustration of the active perception module. For interactive elements, the A11y tree is adopted to obtain the bounding boxes and functional information. For text, an intention understanding agent and an OCR tool are utilized to perform precise selecting or editing.
> </details>



![](https://arxiv.org/html/2502.14282/x4.png)

> 🔼 This figure demonstrates the PC-Agent's workflow for a complex task involving multiple applications.  The user instruction is to find stock prices for Nvidia, Apple, and Microsoft, then create an Excel sheet with this data. The diagram shows the agent breaking this task into subtasks: searching for each stock price on Chrome, and then populating the Excel sheet.  The communication hub facilitates passing data between subtasks. The visualization highlights the agent's ability to handle multi-step, multi-application tasks and demonstrate the process of data exchange between subtasks using a communication hub.
> <details>
> <summary>read the caption</summary>
> Figure 4: A case of searching for information multiple times and build an Excel sheet accordingly.
> </details>



![](https://arxiv.org/html/2502.14282/x5.png)

> 🔼 This figure illustrates the PC-Agent's reflection mechanism in action. During a multi-step process involving successive searches on Chrome, an error occurs. The Reflection Agent (RA) detects this error by comparing screenshots before and after the action. This feedback is then used to adjust the subsequent actions.  The figure visually demonstrates how the system corrects itself by opening a new tab using a shortcut, effectively handling and recovering from an incorrect action that did not produce the expected result.
> <details>
> <summary>read the caption</summary>
> Figure 5: A case of reflection when performing multiple successive searches in Chrome.
> </details>



![](https://arxiv.org/html/2502.14282/x6.png)

> 🔼 This figure showcases the PC-Agent's ability to perform precise text manipulations within a Word document.  It demonstrates the effectiveness of the Active Perception Module (APM) in identifying and targeting specific text elements for operations such as centering the title and underlining the last paragraph.  The detailed steps involved highlight the agent's capability to handle complex GUI interactions and carry out precise operations that require fine-grained control.
> <details>
> <summary>read the caption</summary>
> Figure 6: A case of refined text editing operations in the Word application.
> </details>



![](https://arxiv.org/html/2502.14282/x7.png)

> 🔼 This figure displays example screenshots from a GUI grounding dataset. The dataset was created by the authors and contains screenshots of common PC applications (such as File Explorer, Chrome, Outlook, Excel, and Word) showcasing various interactive elements.  The purpose is to illustrate the complexity and diversity of the graphical user interfaces (GUIs) in a typical PC environment, emphasizing the challenges in building robust and accurate GUI agents. The screenshots show different actions and highlighted elements in these applications that are part of the grounding task.
> <details>
> <summary>read the caption</summary>
> Figure 7: Example screenshots from the GUI grounding dataset we built for commonly used applications in PC scenarios.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.2">
<tr class="ltx_tr" id="S3.T2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T2.2.2.3"><span class="ltx_text" id="S3.T2.2.2.3.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T2.2.2.4"><span class="ltx_text" id="S3.T2.2.2.4.1">Type</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T2.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.1.1">
<span class="ltx_p" id="S3.T2.1.1.1.1.1" style="width:113.8pt;">Subtask SR (%) <math alttext="\uparrow" class="ltx_centering" display="inline" id="S3.T2.1.1.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.1.1.m1.1a"><mo id="S3.T2.1.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T2.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.1.1.m1.1b"><ci id="S3.T2.1.1.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T2.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.2.2.2.1">
<span class="ltx_p" id="S3.T2.2.2.2.1.1" style="width:85.4pt;">Success Rate (%) <math alttext="\uparrow" class="ltx_centering" display="inline" id="S3.T2.2.2.2.1.1.m1.1"><semantics id="S3.T2.2.2.2.1.1.m1.1a"><mo id="S3.T2.2.2.2.1.1.m1.1.1" stretchy="false" xref="S3.T2.2.2.2.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.1.1.m1.1b"><ci id="S3.T2.2.2.2.1.1.m1.1.1.cmml" xref="S3.T2.2.2.2.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.1.1.m1.1d">↑</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.2.3.1">Gemini-2.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.3.2" rowspan="4"><span class="ltx_text" id="S3.T2.2.3.2.1">Single-Agent</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.2.3.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.2.3.3.1">
<span class="ltx_p" id="S3.T2.2.3.3.1.1" style="width:113.8pt;">35.4%</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.2.3.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.2.3.4.1">
<span class="ltx_p" id="S3.T2.2.3.4.1.1" style="width:85.4pt;">0.0%</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.4.1">Claude-3.5</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.2.4.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.2.4.2.1">
<span class="ltx_p" id="S3.T2.2.4.2.1.1" style="width:113.8pt;">15.2%</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T2.2.4.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.2.4.3.1">
<span class="ltx_p" id="S3.T2.2.4.3.1.1" style="width:85.4pt;">0.0%</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.5.1">Qwen2.5-VL</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.2.5.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.2.5.2.1">
<span class="ltx_p" id="S3.T2.2.5.2.1.1" style="width:113.8pt;">46.8%</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T2.2.5.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.2.5.3.1">
<span class="ltx_p" id="S3.T2.2.5.3.1.1" style="width:85.4pt;">12.0%</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.6.1">GPT-4o</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.2.6.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.2.6.2.1">
<span class="ltx_p" id="S3.T2.2.6.2.1.1" style="width:113.8pt;">41.8%</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T2.2.6.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.2.6.3.1">
<span class="ltx_p" id="S3.T2.2.6.3.1.1" style="width:85.4pt;">8.0%</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.2.7.1">UFO <cite class="ltx_cite ltx_citemacro_cite">Zhang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.14282v1#bib.bib22" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T2.2.7.2" rowspan="3"><span class="ltx_text" id="S3.T2.2.7.2.1">Multi-Agent</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.2.7.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.2.7.3.1">
<span class="ltx_p" id="S3.T2.2.7.3.1.1" style="width:113.8pt;">43.0%</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.2.7.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.2.7.4.1">
<span class="ltx_p" id="S3.T2.2.7.4.1.1" style="width:85.4pt;">12.0%</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.8.1">Agent-S <cite class="ltx_cite ltx_citemacro_cite">Agashe et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.14282v1#bib.bib1" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.2.8.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.2.8.2.1">
<span class="ltx_p" id="S3.T2.2.8.2.1.1" style="width:113.8pt;">55.7%</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T2.2.8.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.2.8.3.1">
<span class="ltx_p" id="S3.T2.2.8.3.1.1" style="width:85.4pt;">24.0%</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.9">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T2.2.9.1">
<span class="ltx_text ltx_font_bold" id="S3.T2.2.9.1.1">PC-Agent</span> (Ours)</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T2.2.9.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.2.9.2.1">
<span class="ltx_p" id="S3.T2.2.9.2.1.1" style="width:113.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.9.2.1.1.1">76.0%</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T2.2.9.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.2.9.3.1">
<span class="ltx_p" id="S3.T2.2.9.3.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.9.3.1.1.1">56.0%</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a dynamic evaluation of different methods on the PC-Eval benchmark.  It compares the subtask success rate (SSR) and overall success rate (SR) achieved by various single-agent and multi-agent approaches on a set of 25 complex instructions designed for PC environments. The results highlight the relative performance of different methods in handling complex, multi-step tasks involving interactions across multiple applications.
> <details>
> <summary>read the caption</summary>
> Table 2: Dynamic evaluation results on the PC-Eval benchmark.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T3.1">
<tr class="ltx_tr" id="S3.T3.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T3.1.1.1">Ablation study</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.2" rowspan="2"><span class="ltx_text" id="S3.T3.1.1.2.1">Subtask Success Rate</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T3.1.1.3" rowspan="2"><span class="ltx_text" id="S3.T3.1.1.3.1">Success Rate</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.2.1">APM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.2.2">Manager Agent</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.2.3">Reflection Agent</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.3">
<td class="ltx_td ltx_border_t" id="S3.T3.1.3.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.3.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.3.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.3.4">58.2%</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.3.5">20.0%</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.4">
<td class="ltx_td ltx_align_center" id="S3.T3.1.4.1">✓</td>
<td class="ltx_td" id="S3.T3.1.4.2"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.4.3">✓</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.4.4">50.6%</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.4.5">12.0%</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.5">
<td class="ltx_td ltx_align_center" id="S3.T3.1.5.1">✓</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.5.2">✓</td>
<td class="ltx_td ltx_border_r" id="S3.T3.1.5.3"></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.5.4">48.1%</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.5.5">12.0%</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.6">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.1.6.1">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.1.6.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T3.1.6.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.1.6.4">76.0%</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.1.6.5">56.0%</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study assessing the impact of three key components of the PC-Agent framework: the Active Perception Module (APM), the Manager Agent, and the Reflection Agent.  Each row shows the performance (Subtask Success Rate and overall Success Rate) when one or more of these components are removed from the system, illustrating their individual contributions to the overall success of the system.
> <details>
> <summary>read the caption</summary>
> Table 3: The results of the ablation study on the APM module, Manager agent and Reflection Agent.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T4.4">
<tr class="ltx_tr" id="A1.T4.4.4">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T4.4.4.5">Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.1.1.1">Subtask SR (%) <math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T4.1.1.1.m1.1"><semantics id="A1.T4.1.1.1.m1.1a"><mo id="A1.T4.1.1.1.m1.1.1" stretchy="false" xref="A1.T4.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T4.1.1.1.m1.1b"><ci id="A1.T4.1.1.1.m1.1.1.cmml" xref="A1.T4.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T4.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.2.2.2">Success Rate (%) <math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T4.2.2.2.m1.1"><semantics id="A1.T4.2.2.2.m1.1a"><mo id="A1.T4.2.2.2.m1.1.1" stretchy="false" xref="A1.T4.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T4.2.2.2.m1.1b"><ci id="A1.T4.2.2.2.m1.1.1.cmml" xref="A1.T4.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T4.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.3.3.3">Recovery Rate (%) <math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T4.3.3.3.m1.1"><semantics id="A1.T4.3.3.3.m1.1a"><mo id="A1.T4.3.3.3.m1.1.1" stretchy="false" xref="A1.T4.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T4.3.3.3.m1.1b"><ci id="A1.T4.3.3.3.m1.1.1.cmml" xref="A1.T4.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T4.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="A1.T4.4.4.4">Manager SR (%) <math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T4.4.4.4.m1.1"><semantics id="A1.T4.4.4.4.m1.1a"><mo id="A1.T4.4.4.4.m1.1.1" stretchy="false" xref="A1.T4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T4.4.4.4.m1.1b"><ci id="A1.T4.4.4.4.m1.1.1.cmml" xref="A1.T4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.4.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.4.5.1">Gemini-2.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.4.5.2">55.7%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.4.5.3">28.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.4.5.4">24.0%</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T4.4.5.5">84.0%</td>
</tr>
<tr class="ltx_tr" id="A1.T4.4.6">
<td class="ltx_td ltx_align_left" id="A1.T4.4.6.1">Claude-3.5</td>
<td class="ltx_td ltx_align_center" id="A1.T4.4.6.2">63.3%</td>
<td class="ltx_td ltx_align_center" id="A1.T4.4.6.3">40.0%</td>
<td class="ltx_td ltx_align_center" id="A1.T4.4.6.4">48.0%</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T4.4.6.5">88.0%</td>
</tr>
<tr class="ltx_tr" id="A1.T4.4.7">
<td class="ltx_td ltx_align_left" id="A1.T4.4.7.1">Qwen2.5-VL</td>
<td class="ltx_td ltx_align_center" id="A1.T4.4.7.2">32.9%</td>
<td class="ltx_td ltx_align_center" id="A1.T4.4.7.3">12.0%</td>
<td class="ltx_td ltx_align_center" id="A1.T4.4.7.4">40.0%</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T4.4.7.5">88.0%</td>
</tr>
<tr class="ltx_tr" id="A1.T4.4.8">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A1.T4.4.8.1"><span class="ltx_text ltx_font_bold" id="A1.T4.4.8.1.1">GPT-4o</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T4.4.8.2"><span class="ltx_text ltx_font_bold" id="A1.T4.4.8.2.1">76.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T4.4.8.3"><span class="ltx_text ltx_font_bold" id="A1.T4.4.8.3.1">56.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T4.4.8.4"><span class="ltx_text ltx_font_bold" id="A1.T4.4.8.4.1">64.0%</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="A1.T4.4.8.5"><span class="ltx_text ltx_font_bold" id="A1.T4.4.8.5.1">96.0%</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparative analysis of the PC-Agent's performance using different large language models (LLMs) as its foundation.  It shows the subtask success rate (SSR), overall success rate, recovery rate (percentage of tasks where errors were detected and corrected), and manager agent success rate (how well the agent decomposed tasks).  The results highlight the impact of the chosen LLM on the PC-Agent's ability to complete complex tasks on a PC.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance results of PC-Agent with different foundation models on PC-Eval.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.14282/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14282/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14282/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14282/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14282/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14282/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14282/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14282/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14282/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14282/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14282/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14282/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14282/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14282/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}