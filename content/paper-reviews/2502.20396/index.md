---
title: "Sim-to-Real Reinforcement Learning for Vision-Based Dexterous Manipulation on Humanoids"
summary: "Sim-to-real RL recipe achieves robust vision-based dexterous humanoid manipulation without human demos!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Robotics", "🏢 UC Berkeley",]
showSummary: true
date: 2025-02-27
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.20396 {{< /keyword >}}
{{< keyword icon="writer" >}} Toru Lin et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-03 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.20396" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.20396" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.20396/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Deep Reinforcement Learning (RL) has shown promising results in various fields, but dexterous robot manipulation remains limited due to challenges such as environment modeling, reward design, and object perception. Specifically, matching a simulated environment with the real world is difficult and time consuming. Also, the variety of object properties poses challenges in designing generalizable rewards and transferring policies from simulation to reality. Thus, it is hard to scale and generalize via autonomous exploration.



This work addresses these issues by introducing an automated real-to-sim tuning module to align simulated and real environments, along with a generalized reward design scheme that simplifies reward engineering for long-horizon tasks. To improve sample efficiency, a divide-and-conquer distillation process is employed and a mixture of sparse and dense object representations is adopted to bridge the sim-to-real perception gap. The proposed techniques enable a humanoid robot to perform dexterous manipulation tasks with robust generalization and high performance without human demonstrations.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} An automated real-to-sim tuning module effectively bridges the gap between simulated and real-world environments. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A generalized reward design scheme simplifies reward engineering for long-horizon, contact-rich manipulation tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Combining sparse and dense object representations improves sim-to-real transfer for vision-based dexterous manipulation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important as it presents a **comprehensive sim-to-real RL recipe for vision-based dexterous manipulation on humanoids.** By tackling environment modeling, reward design, policy learning, and sim-to-real transfer, this work provides **valuable insights and techniques** that could significantly **advance research in robotics and automation** and opens new avenues for creating more capable and adaptable humanoid robots.

------
#### Visual Insights



![](https://arxiv.org/html/2502.20396/x1.png)

> 🔼 This figure illustrates a sim-to-real reinforcement learning (RL) framework for vision-based dexterous manipulation using humanoid robots.  It highlights four key techniques that bridge the sim-to-real gap: automated real-to-sim environment tuning to reduce differences between simulated and real environments; a generalized reward design that breaks down complex manipulation tasks into simpler contact and object-state goals, thus simplifying reward engineering;  sample-efficient policy learning through task-aware hand pose initialization and a divide-and-conquer distillation method; and vision-based sim-to-real transfer facilitated by using a combination of sparse and dense object representations for improved robustness and generalization.
> <details>
> <summary>read the caption</summary>
> Figure 1: A sim-to-real RL recipe for vision-based dexterous manipulation. We close the environment modeling gap between simulation and the real world through an automated real-to-sim tuning module, design generalizable task rewards by disentangling each manipulation task into contact states and object states, improve sample efficiency of dexterous manipulation policy training by using task-aware hand poses and divide-and-conquer distillation, and transfer vision-based policies to the real world with a mixture of sparse and dense object representations.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.1.1.1.1">
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1.1" style="padding:1.5pt 7.0pt;">Autotune MSE</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1.2" style="padding:1.5pt 7.0pt;">Lowest</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1.3" style="padding:1.5pt 7.0pt;">Median</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1.4" style="padding:1.5pt 7.0pt;">Highest</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.1.1.2.1">
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.1.1.2.1.1" style="padding:1.5pt 7.0pt;">Grasp Success</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.1.1.2.1.2" style="padding:1.5pt 7.0pt;">8 / 10</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.1.1.2.1.3" style="padding:1.5pt 7.0pt;">3 / 10</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.1.1.2.1.4" style="padding:1.5pt 7.0pt;">0 / 10</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.3.2">
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T1.1.1.3.2.1" style="padding:1.5pt 7.0pt;">Reach Success</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T1.1.1.3.2.2" style="padding:1.5pt 7.0pt;">7 / 10</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T1.1.1.3.2.3" style="padding:1.5pt 7.0pt;">3 / 10</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T1.1.1.3.2.4" style="padding:1.5pt 7.0pt;">0 / 10</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of an experiment evaluating the correlation between the mean squared error (MSE) of the autotuned robot model and the success rate of sim-to-real transfer for a robotic grasping task.  Ten policy checkpoints, trained identically except for their random seed, were tested for each set of modeling parameters generated by the autotune module.  The success rate was assessed by evaluating two stages of the grasp-and-reach task: grasp success and reach success.  Lower MSE values, indicating better alignment between simulation and reality via autotuning, are associated with higher sim-to-real success rates, demonstrating the effectiveness of the autotune module in bridging the sim-to-real gap.
> <details>
> <summary>read the caption</summary>
> TABLE I: Lower MSE from autotune correlates with higher sim-to-real success rate. For each set of modeling parameters, we test the sim-to-real transfer performance of 10 policy checkpoints (trained identically except for random seed). We evaluate success rate by stages on the grasp-and-reach task, and observe a correlation between lower MSE measured by autotune module and higher sim-to-real transfer success rate.
> </details>





### In-depth insights


#### Auto Real2Sim
The "Auto Real2Sim" heading suggests an automated approach to bridging the gap between real-world scenarios and their simulated counterparts, a crucial aspect of sim-to-real transfer learning, especially in robotics. **Automated methods are essential** because manual tuning is time-consuming and might not capture complex dynamics accurately. Such automation would involve **algorithms that calibrate simulator parameters** (physics, robot models, environments) to match real-world behavior based on sensor data. This likely involves optimization techniques that minimize the discrepancy between simulated and real-world data, possibly through **parameter space search and error minimization**. The benefits include reduced engineering effort, faster iteration cycles, and potentially more robust policies due to better alignment between simulation and reality.

#### Contact Goals
When dealing with intricate manipulation tasks, especially those involving humanoid robots, effectively defining **contact goals** becomes paramount. A poorly defined contact goal can lead to unstable grasps or failed handovers, resulting in task failure. The paper may leverage techniques such as **contact stickers**, strategically placed on objects, to guide the robot's hand and finger placements. These stickers can be procedurally generated, offering flexibility and adaptability to various object shapes and sizes. The contact goal is then framed as minimizing the distance between the robot's fingertips and these designated contact points, simplifying reward engineering. Also, contact goals are specified via **keypoint-based** state representation that are procedurally generated on the surface of the simulated asset. By meticulously crafting these contact goals, the reward function can effectively guide the robot towards achieving secure and stable object manipulation, mitigating the risk of exploration in vast and complex action spaces.

#### Divide & Conquer
**Divide and conquer** is a powerful strategy for tackling complex problems, particularly in reinforcement learning (RL) where exploration can be challenging. The core idea is to decompose a difficult task into smaller, more manageable subtasks. This approach can significantly improve sample efficiency by reducing the dimensionality of the search space and providing more frequent learning signals. Each subtask can be solved by a specialized policy, and then the knowledge gained from these policies can be integrated into a generalist policy through techniques like distillation. This allows the **generalist policy** to benefit from the expertise acquired by the specialists, leading to improved performance and generalization. Further the sub-task training will act like Teleoperators for task data collection in the simulation environment, and the generalist policy can act as a centralized model trained from curated data. 

#### Sim2Real Vision
**Sim-to-Real vision** is a crucial area in robotics, particularly for vision-based manipulation. The challenge lies in bridging the gap between simulated environments, where training data is abundant, and real-world scenarios, where unforeseen factors such as lighting variations, sensor noise, and unmodeled dynamics exist. Successful sim-to-real transfer necessitates robust perception algorithms that are invariant to these discrepancies. Techniques like **domain randomization**, where simulation parameters are deliberately varied, can improve a model's ability to generalize. Another key aspect is the choice of **object representation**. While high-dimensional data like RGB images capture rich details, they are often more susceptible to the sim-to-real gap. Conversely, lower-dimensional representations such as object pose might be more transferable but lack sufficient information for complex tasks. Combining both sparse and dense information has proven effective. Furthermore, using **domain adaptation** strategies can help the model adapt to real world quirks.

#### Robust Humanoids
**Robust Humanoids** represent a significant area in robotics, emphasizing their ability to maintain stable performance in various unpredictable and dynamic environments. Achieving robustness involves addressing challenges like **balance control**, **perception under noisy conditions**, and **adapting to external disturbances**. Designing robust humanoids often entails incorporating advanced control algorithms that account for uncertainties, implementing fault-tolerance mechanisms to handle hardware failures, and using robust perception techniques to accurately interpret sensor data despite noise and occlusions. **Sim-to-real transfer** is crucial, requiring careful modeling of dynamics and randomization to bridge the gap between simulation and the real world. Furthermore, energy efficiency and material strength are vital aspects, ensuring humanoids can operate reliably for extended periods and withstand physical stresses, thus enabling real-world applications in areas such as search and rescue, healthcare, and manufacturing. Research also focuses on robust decision-making, allowing humanoids to adapt their behavior based on changing task requirements and environmental conditions. A key element is the capability to recover from falls and unexpected impacts.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.20396/x2.png)

> 🔼 This figure showcases the successful learning of three dexterous manipulation tasks in a simulated environment using reinforcement learning.  The left panel depicts a single-handed grasping task, where the robot hand successfully grasps an object. The middle panel illustrates a box-lifting task requiring the coordination of both hands to lift a box too large for a single hand. The right panel demonstrates a bimanual handover task, where an object is transferred between the robot's two hands from right to left and then left to right. Each panel shows multiple snapshots of the robot during the task execution, highlighting the robot's ability to successfully complete these complex manipulation tasks within the simulation.
> <details>
> <summary>read the caption</summary>
> Figure 2: Policies learned in simulation. Left: grasp; middle: box lift; right: bimanual handover (right-to-left, left-to-right).
> </details>



![](https://arxiv.org/html/2502.20396/extracted/6236542/figures/objexp.png)

> 🔼 This figure shows the training curves for a grasp-and-reach policy trained on different sets of objects. The left panel compares training with complex real-world objects versus simpler geometric primitives. The right panel shows how grouping objects into different categories impacts training. Each curve represents the average success rate across 10 independent training runs, each with a different random seed, demonstrating the impact of object complexity and training data organization on learning performance.
> <details>
> <summary>read the caption</summary>
> Figure 3: Training grasp-and-reach policy with different object sets. Each curve is computed from the statistics of 10 training runs with different random seeds. Left: training with complex objects v.s. simple geometric primitive objects. Right: training with differently grouped geometric objects.
> </details>



![](https://arxiv.org/html/2502.20396/x3.png)

> 🔼 This figure visualizes how different placements of contact markers on a simulated object influence the resulting contact patterns learned by the robot during training.  The top row shows markers placed on the left and right side centers of the object. The middle row shows markers placed on the top and bottom side centers. The bottom row shows markers placed only on the bottom edge.  The variations in marker placement demonstrate how the reward function, which is based on these markers, shapes the robot's learned behavior and resulting contact patterns during dexterous manipulation.
> <details>
> <summary>read the caption</summary>
> Figure 4: Different contact patterns emerge from different placements of contact markers. Top: contact markers on the left and right side centers; middle: markers on the top and bottom side centers; bottom: markers on the bottom side edges.
> </details>



![](https://arxiv.org/html/2502.20396/x4.png)

> 🔼 This figure demonstrates the robustness of the learned policies against various external disturbances.  Four scenarios are shown: a knock, a pull, a push, and a drag. Each of these actions is applied to the object being manipulated by the robot, and the figure shows that in each case, the robot's learned policy successfully completes the task despite the unexpected force. This highlights the policy's ability to generalize and adapt to real-world scenarios where perfect control is not always possible.
> <details>
> <summary>read the caption</summary>
> Figure 5: Policy robustness. Our learned policies remain robust under different force perturbations, including knock (top left), pull (top right), push (bottom left), and drag (bottom right).
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.1.1.1.1">
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1.1" style="padding:1.5pt 7.0pt;">% Success</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1.2" style="padding:1.5pt 7.0pt;">Grasping</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1.3" style="padding:1.5pt 7.0pt;">Lifting</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1.4" style="padding:1.5pt 7.0pt;">Handover</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1.2.1">
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T2.1.1.2.1.1" style="padding:1.5pt 7.0pt;">with Human Init</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T2.1.1.2.1.2" style="padding:1.5pt 7.0pt;">80%</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T2.1.1.2.1.3" style="padding:1.5pt 7.0pt;">90%</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T2.1.1.2.1.4" style="padding:1.5pt 7.0pt;">30%</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3.2">
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.1.1.3.2.1" style="padding:1.5pt 7.0pt;">w/o Human Init</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.1.1.3.2.2" style="padding:1.5pt 7.0pt;">60%</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.1.1.3.2.3" style="padding:1.5pt 7.0pt;">90%</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.1.1.3.2.4" style="padding:1.5pt 7.0pt;">0%</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table II presents the impact of using human-generated data for initialization on the success rate of training reinforcement learning policies for three dexterous manipulation tasks: grasping, lifting, and handover.  The table shows the percentage of successful policies (defined as achieving over 60% success rate across 10 evaluation episodes) when using human-provided initial hand poses versus starting from scratch.  Each condition was tested using 10 different random seeds to assess the impact of initialization on policy learning reliability.
> <details>
> <summary>read the caption</summary>
> TABLE II: Initializing with human data. Correlation between the percentage of successfully learned task policies and whether human play data is used for initialization. We define successfully learned policies as those that achieve over 60% episodic success during evaluation. For each task and each initialization setting, we test with 10 random seeds.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.1.1.1">
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T3.1.1.1.1.1" style="padding:1.5pt 7.0pt;">Task</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T3.1.1.1.1.2" style="padding:1.5pt 7.0pt;">Grasping</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T3.1.1.1.1.3" style="padding:1.5pt 7.0pt;">Lifting</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T3.1.1.1.1.4" style="padding:1.5pt 7.0pt;">HandoverA</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T3.1.1.1.1.5" style="padding:1.5pt 7.0pt;">HandoverB</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="5" id="S4.T3.1.1.2.2.1" style="padding:1.5pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.2.2.1.1">Depth + Pos</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.3.3">
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.1.1.3.3.1" style="padding:1.5pt 7.0pt;">Pickup</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.1.1.3.3.2" style="padding:1.5pt 7.0pt;">10 / 10</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.1.1.3.3.3" style="padding:1.5pt 7.0pt;">10 / 10</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.1.1.3.3.4" style="padding:1.5pt 7.0pt;">10 / 10</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.1.1.3.3.5" style="padding:1.5pt 7.0pt;">10 / 10</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.4.4">
<td class="ltx_td ltx_align_right" id="S4.T3.1.1.4.4.1" style="padding:1.5pt 7.0pt;">Task Success</td>
<td class="ltx_td ltx_align_right" id="S4.T3.1.1.4.4.2" style="padding:1.5pt 7.0pt;">10 / 10</td>
<td class="ltx_td ltx_align_right" id="S4.T3.1.1.4.4.3" style="padding:1.5pt 7.0pt;">10 / 10</td>
<td class="ltx_td ltx_align_right" id="S4.T3.1.1.4.4.4" style="padding:1.5pt 7.0pt;">9 / 10</td>
<td class="ltx_td ltx_align_right" id="S4.T3.1.1.4.4.5" style="padding:1.5pt 7.0pt;">5 / 10</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.5.5">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="5" id="S4.T3.1.1.5.5.1" style="padding:1.5pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.5.5.1.1">Depth Only</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.6.6">
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.1.1.6.6.1" style="padding:1.5pt 7.0pt;">Pickup</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.1.1.6.6.2" style="padding:1.5pt 7.0pt;">2 / 10</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.1.1.6.6.3" style="padding:1.5pt 7.0pt;">0 / 10</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.1.1.6.6.4" style="padding:1.5pt 7.0pt;">0 / 10</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.1.1.6.6.5" style="padding:1.5pt 7.0pt;">0 / 10</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.7.7">
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T3.1.1.7.7.1" style="padding:1.5pt 7.0pt;">Task Success</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T3.1.1.7.7.2" style="padding:1.5pt 7.0pt;">2 / 10</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T3.1.1.7.7.3" style="padding:1.5pt 7.0pt;">0 / 10</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T3.1.1.7.7.4" style="padding:1.5pt 7.0pt;">0 / 10</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T3.1.1.7.7.5" style="padding:1.5pt 7.0pt;">0 / 10</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the success rates of sim-to-real transfer for two different robot control policies: one using both depth images and 3D object position (Depth + Pos), and another using only depth images (Depth Only).  The experiment focuses on three tasks: Grasping, Lifting, and Bimanual Handover.  The Bimanual Handover task is further divided into two subtasks (HandoverA and HandoverB) because of its longer time horizon. An intermediate success metric, 'Pickup Success', is also included to show how often the robot successfully grasps the object. The results indicate that incorporating low-dimensional 3D position information alongside depth data significantly improves the sim-to-real transfer performance.
> <details>
> <summary>read the caption</summary>
> TABLE III: Comparison of sim-to-real transfer performance between depth-and-position policy and depth-only policy. We separate the bimanual handover task into two columns due to its longer horizon. The pickup success is an intermediate success metric that measures how often the hands successfully pick up the object of interest. We find that combining low-dimensional representation (3D object position) with depth enables easier sim-to-real transfer.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A0.T4.8">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A0.T4.8.9.1">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A0.T4.8.9.1.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">Object: Mass (kg)</th>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="A0.T4.8.9.1.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">[0.03, 0.1]</td>
</tr>
<tr class="ltx_tr" id="A0.T4.8.10.2">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="A0.T4.8.10.2.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">Object: Friction</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A0.T4.8.10.2.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">[0.5, 1.5]</td>
</tr>
<tr class="ltx_tr" id="A0.T4.1.1">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="A0.T4.1.1.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">Object: Shape</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A0.T4.1.1.1" style="padding-top:0.25pt;padding-bottom:0.25pt;"><math alttext="\times\mathcal{U}(0.95,1.05)" class="ltx_Math" display="inline" id="A0.T4.1.1.1.m1.2"><semantics id="A0.T4.1.1.1.m1.2a"><mrow id="A0.T4.1.1.1.m1.2.3" xref="A0.T4.1.1.1.m1.2.3.cmml"><mi id="A0.T4.1.1.1.m1.2.3.2" xref="A0.T4.1.1.1.m1.2.3.2.cmml"></mi><mo id="A0.T4.1.1.1.m1.2.3.1" lspace="0.222em" rspace="0.222em" xref="A0.T4.1.1.1.m1.2.3.1.cmml">×</mo><mrow id="A0.T4.1.1.1.m1.2.3.3" xref="A0.T4.1.1.1.m1.2.3.3.cmml"><mi class="ltx_font_mathcaligraphic" id="A0.T4.1.1.1.m1.2.3.3.2" xref="A0.T4.1.1.1.m1.2.3.3.2.cmml">𝒰</mi><mo id="A0.T4.1.1.1.m1.2.3.3.1" xref="A0.T4.1.1.1.m1.2.3.3.1.cmml">⁢</mo><mrow id="A0.T4.1.1.1.m1.2.3.3.3.2" xref="A0.T4.1.1.1.m1.2.3.3.3.1.cmml"><mo id="A0.T4.1.1.1.m1.2.3.3.3.2.1" stretchy="false" xref="A0.T4.1.1.1.m1.2.3.3.3.1.cmml">(</mo><mn id="A0.T4.1.1.1.m1.1.1" xref="A0.T4.1.1.1.m1.1.1.cmml">0.95</mn><mo id="A0.T4.1.1.1.m1.2.3.3.3.2.2" xref="A0.T4.1.1.1.m1.2.3.3.3.1.cmml">,</mo><mn id="A0.T4.1.1.1.m1.2.2" xref="A0.T4.1.1.1.m1.2.2.cmml">1.05</mn><mo id="A0.T4.1.1.1.m1.2.3.3.3.2.3" stretchy="false" xref="A0.T4.1.1.1.m1.2.3.3.3.1.cmml">)</mo></mrow></mrow></mrow><annotation-xml encoding="MathML-Content" id="A0.T4.1.1.1.m1.2b"><apply id="A0.T4.1.1.1.m1.2.3.cmml" xref="A0.T4.1.1.1.m1.2.3"><times id="A0.T4.1.1.1.m1.2.3.1.cmml" xref="A0.T4.1.1.1.m1.2.3.1"></times><csymbol cd="latexml" id="A0.T4.1.1.1.m1.2.3.2.cmml" xref="A0.T4.1.1.1.m1.2.3.2">absent</csymbol><apply id="A0.T4.1.1.1.m1.2.3.3.cmml" xref="A0.T4.1.1.1.m1.2.3.3"><times id="A0.T4.1.1.1.m1.2.3.3.1.cmml" xref="A0.T4.1.1.1.m1.2.3.3.1"></times><ci id="A0.T4.1.1.1.m1.2.3.3.2.cmml" xref="A0.T4.1.1.1.m1.2.3.3.2">𝒰</ci><interval closure="open" id="A0.T4.1.1.1.m1.2.3.3.3.1.cmml" xref="A0.T4.1.1.1.m1.2.3.3.3.2"><cn id="A0.T4.1.1.1.m1.1.1.cmml" type="float" xref="A0.T4.1.1.1.m1.1.1">0.95</cn><cn id="A0.T4.1.1.1.m1.2.2.cmml" type="float" xref="A0.T4.1.1.1.m1.2.2">1.05</cn></interval></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A0.T4.1.1.1.m1.2c">\times\mathcal{U}(0.95,1.05)</annotation><annotation encoding="application/x-llamapun" id="A0.T4.1.1.1.m1.2d">× caligraphic_U ( 0.95 , 1.05 )</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A0.T4.2.2">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="A0.T4.2.2.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">Object: Initial Position (cm)</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A0.T4.2.2.1" style="padding-top:0.25pt;padding-bottom:0.25pt;"><math alttext="+\mathcal{U}(-0.02,0.02)" class="ltx_Math" display="inline" id="A0.T4.2.2.1.m1.2"><semantics id="A0.T4.2.2.1.m1.2a"><mrow id="A0.T4.2.2.1.m1.2.2" xref="A0.T4.2.2.1.m1.2.2.cmml"><mo id="A0.T4.2.2.1.m1.2.2a" xref="A0.T4.2.2.1.m1.2.2.cmml">+</mo><mrow id="A0.T4.2.2.1.m1.2.2.1" xref="A0.T4.2.2.1.m1.2.2.1.cmml"><mi class="ltx_font_mathcaligraphic" id="A0.T4.2.2.1.m1.2.2.1.3" xref="A0.T4.2.2.1.m1.2.2.1.3.cmml">𝒰</mi><mo id="A0.T4.2.2.1.m1.2.2.1.2" xref="A0.T4.2.2.1.m1.2.2.1.2.cmml">⁢</mo><mrow id="A0.T4.2.2.1.m1.2.2.1.1.1" xref="A0.T4.2.2.1.m1.2.2.1.1.2.cmml"><mo id="A0.T4.2.2.1.m1.2.2.1.1.1.2" stretchy="false" xref="A0.T4.2.2.1.m1.2.2.1.1.2.cmml">(</mo><mrow id="A0.T4.2.2.1.m1.2.2.1.1.1.1" xref="A0.T4.2.2.1.m1.2.2.1.1.1.1.cmml"><mo id="A0.T4.2.2.1.m1.2.2.1.1.1.1a" xref="A0.T4.2.2.1.m1.2.2.1.1.1.1.cmml">−</mo><mn id="A0.T4.2.2.1.m1.2.2.1.1.1.1.2" xref="A0.T4.2.2.1.m1.2.2.1.1.1.1.2.cmml">0.02</mn></mrow><mo id="A0.T4.2.2.1.m1.2.2.1.1.1.3" xref="A0.T4.2.2.1.m1.2.2.1.1.2.cmml">,</mo><mn id="A0.T4.2.2.1.m1.1.1" xref="A0.T4.2.2.1.m1.1.1.cmml">0.02</mn><mo id="A0.T4.2.2.1.m1.2.2.1.1.1.4" stretchy="false" xref="A0.T4.2.2.1.m1.2.2.1.1.2.cmml">)</mo></mrow></mrow></mrow><annotation-xml encoding="MathML-Content" id="A0.T4.2.2.1.m1.2b"><apply id="A0.T4.2.2.1.m1.2.2.cmml" xref="A0.T4.2.2.1.m1.2.2"><plus id="A0.T4.2.2.1.m1.2.2.2.cmml" xref="A0.T4.2.2.1.m1.2.2"></plus><apply id="A0.T4.2.2.1.m1.2.2.1.cmml" xref="A0.T4.2.2.1.m1.2.2.1"><times id="A0.T4.2.2.1.m1.2.2.1.2.cmml" xref="A0.T4.2.2.1.m1.2.2.1.2"></times><ci id="A0.T4.2.2.1.m1.2.2.1.3.cmml" xref="A0.T4.2.2.1.m1.2.2.1.3">𝒰</ci><interval closure="open" id="A0.T4.2.2.1.m1.2.2.1.1.2.cmml" xref="A0.T4.2.2.1.m1.2.2.1.1.1"><apply id="A0.T4.2.2.1.m1.2.2.1.1.1.1.cmml" xref="A0.T4.2.2.1.m1.2.2.1.1.1.1"><minus id="A0.T4.2.2.1.m1.2.2.1.1.1.1.1.cmml" xref="A0.T4.2.2.1.m1.2.2.1.1.1.1"></minus><cn id="A0.T4.2.2.1.m1.2.2.1.1.1.1.2.cmml" type="float" xref="A0.T4.2.2.1.m1.2.2.1.1.1.1.2">0.02</cn></apply><cn id="A0.T4.2.2.1.m1.1.1.cmml" type="float" xref="A0.T4.2.2.1.m1.1.1">0.02</cn></interval></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A0.T4.2.2.1.m1.2c">+\mathcal{U}(-0.02,0.02)</annotation><annotation encoding="application/x-llamapun" id="A0.T4.2.2.1.m1.2d">+ caligraphic_U ( - 0.02 , 0.02 )</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A0.T4.4.4">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="A0.T4.3.3.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">Object: Initial <math alttext="z" class="ltx_Math" display="inline" id="A0.T4.3.3.1.m1.1"><semantics id="A0.T4.3.3.1.m1.1a"><mi id="A0.T4.3.3.1.m1.1.1" xref="A0.T4.3.3.1.m1.1.1.cmml">z</mi><annotation-xml encoding="MathML-Content" id="A0.T4.3.3.1.m1.1b"><ci id="A0.T4.3.3.1.m1.1.1.cmml" xref="A0.T4.3.3.1.m1.1.1">𝑧</ci></annotation-xml><annotation encoding="application/x-tex" id="A0.T4.3.3.1.m1.1c">z</annotation><annotation encoding="application/x-llamapun" id="A0.T4.3.3.1.m1.1d">italic_z</annotation></semantics></math>-orientation</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A0.T4.4.4.2" style="padding-top:0.25pt;padding-bottom:0.25pt;"><math alttext="+\mathcal{U}(-0.75,0.75)" class="ltx_Math" display="inline" id="A0.T4.4.4.2.m1.2"><semantics id="A0.T4.4.4.2.m1.2a"><mrow id="A0.T4.4.4.2.m1.2.2" xref="A0.T4.4.4.2.m1.2.2.cmml"><mo id="A0.T4.4.4.2.m1.2.2a" xref="A0.T4.4.4.2.m1.2.2.cmml">+</mo><mrow id="A0.T4.4.4.2.m1.2.2.1" xref="A0.T4.4.4.2.m1.2.2.1.cmml"><mi class="ltx_font_mathcaligraphic" id="A0.T4.4.4.2.m1.2.2.1.3" xref="A0.T4.4.4.2.m1.2.2.1.3.cmml">𝒰</mi><mo id="A0.T4.4.4.2.m1.2.2.1.2" xref="A0.T4.4.4.2.m1.2.2.1.2.cmml">⁢</mo><mrow id="A0.T4.4.4.2.m1.2.2.1.1.1" xref="A0.T4.4.4.2.m1.2.2.1.1.2.cmml"><mo id="A0.T4.4.4.2.m1.2.2.1.1.1.2" stretchy="false" xref="A0.T4.4.4.2.m1.2.2.1.1.2.cmml">(</mo><mrow id="A0.T4.4.4.2.m1.2.2.1.1.1.1" xref="A0.T4.4.4.2.m1.2.2.1.1.1.1.cmml"><mo id="A0.T4.4.4.2.m1.2.2.1.1.1.1a" xref="A0.T4.4.4.2.m1.2.2.1.1.1.1.cmml">−</mo><mn id="A0.T4.4.4.2.m1.2.2.1.1.1.1.2" xref="A0.T4.4.4.2.m1.2.2.1.1.1.1.2.cmml">0.75</mn></mrow><mo id="A0.T4.4.4.2.m1.2.2.1.1.1.3" xref="A0.T4.4.4.2.m1.2.2.1.1.2.cmml">,</mo><mn id="A0.T4.4.4.2.m1.1.1" xref="A0.T4.4.4.2.m1.1.1.cmml">0.75</mn><mo id="A0.T4.4.4.2.m1.2.2.1.1.1.4" stretchy="false" xref="A0.T4.4.4.2.m1.2.2.1.1.2.cmml">)</mo></mrow></mrow></mrow><annotation-xml encoding="MathML-Content" id="A0.T4.4.4.2.m1.2b"><apply id="A0.T4.4.4.2.m1.2.2.cmml" xref="A0.T4.4.4.2.m1.2.2"><plus id="A0.T4.4.4.2.m1.2.2.2.cmml" xref="A0.T4.4.4.2.m1.2.2"></plus><apply id="A0.T4.4.4.2.m1.2.2.1.cmml" xref="A0.T4.4.4.2.m1.2.2.1"><times id="A0.T4.4.4.2.m1.2.2.1.2.cmml" xref="A0.T4.4.4.2.m1.2.2.1.2"></times><ci id="A0.T4.4.4.2.m1.2.2.1.3.cmml" xref="A0.T4.4.4.2.m1.2.2.1.3">𝒰</ci><interval closure="open" id="A0.T4.4.4.2.m1.2.2.1.1.2.cmml" xref="A0.T4.4.4.2.m1.2.2.1.1.1"><apply id="A0.T4.4.4.2.m1.2.2.1.1.1.1.cmml" xref="A0.T4.4.4.2.m1.2.2.1.1.1.1"><minus id="A0.T4.4.4.2.m1.2.2.1.1.1.1.1.cmml" xref="A0.T4.4.4.2.m1.2.2.1.1.1.1"></minus><cn id="A0.T4.4.4.2.m1.2.2.1.1.1.1.2.cmml" type="float" xref="A0.T4.4.4.2.m1.2.2.1.1.1.1.2">0.75</cn></apply><cn id="A0.T4.4.4.2.m1.1.1.cmml" type="float" xref="A0.T4.4.4.2.m1.1.1">0.75</cn></interval></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A0.T4.4.4.2.m1.2c">+\mathcal{U}(-0.75,0.75)</annotation><annotation encoding="application/x-llamapun" id="A0.T4.4.4.2.m1.2d">+ caligraphic_U ( - 0.75 , 0.75 )</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A0.T4.8.11.3">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="A0.T4.8.11.3.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">Hand: Friction</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A0.T4.8.11.3.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">[0.5, 1.5]</td>
</tr>
<tr class="ltx_tr" id="A0.T4.5.5">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A0.T4.5.5.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">PD Controller: P Gain</th>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A0.T4.5.5.1" style="padding-top:0.25pt;padding-bottom:0.25pt;"><math alttext="\times\mathcal{U}(0.8,1.1)" class="ltx_Math" display="inline" id="A0.T4.5.5.1.m1.2"><semantics id="A0.T4.5.5.1.m1.2a"><mrow id="A0.T4.5.5.1.m1.2.3" xref="A0.T4.5.5.1.m1.2.3.cmml"><mi id="A0.T4.5.5.1.m1.2.3.2" xref="A0.T4.5.5.1.m1.2.3.2.cmml"></mi><mo id="A0.T4.5.5.1.m1.2.3.1" lspace="0.222em" rspace="0.222em" xref="A0.T4.5.5.1.m1.2.3.1.cmml">×</mo><mrow id="A0.T4.5.5.1.m1.2.3.3" xref="A0.T4.5.5.1.m1.2.3.3.cmml"><mi class="ltx_font_mathcaligraphic" id="A0.T4.5.5.1.m1.2.3.3.2" xref="A0.T4.5.5.1.m1.2.3.3.2.cmml">𝒰</mi><mo id="A0.T4.5.5.1.m1.2.3.3.1" xref="A0.T4.5.5.1.m1.2.3.3.1.cmml">⁢</mo><mrow id="A0.T4.5.5.1.m1.2.3.3.3.2" xref="A0.T4.5.5.1.m1.2.3.3.3.1.cmml"><mo id="A0.T4.5.5.1.m1.2.3.3.3.2.1" stretchy="false" xref="A0.T4.5.5.1.m1.2.3.3.3.1.cmml">(</mo><mn id="A0.T4.5.5.1.m1.1.1" xref="A0.T4.5.5.1.m1.1.1.cmml">0.8</mn><mo id="A0.T4.5.5.1.m1.2.3.3.3.2.2" xref="A0.T4.5.5.1.m1.2.3.3.3.1.cmml">,</mo><mn id="A0.T4.5.5.1.m1.2.2" xref="A0.T4.5.5.1.m1.2.2.cmml">1.1</mn><mo id="A0.T4.5.5.1.m1.2.3.3.3.2.3" stretchy="false" xref="A0.T4.5.5.1.m1.2.3.3.3.1.cmml">)</mo></mrow></mrow></mrow><annotation-xml encoding="MathML-Content" id="A0.T4.5.5.1.m1.2b"><apply id="A0.T4.5.5.1.m1.2.3.cmml" xref="A0.T4.5.5.1.m1.2.3"><times id="A0.T4.5.5.1.m1.2.3.1.cmml" xref="A0.T4.5.5.1.m1.2.3.1"></times><csymbol cd="latexml" id="A0.T4.5.5.1.m1.2.3.2.cmml" xref="A0.T4.5.5.1.m1.2.3.2">absent</csymbol><apply id="A0.T4.5.5.1.m1.2.3.3.cmml" xref="A0.T4.5.5.1.m1.2.3.3"><times id="A0.T4.5.5.1.m1.2.3.3.1.cmml" xref="A0.T4.5.5.1.m1.2.3.3.1"></times><ci id="A0.T4.5.5.1.m1.2.3.3.2.cmml" xref="A0.T4.5.5.1.m1.2.3.3.2">𝒰</ci><interval closure="open" id="A0.T4.5.5.1.m1.2.3.3.3.1.cmml" xref="A0.T4.5.5.1.m1.2.3.3.3.2"><cn id="A0.T4.5.5.1.m1.1.1.cmml" type="float" xref="A0.T4.5.5.1.m1.1.1">0.8</cn><cn id="A0.T4.5.5.1.m1.2.2.cmml" type="float" xref="A0.T4.5.5.1.m1.2.2">1.1</cn></interval></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A0.T4.5.5.1.m1.2c">\times\mathcal{U}(0.8,1.1)</annotation><annotation encoding="application/x-llamapun" id="A0.T4.5.5.1.m1.2d">× caligraphic_U ( 0.8 , 1.1 )</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A0.T4.6.6">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="A0.T4.6.6.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">PD Controller: D Gain</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A0.T4.6.6.1" style="padding-top:0.25pt;padding-bottom:0.25pt;"><math alttext="\times\mathcal{U}(0.7,1.2)" class="ltx_Math" display="inline" id="A0.T4.6.6.1.m1.2"><semantics id="A0.T4.6.6.1.m1.2a"><mrow id="A0.T4.6.6.1.m1.2.3" xref="A0.T4.6.6.1.m1.2.3.cmml"><mi id="A0.T4.6.6.1.m1.2.3.2" xref="A0.T4.6.6.1.m1.2.3.2.cmml"></mi><mo id="A0.T4.6.6.1.m1.2.3.1" lspace="0.222em" rspace="0.222em" xref="A0.T4.6.6.1.m1.2.3.1.cmml">×</mo><mrow id="A0.T4.6.6.1.m1.2.3.3" xref="A0.T4.6.6.1.m1.2.3.3.cmml"><mi class="ltx_font_mathcaligraphic" id="A0.T4.6.6.1.m1.2.3.3.2" xref="A0.T4.6.6.1.m1.2.3.3.2.cmml">𝒰</mi><mo id="A0.T4.6.6.1.m1.2.3.3.1" xref="A0.T4.6.6.1.m1.2.3.3.1.cmml">⁢</mo><mrow id="A0.T4.6.6.1.m1.2.3.3.3.2" xref="A0.T4.6.6.1.m1.2.3.3.3.1.cmml"><mo id="A0.T4.6.6.1.m1.2.3.3.3.2.1" stretchy="false" xref="A0.T4.6.6.1.m1.2.3.3.3.1.cmml">(</mo><mn id="A0.T4.6.6.1.m1.1.1" xref="A0.T4.6.6.1.m1.1.1.cmml">0.7</mn><mo id="A0.T4.6.6.1.m1.2.3.3.3.2.2" xref="A0.T4.6.6.1.m1.2.3.3.3.1.cmml">,</mo><mn id="A0.T4.6.6.1.m1.2.2" xref="A0.T4.6.6.1.m1.2.2.cmml">1.2</mn><mo id="A0.T4.6.6.1.m1.2.3.3.3.2.3" stretchy="false" xref="A0.T4.6.6.1.m1.2.3.3.3.1.cmml">)</mo></mrow></mrow></mrow><annotation-xml encoding="MathML-Content" id="A0.T4.6.6.1.m1.2b"><apply id="A0.T4.6.6.1.m1.2.3.cmml" xref="A0.T4.6.6.1.m1.2.3"><times id="A0.T4.6.6.1.m1.2.3.1.cmml" xref="A0.T4.6.6.1.m1.2.3.1"></times><csymbol cd="latexml" id="A0.T4.6.6.1.m1.2.3.2.cmml" xref="A0.T4.6.6.1.m1.2.3.2">absent</csymbol><apply id="A0.T4.6.6.1.m1.2.3.3.cmml" xref="A0.T4.6.6.1.m1.2.3.3"><times id="A0.T4.6.6.1.m1.2.3.3.1.cmml" xref="A0.T4.6.6.1.m1.2.3.3.1"></times><ci id="A0.T4.6.6.1.m1.2.3.3.2.cmml" xref="A0.T4.6.6.1.m1.2.3.3.2">𝒰</ci><interval closure="open" id="A0.T4.6.6.1.m1.2.3.3.3.1.cmml" xref="A0.T4.6.6.1.m1.2.3.3.3.2"><cn id="A0.T4.6.6.1.m1.1.1.cmml" type="float" xref="A0.T4.6.6.1.m1.1.1">0.7</cn><cn id="A0.T4.6.6.1.m1.2.2.cmml" type="float" xref="A0.T4.6.6.1.m1.2.2">1.2</cn></interval></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A0.T4.6.6.1.m1.2c">\times\mathcal{U}(0.7,1.2)</annotation><annotation encoding="application/x-llamapun" id="A0.T4.6.6.1.m1.2d">× caligraphic_U ( 0.7 , 1.2 )</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A0.T4.8.12.4">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A0.T4.8.12.4.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">Random Force: Scale</th>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A0.T4.8.12.4.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">2.0</td>
</tr>
<tr class="ltx_tr" id="A0.T4.8.13.5">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="A0.T4.8.13.5.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">Random Force: Probability</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A0.T4.8.13.5.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">0.2</td>
</tr>
<tr class="ltx_tr" id="A0.T4.8.14.6">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="A0.T4.8.14.6.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">Random Force: Decay Coeff. and Interval</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A0.T4.8.14.6.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">0.99 every 0.1s</td>
</tr>
<tr class="ltx_tr" id="A0.T4.8.15.7">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A0.T4.8.15.7.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">Object Pos Observation: Noise</th>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A0.T4.8.15.7.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">0.02</td>
</tr>
<tr class="ltx_tr" id="A0.T4.7.7">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="A0.T4.7.7.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">Joint Observation Noise.</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A0.T4.7.7.1" style="padding-top:0.25pt;padding-bottom:0.25pt;"><math alttext="+\mathcal{N}(0,0.4)" class="ltx_Math" display="inline" id="A0.T4.7.7.1.m1.2"><semantics id="A0.T4.7.7.1.m1.2a"><mrow id="A0.T4.7.7.1.m1.2.3" xref="A0.T4.7.7.1.m1.2.3.cmml"><mo id="A0.T4.7.7.1.m1.2.3a" xref="A0.T4.7.7.1.m1.2.3.cmml">+</mo><mrow id="A0.T4.7.7.1.m1.2.3.2" xref="A0.T4.7.7.1.m1.2.3.2.cmml"><mi class="ltx_font_mathcaligraphic" id="A0.T4.7.7.1.m1.2.3.2.2" xref="A0.T4.7.7.1.m1.2.3.2.2.cmml">𝒩</mi><mo id="A0.T4.7.7.1.m1.2.3.2.1" xref="A0.T4.7.7.1.m1.2.3.2.1.cmml">⁢</mo><mrow id="A0.T4.7.7.1.m1.2.3.2.3.2" xref="A0.T4.7.7.1.m1.2.3.2.3.1.cmml"><mo id="A0.T4.7.7.1.m1.2.3.2.3.2.1" stretchy="false" xref="A0.T4.7.7.1.m1.2.3.2.3.1.cmml">(</mo><mn id="A0.T4.7.7.1.m1.1.1" xref="A0.T4.7.7.1.m1.1.1.cmml">0</mn><mo id="A0.T4.7.7.1.m1.2.3.2.3.2.2" xref="A0.T4.7.7.1.m1.2.3.2.3.1.cmml">,</mo><mn id="A0.T4.7.7.1.m1.2.2" xref="A0.T4.7.7.1.m1.2.2.cmml">0.4</mn><mo id="A0.T4.7.7.1.m1.2.3.2.3.2.3" stretchy="false" xref="A0.T4.7.7.1.m1.2.3.2.3.1.cmml">)</mo></mrow></mrow></mrow><annotation-xml encoding="MathML-Content" id="A0.T4.7.7.1.m1.2b"><apply id="A0.T4.7.7.1.m1.2.3.cmml" xref="A0.T4.7.7.1.m1.2.3"><plus id="A0.T4.7.7.1.m1.2.3.1.cmml" xref="A0.T4.7.7.1.m1.2.3"></plus><apply id="A0.T4.7.7.1.m1.2.3.2.cmml" xref="A0.T4.7.7.1.m1.2.3.2"><times id="A0.T4.7.7.1.m1.2.3.2.1.cmml" xref="A0.T4.7.7.1.m1.2.3.2.1"></times><ci id="A0.T4.7.7.1.m1.2.3.2.2.cmml" xref="A0.T4.7.7.1.m1.2.3.2.2">𝒩</ci><interval closure="open" id="A0.T4.7.7.1.m1.2.3.2.3.1.cmml" xref="A0.T4.7.7.1.m1.2.3.2.3.2"><cn id="A0.T4.7.7.1.m1.1.1.cmml" type="integer" xref="A0.T4.7.7.1.m1.1.1">0</cn><cn id="A0.T4.7.7.1.m1.2.2.cmml" type="float" xref="A0.T4.7.7.1.m1.2.2">0.4</cn></interval></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A0.T4.7.7.1.m1.2c">+\mathcal{N}(0,0.4)</annotation><annotation encoding="application/x-llamapun" id="A0.T4.7.7.1.m1.2d">+ caligraphic_N ( 0 , 0.4 )</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A0.T4.8.8">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="A0.T4.8.8.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">Action Noise.</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A0.T4.8.8.1" style="padding-top:0.25pt;padding-bottom:0.25pt;"><math alttext="+\mathcal{N}(0,0.1)" class="ltx_Math" display="inline" id="A0.T4.8.8.1.m1.2"><semantics id="A0.T4.8.8.1.m1.2a"><mrow id="A0.T4.8.8.1.m1.2.3" xref="A0.T4.8.8.1.m1.2.3.cmml"><mo id="A0.T4.8.8.1.m1.2.3a" xref="A0.T4.8.8.1.m1.2.3.cmml">+</mo><mrow id="A0.T4.8.8.1.m1.2.3.2" xref="A0.T4.8.8.1.m1.2.3.2.cmml"><mi class="ltx_font_mathcaligraphic" id="A0.T4.8.8.1.m1.2.3.2.2" xref="A0.T4.8.8.1.m1.2.3.2.2.cmml">𝒩</mi><mo id="A0.T4.8.8.1.m1.2.3.2.1" xref="A0.T4.8.8.1.m1.2.3.2.1.cmml">⁢</mo><mrow id="A0.T4.8.8.1.m1.2.3.2.3.2" xref="A0.T4.8.8.1.m1.2.3.2.3.1.cmml"><mo id="A0.T4.8.8.1.m1.2.3.2.3.2.1" stretchy="false" xref="A0.T4.8.8.1.m1.2.3.2.3.1.cmml">(</mo><mn id="A0.T4.8.8.1.m1.1.1" xref="A0.T4.8.8.1.m1.1.1.cmml">0</mn><mo id="A0.T4.8.8.1.m1.2.3.2.3.2.2" xref="A0.T4.8.8.1.m1.2.3.2.3.1.cmml">,</mo><mn id="A0.T4.8.8.1.m1.2.2" xref="A0.T4.8.8.1.m1.2.2.cmml">0.1</mn><mo id="A0.T4.8.8.1.m1.2.3.2.3.2.3" stretchy="false" xref="A0.T4.8.8.1.m1.2.3.2.3.1.cmml">)</mo></mrow></mrow></mrow><annotation-xml encoding="MathML-Content" id="A0.T4.8.8.1.m1.2b"><apply id="A0.T4.8.8.1.m1.2.3.cmml" xref="A0.T4.8.8.1.m1.2.3"><plus id="A0.T4.8.8.1.m1.2.3.1.cmml" xref="A0.T4.8.8.1.m1.2.3"></plus><apply id="A0.T4.8.8.1.m1.2.3.2.cmml" xref="A0.T4.8.8.1.m1.2.3.2"><times id="A0.T4.8.8.1.m1.2.3.2.1.cmml" xref="A0.T4.8.8.1.m1.2.3.2.1"></times><ci id="A0.T4.8.8.1.m1.2.3.2.2.cmml" xref="A0.T4.8.8.1.m1.2.3.2.2">𝒩</ci><interval closure="open" id="A0.T4.8.8.1.m1.2.3.2.3.1.cmml" xref="A0.T4.8.8.1.m1.2.3.2.3.2"><cn id="A0.T4.8.8.1.m1.1.1.cmml" type="integer" xref="A0.T4.8.8.1.m1.1.1">0</cn><cn id="A0.T4.8.8.1.m1.2.2.cmml" type="float" xref="A0.T4.8.8.1.m1.2.2">0.1</cn></interval></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A0.T4.8.8.1.m1.2c">+\mathcal{N}(0,0.1)</annotation><annotation encoding="application/x-llamapun" id="A0.T4.8.8.1.m1.2d">+ caligraphic_N ( 0 , 0.1 )</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A0.T4.8.16.8">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A0.T4.8.16.8.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">Frame Lag Probability</th>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A0.T4.8.16.8.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">0.1</td>
</tr>
<tr class="ltx_tr" id="A0.T4.8.17.9">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="A0.T4.8.17.9.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">Action Lag Probability</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A0.T4.8.17.9.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">0.1</td>
</tr>
<tr class="ltx_tr" id="A0.T4.8.18.10">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A0.T4.8.18.10.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">Depth: Camera Pos Noise (cm)</th>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A0.T4.8.18.10.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">0.005</td>
</tr>
<tr class="ltx_tr" id="A0.T4.8.19.11">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="A0.T4.8.19.11.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">Depth: Camera Rot Noise (deg)</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A0.T4.8.19.11.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">5.0</td>
</tr>
<tr class="ltx_tr" id="A0.T4.8.20.12">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A0.T4.8.20.12.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">Depth: Camera Field-of-View (deg)</th>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="A0.T4.8.20.12.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">5.0</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table IV details the various parameters modified during domain randomization in the simulation environment.  These parameters encompass object properties (friction, mass, shape, initial position and orientation), hand properties (friction), control parameters (PD controller gains), and random force parameters (scale, probability, and decay coefficient).  Additionally, it includes noise added to object position observations, joint position observations, actions, and frame/action lag probabilities.  Finally, it lists parameters related to the depth camera, including position, rotation and field-of-view noise.
> <details>
> <summary>read the caption</summary>
> TABLE IV: Domain Randomization Setup.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.20396/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20396/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20396/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20396/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20396/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20396/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20396/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20396/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20396/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20396/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20396/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20396/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}