---
title: "SynWorld: Virtual Scenario Synthesis for Agentic Action Knowledge Refinement"
summary: "SynWorld: Agents learn action knowledge in virtual scenarios via MCTS, enhancing real-world generalization."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Zhejiang University",]
showSummary: true
date: 2025-04-04
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.03561 {{< /keyword >}}
{{< keyword icon="writer" >}} Runnan Fang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-07 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.03561" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.03561" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.03561/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

LLM-based agents struggle in new environments due to static knowledge limitations. Manually creating environment descriptions for agent learning is time-consuming. To tackle these, this paper introduces **SynWorld**, a framework for agents to synthesize scenarios with multi-step action invocation. Then, agents learn new environments with Monte Carlo Tree Search (MCTS) exploration to refine action knowledge effectively.



With SynWorld, agents explore synthesized virtual scenarios via MCTS to optimize action knowledge by learning how to plan. Experiments show action knowledge learned in **SynWorld generalizes to the real world**. The framework enables thorough refinement between action descriptions and workflow patterns, ensuring better alignment with environmental constraints.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SynWorld, synthesizes virtual scenarios for action knowledge refinement. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} MCTS enhances action knowledge exploration within virtual environments. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Virtual learning in SynWorld generalizes effectively to real-world tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This study introduces a new approach to **improve agent learning in novel environments**, potentially **reducing reliance on labor-intensive methods**. It provides insights and a new direction for future research.

------
#### Visual Insights



![](https://arxiv.org/html/2504.03561/x1.png)

> 🔼 This figure illustrates the SynWorld framework, which synthesizes virtual scenarios for multi-step action invocation.  The framework uses Monte Carlo Tree Search (MCTS) to explore these scenarios and refine the agent's action knowledge. It shows the interaction between the agent, the environment, and the synthesized scenarios, highlighting the feedback loop and iterative refinement process for improved action execution and planning.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Our method with exploration to refine action knowledge in Synthesized Scenario.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.1.1">
<tr class="ltx_tr" id="S4.T1.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T1.1.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.2.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S4.T1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.3.1">ToolBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1.4" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.4.1">HotpotQA</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.2">
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.2.1">PASS</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.2.2">WIN</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.1.3.1" rowspan="5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.3.1.1">GPT-4-turbo</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.1.1.3.2">ReAct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.3">50.67</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.1.3.4">67.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.5">54.61</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.1.1.4.1">Self-Refine</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.2">56.80</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.4.3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.4.3.1">73.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.4">55.85</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.1.1.5.1">EasyTool</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.2">51.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.5.3">68.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4">58.19</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.1.1.6.1">DRAFT</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.2">54.83</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.6.3">72.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.4">57.71</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.1.1.7.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.7.1.1" style="background-color:#E6E6E6;">Ours</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.2" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.7.2.1" style="background-color:#E6E6E6;">59.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.7.3" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.7.3.1" style="background-color:#E6E6E6;">73.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.4" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.7.4.1" style="background-color:#E6E6E6;">59.93</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.8">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T1.1.1.8.1" rowspan="5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.8.1.1">Qwen-long</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.1.1.8.2">ReAct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.8.3">48.30</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.1.8.4">71.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.8.5">52.00</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.1.1.9.1">Self-Refine</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.2">53.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.9.3">77.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.4">56.10</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.1.1.10.1">EasyTool</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.2">50.80</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.10.3">63.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.4">58.34</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.1.1.11.1">DRAFT</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.2">54.20</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.11.3">79.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.4">53.23</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.12">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T1.1.1.12.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.12.1.1" style="background-color:#E6E6E6;">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.12.2" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.12.2.1" style="background-color:#E6E6E6;">57.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.1.1.12.3" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.12.3.1" style="background-color:#E6E6E6;">81.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.12.4" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.12.4.1" style="background-color:#E6E6E6;">59.91</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the main experimental results, comparing the performance of the proposed SynWorld framework against several strong baseline models on two benchmark datasets: ToolBench and HotpotQA.  The results are presented in terms of PASS rate (percentage of tasks successfully completed) and WIN rate (percentage of times the model's trajectory outperforms that of GPT-3.5-turbo using the ReAct method).  The best performance for each model across both datasets is highlighted in bold. This allows for a comprehensive comparison of SynWorld's effectiveness in optimizing action knowledge for complex, multi-step tasks.
> <details>
> <summary>read the caption</summary>
> Table 1: Main results of SynWorld compared to other baselines on ToolBench and HotpotQA. The best results of each model are marked in bold. PASS means the pass rate and WIN means the win rate of the trajectory compared to GPT-3.5-turbo in the method of ReAct.
> </details>





### In-depth insights


#### Action Refinement
Action refinement, a vital area in AI, particularly for agents interacting within environments, focuses on enhancing action execution. **LLMs demonstrate enhanced environmental interactivity** and versatility, but they need refinement due to static knowledge limitations. Action refinement addresses challenges in dynamic settings, refining descriptions and workflows for better environmental alignment. This area often involves feedback loops and iterative optimization, similar to how humans learn, emphasizing trial and error in simulated environments. **The use of MCTS plays a crucial role**, which enables exploration and bidirectional refinement between action descriptions and workflow patterns for ensuring better alignment with environmental constraints. The goal is to learn action knowledge adaptable to complex environments, going beyond single-action scenarios. 

#### Scenario Synthesis
Scenario synthesis, a crucial aspect of agentic learning, involves creating simulated environments where agents can interact, learn, and refine their action knowledge. **This process bridges the gap between static knowledge inherent in LLMs and the dynamic demands of real-world tasks.** Effective scenario synthesis necessitates careful consideration of environment complexity, task relevance, and the diversity of action sequences allowed. The generated scenarios must offer sufficient challenge to push the agent beyond its initial capabilities, but also remain grounded in realistic action spaces to ensure transferability of learned knowledge. **The design of scenario synthesis needs to involve various task parameters to explore and learn better.** Furthermore, the quality of feedback mechanisms within these simulated environments is paramount, as it directly influences the agent's ability to correct errors and optimize its workflows. Therefore, generating quality and reliable scenarios is an important direction.

#### MCTS Exploration
**MCTS (Monte Carlo Tree Search) exploration** emerges as a crucial strategy, particularly when refining agent behavior within simulated environments. Its strength lies in balancing exploration (discovering new possibilities) and exploitation (leveraging known good actions). In the context of **action knowledge refinement**, MCTS allows agents to navigate the complex action space more efficiently by simulating possible scenarios and evaluating the outcomes of different action sequences. Through iterative simulations and backpropagation of rewards, the agents can refine their understanding of the environment and improve decision-making capabilities, ultimately leading to a better action knowledge. By using MCTS, the learning process is not simply a linear process but a targeted and strategic approach of understanding the action space.

#### Env Alignment
**Environment Alignment** is crucial for agents acting in the real world. Agents, especially those leveraging LLMs, need to understand and adapt to their operational context. This involves accurately perceiving the environment's state, interpreting feedback from actions, and refining action knowledge accordingly. **Misalignment** can lead to ineffective plans, task failures, and even safety risks. Strategies for environment alignment include incorporating real-time data, using multi-modal inputs, and employing feedback loops for continuous learning and adaptation. Regular evaluation in diverse and dynamic settings is essential to ensure robust and reliable performance. Further challenges are in **maintaining alignment** over long periods, especially as the environment evolves or the agent's goals shift. 

#### Scalability Tests
**Scalability tests are vital** in evaluating the performance of a system as its workload increases. The primary goal is to determine the system's ability to handle growing amounts of data, users, and transactions without experiencing unacceptable degradation in service quality. Key metrics often monitored include **response time, throughput, resource utilization (CPU, memory, disk I/O), and error rates.** The tests should cover various aspects of scalability, such as **vertical scalability (adding more resources to a single node) and horizontal scalability (adding more nodes to the system).** Gradual and sudden increases in load can also identify different types of bottlenecks. Furthermore, the test needs to accurately simulates real-world usage scenarios and workloads and considers long-term performance. By thoroughly testing these aspects, we can assess **whether the system meets the scalability requirements** and identifies areas for optimization or architectural improvements.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.03561/x2.png)

> 🔼 SynWorld's framework consists of two main steps. First, it extracts composable tools to create new scenes and tasks by synthesizing virtual scenarios.  Second, agents explore these scenarios using Monte Carlo Tree Search (MCTS) to refine their action knowledge. This iterative process optimizes actions and plans, enabling agents to learn how to execute actions and plan tasks effectively in unfamiliar environments.
> <details>
> <summary>read the caption</summary>
> Figure 2: The overall framework of SynWorld: we first extract composable tools from the toolkit to generate new scenes and tasks. Then, we allow agents to explore the synthesized virtual scenes using MCTS to optimize action knowledge, thereby learning how to execute actions and plan tasks.
> </details>



![](https://arxiv.org/html/2504.03561/x3.png)

> 🔼 This figure displays the relationship between the number of exploration scenarios used and the success rate of agents performing tasks in the ToolBench dataset.  The x-axis represents the number of exploration scenarios, while the y-axis shows the pass rate (percentage of successful task completions). The plot reveals how the agents' performance improves as they are exposed to more varied scenarios, indicating a positive correlation between scenario diversity and task completion success.
> <details>
> <summary>read the caption</summary>
> Figure 3: The variation in the pass rate of agents on the ToolBench in relation to the number of exploration scenarios.
> </details>



![](https://arxiv.org/html/2504.03561/x4.png)

> 🔼 This figure shows how the performance of agents on the ToolBench dataset changes as the number of iterative optimizations in a simulated environment increases.  Two lines are plotted: one showing the pass rate in the virtual (simulated) environment, and another showing the pass rate in the real world, after transferring knowledge gained during virtual training.  The x-axis represents the number of iterations of optimization, and the y-axis shows the pass rate (percentage of tasks completed successfully). The graph illustrates how virtual training improves performance, and how the benefit of this training transfers to real-world scenarios. The virtual pass rate shows improvement that plateaus over time indicating a limit to the improvement from the virtual training. The real world pass rate also improves but does not quite reach the level of performance seen in the virtual environment.
> <details>
> <summary>read the caption</summary>
> Figure 4: Changes in ToolBench pass rates in virtual and real-world scenarios with the number of iterative optimizations performed in the virtual environment.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.1">
<tr class="ltx_tr" id="S4.T2.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T2.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.2.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.3.1">Pass Rate</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.2">
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T2.1.2.1"></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.1.2.2" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T2.1.2.2.1" style="background-color:#E6E6E6;">SynWorld</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.3" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T2.1.2.3.1" style="background-color:#E6E6E6;">59.33</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.3.1">GPT-4-turbo</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.3.2">   w/o. Workflow</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.3">56.33<span class="ltx_text" id="S4.T2.1.3.3.1" style="color:#FF0000;">-3.00</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.4">
<td class="ltx_td ltx_border_r" id="S4.T2.1.4.1"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.4.2">   w/o. Description</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.3">53.16<span class="ltx_text" id="S4.T2.1.4.3.1" style="color:#FF0000;">-6.17</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.5">
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T2.1.5.1"></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.1.5.2" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T2.1.5.2.1" style="background-color:#E6E6E6;">SynWorld</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.5.3" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T2.1.5.3.1" style="background-color:#E6E6E6;">57.20</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.6.1">Qwen-long</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.6.2">   w/o. Workflow</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.6.3">57.00<span class="ltx_text" id="S4.T2.1.6.3.1" style="color:#FF0000;">-0.20</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.7">
<td class="ltx_td ltx_border_bb ltx_border_r" id="S4.T2.1.7.1"></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T2.1.7.2">   w/o. Description</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.7.3">53.83<span class="ltx_text" id="S4.T2.1.7.3.1" style="color:#FF0000;">-3.37</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation experiments conducted to evaluate the impact of different components of the SynWorld framework. Specifically, it shows the performance when either workflow optimization or tool description refinement is excluded, compared to when both are included.  The results highlight the synergistic effect of optimizing both aspects for improved performance.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablation experiment results
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T3.1.1">
<tr class="ltx_tr" id="A3.T3.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A3.T3.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.1.1.1.1.1">
<span class="ltx_p" id="A3.T3.1.1.1.1.1.1" style="width:398.3pt;"><span class="ltx_text ltx_font_bold" id="A3.T3.1.1.1.1.1.1.1">Prompt for Tool Description in Action knowledge</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T3.1.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.1.1.2.1.1">
<span class="ltx_p" id="A3.T3.1.1.2.1.1.1" style="width:398.3pt;">Analyze the following tool execution trajectories to improve tool interface documentation.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.1.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.1.1.3.1.1">
<span class="ltx_p" id="A3.T3.1.1.3.1.1.1" style="width:398.3pt;">For all trajectories:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.1.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.1.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.1.1.4.1.1">
<span class="ltx_p" id="A3.T3.1.1.4.1.1.1" style="width:398.3pt;">1. Identify functional mismatches between original description and actual usage patterns</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.1.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.1.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.1.1.5.1.1">
<span class="ltx_p" id="A3.T3.1.1.5.1.1.1" style="width:398.3pt;">2. Detect parameter inefficiencies (missing/underutilized fields)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.1.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.1.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.1.1.6.1.1">
<span class="ltx_p" id="A3.T3.1.1.6.1.1.1" style="width:398.3pt;">3. Extract implicit requirements from error patterns</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.1.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.1.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.1.1.7.1.1">
<span class="ltx_p" id="A3.T3.1.1.7.1.1.1" style="width:398.3pt;">4. Generate enhanced documentation with:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.1.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.1.1.8.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.1.1.8.1.1">
<span class="ltx_p" id="A3.T3.1.1.8.1.1.1" style="width:398.3pt;">Clear input specifications (required vs optional)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.1.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.1.1.9.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.1.1.9.1.1">
<span class="ltx_p" id="A3.T3.1.1.9.1.1.1" style="width:398.3pt;">Contextual usage guidelines</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.1.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.1.1.10.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.1.1.10.1.1">
<span class="ltx_p" id="A3.T3.1.1.10.1.1.1" style="width:398.3pt;">Error prevention tips</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.1.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.1.1.11.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.1.1.11.1.1">
<span class="ltx_p" id="A3.T3.1.1.11.1.1.1" style="width:398.3pt;">Response format expectations</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.1.12">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.1.1.12.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.1.1.12.1.1">
<span class="ltx_p" id="A3.T3.1.1.12.1.1.1" style="width:398.3pt;">Here is an <span class="ltx_text ltx_font_bold" id="A3.T3.1.1.12.1.1.1.1">example</span>.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.1.13">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.1.1.13.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.1.1.13.1.1">
<span class="ltx_p" id="A3.T3.1.1.13.1.1.1" style="width:398.3pt;">Now it’s your turn to analyze the following tool execution trajectories to improve tool interface documentation.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.1.14">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.1.1.14.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.1.1.14.1.1">
<span class="ltx_p" id="A3.T3.1.1.14.1.1.1" style="width:398.3pt;">tool_name: <span class="ltx_text ltx_font_bold" id="A3.T3.1.1.14.1.1.1.1">tool_name</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.1.15">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.1.1.15.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.1.1.15.1.1">
<span class="ltx_p" id="A3.T3.1.1.15.1.1.1" style="width:398.3pt;">original_description: <span class="ltx_text ltx_font_bold" id="A3.T3.1.1.15.1.1.1.1">original_description</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.1.16">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.1.1.16.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.1.1.16.1.1">
<span class="ltx_p" id="A3.T3.1.1.16.1.1.1" style="width:398.3pt;">trajectory: <span class="ltx_text ltx_font_bold" id="A3.T3.1.1.16.1.1.1.1">trajectory</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.1.17">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.1.1.17.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.1.1.17.1.1">
<span class="ltx_p" id="A3.T3.1.1.17.1.1.1" style="width:398.3pt;">Please provide your Optimize Description for the tool. Just modify the description part and do not change the parameters description.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T3.1.1.18">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A3.T3.1.1.18.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.1.1.18.1.1">
<span class="ltx_p" id="A3.T3.1.1.18.1.1.1" style="width:398.3pt;">Make Sure your description is clear and concise.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table shows the prompt used in the SynWorld framework for refining tool documentation.  The prompt instructs the model to analyze tool execution trajectories, identify discrepancies between the original description and actual usage, and enhance the documentation with clear input specifications, contextual guidelines, error prevention tips, and response format expectations. The goal is to improve the accuracy and clarity of the tool documentation.
> <details>
> <summary>read the caption</summary>
> Table 3: Prompt used for tool document refinement.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T4.1.1">
<tr class="ltx_tr" id="A3.T4.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A3.T4.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.1.1.1.1">
<span class="ltx_p" id="A3.T4.1.1.1.1.1.1" style="width:398.3pt;"><span class="ltx_text ltx_font_bold" id="A3.T4.1.1.1.1.1.1.1">Prompt for Workflow in Action knowledge</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.1.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.1.2.1.1">
<span class="ltx_p" id="A3.T4.1.1.2.1.1.1" style="width:398.3pt;">Analyze the provided interaction trajectory and existing workflow steps to derive a generalized, reusable workflow for similar tool calling tasks.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T4.1.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.1.3.1.1">
<span class="ltx_p" id="A3.T4.1.1.3.1.1.1" style="width:398.3pt;">1. Analyzing error patterns (authentication gaps, deprecated endpoints) and tool dependencies from interaction histories.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T4.1.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.1.4.1.1">
<span class="ltx_p" id="A3.T4.1.1.4.1.1.1" style="width:398.3pt;">2. Extracting implicit requirements (authentication, sorting logic) and mandatory parameters from error responses.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T4.1.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.1.5.1.1">
<span class="ltx_p" id="A3.T4.1.1.5.1.1.1" style="width:398.3pt;">3. Structuring a generic workflow with authentication validation, parameter checks, state management between API calls, and error fallbacks.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T4.1.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.1.6.1.1">
<span class="ltx_p" id="A3.T4.1.1.6.1.1.1" style="width:398.3pt;">Here is an <span class="ltx_text ltx_font_bold" id="A3.T4.1.1.6.1.1.1.1">example</span>.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T4.1.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.1.7.1.1">
<span class="ltx_p" id="A3.T4.1.1.7.1.1.1" style="width:398.3pt;">Now it’s your turn.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T4.1.1.8.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.1.8.1.1">
<span class="ltx_p" id="A3.T4.1.1.8.1.1.1" style="width:398.3pt;">Existing Workflow: <span class="ltx_text ltx_font_bold" id="A3.T4.1.1.8.1.1.1.1">workflow</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T4.1.1.9.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.1.9.1.1">
<span class="ltx_p" id="A3.T4.1.1.9.1.1.1" style="width:398.3pt;">Trajectory: <span class="ltx_text ltx_font_bold" id="A3.T4.1.1.9.1.1.1.1">trajectory</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.10">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A3.T4.1.1.10.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.1.10.1.1">
<span class="ltx_p" id="A3.T4.1.1.10.1.1.1" style="width:398.3pt;">Please provide your Optimize Workflow for the task. And make sure your workflow is clear and concise and no longer than 200 words.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table shows the prompt used to generate a workflow for tool usage within the SynWorld framework.  The prompt instructs the model to analyze a provided interaction trajectory and existing workflow steps to create a generalized, reusable workflow for similar tasks. It specifically guides the model to address error patterns, extract implicit requirements, and structure the workflow with essential components such as authentication, parameter checks, state management, and error handling.
> <details>
> <summary>read the caption</summary>
> Table 4: Prompt used for workflow generation.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.03561/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03561/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03561/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03561/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03561/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03561/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03561/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03561/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03561/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03561/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03561/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}