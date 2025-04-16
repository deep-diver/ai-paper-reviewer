---
title: "MOSAIC: Modeling Social AI for Content Dissemination and Regulation in Multi-Agent Simulations"
summary: "MOSAIC simulates social AI to model content spread and regulation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Security", "🏢 UC Los Angeles",]
showSummary: true
date: 2025-04-10
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.07830 {{< /keyword >}}
{{< keyword icon="writer" >}} Genglin Liu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.07830" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.07830" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.07830/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Social networks significantly shape public discourse, but studying online interactions is challenging. The paper introduces **MOSAIC, a novel framework that simulates social networks with AI agents to model content diffusion, user engagement, and misinformation propagation.** This system constructs user representations from diverse personas and uses LLM agents to predict user behaviors like liking, sharing, and flagging content. Ultimately, this enables better understanding of how users determine the veracity of online social content.



**MOSAIC evaluates content moderation strategies** finding they mitigate non-factual content spread and increase user engagement. The research analyzes popular content trajectories and compares third-party, community-based, and hybrid fact-checking approaches. Surprisingly, agents' articulated reasoning may not align with their collective engagement patterns. The open-source simulation software encourages AI and social science research advancements.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} AI agents can model individual behavior accurately, but some demographics simulate better. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Misinformation spreads slower in agent simulations versus humans, moderation strategies can help fact-checking and engagement. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Individual reasoning of agents doesn't truly reflect their collective action patterns. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
MOSAIC is important because it advances understanding of online social dynamics and provides a tool for analyzing and mitigating misinformation risks using AI agents, content moderation strategies, and social behavior analysis.

------
#### Visual Insights



![](https://arxiv.org/html/2504.07830/x1.png)

> 🔼 The figure illustrates the MOSAIC framework, a multi-agent simulation modeling social media content dissemination and user responses.  Agents, each with unique characteristics derived from human surveys or synthetic data, interact on a simulated social network.  The framework simulates how agents post, share, like, comment on, and flag content, incorporating community-based, third-party, or hybrid fact-checking.  Agent behaviors are dynamically shaped by their memories, which are updated based on their experiences. This allows for the study of content spread, misinformation, and the effectiveness of different content moderation strategies.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the MOSAIC, a multi-agent social simulation framework where agents interact in an environment mimicking a social network, form dynamic memory-based behaviors, and respond to misinformation using community-based, third-party, or hybrid fact-checking mechanisms. Personas are replicated from human surveys or generated using synthetic distributions. Memories are retrieved before an agent takes certain actions, and are updated after certain events.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T1.1">
<tr class="ltx_tr" id="S2.T1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T1.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1">Category</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_tt" id="S2.T1.1.1.2"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.1">Significant Differences</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_tt" id="S2.T1.1.1.3"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.3.1">Non-Significant Differences</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.2.1">Age</td>
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_t" id="S2.T1.1.2.2">25-34 (shares)</td>
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_t" id="S2.T1.1.2.3">18-24, 35-44, 45-54, 55-64, 65-74</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.3">
<td class="ltx_td ltx_align_left" id="S2.T1.1.3.1">Gender</td>
<td class="ltx_td ltx_nopad_l ltx_align_left" id="S2.T1.1.3.2">Male (likes, shares)</td>
<td class="ltx_td ltx_nopad_l ltx_align_left" id="S2.T1.1.3.3">Female</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.4">
<td class="ltx_td ltx_align_left" id="S2.T1.1.4.1">Religion</td>
<td class="ltx_td ltx_nopad_l ltx_align_left" id="S2.T1.1.4.2">Hinduism (likes), Islam (shares)</td>
<td class="ltx_td ltx_nopad_l ltx_align_left" id="S2.T1.1.4.3">No Religion, Spiritual, Christianity, Jewish</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.5">
<td class="ltx_td ltx_align_left" id="S2.T1.1.5.1">Ethnic Group</td>
<td class="ltx_td ltx_nopad_l ltx_align_left" id="S2.T1.1.5.2">Hispanic/Latino, Black/African (shares),</td>
<td class="ltx_td ltx_nopad_l ltx_align_left" id="S2.T1.1.5.3">White/Caucasian, Mixed, Others</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.6">
<td class="ltx_td" id="S2.T1.1.6.1"></td>
<td class="ltx_td ltx_nopad_l ltx_align_left" id="S2.T1.1.6.2">Asian (comments)</td>
<td class="ltx_td ltx_nopad_l" id="S2.T1.1.6.3"></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.7">
<td class="ltx_td ltx_align_left" id="S2.T1.1.7.1">Education</td>
<td class="ltx_td ltx_nopad_l ltx_align_left" id="S2.T1.1.7.2">Secondary (shares), Doctorate (likes)</td>
<td class="ltx_td ltx_nopad_l ltx_align_left" id="S2.T1.1.7.3">High School, Undergraduate, Technical, Graduate</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.8">
<td class="ltx_td ltx_align_left" id="S2.T1.1.8.1">Income</td>
<td class="ltx_td ltx_nopad_l ltx_align_left" id="S2.T1.1.8.2">$10K-$20K (comments), $70K-$80K (likes)</td>
<td class="ltx_td ltx_nopad_l ltx_align_left" id="S2.T1.1.8.3">Various other income brackets</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.9">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T1.1.9.1">Political Stance</td>
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_bb" id="S2.T1.1.9.2">Conservative (shares), Very Conservative (likes)</td>
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_bb" id="S2.T1.1.9.3">Very Liberal, Moderate, Liberal, Libertarian</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table details the demographic groups where statistically significant differences (p<0.05) were observed in social media engagement patterns between human participants and AI agents in a simulation study.  It highlights categories such as age, gender, religion, ethnicity, education level, income, and political stance where simulated AI agents' engagement behavior differed from that of actual human users.
> <details>
> <summary>read the caption</summary>
> Table 1: Demographic groups showing significant differences in engagement patterns between human participants and AI agents (p < 0.05).
> </details>





### In-depth insights


#### MOSAIC Overview
While "MOSAIC Overview" isn't explicitly a section, considering the paper's focus, an overview would likely detail the framework's architecture and core components. It'd probably introduce **LLM-powered agents** within a **social network simulation**, highlighting how these agents interact, make decisions (liking, sharing, flagging), and evolve through memory and reflection. An overview would explain the system's ability to model **content diffusion**, capturing how information (including misinformation) spreads. The technical implementation, data structures, and agent behaviors with emphasis on how **different content moderation strategies influence the spread of misinformation** and impact user engagement. Finally, a high level summarization of framework's capabilities in the context of analyzing **algorithmic auditing** and **platform accountability**.

#### LLM User Modeling
**LLM user modeling** represents a significant advancement in creating more realistic and responsive simulations. By using LLMs to model user behavior, researchers can capture the nuances of human interaction that are often missed by traditional rule-based systems. **LLMs' ability to understand and generate natural language** enables them to create more believable user personas and simulate a wider range of behaviors. This approach opens up new possibilities for studying online dynamics and testing interventions. However, the accuracy of the model depends on the quality and diversity of the training data and LLM's biases.

#### Fact-Checking Study
This research explores **AI-driven simulations** to model content dissemination and fact-checking strategies on social networks. The study found that LLM agents tend to **avoid unverified content**, a behavior attributed to safety training. Hybrid fact-checking combines community and third-party to strike a balance to reduce misinformation and user engagement. The simulations revealed that misinformation doesn't necessarily spread faster than factual news. The **effectiveness and limitations** of fact-checking were evaluated with focus on the impact of various algorithms.

#### Engage. Analysis
**Engagement analysis** should deeply examine user behaviors and interactions within the system. It needs to consider not only explicit actions, such as likes or shares, but also implicit cues and patterns that reveal underlying user motivations and preferences. Analysis should also focus on the network effects, looking at how content spreads and how users influence one another. It is also important to look into the sentiment analysis to truly understand how people react to certain data and insights can be derived from it.

#### Future Research
Future research could focus on several key areas to build upon this work. First, **expanding the scale of the simulations**, both in terms of the number of agents and the duration of the simulation, would allow for the observation of more complex, emergent social phenomena. Investigating **more sophisticated agent behaviors**, such as modeling different personality types or incorporating cognitive biases, could enhance the realism of the simulations. Further exploration of **diverse content moderation strategies**, including automated fact-checking tools or user-reporting mechanisms, could provide valuable insights into effective misinformation mitigation techniques. Additionally, exploring the **impact of network structure** and the role of influential users in shaping online discourse would be beneficial. Finally, **Validating the simulation results with real-world data** and user studies is also crucial to ensure the generalizability and applicability of the findings. 


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.07830/x2.png)

> 🔼 This bar chart compares the average number of likes, shares, and comments received per post by human users and AI agents in a social media simulation. The results of a t-test indicate no statistically significant difference in engagement patterns between the two groups for any of the three engagement types, suggesting that the AI agents successfully mimic human reactions to social media content.
> <details>
> <summary>read the caption</summary>
> Figure 2: Average engagement received per post: Human vs. Agents. Our t-test validates that the difference in reaction patterns across the three engagement types are not statistically significant, suggesting that agents can simulate individual human reactions to social media feed realistically.
> </details>



![](https://arxiv.org/html/2504.07830/x3.png)

> 🔼 This figure displays the cumulative difference in engagement between factual and misinformation content over time for four different content moderation strategies.  A positive value indicates that factual content received more engagement than misinformation, while a negative value signifies the opposite.  The strategies compared include: no fact-checking, community-based fact-checking, third-party fact-checking, and a hybrid approach combining both community and third-party methods. The graph shows how each strategy impacts the spread and engagement of factual versus misinformation over a series of time steps.
> <details>
> <summary>read the caption</summary>
> Figure 3: Effectiveness of content moderation approaches in promoting factual content. Positive values: factual content receives more engagement. Negative values: misinformation receives more engagement.
> </details>



![](https://arxiv.org/html/2504.07830/x4.png)

> 🔼 This figure displays the cumulative number of interactions (likes, shares, and comments) over time for both factual and misinformation posts under four different content moderation strategies: No Fact-Checking, Community-Based Fact-Checking, Third-Party Fact-Checking, and Hybrid Fact-Checking.  It illustrates how each fact-checking approach impacts the spread of information and overall user engagement by showing the trajectories of interactions for true and false news over approximately 40 time steps.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparison of total interactions over time across different fact-checking strategies.
> </details>



![](https://arxiv.org/html/2504.07830/x5.png)

> 🔼 This bar chart visualizes the engagement levels of the top 50 most active users in a simulated social network.  The x-axis represents the user IDs, while the y-axis indicates the total engagement score, likely a sum of likes, shares, comments, and follows. The chart highlights the skewed nature of online engagement, demonstrating how a small number of highly active users accumulate a disproportionate share of interactions compared to the broader user base.
> <details>
> <summary>read the caption</summary>
> Figure 5: Top 50 users with highest engagement.
> </details>



![](https://arxiv.org/html/2504.07830/x6.png)

> 🔼 This figure displays the power-law distribution observed in user engagement within the simulated social network. The x-axis represents the rank of users ordered by their engagement score (a composite score of followers, likes, shares, and comments), and the y-axis shows their corresponding engagement level.  The plotted data points closely follow a power-law distribution, indicating that a small proportion of users receive a disproportionately large amount of engagement, while the majority receive significantly less. A fitted power-law curve is overlaid on the data points, illustrating the strength of the power-law relationship. The R-squared value of the fit is also provided, indicating the goodness of fit.  This visualization supports the paper's analysis of engagement patterns in the simulation, specifically highlighting the highly skewed distribution of popularity within the network.
> <details>
> <summary>read the caption</summary>
> Figure 6: User engagement best power-law fit.
> </details>



![](https://arxiv.org/html/2504.07830/x7.png)

> 🔼 This figure presents a detailed breakdown of the demographic characteristics of the 204 human participants involved in the study. Each subplot displays the distribution of a specific demographic attribute, including age, gender, religion, ethnicity, education, language, residence, income, and political stance.  The distributions are visually represented using bar charts, offering a clear comparison of the frequency of different values within each attribute across the participants. This visualization provides valuable context for understanding the sample population and its diversity.
> <details>
> <summary>read the caption</summary>
> Figure 7: Demographic Distributions of Study Participants.
> </details>



![](https://arxiv.org/html/2504.07830/x8.png)

> 🔼 This figure presents a flowchart illustrating the various actions an agent can perform within the simulated social media environment.  The agent's actions are categorized into several modules based on their functionalities. These actions encompass content creation (posting), engagement (liking, sharing, commenting), information moderation (flagging), network interaction (following, unfollowing), and inaction (ignoring). The flowchart visualizes the relationships among the actions and underlying memory and reflection modules to showcase how these processes integrate to model agent behavior more realistically.
> <details>
> <summary>read the caption</summary>
> Figure 8: Agent’s action space.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.1.1">
<tr class="ltx_tr" id="S3.T2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.2.1">Total Posts</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.3.1">News Posts</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.4.1">Factual News</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.5.1">Misinfo News</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.6.1">Precision</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.7.1">Recall</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.8.1">F1 Score</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.2.1">No Fact-Checking</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.2">2878</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.3">500</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.4">450</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.5">50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.6">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.7">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.8">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.3">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.3.1">Community-Based</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.2">1269</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.3">490</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.4">441</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.5">49</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.6">0.462</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.7">0.490</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.8">0.475</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.4">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.4.1">Third-Party</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.2">1233</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.3">450</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.4">405</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.5">45</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.6">0.219</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.7">0.156</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.8">0.182</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.1.1.5.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.5.1.1">Hybrid</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.5.2">809</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.5.3">500</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.5.4">450</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.5.5">50</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.5.6"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.5.6.1">0.625</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.5.7"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.5.7.1">0.600</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.5.8"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.5.8.1">0.612</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of four different content moderation strategies in a multi-agent social simulation. The strategies are: no fact-checking, community-based fact-checking, third-party fact-checking, and a hybrid approach combining community and third-party methods.  The table shows the total number of posts, the number of news posts (both factual and misinformation), the precision, recall, and F1-score for each method.  These metrics assess the effectiveness of each fact-checking method in identifying and mitigating the spread of misinformation.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of different fact-checking methods including dataset size, news distribution, and evaluation metrics.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.1.1">
<tr class="ltx_tr" id="S4.T3.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1">Attribute</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.2.1">Chi-square</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.3.1">p-value</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.4.1">Cramer’s V</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.5.1">Effect Size</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.1.1.2.1">Age Group</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.2">1.632</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.3">0.652</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.4">0.128</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.5">Small</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.3">
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.3.1">Gender</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2">0.653</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.3">0.721</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.4">0.081</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.5">Negligible</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.4">
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.4.1">Activity</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.2">5.030</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.3">0.412</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.4">0.224</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.5">Small</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.5">
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.5.1">Hobby</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.2">9.101</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.3">0.246</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.4">0.302</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.5">Medium</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.6">
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.6.1">Ethnicity</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6.2">10.187</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6.3">0.070</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6.4">0.319</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6.5">Medium</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.7">
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.7.1">Income Level</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.2">4.373</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.3">0.358</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.4">0.209</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.5">Small</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.8">
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.8.1">Political Affiliation</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.2">2.515</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.3">0.642</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.4">0.159</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.5">Small</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.1.1.9.1">Primary Goal</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.9.2">8.064</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.9.3">0.089</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.9.4">0.284</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.9.5">Small</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of chi-square tests examining whether differences in user engagement (likes, shares, comments, and overall engagement) are statistically significant across various demographic groups.  The demographic attributes considered include age, gender, activity type, hobby, ethnicity, income level, political affiliation, and primary goal.  The table shows the chi-square p-value and Cramer's V effect size for each attribute, indicating the strength of association between the demographic attribute and engagement level.  'Effect Size' column helps determine whether the association is negligible, small, or medium.
> <details>
> <summary>read the caption</summary>
> Table 3: Chi-square Test Results for Differences in Engagement Based on Demographic Attributes
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A8.T4.1">
<tr class="ltx_tr" id="A8.T4.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A8.T4.1.1.1"><span class="ltx_text ltx_font_bold" id="A8.T4.1.1.1.1">Action Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A8.T4.1.1.2"><span class="ltx_text ltx_font_bold" id="A8.T4.1.1.2.1">Total Actions (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A8.T4.1.1.3"><span class="ltx_text ltx_font_bold" id="A8.T4.1.1.3.1">Positive (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A8.T4.1.1.4"><span class="ltx_text ltx_font_bold" id="A8.T4.1.1.4.1">Neutral (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A8.T4.1.1.5"><span class="ltx_text ltx_font_bold" id="A8.T4.1.1.5.1">Negative (%)</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A8.T4.1.1.6">
<span class="ltx_inline-block ltx_align_top" id="A8.T4.1.1.6.1">
<span class="ltx_p" id="A8.T4.1.1.6.1.1" style="width:99.6pt;"><span class="ltx_text ltx_font_bold" id="A8.T4.1.1.6.1.1.1">Top 2 Reasoning Categories</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A8.T4.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A8.T4.1.2.1" style="padding-bottom:-1.0pt;">share_post</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A8.T4.1.2.2" style="padding-bottom:-1.0pt;">1382 (30.1%)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A8.T4.1.2.3" style="padding-bottom:-1.0pt;">91.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A8.T4.1.2.4" style="padding-bottom:-1.0pt;">6.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A8.T4.1.2.5" style="padding-bottom:-1.0pt;">1.6</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A8.T4.1.2.6" style="padding-bottom:-1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A8.T4.1.2.6.1">
<span class="ltx_p" id="A8.T4.1.2.6.1.1" style="width:99.6pt;">agreement (46.3%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A8.T4.1.3">
<td class="ltx_td" id="A8.T4.1.3.1"></td>
<td class="ltx_td" id="A8.T4.1.3.2"></td>
<td class="ltx_td" id="A8.T4.1.3.3"></td>
<td class="ltx_td" id="A8.T4.1.3.4"></td>
<td class="ltx_td" id="A8.T4.1.3.5"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A8.T4.1.3.6">
<span class="ltx_inline-block ltx_align_top" id="A8.T4.1.3.6.1">
<span class="ltx_p" id="A8.T4.1.3.6.1.1" style="width:99.6pt;">social_connection (15.7%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A8.T4.1.4">
<td class="ltx_td ltx_align_left" id="A8.T4.1.4.1" style="padding-bottom:-1.0pt;">flag_post</td>
<td class="ltx_td ltx_align_center" id="A8.T4.1.4.2" style="padding-bottom:-1.0pt;">1126 (24.6%)</td>
<td class="ltx_td ltx_align_center" id="A8.T4.1.4.3" style="padding-bottom:-1.0pt;">13.5</td>
<td class="ltx_td ltx_align_center" id="A8.T4.1.4.4" style="padding-bottom:-1.0pt;">15.5</td>
<td class="ltx_td ltx_align_center" id="A8.T4.1.4.5" style="padding-bottom:-1.0pt;">71.0</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A8.T4.1.4.6" style="padding-bottom:-1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A8.T4.1.4.6.1">
<span class="ltx_p" id="A8.T4.1.4.6.1.1" style="width:99.6pt;">information_value (48.8%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A8.T4.1.5">
<td class="ltx_td" id="A8.T4.1.5.1"></td>
<td class="ltx_td" id="A8.T4.1.5.2"></td>
<td class="ltx_td" id="A8.T4.1.5.3"></td>
<td class="ltx_td" id="A8.T4.1.5.4"></td>
<td class="ltx_td" id="A8.T4.1.5.5"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A8.T4.1.5.6">
<span class="ltx_inline-block ltx_align_top" id="A8.T4.1.5.6.1">
<span class="ltx_p" id="A8.T4.1.5.6.1.1" style="width:99.6pt;">misinformation (22.4%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A8.T4.1.6">
<td class="ltx_td ltx_align_left" id="A8.T4.1.6.1" style="padding-bottom:-1.0pt;">comment</td>
<td class="ltx_td ltx_align_center" id="A8.T4.1.6.2" style="padding-bottom:-1.0pt;">880 (19.2%)</td>
<td class="ltx_td ltx_align_center" id="A8.T4.1.6.3" style="padding-bottom:-1.0pt;">96.8</td>
<td class="ltx_td ltx_align_center" id="A8.T4.1.6.4" style="padding-bottom:-1.0pt;">2.7</td>
<td class="ltx_td ltx_align_center" id="A8.T4.1.6.5" style="padding-bottom:-1.0pt;">0.5</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A8.T4.1.6.6" style="padding-bottom:-1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A8.T4.1.6.6.1">
<span class="ltx_p" id="A8.T4.1.6.6.1.1" style="width:99.6pt;">agreement (29.2%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A8.T4.1.7">
<td class="ltx_td" id="A8.T4.1.7.1"></td>
<td class="ltx_td" id="A8.T4.1.7.2"></td>
<td class="ltx_td" id="A8.T4.1.7.3"></td>
<td class="ltx_td" id="A8.T4.1.7.4"></td>
<td class="ltx_td" id="A8.T4.1.7.5"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A8.T4.1.7.6">
<span class="ltx_inline-block ltx_align_top" id="A8.T4.1.7.6.1">
<span class="ltx_p" id="A8.T4.1.7.6.1.1" style="width:99.6pt;">social_connection (27.6%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A8.T4.1.8">
<td class="ltx_td ltx_align_left" id="A8.T4.1.8.1" style="padding-bottom:-1.0pt;">follow_user</td>
<td class="ltx_td ltx_align_center" id="A8.T4.1.8.2" style="padding-bottom:-1.0pt;">719 (15.7%)</td>
<td class="ltx_td ltx_align_center" id="A8.T4.1.8.3" style="padding-bottom:-1.0pt;">98.9</td>
<td class="ltx_td ltx_align_center" id="A8.T4.1.8.4" style="padding-bottom:-1.0pt;">0.8</td>
<td class="ltx_td ltx_align_center" id="A8.T4.1.8.5" style="padding-bottom:-1.0pt;">0.3</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A8.T4.1.8.6" style="padding-bottom:-1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A8.T4.1.8.6.1">
<span class="ltx_p" id="A8.T4.1.8.6.1.1" style="width:99.6pt;">personal_interest (27.4%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A8.T4.1.9">
<td class="ltx_td" id="A8.T4.1.9.1"></td>
<td class="ltx_td" id="A8.T4.1.9.2"></td>
<td class="ltx_td" id="A8.T4.1.9.3"></td>
<td class="ltx_td" id="A8.T4.1.9.4"></td>
<td class="ltx_td" id="A8.T4.1.9.5"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A8.T4.1.9.6">
<span class="ltx_inline-block ltx_align_top" id="A8.T4.1.9.6.1">
<span class="ltx_p" id="A8.T4.1.9.6.1.1" style="width:99.6pt;">information_value (24.4%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A8.T4.1.10">
<td class="ltx_td ltx_align_left" id="A8.T4.1.10.1" style="padding-bottom:-1.0pt;">like_post</td>
<td class="ltx_td ltx_align_center" id="A8.T4.1.10.2" style="padding-bottom:-1.0pt;">463 (10.1%)</td>
<td class="ltx_td ltx_align_center" id="A8.T4.1.10.3" style="padding-bottom:-1.0pt;">92.0</td>
<td class="ltx_td ltx_align_center" id="A8.T4.1.10.4" style="padding-bottom:-1.0pt;">7.8</td>
<td class="ltx_td ltx_align_center" id="A8.T4.1.10.5" style="padding-bottom:-1.0pt;">0.2</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A8.T4.1.10.6" style="padding-bottom:-1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A8.T4.1.10.6.1">
<span class="ltx_p" id="A8.T4.1.10.6.1.1" style="width:99.6pt;">social_connection (33.6%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A8.T4.1.11">
<td class="ltx_td" id="A8.T4.1.11.1"></td>
<td class="ltx_td" id="A8.T4.1.11.2"></td>
<td class="ltx_td" id="A8.T4.1.11.3"></td>
<td class="ltx_td" id="A8.T4.1.11.4"></td>
<td class="ltx_td" id="A8.T4.1.11.5"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A8.T4.1.11.6">
<span class="ltx_inline-block ltx_align_top" id="A8.T4.1.11.6.1">
<span class="ltx_p" id="A8.T4.1.11.6.1.1" style="width:99.6pt;">agreement (23.6%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A8.T4.1.12">
<td class="ltx_td ltx_align_left" id="A8.T4.1.12.1" style="padding-bottom:-1.0pt;">ignore</td>
<td class="ltx_td ltx_align_center" id="A8.T4.1.12.2" style="padding-bottom:-1.0pt;">9 (0.2%)</td>
<td class="ltx_td ltx_align_center" id="A8.T4.1.12.3" style="padding-bottom:-1.0pt;">77.8</td>
<td class="ltx_td ltx_align_center" id="A8.T4.1.12.4" style="padding-bottom:-1.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="A8.T4.1.12.5" style="padding-bottom:-1.0pt;">22.2</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A8.T4.1.12.6" style="padding-bottom:-1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A8.T4.1.12.6.1">
<span class="ltx_p" id="A8.T4.1.12.6.1.1" style="width:99.6pt;">information_value (36.4%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A8.T4.1.13">
<td class="ltx_td" id="A8.T4.1.13.1"></td>
<td class="ltx_td" id="A8.T4.1.13.2"></td>
<td class="ltx_td" id="A8.T4.1.13.3"></td>
<td class="ltx_td" id="A8.T4.1.13.4"></td>
<td class="ltx_td" id="A8.T4.1.13.5"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A8.T4.1.13.6">
<span class="ltx_inline-block ltx_align_top" id="A8.T4.1.13.6.1">
<span class="ltx_p" id="A8.T4.1.13.6.1.1" style="width:99.6pt;">personal_interest/agreement (18.2%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A8.T4.1.14">
<td class="ltx_td ltx_align_left" id="A8.T4.1.14.1" style="padding-bottom:-1.0pt;">unfollow_user</td>
<td class="ltx_td ltx_align_center" id="A8.T4.1.14.2" style="padding-bottom:-1.0pt;">5 (0.1%)</td>
<td class="ltx_td ltx_align_center" id="A8.T4.1.14.3" style="padding-bottom:-1.0pt;">20.0</td>
<td class="ltx_td ltx_align_center" id="A8.T4.1.14.4" style="padding-bottom:-1.0pt;">40.0</td>
<td class="ltx_td ltx_align_center" id="A8.T4.1.14.5" style="padding-bottom:-1.0pt;">40.0</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A8.T4.1.14.6" style="padding-bottom:-1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A8.T4.1.14.6.1">
<span class="ltx_p" id="A8.T4.1.14.6.1.1" style="width:99.6pt;">agreement (50.0%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A8.T4.1.15">
<td class="ltx_td ltx_border_bb" id="A8.T4.1.15.1"></td>
<td class="ltx_td ltx_border_bb" id="A8.T4.1.15.2"></td>
<td class="ltx_td ltx_border_bb" id="A8.T4.1.15.3"></td>
<td class="ltx_td ltx_border_bb" id="A8.T4.1.15.4"></td>
<td class="ltx_td ltx_border_bb" id="A8.T4.1.15.5"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A8.T4.1.15.6">
<span class="ltx_inline-block ltx_align_top" id="A8.T4.1.15.6.1">
<span class="ltx_p" id="A8.T4.1.15.6.1.1" style="width:99.6pt;">emotional_reaction (16.7%)</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of agent reasoning behind various content engagement actions in a simulated social media environment.  For each action type (share_post, flag_post, comment, etc.), it shows the total number of actions, the percentage of actions categorized as positive, neutral, or negative based on sentiment analysis, and the top two most frequent reasoning categories associated with those actions.  This provides insight into how agents' internal decision-making processes and justifications relate to their observable behaviors in the simulation.
> <details>
> <summary>read the caption</summary>
> Table 4: Agent Reasoning for Content Engagement Analysis
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.07830/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07830/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07830/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07830/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07830/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07830/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07830/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07830/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07830/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07830/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07830/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07830/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07830/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07830/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07830/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07830/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07830/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07830/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07830/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07830/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}