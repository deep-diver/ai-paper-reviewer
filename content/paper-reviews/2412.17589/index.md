---
title: "PC Agent: While You Sleep, AI Works -- A Cognitive Journey into Digital World"
summary: "PC Agent: While you sleep, AI works! This AI system uses human cognition transfer to perform complex digital tasks, exceeding the capabilities of existing digital agents by efficiently learning from h..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Human-AI Interaction", "🏢 Shanghai Jiao Tong University",]
showSummary: true
date: 2024-12-23
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.17589 {{< /keyword >}}
{{< keyword icon="writer" >}} Yanheng He et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-24 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.17589" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.17589" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/pc-agent-while-you-sleep-ai-works-a-cognitive" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.17589/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current digital agents struggle with complex real-world tasks that humans routinely perform, highlighting a crucial gap between simple task automation and complex work completion.  This stems from limitations in visual grounding and a lack of cognitive understanding in current AI systems. 

The researchers developed PC Agent, an AI system that addresses these issues by incorporating three key innovations: PC Tracker (a lightweight infrastructure for collecting high-quality human-computer interaction data), a cognition completion pipeline (transforming raw interaction data into rich cognitive trajectories), and a multi-agent system (combining a planning agent and a grounding agent). Experiments demonstrated PC Agent's ability to efficiently handle sophisticated work scenarios with limited data, underscoring the potential for AI to perform complex tasks by learning from human cognitive processes.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} PC Agent successfully performs complex digital tasks like creating PowerPoint presentations involving multiple applications and numerous steps. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The framework's data efficiency highlights the importance of capturing human cognitive processes for training capable AI agents. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Open-source tools (PC Tracker and cognition completion pipeline) are provided to facilitate further research and development. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers in AI and human-computer interaction because it **bridges the gap between simple task automation and complex work completion** by focusing on human cognitive processes.  It provides a novel framework with open-sourced tools for studying complex work and developing truly capable digital agents which is **highly relevant to current research trends** in autonomous agents and human-centered AI. The data-efficient approach and open-source contribution makes it accessible for researchers to build upon, accelerating progress in the field.

------
#### Visual Insights



![](https://arxiv.org/html/2412.17589/extracted/6090997/PC_Agent_Images/animation.png)

> 🔼 The figure illustrates the PC Agent framework's architecture, detailing its three main components.  PC Tracker, a lightweight system, captures human-computer interaction data by recording user actions and the resulting screen state. This raw data is then processed by the Cognition Completion module, a two-stage pipeline.  First, data refinement cleans and standardizes the raw data. Second, the system infers the user's cognitive processes (thoughts and intentions behind each action) by completing the action semantics. Finally, a multi-agent system utilizes the completed cognitive trajectories.  This system integrates a planning agent, which makes high-level decisions about the work to be done, and a grounding agent, which performs low-level actions, such as precisely clicking GUI elements. The overall goal is to transform raw interaction data into rich cognitive information for training an AI system capable of mimicking human work performance.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of our framework, consisting of three key components: (1) PC Tracker, a lightweight infrastructure that collects human-computer interaction trajectories by recording user actions and state observations; (2) a two-stage cognition completion that converts raw interaction data into cognitive trajectories through data refinement and human cognition completion, including action semantics and thought processes; and (3) a multi-agent system comprising a planning agent for action decision-making and a grounding agent for click position grounding.
> </details>





{{< table-caption >}}
| Action | Description |
|---|---| 
| *click (x, y)* | clicks at coordinates. |
| *right click (x, y)* | right-click at coordinates. |
| *double click (x, y)* | double-click at coordinates. |
| *press (x, y)* | press mouse down at coordinates. |
| *drag to (x, y)* | drags the mouse to coordinates. |
| *scroll (0, 10)* | scrolls the screen with offset dy = 10. |
| *press key: enter* | presses the Enter key. |
| *hotkey (ctrl, c)* | performs the Ctrl+C hotkey (copy). |
| *type text: hello* | type text “hello”. |
| *wait* | pauses for some time. |
| *finish* | the task is finished. |
| *fail* | the task is failed. |{{< /table-caption >}}

> 🔼 This table presents the prompt used for generating descriptions of click targets in the Action Semantic Completion process.  The prompt instructs the model to analyze a screenshot with a red mark quadruplet (frame, circle, point, arrow) highlighting the target area. It also provides the name of the clicked target (which may be inaccurate) and specifies guidelines for creating the description, prioritizing different types of visual information (circle, point, arrow, frame) and providing examples of good descriptions for clear GUI elements and uncertain elements or empty areas. The prompt also specifies an output format for both cases.
> <details>
> <summary>read the caption</summary>
> Table 1: Click Target Description Generation Prompt
> </details>





### In-depth insights


#### Cognition Transfer
The concept of 'Cognition Transfer' in the context of AI research papers signifies a **paradigm shift** from simply automating tasks to replicating and leveraging human cognitive processes for problem-solving.  It suggests that true AI capabilities lie not just in pattern recognition, but in **understanding the 'why' and 'how' behind human actions**, encompassing planning, decision-making, and contextual awareness.  This involves capturing and analyzing not only the actions themselves (mouse clicks, keystrokes), but also the underlying thought processes, motivations, and problem-solving strategies.  **High-quality data collection**, therefore, becomes crucial, requiring methods that capture complete cognitive context—a blend of actions and the internal mental states that drive them.  Successfully transferring cognition presents unique challenges, requiring innovative approaches to bridge the gap between raw data and meaningful cognitive representations.  The effectiveness of such transfer depends on the **quality of data acquisition** and the ability to effectively model the complex interplay of human thought and action.  Ultimately, 'Cognition Transfer' offers a path to more intelligent, adaptable, and human-like AI agents capable of handling complex real-world tasks.

#### PC Tracker System
The PC Tracker system is a crucial component of the research, acting as a **high-quality data collection infrastructure**. Its lightweight design allows for seamless background operation, unobtrusively capturing both user actions and relevant screen states.  This event-based approach, unlike resource-intensive video recording, significantly reduces storage needs while retaining essential interaction details.  The system's **dual-mode collection** (task-oriented and non-task-oriented) enables flexibility, catering to various research needs. Task-oriented mode facilitates data annotation, while the non-task-oriented mode supports large-scale, unobtrusive data gathering.  A key strength is its **unified action space**, translating raw keyboard and mouse events into meaningful actions, simplifying downstream analysis.  Further enhancing its effectiveness is its focus on **data transparency and privacy**.  The open-source nature of PC Tracker is a significant contribution, potentially accelerating the development of truly capable digital agents by lowering barriers to data acquisition for the research community.

#### Completion Pipeline
A sophisticated completion pipeline is crucial for transforming raw interaction data into insightful cognitive trajectories.  **The pipeline's initial stage refines the raw data**, filtering out irrelevant events and standardizing the format for consistency and efficiency.  Subsequently, **action semantic completion enriches the data** by leveraging LLMs to understand the context of human actions, providing detailed descriptions for each interaction. Finally, **thought completion reconstructs the user's cognitive processes**, revealing the underlying reasoning behind observed actions. This stage requires powerful LLMs to process the enriched data in combination with visual context, creating a comprehensive understanding of the user’s intent.  The outcome is a rich representation of human computer interactions that goes beyond simple task execution, capturing higher-level cognitive aspects, which are key to developing truly capable digital agents.  **Data efficiency and accuracy are paramount**, thus necessitating innovative approaches to high-quality data collection, processing, and reasoning.

#### PC Agent: Multi-Agent
The PC Agent's multi-agent architecture is a **key innovation**, addressing the limitations of single-agent systems in complex tasks.  By dividing responsibilities between a **planning agent** (responsible for high-level decision-making and task decomposition) and a **grounding agent** (focused on robust visual grounding and low-level GUI interactions), the system overcomes the challenges of both complex cognitive understanding and precise visual grounding. The planning agent leverages learned human cognitive trajectories to generate effective plans, while the grounding agent ensures reliable execution, even correcting errors from the planning agent through a self-validation mechanism. This collaboration allows the PC Agent to handle sophisticated workflows involving multiple applications and many steps, showcasing the efficiency and power of a **distributed cognitive architecture** in complex digital tasks. The open-sourcing of this framework makes this powerful approach accessible to researchers, promising to significantly advance the capabilities of digital agents.

#### Data Efficiency
The research demonstrates impressive **data efficiency** by achieving complex digital work capabilities with a surprisingly small dataset.  This challenges the conventional wisdom in AI, where massive datasets are typically required for high performance. The core innovation lies in the meticulous collection and processing of human cognitive data, focusing not just on behavioral actions but also on the underlying thought processes involved.  **This approach leverages a cognition completion pipeline that reconstructs the rich cognitive context** from sparse interaction data, making it significantly more informative for training AI agents.  The results highlight that the key to building truly capable digital agents is not simply about scale but about the quality and comprehensiveness of the training data, particularly its cognitive aspects.  The open-sourcing of the framework is a key contribution, allowing broader community participation to further advance research into this crucial data-efficient paradigm. **Future work could explore the generalizability of this data-efficient approach to a wider range of tasks** and investigate its potential for reducing the reliance on massive datasets, thereby making AI training more sustainable and accessible.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.17589/extracted/6090997/PC_Agent_Images/overview.png)

> 🔼 PC Tracker is a lightweight infrastructure for efficiently collecting large-scale human-computer interaction trajectories.  Its key features are:  Lightweight Collection (efficient event-based tracking, not bulky video recording); High Usability (seamless background operation, non-disruptive to user workflow); Scalability (supports unlimited data collection); Unified Action Space (combines fragmented actions into a unified representation, reducing recorded events); and Data Transparency (local data storage, user control over recording, transparent markdown visualization).
> <details>
> <summary>read the caption</summary>
> Figure 2: Key features of PC Tracker
> </details>



![](https://arxiv.org/html/2412.17589/extracted/6090997/PC_Agent_Images/Key_Feature.png)

> 🔼 This figure showcases a sample user interaction trajectory captured by the PC Tracker system. The trajectory visually depicts a sequence of events during a user's interaction with their computer, focusing on the creation of a PowerPoint slide. Each screenshot represents a moment within the interaction, showing the state of the user's applications and the position of the mouse cursor.  Red marks highlight the precise locations of click-related actions to indicate specific steps performed by the user.  This visual representation illustrates how PC Tracker collects comprehensive data on user behavior, going beyond simple screen recordings to provide a detailed record of human-computer interaction, including the sequential nature of actions and their contextual settings.
> <details>
> <summary>read the caption</summary>
> Figure 3: An example trajectory collected by PC Tracker. Red marks on the screenshots indicate the positions of click-related actions.
> </details>



![](https://arxiv.org/html/2412.17589/extracted/6090997/PC_Agent_Images/trajectory_example.png)

> 🔼 The figure shows the action space of PC Tracker, a system designed to collect large-scale human-computer interaction trajectories.  The action space encompasses a variety of actions that can be taken during the recording of interactions, including mouse clicks (single, double, right-click), mouse drags, scrolling, keyboard key presses, hotkey combinations, text entry, pauses (waits), task completion, and task failures.  This comprehensive set of actions ensures that a wide range of user behaviors during computer interactions can be captured and analyzed.
> <details>
> <summary>read the caption</summary>
> Figure 4: Action space 𝒜𝒜\mathcal{A}caligraphic_A of PC Tracker.
> </details>



![](https://arxiv.org/html/2412.17589/extracted/6090997/PC_Agent_Images/Dual_Mode_Collection.png)

> 🔼 This figure illustrates how PC Tracker encapsulates multiple raw keyboard events into a single, unified 'type text' action.  The left column shows the sequence of raw actions, including individual key presses, capitalization changes, and backspaces.  The right column shows how these are consolidated into a single, semantically meaningful action representing the user's intended typing of the text 'Hello'. This demonstrates the process of data refinement within PC Tracker, which improves data efficiency and facilitates downstream cognition completion.
> <details>
> <summary>read the caption</summary>
> Figure 5: Example of type encapsulation.
> </details>



![](https://arxiv.org/html/2412.17589/extracted/6090997/PC_Agent_Images/congnition_completion.png)

> 🔼 The figure displays the output from the `get_element_info_at_position(x, y)` function, which is called when a user clicks on a specific GUI element. The function returns information about the clicked element, including its name and bounding box coordinates.  In this example, the user clicked on the Chrome icon at coordinates (1161, 1065). The figure shows how the function retrieves the element's name ('Google Chrome') and its bounding box coordinates, which define the location and size of the icon on the screen. This data is crucial for the PC Agent system to accurately identify and interact with GUI elements during complex work scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 6: An example of the output from get⁢_⁢element⁢_⁢info⁢_⁢at⁢_⁢position⁡(x,y)get_element_info_at_position𝑥𝑦\operatorname{get\_element\_info\_at\_position}(x,y)start_OPFUNCTION roman_get _ roman_element _ roman_info _ roman_at _ roman_position end_OPFUNCTION ( italic_x , italic_y ) when the user clicks Chrome icon at (1161,1065)11611065(1161,1065)( 1161 , 1065 ).
> </details>



![](https://arxiv.org/html/2412.17589/extracted/6090997/PC_Agent_Images/collaboration_arch.png)

> 🔼 This figure illustrates the natural flow of human interaction when engaging with a computer or other digital system. It emphasizes the cyclical nature of the process: a user begins by observing their environment (the screen display, available tools, etc.), then considers this information to formulate a plan of action (thinking stage), and finally executes this plan through interaction (acting stage).  This cycle repeats continuously as humans interact to complete tasks, adapt to situations, and resolve problems.
> <details>
> <summary>read the caption</summary>
> Figure 7: Natural flow of human interaction: Observe, Think, Act.
> </details>



![](https://arxiv.org/html/2412.17589/extracted/6090997/PC_Agent_Images/Train_Data_Example.jpg)

> 🔼 PC Tracker offers two data collection modes: task-oriented and non-task-oriented.  The task-oriented mode is further divided into given-task and free-task sub-modes. In the given-task mode, users are provided with predefined tasks to complete, while in the free-task mode, they can use the computer freely.  In both sub-modes, task descriptions are recorded. The non-task-oriented mode collects data without any specific tasks, enabling large-scale data collection for general behavior analysis. This dual-mode design allows for both focused, supervised data collection for fine-tuning and broader, unsupervised data collection for pre-training and broader understanding of human computer interaction.
> <details>
> <summary>read the caption</summary>
> Figure 8: An overview of the dual-mode collection design
> </details>



![](https://arxiv.org/html/2412.17589/extracted/6090997/PC_Agent_Images/grounding_validation.png)

> 🔼 This figure illustrates the two-stage cognition completion pipeline. The left panel shows the raw click event data captured by PC Tracker, including coordinates (717, 387). The center panel displays the result of action semantic completion, converting the raw coordinates into a more descriptive and semantically rich representation: “the search box at the top center of the TripAdvisor page”. Finally, the right panel demonstrates the outcome of thought completion, which interprets the user's intention behind the click. In this instance, the user aimed to find highly-rated restaurants near the Eiffel Tower by expanding the search scope, demonstrating an understanding of the task's context and the user's cognitive goals.
> <details>
> <summary>read the caption</summary>
> Figure 9: Visualization of our cognition completion process for a click action. (Left) Raw click event recorded by PC Tracker. (Center) Action semantic completion converts coordinates (717, 387) into a semantic description “the search box at the top center of the TripAdvisor page”. (Right) Thought completion reconstructs the human intention behind this action - finding high-rated restaurants near the Eiffel Tower by broadening the search scope.
> </details>



![](https://arxiv.org/html/2412.17589/extracted/6090997/PC_Agent_Images/task_number.png)

> 🔼 This figure illustrates the collaborative workflow of a multi-agent system, specifically highlighting the error correction mechanism between the planning and grounding agents. Initially, the planning agent attempts to click the 'Images' button. However, the grounding agent detects that this element does not exist and informs the planning agent.  This feedback prompts the planning agent to revise its plan. Subsequently, the grounding agent generates the coordinates for a new, valid click target. This iterative process showcases how the agents collaborate to ensure successful task completion, even when unexpected situations arise.
> <details>
> <summary>read the caption</summary>
> Figure 10: Illustration of multi-agent workflow. The planning agent initially attempts to click a nonexistent element The ‘Images’ button, which is reported by the grounding agent. Upon receiving this feedback, the planning agent reformulates its plan, and the grounding agent generates coordinates of the new click target. The workflow illustrates the error correction mechanism between agents.
> </details>



![](https://arxiv.org/html/2412.17589/extracted/6090997/PC_Agent_Images/ppt_example_border.png)

> 🔼 Figure 11 shows an example of the training data used for the planning agent.  The training data consists of several parts: a system prompt that explains the overall task to the agent, a task description that details the specific task to perform, and a history of previous actions and thoughts of the agent.  Finally, the figure shows an example response of the agent. The response is separated into a thought process section and an action that the agent proposes to execute. This structure is crucial to the approach described in the paper because it allows the agent to learn not only the specific actions needed for task completion but also the cognitive processes behind those actions.
> <details>
> <summary>read the caption</summary>
> Figure 11: Training data example showing query and response structure.
> </details>



![](https://arxiv.org/html/2412.17589/extracted/6090997/PC_Agent_Images/task_description.png)

> 🔼 The grounding agent receives a click target description. It first attempts to generate the coordinates of the target in the screenshot. If the target doesn't exist, the agent outputs 'there are none'. If it successfully outputs the coordinates, it retrieves corresponding element information. Then, it annotates the screenshot with red marks indicating element boundary and click position. This, along with the retrieved element name, is used to determine if the generated position matches the initial target description.  If inconsistent, the process reattempts output until a match is found or a retry limit is reached.
> <details>
> <summary>read the caption</summary>
> Figure 12: Illustration of the grounding agent’s self-validation mechanism.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Click Target Description Generation Prompt |
|---|---|---|---|---|
|  A screenshot with a red mark quadruplet: Frame: rectangular border around the target (may be inaccurate); Circle: circle at the center of the target; Point: dot marking the exact click position; Arrow: pointing to the target | The name of the clicked target for reference. It’s just for reference. If this name is "Unknown" or appears to be incorrect, just ignore it. | Description Rules: Priority Order: Highest: Circle, Point and Arrow; Second: Reference name (if reliable); Lowest: Frame  | Description Strategy: A. For Clear GUI Elements: Include position info ("top", "left", "center", etc.) if possible; Use visual information to describe the element; Refer to the provided element name if reliable; Examples: ✓ "the button in the top-right corner of the window"; ✓ "the current tab at the top of the browser"; × "the red circle" (red marks doesn’t belong to the original screenshot or element) | B. For Empty Areas or Uncertain Elements: Focus on positional relationships; Use visual information to locate the position; Examples: ✓ "empty area on the right side of the window"; ✓ "area near the bottom toolbar" | Output Format: For GUI elements: "{position description} + {element description}"; For empty areas: "empty area + {position descriptions}" | Examples: ✓ "the close button in the top-right corner of the window"; ✓ "the ‘Chrome’ icon on the desktop"; ✓ "the left thumbnail panel in current window"; ✓ "the ‘Images’ tab below the search bar"; ✓ “click to add title”; ✓ "the button in the top-right corner of the browser" (when the reference name is not reliable and you are unsure about the element); × "what appears to be a settings button" (avoid speculation) |{{< /table-caption >}}
> 🔼 This table presents the prompt used in the second stage of action semantic completion, which aims to refine the initially generated descriptions of click targets. The prompt guides the model to carefully evaluate the given description based on visual cues (screenshot with red markings) and additional information such as element names and coordinates, ensuring accuracy and natural language descriptions. It emphasizes avoiding speculation and hallucinations, prioritizing objective descriptions over functional interpretations.
> <details>
> <summary>read the caption</summary>
> Table 2: Click Target Description Refinement Prompt
> </details>

{{< table-caption >}}
| Important: |
|---|---|---|
| 1. Carefully observe the screenshot and the red mark quadruplet. Use these visual cues to describe the element or position as accurately as possible. But **DO NOT** explicitly state the red marks in your description. Avoid phrases like "red arrow marking on the slide.." or "the red circle..". |  |  |
| 2. When uncertain, prefer positional description over semantic or functional speculation. Be extraordinarily cautious to avoid hallucinations. |  |  |
| 3. Be precise and output the description directly in an objective tone. Avoid sentences starting with "the target is", "The pointed target is", or "it appears to be". |  |  |
| 4. Do not directly use the provided element name, create your own natural description based on visual information. |  |  |
| Note: |
|---|---|---|
| 1. For the name of the clicked target for reference, it is either very precise or completely worthless. Judge its reliability based on visual information. If unreliable, ignore it and be cautious, preferably using only positional descriptions; if reliable, try to expand on its description as much as possible. |  |  |
| 2. Special cases: for the text box in PowerPoint, the name of the clicked target is usually "click to add title" or "click to add text".  | - "'click to add title'": for the title text box above the content text box or on the cover slide | - "'click to add text'": for the content text box below the title text box | 
|  | - "'click to add subtitle'": for the subtitle text box below the title text box | - "'the left thumbnail panel in current window'": for the **left slides thumbnail panel in PowerPoint**. But **DO NOT** abuse the use of "thumbnail" in other cases. | {{< /table-caption >}}
> 🔼 This table presents the prompt used for the thought process completion stage in the PC Agent framework.  The prompt guides a large language model (LLM) to reconstruct the cognitive process behind a specific human action during computer usage. The prompt includes various inputs like the overall task, history of prior actions, subsequent actions, the action itself, and a screenshot of the computer screen at the moment of the action.  It also provides detailed guidelines on how to format the response, focusing on creating a first-person narrative that accurately reflects the human's thought process.  Special formatting instructions are provided for the different types of actions performed.
> <details>
> <summary>read the caption</summary>
> Table 3: Thought Process Completion Prompt
> </details>

{{< table-caption >}}
| Click Target Description Refinement Prompt |
|---|---|---|---|---|
| 1. A screenshot showing:  - A red dot and circle marking the exact click location - A red arrow pointing to the click location - A red box outlining the general area of the clicked element Note: While the dot, circle, and arrow are precise, the box might be less accurate | 2. The exact coordinates of the mouse click | 3. The element name from the accessibility tree Note: This information might be incomplete, with many elements labeled as "unknown". | 4. A pre-generated description of the click location Types: - Empty area description (e.g., "empty area near the bottom toolbar") - Specific element description (e.g., "the start button on the left corner of the taskbar") | # Your Task Evaluate the provided description, determine if it is accurate. If not, provide the correct description. You can describe it as an empty area or a specific element. Do not mention the red marks on the screenshot. |{{< /table-caption >}}
> 🔼 This table details the step-by-step instructions given to the PC Agent to create the PowerPoint presentation shown in Figure 14 of the paper.  It breaks down the creation process slide by slide, specifying titles, subtitles, image sourcing (using a web search), and the text content for each slide. The final instruction is to save the presentation and close the applications.
> <details>
> <summary>read the caption</summary>
> Table 4: The task description for Figure 14
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.17589/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17589/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17589/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17589/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17589/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17589/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17589/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17589/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17589/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17589/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17589/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17589/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17589/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17589/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17589/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17589/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17589/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17589/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17589/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17589/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}