---
title: "QLASS: Boosting Language Agent Inference via Q-Guided Stepwise Search"
summary: "QLASS boosts language agent inference by using Q-values to guide a stepwise search, improving efficiency and performance even with limited data."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 UC Los Angeles",]
showSummary: true
date: 2025-02-04
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.02584 {{< /keyword >}}
{{< keyword icon="writer" >}} Zongyu Lin et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-05 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.02584" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.02584" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.02584/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current language agents often struggle with complex interactive tasks due to the reliance on outcome-based reward models which fail to provide sufficient guidance during the reasoning process. This results in suboptimal policies and hinders overall performance.  The lack of intermediate annotations also makes training these models data-intensive and challenging.

QLASS offers a solution by introducing a Q-guided stepwise search to automatically generate annotations and improve training. **By estimating Q-values in a stepwise manner and using an exploration tree, QLASS provides effective intermediate guidance and achieves significant performance improvements.**  Even with less training data, QLASS maintains strong results, highlighting its efficiency. The method enables more effective decision-making and qualitative analysis.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} QLASS uses Q-values to provide intermediate guidance during inference, improving performance on complex interactive tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The stepwise guidance of QLASS allows for more efficient decision-making and better adaptation to long-term value. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} QLASS shows strong performance even with limited training data, demonstrating its efficiency in handling limited supervision. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it introduces a novel method for improving the inference-time performance of language agents, a crucial area of research in AI.  **QLASS addresses the limitations of existing methods that rely heavily on outcome rewards by incorporating a Q-guided stepwise search strategy.** This allows for more efficient decision-making and handling of complex tasks, even with limited training data. The findings are highly relevant to ongoing efforts in self-improving language models and open up avenues for improving the efficiency of interactive reasoning systems.

------
#### Visual Insights



![](https://arxiv.org/html/2502.02584/x1.png)

> 🔼 This figure illustrates the QLASS pipeline, a four-stage process for boosting language agent inference.  Stage 1 involves supervised fine-tuning (SFT) of a language model using expert data. Stage 2 uses the SFT agent to explore the environment and create an exploration tree for each task, estimating Q-values for each node in the tree using Equation 7. Stage 3 trains a Q-network (QNet) on the estimated Q-values. Finally, Stage 4 utilizes the trained QNet to guide the agent's inference at each step, improving decision-making.
> <details>
> <summary>read the caption</summary>
> Figure 1: QLASS pipeline overview. QLASS involves mainly four stages: 1) Supervised fine-tuning (SFT) on expert data. 2) Leverage SFT agent to explore the environment and construct an exploration tree for each task. After construction, estimate the Q-value of each tree node based on Equation 7. 3) Train QNet on the estimated Q-values. 4) Use the trained QNet to provide inference guidance at each step.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T1.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S5.T1.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.1.1.1" style="font-size:90%;">Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.1.2.1" style="font-size:90%;">#Train</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.1.3.1" style="font-size:90%;">#Test-Seen</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.1.4.1" style="font-size:90%;">#Test-Unseen</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.1.5.1" style="font-size:90%;">#Turns</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.1.1.2.1.1"><span class="ltx_text" id="S5.T1.1.1.2.1.1.1" style="font-size:90%;">WebShop</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.2.1.2"><span class="ltx_text" id="S5.T1.1.1.2.1.2.1" style="font-size:90%;">1,938</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.2.1.3"><span class="ltx_text" id="S5.T1.1.1.2.1.3.1" style="font-size:90%;">200</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.2.1.4"><span class="ltx_text" id="S5.T1.1.1.2.1.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.2.1.5"><span class="ltx_text" id="S5.T1.1.1.2.1.5.1" style="font-size:90%;">4.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.3.2">
<td class="ltx_td ltx_align_left" id="S5.T1.1.1.3.2.1"><span class="ltx_text" id="S5.T1.1.1.3.2.1.1" style="font-size:90%;">SciWorld</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.3.2.2"><span class="ltx_text" id="S5.T1.1.1.3.2.2.1" style="font-size:90%;">1,483</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.3.2.3"><span class="ltx_text" id="S5.T1.1.1.3.2.3.1" style="font-size:90%;">194</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.3.2.4"><span class="ltx_text" id="S5.T1.1.1.3.2.4.1" style="font-size:90%;">241</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.3.2.5"><span class="ltx_text" id="S5.T1.1.1.3.2.5.1" style="font-size:90%;">14.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.4.3">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T1.1.1.4.3.1"><span class="ltx_text" id="S5.T1.1.1.4.3.1.1" style="font-size:90%;">ALFWorld</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.1.1.4.3.2"><span class="ltx_text" id="S5.T1.1.1.4.3.2.1" style="font-size:90%;">3,321</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.1.1.4.3.3"><span class="ltx_text" id="S5.T1.1.1.4.3.3.1" style="font-size:90%;">140</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.1.1.4.3.4"><span class="ltx_text" id="S5.T1.1.1.4.3.4.1" style="font-size:90%;">134</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.1.1.4.3.5"><span class="ltx_text" id="S5.T1.1.1.4.3.5.1" style="font-size:90%;">10.1</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a statistical overview of the datasets used in the experiments, following the same setup as the ETO model (Song et al., 2024).  It details the number of training samples ('#Train'), test samples with seen scenarios ('Test-Seen'), test samples with unseen scenarios ('Test-Unseen'), and the average number of interactions ('#Turns') within each successful trajectory from the expert dataset for three different tasks: WebShop, SciWorld, and ALFWorld.  These statistics provide insights into the size and complexity of the datasets, which are crucial for understanding the performance of different language agents tested on these datasets.
> <details>
> <summary>read the caption</summary>
> Table 1: The statistics of datasets (We follow the same setup as ETO (Song et al., 2024)). “Test-Seen” and “Test-Unseen” are test sets with seen and unseen cases respectively. “#Turns” means the average number of interaction turns for the SFT trajectories.
> </details>





### In-depth insights


#### Stepwise Reward Shaping
Stepwise reward shaping is a crucial technique in reinforcement learning, especially when dealing with complex, long-horizon tasks.  It addresses the limitations of traditional methods that rely solely on sparse, final rewards by providing intermediate feedback at each step of a task.  This allows the agent to better understand the progress towards the final goal and learn more efficient policies. **The key benefit is improved learning efficiency, as the agent receives continuous guidance rather than only knowing the outcome at the very end.** This is especially helpful in scenarios where the optimal trajectory is not immediately apparent or involves multiple sub-goals. **By providing intermediate rewards, stepwise shaping guides the agent towards more effective decision-making.** However, designing effective stepwise rewards can be challenging.  Carefully chosen intermediate rewards should align with the overall goal, avoid misleading the agent, and ideally, be automatically generated, eliminating the need for significant manual effort.  **A poorly designed stepwise reward system can negatively impact the learning process by reinforcing suboptimal behaviors or by being overly complex and computationally expensive.**  Successful implementation of stepwise reward shaping often requires careful consideration of the task's structure, the agent's capabilities, and the characteristics of the environment.  Future research in this area could focus on developing methods for automatically generating effective stepwise rewards and adapting shaping strategies for specific problem domains.

#### QLASS Pipeline
The QLASS pipeline is a novel, four-stage process designed to enhance language agent inference. It starts with **behavior cloning**, fine-tuning a language model on expert-demonstrated trajectories.  Next, **reasoning trees** are constructed via self-generation, where the agent explores the environment, creating a tree representing various action sequences and their outcomes.  Crucially, **Q-values** are estimated for each node in the tree, providing intermediate rewards that guide learning, overcoming the limitations of sparse final-reward settings. Finally, **Q-guided generation** uses these Q-values to direct the agent's actions during inference, leading to more efficient and effective decision-making.  This stepwise approach avoids the pitfalls of solely relying on final outcomes, enabling the agent to learn from intermediate feedback and significantly improving performance, especially in complex scenarios with limited training data. The use of Q-values as a process reward is key to the pipeline's success, providing a mechanism to learn from the internal steps of a complex decision process, unlike traditional methods relying on only final outcome-based rewards.

#### Q-Value Estimation
The core of QLASS lies in its novel approach to process reward modeling using Q-value estimation.  Instead of relying on sparse, outcome-based rewards which can't effectively guide step-wise decision-making, **QLASS estimates Q-values for each step in an agent's trajectory**. This is achieved by constructing an exploration tree, where each node represents a state-action pair.  The Q-values are then calculated recursively using a modified Bellman equation, incorporating future rewards from the leaf nodes (final outcomes) to provide effective intermediate guidance. This stepwise evaluation is crucial for long-horizon, complex tasks where a single final reward is insufficient.  **The estimation process leverages the Bellman equation**, propagating future rewards back through the tree to more accurately assess the long-term value of each action at each step.  The Q-values thus serve as a strong inductive bias, enabling the language agent to make more effective decisions during inference, focusing on maximizing long-term reward rather than short-sighted gains.  The system's ability to learn from limited supervision is enhanced by this method, as **it significantly reduces the need for extensive human annotation of intermediate steps**.

#### Limited Data Efficiency
Limited data efficiency is a crucial challenge in many machine learning applications, especially those involving complex tasks such as language agent training.  The paper addresses this by proposing a novel method to enhance performance with less data. **QLASS leverages a Q-guided stepwise search approach**, generating intermediate annotations (Q-values) to guide the language agent's inference process.  This reduces reliance on outcome-based rewards which can be sparse and misleading in complex scenarios, making it particularly effective in **low-data regimes**. By implicitly generating informative feedback at each step, QLASS allows for more effective learning and better generalization, even when the amount of annotated data is significantly less than traditional methods. The experimental results demonstrate the effectiveness of this strategy in achieving strong performance with almost half the annotated data, confirming its **efficiency and robustness** in handling limited supervision.

#### Future Extensions
Future research directions for QLASS could explore several promising avenues. **Improving the Q-value estimation** is crucial; more sophisticated methods beyond Bellman updates, perhaps incorporating uncertainty estimation or model-based RL techniques, could enhance accuracy and robustness.  **Expanding the exploration tree construction** strategies is another key area; exploring more efficient tree pruning techniques, adaptive tree depths, and incorporating prior knowledge or heuristics would improve efficiency and reduce computational costs.  Furthermore, **investigating different Q-network architectures** beyond MLPs, such as transformers or graph neural networks, could potentially capture richer feature interactions and lead to better Q-value prediction.  Finally, **extending QLASS to handle more complex environments** with richer action spaces, partial observability, or non-Markovian dynamics, would demonstrate its generalizability and applicability to real-world scenarios.  The ultimate goal is to develop a more effective and efficient self-improvement method for language agents applicable across a wider range of challenging tasks.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.02584/x2.png)

> 🔼 This figure illustrates the process of building an exploration tree.  Each node in the tree represents a step in an agent's interaction with an environment. Grey nodes indicate branches that resulted in a zero reward; once a zero-reward leaf node is encountered, the algorithm stops expanding that branch. Green nodes, on the other hand, signify branches with non-zero rewards, and these branches continue to be explored.  This selective expansion strategy helps to focus computational resources on more promising trajectories.
> <details>
> <summary>read the caption</summary>
> Figure 2: Illustrative example of constructing a exploration tree. Grey nodes represent the branches with a zero outcome reward. Once the leaf node with a zero outcome reward is detected, a Stop expansion signal will be sent back to the first unexpanded node on the branch. Green nodes are on branches where zero outcome reward is not detected and can keep expanding.
> </details>



![](https://arxiv.org/html/2502.02584/x3.png)

> 🔼 This figure compares the performance of QLASS and the Best-of-N method across various search budget levels. The x-axis displays the average number of tokens used in the trajectories generated during inference across all three tasks (WebShop, SciWorld, and ALFWorld). The y-axis represents the average reward obtained for each method under different search budgets.  The plot visualizes how both methods' performance changes as the number of tokens increases, demonstrating the impact of varying search space on the final result.
> <details>
> <summary>read the caption</summary>
> Figure 3: QLASS and Best-of-N under different search budgets. The x-axis represents the number of tokens consumed by the trajectories generated during inference averaged on all the tasks in each test set.
> </details>



![](https://arxiv.org/html/2502.02584/x4.png)

> 🔼 This figure compares the performance of three different self-training methods that use varying process reward models.  All three methods leverage exploration trees created in Stage 2 of the QLASS pipeline to guide the self-training data generation process. The three process reward models are: Q-value (the proposed method from QLASS), Average Reward (which averages final rewards), and Reward (which uses back-propagated final rewards). The plot shows that using Q-values for process reward modeling leads to the best self-training performance, demonstrating the effectiveness of the proposed method.
> <details>
> <summary>read the caption</summary>
> Figure 4: Self-training baselines. The three methods marked with diagonal stripes leverage different process reward modeling based on the same exploration trees constructed in Stage 2 to guide self-training data generation.
> </details>



![](https://arxiv.org/html/2502.02584/x5.png)

> 🔼 This figure presents a comparison of the performance of QLASS and SFT (Supervised Fine-Tuning) on a specific task within the ALFWorld environment. The left side shows the steps taken by the SFT agent to complete the task of placing a cool lettuce on a countertop. The SFT agent demonstrates redundancy in its actions, repeatedly opening and closing the fridge. In contrast, the right side illustrates QLASS's efficient approach to the same task.  QLASS achieves the goal more efficiently by prioritizing actions with higher Q-values, effectively avoiding unnecessary steps and completing the task successfully.
> <details>
> <summary>read the caption</summary>
> Figure 5: One example on the ALFWorld, the right is QLASS and the left is the SFT baseline.
> </details>



![](https://arxiv.org/html/2502.02584/x6.png)

> 🔼 This figure displays the instruction prompt given to the language agent in the WebShop environment.  The prompt instructs the agent that it is engaging in a web-shopping task and should follow instructions provided.  The instructions specify that each turn, the agent will receive an observation and a list of actions, from which it must select an appropriate action.  It details that an action can be a `search` followed by keywords or a `click` on a selectable item. The prompt emphasizes that search keywords must be carefully selected and gives a template for the agent's response, which should include a thought and action.
> <details>
> <summary>read the caption</summary>
> Figure 6: The instruction prompt provided to language agent on WebShop.
> </details>



![](https://arxiv.org/html/2502.02584/x7.png)

> 🔼 This figure displays the detailed instructions given to the language agent within the SciWorld environment.  These instructions provide a comprehensive overview of the agent's capabilities, available actions, and the expected response format. The instructions detail the various actions the agent can perform, such as opening, closing, activating, deactivating devices, connecting, and disconnecting electrical components, using items, and moving objects.  It also specifies the command format the agent should use when interacting with the environment and provides a sample task for the agent to complete. This ensures the agent understands the environment's constraints and its role in completing the tasks.
> <details>
> <summary>read the caption</summary>
> Figure 7: The instruction prompt provided to language agent on SciWorld.
> </details>



![](https://arxiv.org/html/2502.02584/x8.png)

> 🔼 This figure displays the instructions given to the language agent in the ALFWorld environment.  The instructions detail the agent's role as an intelligent agent within a household setting, tasked with performing actions to accomplish a given goal.  The prompt specifies the agent's need to follow the provided format when responding. The format includes a 'Thought' section for planning, followed by an 'Action' section detailing the specific action to be performed.  Available actions are clearly listed and explained.  An example task is presented at the end of the instruction, requiring the agent to put a clean knife on the countertop. The prompt aims to guide the agent toward effective and coherent behavior within the environment.
> <details>
> <summary>read the caption</summary>
> Figure 8: The instruction prompt provided to language agent on ALFWorld.
> </details>



![](https://arxiv.org/html/2502.02584/x9.png)

> 🔼 This figure shows an example of how task descriptions are paraphrased using GPT-3.5-Turbo to increase action diversity during inference in the WebShop environment.  The original task, 'I need a long-lasting 6.76 fl oz bottle of l'eau d'issey, and price lower than 100.00 dollars,' is rephrased in four different ways, each with slightly altered wording but conveying the same essential information. This perturbation technique helps the model generate a wider variety of actions, leading to more effective exploration and improved performance.
> <details>
> <summary>read the caption</summary>
> Figure 9: An illustrative example on task perturbation.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.4.4.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.4.4.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.4.4.2.3.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.4.4.2.3.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.4.4.2.3.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.4.4.2.3.1.2.1">WebShop</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S5.4.4.2.3.1.3"><span class="ltx_text ltx_font_bold" id="S5.4.4.2.3.1.3.1">SciWorld</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.4.4.2.3.1.4"><span class="ltx_text ltx_font_bold" id="S5.4.4.2.3.1.4.1">ALFWorld</span></td>
</tr>
<tr class="ltx_tr" id="S5.4.4.2.4.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.4.4.2.4.2.1"><span class="ltx_text ltx_font_bold" id="S5.4.4.2.4.2.1.1">Seen</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.4.4.2.4.2.2"><span class="ltx_text ltx_font_bold" id="S5.4.4.2.4.2.2.1">Unseen</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.4.4.2.4.2.3"><span class="ltx_text ltx_font_bold" id="S5.4.4.2.4.2.3.1">Seen</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.4.4.2.4.2.4"><span class="ltx_text ltx_font_bold" id="S5.4.4.2.4.2.4.1">Unseen</span></td>
</tr>
<tr class="ltx_tr" id="S5.4.4.2.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.4.4.2.5.3.1">GPT-4</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.4.4.2.5.3.2">63.2</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.4.4.2.5.3.3">64.8</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.4.4.2.5.3.4">64.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.4.4.2.5.3.5">42.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.4.4.2.5.3.6">38.1</td>
</tr>
<tr class="ltx_tr" id="S5.4.4.2.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.4.4.2.6.4.1">GPT-3.5-Turbo</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.4.4.2.6.4.2">62.4</th>
<td class="ltx_td ltx_align_center" id="S5.4.4.2.6.4.3">16.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.4.4.2.6.4.4">13.0</td>
<td class="ltx_td ltx_align_center" id="S5.4.4.2.6.4.5">7.9</td>
<td class="ltx_td ltx_align_center" id="S5.4.4.2.6.4.6">10.5</td>
</tr>
<tr class="ltx_tr" id="S5.3.3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.3.3.1.1.1">Reflexion <cite class="ltx_cite ltx_citemacro_citep">(Shinn et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.02584v1#bib.bib17" title="">2023</a>)</cite><sup class="ltx_sup" id="S5.3.3.1.1.1.1">♠</sup>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.3.3.1.1.2">64.2</th>
<td class="ltx_td ltx_align_center" id="S5.3.3.1.1.3">60.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.3.3.1.1.4">64.4</td>
<td class="ltx_td ltx_align_center" id="S5.3.3.1.1.5">45.7</td>
<td class="ltx_td ltx_align_center" id="S5.3.3.1.1.6">55.2</td>
</tr>
<tr class="ltx_tr" id="S5.4.4.2.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.4.4.2.7.5.1">Base Agent (Llama-2-7B-Chat)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.4.4.2.7.5.2">17.9</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.4.4.2.7.5.3">3.8</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.4.4.2.7.5.4">3.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.4.4.2.7.5.5">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.4.4.2.7.5.6">0.0</td>
</tr>
<tr class="ltx_tr" id="S5.4.4.2.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.4.4.2.8.6.1">SFT</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.4.4.2.8.6.2">63.1</th>
<td class="ltx_td ltx_align_center" id="S5.4.4.2.8.6.3">67.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.4.4.2.8.6.4">53.0</td>
<td class="ltx_td ltx_align_center" id="S5.4.4.2.8.6.5">60.0</td>
<td class="ltx_td ltx_align_center" id="S5.4.4.2.8.6.6">67.2</td>
</tr>
<tr class="ltx_tr" id="S5.4.4.2.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.4.4.2.9.7.1">RFT <cite class="ltx_cite ltx_citemacro_citep">(Yuan et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.02584v1#bib.bib38" title="">2023</a>)</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.4.4.2.9.7.2">63.6</th>
<td class="ltx_td ltx_align_center" id="S5.4.4.2.9.7.3">71.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.4.4.2.9.7.4">54.3</td>
<td class="ltx_td ltx_align_center" id="S5.4.4.2.9.7.5">62.9</td>
<td class="ltx_td ltx_align_center" id="S5.4.4.2.9.7.6">66.4</td>
</tr>
<tr class="ltx_tr" id="S5.4.4.2.10.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.4.4.2.10.8.1">PPO <cite class="ltx_cite ltx_citemacro_citep">(Schulman et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.02584v1#bib.bib14" title="">2017</a>)</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.4.4.2.10.8.2">64.2</th>
<td class="ltx_td ltx_align_center" id="S5.4.4.2.10.8.3">59.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.4.4.2.10.8.4">51.7</td>
<td class="ltx_td ltx_align_center" id="S5.4.4.2.10.8.5">22.1</td>
<td class="ltx_td ltx_align_center" id="S5.4.4.2.10.8.6">29.1</td>
</tr>
<tr class="ltx_tr" id="S5.4.4.2.11.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.4.4.2.11.9.1">Best-of-N</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.4.4.2.11.9.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.4.4.2.11.9.2.1">67.9</span></th>
<td class="ltx_td ltx_align_center" id="S5.4.4.2.11.9.3">70.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.4.4.2.11.9.4">57.6</td>
<td class="ltx_td ltx_align_center" id="S5.4.4.2.11.9.5">62.1</td>
<td class="ltx_td ltx_align_center" id="S5.4.4.2.11.9.6">69.4</td>
</tr>
<tr class="ltx_tr" id="S5.4.4.2.12.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.4.4.2.12.10.1">ETO <cite class="ltx_cite ltx_citemacro_citep">(Song et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.02584v1#bib.bib22" title="">2024</a>)</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.4.4.2.12.10.2">67.4</th>
<td class="ltx_td ltx_align_center" id="S5.4.4.2.12.10.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.4.4.2.12.10.3.1">73.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.4.4.2.12.10.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.4.4.2.12.10.4.1">65.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.4.4.2.12.10.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.4.4.2.12.10.5.1">68.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.4.4.2.12.10.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.4.4.2.12.10.6.1">72.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.4.4.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.4.4.2.2.1">
<span class="ltx_text ltx_markedasmath" id="S5.4.4.2.2.1.1">Q</span>LASS</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.4.4.2.2.2"><span class="ltx_text ltx_font_bold" id="S5.4.4.2.2.2.1">70.3</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.4.4.2.2.3"><span class="ltx_text ltx_font_bold" id="S5.4.4.2.2.3.1">75.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.4.4.2.2.4"><span class="ltx_text ltx_font_bold" id="S5.4.4.2.2.4.1">66.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.4.4.2.2.5"><span class="ltx_text ltx_font_bold" id="S5.4.4.2.2.5.1">77.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.4.4.2.2.6"><span class="ltx_text ltx_font_bold" id="S5.4.4.2.2.6.1">82.8</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comprehensive comparison of various language agent models' performance across three distinct interactive tasks: WebShop, SciWorld, and ALFWorld.  The table is structured in two parts. The first section showcases the results obtained from closed-source, commercially available models, specifically highlighting the performance of GPT-4 (indicated by the symbol '♠'). The second part displays the performance of open-source language agent models.  For each task and model, the table presents the results for both 'seen' and 'unseen' test sets, allowing for a nuanced evaluation of generalization capabilities.  Within each column (representing a specific test set), the best-performing model's result is highlighted in bold, and the second-best result is underlined, providing a clear visual representation of the comparative performance.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance of all the baselines on WebShop, SciWorld and ALFWorld. The table is divided into two sections: the first presents the results of closed-source agents and the second includes open-sourced agents. ♠ indicates the baseline based on GPT-4o. In each column, the best result is bolded and the second-best result is underlined.111
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T3.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.2.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.2.1.2"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.2.1.2.1">WebShop</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.2.1.3"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.2.1.3.1">WebShop-1000</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.1.1.3.1.1">SFT</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.3.1.2">63.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.3.1.3">21.7</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.4.2.1">ETO</th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.4.2.2">67.4</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.4.2.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.1.1.4.2.3.1">66.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.5.3.1">Best-of-N</th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.5.3.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.1.1.5.3.2.1">67.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.5.3.3">47.1</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T3.1.1.1.1">
<span class="ltx_text ltx_markedasmath" id="S5.T3.1.1.1.1.1">Q</span>LASS</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.2.1">70.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.3.1">67.3</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of average reward scores achieved by different methods on the WebShop dataset.  The experiment used only 1000 annotated trajectories for behavior cloning, representing a reduced data scenario.  The best performing method's score is highlighted in bold, and the second-best is underlined.  This allows for an evaluation of the methods' robustness and effectiveness under limited data conditions.
> <details>
> <summary>read the caption</summary>
> Table 3: Average reward comparison on WebShop with 1000 annotated trajectories for behavior cloning. The best result is bolded, and the second-best result is underlined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T4.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T4.1.1.2.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.2.1.1.1">Base LLM</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T4.1.1.2.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.2.1.2.1">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T4.1.1.2.1.3"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.2.1.3.1">SciWorld</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.3.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.3.2.1">Seen</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.3.2.2">Unseen</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.1.1.4.3.1" rowspan="2"><span class="ltx_text" id="S5.T4.1.1.4.3.1.1">Llama-2-13B</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.1.1.4.3.2">SFT</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.4.3.3">68.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.4.3.4">57.6</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.1.5.4.1">ETO</th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.5.4.2">71.4</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.5.4.3">68.6</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_bb" id="S5.T4.1.1.1.2"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T4.1.1.1.1">
<span class="ltx_text ltx_markedasmath" id="S5.T4.1.1.1.1.1">Q</span>LASS</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.1.1.3">72.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.1.1.4">69.3</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of different models on the SciWorld benchmark, using a larger language model (Llama-2-13B) as the base model. It showcases the results of three different approaches: the standard supervised fine-tuning (SFT), the self-improvement method ETO, and the proposed QLASS method. The table highlights the performance of each approach in terms of the average reward obtained on the seen and unseen test sets of SciWorld.
> <details>
> <summary>read the caption</summary>
> Table 4: The performance on a different base LLM on SciWorld.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T5.8">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.8.7.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T5.8.7.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.8.7.1.1.1">Hyperparameter</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.8.7.1.2"><span class="ltx_text ltx_font_bold" id="A1.T5.8.7.1.2.1">Value</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.8.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.8.8.2.1">Batch size</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.8.8.2.2">64</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.9.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.8.9.3.1">Number of training epochs</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.8.9.3.2">3</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.10.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.8.10.4.1">Weight decay</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.8.10.4.2">0.0</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.11.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.8.11.5.1">Warmup ratio</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.8.11.5.2">0.03</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.12.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.8.12.6.1">Learning rate</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.8.12.6.2">1e-5</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.13.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.8.13.7.1">LR scheduler type</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.8.13.7.2">Cosine</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.14.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.8.14.8.1">Logging steps</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.8.14.8.2">5</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.15.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.8.15.9.1">Model max length</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.8.15.9.2">4096</td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.3.1.1">Discount factor <math alttext="\gamma" class="ltx_Math" display="inline" id="A1.T5.3.1.1.m1.1"><semantics id="A1.T5.3.1.1.m1.1a"><mi id="A1.T5.3.1.1.m1.1.1" xref="A1.T5.3.1.1.m1.1.1.cmml">γ</mi><annotation-xml encoding="MathML-Content" id="A1.T5.3.1.1.m1.1b"><ci id="A1.T5.3.1.1.m1.1.1.cmml" xref="A1.T5.3.1.1.m1.1.1">𝛾</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.3.1.1.m1.1c">\gamma</annotation><annotation encoding="application/x-llamapun" id="A1.T5.3.1.1.m1.1d">italic_γ</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.3.1.2">0.9</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.4.2.1">Maximum expansion depth <math alttext="D" class="ltx_Math" display="inline" id="A1.T5.4.2.1.m1.1"><semantics id="A1.T5.4.2.1.m1.1a"><mi id="A1.T5.4.2.1.m1.1.1" xref="A1.T5.4.2.1.m1.1.1.cmml">D</mi><annotation-xml encoding="MathML-Content" id="A1.T5.4.2.1.m1.1b"><ci id="A1.T5.4.2.1.m1.1.1.cmml" xref="A1.T5.4.2.1.m1.1.1">𝐷</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.4.2.1.m1.1c">D</annotation><annotation encoding="application/x-llamapun" id="A1.T5.4.2.1.m1.1d">italic_D</annotation></semantics></math> on WebShop</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.4.2.2">3</td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.5.3.1">Maximum expansion depth <math alttext="D" class="ltx_Math" display="inline" id="A1.T5.5.3.1.m1.1"><semantics id="A1.T5.5.3.1.m1.1a"><mi id="A1.T5.5.3.1.m1.1.1" xref="A1.T5.5.3.1.m1.1.1.cmml">D</mi><annotation-xml encoding="MathML-Content" id="A1.T5.5.3.1.m1.1b"><ci id="A1.T5.5.3.1.m1.1.1.cmml" xref="A1.T5.5.3.1.m1.1.1">𝐷</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.5.3.1.m1.1c">D</annotation><annotation encoding="application/x-llamapun" id="A1.T5.5.3.1.m1.1d">italic_D</annotation></semantics></math> on SciWorld</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.3.2">6</td>
</tr>
<tr class="ltx_tr" id="A1.T5.6.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.6.4.1">Maximum expansion depth <math alttext="D" class="ltx_Math" display="inline" id="A1.T5.6.4.1.m1.1"><semantics id="A1.T5.6.4.1.m1.1a"><mi id="A1.T5.6.4.1.m1.1.1" xref="A1.T5.6.4.1.m1.1.1.cmml">D</mi><annotation-xml encoding="MathML-Content" id="A1.T5.6.4.1.m1.1b"><ci id="A1.T5.6.4.1.m1.1.1.cmml" xref="A1.T5.6.4.1.m1.1.1">𝐷</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.6.4.1.m1.1c">D</annotation><annotation encoding="application/x-llamapun" id="A1.T5.6.4.1.m1.1d">italic_D</annotation></semantics></math> on ALFWorld</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.6.4.2">8</td>
</tr>
<tr class="ltx_tr" id="A1.T5.7.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.7.5.1">Action candidate set size <math alttext="M" class="ltx_Math" display="inline" id="A1.T5.7.5.1.m1.1"><semantics id="A1.T5.7.5.1.m1.1a"><mi id="A1.T5.7.5.1.m1.1.1" xref="A1.T5.7.5.1.m1.1.1.cmml">M</mi><annotation-xml encoding="MathML-Content" id="A1.T5.7.5.1.m1.1b"><ci id="A1.T5.7.5.1.m1.1.1.cmml" xref="A1.T5.7.5.1.m1.1.1">𝑀</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.7.5.1.m1.1c">M</annotation><annotation encoding="application/x-llamapun" id="A1.T5.7.5.1.m1.1d">italic_M</annotation></semantics></math> for inference</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.7.5.2">2</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.8.6.1">Sampled trajectory number <math alttext="N" class="ltx_Math" display="inline" id="A1.T5.8.6.1.m1.1"><semantics id="A1.T5.8.6.1.m1.1a"><mi id="A1.T5.8.6.1.m1.1.1" xref="A1.T5.8.6.1.m1.1.1.cmml">N</mi><annotation-xml encoding="MathML-Content" id="A1.T5.8.6.1.m1.1b"><ci id="A1.T5.8.6.1.m1.1.1.cmml" xref="A1.T5.8.6.1.m1.1.1">𝑁</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.8.6.1.m1.1c">N</annotation><annotation encoding="application/x-llamapun" id="A1.T5.8.6.1.m1.1d">italic_N</annotation></semantics></math> for self-training</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.8.6.2">1</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.16.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A1.T5.8.16.10.1">Exploration temperature</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T5.8.16.10.2">0.7</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used in the QLASS model, including batch size, number of training epochs, weight decay, learning rate, learning rate scheduler type, logging steps, model maximum length, discount factor, maximum expansion depth for each environment, action candidate set size for inference, sampled trajectory number for self-training, and exploration temperature.  These parameters control various aspects of the model's training and inference process.
> <details>
> <summary>read the caption</summary>
> Table 5: Hyperparameters used in QLASS.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.02584/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02584/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02584/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02584/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02584/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02584/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02584/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02584/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02584/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02584/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02584/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02584/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02584/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02584/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02584/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02584/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.02584/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}