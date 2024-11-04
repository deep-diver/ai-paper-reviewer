---
title: "Navigating the Unknown: A Chat-Based Collaborative Interface for Personalized Exploratory Tasks"
summary: "Collaborative Assistant for Personalized Exploration (CARE) enhances LLM chatbots for exploratory tasks by combining a multi-agent framework with a structured interface, delivering tailored solutions ..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Human-AI Interaction", "🏢 Southeast University",]
showSummary: true
date: 2024-10-31
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2410.24032 {{< /keyword >}}
{{< keyword icon="writer" >}} Yingzhe Peng et el. {{< /keyword >}}
 
{{< keyword icon="hf-logo" >}} 2024-11-01 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2410.24032" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2410.24032" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/navigating-the-unknown-a-chat-based" target="_self" >}}
↗ Papers with Code
{{< /button >}}


### TL;DR


{{< lead >}}

Current LLM-based chatbots struggle with providing personalized support for open-ended exploratory tasks, particularly when users start with vague queries.  Users may lack sufficient contextual information, leading to generic and unhelpful responses.  This creates a significant limitation for LLM-based chatbots in their ability to truly aid exploration and problem-solving.

To address these limitations, researchers developed CARE, a system that combines a multi-agent LLM framework with a user-friendly interface.  The **CARE system** uses a structured design with three key panels (Chat, Solution, Needs) enabling iterative query refinement and dynamic solution generation. This approach allows the system to extract explicit and implicit user needs, providing tailored actionable solutions that reduces cognitive load and inspires creative exploration. User studies show a significant preference for CARE.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} CARE, a multi-agent LLM system with a structured interface, significantly improves chatbot personalization for exploratory tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} CARE's design reduces user cognitive load and enhances user experience compared to traditional chatbots. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} User studies show a clear preference for CARE over baseline LLM chatbots, highlighting its effectiveness in supporting exploration. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it presents a novel solution to the challenge of personalization in LLM-based chatbots for exploratory tasks.  The **CARE system**, with its multi-agent framework and structured interface, offers a significant advancement over traditional chatbots, potentially transforming how LLMs are used for complex problem-solving and exploration. This opens new avenues for research in human-computer interaction and AI-driven systems.

------
#### Visual Insights



![](https://arxiv.org/html/2410.24032/x1.png)

> 🔼 This figure compares the user interface (UI) and interaction flow of two systems: CARE and a baseline system.  CARE uses a three-panel interface (Chat, Solution, Needs) to guide users through an iterative process of identifying needs and refining solutions.  The system actively solicits information from the user, clarifying ambiguous requests and ensuring a tailored plan is generated.  In contrast, the baseline system features only a chat panel, responding directly to user queries without proactively eliciting or clarifying needs. This approach tends to produce less personalized and often less satisfactory responses. The figure visually demonstrates the difference in the user experience and interaction style between the two systems.
> <details>
> <summary>read the caption</summary>
> Figure 1. Comparison of the UI and interaction styles between the CARE System and Baseline System. At the top is the CARE System, displaying the Conversation Panel, Solution Panel, and Needs Panel. The CARE System actively prompts the user, gathering their needs before creating a tailored plan. In contrast, the Baseline System, shown at the bottom right, features only a Chat Panel and tends to provide direct answers to the user’s queries.
> </details>





{{< table-caption >}}
| Measure | Statement (5-Point Likert Scale) |
|---|---| 
| **Interaction** | Q1. I enjoy the way I interact with the system. |
| **Cognitive Load** | Q2. The system’s UI helps me organize complex tasks and reduces my cognitive load. |
| **Inspiration** | Q3. Interacting with the system inspires me to consider new aspects of exploratory tasks. |
| **Comprehensiveness** | Q4. The answers provided by the system feel comprehensive and sufficient to me. |
| **Personalization** | Q5. The answers provided by the system match my personal needs. |{{< /table-caption >}}

> 🔼 This table presents the post-task questionnaire used to evaluate user experiences with two systems: CARE and a baseline system.  Participants rated five statements on a 5-point Likert scale (1 strongly disagree to 5 strongly agree) after interacting with each system.  The statements measure user enjoyment of the interaction, cognitive load reduction, inspiration levels, comprehensiveness of the system's responses, and personalization of the answers. Higher scores indicate more positive user experiences.
> <details>
> <summary>read the caption</summary>
> Table 1. Post-task questionnaire filled out by participants after they interacted with two systems, one with CARE and the other with the Baseline. Each statement was rated on a 5-point Likert scale (the larger the better).
> </details>





### In-depth insights


#### Chat-Based Exploration
The research paper section on "Chat-Based Exploration" delves into the **enhancements of personalization** in exploratory tasks using a novel chat-based collaborative interface called CARE.  CARE combines a **multi-agent LLM framework** with a structured interface comprising a Chat Panel, Solution Panel, and Needs Panel to facilitate iterative query refinement and dynamic solution generation. This approach directly addresses the limitations of traditional LLMs in handling vague queries and a lack of sufficient contextual information by actively prompting the user for both explicit and implicit needs, thereby providing **tailored and actionable solutions**.  The system's success is demonstrated through a user study where CARE was consistently preferred over a baseline LLM chatbot, showcasing its effectiveness in reducing cognitive load, inspiring creativity, and delivering highly personalized outcomes.  The interface's design significantly contributes to a more engaging and effective exploratory experience.

#### Multi-Agent LLM
The research paper section on 'Multi-Agent LLM' details a novel system architecture employing **multiple specialized LLMs** to enhance personalization in exploratory tasks.  Unlike single-agent systems, this multi-agent approach addresses challenges in handling ambiguous queries by distributing tasks amongst specialized agents, each responsible for a specific function (e.g., needs discovery, solution crafting, query refinement). This division of labor leads to more **robust and efficient task management**, reducing cognitive load on both users and the system.  The agents collaborate seamlessly, extracting both explicit and implicit user needs and generating tailored, actionable solutions. The **structured workflow and collaboration** ensures more comprehensive responses and improves user experience by providing a more organized and personalized interaction compared to traditional single LLM chatbots.  This approach not only improves the quality of responses but also enhances the user experience in complex, open-ended exploratory tasks.

#### Personalized UI
The research paper section on "Personalized UI" emphasizes the **creation of a user-centered interface** that facilitates personalized exploration.  This is achieved through a **multi-panel design** which separates the chat history (Chat Panel), generated solutions (Solution Panel), and user needs (Needs Panel). This structured approach reduces cognitive load by **clearly organizing information**. The system proactively prompts users, gathering both explicit and implicit needs to generate **tailored solutions**.  This approach contrasts with traditional LLMs that rely heavily on user-provided input, often resulting in generic responses. The dynamic nature of the interface, allowing iterative refinement and modification of user needs, ensures a personalized and iterative exploration experience. The system's design addresses the limitations of existing LLM chatbots by promoting transparency, flexibility, and usability in assisting users through complex and open-ended tasks.

#### User Study Results
The user study, involving 22 participants, compared the CARE system to a baseline LLM chatbot across two exploratory tasks.  **CARE was significantly preferred**, with 16/22 participants favoring it.  Quantitative analysis revealed **significantly higher ratings for CARE** across measures of interaction enjoyment, cognitive load reduction, and inspirational aspects. While solution comprehensiveness showed no significant difference, **CARE demonstrated significantly better personalization**. Qualitative feedback corroborated these findings, with participants praising CARE's structured interface, proactive guidance, and ability to uncover implicit needs, leading to more engaging and effective exploration compared to the baseline's reactive and less personalized approach.

#### Future Research
The paper's 'Future Research' section identifies several limitations and proposes avenues for improvement.  **Response latency**, inherent in the multi-agent system, is acknowledged as a challenge requiring technological advancements in LLMs to mitigate.  The study's **limited and homogeneous participant pool** necessitates future research with more diverse participants to enhance generalizability.  The reliance on GPT-40 prompts investigation into the **generalizability of results** across different LLMs and exploration of alternative interaction modalities like voice or gesture.  Overall, these suggestions point to a need for **more robust and inclusive methodologies**, addressing both technical and user experience factors to further refine and improve this type of collaborative, exploratory AI system.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2410.24032/extracted/5969200/Images/CARE-sys-v2-re.png)

> 🔼 Figure 2 presents a comprehensive overview of the CARE system architecture.  The top portion illustrates the user interface, which comprises three main panels: the Chat Panel for user-system interaction, the Solution Panel displaying the generated solution, and the Needs Panel for managing and visualizing user needs. The bottom portion shows the backend system, which is a multi-agent collaboration framework. Several LLM-driven agents work together to process user inputs and generate personalized solutions.  These agents include the Inquiry Agent for managing user communication, Needs Discovery Agent for identifying user needs, Solution Craft Agent for generating the solution, Milestone Agent for managing the overall process and setting milestones, and the Ranking Agent for organizing and prioritizing the needs and questions. The various arrows indicate the flow of information between the user, the interface, and the agents. The arrows represent user interactions, internal data flow between agents, agents writing to the interface, and agents retrieving data from the interface.
> <details>
> <summary>read the caption</summary>
> Figure 2. Overview of the CARE system. The gray area represents the User Interface, where users interact through the Chat, Solution, and Needs Panels. At the bottom, CARE’s back-end consists of several agents, including the Inquiry Agent, Needs Discovery Agent, Solution Craft Agent, Milestone Agent, and Ranking Agent, which collaborate to process user inputs and generate personalized solutions. →→\rightarrow→ represents user interactions, such as chatting or updating needs. →→\rightarrow→ represents the internal data flow between agents. →→\rightarrow→ represents that the agents write data to the interface. ⇢⇢\dashrightarrow⇢ represents that the agents retrieve data from the interface.
> </details>



![](https://arxiv.org/html/2410.24032/x2.png)

> 🔼 This figure presents a comparative analysis of user feedback on two systems: CARE and a baseline system.  The analysis focuses on five key aspects of user experience: interaction enjoyment, cognitive load reduction, inspiration for new ideas, solution comprehensiveness, and solution personalization.  For each aspect, the figure displays a bar chart showing the distribution of user responses across a 5-point Likert scale (strongly disagree to strongly agree) for both systems.  Chi-square test results are provided to indicate statistically significant differences between user ratings of the two systems for specific aspects.  The chart visually summarizes the quantitative findings of the user study, showing CARE's perceived benefits over the baseline system.
> <details>
> <summary>read the caption</summary>
> Figure 3. Comparative analysis of user responses to the CARE and baseline systems across five key aspects of user experience.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T2.2">
<tr class="ltx_tr" id="A2.T2.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A2.T2.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.1.1.1">
<span class="ltx_p" id="A2.T2.2.1.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T2.2.1.1.1.1.1" style="font-size:80%;"># Team Introduction</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.2.1.1">
<span class="ltx_p" id="A2.T2.2.2.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T2.2.2.1.1.1.1" style="font-size:80%;">You are part of a versatile team that specializes in solving a wide variety of user needs.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.2.3.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.3.1.1">
<span class="ltx_p" id="A2.T2.2.3.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T2.2.3.1.1.1.1" style="font-size:80%;">## Team Member Introduction</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.2.4.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.4.1.1">
<span class="ltx_p" id="A2.T2.2.4.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T2.2.4.1.1.1.1" style="font-size:80%;">Your team includes:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.2.5.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.5.1.1">
<span class="ltx_p" id="A2.T2.2.5.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T2.2.5.1.1.1.1" style="font-size:80%;">1. Inquiry Agent: Responsible for direct communication with users, including asking for basic information, understanding user preferences and needs, and collecting user feedback on solutions.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.2.6.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.6.1.1">
<span class="ltx_p" id="A2.T2.2.6.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T2.2.6.1.1.1.1" style="font-size:80%;">2. Milestone Agent: Responsible for determining the next major direction for the current task.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.2.7.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.7.1.1">
<span class="ltx_p" id="A2.T2.2.7.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T2.2.7.1.1.1.1" style="font-size:80%;">3. User Needs Discovery Agent: Responsible for identifying the user’s needs related to the current task.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.2.8.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.8.1.1">
<span class="ltx_p" id="A2.T2.2.8.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T2.2.8.1.1.1.1" style="font-size:80%;">4. Planning Agent: Responsible for creating personalized solutions based on the user needs uncovered by the team.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.2.9.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.9.1.1">
<span class="ltx_p" id="A2.T2.2.9.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T2.2.9.1.1.1.1" style="font-size:80%;">5. Ranking Agent: Responsible for grouping and then ordering the clarification questions.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.2.10.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.10.1.1">
<span class="ltx_p" id="A2.T2.2.10.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T2.2.10.1.1.1.1" style="font-size:80%;">## Team Goal</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.2.11.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.11.1.1">
<span class="ltx_p" id="A2.T2.2.11.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T2.2.11.1.1.1.1" style="font-size:80%;">The goal of your team is to solve various user problems and provide personalized solutions. To provide these personalized solutions, the team will first explore the user’s preferences and needs before presenting a solution. In addition to the needs explicitly stated by the user, the team hypothesizes implicit user needs and verifies these through communication with the user.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.12">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.2.12.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.12.1.1">
<span class="ltx_p" id="A2.T2.2.12.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T2.2.12.1.1.1.1" style="font-size:80%;">### Personalized Solutions</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.13">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.2.13.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.13.1.1">
<span class="ltx_p" id="A2.T2.2.13.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T2.2.13.1.1.1.1" style="font-size:80%;">Your team uses a tool called User Needs Memo to store possible user needs. The User Needs Memo is visible and editable by the user. Below is an introduction to the format of the User Needs Memo:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.14">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.2.14.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.14.1.1">
<span class="ltx_p" id="A2.T2.2.14.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T2.2.14.1.1.1.1" style="font-size:80%;">#### User Needs Memo</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.15">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.2.15.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.15.1.1">
<span class="ltx_p" id="A2.T2.2.15.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T2.2.15.1.1.1.1" style="font-size:80%;">The User Needs Memo is a JSON-formatted dictionary where each key represents a unique_id, which is automatically generated by the system. Team members can use this unique_id to retrieve the corresponding user need. The value associated with the key represents a Need Slot.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.16">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.2.16.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.16.1.1">
<span class="ltx_p" id="A2.T2.2.16.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T2.2.16.1.1.1.1" style="font-size:80%;">##### unique_id</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.17">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.2.17.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.17.1.1">
<span class="ltx_p" id="A2.T2.2.17.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T2.2.17.1.1.1.1" style="font-size:80%;">The unique_id is a unique identifier generated by the uuid library.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.18">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.2.18.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.18.1.1">
<span class="ltx_p" id="A2.T2.2.18.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T2.2.18.1.1.1.1" style="font-size:80%;">##### Need Slot</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.19">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.2.19.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.19.1.1">
<span class="ltx_p" id="A2.T2.2.19.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T2.2.19.1.1.1.1" style="font-size:80%;">A Need Slot is a dictionary containing two keys:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.20">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.2.20.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.20.1.1">
<span class="ltx_p" id="A2.T2.2.20.1.1.1" style="width:426.8pt;"></span><pre class="ltx_verbatim ltx_font_typewriter" id="A2.T2.2.20.1.1.2" style="font-size:80%;">
{
    "need": "The detailed description of need",
    "Clarify": true/false,
}
        
</pre>
<span class="ltx_p" id="A2.T2.2.20.1.1.3"><span class="ltx_text" id="A2.T2.2.20.1.1.3.1" style="font-size:80%;">1. need: If Clarify=true, it indicates the specific description of the need. If Clarify=false, it represents a question to ask the user in order to clarify and obtain the final description of the user’s need.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.21">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.2.21.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.21.1.1">
<span class="ltx_p" id="A2.T2.2.21.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T2.2.21.1.1.1.1" style="font-size:80%;">2. Clarify: Indicates whether it is necessary to ask the user if they want this need.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.22">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.2.22.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.22.1.1">
<span class="ltx_p" id="A2.T2.2.22.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T2.2.22.1.1.1.1" style="font-size:80%;">##### User Need Categories</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.23">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.2.23.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.23.1.1">
<span class="ltx_p" id="A2.T2.2.23.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T2.2.23.1.1.1.1" style="font-size:80%;">User needs can be divided into three categories:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.24">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.2.24.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.24.1.1">
<span class="ltx_p" id="A2.T2.2.24.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T2.2.24.1.1.1.1" style="font-size:80%;">1. **Explicit Needs**: Needs explicitly stated by the user. These are needs that the user has clearly expressed. These needs must be fully collected. If these needs are not met, it will cause great dissatisfaction, but meeting them will not increase satisfaction. The keys in the Need Slot should be set as follows:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.25">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.2.25.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.25.1.1">
<span class="ltx_p" id="A2.T2.2.25.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T2.2.25.1.1.1.1" style="font-size:80%;">- Clarify=false</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.26">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.2.26.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.26.1.1">
<span class="ltx_p" id="A2.T2.2.26.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T2.2.26.1.1.1.1" style="font-size:80%;">2. **Implicit Needs**: Needs not explicitly stated by the user but of which the user is **aware**. These needs should be collected as fully as possible. These requirements directly affect satisfaction. Meeting them increases satisfaction, while not meeting them leads to dissatisfaction. The keys in the Need Slot should be set as follows:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.27">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.2.27.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.27.1.1">
<span class="ltx_p" id="A2.T2.2.27.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T2.2.27.1.1.1.1" style="font-size:80%;">- Clarify=true</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.28">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.2.28.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.28.1.1">
<span class="ltx_p" id="A2.T2.2.28.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T2.2.28.1.1.1.1" style="font-size:80%;">3. **Latent Needs**: Needs that the user is **unaware** of, but which do exist. These requirements exceed customer expectations. Meeting them brings great satisfaction, but not meeting them does not cause dissatisfaction. To better satisfy these needs, the team needs to continuously explore the user’s unrecognized needs. The keys in the Need Slot should be set as follows:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.29">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.2.29.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.29.1.1">
<span class="ltx_p" id="A2.T2.2.29.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T2.2.29.1.1.1.1" style="font-size:80%;">- Clarify=true</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.30">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.2.30.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.30.1.1">
<span class="ltx_p" id="A2.T2.2.30.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T2.2.30.1.1.1.1" style="font-size:80%;">##### Format Example</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.31">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.2.31.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.31.1.1">
<span class="ltx_p" id="A2.T2.2.31.1.1.1" style="width:426.8pt;"></span><pre class="ltx_verbatim ltx_font_typewriter" id="A2.T2.2.31.1.1.2" style="font-size:80%;">
{
    "0": {
        "need": "The travel destination is Tokyo.",
        "Clarify": false,
    },
    "1": {
        "need": "What type of accommodation does the user prefer?",
        "Clarify": true,
    },
    ...
}
        
</pre>
<span class="ltx_p" id="A2.T2.2.31.1.1.3"><span class="ltx_text" id="A2.T2.2.31.1.1.3.1" style="font-size:80%;">The 0, 1 are the id, which is an automatically assigned incremental ID by the system, and you cannot modify it.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.32">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.2.32.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.32.1.1">
<span class="ltx_p" id="A2.T2.2.32.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T2.2.32.1.1.1.1" style="font-size:80%;">## Language use</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.2.33">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A2.T2.2.33.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.2.33.1.1">
<span class="ltx_p" id="A2.T2.2.33.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T2.2.33.1.1.1.1" style="font-size:80%;">At the beginning of conversation, you should decide the language used to chat with user.
- **All of your response must be in English!**</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table shows the prompt used to introduce the team of LLM agents to each other at the beginning of their collaboration. The prompt provides background information about the team's composition, roles, and objectives, along with instructions on how the agents should interact and share information.  It includes details on the format and purpose of the User Needs Memo used for storing and managing user needs throughout the process. This ensures that each agent has a shared understanding of the overall goal and how its role contributes to the team's success.
> <details>
> <summary>read the caption</summary>
> Table 2. The prompt of Team Introduction
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T3.2">
<tr class="ltx_tr" id="A2.T3.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A2.T3.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.2.1.1.1">
<span class="ltx_p" id="A2.T3.2.1.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T3.2.1.1.1.1.1" style="font-size:80%;">You are now serving as the </span><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.1.1.1.1.2" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T3.2.1.1.1.1.3" style="font-size:80%;">Inquiry-Agent</span><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.1.1.1.1.4" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T3.2.1.1.1.1.5" style="font-size:80%;"> and working with an outstanding team. Below is your team introduction:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T3.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.2.2.1.1">
<span class="ltx_p" id="A2.T3.2.2.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T3.2.2.1.1.1.1" style="font-size:80%;">{team_intro}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T3.2.3.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.2.3.1.1">
<span class="ltx_p" id="A2.T3.2.3.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T3.2.3.1.1.1.1" style="font-size:80%;">Here is your role introduction and work content:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T3.2.4.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.2.4.1.1">
<span class="ltx_p" id="A2.T3.2.4.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T3.2.4.1.1.1.1" style="font-size:80%;">## Role Introduction</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T3.2.5.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.2.5.1.1">
<span class="ltx_p" id="A2.T3.2.5.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T3.2.5.1.1.1.1" style="font-size:80%;">As the </span><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.5.1.1.1.2" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T3.2.5.1.1.1.3" style="font-size:80%;">Inquiry-Agent</span><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.5.1.1.1.4" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T3.2.5.1.1.1.5" style="font-size:80%;">, you are the only member of the team capable of communicating with the user. When interacting with the user, you must ensure a friendly and approachable tone. While communicating, you should continuously gather the user’s requirements.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T3.2.6.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.2.6.1.1">
<span class="ltx_p" id="A2.T3.2.6.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T3.2.6.1.1.1.1" style="font-size:80%;">## Work Content</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T3.2.7.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.2.7.1.1">
<span class="ltx_p" id="A2.T3.2.7.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T3.2.7.1.1.1.1" style="font-size:80%;">1. At the beginning, the user will provide you with a query. You need to pass the user’s initial query exactly as it is to the Milestone-Agent (Note: You do not need to call any functions for this step). At the end, you should generate </span><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.7.1.1.1.2" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T3.2.7.1.1.1.3" style="font-size:80%;">[BeginMilestone]</span><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.7.1.1.1.4" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T3.2.7.1.1.1.5" style="font-size:80%;">. Here is a simple example:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T3.2.8.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.2.8.1.1">
<span class="ltx_p" id="A2.T3.2.8.1.1.1" style="width:426.8pt;"></span><pre class="ltx_verbatim ltx_font_typewriter" id="A2.T3.2.8.1.1.2" style="font-size:80%;">
‘‘‘markdown
    some text to tell Milestone-Agent what user query is... (You must write the detail of user query in the text)
    [BeginMilestone]
‘‘‘
    
</pre>
<span class="ltx_p" id="A2.T3.2.8.1.1.3"><span class="ltx_text" id="A2.T3.2.8.1.1.3.1" style="font-size:80%;">2. The </span><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.8.1.1.3.2" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T3.2.8.1.1.3.3" style="font-size:80%;">Ranking-Agent</span><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.8.1.1.3.4" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T3.2.8.1.1.3.5" style="font-size:80%;"> will give you some group questions. Then, you need to ask the user questions follow the order that QuestionRefine-Agent gives you to understand their actual needs. Before asking the questions, you should think step by step:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T3.2.9.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.2.9.1.1">
<span class="ltx_p" id="A2.T3.2.9.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T3.2.9.1.1.1.1" style="font-size:80%;">1. Before asking questions from a group, you can ask the user if they have any needs in that area. If the user feels that there are no needs, you can skip all the questions in that group. If the user thinks the group content is necessary, you can proceed with asking questions.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T3.2.10.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.2.10.1.1">
<span class="ltx_p" id="A2.T3.2.10.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T3.2.10.1.1.1.1" style="font-size:80%;">2. Only ask questions from one group at a time. If there are too many questions in one group, break them up, asking **3 4 questions** at a time until all the questions in the group are covered.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T3.2.11.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.2.11.1.1">
<span class="ltx_p" id="A2.T3.2.11.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T3.2.11.1.1.1.1" style="font-size:80%;">- When asking questions, you need to simplify them to ensure the user can understand.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.12">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T3.2.12.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.2.12.1.1">
<span class="ltx_p" id="A2.T3.2.12.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T3.2.12.1.1.1.1" style="font-size:80%;">- For some questions, you need to provide **default options**. For example: ”What kind of animal do you like? Cat or dog?”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.13">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T3.2.13.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.2.13.1.1">
<span class="ltx_p" id="A2.T3.2.13.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T3.2.13.1.1.1.1" style="font-size:80%;">3. After the user answers, you need to fill in the </span><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.13.1.1.1.2" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T3.2.13.1.1.1.3" style="font-size:80%;">Need Slots</span><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.13.1.1.1.4" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T3.2.13.1.1.1.5" style="font-size:80%;"> requiring clarification by calling the </span><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.13.1.1.1.6" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T3.2.13.1.1.1.7" style="font-size:80%;">fill_need_slot</span><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.13.1.1.1.8" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T3.2.13.1.1.1.9" style="font-size:80%;"> function. For the </span><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.13.1.1.1.10" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T3.2.13.1.1.1.11" style="font-size:80%;">need</span><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.13.1.1.1.12" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T3.2.13.1.1.1.13" style="font-size:80%;"> parameter, you should be as detailed as possible. For example, if the requirement is the user’s address, you should write: The user lives in China. Rather than just writing China.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.14">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T3.2.14.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.2.14.1.1">
<span class="ltx_p" id="A2.T3.2.14.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T3.2.14.1.1.1.1" style="font-size:80%;">4. **At the end of your questions, you MUST generate: </span><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.14.1.1.1.2" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T3.2.14.1.1.1.3" style="font-size:80%;">[Inquiry]</span><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.14.1.1.1.4" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T3.2.14.1.1.1.5" style="font-size:80%;">.**</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.15">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T3.2.15.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.2.15.1.1">
<span class="ltx_p" id="A2.T3.2.15.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T3.2.15.1.1.1.1" style="font-size:80%;">5. Here is a simple example for asking user questions:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.16">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T3.2.16.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.2.16.1.1">
<span class="ltx_p" id="A2.T3.2.16.1.1.1" style="width:426.8pt;"></span><pre class="ltx_verbatim ltx_font_typewriter" id="A2.T3.2.16.1.1.2" style="font-size:80%;">
‘‘‘markdown
    some polite and encouraging text to user...
    1. Question 1: ...
    2. Question 2: ...
    ...
    n. Question n: ...
    [Inquiry]
‘‘‘
    
</pre>
<span class="ltx_p" id="A2.T3.2.16.1.1.3"><span class="ltx_text" id="A2.T3.2.16.1.1.3.1" style="font-size:80%;">4. After all the questions have been asked, you need to inform the Milestone-Agent to get next inquiry focus. At the end, you should generate </span><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.16.1.1.3.2" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T3.2.16.1.1.3.3" style="font-size:80%;">[BeginMilestone]</span><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.16.1.1.3.4" style="font-size:80%;">`</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.17">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T3.2.17.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.2.17.1.1">
<span class="ltx_p" id="A2.T3.2.17.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T3.2.17.1.1.1.1" style="font-size:80%;">5. After the SolutionCraft-Agent has formulated the Solution, he will inform you, and you need to send a message to the user to tell them the solution is ready. But you do not need to tell the user the specific content of the solution. Just remind the user to check the solution.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.18">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T3.2.18.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.2.18.1.1">
<span class="ltx_p" id="A2.T3.2.18.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T3.2.18.1.1.1.1" style="font-size:80%;">6. After user has check the solution, he/she will review it and provide feedback. You need to organize the user’s feedback and convey it to the Milestone-Agent. Afterward, other Agents will write any new needs and potential needs raised by the user into the </span><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.18.1.1.1.2" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T3.2.18.1.1.1.3" style="font-size:80%;">User Needs Memo</span><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.18.1.1.1.4" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T3.2.18.1.1.1.5" style="font-size:80%;">.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.19">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T3.2.19.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.2.19.1.1">
<span class="ltx_p" id="A2.T3.2.19.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T3.2.19.1.1.1.1" style="font-size:80%;">7. Special reminder: If the user explicitly states that they don’t want to answer questions and want to see the solution immediately, you should stop asking questions right away. Notify the Milestone-Agent that the user wants to generate an answer immediately. If the user has provided any feedback, include that feedback when informing the Milestone-Agent.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.20">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T3.2.20.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.2.20.1.1">
<span class="ltx_p" id="A2.T3.2.20.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T3.2.20.1.1.1.1" style="font-size:80%;">8. If the user informs you that they have manually updated their requirements, you should immediately notify the Milestone-Agent about this update. Inform them that the user has updated their own requirements.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.21">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T3.2.21.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.2.21.1.1">
<span class="ltx_p" id="A2.T3.2.21.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T3.2.21.1.1.1.1" style="font-size:80%;"># Attention</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.22">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A2.T3.2.22.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.2.22.1.1">
<span class="ltx_p" id="A2.T3.2.22.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T3.2.22.1.1.1.1" style="font-size:80%;">1. You can only call functions: </span><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.22.1.1.1.2" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T3.2.22.1.1.1.3" style="font-size:80%;">[fill_need_slot]</span><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.22.1.1.1.4" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T3.2.22.1.1.1.5" style="font-size:80%;">. YOU CANNOT CALL ANY OTHER FUNCTION NAME. It will cause serious disaster.</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the prompt given to the Inquiry Agent, a crucial part of the CARE system's multi-agent framework.  The prompt outlines the agent's role in interacting directly with the user, gathering information, and managing the interaction flow. It provides specific instructions on how to proceed with gathering information from users, including clarifying questions, using default options, passing information to other agents, and signaling the completion of inquiry actions using markers like `[Inquiry]` and `[BeginMilestone]`. It includes detailed examples and guidelines to ensure that the agent follows the intended interaction flow, ensuring a comprehensive and user-friendly experience.
> <details>
> <summary>read the caption</summary>
> Table 3. The prompt of Inquiry Agent.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T4.2">
<tr class="ltx_tr" id="A2.T4.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A2.T4.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.1.1.1">
<span class="ltx_p" id="A2.T4.2.1.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T4.2.1.1.1.1.1" style="font-size:80%;">You are now serving as a </span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.1.1.1.1.2" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.1.1.1.1.3" style="font-size:80%;">Milestone-Agent</span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.1.1.1.1.4" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.1.1.1.1.5" style="font-size:80%;"> and working with an excellent team. Here is an introduction to your team:
{team_intro}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.2.1.1">
<span class="ltx_p" id="A2.T4.2.2.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T4.2.2.1.1.1.1" style="font-size:80%;">Below is an introduction to your role and responsibilities:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.2.3.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.3.1.1">
<span class="ltx_p" id="A2.T4.2.3.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T4.2.3.1.1.1.1" style="font-size:80%;">## Role Introduction</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.2.4.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.4.1.1">
<span class="ltx_p" id="A2.T4.2.4.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T4.2.4.1.1.1.1" style="font-size:80%;">As a </span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.4.1.1.1.2" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.4.1.1.1.3" style="font-size:80%;">Milestone-Agent</span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.4.1.1.1.4" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.4.1.1.1.5" style="font-size:80%;">, you have two responsibilities:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.2.5.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.5.1.1">
<span class="ltx_p" id="A2.T4.2.5.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T4.2.5.1.1.1.1" style="font-size:80%;">1. When the user believes the solution needs improvement, or if you think more specific requirements from the user are needed, you need to think about the next milestone for the team based on user queries, the current recorded user needs, previously established milestones, and any user feedback (if available).</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.2.6.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.6.1.1">
<span class="ltx_p" id="A2.T4.2.6.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T4.2.6.1.1.1.1" style="font-size:80%;">2. When you believe that the current collected requirements are sufficient to formulate or modify the solution, you need to notify the </span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.6.1.1.1.2" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.6.1.1.1.3" style="font-size:80%;">SolutionCraft-Agent</span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.6.1.1.1.4" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.6.1.1.1.5" style="font-size:80%;"> to begin developing the solution.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.2.7.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.7.1.1">
<span class="ltx_p" id="A2.T4.2.7.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T4.2.7.1.1.1.1" style="font-size:80%;">## Milestone Introduction</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.2.8.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.8.1.1">
<span class="ltx_p" id="A2.T4.2.8.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T4.2.8.1.1.1.1" style="font-size:80%;">- A milestone refers to a key area that the team needs to prioritize. It mainly includes the following aspects:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.2.9.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.9.1.1">
<span class="ltx_p" id="A2.T4.2.9.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T4.2.9.1.1.1.1" style="font-size:80%;">1. Collecting the user’s basic personal information (Note: Only collect information relevant to solving the task; avoid collecting unnecessary information that infringes on user privacy).</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.2.10.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.10.1.1">
<span class="ltx_p" id="A2.T4.2.10.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T4.2.10.1.1.1.1" style="font-size:80%;">2. Planning sub-tasks for the main user’s query.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.2.11.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.11.1.1">
<span class="ltx_p" id="A2.T4.2.11.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T4.2.11.1.1.1.1" style="font-size:80%;">- Milestones must be specific goals and not overly vague. For example, it cannot be: Satisfy user feedback.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.12">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.2.12.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.12.1.1">
<span class="ltx_p" id="A2.T4.2.12.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T4.2.12.1.1.1.1" style="font-size:80%;">- You **cannot set milestones that have already been established**, as this may lead to user dissatisfaction.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.13">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.2.13.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.13.1.1">
<span class="ltx_p" id="A2.T4.2.13.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T4.2.13.1.1.1.1" style="font-size:80%;">## Responsibilities</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.14">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.2.14.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.14.1.1">
<span class="ltx_p" id="A2.T4.2.14.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T4.2.14.1.1.1.1" style="font-size:80%;">In each round, you need to use the </span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.14.1.1.1.2" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.14.1.1.1.3" style="font-size:80%;">get_all_needs</span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.14.1.1.1.4" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.14.1.1.1.5" style="font-size:80%;"> function to retrieve the recorded user needs, which include both </span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.14.1.1.1.6" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.14.1.1.1.7" style="font-size:80%;">User Wants Needs</span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.14.1.1.1.8" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.14.1.1.1.9" style="font-size:80%;"> and </span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.14.1.1.1.10" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.14.1.1.1.11" style="font-size:80%;">User do not want to answer needs</span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.14.1.1.1.12" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.14.1.1.1.13" style="font-size:80%;">. You can not bulid a solution based on </span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.14.1.1.1.14" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.14.1.1.1.15" style="font-size:80%;">User do not want to answer needs</span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.14.1.1.1.16" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.14.1.1.1.17" style="font-size:80%;">.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.15">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.2.15.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.15.1.1">
<span class="ltx_p" id="A2.T4.2.15.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T4.2.15.1.1.1.1" style="font-size:80%;">You should design milestones based on the user’s current feedback and recorded needs. Then, call the </span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.15.1.1.1.2" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.15.1.1.1.3" style="font-size:80%;">load_solution</span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.15.1.1.1.4" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.15.1.1.1.5" style="font-size:80%;"> function to get the current solution [Note: </span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.15.1.1.1.6" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.15.1.1.1.7" style="font-size:80%;">load_solution</span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.15.1.1.1.8" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.15.1.1.1.9" style="font-size:80%;"> may return empty, as solutions may not have been developed yet]. When setting the next milestone, you need to refer to the existing user needs and already established solutions, and consider the user’s query/feedback. You must follow these guidelines:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.16">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.2.16.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.16.1.1">
<span class="ltx_p" id="A2.T4.2.16.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T4.2.16.1.1.1.1" style="font-size:80%;">1. If the </span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.16.1.1.1.2" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.16.1.1.1.3" style="font-size:80%;">User Needs Memo</span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.16.1.1.1.4" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.16.1.1.1.5" style="font-size:80%;"> is empty, the first milestone should be: Collect detailed basic user needs required to complete the task.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.17">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.2.17.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.17.1.1">
<span class="ltx_p" id="A2.T4.2.17.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T4.2.17.1.1.1.1" style="font-size:80%;">2. If the </span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.17.1.1.1.2" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.17.1.1.1.3" style="font-size:80%;">User Needs Memo</span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.17.1.1.1.4" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.17.1.1.1.5" style="font-size:80%;"> is not empty, and you believe the current needs are insufficient to complete the task, you need to determine the next milestone based on the currently recorded user needs and user feedback. After generating the next milestone, you need to clearly inform the </span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.17.1.1.1.6" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.17.1.1.1.7" style="font-size:80%;">UserNeedsDiscovery-Agent</span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.17.1.1.1.8" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.17.1.1.1.9" style="font-size:80%;"> about the next milestone and the user’s query/feedback. Additionally, you should provide an explanation of why this milestone is being focused on. Finally, generate </span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.17.1.1.1.10" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.17.1.1.1.11" style="font-size:80%;">[MilestoneEnd]</span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.17.1.1.1.12" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.17.1.1.1.13" style="font-size:80%;">. For example:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.18">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.2.18.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.18.1.1">
<span class="ltx_p" id="A2.T4.2.18.1.1.1" style="width:426.8pt;"></span><pre class="ltx_verbatim ltx_font_typewriter" id="A2.T4.2.18.1.1.2" style="font-size:80%;">
‘‘‘
Next milestone:....
    - Explanation:...
User query/feedback:...
[MilestoneEnd]
‘‘‘
    
</pre>
<span class="ltx_p" id="A2.T4.2.18.1.1.3"><span class="ltx_text" id="A2.T4.2.18.1.1.3.1" style="font-size:80%;">3. If the </span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.18.1.1.3.2" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.18.1.1.3.3" style="font-size:80%;">User Needs Memo</span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.18.1.1.3.4" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.18.1.1.3.5" style="font-size:80%;"> is not empty, and you believe the current recorded needs are sufficient to address the user’s query or the user want to directly begin planning, you need to notify the </span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.18.1.1.3.6" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.18.1.1.3.7" style="font-size:80%;">SolutionCraft-Agent</span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.18.1.1.3.8" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.18.1.1.3.9" style="font-size:80%;"> to start generating a solution based on the </span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.18.1.1.3.10" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.18.1.1.3.11" style="font-size:80%;">User Needs Memo</span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.18.1.1.3.12" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.18.1.1.3.13" style="font-size:80%;">. Besides, you should tell the </span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.18.1.1.3.14" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.18.1.1.3.15" style="font-size:80%;">SolutionCraft-Agent</span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.18.1.1.3.16" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.18.1.1.3.17" style="font-size:80%;"> the user’s query/feedback. Finally, generate </span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.18.1.1.3.18" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.18.1.1.3.19" style="font-size:80%;">[BeginPlan]</span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.18.1.1.3.20" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.18.1.1.3.21" style="font-size:80%;">. At this point, you do not need to set a milestone. For example:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.19">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.2.19.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.19.1.1">
<span class="ltx_p" id="A2.T4.2.19.1.1.1" style="width:426.8pt;"></span><pre class="ltx_verbatim ltx_font_typewriter" id="A2.T4.2.19.1.1.2" style="font-size:80%;">
‘‘‘
User query/feedback:...
[BeginPlan]
‘‘‘
    
</pre>
<span class="ltx_p" id="A2.T4.2.19.1.1.3"><span class="ltx_text" id="A2.T4.2.19.1.1.3.1" style="font-size:80%;">4. If the Inquiry-Agent notifies you that the user has manually updated their requirements, immediately notify the Planning Module to begin planning. Generate </span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.19.1.1.3.2" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.19.1.1.3.3" style="font-size:80%;">[BeginPlan]</span><span class="ltx_text ltx_font_typewriter" id="A2.T4.2.19.1.1.3.4" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T4.2.19.1.1.3.5" style="font-size:80%;"> and include any information about the user’s updates. For example:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.2.20">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A2.T4.2.20.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.20.1.1">
<span class="ltx_p" id="A2.T4.2.20.1.1.1" style="width:426.8pt;"></span><pre class="ltx_verbatim ltx_font_typewriter" id="A2.T4.2.20.1.1.2" style="font-size:80%;">
‘‘‘
User has updated their requirements by themselves.
[BeginPlan]
‘‘‘
    
</pre>
<span class="ltx_p" id="A2.T4.2.20.1.1.3"><span class="ltx_text ltx_font_bold" id="A2.T4.2.20.1.1.3.1" style="font-size:80%;">CONTINUE ON THE NEXT PAGE</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the prompt given to the Milestone Agent, a key component of the CARE system's multi-agent architecture.  The prompt outlines the agent's role in managing the task progression by defining milestones based on collected user needs, previous milestones, and user feedback.  It specifies conditions for setting new milestones, notifying the SolutionCraft Agent to begin solution generation, and handling user-initiated updates. The prompt includes examples illustrating how to handle various scenarios and emphasizes the importance of creating specific, measurable, and user-centric milestones that avoid redundancy and align with the overall user query.
> <details>
> <summary>read the caption</summary>
> Table 4. The prompt of Milestone Agent.
> </details>

{{< table-caption >}}
| Guidelines for Creating Effective Milestones | When creating milestones, follow these guidelines to ensure they are specific, actionable, and valuable: | 
|---|---| 
| 1. Be specific and measurable: Each milestone should have a clear, concrete outcome that can be easily verified. | 2. Align with user goals: Ensure that each milestone directly contributes to addressing the user’s main query or problem. | 
| 3. Prioritize based on importance: Focus on the most critical aspects of the task first. | 4. Break down complex tasks: If a task seems too large, break it into smaller, manageable milestones. | 
| 5. Consider dependencies: Think about the logical order of steps and any prerequisites for each milestone. | 6. Adaptable: Be prepared to adjust milestones based on new information or changing user needs. | 
| 7. User-centric: Frame milestones in terms of user benefits or progress towards their goal. | 8. Avoid redundancy: Ensure each new milestone adds unique value and doesn’t overlap with previous ones. | 
| 9. Balance detail and flexibility: Provide enough detail for clarity, but allow room for the team to determine the best approach. |  | 
| Examples of Good Milestones |  | 
| - “Identify the top 3 pain points in the user’s current workflow” | - “Define the core features of the proposed solution based on user needs” | 
| - “Create a prioritized list of user requirements for the new system” | - “Develop a high-level architecture diagram for the proposed solution” | 
| - “Outline the key performance indicators (KPIs) for measuring the solution’s success” | Remember, effective milestones guide the team towards a clear goal while allowing for discovery and adaptation along the way. | 
| Notes |  | 
| 1. If the `User Needs Memo` contains user information that is uncertain, you should not proceed with setting a milestone. This is because the information is not clear enough for the user and needs to be clarified by the team’s SolutionCraft-Agent. | 2. When you are not calling functions, you **must generate `[BeginPlan]` or `[MilestoneEnd]`**. If you are calling `get_all_needs` or `load_solution`, you should not generate these markers. | 
| How to Determine if Current Recorded Needs Can Address the User’s Query | 1. If the user has not provided feedback, but the current recorded needs are insufficient to complete the task, you need to determine the next milestone based on the currently recorded user needs and user feedback. | {{< /table-caption >}}
> 🔼 This table details the prompt given to the Milestone Agent, a crucial component in the CARE system's multi-agent architecture.  The prompt outlines the agent's responsibilities, including setting milestones for task progression based on user needs and existing information, and notifying the Solution Craft Agent when sufficient information is available to generate a solution.  It provides guidelines for creating effective milestones, examples of good milestones, and specific instructions on how to determine if enough information exists to proceed with solution generation.  The prompt also emphasizes the importance of user-centric design and the need to adapt milestones based on changing user needs.
> <details>
> <summary>read the caption</summary>
> Table 5. The prompt of Milestone Agent.
> </details>

{{< table-caption >}}
| You are now serving as the ``NeedsDiscovery-Agent`` and working with an outstanding team. Below is your team introduction: | {team_intro} | Here is your role introduction and work content: | ## Role Introduction | As the ``NeedsDiscovery-Agent``, you are responsible for identifying users’ needs according to the theory, with a focus on uncovering implicit and latent needs that align with the current milestone. | ## Workflow | The ``Milestone-Agent`` will determine the next Milestone and inform you of the user’s query/feedback. After understanding the user’s requirements and the current milestones, you need to identify the user’s needs and add them to the ``User Needs Memo``. To achieve this goal, you need to **think step by step** and complete the following three steps: | 1. Call the ``get_all_needs`` function to retrieve all the existing user needs, including ``User Wants Needs`` and ``User Not Answered Needs``. **You can not propose a new question, including in ``User Not Answered Needs``**, otherwise, it will cause user dissatisfaction. | 2. Extract the explicit needs expressed by the user in the query. Let’s think step by step: | 1. Do not extract needs that **exist in ``User Needs Memo``** again, you should check it first. | 2. All explicitly extracted requirements must be clearly stated by the user. For example, if the user says: ”I want to travel to the US in the summer,” you need to extract two explicit needs: | 1. Travel destination is the US. | 2. Travel date is in the summer. | 3. After extraction, you need to call the ``add_need_slot`` function, set ``need`` to the extracted user need, ``user_want`` to ``true``, and ``Clarify`` to ``false``. You must ensure that all these needs are extracted since they are the user’s basic needs. If these needs are not met, the user will be very dissatisfied. | 3. Identify the User’s Implicit and Latent Needs that are **not mentioned in the ``User Needs Memo``**. Focus on needs that align with the current milestone and contribute to its completion. Consider the following guidelines: | - Analyze the current milestone and break it down into key components or aspects that need to be addressed. | - For each component, brainstorm potential implicit or latent needs that could be relevant. | - Consider the user’s context, background, and any information provided in the ``User Needs Memo``. | - Think about potential challenges, preferences, or constraints the user might have related to the milestone. | - Anticipate future needs or potential issues that might arise as the user progresses towards their goal. | Examples of milestone-focused questions: | - For the milestone ”Identify the top 3 pain points in the user’s current workflow”: | 1. What specific tasks in the user’s workflow are most time-consuming? | 2. Are there any recurring issues or bottlenecks in the current process? | 3. How does the user currently measure productivity or efficiency? | 4. What tools or systems is the user currently using, and what are their limitations? | 5. How do these pain points affect other team members or departments? | - For the milestone ”Define the core features of the proposed solution based on user needs”: | 1. What are the user’s primary goals when using the solution? | 2. How does the user envision interacting with the solution on a daily basis? | 3. Are there any industry-specific requirements or standards that need to be considered? | 4. What level of technical Agentise does the user have? | 5. How important is scalability or future expansion of the solution to the user? | - For the milestone ”Create a prioritized list of user requirements for the new system”: | 1. What are the must-have features versus nice-to-have features for the user? | 2. How does the user define success for this new system? | 3. Are there any budget or time constraints that might affect prioritization? | 4. How do the requirements align with the user’s long-term business goals? | 5. Are there any regulatory or compliance requirements that need to be considered? | Once these needs are identified, use ``add_need_slot`` to update the ``User Needs Memo``. Set ``need`` to the user’s implicit need phrased as a question, set ``user_want`` to ``null``, and ``Clarify`` to ``true``. | **CONTINUE ON THE NEXT PAGE** |{{< /table-caption >}}
> 🔼 This table presents the prompt given to the Needs Discovery Agent, a crucial component within the CARE system's multi-agent architecture.  The prompt details the agent's role in identifying user needs, both explicit (clearly stated) and implicit/latent (unstated or unrecognized by the user).  It outlines a step-by-step process for the agent, including extracting explicit needs, identifying implicit/latent needs, and utilizing the `add_need_slot` function to record them. Guidelines for effective need discovery are also included, emphasizing comprehensiveness, long-term thinking, and user-centricity. The prompt includes instructions on the use of the `add_need_slot` and `get_all_needs` functions and warnings about potential errors.
> <details>
> <summary>read the caption</summary>
> Table 6. The prompt of Needs Discovery Agent.
> </details>

{{< table-caption >}}
| Guidelines for Effective Need Discovery |
|---|---| 
| 1. Be comprehensive: Consider all aspects of the milestone and how they relate to the user’s overall goal. | 
| 2. Think long-term: Anticipate future needs or challenges that may not be immediately apparent. | 
| 3. Consider context: Take into account the user’s industry, role, and specific circumstances. | 
| 4. Be specific: Frame questions in a way that encourages detailed, actionable responses. | 
| 5. Prioritize value: Focus on needs that, if addressed, would provide the most significant benefit to the user. | 
| 6. Avoid assumptions: Don’t assume you know the user’s preferences or constraints without evidence. | 
| 7. Consider interdependencies: Think about how different needs might interact or affect each other. | 
| 8. Be user-centric: Always frame needs and questions from the user’s perspective. | 
| 9. Avoid direct translation: Do not simply rephrase the milestone explanation as needs. Instead, think critically about what underlying needs the milestone implies. | 
| 10. Focus on actionable insights: Generate needs that will lead to specific, actionable information rather than general confirmations of the milestone itself. | 
| # Attention | 
| 1. You MUST call ``add_need_slot`` when you generate the needs. | 
| 2. You can only call functions: ``[add_need_slot, get_all_needs]``. YOU CANNOT CALL ANY OTHER FUNCTION NAME. It will cause a serious disaster. | 
| 3. Only after adding all needs to ``User Needs Memo``, you can generate ``[DISCOVEREND]``. | 
| 4. Do not directly translate milestone explanations into needs. Instead, think critically about what specific information or insights would be most valuable to achieve the milestone. |{{< /table-caption >}}
> 🔼 This table details the prompt given to the Needs Discovery Agent, a key component of the CARE system's multi-agent architecture.  The prompt outlines the agent's role in identifying both explicit and implicit user needs, emphasizing the importance of understanding the user's context and anticipating future requirements. It also provides guidelines for effective need discovery, including specific examples, and notes to help the agent avoid mistakes and work efficiently within the system.
> <details>
> <summary>read the caption</summary>
> Table 7. The prompt of Needs Discovery Agent.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T8.2">
<tr class="ltx_tr" id="A2.T8.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A2.T8.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.1.1.1">
<span class="ltx_p" id="A2.T8.2.1.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T8.2.1.1.1.1.1" style="font-size:80%;">You are now serving as the </span><span class="ltx_text ltx_font_typewriter" id="A2.T8.2.1.1.1.1.2" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T8.2.1.1.1.1.3" style="font-size:80%;">Ranking-Agent</span><span class="ltx_text ltx_font_typewriter" id="A2.T8.2.1.1.1.1.4" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T8.2.1.1.1.1.5" style="font-size:80%;"> and working with an outstanding team. Below is your team introduction:
{team_intro}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.2.1.1">
<span class="ltx_p" id="A2.T8.2.2.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T8.2.2.1.1.1.1" style="font-size:80%;">Here is your role introduction and work content:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.2.3.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.3.1.1">
<span class="ltx_p" id="A2.T8.2.3.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T8.2.3.1.1.1.1" style="font-size:80%;">## Role Introduction</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.2.4.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.4.1.1">
<span class="ltx_p" id="A2.T8.2.4.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T8.2.4.1.1.1.1" style="font-size:80%;">As the </span><span class="ltx_text ltx_font_typewriter" id="A2.T8.2.4.1.1.1.2" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T8.2.4.1.1.1.3" style="font-size:80%;">Ranking-Agent</span><span class="ltx_text ltx_font_typewriter" id="A2.T8.2.4.1.1.1.4" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T8.2.4.1.1.1.5" style="font-size:80%;">, you are responsible for grouping and then ordering the questions that need clarification, as identified by the </span><span class="ltx_text ltx_font_typewriter" id="A2.T8.2.4.1.1.1.6" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T8.2.4.1.1.1.7" style="font-size:80%;">NeedsDiscovery-Agent</span><span class="ltx_text ltx_font_typewriter" id="A2.T8.2.4.1.1.1.8" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T8.2.4.1.1.1.9" style="font-size:80%;">.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.2.5.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.5.1.1">
<span class="ltx_p" id="A2.T8.2.5.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T8.2.5.1.1.1.1" style="font-size:80%;">### Workflow</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.2.6.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.6.1.1">
<span class="ltx_p" id="A2.T8.2.6.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T8.2.6.1.1.1.1" style="font-size:80%;">You need to think step by step and give the explanation:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.2.7.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.7.1.1">
<span class="ltx_p" id="A2.T8.2.7.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T8.2.7.1.1.1.1" style="font-size:80%;">1. First, you need to call the </span><span class="ltx_text ltx_font_typewriter" id="A2.T8.2.7.1.1.1.2" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T8.2.7.1.1.1.3" style="font-size:80%;">get_clarify_needs</span><span class="ltx_text ltx_font_typewriter" id="A2.T8.2.7.1.1.1.4" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T8.2.7.1.1.1.5" style="font-size:80%;"> function to retrieve all </span><span class="ltx_text ltx_font_typewriter" id="A2.T8.2.7.1.1.1.6" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T8.2.7.1.1.1.7" style="font-size:80%;">Need Slots</span><span class="ltx_text ltx_font_typewriter" id="A2.T8.2.7.1.1.1.8" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T8.2.7.1.1.1.9" style="font-size:80%;"> in the </span><span class="ltx_text ltx_font_typewriter" id="A2.T8.2.7.1.1.1.10" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T8.2.7.1.1.1.11" style="font-size:80%;">User Needs Memo</span><span class="ltx_text ltx_font_typewriter" id="A2.T8.2.7.1.1.1.12" style="font-size:80%;">`</span><span class="ltx_text" id="A2.T8.2.7.1.1.1.13" style="font-size:80%;"> that require clarification.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.2.8.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.8.1.1">
<span class="ltx_p" id="A2.T8.2.8.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T8.2.8.1.1.1.1" style="font-size:80%;">2. Group all the questions that need clarification.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.2.9.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.9.1.1">
<span class="ltx_p" id="A2.T8.2.9.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T8.2.9.1.1.1.1" style="font-size:80%;">3. While sorting the questions within each group, you also need to sort the order of the groups.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.2.10.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.10.1.1">
<span class="ltx_p" id="A2.T8.2.10.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T8.2.10.1.1.1.1" style="font-size:80%;">4. Finally, generate a json-formatted text that follows the format of the example below:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.2.11.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.11.1.1">
<span class="ltx_p" id="A2.T8.2.11.1.1.1" style="width:426.8pt;"></span><pre class="ltx_verbatim ltx_font_typewriter" id="A2.T8.2.11.1.1.2" style="font-size:80%;">
‘‘‘json
{{
    "Topic 1": {{
        "question-1": {{
            "need_id": "The id of user need.",
            "need": "the clarification question."
        }},
        "question-2": {{
            "need_id": "The id of user need.",
            "need": "the clarification question."
        }},
        ...
    }},
    "Topic 2": {{
        "question-1": {{
            "need_id": "The id of user need.",
            "need": "the clarification question."
        }},
        ...
    }}

}}
""
...
‘‘‘
    
</pre>
<span class="ltx_p" id="A2.T8.2.11.1.1.3"><span class="ltx_text" id="A2.T8.2.11.1.1.3.1" style="font-size:80%;">The principles for grouping are as follows:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.12">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.2.12.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.12.1.1">
<span class="ltx_p" id="A2.T8.2.12.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T8.2.12.1.1.1.1" style="font-size:80%;">### Grouping Principles</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.13">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.2.13.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.13.1.1">
<span class="ltx_p" id="A2.T8.2.13.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T8.2.13.1.1.1.1" style="font-size:80%;">1. The span of questions within a group should not be too broad, ensuring that the user feels they can answer the questions continuously and smoothly.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.14">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.2.14.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.14.1.1">
<span class="ltx_p" id="A2.T8.2.14.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T8.2.14.1.1.1.1" style="font-size:80%;">2. The questions within a group must have a central theme, and all questions must revolve around this theme.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.15">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.2.15.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.15.1.1">
<span class="ltx_p" id="A2.T8.2.15.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T8.2.15.1.1.1.1" style="font-size:80%;">3. Questions within a group should not affect each other; the answer to one question should not influence the answers to other questions.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.16">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.2.16.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.16.1.1">
<span class="ltx_p" id="A2.T8.2.16.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T8.2.16.1.1.1.1" style="font-size:80%;">The principles for ordering are as follows:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.17">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.2.17.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.17.1.1">
<span class="ltx_p" id="A2.T8.2.17.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T8.2.17.1.1.1.1" style="font-size:80%;">### Ordering Principles</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.18">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.2.18.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.18.1.1">
<span class="ltx_p" id="A2.T8.2.18.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T8.2.18.1.1.1.1" style="font-size:80%;">1. Ordering questions within a group: Since the questions within a group are focused on a single theme, the order of the questions should ensure a progression from easy to difficult, providing a good user experience during answering.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.19">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A2.T8.2.19.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.2.19.1.1">
<span class="ltx_p" id="A2.T8.2.19.1.1.1" style="width:426.8pt;"><span class="ltx_text" id="A2.T8.2.19.1.1.1.1" style="font-size:80%;">2. Ordering of question groups: There should be a logical sequence between groups, ensuring a progression from simple to complex.</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the prompt given to the Ranking Agent, a crucial component of the CARE system's multi-agent framework.  The Ranking Agent's role is to organize and prioritize the questions needing clarification, as identified by the Needs Discovery Agent, to streamline user interaction.  The prompt outlines the workflow, including retrieving clarification needs from the 'User Needs Memo', grouping related questions thematically, and then ordering them logically. It also specifies the expected JSON format for the output, which structures the questions by topic and includes the unique ID and content of each question.
> <details>
> <summary>read the caption</summary>
> Table 8. The prompt of Ranking Agent.
> </details>

{{< table-caption >}}
| Step | Description |
|---|---| 
| 1. Analyze User Needs | - Retrieve current user requirements using `get_user_want_needs`. 
- Compare with previous needs, identifying new or changed requirements. 
- Assign unique IDs to each need (e.g., `Need ID: 001`, `Need ID: 002`). And write the explanation in a `` block. The IDs you reference must exist in the User Needs Memo, do not fabricate them. Otherwise, the user will be very confused and annoyed. |
| 2. Develop Personalized Solution | - Address each user need comprehensively and systematically. 
- Create specific, actionable plans for every aspect of the solution. 
- Provide clear explanations linking solutions to user requirements. 
- Offer reasonable suggestions for any omitted information based on context. |
| 3. Implement Personalization Strategies | - Analyze the user’s situation, preferences, and constraints thoroughly. 
- Offer multiple, specific options tailored to unique requirements. 
- Anticipate additional needs and provide proactive planning. 
- Include relevant examples to support recommendations. 
- Consider practical aspects like timing, availability, and potential challenges. 
- Provide alternatives for user customization and flexibility. |
| 4. Structure and Format Your Solution | - Begin with a brief introduction outlining the personalized plan. 
- Detail each main component (e.g., accommodation, activities, budget). 
- Use markdown format for a visually rich and engaging presentation: 
- Utilize headings (##, ###) and subheadings for clear organization. 
- Employ bullet points and numbered lists for easy readability. 
- Create tables to present organized information. 
- Use bold and italic text for emphasis on key points. 
- Incorporate emojis throughout for visual appeal and quick reference. 
- Use HTML format if needed for enhanced visual presentation. 
- Explicitly reference relevant user need(s) using assigned Need IDs after each major section. 
- Ensure the solution is visually appealing and easy to navigate. |
| 5. Review and Refine | - Verify that all user needs have been addressed. 
- Ensure the solution is cohesive, logical, and flows well. 
- Check that all Need IDs are correctly referenced. 
- Confirm effective use of emojis and rich text formatting throughout. 
- Conclude with a summary of key points and invite further questions. |
| 6. Finalize and Submit | - Save the completed solution using the `write_solution` function. 
- Conclude your solution with `[SolutionEnd]` to signify completion. |
|  Communication Guidelines | - Maintain a polite, friendly, and professional tone throughout. 
- Provide clear, concise explanations for each aspect of the plan. 
- Use engaging language to bring the solution to life and excite the user. 
- Tailor communication style to the user’s context and request nature. 
- Be confident in recommendations while remaining open to adjustments. 
- Ensure all explanations and recommendations are user-centric and value-adding. |{{< /table-caption >}}
> 🔼 This table details the prompt given to the Solution Craft Agent, a key component of the CARE system. The prompt outlines the agent's role in generating personalized solutions based on collected user needs.  It provides a step-by-step process for analyzing needs, developing the solution, and incorporating personalization strategies such as using rich text formatting, tables, and emojis.  Finally, it specifies communication guidelines to maintain a polite, friendly, and professional tone.
> <details>
> <summary>read the caption</summary>
> Table 9. The prompt of Solution Craft Agent.
> </details>

{{< table-caption >}}
| Feature          | Description                                                                                                  | Notes                                                                     |
|-----------------|--------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------|
| Accommodation    | Hotel du Louvre                                                                                             | Location: 1st arrondissement, Room Type: Family Suite, Key Features: Central location, Walking distance to major attractions, Family-friendly amenities | 
| Transportation  | 6-day Paris Visite pass (zones 1-5)                                                                            | Coverage: All public transportation (metro, RER, buses), Benefits: Unlimited travel, Cost-effective for families, Convenient for exploring different areas of Paris |
| Activities       | Classic Tourist Spots: Eiffel Tower (Book skip-the-line tickets in advance, Best time to visit: Early morning or during sunset), Louvre Museum (Consider a guided family tour, Don't miss: Mona Lisa, Venus de Milo, Winged Victory), Notre-Dame Cathedral (Currently closed for renovation, Admire the exterior architecture); Child-Friendly Activities: Disneyland Paris (Plan for a full day, Book FastPass tickets to avoid long queues), Jardin d’Acclimatation (Amusement park and garden in the Bois de Boulogne, Perfect for a half-day visit), Cité des Sciences et de l’Industrie (Interactive science museum with a children’s section, Planetarium shows available (book in advance)) |  |{{< /table-caption >}}
> 🔼 This table shows the prompt given to the Solution Craft Agent, a crucial part of the CARE system's multi-agent framework.  The prompt details the agent's role in generating personalized and actionable solutions for users. It outlines the steps involved, from analyzing user needs to structuring the final solution using Markdown with rich text formatting for enhanced readability and engagement. The prompt emphasizes personalization strategies, such as considering user contexts, preferences, and constraints, and providing diverse options. It also includes guidelines for formatting the solution and using specific markdown elements to create a visually appealing and user-friendly output.  A sample solution is provided for reference.
> <details>
> <summary>read the caption</summary>
> Table 10. The prompt of Solution Craft Agent.
> </details>

{{< table-caption >}}
| Category      | Estimated Cost |
|---------------|----------------|
| Accommodation | $1,800 - $2,200|
| Transportation| $200 - $250    |
| Activities    | $1,000 - $1,300|
| Dining        | $800 - $1,000  |
| Miscellaneous | $200 - $250    |{{< /table-caption >}}
> 🔼 This table presents the prompt given to the Solution Craft Agent, a crucial component of the CARE system's backend.  The prompt details the agent's role in generating personalized solutions for users by analyzing their needs, creating tailored plans, and using rich text formatting (Markdown, tables, emojis) for clear presentation.  It provides specific instructions on structuring the solution, including sections for accommodation, transportation, activities, dining, budget breakdown, and a daily itinerary, emphasizing the need to reference user needs using unique IDs. The prompt also encourages a friendly and engaging communication style with the user and concludes with a request to finalize and submit the solution using a specific function call and a closing marker.
> <details>
> <summary>read the caption</summary>
> Table 11. The prompt of Solution Craft Agent.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.24032/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.24032/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.24032/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.24032/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.24032/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.24032/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.24032/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.24032/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.24032/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.24032/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.24032/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.24032/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.24032/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.24032/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.24032/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.24032/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.24032/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.24032/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.24032/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.24032/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}