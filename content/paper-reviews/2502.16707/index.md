---
title: "Reflective Planning: Vision-Language Models for Multi-Stage Long-Horizon Robotic Manipulation"
summary: "Reflect VLM: Improving robotic manipulation via vision-language models with a novel reflection mechanism and a diffusion model for imagined futures."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Robotics", "🏢 Cornell University",]
showSummary: true
date: 2025-02-23
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.16707 {{< /keyword >}}
{{< keyword icon="writer" >}} Yunhai Feng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.16707" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.16707" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.16707/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing Vision-Language Models (VLMs) hold promise for solving complex robotic manipulation tasks, but they often struggle with the intricacies of physical reasoning and long-horizon planning due to compounding errors. These limitations hinder their ability to perform intricate action sequences that require nuanced physical interactions. Therefore, there is a need to enhance VLMs' understanding of physics and ability to plan over extended horizons. 



This paper introduces a novel test-time computation framework, named ReflectVLM, that significantly enhances VLMs' capabilities for multi-stage robotic manipulation tasks. ReflectVLM iteratively improves a pre-trained VLM using a reflection mechanism and diffusion models to predict future world states, enabling the VLM to refine its decisions by examining the predicted outcomes of its proposed actions. Experiments demonstrate that ReflectVLM outperforms state-of-the-art commercial VLMs and traditional planning approaches.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} The reflection mechanism enables VLMs to critique and refine their planned actions by analyzing predicted outcomes. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The diffusion-based dynamics model helps VLMs imagine and evaluate potential future states without extensive retraining. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} ReflectVLM outperforms state-of-the-art commercial VLMs and traditional planning approaches, demonstrating enhanced physical reasoning and manipulation capabilities. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces ReflectVLM, a **novel framework enhancing VLMs' physical reasoning for robotic manipulation**, with implications for autonomous systems requiring visual understanding and sequential decision-making.

------
#### Visual Insights



![](https://arxiv.org/html/2502.16707/x1.png)

> 🔼 The figure illustrates the reflective planning process.  A Vision-Language Model (VLM) initially suggests an action. A diffusion dynamics model then simulates the outcome of that action, predicting the future state of the environment. This prediction is fed back to the VLM, allowing it to reconsider its initial plan and potentially propose a more effective action. This iterative refinement process, using imagined future states, is what is meant by 'reflective planning'.
> <details>
> <summary>read the caption</summary>
> Figure 1: Reflective planning. Our method uses a VLM to propose actions and a diffusion dynamics model to imagine the future state of executing the plan. The imagined future helps the VLM reflect the initial plan and propose better action.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T1.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T1.3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S6.T1.3.1.1.1">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T1.3.1.1.2">Iter. 1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T1.3.1.1.3">Iter. 2</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T1.3.1.1.4">Iter. 3</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T1.3.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T1.3.2.1.1">w/o reflect</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.3.2.1.2">58.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.3.2.1.3">74.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.3.2.1.4"><span class="ltx_text ltx_font_bold" id="S6.T1.3.2.1.4.1">77.8</span></td>
</tr>
<tr class="ltx_tr" id="S6.T1.3.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T1.3.3.2.1">w/o reflect@test</th>
<td class="ltx_td ltx_align_center" id="S6.T1.3.3.2.2">64.4</td>
<td class="ltx_td ltx_align_center" id="S6.T1.3.3.2.3">76.0</td>
<td class="ltx_td ltx_align_center" id="S6.T1.3.3.2.4"><span class="ltx_text ltx_font_bold" id="S6.T1.3.3.2.4.1">82.2</span></td>
</tr>
<tr class="ltx_tr" id="S6.T1.3.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T1.3.4.3.1">reflect w/ diffusion</th>
<td class="ltx_td ltx_align_center" id="S6.T1.3.4.3.2">66.2</td>
<td class="ltx_td ltx_align_center" id="S6.T1.3.4.3.3">75.8</td>
<td class="ltx_td ltx_align_center" id="S6.T1.3.4.3.4"><span class="ltx_text ltx_font_bold" id="S6.T1.3.4.3.4.1">82.4</span></td>
</tr>
<tr class="ltx_tr" id="S6.T1.3.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S6.T1.3.5.4.1">reflect w/ sim</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T1.3.5.4.2">66.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T1.3.5.4.3">75.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T1.3.5.4.4"><span class="ltx_text ltx_font_bold" id="S6.T1.3.5.4.4.1">85.4</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the success rates achieved by different training approaches for a robotic manipulation task across three iterations of post-training.  It shows how the success rate improves over iterations for models with and without a reflection mechanism, and using simulation versus real-world data for training. The comparison highlights the impact of using reflection and a diffusion dynamics model on the overall performance of the vision-language model (VLM).
> <details>
> <summary>read the caption</summary>
> Table 1: Post-training performance Success rates (%) of post-training variants over the number of iterations.
> </details>





### In-depth insights


#### Reflective VLMs
**Reflective VLMs** enhance physical reasoning in robotic manipulation by iteratively improving pretrained VLMs with a 'reflection' mechanism. This involves using a generative model to **imagine future world states**, guiding action selection, and critically reflecting on potential suboptimalities to refine reasoning. The system leverages visual predictions and iterative refinement, enabling a more sophisticated understanding of physical constraints. By combining VLMs with reflection and targeted post-training, the system gains a better understanding of physical constraints and their implications for action planning. This approach contrasts with existing methods that primarily focus on language-only or visual comprehension tasks, by addressing physical reasoning and robotics applications through visual imagination and revision. The approach leverages internet-scale knowledge while overcoming limitations in physical reasoning and long-horizon planning. This combination of visual prediction and iterative refinement allows the VLM to improve its decision-making capabilities without requiring extensive retraining.

#### Test-Time Adapt
**Test-time adaptation** is crucial for deploying machine learning models in real-world scenarios where data distributions can shift. It involves adjusting the model's parameters or outputs on the fly, using only the input data encountered during deployment, without access to the original training data. This can be achieved through techniques like **self-training**, where the model iteratively refines its predictions by treating high-confidence outputs as pseudo-labels, or through **meta-learning** approaches that train the model to quickly adapt to new tasks. Effective test-time adaptation requires careful consideration of factors like the **adaptation rate**, the **regularization strength**, and the **potential for catastrophic forgetting**, where the model loses its previously learned knowledge while adapting to new data. Ultimately, successful test-time adaptation leads to more robust and reliable model performance in dynamic and uncertain environments.

#### Visual Dynamics
Visual dynamics, especially in the context of robotic manipulation, involve understanding how actions change the visual state of the environment. **Predicting these changes** is crucial for planning and control. Models that can accurately simulate the consequences of actions enable robots to **reason about potential outcomes** without physically executing them. These models can range from simple kinematic predictors to complex physics engines or learned models like diffusion models. The effectiveness of visual dynamics hinges on the **fidelity of the predictions**; a model that accurately captures the nuances of object interactions and environmental constraints will lead to better planning and execution. Incorporating visual dynamics into a robotic system typically involves a **learning phase**, where the model is trained on data of robot actions and their resulting visual changes. At inference, the model predicts how the environment will change given a sequence of actions, allowing the robot to select the most promising plan.

#### Assembly Tasks
The research paper addresses the intricate challenges of **robotic assembly**, focusing on multi-stage long-horizon manipulation. Assembly tasks, especially those involving interlocking parts, are central to evaluating the method's ability to reason about physical constraints and action sequences. **Performance in assembly demonstrates the model's understanding** of complex physical interactions and planning over extended horizons. Task complexity underscores the importance of reflection mechanisms for refining actions based on imagined outcomes. **Assembly provides a grounded environment** for assessing the VLM's capabilities in sequential decision-making and error recovery, highlighting the need for robust long-horizon manipulation.

#### Iterative Refine
The concept of iterative refinement, though not explicitly mentioned as a heading, is a powerful paradigm. It allows for the **successive approximation** of a solution, starting with an initial guess and improving it over multiple iterations. This is crucial when facing complex tasks where a direct, one-shot solution is difficult to obtain. In robotics, iterative refinement can be used to improve robot actions gradually and create a robust system. By iteratively **evaluating and correcting actions**, robots can learn to adapt to the complexities of the environment and achieve desired outcomes in dynamic and unpredictable conditions. The iterative refinement process also involves continuous **self-assessment** to identify shortcomings in the initial steps. By identifying these points of suboptimal action, it contributes to building a robust and generalizable planning system. This iterative process promotes increased precision and **resilience to unexpected situations.**


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.16707/x2.png)

> 🔼 This figure illustrates how training data is generated for the reflection mechanism.  For each timestep in a rollout (a sequence of actions and observations), two training examples are created.  The first example (Q1, A1) consists of a question (Q1) that asks what action should be taken next, given the current and goal states and a history of previous actions. The answer (A1) is the action the expert policy would take in this situation.  The second example (Q2, A2) focuses on reflection. The question (Q2) is similar to Q1, but it adds the hypothetical future state that would result from taking the proposed action. This enables the VLM to learn to evaluate its proposed actions and revise them if the imagined future looks suboptimal.  'H' represents the number of steps the model is asked to look ahead into the future to make this evaluation, and 'h' represents the length of the history of previous actions considered.
> <details>
> <summary>read the caption</summary>
> Figure 2: Training data generation. Training data for the reflection mechanism is collected by relabeling the rollouts. For each timestep, two training examples are generated: (Q1, A1) for action proposal and (Q2, A2) for reflection. H𝐻Hitalic_H is the imagination horizon, and hℎhitalic_h is the history length. at∗superscriptsubscript𝑎𝑡a_{t}^{*}italic_a start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT is the action label given by the expert policy.
> </details>



![](https://arxiv.org/html/2502.16707/x3.png)

> 🔼 The figure showcases the architecture of the Diffusion Dynamics Model (DDM), a key component in the Reflective Planning framework.  The DDM uses a diffusion process to predict future visual states based on current observations and planned actions. It comprises four main parts: a latent encoder and a text encoder (both frozen during training), a Diffusion UNet, and a latent decoder. The latent encoder converts image inputs into latent representations.  Concurrently, the text encoder processes the action text into a corresponding representation.  Both latent representations are fed into the Diffusion UNet which performs the core diffusion process, refining the noise added to the latent image representation. Finally, the latent decoder reconstructs a visual representation from the refined latent representation output by the UNet. Only the Diffusion UNet and the latent decoder are fine-tuned on task data; the encoder components remain frozen to leverage their pre-trained knowledge.  The symbol 𝒩 denotes the addition of random noise during the diffusion process. 
> <details>
> <summary>read the caption</summary>
> Figure 3: Architecture of Diffusion Dynamics Model, which consists of a latent encoder, text encoder, Diffusion UNet and latent decoder. The latent encoder and text encoder are frozen during training, while Diffusion UNet and latent decoder are finetuned on our task data. 𝒩𝒩\mathcal{N}caligraphic_N: random noise.
> </details>



![](https://arxiv.org/html/2502.16707/x4.png)

> 🔼 This figure shows a filmstrip illustrating the ReflectVLM solving a complex assembly task. Each frame represents a timestep, starting with the initial state and the goal state (top-left, green border).  The black text above each frame indicates the action taken at that step. Greyed-out actions show the VLM's initial incorrect action proposal before reflection.  The red border around one of the images highlights a key moment (timestep 15) where the VLM initially suggested picking up a purple brick but reconsidered after using its reflection mechanism to visualize the next steps. The reflection process showed that picking up the purple brick would not lead to progress towards the goal; therefore, the VLM corrected its action to pick up the yellow brick.
> <details>
> <summary>read the caption</summary>
> Figure 4: Filmstrip of our method solving a complicated assembly task. Frames are indexed by timestep. The goal image is in the top-left corner (with a green border). Each frame is the observation after executing the action (in black) above it. The other action in gray is the original action proposed by the VLM if it is revised after reflection. We highlight the reflection process at timestep 15, where the VLM first proposes an action to pick up the purple brick, but after reflection, it chooses to pick up the yellow brick instead as the generated future state (red-bordered image) shows little progress towards the goal.
> </details>



![](https://arxiv.org/html/2502.16707/x5.png)

> 🔼 Figure 5 illustrates examples of multi-stage robotic manipulation tasks. Part (a) displays several example tasks.  Each example shows the initial state (top) and the desired goal state (bottom) of the task. These tasks involve assembling interlocking pieces into a specified configuration on a board. Appendix B provides additional examples. Part (b) uses a graph to represent the dependencies between the objects on the board in a sample task.  Each node represents an object, and the directed edges indicate the order in which the objects must be placed; that is, an object cannot be placed until its predecessor objects are already in place.
> <details>
> <summary>read the caption</summary>
> Figure 5: Task examples. (a) Generated multi-stage manipulation tasks with interlocking pieces. Top: initial configurations. Bottom: goal configurations. See App. B for more examples. (b) The graph shows the dependencies between the objects in the blue assembly board on the left. Each node represents an object, and each directed edge indicates the predecessor object should be assembled before the successor object.
> </details>



![](https://arxiv.org/html/2502.16707/x6.png)

> 🔼 Figure 6 presents a bar chart comparing the success rates of various methods on 100 multi-stage robotic manipulation tasks.  The methods include several state-of-the-art Vision-Language Models (VLMs) evaluated in a zero-shot setting (meaning no fine-tuning on the specific task), a Monte Carlo Tree Search (MCTS) approach, and the proposed ReflectVLM method with and without a diffusion model for future state prediction and with and without reflection.  The ReflectVLM method uses the same amount of labeled data and maintains computational efficiency compared to existing methods.  ReflectVLM significantly outperforms all baselines. Note that the zero-shot VLMs and MCTS results are from single runs, while ReflectVLM results are averaged over five runs to account for variability.
> <details>
> <summary>read the caption</summary>
> Figure 6: Performance of our method and baselines. Success rate (%) on 100 tasks. For the zero-shot test of state-of-the-art VLMs and MCTS, the experiments were conducted once; for other methods, the results are the average of five seeds.
> </details>



![](https://arxiv.org/html/2502.16707/x7.png)

> 🔼 Figure 7 demonstrates the process of procedurally generating assembly tasks for robotic manipulation.  It starts with an empty voxel representation of the board (a). A base board is then generated (b), followed by the iterative addition of interlocking bricks. Panel (c) shows the creation of a red brick, and (d) shows a blue brick intersecting with the red one. Panel (e) highlights the critical voxels where the bricks overlap.  The choice of assigning these voxels to either brick impacts the resulting structure, as shown in (f). Finally, (g) presents an exploded view of the resulting board, comprised of three interlocking pieces, which is a sample task generated using this procedure.
> <details>
> <summary>read the caption</summary>
> Figure 7: Example of task generation. (a) Voxel representation of the board. (b) Generating a base board. (c) Generating a red brick. (d) Generating another blue brick. (e) Critical voxels (highlighted in purple) at the intersection of the two bricks. (f) Handling intersection by assigning the critical voxels to the red brick. (g) Explosion view of the board consisting of three interlocking pieces.
> </details>



![](https://arxiv.org/html/2502.16707/x8.png)

> 🔼 Figure 8 presents example multi-stage robotic manipulation tasks procedurally generated for the paper. The figure showcases a range of task complexities, from simple peg insertion to intricate assembly challenges involving multiple interlocking pieces.  The top row displays the initial state of each task, showing the starting arrangement of the objects. The bottom row shows the corresponding goal state, illustrating the desired final configuration of the assembled pieces.
> <details>
> <summary>read the caption</summary>
> Figure 8: Samples of generated tasks. We procedurally generate a variety of multi-stage manipulation tasks, ranging from simple peg insertion to complex assembly tasks that contains multiple interlocking pieces. Top: initial configurations. Bottom: goal configurations.
> </details>



![](https://arxiv.org/html/2502.16707/x9.png)

> 🔼 The figure illustrates the architecture of the Vision-Language Model (VLM) used in the paper.  It's a multimodal model combining a vision encoder and a Large Language Model (LLM).  The vision encoder processes images, converting them into latent embeddings. These embeddings, along with textual input, are then fed into the LLM.  To improve efficiency and adaptability, Low-Rank Adaptation (LoRA) layers are added to the LLM. The combined image and text embeddings are used for multimodal reasoning within the LLM.
> <details>
> <summary>read the caption</summary>
> Figure 9: Architecture of our VLM. The model consists of a vision encoder and an LLM. We also add Low-Rank Adaptation (LoRA) (Hu et al., 2022) layers to LLM for efficient adaptation. The input sequence contains interleaved images and text, where images are encoded into latent embeddings with a shared vision encoder. Finally, the concatenation of text and image embeddings are fed into VLM for multimodal reasoning.
> </details>



![](https://arxiv.org/html/2502.16707/extracted/6226102/figs/zero_shot_results/gpto1-success.png)

> 🔼 This figure showcases successful task completions by three different large language models (LLMs) on multi-stage robotic manipulation tasks.  Each row represents a separate task, showing the initial state and then a sequence of actions leading to a successful completion.  The top row demonstrates results using the Gemini-2.0 LLM, the middle row uses Gemini-2.0-Thinking, and the bottom row displays the results of GPT-40.  Each image within a row shows a step in the process, illustrating how the LLM directed the robot arm to interact with the puzzle pieces. This visualization highlights the capabilities of these LLMs to handle multi-step planning and achieve goals in complex environments.
> <details>
> <summary>read the caption</summary>
> Figure 10: Success cases of zero-shot VLMs. Top: Gemini-2.0; Middle: Gemini-2.0-Thinking; Bottom: GPT-4o.
> </details>



![](https://arxiv.org/html/2502.16707/extracted/6226102/figs/zero_shot_results/gemini-2.png)

> 🔼 This figure showcases successful task completion examples by the GPT-01 model, a state-of-the-art Vision-Language Model,  tested in a zero-shot setting.  Each row represents a separate task. The 'Goal' column displays the target configuration. The subsequent columns illustrate the steps taken by the model to achieve the goal, showing the state of the environment at each timestep.
> <details>
> <summary>read the caption</summary>
> Figure 11: Success cases of zero-shot VLMs (GPT-o1).
> </details>



![](https://arxiv.org/html/2502.16707/extracted/6226102/figs/zero_shot_results/gemini-2-think.png)

> 🔼 This figure shows a failure case of the Gemini-2.0 model in a multi-stage robotic manipulation task.  The model attempts to solve a task that involves assembling interlocking pieces on a board. The figure is a sequence of images showing the robot's actions at each step, starting from the initial state and ending in a failure state where the task is not completed successfully.  The failure demonstrates the limitations of the zero-shot VLM model, specifically in its reasoning abilities concerning long-term planning and complex physical interactions, especially when dealing with the spatial constraints and dependencies involved in successfully manipulating interlocking objects.
> <details>
> <summary>read the caption</summary>
> Figure 12: Failure case of Gemini-2.0.
> </details>



![](https://arxiv.org/html/2502.16707/extracted/6226102/figs/zero_shot_results/gpt4o.png)

> 🔼 This figure visualizes a failure case encountered by the Gemini-2.0-Thinking model during a multi-stage robotic manipulation task. It's a sequence of images showing the robot's actions and the state of the environment at each step.  The robot attempts to assemble a puzzle with multiple interlocking pieces. The sequence highlights the model's inability to successfully complete the task due to a series of incorrect actions that lead to a state from which successful completion is no longer possible.  Each image depicts the robot's arm, its current action, and the current state of the puzzle pieces on the board.
> <details>
> <summary>read the caption</summary>
> Figure 13: Failure case of Gemini-2.0-Thinking.
> </details>



![](https://arxiv.org/html/2502.16707/extracted/6226102/figs/zero_shot_results/gpto1.png)

> 🔼 This figure visualizes a failure case of GPT-40, a large language model, in a multi-stage robotic manipulation task.  The task involves assembling a puzzle board by inserting various colored blocks in a specific order. The figure shows a sequence of images, each representing a step in the robot's attempt to complete the task. The initial state, goal state and actions are displayed in the figure. Each step shows an action performed by the model along with the resulting state of the puzzle.  The sequence illustrates a series of incorrect actions that lead to the failure of the task.  The model fails to correctly assemble the puzzle due to errors in planning and execution. This example highlights the challenges faced by large language models in handling complex physical tasks that require reasoning over long time horizons and adapting to unexpected situations.
> <details>
> <summary>read the caption</summary>
> Figure 14: Failure case of GPT-4o.
> </details>



![](https://arxiv.org/html/2502.16707/x10.png)

> 🔼 This figure shows a failure case of GPT-01 in a multi-stage robotic manipulation task.  The task involves assembling a puzzle board by inserting various colored pieces. GPT-01's plan is visualized through a series of steps, each showing the robot's action and the resulting state. The figure demonstrates the model's inability to successfully complete the task due to a flawed plan, possibly indicating limitations in its understanding of physical interactions and long-term consequences of actions.
> <details>
> <summary>read the caption</summary>
> Figure 15: Failure case of GPT-o1.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T2.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T2.3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S6.T2.3.1.1.1">Method</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S6.T2.3.1.1.2">Inference time (s)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T2.3.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T2.3.2.1.1">Ours w/o reflect@test</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S6.T2.3.2.1.2">0.45</td>
</tr>
<tr class="ltx_tr" id="S6.T2.3.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T2.3.3.2.1">Ours w/ diffusion</th>
<td class="ltx_td ltx_align_right" id="S6.T2.3.3.2.2">11.10</td>
</tr>
<tr class="ltx_tr" id="S6.T2.3.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T2.3.4.3.1">Ours w/ sim</th>
<td class="ltx_td ltx_align_right" id="S6.T2.3.4.3.2">6.05</td>
</tr>
<tr class="ltx_tr" id="S6.T2.3.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S6.T2.3.5.4.1">MCTS</th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S6.T2.3.5.4.2">391.42</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the computational cost of different methods in terms of inference time per step.  The inference time reflects the time taken for each planning step during the execution of a robotic manipulation task.  The results are averaged across multiple tasks (100) to ensure a robust comparison.  For MCTS (Monte Carlo Tree Search), only a single trial was used, while for all other approaches, the experiment was run five times, and the average is presented. All experiments were conducted using a single NVIDIA A100 GPU to maintain consistency in computational resources.
> <details>
> <summary>read the caption</summary>
> Table 2: Inference computation cost. Inference wall clock time per step. MCTS result is averaged over 100 tasks and 1 seed; the others are averaged over 100 tasks and 5 seeds. All experiments are done on a single A100 GPU.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T3.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T3.3.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="A4.T3.3.1.1.1" rowspan="2"><span class="ltx_text" id="A4.T3.3.1.1.1.1">Res</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A4.T3.3.1.1.2">LoRA</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T3.3.1.1.3">Training</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T3.3.1.1.4">Batch</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T3.3.1.1.5" rowspan="2"><span class="ltx_text" id="A4.T3.3.1.1.5.1">Optimizer</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T3.3.1.1.6">Warmup</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T3.3.1.1.7">Learning rate</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T3.3.1.1.8">Weight</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T3.3.1.1.9">LR</td>
</tr>
<tr class="ltx_tr" id="A4.T3.3.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T3.3.2.2.1">Rank</th>
<td class="ltx_td ltx_align_center" id="A4.T3.3.2.2.2">Epoch</td>
<td class="ltx_td ltx_align_center" id="A4.T3.3.2.2.3">Size</td>
<td class="ltx_td ltx_align_center" id="A4.T3.3.2.2.4">Epoch</td>
<td class="ltx_td ltx_align_center" id="A4.T3.3.2.2.5">BC</td>
<td class="ltx_td ltx_align_center" id="A4.T3.3.2.2.6">Iter. 1,2,3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.3.2.2.7">Decay</td>
<td class="ltx_td ltx_align_center" id="A4.T3.3.2.2.8">Schedule</td>
</tr>
<tr class="ltx_tr" id="A4.T3.3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A4.T3.3.3.3.1">336px</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A4.T3.3.3.3.2">128</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T3.3.3.3.3">1</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T3.3.3.3.4">128</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T3.3.3.3.5">AdamW</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T3.3.3.3.6">0.03</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T3.3.3.3.7">5e-5</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T3.3.3.3.8">1e-5</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T3.3.3.3.9">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T3.3.3.3.10">Cosine</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used during the training of the Vision-Language Model (VLM).  It includes information about the resolution (Res), rank of the Low-Rank Adaptation (LoRA) layers, number of training epochs, batch size, optimizer used (AdamW), warmup epochs, learning rate, weight decay, and learning rate schedule.  These parameters are crucial for fine-tuning the pre-trained VLM on the specific robotic manipulation task.
> <details>
> <summary>read the caption</summary>
> Table 3: Training parameters of VLM.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T4.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T4.3.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A4.T4.3.1.1.1" rowspan="2"><span class="ltx_text" id="A4.T4.3.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T4.3.1.1.2" rowspan="2"><span class="ltx_text" id="A4.T4.3.1.1.2.1">Res</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T4.3.1.1.3">Training</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T4.3.1.1.4">Batch</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T4.3.1.1.5" rowspan="2"><span class="ltx_text" id="A4.T4.3.1.1.5.1">Optimizer</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T4.3.1.1.6">Warmup</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T4.3.1.1.7">Learning</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T4.3.1.1.8">Weight</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T4.3.1.1.9">Beta1,</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T4.3.1.1.10">Grad</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T4.3.1.1.11">LR</th>
</tr>
<tr class="ltx_tr" id="A4.T4.3.2.2">
<td class="ltx_td ltx_align_center" id="A4.T4.3.2.2.1">Steps</td>
<td class="ltx_td ltx_align_center" id="A4.T4.3.2.2.2">Size</td>
<td class="ltx_td ltx_align_center" id="A4.T4.3.2.2.3">Steps</td>
<td class="ltx_td ltx_align_center" id="A4.T4.3.2.2.4">Rate</td>
<td class="ltx_td ltx_align_center" id="A4.T4.3.2.2.5">Decay</td>
<td class="ltx_td ltx_align_center" id="A4.T4.3.2.2.6">Beta2</td>
<td class="ltx_td ltx_align_center" id="A4.T4.3.2.2.7">Norm</td>
<td class="ltx_td ltx_align_center" id="A4.T4.3.2.2.8">Schedule</td>
</tr>
<tr class="ltx_tr" id="A4.T4.3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A4.T4.3.3.3.1">UNet</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T4.3.3.3.2">512px</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T4.3.3.3.3">20K</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T4.3.3.3.4">640</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T4.3.3.3.5">AdamW</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T4.3.3.3.6">2K</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T4.3.3.3.7">1e-4</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T4.3.3.3.8">0.01</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T4.3.3.3.9">0.9, 0.999</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T4.3.3.3.10">1.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T4.3.3.3.11">Cosine</th>
</tr>
<tr class="ltx_tr" id="A4.T4.3.4.4">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T4.3.4.4.1">Decoder</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T4.3.4.4.2">512px</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T4.3.4.4.3">4K</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T4.3.4.4.4">160</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T4.3.4.4.5">AdamW</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T4.3.4.4.6">1K</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T4.3.4.4.7">1e-7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T4.3.4.4.8">0.01</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T4.3.4.4.9">0.9, 0.999</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T4.3.4.4.10">1.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T4.3.4.4.11">Cosine</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used during the training of the Diffusion Dynamics Model (DDM).  The DDM is a key component of the ReflectVLM system, used to predict future visual states based on current observations and planned actions. The table specifies the model's resolution, the optimizer used (AdamW), training steps, batch size, warmup steps, learning rate, weight decay, beta1, beta2, gradient norm, and learning rate schedule.  Different configurations are shown for the UNet and Decoder components of the DDM, reflecting distinct training strategies employed for these two parts of the model.
> <details>
> <summary>read the caption</summary>
> Table 4: Training parameters of Diffusion Dynamics Models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A6.T5.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A6.T5.3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A6.T5.3.1.1.1">Model</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A6.T5.3.1.1.2">Success Trajectory ID / Planing Steps</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T5.3.1.1.3">Max Steps</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T5.3.1.1.4">Min Steps</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T5.3.1.1.5">Avg Steps</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A6.T5.3.2.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A6.T5.3.2.1.1">Gemini-2.0</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A6.T5.3.2.1.2">5/6, 12/4, 16/18, 47/11, 60/4, 86/6</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A6.T5.3.2.1.3">18</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A6.T5.3.2.1.4">4</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A6.T5.3.2.1.5">8.2</td>
</tr>
<tr class="ltx_tr" id="A6.T5.3.3.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T5.3.3.2.1">Gemini-2.0-Thinking</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T5.3.3.2.2">5/6, 12/4, 40/20, 47/16, 50/8, 60/8, 86/10, 90/11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T5.3.3.2.3">20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T5.3.3.2.4">4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T5.3.3.2.5">10.4</td>
</tr>
<tr class="ltx_tr" id="A6.T5.3.4.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T5.3.4.3.1">GPT-4o</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T5.3.4.3.2">12/15, 16/5, 19/4, 47/10, 60/4, 90/6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T5.3.4.3.3">15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T5.3.4.3.4">4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T5.3.4.3.5">7.3</td>
</tr>
<tr class="ltx_tr" id="A6.T5.3.5.4">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A6.T5.3.5.4.1" rowspan="2"><span class="ltx_text" id="A6.T5.3.5.4.1.1">GPT-o1</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T5.3.5.4.2">12/9, 16/6, 17/15, 47/8, 50/16, 58/18, 60/14, 62/33,</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A6.T5.3.5.4.3" rowspan="2"><span class="ltx_text" id="A6.T5.3.5.4.3.1">33</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A6.T5.3.5.4.4" rowspan="2"><span class="ltx_text" id="A6.T5.3.5.4.4.1">4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A6.T5.3.5.4.5" rowspan="2"><span class="ltx_text" id="A6.T5.3.5.4.5.1">13.1</span></td>
</tr>
<tr class="ltx_tr" id="A6.T5.3.6.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A6.T5.3.6.5.1">66/6, 67/12, 72/32, 77/9, 85/9, 86/6, 90/4</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the performance of several large language models (LLMs) in a zero-shot setting on multi-stage robotic manipulation tasks.  It shows the success rate, the range of planning steps used, and the average number of steps taken by each model to complete the tasks.
> <details>
> <summary>read the caption</summary>
> Table 5: Detailed evaluation results of zero-shot VLMs.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.16707/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16707/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16707/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16707/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16707/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16707/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16707/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16707/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16707/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16707/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16707/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16707/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16707/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16707/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16707/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16707/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16707/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16707/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16707/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16707/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}