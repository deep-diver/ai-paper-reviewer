---
title: "Why Do Multi-Agent LLM Systems Fail?"
summary: "Multi-Agent Systems (MAS) often underperform despite enthusiasm. This paper analyzes 5 popular frameworks across 150+ tasks, identifying 14 failure modes categorized into specification/design, inter-a..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Theory", "Robustness", "🏢 UC Berkeley",]
showSummary: true
date: 2025-03-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.13657 {{< /keyword >}}
{{< keyword icon="writer" >}} Mert Cemri et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.13657" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.13657" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.13657/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Multi-Agent Systems (MAS)** are hyped, but often flop!  This study dives deep, analyzing 5 frameworks across 150+ tasks. Six experts tagged 14 failure modes, like poor design, agent miscommunication, and bad task handling.  They built MASFT, a taxonomy to classify these issues, for better analysis and fixes. LLM-as-a-Judge aids scalable scoring. 



They tried quick fixes- better prompts and coordination- but saw only slight gains. This suggests **deep design flaws** need fixing, not just surface tweaks. The MASFT framework and open-sourced data offer a roadmap for future MAS research, pushing beyond current limits. The long-term goal: making MAS a truly potent AI tool.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Multi-Agent Systems Failure Taxonomy (MASFT) introduces a structured taxonomy of MAS failures, providing a framework for understanding and mitigating these failures. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The paper develops a scalable LLM-as-a-judge evaluation pipeline for analyzing new MAS performance and diagnosing failure modes. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Interventions targeting agent specification, conversation management, and verification strategies achieved limited success, highlighting the need for structural MAS redesigns. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work provides a **crucial taxonomy of failures** in MAS, informing future designs & benchmarks. By identifying common pitfalls, it accelerates the development of **robust, reliable multi-agent systems**, pushing AI research towards more effective collaboration strategies.

------
#### Visual Insights



![](https://arxiv.org/html/2503.13657/x1.png)

> 🔼 This figure presents the failure rates observed across five prominent Multi-Agent Large Language Model (LLM) systems. Each system was evaluated using two state-of-the-art LLMs: GPT-4o and Claude-3. The bar chart visually represents the percentage of failures recorded during system operation, enabling a direct comparison of system robustness.
> <details>
> <summary>read the caption</summary>
> Figure 1: Failure rates of five popular Multi-Agent LLM Systems with GPT-4o and Claude-3.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.1">
<tr class="ltx_tr" id="S3.T1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S3.T1.1.1.1" style="width:71.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.1.1">
<span class="ltx_p" id="S3.T1.1.1.1.1.1"><span class="ltx_text" id="S3.T1.1.1.1.1.1.1" style="font-size:90%;">MAS</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S3.T1.1.1.2" style="width:71.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.2.1">
<span class="ltx_p" id="S3.T1.1.1.2.1.1"><span class="ltx_text" id="S3.T1.1.1.2.1.1.1" style="font-size:90%;">Agentic Architecture</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S3.T1.1.1.3" style="width:213.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.3.1">
<span class="ltx_p" id="S3.T1.1.1.3.1.1"><span class="ltx_text" id="S3.T1.1.1.3.1.1.1" style="font-size:90%;">Purpose of the System</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.2">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.2.1" style="width:71.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.2.1.1">
<span class="ltx_p" id="S3.T1.1.2.1.1.1"><span class="ltx_text" id="S3.T1.1.2.1.1.1.1" style="font-size:90%;">MetaGPT</span>
<br class="ltx_break"/><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.1.2.1.1.1.2.1" style="font-size:90%;">(</span>Hong et al.<span class="ltx_text" id="S3.T1.1.2.1.1.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.13657v1#bib.bib21" title="">2023</a><span class="ltx_text" id="S3.T1.1.2.1.1.1.4.3" style="font-size:90%;">)</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.2.2" style="width:71.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.2.2.1">
<span class="ltx_p" id="S3.T1.1.2.2.1.1"><span class="ltx_text" id="S3.T1.1.2.2.1.1.1" style="font-size:90%;">Assembly Line</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.2.3" style="width:213.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.2.3.1">
<span class="ltx_p" id="S3.T1.1.2.3.1.1"><span class="ltx_text" id="S3.T1.1.2.3.1.1.1" style="font-size:90%;">Simulating the SOPs of different roles in Software Companies to create open-ended software applications</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.3">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.3.1" style="width:71.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.3.1.1">
<span class="ltx_p" id="S3.T1.1.3.1.1.1"><span class="ltx_text" id="S3.T1.1.3.1.1.1.1" style="font-size:90%;">ChatDev</span>
<br class="ltx_break"/><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.1.3.1.1.1.2.1" style="font-size:90%;">(</span>Qian et al.<span class="ltx_text" id="S3.T1.1.3.1.1.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.13657v1#bib.bib51" title="">2023</a><span class="ltx_text" id="S3.T1.1.3.1.1.1.4.3" style="font-size:90%;">)</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.3.2" style="width:71.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.3.2.1">
<span class="ltx_p" id="S3.T1.1.3.2.1.1"><span class="ltx_text" id="S3.T1.1.3.2.1.1.1" style="font-size:90%;">Hierarchical Workflow</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.3.3" style="width:213.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.3.3.1">
<span class="ltx_p" id="S3.T1.1.3.3.1.1"><span class="ltx_text" id="S3.T1.1.3.3.1.1.1" style="font-size:90%;">Simulating different Software Engineering phases like (design, code, QA) through simulated roles in a software engineering company</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.4">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.4.1" style="width:71.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.4.1.1">
<span class="ltx_p" id="S3.T1.1.4.1.1.1"><span class="ltx_text" id="S3.T1.1.4.1.1.1.1" style="font-size:90%;">HyperAgent</span>
<br class="ltx_break"/><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.1.4.1.1.1.2.1" style="font-size:90%;">(</span>Phan et al.<span class="ltx_text" id="S3.T1.1.4.1.1.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.13657v1#bib.bib50" title="">2024</a><span class="ltx_text" id="S3.T1.1.4.1.1.1.4.3" style="font-size:90%;">)</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.4.2" style="width:71.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.4.2.1">
<span class="ltx_p" id="S3.T1.1.4.2.1.1"><span class="ltx_text" id="S3.T1.1.4.2.1.1.1" style="font-size:90%;">Hierarchical Workflow</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.4.3" style="width:213.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.4.3.1">
<span class="ltx_p" id="S3.T1.1.4.3.1.1"><span class="ltx_text" id="S3.T1.1.4.3.1.1.1" style="font-size:90%;">Simulating a software engineering team with a central Planner agent coordinating with specialized child agents (Navigator, Editor, and Executor)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.5">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.5.1" style="width:71.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.5.1.1">
<span class="ltx_p" id="S3.T1.1.5.1.1.1"><span class="ltx_text" id="S3.T1.1.5.1.1.1.1" style="font-size:90%;">AppWorld</span>
<br class="ltx_break"/><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.1.5.1.1.1.2.1" style="font-size:90%;">(</span>Trivedi et al.<span class="ltx_text" id="S3.T1.1.5.1.1.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.13657v1#bib.bib63" title="">2024</a><span class="ltx_text" id="S3.T1.1.5.1.1.1.4.3" style="font-size:90%;">)</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.5.2" style="width:71.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.5.2.1">
<span class="ltx_p" id="S3.T1.1.5.2.1.1"><span class="ltx_text" id="S3.T1.1.5.2.1.1.1" style="font-size:90%;">Star Topology</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.1.5.3" style="width:213.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.5.3.1">
<span class="ltx_p" id="S3.T1.1.5.3.1.1"><span class="ltx_text" id="S3.T1.1.5.3.1.1.1" style="font-size:90%;">Tool-calling agents specialized to utility services (ex: GMail, Spotify, etc.) being orchestrated by a supervisor to achieve cross-service tasks</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.6">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S3.T1.1.6.1" style="width:71.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.6.1.1">
<span class="ltx_p" id="S3.T1.1.6.1.1.1"><span class="ltx_text" id="S3.T1.1.6.1.1.1.1" style="font-size:90%;">AG2</span>
<br class="ltx_break"/><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.1.6.1.1.1.2.1" style="font-size:90%;">(</span>Wu et al.<span class="ltx_text" id="S3.T1.1.6.1.1.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.13657v1#bib.bib71" title="">2024a</a><span class="ltx_text" id="S3.T1.1.6.1.1.1.4.3" style="font-size:90%;">)</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S3.T1.1.6.2" style="width:71.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.6.2.1">
<span class="ltx_p" id="S3.T1.1.6.2.1.1"><span class="ltx_text" id="S3.T1.1.6.2.1.1.1" style="font-size:90%;">N/A - Agentic Framework</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S3.T1.1.6.3" style="width:213.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.6.3.1">
<span class="ltx_p" id="S3.T1.1.6.3.1.1"><span class="ltx_text" id="S3.T1.1.6.3.1.1.1" style="font-size:90%;">An open-source programming framework for building agents and managing their interactions.</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table lists the Multi-Agent Systems (MAS) used in the study, each with at least 30 human-annotated traces.  For each MAS, the table provides the name, the type of agent architecture it employs (e.g., assembly line, hierarchical, workflow), and a brief description of its purpose.  More detailed information on these MASs, including those with fewer than 30 traces, is available in Appendix B of the paper.
> <details>
> <summary>read the caption</summary>
> Table 1: Table of MASs studied with at least 30 human-annotated traces. Details and other systems can be found in Appendix B.
> </details>





### In-depth insights


#### MAS Failure Tax
While "MAS Failure Tax" is not a direct heading, the paper extensively covers failure modes in Multi-Agent Systems (MAS). The core idea here is that MAS, while promising, often underperform compared to simpler systems. This 'failure tax' stems from several key factors. **Poor specification** of agent roles and tasks leads to miscommunication and task derailment. **Inter-agent misalignment**, arising from ineffective communication or conflicting actions, further compounds the issue. Crucially, the paper emphasizes the **lack of robust verification and termination** mechanisms, hindering quality control. This 'tax' isn't just about individual agent limitations; it's deeply rooted in the MAS design itself. Addressing this requires a shift towards better organizational understanding within MAS architectures, focusing on improved communication protocols and robust verification strategies.

#### LLM as MAS Judge
The concept of using an LLM as a judge for multi-agent systems (MAS) is intriguing, offering a scalable evaluation. **Automated assessment** of MAS performance is crucial, considering the complexity of agent interactions. The LLM's ability to evaluate textual data could streamline failure mode analysis. However, **LLM bias** is a significant concern. A **cross-verification** with human experts becomes essential to validate its reliability. The **agreement rate of 0.77 with human experts** suggests promise, it highlights the need for caution. The LLM as judge should be seen as a preliminary step, aiding human annotators rather than replacing them entirely. Further work would require focusing on bias reduction and improved contextual understanding.

#### HRO Design Needed
**MASFT's identification of HRO characteristic violations underscores the need for non-trivial, HRO-inspired interventions**.  Current failure modes, such as disobeying role specifications, directly counter HRO principles like extreme hierarchical differentiation. **This calls for design principles borrowed from high-reliability organizations to guide the development of more robust MAS architectures.** This could involve establishing clearer lines of communication, improving inter-agent coordination through formalized protocols, and emphasizing deference to expertise to prevent agents from overstepping their boundaries. More fundamentally, it might necessitate a re-evaluation of MAS design, moving beyond simple aggregations of agents towards systems exhibiting emergent organizational intelligence capable of mitigating inherent interaction flaws.

#### Structural MAS Fix
Structural Multi-Agent System (MAS) fixes involve fundamental redesigns. **Strong verification** is critical, exceeding unit tests to encompass coding, QA, and reasoning with symbolic validation. Standardized communication protocols tackle LLM ambiguity by defining intentions and parameters, enabling formal coherence checks. Graph attention mechanisms model agent interactions, enhancing coordination. Reinforcement learning refines agent behavior, aligning actions with tasks via algorithms like MAPPO and SHPPO. Probabilistic confidence measures enhance decision-making by informing agents to only act above a confidence threshold and gather data when unsure, improving reliability and decision quality. **Memory and state management** addresses limited context and enhance understanding.

#### Agent Role Viol.
**Agent Role Violation** is a critical failure mode in multi-agent systems (MAS). It occurs when an agent deviates from its assigned responsibilities, potentially causing system-wide disruptions. This can manifest as agents assuming unauthorized tasks or neglecting duties.  Such violations disrupt the intended workflow, impacting task completion, goal alignment, and overall system robustness. The taxonomy of these failures highlights that system performance is not solely dependent on individual agent competence, but requires well-defined agent roles and responsibilities for collaboration. Addressing such failures necessitates robust mechanisms to enforce role adherence, prevent agents from exceeding their authority, and ensure accountability in task execution. Effective monitoring and verification mechanisms are vital to detect and rectify role violations promptly, thus safeguarding system integrity.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.13657/x2.png)

> 🔼 This figure presents a taxonomy of failure modes in Multi-Agent Systems (MAS).  The taxonomy categorizes failures into three main areas: specification and system design, inter-agent misalignment, and task verification and termination.  Within each area, several specific failure modes are identified, along with the percentage of times they appeared in the analysis of 151 MAS traces. The chart also shows the stages of an agent conversation where each failure mode is likely to occur. More details about each failure mode can be found in Appendix A.
> <details>
> <summary>read the caption</summary>
> Figure 2: A Taxonomy of MAS Failure Modes. The inter-agent conversation stages indicate when a failure can occur in the end-to-end MAS system. If a failure mode spans multiple stages, it means the issue involves or can occur at different stages. Percentages represent how frequently each failure mode and category appeared in our analysis of 151 traces. Detailed definition and example of each failure mode is available in Appendix A.
> </details>



![](https://arxiv.org/html/2503.13657/x3.png)

> 🔼 This figure illustrates the research methodology used in the study. The process begins with collecting data from various Multi-Agent Systems (MAS). Then, failure modes are identified within these MAS datasets.  Next, an iterative refinement process is conducted through inter-annotator agreement studies to enhance the consistency and precision of the taxonomy.  This iterative process aims at achieving a high level of agreement among multiple annotators, as measured by Cohen's Kappa score (0.88 in this case). Finally, a refined taxonomy of MAS failure modes is produced.
> <details>
> <summary>read the caption</summary>
> Figure 3: Methodological workflow for systematically studying MAS, involving the identification of failure modes, taxonomy development, and iterative refinement through inter-annotator agreement studies by achieving a Cohen’s Kappa score of 0.88.
> </details>



![](https://arxiv.org/html/2503.13657/x4.png)

> 🔼 This figure presents a detailed breakdown of the distribution of various failure modes across different multi-agent systems (MAS).  It visually displays how many times each failure mode was observed within three categories: Specification and System Design Failures, Inter-Agent Misalignment, and Task Verification and Termination. The figure uses a bar chart to show the number of failures in each category for each of the five MASs studied: MetaGPT, ChatDev, HyperAgent, AppWorld, and AG2.
> <details>
> <summary>read the caption</summary>
> Figure 4: Distribution of failure modes by categories and systems.
> </details>



![](https://arxiv.org/html/2503.13657/x5.png)

> 🔼 The figure illustrates a failure mode in a multi-agent system where two agents, a Phone Agent and a Supervisor Agent, fail to successfully complete a login task due to miscommunication. The Phone Agent does not correctly convey the API requirements for login, specifically regarding the proper username format (phone number instead of email address). Simultaneously, the Supervisor Agent neglects to clarify any ambiguities or seek further clarification from the Phone Agent. This lack of collaborative effort results in repeated, unproductive attempts to log in and eventually leads to the task's failure, marked by the Supervisor Agent.  The diagram highlights the information flow and the points of miscommunication during the agents' interaction.
> <details>
> <summary>read the caption</summary>
> Figure 5: Phone Agent fails to communicate the API specifications and login username requirements to the Supervisor. At the other end of the conversation, the Supervisor Agent also fails to seek clarification on the login details. After a few back-and-forth attempts, the Supervisor Agent marks the task as failed.
> </details>



![](https://arxiv.org/html/2503.13657/x6.png)

> 🔼 This heatmap visualizes the correlation coefficients between the three overarching failure categories identified in the Multi-Agent System Failure Taxonomy (MASFT): Specification and System Design Failures, Inter-Agent Misalignment, and Task Verification and Termination.  Each cell's color intensity represents the strength and direction of the correlation, ranging from strong positive (dark red) to strong negative (dark blue), with lighter colors indicating weaker correlations.  The diagonal shows perfect correlation (1.0) for each category with itself.
> <details>
> <summary>read the caption</summary>
> Figure 6: MAS failure categories correlation matrix.
> </details>



![](https://arxiv.org/html/2503.13657/x7.png)

> 🔼 This heatmap visualizes the correlation coefficients between pairs of failure modes identified in the MASFT taxonomy. Each cell represents the correlation between two failure modes, with darker red indicating stronger positive correlation, and darker blue indicating stronger negative correlation. The values range from -1 (perfect negative correlation) to 1 (perfect positive correlation), with 0 indicating no correlation.  This helps to understand whether certain failure modes tend to co-occur or if their occurrences are independent.
> <details>
> <summary>read the caption</summary>
> Figure 7: MAS failure modes correlation matrix
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T2.1">
<tr class="ltx_tr" id="S3.T2.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T2.1.1.2" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.2.1">
<span class="ltx_p" id="S3.T2.1.1.2.1.1" style="width:46.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.2.1.1.1" style="font-size:90%;">Model</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T2.1.1.3" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.3.1">
<span class="ltx_p" id="S3.T2.1.1.3.1.1" style="width:31.3pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.3.1.1.1" style="font-size:90%;">Accuracy</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T2.1.1.4" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.4.1">
<span class="ltx_p" id="S3.T2.1.1.4.1.1" style="width:23.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.4.1.1.1" style="font-size:90%;">Recall</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T2.1.1.5" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.5.1">
<span class="ltx_p" id="S3.T2.1.1.5.1.1" style="width:31.3pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.5.1.1.1" style="font-size:90%;">Precision</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T2.1.1.6" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.6.1">
<span class="ltx_p" id="S3.T2.1.1.6.1.1" style="width:15.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.6.1.1.1" style="font-size:90%;">F1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T2.1.1.1" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.1.1">
<span class="ltx_p" id="S3.T2.1.1.1.1.1" style="width:37.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.1.1" style="font-size:90%;">Cohen’s <math alttext="\kappa" class="ltx_Math" display="inline" id="S3.T2.1.1.1.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.1.1.1.m1.1a"><mi id="S3.T2.1.1.1.1.1.1.m1.1.1" xref="S3.T2.1.1.1.1.1.1.m1.1.1.cmml">κ</mi><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.1.1.1.m1.1b"><ci id="S3.T2.1.1.1.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.1.1.1.m1.1.1">𝜅</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.1.1.1.m1.1c">\kappa</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.1.1.1.m1.1d">italic_κ</annotation></semantics></math></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T2.1.2.1" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.2.1.1">
<span class="ltx_p" id="S3.T2.1.2.1.1.1" style="width:46.1pt;"><span class="ltx_text" id="S3.T2.1.2.1.1.1.1" style="font-size:90%;">o1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T2.1.2.2" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.2.2.1">
<span class="ltx_p" id="S3.T2.1.2.2.1.1" style="width:31.3pt;"><span class="ltx_text" id="S3.T2.1.2.2.1.1.1" style="font-size:90%;">0.89</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T2.1.2.3" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.2.3.1">
<span class="ltx_p" id="S3.T2.1.2.3.1.1" style="width:23.0pt;"><span class="ltx_text" id="S3.T2.1.2.3.1.1.1" style="font-size:90%;">0.62</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T2.1.2.4" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.2.4.1">
<span class="ltx_p" id="S3.T2.1.2.4.1.1" style="width:31.3pt;"><span class="ltx_text" id="S3.T2.1.2.4.1.1.1" style="font-size:90%;">0.68</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T2.1.2.5" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.2.5.1">
<span class="ltx_p" id="S3.T2.1.2.5.1.1" style="width:15.6pt;"><span class="ltx_text" id="S3.T2.1.2.5.1.1.1" style="font-size:90%;">0.64</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T2.1.2.6" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.2.6.1">
<span class="ltx_p" id="S3.T2.1.2.6.1.1" style="width:37.8pt;"><span class="ltx_text" id="S3.T2.1.2.6.1.1.1" style="font-size:90%;">0.58</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="S3.T2.1.3.1" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.3.1.1">
<span class="ltx_p" id="S3.T2.1.3.1.1.1" style="width:46.1pt;"><span class="ltx_text" id="S3.T2.1.3.1.1.1.1" style="font-size:90%;">o1 (few shot)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="S3.T2.1.3.2" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.3.2.1">
<span class="ltx_p" id="S3.T2.1.3.2.1.1" style="width:31.3pt;"><span class="ltx_text" id="S3.T2.1.3.2.1.1.1" style="font-size:90%;">0.94</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="S3.T2.1.3.3" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.3.3.1">
<span class="ltx_p" id="S3.T2.1.3.3.1.1" style="width:23.0pt;"><span class="ltx_text" id="S3.T2.1.3.3.1.1.1" style="font-size:90%;">0.77</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="S3.T2.1.3.4" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.3.4.1">
<span class="ltx_p" id="S3.T2.1.3.4.1.1" style="width:31.3pt;"><span class="ltx_text" id="S3.T2.1.3.4.1.1.1" style="font-size:90%;">0.833</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="S3.T2.1.3.5" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.3.5.1">
<span class="ltx_p" id="S3.T2.1.3.5.1.1" style="width:15.6pt;"><span class="ltx_text" id="S3.T2.1.3.5.1.1.1" style="font-size:90%;">0.80</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="S3.T2.1.3.6" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.3.6.1">
<span class="ltx_p" id="S3.T2.1.3.6.1.1" style="width:37.8pt;"><span class="ltx_text" id="S3.T2.1.3.6.1.1.1" style="font-size:90%;">0.77</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the LLM-as-a-judge pipeline used for automated evaluation of Multi-Agent System (MAS) failures.  It shows the accuracy, recall, precision, and F1-score achieved by the OpenAI's 'o1' model, both with and without few-shot learning examples. It also reports the Cohen's Kappa score which measures the agreement between the LLM annotations and human expert annotations.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance of LLM-as-a-judge pipeline
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T3.3">
<tr class="ltx_tr" id="S5.T3.3.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S5.T3.3.1.1" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.3.1.1.1">
<span class="ltx_p" id="S5.T3.3.1.1.1.1" style="width:82.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.1.1.1.1" style="font-size:90%;">Failure Category</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S5.T3.3.1.2" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.3.1.2.1">
<span class="ltx_p" id="S5.T3.3.1.2.1.1" style="width:136.6pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.2.1.1.1" style="font-size:90%;">Tactical Approaches</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S5.T3.3.1.3" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.3.1.3.1">
<span class="ltx_p" id="S5.T3.3.1.3.1.1" style="width:142.3pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.3.1.1.1" style="font-size:90%;">Structural Strategies</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S5.T3.3.2.1" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.3.2.1.1">
<span class="ltx_p" id="S5.T3.3.2.1.1.1" style="width:82.5pt;"><span class="ltx_text" id="S5.T3.3.2.1.1.1.1" style="font-size:90%;">Specification &amp; </span>
<br class="ltx_break"/><span class="ltx_text" id="S5.T3.3.2.1.1.1.2" style="font-size:90%;">System Design</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S5.T3.3.2.2" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.3.2.2.1">
<span class="ltx_p" id="S5.T3.3.2.2.1.1" style="width:136.6pt;"><span class="ltx_text" id="S5.T3.3.2.2.1.1.1" style="font-size:90%;">Clear role/task definitions, Engage in further discussions, Self-verification, Conversation pattern design</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S5.T3.3.2.3" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.3.2.3.1">
<span class="ltx_p" id="S5.T3.3.2.3.1.1" style="width:142.3pt;"><span class="ltx_text" id="S5.T3.3.2.3.1.1.1" style="font-size:90%;">Comprehensive verification, Confidence quantification</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.3.3.1" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.3.3.1.1">
<span class="ltx_p" id="S5.T3.3.3.1.1.1" style="width:82.5pt;"><span class="ltx_text" id="S5.T3.3.3.1.1.1.1" style="font-size:90%;">Inter-Agent</span>
<br class="ltx_break"/><span class="ltx_text" id="S5.T3.3.3.1.1.1.2" style="font-size:90%;">Misalignment</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.3.3.2" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.3.3.2.1">
<span class="ltx_p" id="S5.T3.3.3.2.1.1" style="width:136.6pt;"><span class="ltx_text" id="S5.T3.3.3.2.1.1.1" style="font-size:90%;">Cross-verification, Conversation pattern design, Mutual disambiguation, Modular agents design</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.3.3.3" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.3.3.3.1">
<span class="ltx_p" id="S5.T3.3.3.3.1.1" style="width:142.3pt;"><span class="ltx_text" id="S5.T3.3.3.3.1.1.1" style="font-size:90%;">Standardized communication protocols, Probabilistic confidence measures</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="S5.T3.3.4.1" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.3.4.1.1">
<span class="ltx_p" id="S5.T3.3.4.1.1.1" style="width:82.5pt;"><span class="ltx_text" id="S5.T3.3.4.1.1.1.1" style="font-size:90%;">Task Verification </span>
<br class="ltx_break"/><span class="ltx_text" id="S5.T3.3.4.1.1.1.2" style="font-size:90%;">and Termination</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="S5.T3.3.4.2" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.3.4.2.1">
<span class="ltx_p" id="S5.T3.3.4.2.1.1" style="width:136.6pt;"><span class="ltx_text" id="S5.T3.3.4.2.1.1.1" style="font-size:90%;">Self-verification, Cross-verification, Topology redesign for verification</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="S5.T3.3.4.3" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.3.4.3.1">
<span class="ltx_p" id="S5.T3.3.4.3.1.1" style="width:142.3pt;"><span class="ltx_text" id="S5.T3.3.4.3.1.1.1" style="font-size:90%;">Comprehensive verification &amp; unit test generation</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table categorizes strategies for improving the robustness of Multi-Agent Systems (MAS), cross-referencing them with the types of failures they address.  It breaks down solutions into tactical approaches (simple, prompt-focused fixes) and structural strategies (more fundamental system design changes).  This helps clarify which solutions are best suited to which failure modes in MAS.
> <details>
> <summary>read the caption</summary>
> Table 3: Solution Strategies vs. Failure Category in Multi-Agent Systems
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T4.6">
<tr class="ltx_tr" id="S6.T4.6.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S6.T4.6.7.1" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.7.1.1">
<span class="ltx_p" id="S6.T4.6.7.1.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.6.7.1.1.1.1" style="font-size:90%;">Configuration</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S6.T4.6.7.2" style="padding:1.35pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.6.7.2.1" style="font-size:90%;">AG2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S6.T4.6.7.3" style="padding:1.35pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.6.7.3.1" style="font-size:90%;">ChatDev</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.6.8">
<td class="ltx_td ltx_align_top" id="S6.T4.6.8.1" style="padding:1.35pt 4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.6.8.2" style="padding:1.35pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.6.8.2.1" style="font-size:90%;">GSM-Plus (w/ GPT-4)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.6.8.3" style="padding:1.35pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.6.8.3.1" style="font-size:90%;">GSM-Plus (w/ GPT-4o)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.6.8.4" style="padding:1.35pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.6.8.4.1" style="font-size:90%;">ProgramDev</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.6.8.5" style="padding:1.35pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.6.8.5.1" style="font-size:90%;">HumanEval</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S6.T4.2.2.3" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.2.2.3.1">
<span class="ltx_p" id="S6.T4.2.2.3.1.1" style="width:71.1pt;"><span class="ltx_text" id="S6.T4.2.2.3.1.1.1" style="font-size:90%;">Baseline</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.1.1" style="padding:1.35pt 4.0pt;">
<span class="ltx_text" id="S6.T4.1.1.1.1" style="font-size:90%;">84.75 </span><math alttext="\pm" class="ltx_Math" display="inline" id="S6.T4.1.1.1.m1.1"><semantics id="S6.T4.1.1.1.m1.1a"><mo id="S6.T4.1.1.1.m1.1.1" mathsize="90%" xref="S6.T4.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S6.T4.1.1.1.m1.1b"><csymbol cd="latexml" id="S6.T4.1.1.1.m1.1.1.cmml" xref="S6.T4.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S6.T4.1.1.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S6.T4.1.1.1.2" style="font-size:90%;"> 1.94</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.2.2.2" style="padding:1.35pt 4.0pt;">
<span class="ltx_text" id="S6.T4.2.2.2.1" style="font-size:90%;">84.25 </span><math alttext="\pm" class="ltx_Math" display="inline" id="S6.T4.2.2.2.m1.1"><semantics id="S6.T4.2.2.2.m1.1a"><mo id="S6.T4.2.2.2.m1.1.1" mathsize="90%" xref="S6.T4.2.2.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S6.T4.2.2.2.m1.1b"><csymbol cd="latexml" id="S6.T4.2.2.2.m1.1.1.cmml" xref="S6.T4.2.2.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.2.2.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S6.T4.2.2.2.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S6.T4.2.2.2.2" style="font-size:90%;"> 1.86</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.2.2.4" style="padding:1.35pt 4.0pt;"><span class="ltx_text" id="S6.T4.2.2.4.1" style="font-size:90%;">25.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.2.2.5" style="padding:1.35pt 4.0pt;"><span class="ltx_text" id="S6.T4.2.2.5.1" style="font-size:90%;">89.6</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S6.T4.4.4.3" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.4.4.3.1">
<span class="ltx_p" id="S6.T4.4.4.3.1.1" style="width:71.1pt;"><span class="ltx_text" id="S6.T4.4.4.3.1.1.1" style="font-size:90%;">Improved prompt</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.1" style="padding:1.35pt 4.0pt;">
<span class="ltx_text" id="S6.T4.3.3.1.1" style="font-size:90%;">89.75 </span><math alttext="\pm" class="ltx_Math" display="inline" id="S6.T4.3.3.1.m1.1"><semantics id="S6.T4.3.3.1.m1.1a"><mo id="S6.T4.3.3.1.m1.1.1" mathsize="90%" xref="S6.T4.3.3.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S6.T4.3.3.1.m1.1b"><csymbol cd="latexml" id="S6.T4.3.3.1.m1.1.1.cmml" xref="S6.T4.3.3.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.3.3.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S6.T4.3.3.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S6.T4.3.3.1.2" style="font-size:90%;"> 1.44</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.4.4.2" style="padding:1.35pt 4.0pt;">
<span class="ltx_text" id="S6.T4.4.4.2.1" style="font-size:90%;">89.00 </span><math alttext="\pm" class="ltx_Math" display="inline" id="S6.T4.4.4.2.m1.1"><semantics id="S6.T4.4.4.2.m1.1a"><mo id="S6.T4.4.4.2.m1.1.1" mathsize="90%" xref="S6.T4.4.4.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S6.T4.4.4.2.m1.1b"><csymbol cd="latexml" id="S6.T4.4.4.2.m1.1.1.cmml" xref="S6.T4.4.4.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.4.4.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S6.T4.4.4.2.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S6.T4.4.4.2.2" style="font-size:90%;"> 1.38</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.4.4.4" style="padding:1.35pt 4.0pt;"><span class="ltx_text" id="S6.T4.4.4.4.1" style="font-size:90%;">34.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.4.4.5" style="padding:1.35pt 4.0pt;"><span class="ltx_text" id="S6.T4.4.4.5.1" style="font-size:90%;">90.3</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.6.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="S6.T4.6.6.3" style="padding:1.35pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.6.6.3.1">
<span class="ltx_p" id="S6.T4.6.6.3.1.1" style="width:71.1pt;"><span class="ltx_text" id="S6.T4.6.6.3.1.1.1" style="font-size:90%;">New topology</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S6.T4.5.5.1" style="padding:1.35pt 4.0pt;">
<span class="ltx_text" id="S6.T4.5.5.1.1" style="font-size:90%;">85.50 </span><math alttext="\pm" class="ltx_Math" display="inline" id="S6.T4.5.5.1.m1.1"><semantics id="S6.T4.5.5.1.m1.1a"><mo id="S6.T4.5.5.1.m1.1.1" mathsize="90%" xref="S6.T4.5.5.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S6.T4.5.5.1.m1.1b"><csymbol cd="latexml" id="S6.T4.5.5.1.m1.1.1.cmml" xref="S6.T4.5.5.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.5.5.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S6.T4.5.5.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S6.T4.5.5.1.2" style="font-size:90%;"> 1.18</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S6.T4.6.6.2" style="padding:1.35pt 4.0pt;">
<span class="ltx_text" id="S6.T4.6.6.2.1" style="font-size:90%;">88.83 </span><math alttext="\pm" class="ltx_Math" display="inline" id="S6.T4.6.6.2.m1.1"><semantics id="S6.T4.6.6.2.m1.1a"><mo id="S6.T4.6.6.2.m1.1.1" mathsize="90%" xref="S6.T4.6.6.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S6.T4.6.6.2.m1.1b"><csymbol cd="latexml" id="S6.T4.6.6.2.m1.1.1.cmml" xref="S6.T4.6.6.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.6.6.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S6.T4.6.6.2.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S6.T4.6.6.2.2" style="font-size:90%;"> 1.51</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S6.T4.6.6.4" style="padding:1.35pt 4.0pt;"><span class="ltx_text" id="S6.T4.6.6.4.1" style="font-size:90%;">40.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S6.T4.6.6.5" style="padding:1.35pt 4.0pt;"><span class="ltx_text" id="S6.T4.6.6.5.1" style="font-size:90%;">91.5</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the accuracy results of two case studies that test different strategies for improving the performance of Multi-Agent Large Language Model (LLM) systems. The case studies use two different systems, AG2 and ChatDev, and two different evaluation benchmarks, GSM-Plus and HumanEval/ProgramDev. The table shows the baseline accuracy of each system, as well as the improvements achieved using improved prompts and a redesigned agent topology.  Results are reported separately for different LLMs (GPT-4 and GPT-40). Each row corresponds to a specific configuration, enabling comparison of the baseline with improved prompts and a redesigned agent topology across systems and LLMs.
> <details>
> <summary>read the caption</summary>
> Table 4: Case Studies Accuracy Comparison. This table presents the performance accuracies (in percentages) for various scenarios in our case studies. The header rows group results by strategy: AG2 and ChatDev. Under AG2, GSM-Plus results are reported using GPT-4 and GPT-4o; under ChatDev, results for ProgramDev and HumanEval are reported. Each row represents a particular configuration: baseline implementation, improved prompts, and a redesigned agent topology.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.13657/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13657/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13657/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13657/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13657/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13657/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13657/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13657/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13657/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13657/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13657/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13657/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13657/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13657/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13657/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13657/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13657/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13657/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13657/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13657/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}