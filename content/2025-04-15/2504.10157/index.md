---
title: "SocioVerse: A World Model for Social Simulation Powered by LLM Agents and A Pool of 10 Million Real-World Users"
summary: "SocioVerse: LLM-driven social simulation with 10M real users, addresses alignment issues for diverse, credible dynamics."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Social Simulation", "🏢 Fudan University",]
showSummary: true
date: 2025-04-14
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.10157 {{< /keyword >}}
{{< keyword icon="writer" >}} Xinnong Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-15 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.10157" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.10157" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.10157/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Social simulation transforms social science by modeling human behavior through virtual individuals. Existing methods face alignment challenges related to environment, users, and interaction mechanisms. The paper introduces **SocioVerse**, an LLM-agent-driven world model for social simulation, featuring powerful alignment components and a user pool of 10 million individuals. It validates the model across politics, news, and economics.



To address the alignment issues, SocioVerse uses a modular design. The social environment injects up-to-date real-world information, while the user and scenario engines reconstruct realistic user contexts and orchestrate the simulation process. A behavior engine drives agents to reproduce human behaviors. The experiments demonstrate that **SocioVerse reflects population dynamics** with diversity, credibility, and representativeness.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SocioVerse enables diverse and trustworthy social simulations through its alignment modules. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The 10M user pool allows for large-scale and diverse social simulations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The framework demonstrates effectiveness across politics, news, and economics through illustrative simulations. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a **novel framework** that enhances social simulation, offering a standardized approach with a diverse user pool. It highlights the potential of combining LLMs with social science methodologies, **opening new avenues for studying complex social dynamics** across various domains and underscoring the necessity for ethical considerations.

------
#### Visual Insights



![](https://arxiv.org/html/2504.10157/x1.png)

> 🔼 Figure 1 illustrates the SocioVerse framework applied to the Ukraine conflict.  It showcases how SocioVerse addresses alignment challenges across four key areas: the simulated environment's alignment with real-world conditions (accurate representation of the geopolitical landscape and news cycle); the simulated users' accurate representation of real-world users (in terms of demographics, beliefs and opinions) the scenarios' realism (reflecting different interaction formats such as surveys and interviews); and finally, alignment between simulated and real-world behaviors. The diagram depicts the various components such as real-world and simulated users, scenarios, environments, behaviors, and the interaction of these elements.
> <details>
> <summary>read the caption</summary>
> Figure 1: An illustration of the SocioVerse in the case of Ukraine issue. The alignment challenges are well handled regarding environment, user, scenario, and behavior.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.2.1">
<tr class="ltx_tr" id="S2.T1.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T1.2.1.1.1">Source</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.2.1.1.2"># Users</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S2.T1.2.1.1.3"># Posts</td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.2.1.2.1">X</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.2.1.2.2">1,006,517</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S2.T1.2.1.2.3">30,195,510</td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T1.2.1.3.1">Rednote</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.2.1.3.2">9,158,404</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S2.T1.2.1.3.3">40,963,735</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a statistical summary of the 10 million user pool used in the SocioVerse social simulation framework. It details the number of users and posts sourced from two major social media platforms, X (formerly Twitter) and Rednote (a Chinese social media platform similar to Instagram).  This provides context on the size and composition of the dataset informing the user profiles used for the simulations.
> <details>
> <summary>read the caption</summary>
> Table 1: Statistical summary of the 10M user pool.
> </details>





### In-depth insights


#### LLM Agent World
The concept of an 'LLM Agent World' signifies a paradigm shift in social simulation, leveraging the power of Large Language Models (**LLMs**) to create realistic, interactive environments populated by autonomous agents. This involves designing agents with human-like behaviors, decision-making processes, and communication skills, all driven by LLMs. A key challenge is **alignment**, ensuring agents' actions reflect real-world patterns. This requires careful consideration of the environment, target users, interaction mechanisms, and behavioral patterns. The LLMs should be able to integrate diverse information sources, adapt to dynamic social contexts, and generate credible responses.

#### Align. Challenges
The challenge of alignment in social simulations, particularly when powered by LLMs, is multifaceted. It encompasses ensuring the **simulated environment mirrors the real world's dynamics**, including up-to-date events and social contexts. Furthermore, **aligning simulated agents with target users** requires precisely reflecting the real-world user composition and providing agents with comprehensive user descriptions.  Another key aspect is **aligning interaction mechanisms** across diverse scenarios, demanding a unified framework for standardized simulation components. Crucially, **behavioral patterns of simulated agents** need to align with real-world groups, necessitating the systematic collection of behavior-driving factors and appropriate modeling approaches to capture diverse behaviors. Addressing these alignment challenges is critical for the credibility and applicability of social simulations.

#### 10M Real People
The claim of incorporating "10M real people" into a simulation raises intriguing questions. **Data privacy and ethical considerations are paramount**; how was this data sourced and anonymized? **The representativeness of this pool is crucial**. Does it accurately reflect the diversity of the target population, or is it skewed demographically or behaviorally? The sheer volume suggests computational challenges. **Efficient data management and processing techniques** would be essential to leverage this resource effectively. What specific data points are included for each individual? Are they purely behavioral, or do they incorporate demographic and contextual information? **The fidelity of the simulation hinges on the quality and relevance of the data** used to represent these individuals. This user pool, comparable to the populations of entire countries, enables diverse and large-scale social simulations, suggesting a high degree of potential for modeling complex social dynamics, if handled ethically and with careful attention to representativeness. The ability to sample from this pool to focus on specific target user groups also adds considerable flexibility.

#### Social Dynamics
**Social Dynamics** encompass the ever-changing content from various sources, like news, driving user behavior. It necessitates an **update mechanism** to mirror reality. The engine captures real-time interactions (content sharing, comment threads) and analyzes public discourse, misinformation, and influence propagation. Effectively modeling social dynamics requires attention to both the **macro-level social context** and the **micro-level personalized information feeds**, thus creating a nuanced and adaptive simulation environment.

#### Future Extensible
When thinking about future extensibility in the context of social simulation and world models, several avenues emerge. One key aspect is **modularity**: designing the system with interchangeable components allows for easy updates and integrations of new data sources, agent models, and interaction scenarios. A standardized interface for each module would be crucial. Another area is **scalability**, both in terms of the number of agents and the complexity of the environment. Efficient data structures and distributed computing techniques could be employed. Furthermore, **incorporating real-time data streams** and feedback loops from the real world is vital to maintaining accuracy and relevance. This requires robust data ingestion and processing pipelines. Finally, **developing more sophisticated agent behaviors** that can adapt to unforeseen events and exhibit emergent phenomena is an ongoing challenge, potentially involving more advanced LLMs or hybrid AI approaches.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.10157/x2.png)

> 🔼 The SocioVerse framework consists of four key components: the Social Environment, the User Engine, the Scenario Engine, and the Behavior Engine.  The Social Environment module provides real-time updates from various sources (e.g., news, social media) to keep the simulation context current. The User Engine creates simulated users based on a large pool of 10 million real-world user profiles. The Scenario Engine designs and manages different simulation settings (questionnaires, interviews, social media interactions) to capture diverse scenarios. The Behavior Engine leverages LLMs to generate user behaviors according to the situation, user characteristics, and the broader social environment. A query is submitted to the system, which then uses all four components to generate realistic simulation results.
> <details>
> <summary>read the caption</summary>
> Figure 2: An illustration of SocioVerse framework invovling 4 powerful parts. The social environment provides an updated context for the simulation. During the simulation, the behavior engine takes the simulation setting, user profiles, and social information from the scenario engine, user engine, and social environment, respectively, and generates the results according to the query.
> </details>



![](https://arxiv.org/html/2504.10157/x3.png)

> 🔼 Figure 3 illustrates three distinct applications of the SocioVerse framework across diverse domains. Panel (a) depicts a presidential election prediction, focusing on how SocioVerse simulates voter behavior and predicts election outcomes based on various demographic, geographic, and socio-political factors.  Panel (b) shows the breaking news feedback analysis, where SocioVerse models the public's reactions and opinions towards a significant news event (like the release of ChatGPT) using agents with diverse profiles and exposure to different information sources. The simulation then assesses the accuracy of public sentiment prediction. Finally, panel (c) illustrates the national economic survey, demonstrating SocioVerse's ability to simulate economic patterns and behaviors at a national scale, allowing for economic forecasting and analysis based on income and expenditure data from the surveyed population.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustration of three scenarios representing (a) presidential election prediction, (b) breaking news feedback, and (c) national economic survey.
> </details>



![](https://arxiv.org/html/2504.10157/x4.png)

> 🔼 Figure 4 presents a comparison of simulated user responses against real-world responses to a survey on public opinion regarding the release of ChatGPT. The radar chart visualizes the average responses across six dimensions: Public Cognition (PC), Perceived Risks (PR), Perceived Benefits (PB), Trust (TR), Fairness (FA), and Public Acceptance (PA). Each dimension is measured using a Likert scale ranging from 1 (totally disagree) to 5 (totally agree). The figure allows for a direct visual comparison of the simulated results and the ground truth data for each model, highlighting areas of agreement and disagreement. This analysis provides insights into the models' ability to accurately capture and reflect real-world public sentiment toward the release of a new technology. 
> <details>
> <summary>read the caption</summary>
> Figure 4: An illustration of the performances of the breaking news feedback simulation, where PC, PR, PB, TR, FA, and PA denote six dimensions from the Likert scale (see §3.2 questionnaire design), with 1-point standing for totally disagree and 5-point for totally agree.
> </details>



![](https://arxiv.org/html/2504.10157/x5.png)

> 🔼 Figure 5 presents a comparison of demographic distributions between two user pools: one sourced from Twitter (X) and the other from Xiaohongshu (Rednote).  The visualization likely uses bar charts or stacked bar charts to show the proportion of users within each demographic category (e.g., age, gender, income level) for both platforms. This comparison is valuable for understanding the differences in user characteristics across the two social media platforms and the implications of using these data for social simulation research.  The varying proportions within demographic categories highlight the diversity within each platform's user base and underscore the need for the SocioVerse framework's ability to handle and represent this diversity when generating social simulations.
> <details>
> <summary>read the caption</summary>
> Figure 5: Demographic distribution on X and Rednote user pool.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.2.1">
<tr class="ltx_tr" id="S4.T2.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.2.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">Scenario</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"># Agents</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"># Demographics</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.4" style="padding-top:1pt;padding-bottom:1pt;">Type</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.5" style="padding-top:1pt;padding-bottom:1pt;">Sampling</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.6" style="padding-top:1pt;padding-bottom:1pt;">Source</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.7" style="padding-top:1pt;padding-bottom:1pt;">Language</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.8" style="padding-top:1pt;padding-bottom:1pt;"># Questions</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.9" style="padding-top:1pt;padding-bottom:1pt;">Ground truth</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.2.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">PresElectPredict</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.2" style="padding-top:1pt;padding-bottom:1pt;">33,1836</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.3" style="padding-top:1pt;padding-bottom:1pt;">12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.4" style="padding-top:1pt;padding-bottom:1pt;">label</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.5" style="padding-top:1pt;padding-bottom:1pt;">IPF</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.6" style="padding-top:1pt;padding-bottom:1pt;">X</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.7" style="padding-top:1pt;padding-bottom:1pt;">EN</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.8" style="padding-top:1pt;padding-bottom:1pt;">49</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.2.1.2.9" style="padding-top:1pt;padding-bottom:1pt;">real world</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.3">
<td class="ltx_td ltx_align_left" id="S4.T2.2.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">BreakNewsFeed</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.2" style="padding-top:1pt;padding-bottom:1pt;">20,000</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.3" style="padding-top:1pt;padding-bottom:1pt;">7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.4" style="padding-top:1pt;padding-bottom:1pt;">label</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.5" style="padding-top:1pt;padding-bottom:1pt;">IDS</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.6" style="padding-top:1pt;padding-bottom:1pt;">rednote</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.7" style="padding-top:1pt;padding-bottom:1pt;">ZH</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.8" style="padding-top:1pt;padding-bottom:1pt;">18</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.2.1.3.9" style="padding-top:1pt;padding-bottom:1pt;">calculated</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.2.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">NatEconSurvey</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.4.2" style="padding-top:1pt;padding-bottom:1pt;">16,000</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.4.3" style="padding-top:1pt;padding-bottom:1pt;">9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.4.4" style="padding-top:1pt;padding-bottom:1pt;">label+number</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.4.5" style="padding-top:1pt;padding-bottom:1pt;">IDS</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.4.6" style="padding-top:1pt;padding-bottom:1pt;">rednote</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.4.7" style="padding-top:1pt;padding-bottom:1pt;">ZH</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.4.8" style="padding-top:1pt;padding-bottom:1pt;">17</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.2.1.4.9" style="padding-top:1pt;padding-bottom:1pt;">real world</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 details the experimental setup for three social simulation scenarios: Presidential Election Prediction, Breaking News Feedback, and National Economic Survey.  For each scenario, the table shows the number of agents used in the simulation, the number of demographic attributes considered, the type of sampling method employed (either Iterative Proportional Fitting (IPF) or Identical Distribution Sampling (IDS)), the data source used for the user pool, the language of the questions, the total number of questions, and the ground truth method used for comparison.
> <details>
> <summary>read the caption</summary>
> Table 2: Detail settings of three simulation scenarios, where PresElectPredict, BreakNewsFeed, and NatEconSurvey denote three simulations mentioned in the paper, respectively. IPF and IDS denote iterative proportional fitting and identical distribution sampling, see Appendix C.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.10.10">
<tr class="ltx_tr" id="S4.T3.10.10.11">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.10.10.11.1" rowspan="3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.10.10.11.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T3.10.10.11.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.10.10.11.2.1">PresElectPredict</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T3.10.10.11.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.10.10.11.3.1">BreakNewsFeed</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T3.10.10.11.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.10.10.11.4.1">NatEconSurvey</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.10.10.12">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T3.10.10.12.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_italic" id="S4.T3.10.10.12.1.1">Overall</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T3.10.10.12.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_italic" id="S4.T3.10.10.12.2.1">Battleground</span></td>
<td class="ltx_td ltx_border_t" id="S4.T3.10.10.12.3" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T3.10.10.12.4" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T3.10.10.12.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_italic" id="S4.T3.10.10.12.5.1">Overall</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T3.10.10.12.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_italic" id="S4.T3.10.10.12.6.1">Developed-region</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.10.10.10">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">Acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.2.2" style="padding-top:1pt;padding-bottom:1pt;">RMSE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3.3" style="padding-top:1pt;padding-bottom:1pt;">Acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.4.4" style="padding-top:1pt;padding-bottom:1pt;">RMSE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.4.m1.1"><semantics id="S4.T3.4.4.4.4.m1.1a"><mo id="S4.T3.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T3.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.4.m1.1b"><ci id="S4.T3.4.4.4.4.m1.1.1.cmml" xref="S4.T3.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.5" style="padding-top:1pt;padding-bottom:1pt;">KL-Div<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.5.5.5.5.m1.1"><semantics id="S4.T3.5.5.5.5.m1.1a"><mo id="S4.T3.5.5.5.5.m1.1.1" stretchy="false" xref="S4.T3.5.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.5.m1.1b"><ci id="S4.T3.5.5.5.5.m1.1.1.cmml" xref="S4.T3.5.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.5.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.6.6" style="padding-top:1pt;padding-bottom:1pt;">RMSE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.6.6.6.6.m1.1"><semantics id="S4.T3.6.6.6.6.m1.1a"><mo id="S4.T3.6.6.6.6.m1.1.1" stretchy="false" xref="S4.T3.6.6.6.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.6.m1.1b"><ci id="S4.T3.6.6.6.6.m1.1.1.cmml" xref="S4.T3.6.6.6.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.6.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.7.7" style="padding-top:1pt;padding-bottom:1pt;">KL-Div<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.7.7.7.7.m1.1"><semantics id="S4.T3.7.7.7.7.m1.1a"><mo id="S4.T3.7.7.7.7.m1.1.1" stretchy="false" xref="S4.T3.7.7.7.7.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.7.7.m1.1b"><ci id="S4.T3.7.7.7.7.m1.1.1.cmml" xref="S4.T3.7.7.7.7.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.7.7.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.7.7.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.8.8" style="padding-top:1pt;padding-bottom:1pt;">RMSE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.8.8.8.8.m1.1"><semantics id="S4.T3.8.8.8.8.m1.1a"><mo id="S4.T3.8.8.8.8.m1.1.1" stretchy="false" xref="S4.T3.8.8.8.8.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.8.8.8.8.m1.1b"><ci id="S4.T3.8.8.8.8.m1.1.1.cmml" xref="S4.T3.8.8.8.8.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.8.8.8.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.8.8.8.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.9.9" style="padding-top:1pt;padding-bottom:1pt;">KL-Div<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.9.9.9.9.m1.1"><semantics id="S4.T3.9.9.9.9.m1.1a"><mo id="S4.T3.9.9.9.9.m1.1.1" stretchy="false" xref="S4.T3.9.9.9.9.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.9.9.9.9.m1.1b"><ci id="S4.T3.9.9.9.9.m1.1.1.cmml" xref="S4.T3.9.9.9.9.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.9.9.9.9.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.9.9.9.9.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.10.10.10.10" style="padding-top:1pt;padding-bottom:1pt;">RMSE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.10.10.10.10.m1.1"><semantics id="S4.T3.10.10.10.10.m1.1a"><mo id="S4.T3.10.10.10.10.m1.1.1" stretchy="false" xref="S4.T3.10.10.10.10.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.10.10.10.10.m1.1b"><ci id="S4.T3.10.10.10.10.m1.1.1.cmml" xref="S4.T3.10.10.10.10.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.10.10.10.10.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.10.10.10.10.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.10.10.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.10.10.13.1" style="padding-top:1pt;padding-bottom:1pt;">Llama3-70b</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.10.10.13.2" style="padding-top:1pt;padding-bottom:1pt;">0.843</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.10.10.13.3" style="padding-top:1pt;padding-bottom:1pt;">0.064</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.10.10.13.4" style="padding-top:1pt;padding-bottom:1pt;">0.733</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.10.10.13.5" style="padding-top:1pt;padding-bottom:1pt;">0.045</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.10.10.13.6" style="padding-top:1pt;padding-bottom:1pt;">0.668</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.10.10.13.7" style="padding-top:1pt;padding-bottom:1pt;">0.199</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.10.10.13.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.10.10.13.8.1">0.016</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.10.10.13.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.10.10.13.9.1">0.026</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.10.10.13.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.10.10.13.10.1">0.013</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.10.10.13.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.10.10.13.11.1">0.025</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.10.10.14">
<td class="ltx_td ltx_align_left" id="S4.T3.10.10.14.1" style="padding-top:1pt;padding-bottom:1pt;">Qwen2.5-72b</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.14.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.10.10.14.2.1">0.922</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.14.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.10.10.14.3.1">0.037</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.14.4" style="padding-top:1pt;padding-bottom:1pt;">0.800</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.14.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.10.10.14.5.1">0.031</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.14.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.10.10.14.6.1">0.113</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.14.7" style="padding-top:1pt;padding-bottom:1pt;">0.059</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.14.8" style="padding-top:1pt;padding-bottom:1pt;">0.066</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.14.9" style="padding-top:1pt;padding-bottom:1pt;">0.048</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.14.10" style="padding-top:1pt;padding-bottom:1pt;">0.043</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.10.10.14.11" style="padding-top:1pt;padding-bottom:1pt;">0.039</td>
</tr>
<tr class="ltx_tr" id="S4.T3.10.10.15">
<td class="ltx_td ltx_align_left" id="S4.T3.10.10.15.1" style="padding-top:1pt;padding-bottom:1pt;">DeepSeek-R1-671b</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.15.2" style="padding-top:1pt;padding-bottom:1pt;">\</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.15.3" style="padding-top:1pt;padding-bottom:1pt;">\</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.15.4" style="padding-top:1pt;padding-bottom:1pt;">0.670</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.15.5" style="padding-top:1pt;padding-bottom:1pt;">0.065</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.15.6" style="padding-top:1pt;padding-bottom:1pt;">0.383</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.15.7" style="padding-top:1pt;padding-bottom:1pt;">0.082</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.15.8" style="padding-top:1pt;padding-bottom:1pt;">0.059</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.15.9" style="padding-top:1pt;padding-bottom:1pt;">0.045</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.15.10" style="padding-top:1pt;padding-bottom:1pt;">0.045</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.10.10.15.11" style="padding-top:1pt;padding-bottom:1pt;">0.036</td>
</tr>
<tr class="ltx_tr" id="S4.T3.10.10.16">
<td class="ltx_td ltx_align_left" id="S4.T3.10.10.16.1" style="padding-top:1pt;padding-bottom:1pt;">DeepSeek-V3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.16.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.10.10.16.2.1">0.922</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.16.3" style="padding-top:1pt;padding-bottom:1pt;">0.046</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.16.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.10.10.16.4.1">0.867</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.16.5" style="padding-top:1pt;padding-bottom:1pt;">0.041</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.16.6" style="padding-top:1pt;padding-bottom:1pt;">0.263</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.16.7" style="padding-top:1pt;padding-bottom:1pt;">0.072</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.16.8" style="padding-top:1pt;padding-bottom:1pt;">0.035</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.16.9" style="padding-top:1pt;padding-bottom:1pt;">0.036</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.16.10" style="padding-top:1pt;padding-bottom:1pt;">0.023</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.10.10.16.11" style="padding-top:1pt;padding-bottom:1pt;">0.030</td>
</tr>
<tr class="ltx_tr" id="S4.T3.10.10.17">
<td class="ltx_td ltx_align_left" id="S4.T3.10.10.17.1" style="padding-top:1pt;padding-bottom:1pt;">GPT-4o-mini</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.17.2" style="padding-top:1pt;padding-bottom:1pt;">\</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.17.3" style="padding-top:1pt;padding-bottom:1pt;">\</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.17.4" style="padding-top:1pt;padding-bottom:1pt;">0.800</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.17.5" style="padding-top:1pt;padding-bottom:1pt;">0.039</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.17.6" style="padding-top:1pt;padding-bottom:1pt;">0.195</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.17.7" style="padding-top:1pt;padding-bottom:1pt;">0.114</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.17.8" style="padding-top:1pt;padding-bottom:1pt;">0.046</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.17.9" style="padding-top:1pt;padding-bottom:1pt;">0.045</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.17.10" style="padding-top:1pt;padding-bottom:1pt;">0.030</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.10.10.17.11" style="padding-top:1pt;padding-bottom:1pt;">0.036</td>
</tr>
<tr class="ltx_tr" id="S4.T3.10.10.18">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.10.10.18.1" style="padding-top:1pt;padding-bottom:1pt;">GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.10.10.18.2" style="padding-top:1pt;padding-bottom:1pt;">\</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.10.10.18.3" style="padding-top:1pt;padding-bottom:1pt;">\</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.10.10.18.4" style="padding-top:1pt;padding-bottom:1pt;">\</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.10.10.18.5" style="padding-top:1pt;padding-bottom:1pt;">\</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.10.10.18.6" style="padding-top:1pt;padding-bottom:1pt;">0.196</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.10.10.18.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.10.10.18.7.1">0.055</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.10.10.18.8" style="padding-top:1pt;padding-bottom:1pt;">0.062</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.10.10.18.9" style="padding-top:1pt;padding-bottom:1pt;">0.051</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.10.10.18.10" style="padding-top:1pt;padding-bottom:1pt;">0.036</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T3.10.10.18.11" style="padding-top:1pt;padding-bottom:1pt;">0.038</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the overall performance of three different social simulation scenarios conducted using the SocioVerse framework: US Presidential Election Prediction, Breaking News Feedback, and National Economic Survey of China.  For each scenario, the table shows the accuracy (Acc) and root mean squared error (RMSE) of different large language models (LLMs).  To provide more granular insights, the table also includes results for subsets of the data: 'Battleground' states for the US election (representing states with highly contested results) and 'Developed Region' for the China economic survey (representing the top 10 most economically developed regions in China).  Lower RMSE values indicate better model performance, while higher Acc values suggest greater accuracy in matching simulated results to real-world outcomes.  The table allows for comparison of the effectiveness of different LLMs in predicting social behavior across varied contexts.
> <details>
> <summary>read the caption</summary>
> Table 3: Overall results of the three scenarios, where subset Battleground indicates battleground states in the U.S. in the presidential election and subset Developed-Region indicates top-10 developed regions in China in terms of GDP.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.2.2">
<tr class="ltx_tr" id="S4.T4.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.2.2.2.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.2.3.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.1">Acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T4.2.2.2.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.2.2.1">RMSE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.2.1.m1.1"><semantics id="S4.T4.2.2.2.2.1.m1.1a"><mo id="S4.T4.2.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T4.2.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.2.1.m1.1b"><ci id="S4.T4.2.2.2.2.1.m1.1.1.cmml" xref="S4.T4.2.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.2.2.3.1" style="padding-top:1pt;padding-bottom:1pt;">Llama3-70b</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.3.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.3.2.1">0.733</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.2.2.3.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.3.3.1">0.045</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.4">
<td class="ltx_td ltx_align_left" id="S4.T4.2.2.4.1" style="padding-top:1pt;padding-bottom:1pt;">- w/o Knowledge</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.4.2" style="padding-top:1pt;padding-bottom:1pt;">0.533</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.2.2.4.3" style="padding-top:1pt;padding-bottom:1pt;">0.051</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.5">
<td class="ltx_td ltx_align_left" id="S4.T4.2.2.5.1" style="padding-top:1pt;padding-bottom:1pt;">- w/o Knowledge &amp; Piror Distribution</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.5.2" style="padding-top:1pt;padding-bottom:1pt;">0.600</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.2.2.5.3" style="padding-top:1pt;padding-bottom:1pt;">0.386</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.2.2.6.1" style="padding-top:1pt;padding-bottom:1pt;">Qwen2.5-72b</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.6.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.6.2.1">0.800</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.2.2.6.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.6.3.1">0.031</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.7">
<td class="ltx_td ltx_align_left" id="S4.T4.2.2.7.1" style="padding-top:1pt;padding-bottom:1pt;">- w/o Knowledge</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.7.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.7.2.1">0.800</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.2.2.7.3" style="padding-top:1pt;padding-bottom:1pt;">0.033</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.8">
<td class="ltx_td ltx_align_left" id="S4.T4.2.2.8.1" style="padding-top:1pt;padding-bottom:1pt;">- w/o Knowledge &amp; Piror Distribution</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.8.2" style="padding-top:1pt;padding-bottom:1pt;">0.600</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.2.2.8.3" style="padding-top:1pt;padding-bottom:1pt;">0.370</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.2.2.9.1" style="padding-top:1pt;padding-bottom:1pt;">GPT-4o-mini</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.9.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.9.2.1">0.800</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.2.2.9.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.9.3.1">0.039</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.10">
<td class="ltx_td ltx_align_left" id="S4.T4.2.2.10.1" style="padding-top:1pt;padding-bottom:1pt;">- w/o Knowledge</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.10.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.10.2.1">0.800</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.2.2.10.3" style="padding-top:1pt;padding-bottom:1pt;">0.052</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.11">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.2.2.11.1" style="padding-top:1pt;padding-bottom:1pt;">- w/o Knowledge &amp; Piror Distribution</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.2.11.2" style="padding-top:1pt;padding-bottom:1pt;">0.667</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T4.2.2.11.3" style="padding-top:1pt;padding-bottom:1pt;">0.323</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study results for the presidential election prediction simulation within the SocioVerse framework.  It shows the impact of removing real-world user knowledge and/or using a random demographic distribution instead of the learned prior distribution on the accuracy (Acc) and root mean squared error (RMSE) of the model's predictions. By comparing the results with and without these components, the study quantifies their contribution to the model's performance.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation experiment results on the presidential election prediction simulation, where -w/o Knowledge denotes without real-world user knowledge and -w/o Piror Distribution denotes using random demographics distribution.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T5.2.1">
<tr class="ltx_tr" id="S4.T5.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T5.2.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.1.1.1">Item</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.1.2.1">Llama3-70b</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.1.3.1">Qwen2.5-72b</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.1.4.1">GPT-4o-mini</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.1.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.1.5.1">GPT-4o</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T5.2.1.1.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.1.6.1">DeepSeek-R1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.2.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">Daily</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.2.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.2.2.1">0.007</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.2.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_ERROR undefined" id="S4.T5.2.1.2.3.1">\ul</span>0.009</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.2.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.2.4.1">0.006</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.2.5" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_ERROR undefined" id="S4.T5.2.1.2.5.1">\ul</span>0.010</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.2.1.2.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.2.6.1">0.009</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.3">
<td class="ltx_td ltx_align_left" id="S4.T5.2.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">Clothing</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.3.2" style="padding-top:1pt;padding-bottom:1pt;">0.012</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.3.3" style="padding-top:1pt;padding-bottom:1pt;">0.015</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.3.4" style="padding-top:1pt;padding-bottom:1pt;">0.019</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.3.5" style="padding-top:1pt;padding-bottom:1pt;">0.015</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.2.1.3.6" style="padding-top:1pt;padding-bottom:1pt;">0.015</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.4">
<td class="ltx_td ltx_align_left" id="S4.T5.2.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">Transportation_Communication</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.4.2" style="padding-top:1pt;padding-bottom:1pt;">0.016</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.4.3" style="padding-top:1pt;padding-bottom:1pt;">0.020</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.4.4" style="padding-top:1pt;padding-bottom:1pt;">0.027</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.4.5" style="padding-top:1pt;padding-bottom:1pt;">0.023</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.2.1.4.6" style="padding-top:1pt;padding-bottom:1pt;">0.017</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.5">
<td class="ltx_td ltx_align_left" id="S4.T5.2.1.5.1" style="padding-top:1pt;padding-bottom:1pt;">Education_Entertainment</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.2" style="padding-top:1pt;padding-bottom:1pt;">0.018</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.3" style="padding-top:1pt;padding-bottom:1pt;">0.022</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.4" style="padding-top:1pt;padding-bottom:1pt;">0.024</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.5" style="padding-top:1pt;padding-bottom:1pt;">0.017</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.2.1.5.6" style="padding-top:1pt;padding-bottom:1pt;">0.022</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.6">
<td class="ltx_td ltx_align_left" id="S4.T5.2.1.6.1" style="padding-top:1pt;padding-bottom:1pt;">Medical</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.6.2" style="padding-top:1pt;padding-bottom:1pt;">0.023</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.6.3" style="padding-top:1pt;padding-bottom:1pt;">0.062</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.6.4" style="padding-top:1pt;padding-bottom:1pt;">0.041</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.6.5" style="padding-top:1pt;padding-bottom:1pt;">0.057</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.2.1.6.6" style="padding-top:1pt;padding-bottom:1pt;">0.060</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.7">
<td class="ltx_td ltx_align_left" id="S4.T5.2.1.7.1" style="padding-top:1pt;padding-bottom:1pt;">Food</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.7.2" style="padding-top:1pt;padding-bottom:1pt;">0.037</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.7.3" style="padding-top:1pt;padding-bottom:1pt;">0.031</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.7.4" style="padding-top:1pt;padding-bottom:1pt;">0.031</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.7.5" style="padding-top:1pt;padding-bottom:1pt;">0.040</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.2.1.7.6" style="padding-top:1pt;padding-bottom:1pt;">0.032</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.8">
<td class="ltx_td ltx_align_left" id="S4.T5.2.1.8.1" style="padding-top:1pt;padding-bottom:1pt;">Household</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.8.2" style="padding-top:1pt;padding-bottom:1pt;">0.052</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.8.3" style="padding-top:1pt;padding-bottom:1pt;">0.110</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.8.4" style="padding-top:1pt;padding-bottom:1pt;">0.107</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.8.5" style="padding-top:1pt;padding-bottom:1pt;">0.120</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.2.1.8.6" style="padding-top:1pt;padding-bottom:1pt;">0.102</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.9">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T5.2.1.9.1" style="padding-top:1pt;padding-bottom:1pt;">Others</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.2.1.9.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_ERROR undefined" id="S4.T5.2.1.9.2.1">\ul</span>0.008</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.2.1.9.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.9.3.1">0.008</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.2.1.9.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_ERROR undefined" id="S4.T5.2.1.9.4.1">\ul</span>0.010</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.2.1.9.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.9.5.1">0.005</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.2.1.9.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.9.6.1">0.009</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents a detailed breakdown of the performance of different large language models (LLMs) in simulating national economic survey data, specifically focusing on the accuracy of predicting various spending components (food, clothing, transportation, etc.).  The performance metric used is the Normalized Root Mean Squared Error (NRMSE).  For each spending category, the table shows the NRMSE achieved by each LLM. The lowest NRMSE values for each category are highlighted in bold to indicate the best-performing model, and the second-lowest values are underlined. This allows for a direct comparison of the models' accuracy in simulating different aspects of consumer spending behavior.
> <details>
> <summary>read the caption</summary>
> Table 5: Detailed results on the national economic survey simulation reported in NRMSE, where the Item column indicates the components of spending. The best results are bolded; the second-best results are \ulunderlined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T6.2.1">
<tr class="ltx_tr" id="A1.T6.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T6.2.1.1.1">Platform</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="A1.T6.2.1.1.2">Data list</td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T6.2.1.2.1">X</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T6.2.1.2.2">
<table class="ltx_tabular ltx_align_middle" id="A1.T6.2.1.2.2.1">
<tr class="ltx_tr" id="A1.T6.2.1.2.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T6.2.1.2.2.1.1.1">user ID, tweet, #likes,</td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.1.2.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T6.2.1.2.2.1.2.1">#coments, #retweets</td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T6.2.1.3.1">Rednote</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T6.2.1.3.2">user ID, notes, #likes, #comments</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the specific data points collected from each social media platform (X and Rednote) during the data gathering phase of the SocioVerse project.  It highlights the types of user-generated content obtained, focusing on publicly available information to respect user privacy.  The aim was to gather diverse real-world behavioral data to populate the large-scale SocioVerse user pool.
> <details>
> <summary>read the caption</summary>
> Table 6: Data list for each social media platform during the data collection.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T6.2.1.2.2.1">
<tr class="ltx_tr" id="A1.T6.2.1.2.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T6.2.1.2.2.1.1.1">user ID, tweet, #likes,</td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.1.2.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T6.2.1.2.2.1.2.1">#coments, #retweets</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the inter-annotator agreement scores achieved during the manual verification of demographic labels generated by several Large Language Models (LLMs).  It shows the consistency between human annotators and each of the LLMs used, offering insights into the reliability of the automated labeling process.  Higher scores indicate greater agreement between human labels and those produced by the LLMs, thereby suggesting greater accuracy of the automated approach.
> <details>
> <summary>read the caption</summary>
> Table 7: Human annotators’ verification results. We report the consistency between humans and different LLMs.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T7.2.1">
<tr class="ltx_tr" id="A2.T7.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T7.2.1.1.1">Models</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.2.1.1.2">Human (X)</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="A2.T7.2.1.1.3">Human (Rednote)</td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T7.2.1.2.1">GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.2.1.2.2">0.905</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T7.2.1.2.3">0.723</td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.1.3">
<td class="ltx_td ltx_align_left" id="A2.T7.2.1.3.1">Claude3.5</td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.1.3.2">0.901</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T7.2.1.3.3">0.659</td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.1.4">
<td class="ltx_td ltx_align_left" id="A2.T7.2.1.4.1">Gemini-1.5</td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.1.4.2">0.713</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T7.2.1.4.3">\</td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.1.5">
<td class="ltx_td ltx_align_left" id="A2.T7.2.1.5.1">Qwen2.5</td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.1.5.2">\</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T7.2.1.5.3">0.846</td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.1.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T7.2.1.6.1">Majority votes</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.2.1.6.2"><span class="ltx_text ltx_font_bold" id="A2.T7.2.1.6.2.1">0.956</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A2.T7.2.1.6.3"><span class="ltx_text ltx_font_bold" id="A2.T7.2.1.6.3.1">0.849</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 8 presents the hyperparameters used to train the demographic classifiers.  It details the specific settings for both the Longformer model, used for data from platform X, and the Bert-base-chinese model, employed for Rednote data.  The table lists the training dataset size, the number of classifiers trained, the maximum sequence length considered (max_tokens), the learning rate used during optimization, the batch size used during training, the optimizer algorithm employed (AdamW in both cases), and the number of training epochs completed.  Finally, it specifies the computing hardware used for training each model.
> <details>
> <summary>read the caption</summary>
> Table 8: Implementation details for demographic classifiers.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T8.2.1">
<tr class="ltx_tr" id="A2.T8.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T8.2.1.1.1">Params</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.2.1.1.2">LongFormer</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="A2.T8.2.1.1.3">Bert-base-chinese</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T8.2.1.2.1">train_size</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.2.1.2.2">10,000</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.1.2.3">10,000</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.1.3">
<td class="ltx_td ltx_align_left" id="A2.T8.2.1.3.1"># classifiers</td>
<td class="ltx_td ltx_align_center" id="A2.T8.2.1.3.2">5</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T8.2.1.3.3">4</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.1.4">
<td class="ltx_td ltx_align_left" id="A2.T8.2.1.4.1">max_tokens</td>
<td class="ltx_td ltx_align_center" id="A2.T8.2.1.4.2">4096</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T8.2.1.4.3">512</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.1.5">
<td class="ltx_td ltx_align_left" id="A2.T8.2.1.5.1">learning_rate</td>
<td class="ltx_td ltx_align_center" id="A2.T8.2.1.5.2">5e-5</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T8.2.1.5.3">5e-5</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.1.6">
<td class="ltx_td ltx_align_left" id="A2.T8.2.1.6.1">batch_size</td>
<td class="ltx_td ltx_align_center" id="A2.T8.2.1.6.2">16</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T8.2.1.6.3">32</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.1.7">
<td class="ltx_td ltx_align_left" id="A2.T8.2.1.7.1">optimizer</td>
<td class="ltx_td ltx_align_center" id="A2.T8.2.1.7.2">AdamW</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T8.2.1.7.3">AdamW</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.1.8">
<td class="ltx_td ltx_align_left" id="A2.T8.2.1.8.1">epochs</td>
<td class="ltx_td ltx_align_center" id="A2.T8.2.1.8.2">3</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T8.2.1.8.3">10</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.1.9">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T8.2.1.9.1">device</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.2.1.9.2">8*4090</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A2.T8.2.1.9.3">2*4090</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance evaluation metrics for demographic classifiers trained on a subset of the SocioVerse user pool.  The classifiers predict various demographic attributes (Gender, Age, Party, Ideology, Race, Consumption, Education) using text data from users' social media posts.  Performance is measured using Accuracy (Acc) and F1-score (F1), reflecting the classifiers' ability to correctly identify user demographics. Separate results are shown for classifiers trained using Longformer and Bert-base-chinese models, reflecting different architectures used for processing different language sources (X and Rednote respectively) in the user pool.
> <details>
> <summary>read the caption</summary>
> Table 9: Performance of demographic classifiers on test set.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.10157/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10157/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10157/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10157/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10157/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10157/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10157/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10157/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10157/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10157/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10157/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10157/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10157/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10157/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10157/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10157/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10157/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10157/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10157/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10157/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}