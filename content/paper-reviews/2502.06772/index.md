---
title: "ReasonFlux: Hierarchical LLM Reasoning via Scaling Thought Templates"
summary: "ReasonFlux boosts LLM mathematical reasoning by using hierarchical thought templates, outperforming top LLMs like OpenAI's 01-preview and DeepSeek V3."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Princeton University",]
showSummary: true
date: 2025-02-10
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.06772 {{< /keyword >}}
{{< keyword icon="writer" >}} Ling Yang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.06772" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.06772" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.06772/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) have shown impressive capabilities but struggle with complex reasoning tasks like solving mathematical problems. Existing methods often face challenges with efficiency and generalizability, especially when dealing with complex problems requiring multiple reasoning steps.  This necessitates more efficient and generalizable inference scaling approaches for enhanced reasoning performance.

ReasonFlux addresses this challenge by introducing a hierarchical LLM reasoning framework that leverages a structured library of thought templates, hierarchical reinforcement learning to optimize template trajectories, and a novel inference scaling system. This allows ReasonFlux to effectively scale its reasoning capabilities to complex problems. Results demonstrate ReasonFlux's significant outperformance over state-of-the-art LLMs in mathematical reasoning benchmarks, showcasing its efficiency and effectiveness.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} ReasonFlux uses a hierarchical LLM reasoning framework via scaling thought templates to significantly improve complex reasoning capabilities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} ReasonFlux introduces a structured thought template library and hierarchical reinforcement learning to optimize template trajectories. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} ReasonFlux's novel inference scaling system dynamically selects templates, achieving state-of-the-art accuracy on math benchmarks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it presents **ReasonFlux**, a novel approach to improve large language model reasoning capabilities.  ReasonFlux's hierarchical framework and efficient template scaling system offers a **significant advancement** over existing methods, achieving state-of-the-art results on various mathematical reasoning benchmarks.  This work opens **new avenues for research** in hierarchical reasoning, efficient inference scaling, and the design of structured knowledge bases for LLMs.

------
#### Visual Insights



![](https://arxiv.org/html/2502.06772/x1.png)

> 🔼 The figure illustrates the training process of ReasonFlux, a hierarchical LLM reasoning framework.  ReasonFlux uses hierarchical reinforcement learning to learn an optimal sequence of thought templates for solving problems.  The process begins with input problems that are analyzed and retrieved from a thought template library. These templates are evaluated and scored to create preference trajectory pairs which are then used in the hierarchical reinforcement learning stage. The result is a model that can plan an optimal and generalizable thought template trajectory for a given problem.  A more detailed inference-scaling framework is described in Figure 2 of the paper.
> <details>
> <summary>read the caption</summary>
> Figure 1: Training framework for our ReasonFlux. We train with hierarchical reinforcement learning to enable the model to plan out an optimal and generalizable thought template trajectory for an input problem. Our new inference-scaling framework is in Figure 2.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S0.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S0.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S0.T1.1.1.1.1">Task</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S0.T1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S0.T1.1.1.1.2.1">ReasonFlux</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S0.T1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S0.T1.1.1.1.3.1">DeepSeek</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S0.T1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S0.T1.1.1.1.4.1">OpenAI</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S0.T1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S0.T1.1.1.1.5.1">OpenAI</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S0.T1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S0.T1.1.1.1.6.1">QWQ</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S0.T1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S0.T1.1.1.1.7.1">GPT</span></th>
</tr>
<tr class="ltx_tr" id="S0.T1.1.2.2">
<th class="ltx_td ltx_th ltx_th_row" id="S0.T1.1.2.2.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S0.T1.1.2.2.2"><span class="ltx_text ltx_font_bold" id="S0.T1.1.2.2.2.1">32B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S0.T1.1.2.2.3"><span class="ltx_text ltx_font_bold" id="S0.T1.1.2.2.3.1">V3</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S0.T1.1.2.2.4"><span class="ltx_text ltx_font_bold" id="S0.T1.1.2.2.4.1">o1-preview</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S0.T1.1.2.2.5"><span class="ltx_text ltx_font_bold" id="S0.T1.1.2.2.5.1">o1-mini</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S0.T1.1.2.2.6"><span class="ltx_text ltx_font_bold" id="S0.T1.1.2.2.6.1">32B-preview</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S0.T1.1.2.2.7"><span class="ltx_text ltx_font_bold" id="S0.T1.1.2.2.7.1">4o</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S0.T1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S0.T1.1.3.1.1">MATH</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T1.1.3.1.2"><span class="ltx_text ltx_font_bold" id="S0.T1.1.3.1.2.1">91.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T1.1.3.1.3">90.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T1.1.3.1.4">85.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T1.1.3.1.5">90.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T1.1.3.1.6">90.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T1.1.3.1.7">76.6</td>
</tr>
<tr class="ltx_tr" id="S0.T1.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S0.T1.1.4.2.1">AIME 2024</th>
<td class="ltx_td ltx_align_center" id="S0.T1.1.4.2.2"><span class="ltx_text ltx_font_bold" id="S0.T1.1.4.2.2.1">56.7</span></td>
<td class="ltx_td ltx_align_center" id="S0.T1.1.4.2.3">39.2</td>
<td class="ltx_td ltx_align_center" id="S0.T1.1.4.2.4">44.6</td>
<td class="ltx_td ltx_align_center" id="S0.T1.1.4.2.5">56.7</td>
<td class="ltx_td ltx_align_center" id="S0.T1.1.4.2.6">50.0</td>
<td class="ltx_td ltx_align_center" id="S0.T1.1.4.2.7">9.3</td>
</tr>
<tr class="ltx_tr" id="S0.T1.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S0.T1.1.5.3.1">Olympiad Bench</th>
<td class="ltx_td ltx_align_center" id="S0.T1.1.5.3.2"><span class="ltx_text ltx_font_bold" id="S0.T1.1.5.3.2.1">63.3</span></td>
<td class="ltx_td ltx_align_center" id="S0.T1.1.5.3.3">55.4</td>
<td class="ltx_td ltx_align_center" id="S0.T1.1.5.3.4">-</td>
<td class="ltx_td ltx_align_center" id="S0.T1.1.5.3.5">65.3</td>
<td class="ltx_td ltx_align_center" id="S0.T1.1.5.3.6">61.2</td>
<td class="ltx_td ltx_align_center" id="S0.T1.1.5.3.7">43.3</td>
</tr>
<tr class="ltx_tr" id="S0.T1.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S0.T1.1.6.4.1">GaokaoEn 2023</th>
<td class="ltx_td ltx_align_center" id="S0.T1.1.6.4.2"><span class="ltx_text ltx_font_bold" id="S0.T1.1.6.4.2.1">83.6</span></td>
<td class="ltx_td ltx_align_center" id="S0.T1.1.6.4.3">-</td>
<td class="ltx_td ltx_align_center" id="S0.T1.1.6.4.4">71.4</td>
<td class="ltx_td ltx_align_center" id="S0.T1.1.6.4.5">78.4</td>
<td class="ltx_td ltx_align_center" id="S0.T1.1.6.4.6">65.3</td>
<td class="ltx_td ltx_align_center" id="S0.T1.1.6.4.7">67.5</td>
</tr>
<tr class="ltx_tr" id="S0.T1.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S0.T1.1.7.5.1">AMC2023</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S0.T1.1.7.5.2"><span class="ltx_text ltx_font_bold" id="S0.T1.1.7.5.2.1">85.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S0.T1.1.7.5.3">80.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S0.T1.1.7.5.4">90.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S0.T1.1.7.5.5">95.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S0.T1.1.7.5.6">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S0.T1.1.7.5.7">47.5</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a performance comparison of various LLMs on several mathematical reasoning benchmarks.  The benchmarks used are MATH, AIME 2024, an Olympiad benchmark, GaokaoEn 2023, and AMC 2023.  For each model and benchmark, the table shows the Pass@1 accuracy, which represents the percentage of problems solved correctly in the first attempt.  The LLMs compared are ReasonFlux-32B, DeepSeek V3, OpenAI's 01-preview and 01-mini models, and GPT-40.  The table highlights ReasonFlux-32B's superior performance on these benchmarks compared to other LLMs.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance Comparison on Various Math Reasoning Benchmarks (Pass@1 Accuracy)
> </details>





### In-depth insights


#### Hierarchical Reasoning
Hierarchical reasoning, a crucial aspect of advanced cognitive functions, involves breaking down complex problems into a hierarchy of subproblems.  This approach allows for a more manageable and efficient solution process. **Each subproblem can be addressed using simpler reasoning methods**, potentially leading to a solution for the larger problem. The concept of hierarchical reasoning is particularly relevant in the context of LLMs, as it directly addresses the challenge of handling complex tasks that demand multi-step reasoning.  **ReasonFlux leverages hierarchical reasoning by employing a library of high-level thought templates.** These templates guide the LLM's reasoning process in a structured manner, moving gradually from high-level to more specific reasoning steps.  **This approach significantly reduces the search space and enhances efficiency** compared to traditional flat reasoning approaches. The hierarchical structure allows for adaptive scaling during inference.  The LLM dynamically selects the most appropriate template for each subproblem, optimizing resource allocation and enhancing accuracy.  **This adaptive scaling is key to efficiently solving complex problems.** The success of hierarchical reasoning is highly reliant on a well-structured knowledge base that supports efficient retrieval and application of relevant thought templates, as exemplified by the ReasonFlux's structured thought template library.

#### Scaling Thought Templates
Scaling thought templates in large language models (LLMs) presents a powerful mechanism for enhancing reasoning capabilities.  The core idea revolves around **creating a structured library of reusable thought templates**, each designed to address specific reasoning sub-tasks.  These templates are not merely prompts, but rather **compact, structured representations of reasoning strategies**, encompassing descriptions, tags, and example applications.  The scaling aspect manifests in two key ways: firstly, the **adaptive selection of relevant templates** based on the problem's characteristics, creating an optimal sequence of reasoning steps; and secondly, the **hierarchical application of templates**, breaking down complex problems into simpler sub-problems solved by different templates, enabling the LLM to tackle complex reasoning tasks efficiently. This hierarchical approach, combined with structured retrieval, aims to significantly improve both the efficiency and accuracy of LLM reasoning, surpassing simpler, linear approaches.  **Reinforcement learning** plays a crucial role in training the LLM to effectively select and sequence these templates, creating generalizable strategies for problem-solving.

#### RL-based Optimization
Reinforcement learning (RL) offers a powerful paradigm for optimizing complex systems, and its application to language model (LM) training is rapidly gaining traction. **RL-based optimization** methods aim to improve LMs by training them to maximize a reward signal, which can represent various desirable properties like accuracy, fluency, or adherence to user instructions.  These methods often leverage techniques like Proximal Policy Optimization (PPO) to efficiently update LM parameters, learning optimal policies through interactions with an environment.  A key challenge in RL-based optimization is defining appropriate reward functions that accurately capture the desired behavior, as poorly designed rewards can lead to unintended or suboptimal outcomes. **Human feedback**, either directly or through preference learning, is often incorporated to guide the reward shaping process.  The computational cost of RL-based training is another significant consideration, often requiring substantial computational resources. However, **recent advancements** in model architectures and training techniques are continuously improving the scalability and efficiency of RL-based optimization for LLMs, enabling the development of increasingly sophisticated and capable language models.  **Further research** is needed to explore innovative reward designs, develop more efficient algorithms, and address the limitations of current approaches, ultimately paving the way for more robust, aligned, and effective LLMs.

#### Inference Scaling System
An effective inference scaling system is crucial for handling complex reasoning tasks in large language models (LLMs).  ReasonFlux's approach is noteworthy for its **hierarchical structure**, employing a sequence of high-level thought templates rather than relying on lengthy chain-of-thought sequences.  This hierarchical approach significantly reduces the search space, making the process more efficient.  The system's **adaptive scaling** of templates based on problem complexity is a key innovation; it dynamically selects the appropriate level of detail in the reasoning process, achieving a balance between exploration and exploitation. This intelligent scaling is facilitated by a **structured template library**, enabling efficient retrieval of relevant templates at each step. Overall, this system demonstrates a more robust and efficient approach to scaling inference, addressing the computational costs and generalization limitations often associated with traditional methods. The dynamic selection of templates represents a significant step towards more adaptable and effective complex reasoning in LLMs.

#### Generalization & Limits
A section titled 'Generalization & Limits' in a research paper would explore the extent to which a model's capabilities extend beyond its training data and the boundaries of its performance.  **Generalization** would assess how well the model performs on unseen data, ideally demonstrating robustness and adaptability to new, similar problems.  This includes evaluating performance across different datasets and problem types.  **Limits** would identify the model's shortcomings and areas where it struggles, perhaps encountering specific types of problems or data it cannot handle effectively.  Discussion of limits might involve analysis of error types, edge cases where the model fails, or scenarios where its performance degrades significantly.  The interplay between generalization and limits is crucial; a model exhibiting strong generalization will likely reveal specific types of data that push its boundaries, highlighting opportunities for future improvements. The section should offer insights into the model's real-world applicability, acknowledging its strengths and limitations to inform responsible deployment and further research.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.06772/x2.png)

> 🔼 ReasonFlux's inference process begins by retrieving a series of high-level thought templates from its template library.  These templates are selected based on the complexity of the input problem. The system then uses these templates to guide a step-by-step reasoning process, breaking down the complex problem into a sequence of simpler sub-problems.  Each sub-problem is solved using an instantiated version of the appropriate template, and the results are fed back into the system. This iterative refinement process continues until the complete solution is obtained. The figure illustrates this hierarchical approach, showcasing the interplay between high-level template selection and instantiated reasoning at each step.
> <details>
> <summary>read the caption</summary>
> Figure 2: New inference scaling system based on hierarchical reasoning. We retrieve a series of high-level thought templates for complex problems, and gradually conduct instantiated reasoning for a sequence of sub-problems.
> </details>



![](https://arxiv.org/html/2502.06772/x3.png)

> 🔼 This figure compares the reasoning process of OpenAI's 01-mini model and the ReasonFlux model on a sample mathematical problem. It illustrates the step-by-step approach taken by each model to arrive at the solution.  01-mini's process is shown as a sequence of attempts, some leading to dead ends, highlighting its less directed approach. In contrast, ReasonFlux demonstrates a more efficient and organized approach, utilizing a hierarchical reasoning strategy guided by its structured template library to reach the solution effectively and precisely.  The visualization of the reasoning paths reveals the significant difference in efficiency and effectiveness between the two models.
> <details>
> <summary>read the caption</summary>
> Figure 3: Comprasion between o1-mini and ReasonFlux.
> </details>



![](https://arxiv.org/html/2502.06772/extracted/6191929/figs/scaling.png)

> 🔼 Figure 4 illustrates the inference scaling laws observed in the ReasonFlux model.  Specifically, it shows how the number of interplay rounds (planning and instantiation steps) and the number of retrieved templates scale in response to increasing problem complexity.  Panel (a) demonstrates the relationship between interplay rounds and problem complexity, while panel (b) shows the relationship between retrieved templates and problem complexity.  The plots visually represent how the model adapts its reasoning process (number of steps and amount of knowledge used) based on the difficulty of the task.
> <details>
> <summary>read the caption</summary>
> Figure 4: Inference scaling laws for template-augmented reasoning in ReasonFlux. (a) Scaling interplay rounds between planning and instantiation with increased level of problem complexity. (b) Scaling retrieved templates with increased level of problem complexity.
> </details>



![](https://arxiv.org/html/2502.06772/x4.png)

> 🔼 Figure 5 illustrates the exploration-exploitation trade-off comparison of three different reasoning strategies: ReasonFlux, Monte Carlo Tree Search (MCTS), and Best-of-N.  Using 200 problems from the AIME competitions (1983-2023) divided into four difficulty levels, the figure compares the average computational cost (exploration cost) each strategy requires to solve the problems. For ReasonFlux, the exploration cost represents the number of interplay rounds between the planning and instantiation phases. For MCTS, it's the number of reasoning steps. Finally, for Best-of-N, it's the number of reasoning trajectories explored. The figure visually demonstrates how the cost changes across the four difficulty levels for each strategy, allowing for a direct comparison of their efficiency and effectiveness in solving increasingly complex mathematical problems. 
> <details>
> <summary>read the caption</summary>
> Figure 5: Exploration-Exploitation Trade-off Comparison between different reasoning strategies. Here we experiment with a diverse set of 200 problems sourced from the AIME competitions spanning 1983 to 2023, divided into four difficulty levels. We test the average exploration cost of ReasonFlux (number of interplay rounds), MCTS (number of reasoning steps) and Best-of-N (number of reasoning trajectories).
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T2.1.1.1.1.1">Model</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.1.1.2">MATH</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.1.1.3">AIME 2024</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.1.1.4">AMC 2023</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.1.1.5">Olympiad Bench</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.1.1.6">Gaokao En 2023</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.1.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.2.2.1.1">Frontier LLMs</span></th>
<td class="ltx_td ltx_border_t" id="S3.T2.1.1.2.2.2"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.1.1.2.2.3"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.1.1.2.2.4"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.1.1.2.2.5"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.1.1.2.2.6"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.3.3.1">GPT-4o</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.3.2">76.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.3.3">9.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.3.4">47.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.3.5">43.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.3.6">67.5</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.4.4.1">Claude3.5-Sonnet</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.4.2">78.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.4.3">16.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.4.4">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.4.5">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.4.6">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.5.5.1">GPT-o1-preview</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.5.2">85.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.5.3">44.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.5.4">90.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.5.5">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.5.6">71.4</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.6.6.1">GPT-o1-mini</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.6.2">90.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.6.3">56.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.6.4">95.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.6.5">65.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.6.6">78.4</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.1.1.7.7.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.7.7.1.1">Open-Sourced Reasoning LLMs</span></th>
<td class="ltx_td ltx_border_t" id="S3.T2.1.1.7.7.2"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.1.1.7.7.3"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.1.1.7.7.4"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.1.1.7.7.5"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.1.1.7.7.6"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.8.8.1">DeepSeek-Coder-V2-Instruct</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.8.2">75.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.8.3">13.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.8.4">57.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.8.5">37.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.8.6">64.7</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.9.9.1">Mathstral-7B-v0.1</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.9.2">57.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.9.3">0.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.9.4">37.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.9.5">21.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.9.6">46.0</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.10.10.1">NuminaMath-72B-CoT</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.10.2">64.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.10.3">3.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.10.4">70.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.10.5">32.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.10.6">58.4</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.11.11.1">LLaMA3.1-8B-Instruct</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.11.2">51.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.11.3">6.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.11.4">25.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.11.5">15.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.11.6">38.4</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.12.12.1">LLaMA3.1-70B-Instruct</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.12.2">65.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.12.3">23.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.12.4">50.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.12.5">27.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.12.6">54.0</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.13.13.1">LLaMA3.1-405B-Instruct</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.13.13.2">73.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.13.13.3">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.13.13.4">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.13.13.5">34.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.13.13.6">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.14.14.1">Qwen2.5-Math-72B-Instruct</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.14.14.2">85.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.14.14.3">30.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.14.14.4">70.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.14.14.5">49.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.14.14.6">71.9</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.15.15.1">rStar-Math</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.15.15.2">88.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.15.15.3">43.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.15.15.4">80.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.15.15.5">63.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.15.15.6">78.2</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.16.16.1">DeepSeek-V3</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.16.16.2">90.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.16.16.3">39.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.16.16.4">80.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.16.16.5">55.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.16.16.6">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.17.17.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.17.17.1.1">ReasonFlux-32B</span></th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.17.17.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.17.17.2.1">91.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.17.17.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.17.17.3.1">56.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.17.17.4"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.17.17.4.1">85.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.17.17.5"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.17.17.5.1">63.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.17.17.6"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.17.17.6.1">83.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.18.18">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S3.T2.1.1.18.18.1"></th>
<td class="ltx_td ltx_border_t" id="S3.T2.1.1.18.18.2"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.1.1.18.18.3"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.18.18.4"><span class="ltx_text ltx_font_italic" id="S3.T2.1.1.18.18.4.1">1.5B-Level Base Model</span></td>
<td class="ltx_td ltx_border_t" id="S3.T2.1.1.18.18.5"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.1.1.18.18.6"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.19.19.1">Qwen2.5-Math-1.5B</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.19.19.2">51.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.19.19.3">0.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.19.19.4">22.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.19.19.5">16.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.19.19.6">46.5</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.20.20.1">Qwen2.5-Math-1.5B-Instruct</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.20.20.2">60.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.20.20.3">10.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.20.20.4">60.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.20.20.5">38.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.20.20.6">65.5</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.21.21.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.21.21.1.1">ReasonFlux-1.5B</span></th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.21.21.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.21.21.2.1">70.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.21.21.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.21.21.3.1">20.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.21.21.4"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.21.21.4.1">72.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.21.21.5"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.21.21.5.1">49.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.21.21.6"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.21.21.6.1">76.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.22.22">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S3.T2.1.1.22.22.1"></th>
<td class="ltx_td ltx_border_t" id="S3.T2.1.1.22.22.2"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.1.1.22.22.3"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.22.22.4"><span class="ltx_text ltx_font_italic" id="S3.T2.1.1.22.22.4.1">7B-Level Base Model</span></td>
<td class="ltx_td ltx_border_t" id="S3.T2.1.1.22.22.5"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.1.1.22.22.6"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.23.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.23.23.1">Qwen2.5-Math-7B</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.23.23.2">58.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.23.23.3">3.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.23.23.4">22.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.23.23.5">21.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.23.23.6">51.7</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.24.24.1">SuperCorrect-7B</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.24.24.2">70.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.24.24.3">10.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.24.24.4">37.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.24.24.5">39.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.24.24.6">64.0</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.25.25.1">Qwen2.5-Math-7B-Instruct</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.25.25.2">82.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.25.25.3">13.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.25.25.4">62.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.25.25.5">41.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.25.25.6">66.8</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.26.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.26.26.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.26.26.1.1">ReasonFlux-7B</span></th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.26.26.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.26.26.2.1">88.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.26.26.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.26.26.3.1">36.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.26.26.4"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.26.26.4.1">80.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.26.26.5"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.26.26.5.1">54.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.26.26.6"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.26.26.6.1">80.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.27.27">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S3.T2.1.1.27.27.1"></th>
<td class="ltx_td ltx_border_t" id="S3.T2.1.1.27.27.2"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.1.1.27.27.3"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.27.27.4"><span class="ltx_text ltx_font_italic" id="S3.T2.1.1.27.27.4.1">32B-Level Base Model</span></td>
<td class="ltx_td ltx_border_t" id="S3.T2.1.1.27.27.5"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.1.1.27.27.6"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.28.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.28.28.1">Qwen2.5-32B-Instruct</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.28.28.2">79.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.28.28.3">16.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.28.28.4">64.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.28.28.5">45.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.28.28.6">72.1</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.29.29">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.29.29.1">QwQ-32B-preview</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.29.29.2">90.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.29.29.3">50.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.29.29.4">75.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.29.29.5">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.29.29.6">65.3</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.30.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.30.30.1">Sky-T1-32B-preview</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.30.30.2">86.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.30.30.3">43.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.30.30.4">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.30.30.5">59.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.30.30.6">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.31.31">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T2.1.1.31.31.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.31.31.1.1">ReasonFlux-32B</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.31.31.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.31.31.2.1">91.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.31.31.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.31.31.3.1">56.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.31.31.4"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.31.31.4.1">85.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.31.31.5"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.31.31.5.1">63.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.31.31.6"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.31.31.6.1">83.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive comparison of the ReasonFlux model's performance against other state-of-the-art (SOTA) Large Language Models (LLMs) across five challenging mathematical reasoning benchmarks: MATH, AIME 2024, AMC 2023, OlympiadBench, and GaokaoEn 2023.  It shows the Pass@1 accuracy (the percentage of problems correctly solved in one attempt) for each model on each benchmark, highlighting the superior performance of ReasonFlux, particularly its 32B parameter version, which surpasses other LLMs by a significant margin on multiple benchmarks.  The table also includes results for smaller versions of ReasonFlux and other base LLMs to illustrate the impact of model size and the effectiveness of the ReasonFlux architecture.
> <details>
> <summary>read the caption</summary>
> Table 2: Pass@1 accuracy comparison on various mathematical reasoning benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T3.1.1.1.1">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.1.1.1.2">direct reasoning (%)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.1.1.1.3">with Template (%)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.2.1.1.1">Llama-3.1-8B-Instruct</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.2.1.2">47.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.2.1.3">75.1 (<span class="ltx_text ltx_font_bold" id="S4.T3.1.2.1.3.1">+27.5</span>)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.3.2">
<td class="ltx_td ltx_align_left" id="S4.T3.1.3.2.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.3.2.1.1">Qwen2.5-7B-Instruct</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.3.2.2">59.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.3.2.3">82.7 (<span class="ltx_text ltx_font_bold" id="S4.T3.1.3.2.3.1">+23.5</span>)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.4.3">
<td class="ltx_td ltx_align_left" id="S4.T3.1.4.3.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.4.3.1.1">Qwen2.5-Math-7B-Instruct</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.3.2">66.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.3.3">88.4 (<span class="ltx_text ltx_font_bold" id="S4.T3.1.4.3.3.1">+21.9</span>)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.5.4">
<td class="ltx_td ltx_align_left" id="S4.T3.1.5.4.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.5.4.1.1">Llama-3.1-70B-Instruct</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.5.4.2">67.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.5.4.3">91.2 (<span class="ltx_text ltx_font_bold" id="S4.T3.1.5.4.3.1">+23.8</span>)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.6.5">
<td class="ltx_td ltx_align_left" id="S4.T3.1.6.5.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.6.5.1.1">Qwen2.5-32B-Instruct</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.6.5.2">69.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.6.5.3">94.3 (<span class="ltx_text ltx_font_bold" id="S4.T3.1.6.5.3.1">+25.1</span>)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.7.6">
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T3.1.7.6.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.7.6.1.1">Qwen2.5-Math-32B-Instruct</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.1.7.6.2">71.1</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.1.7.6.3">95.9 (<span class="ltx_text ltx_font_bold" id="S4.T3.1.7.6.3.1">+24.8</span>)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment designed to evaluate the generalization capability of the structured thought template library developed in the ReasonFlux model.  It shows how different Large Language Models (LLMs), acting as base models, perform on a set of similar mathematical problems when guided by the ReasonFlux thought templates compared to when solving the problems without the templates. This demonstrates the effectiveness of the templates in improving reasoning accuracy across various LLMs and problem variations.
> <details>
> <summary>read the caption</summary>
> Table 3: Generalization ability of our thought templates with different base LLMs on a series of similar mathematical problems.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.06772/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06772/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06772/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06772/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06772/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06772/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06772/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06772/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06772/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06772/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06772/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06772/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06772/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06772/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06772/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06772/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06772/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06772/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06772/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06772/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}