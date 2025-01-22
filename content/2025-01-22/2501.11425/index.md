---
title: "Agent-R: Training Language Model Agents to Reflect via Iterative Self-Training"
summary: "Agent-R: A novel self-training framework enables language model agents to learn from errors by dynamically constructing training data that corrects erroneous actions, resulting in significantly improv..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Fudan University",]
showSummary: true
date: 2025-01-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.11425 {{< /keyword >}}
{{< keyword icon="writer" >}} Siyu Yuan et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-22 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.11425" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.11425" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.11425/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current Large Language Model (LLM) agents often struggle in real-world applications due to their inability to recover from errors.  Collecting enough step-level critique data for training is expensive and difficult.  Existing methods relying on behavior cloning from perfect trajectories do not teach the agents how to recover from errors.  This limits their ability to handle complex, interactive tasks. 

Agent-R tackles this by using **Monte Carlo Tree Search (MCTS)** to automatically construct self-critique datasets.  Instead of solely relying on the final outcome, Agent-R identifies and revises errors early in the trajectory using a model-guided critique mechanism. This iterative self-training process continuously improves the model's error correction and data generation capabilities. Experiments show that Agent-R significantly outperforms baseline methods across various interactive environments, demonstrating its effectiveness in equipping agents with self-reflection and self-correction abilities.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Agent-R, a new iterative self-training framework, allows language models to learn from mistakes efficiently. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The model-guided critique construction mechanism enables timely error correction, leading to better performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Extensive experiments demonstrate Agent-R's superior performance compared to baseline methods across three diverse environments. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses a critical limitation in current LLM agents: **the inability to effectively recover from errors in interactive environments.**  It introduces a novel self-training framework that allows agents to learn from mistakes by generating and revising their own trajectories. This method is highly efficient and could significantly improve the robustness and adaptability of future LLM agents in real-world applications, which is a highly relevant area of current research.  It opens avenues for further exploration of **timely error correction**, **scalable self-improvement paradigms**, and the role of **self-reflection** in improving agent decision-making.

------
#### Visual Insights



![](https://arxiv.org/html/2501.11425/x1.png)

> 🔼 The figure illustrates the challenges language models face when correcting errors during multi-step task completion.  The left panel shows an example where the agent takes a wrong path ('Open door to hallway'), realizing its mistake later, but finding it difficult to recover. The right panel showcases a scenario where the agent gets stuck in a loop ('Open door to kitchen'), repeatedly performing an ineffective action.  Agent-R, the proposed method, is designed to overcome these issues. It allows agents to detect and correct errors in real-time, improving the ability to complete long and complex tasks without getting stuck in unproductive loops.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustration of language agents struggling with error correction in trajectory generation. These errors can cause agents to enter loops, hindering recovery in long trajectories and resulting in suboptimal outcomes. Agent-R enables agents to effectively detect and address errors in real-time, handling long-horizon tasks and avoiding loops with greater self-reflection capabilities.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.4">
<tr class="ltx_tr" id="S4.T1.4.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.4.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.1.1" style="font-size:90%;">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.2.1" style="font-size:90%;">Simulation #</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.4.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.3.1" style="font-size:90%;">MCTS w/ Iter 1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.4.1.4"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.4.1" style="font-size:90%;">MCTS w/ Iter 2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.4.1.5"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.5.1" style="font-size:90%;">MCTS w/ Iter 3</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.1.6" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.4.1.6.1" style="font-size:90%;">Test Size</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.2.1"><span class="ltx_text ltx_font_bold" id="S4.T1.4.2.1.1" style="font-size:90%;">Revision</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.2.2"><span class="ltx_text ltx_font_bold" id="S4.T1.4.2.2.1" style="font-size:90%;">Good</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.2.3"><span class="ltx_text ltx_font_bold" id="S4.T1.4.2.3.1" style="font-size:90%;">Revision</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.2.4"><span class="ltx_text ltx_font_bold" id="S4.T1.4.2.4.1" style="font-size:90%;">Good</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.2.5"><span class="ltx_text ltx_font_bold" id="S4.T1.4.2.5.1" style="font-size:90%;">Revision</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.2.6"><span class="ltx_text ltx_font_bold" id="S4.T1.4.2.6.1" style="font-size:90%;">Good</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.4.3.1"><span class="ltx_text" id="S4.T1.4.3.1.1" style="font-size:90%;">WebShop</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.3.2"><span class="ltx_text" id="S4.T1.4.3.2.1" style="font-size:90%;">300</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.3.3"><span class="ltx_text" id="S4.T1.4.3.3.1" style="font-size:90%;">5500</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.3.4"><span class="ltx_text" id="S4.T1.4.3.4.1" style="font-size:90%;">600</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.3.5"><span class="ltx_text" id="S4.T1.4.3.5.1" style="font-size:90%;">8500</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.3.6"><span class="ltx_text" id="S4.T1.4.3.6.1" style="font-size:90%;">1800</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.3.7"><span class="ltx_text" id="S4.T1.4.3.7.1" style="font-size:90%;">9000</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.3.8"><span class="ltx_text" id="S4.T1.4.3.8.1" style="font-size:90%;">2000</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.3.9"><span class="ltx_text" id="S4.T1.4.3.9.1" style="font-size:90%;">200</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4">
<td class="ltx_td ltx_align_left" id="S4.T1.4.4.1"><span class="ltx_text" id="S4.T1.4.4.1.1" style="font-size:90%;">SciWorld</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.2"><span class="ltx_text" id="S4.T1.4.4.2.1" style="font-size:90%;">200</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.3"><span class="ltx_text" id="S4.T1.4.4.3.1" style="font-size:90%;">8000</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4"><span class="ltx_text" id="S4.T1.4.4.4.1" style="font-size:90%;">2500</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.5"><span class="ltx_text" id="S4.T1.4.4.5.1" style="font-size:90%;">4200</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.6"><span class="ltx_text" id="S4.T1.4.4.6.1" style="font-size:90%;">1800</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.7"><span class="ltx_text" id="S4.T1.4.4.7.1" style="font-size:90%;">5400</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.8"><span class="ltx_text" id="S4.T1.4.4.8.1" style="font-size:90%;">1200</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.9"><span class="ltx_text" id="S4.T1.4.4.9.1" style="font-size:90%;">200</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.4.5.1"><span class="ltx_text" id="S4.T1.4.5.1.1" style="font-size:90%;">TextCraft</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.5.2"><span class="ltx_text" id="S4.T1.4.5.2.1" style="font-size:90%;">200</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.5.3"><span class="ltx_text" id="S4.T1.4.5.3.1" style="font-size:90%;">6000</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.5.4"><span class="ltx_text" id="S4.T1.4.5.4.1" style="font-size:90%;">2000</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.5.5"><span class="ltx_text" id="S4.T1.4.5.5.1" style="font-size:90%;">7000</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.5.6"><span class="ltx_text" id="S4.T1.4.5.6.1" style="font-size:90%;">3200</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.5.7"><span class="ltx_text" id="S4.T1.4.5.7.1" style="font-size:90%;">8000</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.5.8"><span class="ltx_text" id="S4.T1.4.5.8.1" style="font-size:90%;">4000</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.5.9"><span class="ltx_text" id="S4.T1.4.5.9.1" style="font-size:90%;">100</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a statistical overview of three interactive agent environments used in the study: WebShop, SciWorld, and TextCraft.  It details the number of simulations run in each environment, the quantity of revision trajectories (incorrect attempts corrected by the model) and good trajectories (successful attempts) collected using Monte Carlo Tree Search (MCTS) across three iterative training phases. The variation in data collection across iterations is due to different selection thresholds employed for identifying good and bad trajectories, illustrating the dynamic data generation aspect of the Agent-R framework. The test size indicates the number of trajectories used for evaluating model performance after each training phase.
> <details>
> <summary>read the caption</summary>
> Table 1: Statistics of three agent interactive environments. Due to different selection thresholds, MCTS can collect different numbers of revision data and good data for the training phase.
> </details>





### In-depth insights


#### Agent-R Framework
The Agent-R framework is an iterative self-training method designed to enhance the self-correction capabilities of Language Model (LLM) agents within interactive environments.  **It addresses the critical challenge of timely error correction**, unlike traditional methods that only revise errors at the trajectory's end.  Agent-R cleverly leverages Monte Carlo Tree Search (MCTS) to generate revision trajectories by identifying the first erroneous step and splicing it with a correct path. This **model-guided critique construction** mechanism improves learning efficiency.  Furthermore, Agent-R iteratively refines both error correction capabilities and dataset construction, showcasing **scalability and continuous improvement**.  Its dynamic approach allows for timely error detection and correction, enabling agents to handle complex, long-horizon tasks effectively while avoiding loops.  **The framework's effectiveness is demonstrated through extensive experiments across diverse interactive environments**, consistently surpassing baseline methods.

#### MCTS-based Reflection
Employing Monte Carlo Tree Search (MCTS) for reflection in language model agents presents a powerful approach to self-correction.  **MCTS's inherent ability to explore various action sequences** allows the agent to not only identify erroneous actions, but also to generate alternative trajectories leading to successful task completion.  This is a significant improvement over methods that only penalize or reward based on final outcomes, as **MCTS enables on-the-fly corrections**, preventing cascading errors. The process of constructing reflection datasets is streamlined, eliminating the need for expensive, manual annotation.  However, the computational cost of MCTS needs to be considered, particularly in complex environments with large action spaces.  **Further research should focus on optimizing MCTS for efficiency** while maintaining its exploration capabilities, and also exploring techniques that efficiently handle partial observability inherent in many real-world interactive tasks.

#### Iterative Self-Training
Iterative self-training, as a training paradigm, presents a powerful mechanism for enhancing the capabilities of language models, particularly in interactive and agentic environments.  **The core concept revolves around the iterative refinement of both error correction capabilities and the dataset itself.**  Unlike traditional methods relying solely on expert-demonstrated perfect trajectories, iterative self-training allows the model to learn from its mistakes. This is achieved by generating and incorporating 'revision trajectories' which correct errors within initially faulty trajectories. The process leverages techniques such as Monte Carlo Tree Search (MCTS) to efficiently explore the trajectory space and identify points for correction. **This iterative approach fosters continuous improvement, enabling earlier and more timely error correction.** The model proactively self-corrects errors, avoiding cascading failures, and ultimately achieving superior performance compared to baselines.  **A key advantage is the automation of data generation, reducing the reliance on expensive and time-consuming human annotation.** The iterative aspect further allows the model to learn from progressively harder revision tasks, enhancing its adaptability and robustness in complex scenarios.

#### Error Correction
The concept of error correction is central to the paper, addressing the limitations of existing language models in handling errors during complex, interactive tasks.  Current methods often fail due to a lack of real-world error recovery mechanisms.  **The core of the proposed approach revolves around an iterative self-training framework that enables on-the-fly reflection and correction.** This approach leverages Monte Carlo Tree Search (MCTS) to dynamically generate training samples, enabling the model to learn how to identify and correct errors efficiently and timely, improving its overall performance and reducing cascading failures.  **The model-guided critique construction mechanism is crucial, pinpointing the first error and correcting it immediately.** This contrasts with traditional methods that wait until the end of a trajectory before making corrections.  This timely correction also helps avoid issues of the agent getting stuck in loops due to earlier errors.  **The iterative refinement of both error correction capabilities and the dataset construction further enhances the model's ability to continuously improve its self-correction abilities.** The experimental results demonstrate substantial performance gains compared to the baseline methods, validating the effectiveness of the timely, self-reflective error correction process.

#### Future Work
Future research directions stemming from this work could explore several promising avenues.  **Improving the efficiency and scalability** of the model-guided critique construction mechanism is crucial, potentially through more sophisticated error detection methods or reinforcement learning techniques. Investigating alternative search algorithms beyond Monte Carlo Tree Search (MCTS) to generate revision trajectories is warranted; exploring options that better balance exploration and exploitation could significantly improve performance and efficiency.  **Expanding the scope of the framework to a wider range of interactive environments and tasks** is also necessary; rigorous testing across diverse domains is needed to demonstrate the framework's robustness and generalizability. The integration of external knowledge bases or tools could enhance the agent's capacity for error detection and correction.  Finally,  **a deeper investigation into the theoretical underpinnings** of timely self-correction and the interplay between self-reflection and reinforcement learning would provide valuable insights and support further advancements in building truly intelligent and adaptive language model agents.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.11425/x2.png)

> 🔼 Agent-R's framework consists of two iterative phases.  Phase 1 uses Monte Carlo Tree Search (MCTS) and a model-guided reflection mechanism to identify and correct errors in agent trajectories, creating 'revision trajectories'.  These corrected trajectories are then used in Phase 2 to fine-tune the agent's model using a loss function (L(θ)) that balances learning from both the revised and originally correct trajectories. This two-phase process repeats iteratively for continuous improvement.  Key elements are the revision signal (rs), which marks the point of correction within the trajectory, and the transition point (t'), which is where the corrected segment of the trajectory begins.
> <details>
> <summary>read the caption</summary>
> Figure 2: The framework of Agent-R consists of two phases. In Phase I, we adopt MCTS and a model-guided reflection mechanism to construct revision trajectories. In Phase II, the agents are trained using the collected revision trajectories. These two phases can be repeated iteratively. rs is the revision signal, t′superscript𝑡′t^{\prime}italic_t start_POSTSUPERSCRIPT ′ end_POSTSUPERSCRIPT is the transition point between the bad and good trajectories, and L⁢(θ)𝐿𝜃L(\theta)italic_L ( italic_θ ) is the loss function to be optimized.
> </details>



![](https://arxiv.org/html/2501.11425/x3.png)

> 🔼 This figure displays the average final scores achieved by Llama-3.1-8B language model agents trained on different trajectory types across three iterations in three interactive environments (WebShop, SciWorld, TextCraft).  The training trajectories include those generated by Agent-R (the proposed method), optimal trajectories only, and trajectories using a direct revision strategy.  The graph visually compares the performance gains obtained through each training method across the three environments over the course of three iterative training phases, showcasing the effectiveness of Agent-R in improving agent performance compared to baselines.
> <details>
> <summary>read the caption</summary>
> Figure 3: Results of different training trajectories under different iterations on three interactive environments.
> </details>



![](https://arxiv.org/html/2501.11425/x4.png)

> 🔼 This figure displays the average number of times an agent repeats the same sequence of actions in the WebShop, SciWorld, and TextCraft environments.  It compares the performance of agents trained with different methods: a vanilla model, a model trained with optimal trajectories, and a model trained with Agent-R's trajectories (at various iterations). The x-axis represents the length of repeated action sequences, and the y-axis shows the average count of those sequences.  This visualization helps to illustrate how Agent-R training reduces repetitive actions, a sign of the agent getting stuck in unproductive loops or failing to make progress towards the goal.
> <details>
> <summary>read the caption</summary>
> Figure 4: Average count of repeated action lengths for different training trajectories and different iterations in three interactive environments.
> </details>



![](https://arxiv.org/html/2501.11425/x5.png)

> 🔼 This figure shows the average number of steps taken by the language agent from the start of a bad trajectory to the detection of the first error, across three iterations of the Agent-R training process.  The three interactive environments used are WebShop, SciWorld, and TextCraft. Shorter average lengths indicate quicker error detection and correction by the agent, showcasing the effectiveness of Agent-R's iterative self-training in improving real-time self-reflection and error-recovery capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 5: Average revision length of different iterations on three interactive environments.
> </details>



![](https://arxiv.org/html/2501.11425/x6.png)

> 🔼 The figure displays a comparison of the average final scores achieved by different training methods across three interactive environments (WebShop, SciWorld, and TextCraft).  The methods compared include single-task training with Agent-R, multi-task training with Agent-R, single-task training using a direct revision approach, and multi-task training using a direct revision approach.  The graph visually represents the performance of each method across three iterations, illustrating how the average final score changes over multiple training iterations.  This demonstrates the impact of the different training methods and whether multi-task learning offers better scalability and performance.
> <details>
> <summary>read the caption</summary>
> Figure 6: Comparison of different training methods on three interactive environments.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_align_middle" id="S4.SS2.SSS0.Px5.tab1.1">
<tr class="ltx_tr" id="S4.SS2.SSS0.Px5.tab1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.SS2.SSS0.Px5.tab1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.SS2.SSS0.Px5.tab1.1.1.1.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS2.SSS0.Px5.tab1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.SS2.SSS0.Px5.tab1.1.1.2.1" style="font-size:90%;">WebShop</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS2.SSS0.Px5.tab1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.SS2.SSS0.Px5.tab1.1.1.3.1" style="font-size:90%;">SciWorld</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS2.SSS0.Px5.tab1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.SS2.SSS0.Px5.tab1.1.1.4.1" style="font-size:90%;">TextCraft</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS2.SSS0.Px5.tab1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.SS2.SSS0.Px5.tab1.1.1.5.1" style="font-size:90%;">Average</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.SSS0.Px5.tab1.1.2" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="S4.SS2.SSS0.Px5.tab1.1.2.1"><span class="ltx_text ltx_font_italic" id="S4.SS2.SSS0.Px5.tab1.1.2.1.1" style="font-size:90%;background-color:#F2F2F2;">Close-sourced Models</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.SSS0.Px5.tab1.1.3">
<td class="ltx_td ltx_align_left" id="S4.SS2.SSS0.Px5.tab1.1.3.1">
<span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.3.1.1" style="font-size:90%;">DeepSeek-Chat </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.3.1.2.1" style="font-size:90%;">(</span><span class="ltx_text" style="font-size:90%;">Liu et al.</span><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.3.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.11425v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">2024a</span></a><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.3.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.3.2"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.3.2.1" style="font-size:90%;">11.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.3.3"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.3.3.1" style="font-size:90%;">16.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.3.4"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.3.4.1" style="font-size:90%;">23.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.3.5"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.3.5.1" style="font-size:90%;">16.93</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.SSS0.Px5.tab1.1.4">
<td class="ltx_td ltx_align_left" id="S4.SS2.SSS0.Px5.tab1.1.4.1">
<span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.4.1.1" style="font-size:90%;">Claude-3-Haiku </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.4.1.2.1" style="font-size:90%;">(</span><span class="ltx_text" style="font-size:90%;">Anthropic</span><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.4.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.11425v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">2024</span></a><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.4.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.4.2"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.4.2.1" style="font-size:90%;">5.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.4.3"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.4.3.1" style="font-size:90%;">0.83</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.4.4"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.4.4.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.4.5"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.4.5.1" style="font-size:90%;">2.11</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.SSS0.Px5.tab1.1.5">
<td class="ltx_td ltx_align_left" id="S4.SS2.SSS0.Px5.tab1.1.5.1">
<span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.5.1.1" style="font-size:90%;">Claude-3-Sonnet </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.5.1.2.1" style="font-size:90%;">(</span><span class="ltx_text" style="font-size:90%;">Anthropic</span><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.5.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.11425v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">2024</span></a><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.5.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.5.2"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.5.2.1" style="font-size:90%;">1.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.5.3"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.5.3.1" style="font-size:90%;">2.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.5.4"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.5.4.1" style="font-size:90%;">38.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.5.5"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.5.5.1" style="font-size:90%;">14.09</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.SSS0.Px5.tab1.1.6">
<td class="ltx_td ltx_align_left" id="S4.SS2.SSS0.Px5.tab1.1.6.1">
<span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.6.1.1" style="font-size:90%;">GPT-3.5-Turbo </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.6.1.2.1" style="font-size:90%;">(</span><span class="ltx_text" style="font-size:90%;">OpenAI</span><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.6.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.11425v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">2022</span></a><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.6.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.6.2"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.6.2.1" style="font-size:90%;">12.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.6.3"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.6.3.1" style="font-size:90%;">7.64</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.6.4"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.6.4.1" style="font-size:90%;">47.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.6.5"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.6.5.1" style="font-size:90%;">22.38</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.SSS0.Px5.tab1.1.7">
<td class="ltx_td ltx_align_left" id="S4.SS2.SSS0.Px5.tab1.1.7.1">
<span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.7.1.1" style="font-size:90%;">GPT-4-Turbo </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.7.1.2.1" style="font-size:90%;">(</span><span class="ltx_text" style="font-size:90%;">OpenAI</span><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.7.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.11425v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">2023</span></a><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.7.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.7.2"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.7.2.1" style="font-size:90%;">15.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.7.3"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.7.3.1" style="font-size:90%;">14.38</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.7.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.SS2.SSS0.Px5.tab1.1.7.4.1" style="font-size:90%;">77.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.7.5"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.7.5.1" style="font-size:90%;">35.63</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.SSS0.Px5.tab1.1.8">
<td class="ltx_td ltx_align_left" id="S4.SS2.SSS0.Px5.tab1.1.8.1">
<span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.8.1.1" style="font-size:90%;">GPT-4o </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.8.1.2.1" style="font-size:90%;">(</span><span class="ltx_text" style="font-size:90%;">OpenAI</span><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.8.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.11425v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">2023</span></a><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.8.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.8.2"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.8.2.1" style="font-size:90%;">25.48</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.8.3"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.8.3.1" style="font-size:90%;">46.91</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.8.4"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.8.4.1" style="font-size:90%;">64.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.8.5"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.8.5.1" style="font-size:90%;">45.46</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.SSS0.Px5.tab1.1.9" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="S4.SS2.SSS0.Px5.tab1.1.9.1"><span class="ltx_text ltx_font_italic" id="S4.SS2.SSS0.Px5.tab1.1.9.1.1" style="font-size:90%;background-color:#F2F2F2;">Open-sourced Models</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.SSS0.Px5.tab1.1.10">
<td class="ltx_td ltx_align_left" id="S4.SS2.SSS0.Px5.tab1.1.10.1">
<span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.10.1.1" style="font-size:90%;">Llama2-Chat-13B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.10.1.2.1" style="font-size:90%;">(</span><span class="ltx_text" style="font-size:90%;">Touvron et al.</span><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.10.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.11425v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">2023</span></a><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.10.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.10.2"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.10.2.1" style="font-size:90%;">1.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.10.3"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.10.3.1" style="font-size:90%;">0.83</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.10.4"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.10.4.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.10.5"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.10.5.1" style="font-size:90%;">0.61</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.SSS0.Px5.tab1.1.11">
<td class="ltx_td ltx_align_left" id="S4.SS2.SSS0.Px5.tab1.1.11.1">
<span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.11.1.1" style="font-size:90%;">AgentLM-7B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.11.1.2.1" style="font-size:90%;">(</span><span class="ltx_text" style="font-size:90%;">Zeng et al.</span><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.11.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.11425v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">2024a</span></a><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.11.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.11.2"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.11.2.1" style="font-size:90%;">36.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.11.3"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.11.3.1" style="font-size:90%;">2.75</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.11.4"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.11.4.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.11.5"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.11.5.1" style="font-size:90%;">13.08</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.SSS0.Px5.tab1.1.12">
<td class="ltx_td ltx_align_left" id="S4.SS2.SSS0.Px5.tab1.1.12.1">
<span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.12.1.1" style="font-size:90%;">AgentLM-13B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.12.1.2.1" style="font-size:90%;">(</span><span class="ltx_text" style="font-size:90%;">Zeng et al.</span><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.12.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.11425v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">2024a</span></a><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.12.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.12.2"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.12.2.1" style="font-size:90%;">39.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.12.3"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.12.3.1" style="font-size:90%;">10.68</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.12.4"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.12.4.1" style="font-size:90%;">4.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.12.5"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.12.5.1" style="font-size:90%;">18.06</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.SSS0.Px5.tab1.1.13">
<td class="ltx_td ltx_align_left" id="S4.SS2.SSS0.Px5.tab1.1.13.1">
<span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.13.1.1" style="font-size:90%;">Agent-FLAN </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.13.1.2.1" style="font-size:90%;">(</span><span class="ltx_text" style="font-size:90%;">Chen et al.</span><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.13.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.11425v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">2024d</span></a><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.13.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.13.2"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.13.2.1" style="font-size:90%;">40.35</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.13.3"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.13.3.1" style="font-size:90%;">28.64</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.13.4"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.13.4.1" style="font-size:90%;">16.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.13.5"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.13.5.1" style="font-size:90%;">28.33</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.SSS0.Px5.tab1.1.14">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.SS2.SSS0.Px5.tab1.1.14.1">
<span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.14.1.1" style="font-size:90%;">Llama-3.1-8B-Instruct </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.14.1.2.1" style="font-size:90%;">(</span><span class="ltx_text" style="font-size:90%;">Dubey et al.</span><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.14.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.11425v1#bib.bib9" title=""><span class="ltx_text" style="font-size:90%;">2024</span></a><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.14.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.SSS0.Px5.tab1.1.14.2"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.14.2.1" style="font-size:90%;">19.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.SSS0.Px5.tab1.1.14.3"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.14.3.1" style="font-size:90%;">14.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.SSS0.Px5.tab1.1.14.4"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.14.4.1" style="font-size:90%;">26.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.SS2.SSS0.Px5.tab1.1.14.5"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.14.5.1" style="font-size:90%;">20.00</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.SSS0.Px5.tab1.1.15">
<td class="ltx_td ltx_align_left" id="S4.SS2.SSS0.Px5.tab1.1.15.1">
<span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.15.1.1" style="font-size:90%;">w/ ETO </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.15.1.2.1" style="font-size:90%;">(</span><span class="ltx_text" style="font-size:90%;">Song et al.</span><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.15.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.11425v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">2024b</span></a><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.15.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.15.2"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.15.2.1" style="font-size:90%;">52.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.15.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.SS2.SSS0.Px5.tab1.1.15.3.1" style="font-size:90%;">67.55</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.15.4"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.15.4.1" style="font-size:90%;">75.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.15.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.SS2.SSS0.Px5.tab1.1.15.5.1" style="font-size:90%;">65.12</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.SSS0.Px5.tab1.1.16">
<td class="ltx_td ltx_align_left" id="S4.SS2.SSS0.Px5.tab1.1.16.1"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.16.1.1" style="font-size:90%;">w/ Direct-Revision</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.16.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.SS2.SSS0.Px5.tab1.1.16.2.1" style="font-size:90%;">54.44</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.16.3"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.16.3.1" style="font-size:90%;">66.65</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.16.4"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.16.4.1" style="font-size:90%;">66.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.SSS0.Px5.tab1.1.16.5"><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.16.5.1" style="font-size:90%;">62.36</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.SSS0.Px5.tab1.1.17">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.SS2.SSS0.Px5.tab1.1.17.1">
<span class="ltx_ERROR undefined" id="S4.SS2.SSS0.Px5.tab1.1.17.1.1">\cdashline</span><span class="ltx_text" id="S4.SS2.SSS0.Px5.tab1.1.17.1.2" style="font-size:90%;">1-5

w/ Agent-R</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS2.SSS0.Px5.tab1.1.17.2"><span class="ltx_text ltx_font_bold" id="S4.SS2.SSS0.Px5.tab1.1.17.2.1" style="font-size:90%;">63.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS2.SSS0.Px5.tab1.1.17.3"><span class="ltx_text ltx_font_bold" id="S4.SS2.SSS0.Px5.tab1.1.17.3.1" style="font-size:90%;">70.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS2.SSS0.Px5.tab1.1.17.4"><span class="ltx_text ltx_font_bold" id="S4.SS2.SSS0.Px5.tab1.1.17.4.1" style="font-size:90%;">78.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS2.SSS0.Px5.tab1.1.17.5"><span class="ltx_text ltx_font_bold" id="S4.SS2.SSS0.Px5.tab1.1.17.5.1" style="font-size:90%;">70.71</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance comparison of various language models on three interactive tasks: WebShop, SciWorld, and TextCraft.  The Llama-3.1-8B model is trained using revision trajectories generated by the Agent-R method across three iterations. The results are then compared against several other well-known closed-source and open-source language models as well as other agent-based methods.  The comparison highlights the improved performance achieved by using Agent-R's self-correction mechanism.
> <details>
> <summary>read the caption</summary>
> Table 2: Results of three interactive environments. We train Llama-3.1-8B on revision trajectories collected from Agent-R for three iterations and compare its performance with various models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T3.2">
<tr class="ltx_tr" id="S4.T3.2.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.2.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.1.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.2.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.2.1" style="font-size:90%;">WebShop</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.2.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.3.1" style="font-size:90%;">SciWorld</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.2.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.4.1" style="font-size:90%;">TextCraft</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.2.1.5"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.5.1" style="font-size:90%;">Average</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.2.2.1"><span class="ltx_text" id="S4.T3.2.2.1.1" style="font-size:90%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.2"><span class="ltx_text" id="S4.T3.2.2.2.1" style="font-size:90%;">24.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.3"><span class="ltx_text" id="S4.T3.2.2.3.1" style="font-size:90%;">35.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.4"><span class="ltx_text" id="S4.T3.2.2.4.1" style="font-size:90%;">8.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.5"><span class="ltx_text" id="S4.T3.2.2.5.1" style="font-size:90%;">22.63</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.2.3.1"><span class="ltx_text" id="S4.T3.2.3.1.1" style="font-size:90%;">AgentLM-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.3.2"><span class="ltx_text" id="S4.T3.2.3.2.1" style="font-size:90%;">20.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.3.3"><span class="ltx_text" id="S4.T3.2.3.3.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.3.4"><span class="ltx_text" id="S4.T3.2.3.4.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.3.5"><span class="ltx_text" id="S4.T3.2.3.5.1" style="font-size:90%;">6.99</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.4">
<td class="ltx_td ltx_align_left" id="S4.T3.2.4.1"><span class="ltx_text" id="S4.T3.2.4.1.1" style="font-size:90%;">AgentLM-13B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.4.2"><span class="ltx_text" id="S4.T3.2.4.2.1" style="font-size:90%;">23.20</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.4.3"><span class="ltx_text" id="S4.T3.2.4.3.1" style="font-size:90%;">0.22</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.4.4"><span class="ltx_text" id="S4.T3.2.4.4.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.4.5"><span class="ltx_text" id="S4.T3.2.4.5.1" style="font-size:90%;">7.81</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.5">
<td class="ltx_td ltx_align_left" id="S4.T3.2.5.1"><span class="ltx_text" id="S4.T3.2.5.1.1" style="font-size:90%;">Agent-FLAN</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.5.2"><span class="ltx_text" id="S4.T3.2.5.2.1" style="font-size:90%;">19.37</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.5.3"><span class="ltx_text" id="S4.T3.2.5.3.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.5.4"><span class="ltx_text" id="S4.T3.2.5.4.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.5.5"><span class="ltx_text" id="S4.T3.2.5.5.1" style="font-size:90%;">6.46</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.6" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="S4.T3.2.6.1"><span class="ltx_text ltx_font_italic" id="S4.T3.2.6.1.1" style="font-size:90%;background-color:#F2F2F2;">Llama-3.1-8B</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.7">
<td class="ltx_td ltx_align_left" id="S4.T3.2.7.1"><span class="ltx_text" id="S4.T3.2.7.1.1" style="font-size:90%;">w/ Optimal</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.7.2"><span class="ltx_text" id="S4.T3.2.7.2.1" style="font-size:90%;">31.38</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.7.3"><span class="ltx_text" id="S4.T3.2.7.3.1" style="font-size:90%;">1.15</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.7.4"><span class="ltx_text" id="S4.T3.2.7.4.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.7.5"><span class="ltx_text" id="S4.T3.2.7.5.1" style="font-size:90%;">10.84</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.8">
<td class="ltx_td ltx_align_left" id="S4.T3.2.8.1"><span class="ltx_text" id="S4.T3.2.8.1.1" style="font-size:90%;">w/ Optimal+</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.8.2"><span class="ltx_text" id="S4.T3.2.8.2.1" style="font-size:90%;">25.03</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.8.3"><span class="ltx_text" id="S4.T3.2.8.3.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.8.4"><span class="ltx_text" id="S4.T3.2.8.4.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.8.5"><span class="ltx_text" id="S4.T3.2.8.5.1" style="font-size:90%;">8.34</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.9">
<td class="ltx_td ltx_align_left" id="S4.T3.2.9.1"><span class="ltx_text" id="S4.T3.2.9.1.1" style="font-size:90%;">w/ ETO</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.9.2"><span class="ltx_text" id="S4.T3.2.9.2.1" style="font-size:90%;">35.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.9.3"><span class="ltx_text" id="S4.T3.2.9.3.1" style="font-size:90%;">3.47</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.9.4"><span class="ltx_text" id="S4.T3.2.9.4.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.9.5"><span class="ltx_text" id="S4.T3.2.9.5.1" style="font-size:90%;">13.08</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.10" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="S4.T3.2.10.1"><span class="ltx_text ltx_font_italic" id="S4.T3.2.10.1.1" style="font-size:90%;background-color:#F2F2F2;">Llama-3.1-8B w/ Direct-Revision Trajectories</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.11">
<td class="ltx_td ltx_align_left" id="S4.T3.2.11.1"><span class="ltx_text" id="S4.T3.2.11.1.1" style="font-size:90%;"># Iter1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.11.2"><span class="ltx_text" id="S4.T3.2.11.2.1" style="font-size:90%;">40.26</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.11.3"><span class="ltx_text" id="S4.T3.2.11.3.1" style="font-size:90%;">19.09</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.11.4"><span class="ltx_text" id="S4.T3.2.11.4.1" style="font-size:90%;">11.35</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.11.5"><span class="ltx_text" id="S4.T3.2.11.5.1" style="font-size:90%;">23.57</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.12">
<td class="ltx_td ltx_align_left" id="S4.T3.2.12.1"><span class="ltx_text" id="S4.T3.2.12.1.1" style="font-size:90%;"># Iter2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.12.2"><span class="ltx_text" id="S4.T3.2.12.2.1" style="font-size:90%;">40.35</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.12.3"><span class="ltx_text" id="S4.T3.2.12.3.1" style="font-size:90%;">27.45</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.12.4"><span class="ltx_text" id="S4.T3.2.12.4.1" style="font-size:90%;">22.97</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.12.5"><span class="ltx_text" id="S4.T3.2.12.5.1" style="font-size:90%;">30.26</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.13">
<td class="ltx_td ltx_align_left" id="S4.T3.2.13.1"><span class="ltx_text" id="S4.T3.2.13.1.1" style="font-size:90%;"># Iter3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.13.2"><span class="ltx_text" id="S4.T3.2.13.2.1" style="font-size:90%;">42.02</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.13.3"><span class="ltx_text" id="S4.T3.2.13.3.1" style="font-size:90%;">35.27</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.13.4"><span class="ltx_text" id="S4.T3.2.13.4.1" style="font-size:90%;">29.73</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.13.5"><span class="ltx_text" id="S4.T3.2.13.5.1" style="font-size:90%;">35.67</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.14" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="S4.T3.2.14.1"><span class="ltx_text ltx_font_italic" id="S4.T3.2.14.1.1" style="font-size:90%;background-color:#F2F2F2;">Llama-3.1-8B w/ Trajectories from Agent-R</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.15">
<td class="ltx_td ltx_align_left" id="S4.T3.2.15.1"><span class="ltx_text" id="S4.T3.2.15.1.1" style="font-size:90%;"># Iter1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.15.2"><span class="ltx_text" id="S4.T3.2.15.2.1" style="font-size:90%;">46.51</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.15.3"><span class="ltx_text" id="S4.T3.2.15.3.1" style="font-size:90%;">40.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.15.4"><span class="ltx_text" id="S4.T3.2.15.4.1" style="font-size:90%;">32.43</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.15.5"><span class="ltx_text" id="S4.T3.2.15.5.1" style="font-size:90%;">39.92</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.16">
<td class="ltx_td ltx_align_left" id="S4.T3.2.16.1"><span class="ltx_text" id="S4.T3.2.16.1.1" style="font-size:90%;"># Iter2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.16.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.2.16.2.1" style="font-size:90%;">47.51</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.16.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.2.16.3.1" style="font-size:90%;">45.22</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.16.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.2.16.4.1" style="font-size:90%;">35.14</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.16.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.2.16.5.1" style="font-size:90%;">42.62</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.17">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.2.17.1"><span class="ltx_text" id="S4.T3.2.17.1.1" style="font-size:90%;"># Iter3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.17.2"><span class="ltx_text ltx_font_bold" id="S4.T3.2.17.2.1" style="font-size:90%;">48.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.17.3"><span class="ltx_text ltx_font_bold" id="S4.T3.2.17.3.1" style="font-size:90%;">48.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.17.4"><span class="ltx_text ltx_font_bold" id="S4.T3.2.17.4.1" style="font-size:90%;">43.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.17.5"><span class="ltx_text ltx_font_bold" id="S4.T3.2.17.5.1" style="font-size:90%;">46.75</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a comparison of the performance of Llama-3.1-8B language model trained using different sets of trajectories.  It contrasts the results of training with:  trajectories generated by Agent-R, optimal trajectories (where all actions lead to the highest reward), optimal trajectories generated by GPT-40, trajectories generated by combining optimal and direct revision trajectories, and trajectories exclusively generated using a direct revision approach. The table quantifies this performance across three interactive agent environments (WebShop, SciWorld, TextCraft) and provides an average score across them all.
> <details>
> <summary>read the caption</summary>
> Table 3: The revision results of different methods. w/ Optimal+ means the golden trajectories for training Llama-3.1-8B are generated from GPT-4o.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T4.4">
<tr class="ltx_tr" id="A2.T4.4.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A2.T4.4.1.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.4.1.1.1">
<span class="ltx_p" id="A2.T4.4.1.1.1.1" style="width:416.3pt;"><span class="ltx_text" id="A2.T4.4.1.1.1.1.1" style="font-size:90%;">You are a good verifier of interactive environments. You will be given a history log that memorizes an agent interacting with the environment to solve a task. The format of the log is</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.4.2.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.4.2.1.1">
<span class="ltx_p" id="A2.T4.4.2.1.1.1" style="width:416.3pt;"><span class="ltx_text" id="A2.T4.4.2.1.1.1.1" style="font-size:90%;">###</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.4.3.1.1">
<span class="ltx_p" id="A2.T4.4.3.1.1.1" style="width:416.3pt;"><span class="ltx_text" id="A2.T4.4.3.1.1.1.1" style="font-size:90%;">Action: Action</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.4.4.1.1">
<span class="ltx_p" id="A2.T4.4.4.1.1.1" style="width:416.3pt;"><span class="ltx_text" id="A2.T4.4.4.1.1.1.1" style="font-size:90%;">Observation: Observation</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.4.5.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.4.5.1.1">
<span class="ltx_p" id="A2.T4.4.5.1.1.1" style="width:416.3pt;"><span class="ltx_text" id="A2.T4.4.5.1.1.1.1" style="font-size:90%;">###</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.4.6.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.4.6.1.1">
<span class="ltx_p" id="A2.T4.4.6.1.1.1" style="width:416.3pt;"><span class="ltx_text" id="A2.T4.4.6.1.1.1.1" style="font-size:90%;">Log:
Task Description: {</span><span class="ltx_text ltx_font_typewriter" id="A2.T4.4.6.1.1.1.2" style="font-size:90%;">task description</span><span class="ltx_text" id="A2.T4.4.6.1.1.1.3" style="font-size:90%;">}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.4.7.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.4.7.1.1">
<span class="ltx_p" id="A2.T4.4.7.1.1.1" style="width:416.3pt;"><span class="ltx_text" id="A2.T4.4.7.1.1.1.1" style="font-size:90%;">{</span><span class="ltx_text ltx_font_typewriter" id="A2.T4.4.7.1.1.1.2" style="font-size:90%;">history log</span><span class="ltx_text" id="A2.T4.4.7.1.1.1.3" style="font-size:90%;">}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.4.8.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.4.8.1.1">
<span class="ltx_p" id="A2.T4.4.8.1.1.1" style="width:416.3pt;"><span class="ltx_text" id="A2.T4.4.8.1.1.1.1" style="font-size:90%;">Current Action: {</span><span class="ltx_text ltx_font_typewriter" id="A2.T4.4.8.1.1.1.2" style="font-size:90%;">node action</span><span class="ltx_text" id="A2.T4.4.8.1.1.1.3" style="font-size:90%;">}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.4.9.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.4.9.1.1">
<span class="ltx_p" id="A2.T4.4.9.1.1.1" style="width:416.3pt;"><span class="ltx_text" id="A2.T4.4.9.1.1.1.1" style="font-size:90%;">Current Observation: {</span><span class="ltx_text ltx_font_typewriter" id="A2.T4.4.9.1.1.1.2" style="font-size:90%;">node observation</span><span class="ltx_text" id="A2.T4.4.9.1.1.1.3" style="font-size:90%;">}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.4.10.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.4.10.1.1">
<span class="ltx_p" id="A2.T4.4.10.1.1.1" style="width:416.3pt;"><span class="ltx_text" id="A2.T4.4.10.1.1.1.1" style="font-size:90%;">You need to verify whether the current action is good or bad or uncertain.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.4.11.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.4.11.1.1">
<span class="ltx_p" id="A2.T4.4.11.1.1.1" style="width:416.3pt;"><span class="ltx_text" id="A2.T4.4.11.1.1.1.1" style="font-size:90%;">- A good action is one that is greatly helpful to solve the task.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.12">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.4.12.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.4.12.1.1">
<span class="ltx_p" id="A2.T4.4.12.1.1.1" style="width:416.3pt;"><span class="ltx_text" id="A2.T4.4.12.1.1.1.1" style="font-size:90%;">- A bad action is one that is greatly harmful to solve the task.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.13">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.4.13.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.4.13.1.1">
<span class="ltx_p" id="A2.T4.4.13.1.1.1" style="width:416.3pt;"><span class="ltx_text" id="A2.T4.4.13.1.1.1.1" style="font-size:90%;">- An uncertain action is one that is neither good nor bad. You cannot judge based on the current information.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.14">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A2.T4.4.14.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.4.14.1.1">
<span class="ltx_p" id="A2.T4.4.14.1.1.1" style="width:416.3pt;"><span class="ltx_text" id="A2.T4.4.14.1.1.1.1" style="font-size:90%;">You must give reasons first and then give the response with the format: Judgment: &lt;Good or Bad or Uncertain&gt;</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the prompt templates used in the Agent-R framework to guide the model in identifying the transition point between a bad trajectory and a good trajectory during the self-correction process.  The prompt provides the model with the task description, the history log of the agent's interactions with the environment, the current action and observation, and instructions on how to determine whether the current action is good, bad, or uncertain, based on the provided information. This step is crucial for the model-guided reflection trajectory generation phase of Agent-R.
> <details>
> <summary>read the caption</summary>
> Table 4: Prompt templates of determining transition point in Agent-R.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T5.4">
<tr class="ltx_tr" id="A2.T5.4.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A2.T5.4.1.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.4.1.1.1">
<span class="ltx_p" id="A2.T5.4.1.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.4.1.1.1.1.1" style="font-size:90%;">Revision Thoughts</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T5.4.2.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.4.2.1.1">
<span class="ltx_p" id="A2.T5.4.2.1.1.1" style="width:416.3pt;"><span class="ltx_text" id="A2.T5.4.2.1.1.1.1" style="font-size:90%;">Thought 1: I realize my approach was flawed. I need to revise it.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T5.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.4.3.1.1">
<span class="ltx_p" id="A2.T5.4.3.1.1.1" style="width:416.3pt;"><span class="ltx_text" id="A2.T5.4.3.1.1.1.1" style="font-size:90%;">Thought 2: I took the wrong actions. I need to identify the right path.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T5.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.4.4.1.1">
<span class="ltx_p" id="A2.T5.4.4.1.1.1" style="width:416.3pt;"><span class="ltx_text" id="A2.T5.4.4.1.1.1.1" style="font-size:90%;">Thought 3: My actions were incorrect. I must adjust my strategy.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T5.4.5.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.4.5.1.1">
<span class="ltx_p" id="A2.T5.4.5.1.1.1" style="width:416.3pt;"><span class="ltx_text" id="A2.T5.4.5.1.1.1.1" style="font-size:90%;">Thought 4: I see an error in my actions. I need to fix it.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T5.4.6.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.4.6.1.1">
<span class="ltx_p" id="A2.T5.4.6.1.1.1" style="width:416.3pt;"><span class="ltx_text" id="A2.T5.4.6.1.1.1.1" style="font-size:90%;">Thought 5: My judgment was incorrect. I need to rethink it.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T5.4.7.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.4.7.1.1">
<span class="ltx_p" id="A2.T5.4.7.1.1.1" style="width:416.3pt;"><span class="ltx_text" id="A2.T5.4.7.1.1.1.1" style="font-size:90%;">Thought 6: I overlooked something important. I need to address it.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T5.4.8.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.4.8.1.1">
<span class="ltx_p" id="A2.T5.4.8.1.1.1" style="width:416.3pt;"><span class="ltx_text" id="A2.T5.4.8.1.1.1.1" style="font-size:90%;">Thought 7: I recognize my mistake. Let’s find a better solution.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T5.4.9.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.4.9.1.1">
<span class="ltx_p" id="A2.T5.4.9.1.1.1" style="width:416.3pt;"><span class="ltx_text" id="A2.T5.4.9.1.1.1.1" style="font-size:90%;">Thought 8: I recognize my failure. I need to learn and move forward.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T5.4.10.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.4.10.1.1">
<span class="ltx_p" id="A2.T5.4.10.1.1.1" style="width:416.3pt;"><span class="ltx_text" id="A2.T5.4.10.1.1.1.1" style="font-size:90%;">Thought 9: My decision was wrong. I should reevaluate.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.11">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A2.T5.4.11.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.4.11.1.1">
<span class="ltx_p" id="A2.T5.4.11.1.1.1" style="width:416.3pt;"><span class="ltx_text" id="A2.T5.4.11.1.1.1.1" style="font-size:90%;">Thought 10: I made an error. I must determine how to correct it.</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists ten example sentences that can be used as revision signals to guide the agent in correcting erroneous trajectories.  These phrases reflect different ways an agent might recognize and articulate its errors, prompting it to revise its course of action and generate improved trajectories.
> <details>
> <summary>read the caption</summary>
> Table 5: Ten revision thoughts to construct revision trajectories.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_align_middle" id="A3.SS2.tab1.3">
<tr class="ltx_tr" id="A3.SS2.tab1.3.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A3.SS2.tab1.3.1.1"><span class="ltx_text ltx_font_bold" id="A3.SS2.tab1.3.1.1.1" style="font-size:90%;">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.SS2.tab1.3.1.2"><span class="ltx_text ltx_font_bold" id="A3.SS2.tab1.3.1.2.1" style="font-size:90%;">Iteration</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.SS2.tab1.3.1.3"><span class="ltx_text ltx_font_bold" id="A3.SS2.tab1.3.1.3.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.SS2.tab1.3.1.4"><span class="ltx_text ltx_font_bold" id="A3.SS2.tab1.3.1.4.1" style="font-size:90%;">WebShop</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.SS2.tab1.3.1.5"><span class="ltx_text ltx_font_bold" id="A3.SS2.tab1.3.1.5.1" style="font-size:90%;">SciWorld</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.SS2.tab1.3.1.6"><span class="ltx_text ltx_font_bold" id="A3.SS2.tab1.3.1.6.1" style="font-size:90%;">TextCraft</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.SS2.tab1.3.1.7"><span class="ltx_text ltx_font_bold" id="A3.SS2.tab1.3.1.7.1" style="font-size:90%;">Average</span></td>
</tr>
<tr class="ltx_tr" id="A3.SS2.tab1.3.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.SS2.tab1.3.2.1" rowspan="2"><span class="ltx_text" id="A3.SS2.tab1.3.2.1.1" style="font-size:90%;">Direct-Revision + Good Trajectory</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.SS2.tab1.3.2.2" rowspan="2"><span class="ltx_text" id="A3.SS2.tab1.3.2.2.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.SS2.tab1.3.2.3"><span class="ltx_text" id="A3.SS2.tab1.3.2.3.1" style="font-size:90%;">Single</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.SS2.tab1.3.2.4"><span class="ltx_text" id="A3.SS2.tab1.3.2.4.1" style="font-size:90%;">48.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.SS2.tab1.3.2.5"><span class="ltx_text" id="A3.SS2.tab1.3.2.5.1" style="font-size:90%;">64.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.SS2.tab1.3.2.6"><span class="ltx_text" id="A3.SS2.tab1.3.2.6.1" style="font-size:90%;">57.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.SS2.tab1.3.2.7"><span class="ltx_text" id="A3.SS2.tab1.3.2.7.1" style="font-size:90%;">56.53</span></td>
</tr>
<tr class="ltx_tr" id="A3.SS2.tab1.3.3">
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.3.1"><span class="ltx_text" id="A3.SS2.tab1.3.3.1.1" style="font-size:90%;">Multi</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.3.2"><span class="ltx_text" id="A3.SS2.tab1.3.3.2.1" style="font-size:90%;">42.66</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.3.3"><span class="ltx_text" id="A3.SS2.tab1.3.3.3.1" style="font-size:90%;">63.10</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.3.4"><span class="ltx_text" id="A3.SS2.tab1.3.3.4.1" style="font-size:90%;">48.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.3.5"><span class="ltx_text" id="A3.SS2.tab1.3.3.5.1" style="font-size:90%;">51.25</span></td>
</tr>
<tr class="ltx_tr" id="A3.SS2.tab1.3.4">
<td class="ltx_td ltx_align_left" id="A3.SS2.tab1.3.4.1">
<span class="ltx_ERROR undefined" id="A3.SS2.tab1.3.4.1.1">\cdashline</span><span class="ltx_text" id="A3.SS2.tab1.3.4.1.2" style="font-size:90%;">2-7</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.4.2" rowspan="2"><span class="ltx_text" id="A3.SS2.tab1.3.4.2.1" style="font-size:90%;">2</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.4.3"><span class="ltx_text" id="A3.SS2.tab1.3.4.3.1" style="font-size:90%;">Single</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.4.4"><span class="ltx_text" id="A3.SS2.tab1.3.4.4.1" style="font-size:90%;">55.56</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.4.5"><span class="ltx_text" id="A3.SS2.tab1.3.4.5.1" style="font-size:90%;">64.52</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.4.6"><span class="ltx_text" id="A3.SS2.tab1.3.4.6.1" style="font-size:90%;">63.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.4.7"><span class="ltx_text" id="A3.SS2.tab1.3.4.7.1" style="font-size:90%;">61.03</span></td>
</tr>
<tr class="ltx_tr" id="A3.SS2.tab1.3.5">
<td class="ltx_td" id="A3.SS2.tab1.3.5.1"></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.5.2"><span class="ltx_text" id="A3.SS2.tab1.3.5.2.1" style="font-size:90%;">Multi</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.5.3"><span class="ltx_text" id="A3.SS2.tab1.3.5.3.1" style="font-size:90%;">46.93</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.5.4"><span class="ltx_text" id="A3.SS2.tab1.3.5.4.1" style="font-size:90%;">64.23</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.5.5"><span class="ltx_text" id="A3.SS2.tab1.3.5.5.1" style="font-size:90%;">64.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.5.6"><span class="ltx_text" id="A3.SS2.tab1.3.5.6.1" style="font-size:90%;">58.39</span></td>
</tr>
<tr class="ltx_tr" id="A3.SS2.tab1.3.6">
<td class="ltx_td ltx_align_left" id="A3.SS2.tab1.3.6.1">
<span class="ltx_ERROR undefined" id="A3.SS2.tab1.3.6.1.1">\cdashline</span><span class="ltx_text" id="A3.SS2.tab1.3.6.1.2" style="font-size:90%;">2-7</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.6.2" rowspan="2"><span class="ltx_text" id="A3.SS2.tab1.3.6.2.1" style="font-size:90%;">3</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.6.3"><span class="ltx_text" id="A3.SS2.tab1.3.6.3.1" style="font-size:90%;">Single</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.6.4"><span class="ltx_text ltx_font_bold" id="A3.SS2.tab1.3.6.4.1" style="font-size:90%;">58.82</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.6.5"><span class="ltx_text" id="A3.SS2.tab1.3.6.5.1" style="font-size:90%;">65.51</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.6.6"><span class="ltx_text ltx_font_bold" id="A3.SS2.tab1.3.6.6.1" style="font-size:90%;">71.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.6.7"><span class="ltx_text ltx_font_bold" id="A3.SS2.tab1.3.6.7.1" style="font-size:90%;">65.11</span></td>
</tr>
<tr class="ltx_tr" id="A3.SS2.tab1.3.7">
<td class="ltx_td" id="A3.SS2.tab1.3.7.1"></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.7.2"><span class="ltx_text" id="A3.SS2.tab1.3.7.2.1" style="font-size:90%;">Multi</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.7.3"><span class="ltx_text" id="A3.SS2.tab1.3.7.3.1" style="font-size:90%;">54.44</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.7.4"><span class="ltx_text ltx_font_bold" id="A3.SS2.tab1.3.7.4.1" style="font-size:90%;">66.65</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.7.5"><span class="ltx_text" id="A3.SS2.tab1.3.7.5.1" style="font-size:90%;">66.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.7.6"><span class="ltx_text" id="A3.SS2.tab1.3.7.6.1" style="font-size:90%;">62.36</span></td>
</tr>
<tr class="ltx_tr" id="A3.SS2.tab1.3.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.SS2.tab1.3.8.1" rowspan="2"><span class="ltx_text" id="A3.SS2.tab1.3.8.1.1" style="font-size:90%;">Trajectory from Agent-R</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.SS2.tab1.3.8.2" rowspan="2"><span class="ltx_text" id="A3.SS2.tab1.3.8.2.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.SS2.tab1.3.8.3"><span class="ltx_text" id="A3.SS2.tab1.3.8.3.1" style="font-size:90%;">Single</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.SS2.tab1.3.8.4"><span class="ltx_text" id="A3.SS2.tab1.3.8.4.1" style="font-size:90%;">49.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.SS2.tab1.3.8.5"><span class="ltx_text" id="A3.SS2.tab1.3.8.5.1" style="font-size:90%;">64.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.SS2.tab1.3.8.6"><span class="ltx_text" id="A3.SS2.tab1.3.8.6.1" style="font-size:90%;">60.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.SS2.tab1.3.8.7"><span class="ltx_text" id="A3.SS2.tab1.3.8.7.1" style="font-size:90%;">57.94</span></td>
</tr>
<tr class="ltx_tr" id="A3.SS2.tab1.3.9">
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.9.1"><span class="ltx_text" id="A3.SS2.tab1.3.9.1.1" style="font-size:90%;">Multi</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.9.2"><span class="ltx_text" id="A3.SS2.tab1.3.9.2.1" style="font-size:90%;">45.84</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.9.3"><span class="ltx_text" id="A3.SS2.tab1.3.9.3.1" style="font-size:90%;">66.71</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.9.4"><span class="ltx_text" id="A3.SS2.tab1.3.9.4.1" style="font-size:90%;">64.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.9.5"><span class="ltx_text" id="A3.SS2.tab1.3.9.5.1" style="font-size:90%;">58.85</span></td>
</tr>
<tr class="ltx_tr" id="A3.SS2.tab1.3.10">
<td class="ltx_td ltx_align_left" id="A3.SS2.tab1.3.10.1">
<span class="ltx_ERROR undefined" id="A3.SS2.tab1.3.10.1.1">\cdashline</span><span class="ltx_text" id="A3.SS2.tab1.3.10.1.2" style="font-size:90%;">2-7</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.10.2" rowspan="2"><span class="ltx_text" id="A3.SS2.tab1.3.10.2.1" style="font-size:90%;">2</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.10.3"><span class="ltx_text" id="A3.SS2.tab1.3.10.3.1" style="font-size:90%;">Single</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.10.4"><span class="ltx_text" id="A3.SS2.tab1.3.10.4.1" style="font-size:90%;">56.34</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.10.5"><span class="ltx_text" id="A3.SS2.tab1.3.10.5.1" style="font-size:90%;">65.62</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.10.6"><span class="ltx_text" id="A3.SS2.tab1.3.10.6.1" style="font-size:90%;">71.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.10.7"><span class="ltx_text" id="A3.SS2.tab1.3.10.7.1" style="font-size:90%;">64.32</span></td>
</tr>
<tr class="ltx_tr" id="A3.SS2.tab1.3.11">
<td class="ltx_td" id="A3.SS2.tab1.3.11.1"></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.11.2"><span class="ltx_text" id="A3.SS2.tab1.3.11.2.1" style="font-size:90%;">Multi</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.11.3"><span class="ltx_text" id="A3.SS2.tab1.3.11.3.1" style="font-size:90%;">52.05</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.11.4"><span class="ltx_text" id="A3.SS2.tab1.3.11.4.1" style="font-size:90%;">68.28</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.11.5"><span class="ltx_text" id="A3.SS2.tab1.3.11.5.1" style="font-size:90%;">76.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.11.6"><span class="ltx_text" id="A3.SS2.tab1.3.11.6.1" style="font-size:90%;">65.44</span></td>
</tr>
<tr class="ltx_tr" id="A3.SS2.tab1.3.12">
<td class="ltx_td ltx_align_left" id="A3.SS2.tab1.3.12.1">
<span class="ltx_ERROR undefined" id="A3.SS2.tab1.3.12.1.1">\cdashline</span><span class="ltx_text" id="A3.SS2.tab1.3.12.1.2" style="font-size:90%;">2-7</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.SS2.tab1.3.12.2" rowspan="2"><span class="ltx_text" id="A3.SS2.tab1.3.12.2.1" style="font-size:90%;">3</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.12.3"><span class="ltx_text" id="A3.SS2.tab1.3.12.3.1" style="font-size:90%;">Single</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.12.4"><span class="ltx_text" id="A3.SS2.tab1.3.12.4.1" style="font-size:90%;">60.66</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.12.5"><span class="ltx_text" id="A3.SS2.tab1.3.12.5.1" style="font-size:90%;">67.22</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.12.6"><span class="ltx_text" id="A3.SS2.tab1.3.12.6.1" style="font-size:90%;">76.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.SS2.tab1.3.12.7"><span class="ltx_text" id="A3.SS2.tab1.3.12.7.1" style="font-size:90%;">67.96</span></td>
</tr>
<tr class="ltx_tr" id="A3.SS2.tab1.3.13">
<td class="ltx_td ltx_border_bb" id="A3.SS2.tab1.3.13.1"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.SS2.tab1.3.13.2"><span class="ltx_text" id="A3.SS2.tab1.3.13.2.1" style="font-size:90%;">Multi</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.SS2.tab1.3.13.3"><span class="ltx_text ltx_font_bold" id="A3.SS2.tab1.3.13.3.1" style="font-size:90%;">63.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.SS2.tab1.3.13.4"><span class="ltx_text ltx_font_bold" id="A3.SS2.tab1.3.13.4.1" style="font-size:90%;">70.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.SS2.tab1.3.13.5"><span class="ltx_text ltx_font_bold" id="A3.SS2.tab1.3.13.5.1" style="font-size:90%;">78.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.SS2.tab1.3.13.6"><span class="ltx_text ltx_font_bold" id="A3.SS2.tab1.3.13.6.1" style="font-size:90%;">70.71</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents a detailed comparison of the performance achieved by different training methods on three interactive environments: WebShop, SciWorld, and TextCraft.  It shows the average performance across multiple iterations (1, 2, and 3) using both single-task and multi-task training approaches.  The methods compared include training with trajectories generated by Agent-R (the proposed method), a direct-revision approach combined with good trajectories, and training with optimal and good trajectories.  The table allows readers to assess the effectiveness of Agent-R against other approaches and understand the impact of single-task versus multi-task training strategies on the final results.
> <details>
> <summary>read the caption</summary>
> Table 6: Detailed Results of different training methods on three interactive environments.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T7.4">
<tr class="ltx_tr" id="A3.T7.4.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A3.T7.4.1.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.1.1.1">
<span class="ltx_p" id="A3.T7.4.1.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.4.1.1.1.1.1" style="font-size:90%;">WebShop</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.2.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.2.1.1">
<span class="ltx_p" id="A3.T7.4.2.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_italic" id="A3.T7.4.2.1.1.1.1" style="font-size:90%;">Example 1:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.3.1.1">
<span class="ltx_p" id="A3.T7.4.3.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.3.1.1.1.1" style="font-size:90%;">Assistant</span><span class="ltx_text" id="A3.T7.4.3.1.1.1.2" style="font-size:90%;">: Thought: I think I should search for light blue shorts in a specific size and price range to get more accurate results. Action: search[light blue 36w 30l price:40]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.4.1.1">
<span class="ltx_p" id="A3.T7.4.4.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.4.1.1.1.1" style="font-size:90%;">Human</span><span class="ltx_text" id="A3.T7.4.4.1.1.1.2" style="font-size:90%;">: [Search Result]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.5.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.5.1.1">
<span class="ltx_p" id="A3.T7.4.5.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.5.1.1.1.1" style="font-size:90%;">Assistant</span><span class="ltx_text" id="A3.T7.4.5.1.1.1.2" style="font-size:90%;">: Thought: I went in the wrong direction with my search. I need to reset and try again.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.6.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.6.1.1">
<span class="ltx_p" id="A3.T7.4.6.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.6.1.1.1.1" style="font-size:90%;">Human</span><span class="ltx_text" id="A3.T7.4.6.1.1.1.2" style="font-size:90%;">: ok.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.7.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.7.1.1">
<span class="ltx_p" id="A3.T7.4.7.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.7.1.1.1.1" style="font-size:90%;">Assistant</span><span class="ltx_text" id="A3.T7.4.7.1.1.1.2" style="font-size:90%;">: Thought: I need to back to search. Action: click[Back to Search]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.8.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.8.1.1">
<span class="ltx_p" id="A3.T7.4.8.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.8.1.1.1.1" style="font-size:90%;">Human</span><span class="ltx_text" id="A3.T7.4.8.1.1.1.2" style="font-size:90%;">: [Search Result]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.9.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.9.1.1">
<span class="ltx_p" id="A3.T7.4.9.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_italic" id="A3.T7.4.9.1.1.1.1" style="font-size:90%;">Example 2:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.10.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.10.1.1">
<span class="ltx_p" id="A3.T7.4.10.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.10.1.1.1.1" style="font-size:90%;">Assistant</span><span class="ltx_text" id="A3.T7.4.10.1.1.1.2" style="font-size:90%;">: Thought: I think the second option is a bit off-topic, but it’s a good price, so I’ll consider it. Action: click[B08226NDZW]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.11.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.11.1.1">
<span class="ltx_p" id="A3.T7.4.11.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.11.1.1.1.1" style="font-size:90%;">Human</span><span class="ltx_text" id="A3.T7.4.11.1.1.1.2" style="font-size:90%;">: [Search Result]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.12">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.12.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.12.1.1">
<span class="ltx_p" id="A3.T7.4.12.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.12.1.1.1.1" style="font-size:90%;">Assistant</span><span class="ltx_text" id="A3.T7.4.12.1.1.1.2" style="font-size:90%;">: Thought: I recognize my mistake. Let’s find a better solution. Action: wait</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.13">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.13.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.13.1.1">
<span class="ltx_p" id="A3.T7.4.13.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.13.1.1.1.1" style="font-size:90%;">Human</span><span class="ltx_text" id="A3.T7.4.13.1.1.1.2" style="font-size:90%;">: ok.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.14">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.14.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.14.1.1">
<span class="ltx_p" id="A3.T7.4.14.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.14.1.1.1.1" style="font-size:90%;">Assistant</span><span class="ltx_text" id="A3.T7.4.14.1.1.1.2" style="font-size:90%;">: Thought: I think the search query is not specific enough, so I’ll try to refine it by adding more keywords. Action: search[machine wash men’s dress shirts polyester heathered cotton classic fit men 3t price:50.00]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.15">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.15.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.15.1.1">
<span class="ltx_p" id="A3.T7.4.15.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.15.1.1.1.1" style="font-size:90%;">Human</span><span class="ltx_text" id="A3.T7.4.15.1.1.1.2" style="font-size:90%;">: [Search Result]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.16">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.4.16.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.16.1.1">
<span class="ltx_p" id="A3.T7.4.16.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.4.16.1.1.1.1" style="font-size:90%;">Sciworld</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.17">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.17.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.17.1.1">
<span class="ltx_p" id="A3.T7.4.17.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_italic" id="A3.T7.4.17.1.1.1.1" style="font-size:90%;">Example 1:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.18">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.18.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.18.1.1">
<span class="ltx_p" id="A3.T7.4.18.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.18.1.1.1.1" style="font-size:90%;">Assistant</span><span class="ltx_text" id="A3.T7.4.18.1.1.1.2" style="font-size:90%;">: Thought: I should open door to kitchen. Action: open door to kitchen</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.19">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.19.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.19.1.1">
<span class="ltx_p" id="A3.T7.4.19.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.19.1.1.1.1" style="font-size:90%;">Human</span><span class="ltx_text" id="A3.T7.4.19.1.1.1.2" style="font-size:90%;">: The door is now open.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.20">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.20.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.20.1.1">
<span class="ltx_p" id="A3.T7.4.20.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.20.1.1.1.1" style="font-size:90%;">Assistant</span><span class="ltx_text" id="A3.T7.4.20.1.1.1.2" style="font-size:90%;">: Thought: I took the wrong steps. I need to identify the right path. Action: wait</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.21">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.21.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.21.1.1">
<span class="ltx_p" id="A3.T7.4.21.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.21.1.1.1.1" style="font-size:90%;">Human</span><span class="ltx_text" id="A3.T7.4.21.1.1.1.2" style="font-size:90%;">: ok.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.22">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.22.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.22.1.1">
<span class="ltx_p" id="A3.T7.4.22.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.22.1.1.1.1" style="font-size:90%;">Assistant</span><span class="ltx_text" id="A3.T7.4.22.1.1.1.2" style="font-size:90%;">: Thought: I should go to kitchen. Action: go to kitchen</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.23">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.23.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.23.1.1">
<span class="ltx_p" id="A3.T7.4.23.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.23.1.1.1.1" style="font-size:90%;">Human</span><span class="ltx_text" id="A3.T7.4.23.1.1.1.2" style="font-size:90%;">: You move to the kitchen.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.24">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.24.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.24.1.1">
<span class="ltx_p" id="A3.T7.4.24.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_italic" id="A3.T7.4.24.1.1.1.1" style="font-size:90%;">Example 2:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.25">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.25.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.25.1.1">
<span class="ltx_p" id="A3.T7.4.25.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.25.1.1.1.1" style="font-size:90%;">Assistant</span><span class="ltx_text" id="A3.T7.4.25.1.1.1.2" style="font-size:90%;">: Thought: I think I should try to determine the temperature of the unknown substance B. Action: use thermometer on unknown substance B</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.26">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.26.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.26.1.1">
<span class="ltx_p" id="A3.T7.4.26.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.26.1.1.1.1" style="font-size:90%;">Human</span><span class="ltx_text" id="A3.T7.4.26.1.1.1.2" style="font-size:90%;">: the thermometer measures a temperature of 19 degrees celsius</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.27">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.27.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.27.1.1">
<span class="ltx_p" id="A3.T7.4.27.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.27.1.1.1.1" style="font-size:90%;">Assistant</span><span class="ltx_text" id="A3.T7.4.27.1.1.1.2" style="font-size:90%;">: Thought: I misunderstood the situation. Time to reassess. Action: wait</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.28">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.28.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.28.1.1">
<span class="ltx_p" id="A3.T7.4.28.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.28.1.1.1.1" style="font-size:90%;">Human</span><span class="ltx_text" id="A3.T7.4.28.1.1.1.2" style="font-size:90%;">: ok.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.29">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.29.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.29.1.1">
<span class="ltx_p" id="A3.T7.4.29.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.29.1.1.1.1" style="font-size:90%;">Assistant</span><span class="ltx_text" id="A3.T7.4.29.1.1.1.2" style="font-size:90%;">: Thought: I think I should check the unknown substance B again to make sure the temperature is accurate. Action: use thermometer on unknown substance B</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.30">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.30.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.30.1.1">
<span class="ltx_p" id="A3.T7.4.30.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.30.1.1.1.1" style="font-size:90%;">Human</span><span class="ltx_text" id="A3.T7.4.30.1.1.1.2" style="font-size:90%;">: the thermometer measures a temperature of 16 degrees celsius</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.31">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.4.31.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.31.1.1">
<span class="ltx_p" id="A3.T7.4.31.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.4.31.1.1.1.1" style="font-size:90%;">TextCraft</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.32">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.32.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.32.1.1">
<span class="ltx_p" id="A3.T7.4.32.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_italic" id="A3.T7.4.32.1.1.1.1" style="font-size:90%;">Example 1:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.33">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.33.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.33.1.1">
<span class="ltx_p" id="A3.T7.4.33.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.33.1.1.1.1" style="font-size:90%;">Assistant</span><span class="ltx_text" id="A3.T7.4.33.1.1.1.2" style="font-size:90%;">: Thought: I should check if I can get blackstone directly from the environment or the inventory. Action: inventory</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.34">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.34.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.34.1.1">
<span class="ltx_p" id="A3.T7.4.34.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.34.1.1.1.1" style="font-size:90%;">Human</span><span class="ltx_text" id="A3.T7.4.34.1.1.1.2" style="font-size:90%;">: Inventory: You are not carrying anything.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.35">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.35.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.35.1.1">
<span class="ltx_p" id="A3.T7.4.35.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.35.1.1.1.1" style="font-size:90%;">Assistant</span><span class="ltx_text" id="A3.T7.4.35.1.1.1.2" style="font-size:90%;">: Thought: I recognize my mistake. Let’s find a better solution. Action: wait</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.36">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.36.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.36.1.1">
<span class="ltx_p" id="A3.T7.4.36.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.36.1.1.1.1" style="font-size:90%;">Human</span><span class="ltx_text" id="A3.T7.4.36.1.1.1.2" style="font-size:90%;">: ok.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.37">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.37.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.37.1.1">
<span class="ltx_p" id="A3.T7.4.37.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.37.1.1.1.1" style="font-size:90%;">Assistant</span><span class="ltx_text" id="A3.T7.4.37.1.1.1.2" style="font-size:90%;">: Thought: I should go get the blackstone from the environment. Action: get 3 blackstone</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.38">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.38.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.38.1.1">
<span class="ltx_p" id="A3.T7.4.38.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.38.1.1.1.1" style="font-size:90%;">Human</span><span class="ltx_text" id="A3.T7.4.38.1.1.1.2" style="font-size:90%;">: Got 3 blackstone</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.39">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.39.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.39.1.1">
<span class="ltx_p" id="A3.T7.4.39.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_italic" id="A3.T7.4.39.1.1.1.1" style="font-size:90%;">Example 2:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.40">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.40.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.40.1.1">
<span class="ltx_p" id="A3.T7.4.40.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.40.1.1.1.1" style="font-size:90%;">Assistant</span><span class="ltx_text" id="A3.T7.4.40.1.1.1.2" style="font-size:90%;">: Thought: I can use the quartz slab to craft something else that might be useful. Action: craft quartz wall using 4 quartz slab</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.41">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.41.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.41.1.1">
<span class="ltx_p" id="A3.T7.4.41.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.41.1.1.1.1" style="font-size:90%;">Human</span><span class="ltx_text" id="A3.T7.4.41.1.1.1.2" style="font-size:90%;">: Could not find enough items to craft minecraft:quartz_wall</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.42">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.42.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.42.1.1">
<span class="ltx_p" id="A3.T7.4.42.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.42.1.1.1.1" style="font-size:90%;">Assistant</span><span class="ltx_text" id="A3.T7.4.42.1.1.1.2" style="font-size:90%;">: Thought: I realize I chose poorly. I must change direction. Action: wait</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.43">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.43.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.43.1.1">
<span class="ltx_p" id="A3.T7.4.43.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.43.1.1.1.1" style="font-size:90%;">Human</span><span class="ltx_text" id="A3.T7.4.43.1.1.1.2" style="font-size:90%;">: ok.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.44">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.4.44.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.44.1.1">
<span class="ltx_p" id="A3.T7.4.44.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.44.1.1.1.1" style="font-size:90%;">Assistant</span><span class="ltx_text" id="A3.T7.4.44.1.1.1.2" style="font-size:90%;">: Thought: I think I should try to get more quartz to craft the quartz wall. Action: get 2 quartz slab</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.45">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A3.T7.4.45.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.4.45.1.1">
<span class="ltx_p" id="A3.T7.4.45.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.4.45.1.1.1.1" style="font-size:90%;">Human</span><span class="ltx_text" id="A3.T7.4.45.1.1.1.2" style="font-size:90%;">: Got 2 quartz slab</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table showcases examples of how Llama-3.1-8B, a language model trained using the Agent-R framework, corrects errors within its generated trajectories.  Specifically, it presents instances where the model identifies and rectifies incorrect actions during three distinct tasks: WebShop (online shopping), SciWorld (scientific reasoning), and TextCraft (Minecraft item crafting).  For each task, the table displays the initial erroneous actions of the model, the model's reflection on its mistakes, and the subsequent corrective steps. WebShop's search results are excluded due to their extensive length.  This table demonstrates the Agent-R method's effectiveness in enabling real-time error correction and improved trajectory generation in complex, interactive tasks.
> <details>
> <summary>read the caption</summary>
> Table 7: Example of error correction from the trajectory generated by Llama-3.1-8B, trained on trajectories from Agent-R during the third iteration. The search results in WebShop are omitted due to their length.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T8.4">
<tr class="ltx_tr" id="A3.T8.4.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A3.T8.4.1.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.4.1.1.1">
<span class="ltx_p" id="A3.T8.4.1.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.4.1.1.1.1.1" style="font-size:90%;">WebShop</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.4.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.4.2.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.4.2.1.1">
<span class="ltx_p" id="A3.T8.4.2.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_italic" id="A3.T8.4.2.1.1.1.1" style="font-size:90%;">Judgment (Invalid Actions):</span><span class="ltx_text" id="A3.T8.4.2.1.1.1.2" style="font-size:90%;"> The action is bad </span><span class="ltx_text ltx_ulem_dashuline" id="A3.T8.4.2.1.1.1.3" style="font-size:90%;">because it does not match the original search criteria</span><span class="ltx_text" id="A3.T8.4.2.1.1.1.4" style="font-size:90%;">. Therefore, Judgment: Bad</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.4.3.1.1">
<span class="ltx_p" id="A3.T8.4.3.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_italic" id="A3.T8.4.3.1.1.1.1" style="font-size:90%;">Judgment (Mismatch Observation):</span><span class="ltx_text" id="A3.T8.4.3.1.1.1.2" style="font-size:90%;"> However, </span><span class="ltx_text ltx_ulem_dashuline" id="A3.T8.4.3.1.1.1.3" style="font-size:90%;">the product does not match the description</span><span class="ltx_text" id="A3.T8.4.3.1.1.1.4" style="font-size:90%;"> of a machine wash men’s dress shirt with polyester heathers, heathers cotton, cotton heather, needle sleeve, classic fit, and color heather grey, as specified in the task description. Therefore, Judgment: Bad</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.4.4.1.1">
<span class="ltx_p" id="A3.T8.4.4.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_italic" id="A3.T8.4.4.1.1.1.1" style="font-size:90%;">Judgment (Irrelevant Actions):</span><span class="ltx_text" id="A3.T8.4.4.1.1.1.2" style="font-size:90%;"> The action is bad </span><span class="ltx_text ltx_ulem_dashuline" id="A3.T8.4.4.1.1.1.3" style="font-size:90%;">because it is not relevant to the task</span><span class="ltx_text" id="A3.T8.4.4.1.1.1.4" style="font-size:90%;"> of finding men’s shirts with specific characteristics. Therefore, Judgment: Bad</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.4.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T8.4.5.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.4.5.1.1">
<span class="ltx_p" id="A3.T8.4.5.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.4.5.1.1.1.1" style="font-size:90%;">Sciworld</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.4.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.4.6.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.4.6.1.1">
<span class="ltx_p" id="A3.T8.4.6.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_italic" id="A3.T8.4.6.1.1.1.1" style="font-size:90%;">Judgment (Invalid Actions):</span><span class="ltx_text" id="A3.T8.4.6.1.1.1.2" style="font-size:90%;"> There is no orange mentioned in the environment, so </span><span class="ltx_text ltx_ulem_dashuline" id="A3.T8.4.6.1.1.1.3" style="font-size:90%;">this action is invalid</span><span class="ltx_text" id="A3.T8.4.6.1.1.1.4" style="font-size:90%;">. It’s not a helpful action, but rather an invalid input. Therefore, Judgment: Bad</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.4.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.4.7.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.4.7.1.1">
<span class="ltx_p" id="A3.T8.4.7.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_italic" id="A3.T8.4.7.1.1.1.1" style="font-size:90%;">Judgment (Mismatch Observation):</span><span class="ltx_text" id="A3.T8.4.7.1.1.1.2" style="font-size:90%;"> The current task is to determine if the aluminum foil is electrically conductive. The agent has already connected the aluminum foil to the battery and the green light bulb, and observed that the light bulb turned on. This suggests that the aluminum foil is electrically conductive. Moving the aluminum foil to the yellow box would mean that the agent is giving up on the possibility of the aluminum foil being conductive, </span><span class="ltx_text ltx_ulem_dashuline" id="A3.T8.4.7.1.1.1.3" style="font-size:90%;">which is not in line with the current observation</span><span class="ltx_text" id="A3.T8.4.7.1.1.1.4" style="font-size:90%;">. Therefore, Judgment: Bad</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.4.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.4.8.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.4.8.1.1">
<span class="ltx_p" id="A3.T8.4.8.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_italic" id="A3.T8.4.8.1.1.1.1" style="font-size:90%;">Judgment (Irrelevant Actions):</span><span class="ltx_text" id="A3.T8.4.8.1.1.1.2" style="font-size:90%;"> The agent is not using the art studio’s resources effectively, as </span><span class="ltx_text ltx_ulem_dashuline" id="A3.T8.4.8.1.1.1.3" style="font-size:90%;">the cup containing red paint is not related to the task</span><span class="ltx_text" id="A3.T8.4.8.1.1.1.4" style="font-size:90%;"> of creating green paint. Therefore, Judgment: Bad</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.4.9">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T8.4.9.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.4.9.1.1">
<span class="ltx_p" id="A3.T8.4.9.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.4.9.1.1.1.1" style="font-size:90%;">TextCraft</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.4.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.4.10.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.4.10.1.1">
<span class="ltx_p" id="A3.T8.4.10.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_italic" id="A3.T8.4.10.1.1.1.1" style="font-size:90%;">Judgment (Invalid Actions):</span><span class="ltx_text" id="A3.T8.4.10.1.1.1.2" style="font-size:90%;"> The agent is stuck in an infinite loop of trying to execute an </span><span class="ltx_text ltx_ulem_dashuline" id="A3.T8.4.10.1.1.1.3" style="font-size:90%;">invalid action</span><span class="ltx_text" id="A3.T8.4.10.1.1.1.4" style="font-size:90%;">, which is not helpful in solving the task. Therefore, Judgment: Bad</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.4.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.4.11.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.4.11.1.1">
<span class="ltx_p" id="A3.T8.4.11.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_italic" id="A3.T8.4.11.1.1.1.1" style="font-size:90%;">Judgment (Mismatch Observation):</span><span class="ltx_text" id="A3.T8.4.11.1.1.1.2" style="font-size:90%;"> The action is not good because it is not possible to craft a dried kelp block with 9 dried kelp. </span><span class="ltx_text ltx_ulem_dashuline" id="A3.T8.4.11.1.1.1.3" style="font-size:90%;">The observation suggests that the agent lacks the necessary items to craft the block.</span><span class="ltx_text" id="A3.T8.4.11.1.1.1.4" style="font-size:90%;"> This action is actually harmful to the task of crafting the block. Therefore, Judgment: Bad</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.4.12">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A3.T8.4.12.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.4.12.1.1">
<span class="ltx_p" id="A3.T8.4.12.1.1.1" style="width:416.3pt;"><span class="ltx_text ltx_font_italic" id="A3.T8.4.12.1.1.1.1" style="font-size:90%;">Judgment (Irrelevant Actions):</span><span class="ltx_text" id="A3.T8.4.12.1.1.1.2" style="font-size:90%;"> The agent is trying to craft diamond boots, which requires 4 diamonds. The agent has already obtained 4 diamonds, which is sufficient to craft the boots. However, the agent is trying to craft a diamond block instead, which requires 9 diamonds. </span><span class="ltx_text ltx_ulem_dashuline" id="A3.T8.4.12.1.1.1.3" style="font-size:90%;">This action is not helpful in achieving the goal of crafting diamond boots</span><span class="ltx_text" id="A3.T8.4.12.1.1.1.4" style="font-size:90%;">, as it will waste the 4 diamonds the agent already has. Therefore, Judgment: Bad</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table displays example results from evaluating the adaptive transition points method within Agent-R.  The evaluations were performed using the Llama-3.1-8B language model, trained on trajectories generated by Agent-R during its third iteration. For each example, the table shows a judgment (categorized as Invalid Actions, Mismatch Observation, or Irrelevant Actions), the reasoning behind that judgment, and the final judgment made (Good or Bad).  The examples illustrate how the model identifies and classifies errors made in an agent's trajectory within the interactive environments.
> <details>
> <summary>read the caption</summary>
> Table 8: Example results from the evaluation of adaptive transition points. These judgments are all generated by Llama-3.1-8B, trained on trajectories from Agent-R during the third iteration.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.11425/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11425/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11425/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11425/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11425/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11425/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11425/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11425/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11425/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11425/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11425/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11425/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11425/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11425/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11425/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11425/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11425/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11425/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11425/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11425/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}