---
title: "RobustDexGrasp: Robust Dexterous Grasping of General Objects from Single-view Perception"
summary: "Dexterous robot grasping from single-view perception is now more robust and adaptable to disturbances!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Robotics", "🏢 ETH Zürich",]
showSummary: true
date: 2025-04-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.05287 {{< /keyword >}}
{{< keyword icon="writer" >}} Hui Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.05287" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.05287" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.05287/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Grasping objects with robots is challenging, especially when dealing with uncertainties and disturbances. Previous methods often rely on fully observable objects or pre-defined grasping poses, limiting their adaptability. This research addresses these limitations by introducing a **reinforcement-learning-based framework that enables robots to grasp a wide range of objects from a single-view**, even when facing external disturbances, thus enhancing the robustness to shape variance and uncertainty. 



The framework, named "Robust Dexterous Grasping",  uses a **hand-centric object representation to extract local shapes** relevant to interactions, and it employs a mixed curriculum learning strategy to train a policy that adapts to disturbances. **Experiments demonstrate strong generalization in grasping unseen objects**, achieving high success rates in both simulation and real-world scenarios. The method also shows robustness to object movement and external forces.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A reinforcement learning framework enables zero-shot dynamic dexterous grasping of unseen objects from single-view perception. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A hand-centric object representation using joint distance vectors enhances robustness to shape variance and uncertainty. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The method generalizes exceptionally across a large number of simulated and real objects, exhibiting adaptive motions to disturbances. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces an RL-based framework for robust dexterous grasping using single-view perception, showcasing a significant improvement in adaptability to disturbances and generalization across diverse objects, **offering new directions for robotic manipulation research.**

------
#### Visual Insights



![](https://arxiv.org/html/2504.05287/extracted/6336385/sections/FIG/pipeline_full.png)

> 🔼 This figure demonstrates the robustness and dexterity of the proposed method for dexterous grasping.  Subfigure (a) showcases the adaptive motion capabilities of the robotic hand in response to external disturbances like object movement and applied forces.  The robot hand successfully adjusts its grasp to maintain a stable hold despite these perturbations. Subfigure (b) highlights the method's ability to grasp a wide variety of objects with diverse characteristics, including differences in shape, size, material (e.g., shiny, heavy, deformable), and mass.  The successful grasps in (b) demonstrate the generalization capacity of the approach to unseen objects.
> <details>
> <summary>read the caption</summary>
> Figure 1: Our method achieves robust dexterous grasping from single-view object point clouds. It performs adaptive motions to disturbances such as object movement and external forces (a), and can grasp various objects with random poses, diverse shapes, sizes, materials, and masses, including shiny, heavy, deformable, thin, and transparent objects (b).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S2.T1.5.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T1.5.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S2.T1.5.5.6.1.1" rowspan="2"><span class="ltx_text" id="S2.T1.5.5.6.1.1.1">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.5.5.6.1.2">Single-view</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.5.5.6.1.3">Non-static</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.5.5.6.1.4">Zero-shot</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.5.5.6.1.5">Unseen Obj.</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.5.5.6.1.6">Unseen Obj.</td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5.7.2">
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.7.2.1">Observation</td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.7.2.2">Grasping Pose</td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.7.2.3">General.</td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.7.2.4">Num. (Sim)</td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.7.2.5">Num. (Real)</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S2.T1.1.1.1.2">GraspXL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.05287v1#bib.bib46" title="">46</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.1.1"><math alttext="\times" class="ltx_Math" display="inline" id="S2.T1.1.1.1.1.m1.1"><semantics id="S2.T1.1.1.1.1.m1.1a"><mo id="S2.T1.1.1.1.1.m1.1.1" mathcolor="#FF0000" xref="S2.T1.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S2.T1.1.1.1.1.m1.1b"><times id="S2.T1.1.1.1.1.m1.1.1.cmml" xref="S2.T1.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S2.T1.1.1.1.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.1.3"><span class="ltx_text" id="S2.T1.1.1.1.3.1" style="color:#013220;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.1.4"><span class="ltx_text" id="S2.T1.1.1.1.4.1" style="color:#013220;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.1.5">503,409</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.1.6">-</td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S2.T1.3.3.3.3">Agarwal et al.<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.05287v1#bib.bib1" title="">1</a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S2.T1.2.2.2.1"><math alttext="\times" class="ltx_Math" display="inline" id="S2.T1.2.2.2.1.m1.1"><semantics id="S2.T1.2.2.2.1.m1.1a"><mo id="S2.T1.2.2.2.1.m1.1.1" mathcolor="#FF0000" xref="S2.T1.2.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S2.T1.2.2.2.1.m1.1b"><times id="S2.T1.2.2.2.1.m1.1.1.cmml" xref="S2.T1.2.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.2.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S2.T1.2.2.2.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.3.3.4"><span class="ltx_text" id="S2.T1.3.3.3.4.1" style="color:#013220;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.3.3.2"><math alttext="\times" class="ltx_Math" display="inline" id="S2.T1.3.3.3.2.m1.1"><semantics id="S2.T1.3.3.3.2.m1.1a"><mo id="S2.T1.3.3.3.2.m1.1.1" mathcolor="#FF0000" xref="S2.T1.3.3.3.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S2.T1.3.3.3.2.m1.1b"><times id="S2.T1.3.3.3.2.m1.1.1.cmml" xref="S2.T1.3.3.3.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.3.3.3.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S2.T1.3.3.3.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.3.3.5">2</td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.3.3.6">6</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S2.T1.4.4.4.2">SpringGrasp <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.05287v1#bib.bib5" title="">5</a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S2.T1.4.4.4.3"><span class="ltx_text" id="S2.T1.4.4.4.3.1" style="color:#013220;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.4.4.1"><math alttext="\times" class="ltx_Math" display="inline" id="S2.T1.4.4.4.1.m1.1"><semantics id="S2.T1.4.4.4.1.m1.1a"><mo id="S2.T1.4.4.4.1.m1.1.1" mathcolor="#FF0000" xref="S2.T1.4.4.4.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S2.T1.4.4.4.1.m1.1b"><times id="S2.T1.4.4.4.1.m1.1.1.cmml" xref="S2.T1.4.4.4.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.4.4.4.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S2.T1.4.4.4.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.4.4.4"><span class="ltx_text" id="S2.T1.4.4.4.4.1" style="color:#013220;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.4.4.5">-</td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.4.4.6">14</td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S2.T1.5.5.8.3.1">DextrAH-G <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.05287v1#bib.bib26" title="">26</a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.8.3.2"><span class="ltx_text" id="S2.T1.5.5.8.3.2.1" style="color:#013220;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.8.3.3"><span class="ltx_text" id="S2.T1.5.5.8.3.3.1" style="color:#013220;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.8.3.4"><span class="ltx_text" id="S2.T1.5.5.8.3.4.1" style="color:#013220;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.8.3.5">-</td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.8.3.6">30</td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S2.T1.5.5.5.2">DexGraspNet2.0 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.05287v1#bib.bib48" title="">48</a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.5.3"><span class="ltx_text" id="S2.T1.5.5.5.3.1" style="color:#013220;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.5.1"><math alttext="\times" class="ltx_Math" display="inline" id="S2.T1.5.5.5.1.m1.1"><semantics id="S2.T1.5.5.5.1.m1.1a"><mo id="S2.T1.5.5.5.1.m1.1.1" mathcolor="#FF0000" xref="S2.T1.5.5.5.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S2.T1.5.5.5.1.m1.1b"><times id="S2.T1.5.5.5.1.m1.1.1.cmml" xref="S2.T1.5.5.5.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.5.5.5.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S2.T1.5.5.5.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.5.4"><span class="ltx_text" id="S2.T1.5.5.5.4.1" style="color:#013220;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.5.5">1319</td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.5.6">32</td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S2.T1.5.5.9.4.1">Ours</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.5.5.9.4.2"><span class="ltx_text" id="S2.T1.5.5.9.4.2.1" style="color:#013220;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.5.5.9.4.3"><span class="ltx_text" id="S2.T1.5.5.9.4.3.1" style="color:#013220;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.5.5.9.4.4"><span class="ltx_text" id="S2.T1.5.5.9.4.4.1" style="color:#013220;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.5.5.9.4.5">247,786</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.5.5.9.4.6">512</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the proposed dexterous grasping method with existing methods in the literature.  It highlights key differences across several aspects including whether the method uses single-view or multi-view perception, whether it handles non-static grasping or only static poses, the ability to perform zero-shot grasping (grasping previously unseen objects), and the number of simulated and real-world objects tested. This allows for a quantitative comparison of the different approaches and their capabilities.
> <details>
> <summary>read the caption</summary>
> TABLE I: Comparison with existing dexterous grasping works
> </details>





### In-depth insights


#### Adaptation Insight
The paper focuses on **dexterous robotic grasping**, emphasizing adaptation to disturbances using a novel approach. Adaptation insights likely revolve around how the robot dynamically adjusts its grasp in response to unforeseen changes in object position, external forces, or observation noise.  The **mixed curriculum learning** framework, with imitation learning followed by reinforcement learning, is key to this.  Initial imitation learning quickly teaches basic grasping, while RL allows exploration of adaptive motions to disturbances. This suggests the adaptation insight involves both **efficient learning** (imitation) and **robust exploration** (RL) to achieve stable and adaptable grasps.  The hand-centric object representation further enhances adaptability by focusing on interaction-relevant local shapes, making the system less sensitive to shape variance and uncertainty. 

#### Hand-centric View
A hand-centric view in robotic grasping likely refers to representing the environment and object **features from the perspective of the robot's hand**. Instead of global object features, it emphasizes **local shapes and interaction-relevant details**. This approach enhances **robustness** by focusing on the immediate environment, reducing sensitivity to shape variations. A hand-centric view is essential for adaptive movements, allowing the robot to react effectively to disturbances, and helps the robot to be more precise in its actions.

#### Mixed Learning
**Mixed curriculum learning** is a crucial aspect. The framework strategically combines **imitation learning (IL)** and **reinforcement learning (RL)**. IL is used to efficiently distill the grasping capability of the **teacher policy**, leveraging privileged information. The framework gradually transitions to **RL**, fostering exploration and adaptation to disturbances. This blended approach addresses the challenge of learning complex dexterous manipulations from limited observations. By initially mimicking the teacher and subsequently adapting through RL, the system achieves a balance between sample efficiency and robustness. This approach is very effective in the 'sim-to-real' transfer.

#### Zero-Shot Dexterity
**Zero-shot dexterity** signifies a robot's capability to perform complex manipulation tasks on novel objects without prior training on those specific objects. This implies a high degree of **generalization** and **adaptability**. A key challenge is bridging the gap between simulation and the real world (sim-to-real transfer). Techniques like **domain randomization**, where the simulation environment is varied to increase robustness, are crucial. Successfully achieving zero-shot dexterity requires robust perception, often relying on **single-view perception** to handle occlusions. Furthermore, **reinforcement learning (RL)** can enable the robot to learn adaptive motions in response to unexpected disturbances. Overcoming limitations in perception and control is crucial, often involving **curriculum learning** strategies that gradually increase task complexity to facilitate learning. This could involve starting with imitation learning from privileged data and transitioning to RL for fine-tuning and adaptation.

#### Real-World Limits
Real-world limits in robotics often stem from the discrepancy between simulated environments and the complexities of the physical world. **Sensor noise and calibration errors** can significantly impact perception accuracy, hindering the robot's ability to reliably interpret its surroundings. **Actuator inaccuracies** and unmodeled dynamics can lead to deviations from planned trajectories, particularly in dexterous manipulation tasks. Furthermore, **environmental factors like lighting variations, surface friction, and unpredictable disturbances** can introduce challenges that are difficult to replicate in simulation. Addressing these limitations requires robust algorithms that can handle noisy data, adapt to unexpected situations, and leverage real-world feedback to refine their performance. **Careful consideration of these real-world constraints** is crucial for developing robotic systems that can operate reliably and effectively in unstructured environments.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.05287/extracted/6336385/sections/FIG/grasp_frame_new.png)

> 🔼 This figure illustrates the framework for training a robot to grasp objects using a mixed curriculum learning approach.  A teacher policy is first trained with reinforcement learning (RL) using privileged information (ground-truth contacts, impulses, full object point cloud, noise-free joint angles). Then, a student policy is trained using only initial single-view object point cloud data and noisy joint angles. This student policy is trained using a mixed curriculum: initially with imitation learning (IL) from the teacher policy, and then gradually transitioning to RL to improve adaptability to disturbances.  A contact and impulse reconstruction loss function is used throughout the entire training process for both policies.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of our framework. We first train a teacher policy with reinforcement learning (RL) which can access privileged information including ground-truth contacts and impulses, fully observable real-time object point clouds, and noise-free robot joint angles. Then we train a student policy with access only to initial single-view object point clouds and noisy robot joint angles. The student policy is trained with a mixed curriculum learning framework, which initially utilizes imitation learning (IL) for efficient teacher policy distillation, and gradually transitions to RL for exploration to deal with disturbances. The contact and impulse reconstruction loss remains active during the whole student training process.
> </details>



![](https://arxiv.org/html/2504.05287/extracted/6336385/sections/FIG/hardware.png)

> 🔼 The figure illustrates the pre-grasping pose configuration for the robot hand and arm before grasping an object.  The finger joints are initially set to a partially open state. Inverse kinematics is used to calculate the arm joint angles based on the desired 6D pose of the hand. The hand's heading direction (red arrow) points towards the object's center, while the palm direction (green arrow) is oriented to encompass the object from a narrow side, avoiding any potential singularity issues.  The hand is positioned 25 cm away from the object's center along its heading direction.
> <details>
> <summary>read the caption</summary>
> Figure 3: Pre-grasping pose of our method. The finger angles are initialized to get a partially opened hand, while the arm joints are initialized according to the end-effector 6D pose by inverse kinematics. Specifically, the heading direction x (the red arrow) of the hand points to the object point cloud center c from a fixed starting point, and the palm direction y (the green arrow) is determined to enclose the objects from a narrow edge while avoiding singularity problems. The hand is then set 25cm away from c along x.
> </details>



![](https://arxiv.org/html/2504.05287/extracted/6336385/sections/FIG/objects5.jpg)

> 🔼 The hardware setup for the dexterous grasping experiments consists of a Universal Robots UR5 robotic arm, a Wonik Robotics Allegro dexterous hand, and an Intel RealSense D435i RGB-D camera mounted above a table. The camera provides single-view object point clouds, while the robot arm and hand execute the grasping actions. The system operates with the policy running at 5 Hz and low-level PD controllers for the hand and arm running at 100 Hz.
> <details>
> <summary>read the caption</summary>
> Figure 4: Hardware setup
> </details>



![](https://arxiv.org/html/2504.05287/extracted/6336385/sections/FIG/printed.jpg)

> 🔼 This figure showcases the 512 real-world objects used for large-scale evaluation of the proposed robust dexterous grasping method.  The objects represent a diverse range of shapes, sizes, materials, and weights, encompassing everyday items to test the generalizability and robustness of the robotic grasping system in real-world scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 5: Real objects used for large-scale evaluation
> </details>



![](https://arxiv.org/html/2504.05287/extracted/6336385/sections/FIG/adapt4.jpg)

> 🔼 The figure displays 30 objects employed in the comparative analysis and ablation study. These objects, selected for their diverse shapes, sizes, and materials, were used in both simulation and real-world experiments to thoroughly evaluate the robustness and generalizability of the proposed method compared to existing techniques. The inclusion of a variety of object types ensures comprehensive testing of the grasping algorithm across different scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 6: Objects used for comparisons and ablation
> </details>



![](https://arxiv.org/html/2504.05287/extracted/6336385/sections/FIG/spring_obj.png)

> 🔼 Figure 7 demonstrates the robustness of the proposed method in handling various real-world disturbances during grasping.  (a) shows how the method adapts grasping poses to recover from unexpected collisions caused by internal disturbances. (b) showcases the ability to maintain successful grasps even when objects move unexpectedly before or during the grasping process. Finally, (c) illustrates the resilience of the system in maintaining a stable grasp when external forces are applied, preventing the object from slipping.
> <details>
> <summary>read the caption</summary>
> Figure 7: Our method can adapt the poses for stable grasping when unexpected collision occurs due to internal disturbances (a), deal with unobserved object movement (b), and maintain robust grasps when the object slips due to large external forces (c).
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.2.1.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T2.2.1.1.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T2.2.1.1.1.2">Small Objects</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T2.2.1.1.1.3">Medium Objects</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T2.2.1.1.1.4">Large Objects</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.1.1.1.5">Total</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.2.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.1.2.1.1">Object Number</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.1.2.1.2">38,493</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.1.2.1.3">100,435</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.1.2.1.4">108,858</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.1.5">247,786</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.3.2">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.2.1.3.2.1">Success Rate</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.2.1.3.2.2">0.949</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.2.1.3.2.3">0.972</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.2.1.3.2.4">0.976</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.2.1.3.2.5">0.970</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a large-scale simulation experiment evaluating the performance of the proposed method on a diverse set of 247,786 unseen objects. The objects are categorized into three size groups: small, medium, and large, reflecting the variety in object scale and complexity. The table shows the number of objects in each size category and the success rate achieved by the method in grasping these objects.
> <details>
> <summary>read the caption</summary>
> TABLE II: Large-scale evaluation (Sim)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.2.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T3.2.1.1.1.1">Category</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T3.2.1.1.1.2">Suc. Rate</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T3.2.1.1.1.3">Category</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.2.1.1.1.4">Success Rate</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.2.1.2.2.1">Picnic Models</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.2.1.2.2.2">0.902</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.2.1.2.2.3">Building Blocks</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.2.2.4">0.963</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.2.1.3.3.1">Fruit &amp; Vegetable Models</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.3.3.2">0.962</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.3.3.3">Tool Models</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.3.3.4">0.875</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.2.1.4.4.1">Animal Models</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.4.4.2">0.907</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.4.4.3">Toy Cars</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.4.4.4">0.979</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.2.1.5.5.1">Wooden Models</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.5.5.2">0.940</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.5.5.3">Snacks</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.5.5.4">0.974</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.2.1.6.6.1">Bottles &amp; Boxes</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.6.6.2">0.970</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.6.6.3">Real Tools</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.6.6.4">0.893</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.2.1.7.7.1">Deformable Objects</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.7.7.2">0.957</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.1.7.7.3">Other Daily Objects</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.7.7.4">0.971</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S4.T3.2.1.8.8.1">Average</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" colspan="3" id="S4.T3.2.1.8.8.2">0.946</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a large-scale real-world experiment evaluating the performance of the proposed dexterous grasping method.  It shows the success rate of grasping 512 unseen real-world objects from various categories, including picnic models, building blocks, fruits and vegetables, tools, animals, toy cars, wooden models, snacks, bottles and boxes, real tools, deformable objects, and other daily objects.  The success rate is calculated as the percentage of successful grasps out of the total number of attempts for each object category.
> <details>
> <summary>read the caption</summary>
> TABLE III: Large-scale evaluation (Real)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.2.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T4.2.1.1.1.1">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.1.1.1.2">Success Rate</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.2.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.2.1.2.1.1">SpringGrasp <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.05287v1#bib.bib5" title="">5</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.2.1.2">0.771</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.3.2">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.2.1.3.2.1">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.1.3.2.2">0.957</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the success rates of the proposed method and SpringGrasp method on real-world objects.  It highlights the improved performance of the proposed method in grasping various unseen objects, demonstrating superior robustness and adaptability.
> <details>
> <summary>read the caption</summary>
> TABLE IV: Comparison with SpringGrasp (Real)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T5.2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T5.2.2.2.3">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T5.2.2.2.4">No Disturb.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T5.1.1.1.1">
<math alttext="&lt;" class="ltx_Math" display="inline" id="S4.T5.1.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.1.m1.1.1" xref="S4.T5.1.1.1.1.m1.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.1.m1.1b"><lt id="S4.T5.1.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.1.m1.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.1.m1.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.1.m1.1d">&lt;</annotation></semantics></math> 3cm Move.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T5.2.2.2.2">
<math alttext="&lt;" class="ltx_Math" display="inline" id="S4.T5.2.2.2.2.m1.1"><semantics id="S4.T5.2.2.2.2.m1.1a"><mo id="S4.T5.2.2.2.2.m1.1.1" xref="S4.T5.2.2.2.2.m1.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.2.m1.1b"><lt id="S4.T5.2.2.2.2.m1.1.1.cmml" xref="S4.T5.2.2.2.2.m1.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.2.m1.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.2.m1.1d">&lt;</annotation></semantics></math> 5cm Move.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.2.2.2.5">2.5N Force</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.2.2.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.2.2.3.1.1">DexGraspNet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.05287v1#bib.bib39" title="">39</a>]</cite> (Sim)</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.2.2.3.1.2">0.667</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.2.2.3.1.3">0.500</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.2.2.3.1.4">0.453</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.3.1.5">0.553</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.2.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.2.2.4.2.1">Ours (Sim)</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.2.4.2.2">0.953</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.2.4.2.3">0.893</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.2.4.2.4">0.753</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.4.2.5">0.920</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.2.5.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.2.2.5.3.1">DexGraspNet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.05287v1#bib.bib39" title="">39</a>]</cite> (Real)</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.2.2.5.3.2">0.607</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.2.2.5.3.3">0.447</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.2.2.5.3.4">0.373</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.5.3.5">0.480</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.2.6.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T5.2.2.6.4.1">Ours (Real)</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T5.2.2.6.4.2">0.920</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T5.2.2.6.4.3">0.873</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T5.2.2.6.4.4">0.767</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.2.6.4.5">0.840</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the proposed method's performance against DexGraspNet in both simulated and real-world scenarios.  The comparison is conducted under varying conditions: no external disturbances, random object movement (at distances of <3cm and <5cm), and external forces (2.5N). Success rates for each method are shown for each condition, highlighting the robustness of each approach to different levels of disturbances.
> <details>
> <summary>read the caption</summary>
> TABLE V: Comparison with DexGraspNet (Sim & Real)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T6.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T6.2.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T6.2.1.1.1.1">Setting</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T6.2.1.1.1.2">Suc. Rate</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T6.2.1.1.1.3">Setting</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.2.1.1.1.4">Success Rate</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T6.2.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.2.1.2.1.1">W.o. RL rewards</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.2.1.2.1.2">0.907</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.2.1.2.1.3">W.o. Curriculum</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.2.1.4">0.913</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.3.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.3.2.1">W.o. IL loss</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.3.2.2">0.933</td>
<td class="ltx_td ltx_border_r" id="S4.T6.2.1.3.2.3"></td>
<td class="ltx_td" id="S4.T6.2.1.3.2.4"></td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.4.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.2.1.4.3.1">W.o. Priv. learning</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.2.1.4.3.2">0.773</td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T6.2.1.4.3.3"></td>
<td class="ltx_td ltx_border_t" id="S4.T6.2.1.4.3.4"></td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.5.4">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T6.2.1.5.4.1">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T6.2.1.5.4.2">0.953</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T6.2.1.5.4.3">Teacher policy</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T6.2.1.5.4.4">0.960</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies conducted on the simulation environment.  It shows the success rates achieved by different versions of the proposed method, each with one or more components removed or modified.  This allows for assessing the impact of individual components (RL rewards, imitation learning, mixed curriculum, privileged teacher policy) on the overall performance of the model. Comparing these results helps determine the importance of each part in enabling the robust and adaptive grasping capabilities of the system.
> <details>
> <summary>read the caption</summary>
> TABLE VI: Ablation (Sim)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T7.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T7.2.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T7.2.1.1.1.1">Method</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T7.2.1.1.1.2">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.2.1.1.1.3">Full Point Cloud</td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T7.2.1.2.2.1">Success Rate</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T7.2.1.2.2.2">0.920</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T7.2.1.2.2.3">0.933</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies conducted on real-world objects to evaluate the impact of different components of the proposed method.  It compares the success rate of the full method with variants where either reinforcement learning rewards, imitation learning losses, or the mixed curriculum learning strategy are removed.  Additionally, it shows the performance when the privileged teacher policy is not used, illustrating the importance of each component in achieving high success rates during real-world dexterous grasping.
> <details>
> <summary>read the caption</summary>
> TABLE VII: Ablation (Real)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A0.T8.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A0.T8.2.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A0.T8.2.1.1.1.1">Variable</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A0.T8.2.1.1.1.2">Randomization</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A0.T8.2.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A0.T8.2.1.2.1.1">Friction Coefficient</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A0.T8.2.1.2.1.2">{0.5, 0.6, 0.7, 0.8,0.9}</td>
</tr>
<tr class="ltx_tr" id="A0.T8.2.1.3.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="A0.T8.2.1.3.2.1">Hand P Gain</td>
<td class="ltx_td ltx_align_center" id="A0.T8.2.1.3.2.2">[0.9, 1.1] * 600</td>
</tr>
<tr class="ltx_tr" id="A0.T8.2.1.4.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="A0.T8.2.1.4.3.1">Hand D Gain</td>
<td class="ltx_td ltx_align_center" id="A0.T8.2.1.4.3.2">[0.9, 1.1] * 20</td>
</tr>
<tr class="ltx_tr" id="A0.T8.2.1.5.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A0.T8.2.1.5.4.1">Arm P Gain</td>
<td class="ltx_td ltx_align_center" id="A0.T8.2.1.5.4.2">[0.5, 1.05] * 1.6e4</td>
</tr>
<tr class="ltx_tr" id="A0.T8.2.1.6.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A0.T8.2.1.6.5.1">Arm D Gain</td>
<td class="ltx_td ltx_align_center" id="A0.T8.2.1.6.5.2">[0.5, 1.05] * 600</td>
</tr>
<tr class="ltx_tr" id="A0.T8.2.1.7.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A0.T8.2.1.7.6.1">Hand Joint Angles</td>
<td class="ltx_td ltx_align_center" id="A0.T8.2.1.7.6.2">[-0.02, +0.02]rad + GT</td>
</tr>
<tr class="ltx_tr" id="A0.T8.2.1.8.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A0.T8.2.1.8.7.1">Arm Joint Angles</td>
<td class="ltx_td ltx_align_center" id="A0.T8.2.1.8.7.2">[-0.005, +0.005]rad + GT</td>
</tr>
<tr class="ltx_tr" id="A0.T8.2.1.9.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A0.T8.2.1.9.8.1">Arm/Hand Link Position</td>
<td class="ltx_td ltx_align_center" id="A0.T8.2.1.9.8.2">[-0.01, +0.01]m + GT</td>
</tr>
<tr class="ltx_tr" id="A0.T8.2.1.10.9">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A0.T8.2.1.10.9.1">Arm/Hand Link Orientation</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A0.T8.2.1.10.9.2">[-0.02, +0.02]rad + GT</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table VIII lists the parameters that were randomly changed during the training of the student policy to improve the robustness of the model's sim-to-real transfer. The parameters include friction coefficients, various gains in the PD controllers for the hand and arm, and small random changes to the joint angles and positions of both the hand and arm.  The ranges of the randomization are also specified.
> <details>
> <summary>read the caption</summary>
> TABLE VIII: Domain randomization parameters.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A0.T9.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A0.T9.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A0.T9.1.1.2.1.1">Hyperparameters PPO</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A0.T9.1.1.2.1.2">Value</td>
</tr>
<tr class="ltx_tr" id="A0.T9.1.1.3.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A0.T9.1.1.3.2.1">Epochs</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A0.T9.1.1.3.2.2">1.5e4</td>
</tr>
<tr class="ltx_tr" id="A0.T9.1.1.4.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A0.T9.1.1.4.3.1">Steps per epoch</td>
<td class="ltx_td ltx_align_left" id="A0.T9.1.1.4.3.2">70</td>
</tr>
<tr class="ltx_tr" id="A0.T9.1.1.5.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A0.T9.1.1.5.4.1">Environment steps per episode</td>
<td class="ltx_td ltx_align_left" id="A0.T9.1.1.5.4.2">63</td>
</tr>
<tr class="ltx_tr" id="A0.T9.1.1.6.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A0.T9.1.1.6.5.1">Batch size</td>
<td class="ltx_td ltx_align_left" id="A0.T9.1.1.6.5.2">2000</td>
</tr>
<tr class="ltx_tr" id="A0.T9.1.1.7.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A0.T9.1.1.7.6.1">Updates per epoch</td>
<td class="ltx_td ltx_align_left" id="A0.T9.1.1.7.6.2">20</td>
</tr>
<tr class="ltx_tr" id="A0.T9.1.1.8.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A0.T9.1.1.8.7.1">Simulation timestep</td>
<td class="ltx_td ltx_align_left" id="A0.T9.1.1.8.7.2">0.01s</td>
</tr>
<tr class="ltx_tr" id="A0.T9.1.1.9.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A0.T9.1.1.9.8.1">Simulation steps per action</td>
<td class="ltx_td ltx_align_left" id="A0.T9.1.1.9.8.2">20</td>
</tr>
<tr class="ltx_tr" id="A0.T9.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="A0.T9.1.1.1.1">Discount factor <math alttext="\gamma" class="ltx_Math" display="inline" id="A0.T9.1.1.1.1.m1.1"><semantics id="A0.T9.1.1.1.1.m1.1a"><mi id="A0.T9.1.1.1.1.m1.1.1" xref="A0.T9.1.1.1.1.m1.1.1.cmml">γ</mi><annotation-xml encoding="MathML-Content" id="A0.T9.1.1.1.1.m1.1b"><ci id="A0.T9.1.1.1.1.m1.1.1.cmml" xref="A0.T9.1.1.1.1.m1.1.1">𝛾</ci></annotation-xml><annotation encoding="application/x-tex" id="A0.T9.1.1.1.1.m1.1c">\gamma</annotation><annotation encoding="application/x-llamapun" id="A0.T9.1.1.1.1.m1.1d">italic_γ</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left" id="A0.T9.1.1.1.2">0.996</td>
</tr>
<tr class="ltx_tr" id="A0.T9.1.1.10.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A0.T9.1.1.10.9.1">Max. gradient norm</td>
<td class="ltx_td ltx_align_left" id="A0.T9.1.1.10.9.2">0.5</td>
</tr>
<tr class="ltx_tr" id="A0.T9.1.1.11.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="A0.T9.1.1.11.10.1">Value loss coefficient</td>
<td class="ltx_td ltx_align_left" id="A0.T9.1.1.11.10.2">0.5</td>
</tr>
<tr class="ltx_tr" id="A0.T9.1.1.12.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="A0.T9.1.1.12.11.1">Entropy coefficient</td>
<td class="ltx_td ltx_align_left" id="A0.T9.1.1.12.11.2">0.0</td>
</tr>
<tr class="ltx_tr" id="A0.T9.1.1.13.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A0.T9.1.1.13.12.1">Hidden units</td>
<td class="ltx_td ltx_align_left" id="A0.T9.1.1.13.12.2">128</td>
</tr>
<tr class="ltx_tr" id="A0.T9.1.1.14.13">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A0.T9.1.1.14.13.1">Hidden layers</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A0.T9.1.1.14.13.2">2</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table IX lists the hyperparameters used for training the Proximal Policy Optimization (PPO) algorithm in the paper.  It details settings for various aspects of the training process, including the number of epochs, steps per epoch, batch size, and discount factor.  Understanding these hyperparameters is crucial for replicating the experiments and interpreting the results.  The table shows choices made for the various parameters to tune the PPO algorithm for optimal performance in the context of the experiment.
> <details>
> <summary>read the caption</summary>
> TABLE IX: Hyperparameters
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A0.T10.16.16">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A0.T10.16.16.17.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A0.T10.16.16.17.1.1">Weights</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A0.T10.16.16.17.1.2">Value</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A0.T10.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A0.T10.1.1.1.1">
<math alttext="w^{d}" class="ltx_Math" display="inline" id="A0.T10.1.1.1.1.m1.1"><semantics id="A0.T10.1.1.1.1.m1.1a"><msup id="A0.T10.1.1.1.1.m1.1.1" xref="A0.T10.1.1.1.1.m1.1.1.cmml"><mi id="A0.T10.1.1.1.1.m1.1.1.2" xref="A0.T10.1.1.1.1.m1.1.1.2.cmml">w</mi><mi id="A0.T10.1.1.1.1.m1.1.1.3" xref="A0.T10.1.1.1.1.m1.1.1.3.cmml">d</mi></msup><annotation-xml encoding="MathML-Content" id="A0.T10.1.1.1.1.m1.1b"><apply id="A0.T10.1.1.1.1.m1.1.1.cmml" xref="A0.T10.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A0.T10.1.1.1.1.m1.1.1.1.cmml" xref="A0.T10.1.1.1.1.m1.1.1">superscript</csymbol><ci id="A0.T10.1.1.1.1.m1.1.1.2.cmml" xref="A0.T10.1.1.1.1.m1.1.1.2">𝑤</ci><ci id="A0.T10.1.1.1.1.m1.1.1.3.cmml" xref="A0.T10.1.1.1.1.m1.1.1.3">𝑑</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A0.T10.1.1.1.1.m1.1c">w^{d}</annotation><annotation encoding="application/x-llamapun" id="A0.T10.1.1.1.1.m1.1d">italic_w start_POSTSUPERSCRIPT italic_d end_POSTSUPERSCRIPT</annotation></semantics></math> (fingertip)</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="A0.T10.1.1.1.2">2.0</td>
</tr>
<tr class="ltx_tr" id="A0.T10.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A0.T10.2.2.2.1">
<math alttext="w^{d}" class="ltx_Math" display="inline" id="A0.T10.2.2.2.1.m1.1"><semantics id="A0.T10.2.2.2.1.m1.1a"><msup id="A0.T10.2.2.2.1.m1.1.1" xref="A0.T10.2.2.2.1.m1.1.1.cmml"><mi id="A0.T10.2.2.2.1.m1.1.1.2" xref="A0.T10.2.2.2.1.m1.1.1.2.cmml">w</mi><mi id="A0.T10.2.2.2.1.m1.1.1.3" xref="A0.T10.2.2.2.1.m1.1.1.3.cmml">d</mi></msup><annotation-xml encoding="MathML-Content" id="A0.T10.2.2.2.1.m1.1b"><apply id="A0.T10.2.2.2.1.m1.1.1.cmml" xref="A0.T10.2.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="A0.T10.2.2.2.1.m1.1.1.1.cmml" xref="A0.T10.2.2.2.1.m1.1.1">superscript</csymbol><ci id="A0.T10.2.2.2.1.m1.1.1.2.cmml" xref="A0.T10.2.2.2.1.m1.1.1.2">𝑤</ci><ci id="A0.T10.2.2.2.1.m1.1.1.3.cmml" xref="A0.T10.2.2.2.1.m1.1.1.3">𝑑</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A0.T10.2.2.2.1.m1.1c">w^{d}</annotation><annotation encoding="application/x-llamapun" id="A0.T10.2.2.2.1.m1.1d">italic_w start_POSTSUPERSCRIPT italic_d end_POSTSUPERSCRIPT</annotation></semantics></math> (the other hand links)</th>
<td class="ltx_td ltx_align_left" id="A0.T10.2.2.2.2">0.5</td>
</tr>
<tr class="ltx_tr" id="A0.T10.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A0.T10.3.3.3.1">
<math alttext="w^{cd}" class="ltx_Math" display="inline" id="A0.T10.3.3.3.1.m1.1"><semantics id="A0.T10.3.3.3.1.m1.1a"><msup id="A0.T10.3.3.3.1.m1.1.1" xref="A0.T10.3.3.3.1.m1.1.1.cmml"><mi id="A0.T10.3.3.3.1.m1.1.1.2" xref="A0.T10.3.3.3.1.m1.1.1.2.cmml">w</mi><mrow id="A0.T10.3.3.3.1.m1.1.1.3" xref="A0.T10.3.3.3.1.m1.1.1.3.cmml"><mi id="A0.T10.3.3.3.1.m1.1.1.3.2" xref="A0.T10.3.3.3.1.m1.1.1.3.2.cmml">c</mi><mo id="A0.T10.3.3.3.1.m1.1.1.3.1" xref="A0.T10.3.3.3.1.m1.1.1.3.1.cmml">⁢</mo><mi id="A0.T10.3.3.3.1.m1.1.1.3.3" xref="A0.T10.3.3.3.1.m1.1.1.3.3.cmml">d</mi></mrow></msup><annotation-xml encoding="MathML-Content" id="A0.T10.3.3.3.1.m1.1b"><apply id="A0.T10.3.3.3.1.m1.1.1.cmml" xref="A0.T10.3.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="A0.T10.3.3.3.1.m1.1.1.1.cmml" xref="A0.T10.3.3.3.1.m1.1.1">superscript</csymbol><ci id="A0.T10.3.3.3.1.m1.1.1.2.cmml" xref="A0.T10.3.3.3.1.m1.1.1.2">𝑤</ci><apply id="A0.T10.3.3.3.1.m1.1.1.3.cmml" xref="A0.T10.3.3.3.1.m1.1.1.3"><times id="A0.T10.3.3.3.1.m1.1.1.3.1.cmml" xref="A0.T10.3.3.3.1.m1.1.1.3.1"></times><ci id="A0.T10.3.3.3.1.m1.1.1.3.2.cmml" xref="A0.T10.3.3.3.1.m1.1.1.3.2">𝑐</ci><ci id="A0.T10.3.3.3.1.m1.1.1.3.3.cmml" xref="A0.T10.3.3.3.1.m1.1.1.3.3">𝑑</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A0.T10.3.3.3.1.m1.1c">w^{cd}</annotation><annotation encoding="application/x-llamapun" id="A0.T10.3.3.3.1.m1.1d">italic_w start_POSTSUPERSCRIPT italic_c italic_d end_POSTSUPERSCRIPT</annotation></semantics></math> (fingertip)</th>
<td class="ltx_td ltx_align_left" id="A0.T10.3.3.3.2">6.0</td>
</tr>
<tr class="ltx_tr" id="A0.T10.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A0.T10.4.4.4.1">
<math alttext="w^{cd}" class="ltx_Math" display="inline" id="A0.T10.4.4.4.1.m1.1"><semantics id="A0.T10.4.4.4.1.m1.1a"><msup id="A0.T10.4.4.4.1.m1.1.1" xref="A0.T10.4.4.4.1.m1.1.1.cmml"><mi id="A0.T10.4.4.4.1.m1.1.1.2" xref="A0.T10.4.4.4.1.m1.1.1.2.cmml">w</mi><mrow id="A0.T10.4.4.4.1.m1.1.1.3" xref="A0.T10.4.4.4.1.m1.1.1.3.cmml"><mi id="A0.T10.4.4.4.1.m1.1.1.3.2" xref="A0.T10.4.4.4.1.m1.1.1.3.2.cmml">c</mi><mo id="A0.T10.4.4.4.1.m1.1.1.3.1" xref="A0.T10.4.4.4.1.m1.1.1.3.1.cmml">⁢</mo><mi id="A0.T10.4.4.4.1.m1.1.1.3.3" xref="A0.T10.4.4.4.1.m1.1.1.3.3.cmml">d</mi></mrow></msup><annotation-xml encoding="MathML-Content" id="A0.T10.4.4.4.1.m1.1b"><apply id="A0.T10.4.4.4.1.m1.1.1.cmml" xref="A0.T10.4.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="A0.T10.4.4.4.1.m1.1.1.1.cmml" xref="A0.T10.4.4.4.1.m1.1.1">superscript</csymbol><ci id="A0.T10.4.4.4.1.m1.1.1.2.cmml" xref="A0.T10.4.4.4.1.m1.1.1.2">𝑤</ci><apply id="A0.T10.4.4.4.1.m1.1.1.3.cmml" xref="A0.T10.4.4.4.1.m1.1.1.3"><times id="A0.T10.4.4.4.1.m1.1.1.3.1.cmml" xref="A0.T10.4.4.4.1.m1.1.1.3.1"></times><ci id="A0.T10.4.4.4.1.m1.1.1.3.2.cmml" xref="A0.T10.4.4.4.1.m1.1.1.3.2">𝑐</ci><ci id="A0.T10.4.4.4.1.m1.1.1.3.3.cmml" xref="A0.T10.4.4.4.1.m1.1.1.3.3">𝑑</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A0.T10.4.4.4.1.m1.1c">w^{cd}</annotation><annotation encoding="application/x-llamapun" id="A0.T10.4.4.4.1.m1.1d">italic_w start_POSTSUPERSCRIPT italic_c italic_d end_POSTSUPERSCRIPT</annotation></semantics></math> (the other hand links)</th>
<td class="ltx_td ltx_align_left" id="A0.T10.4.4.4.2">1.5</td>
</tr>
<tr class="ltx_tr" id="A0.T10.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A0.T10.5.5.5.1">
<math alttext="w^{fd}" class="ltx_Math" display="inline" id="A0.T10.5.5.5.1.m1.1"><semantics id="A0.T10.5.5.5.1.m1.1a"><msup id="A0.T10.5.5.5.1.m1.1.1" xref="A0.T10.5.5.5.1.m1.1.1.cmml"><mi id="A0.T10.5.5.5.1.m1.1.1.2" xref="A0.T10.5.5.5.1.m1.1.1.2.cmml">w</mi><mrow id="A0.T10.5.5.5.1.m1.1.1.3" xref="A0.T10.5.5.5.1.m1.1.1.3.cmml"><mi id="A0.T10.5.5.5.1.m1.1.1.3.2" xref="A0.T10.5.5.5.1.m1.1.1.3.2.cmml">f</mi><mo id="A0.T10.5.5.5.1.m1.1.1.3.1" xref="A0.T10.5.5.5.1.m1.1.1.3.1.cmml">⁢</mo><mi id="A0.T10.5.5.5.1.m1.1.1.3.3" xref="A0.T10.5.5.5.1.m1.1.1.3.3.cmml">d</mi></mrow></msup><annotation-xml encoding="MathML-Content" id="A0.T10.5.5.5.1.m1.1b"><apply id="A0.T10.5.5.5.1.m1.1.1.cmml" xref="A0.T10.5.5.5.1.m1.1.1"><csymbol cd="ambiguous" id="A0.T10.5.5.5.1.m1.1.1.1.cmml" xref="A0.T10.5.5.5.1.m1.1.1">superscript</csymbol><ci id="A0.T10.5.5.5.1.m1.1.1.2.cmml" xref="A0.T10.5.5.5.1.m1.1.1.2">𝑤</ci><apply id="A0.T10.5.5.5.1.m1.1.1.3.cmml" xref="A0.T10.5.5.5.1.m1.1.1.3"><times id="A0.T10.5.5.5.1.m1.1.1.3.1.cmml" xref="A0.T10.5.5.5.1.m1.1.1.3.1"></times><ci id="A0.T10.5.5.5.1.m1.1.1.3.2.cmml" xref="A0.T10.5.5.5.1.m1.1.1.3.2">𝑓</ci><ci id="A0.T10.5.5.5.1.m1.1.1.3.3.cmml" xref="A0.T10.5.5.5.1.m1.1.1.3.3">𝑑</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A0.T10.5.5.5.1.m1.1c">w^{fd}</annotation><annotation encoding="application/x-llamapun" id="A0.T10.5.5.5.1.m1.1d">italic_w start_POSTSUPERSCRIPT italic_f italic_d end_POSTSUPERSCRIPT</annotation></semantics></math> (fingertip)</th>
<td class="ltx_td ltx_align_left" id="A0.T10.5.5.5.2">4.0</td>
</tr>
<tr class="ltx_tr" id="A0.T10.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A0.T10.6.6.6.1">
<math alttext="w^{fd}" class="ltx_Math" display="inline" id="A0.T10.6.6.6.1.m1.1"><semantics id="A0.T10.6.6.6.1.m1.1a"><msup id="A0.T10.6.6.6.1.m1.1.1" xref="A0.T10.6.6.6.1.m1.1.1.cmml"><mi id="A0.T10.6.6.6.1.m1.1.1.2" xref="A0.T10.6.6.6.1.m1.1.1.2.cmml">w</mi><mrow id="A0.T10.6.6.6.1.m1.1.1.3" xref="A0.T10.6.6.6.1.m1.1.1.3.cmml"><mi id="A0.T10.6.6.6.1.m1.1.1.3.2" xref="A0.T10.6.6.6.1.m1.1.1.3.2.cmml">f</mi><mo id="A0.T10.6.6.6.1.m1.1.1.3.1" xref="A0.T10.6.6.6.1.m1.1.1.3.1.cmml">⁢</mo><mi id="A0.T10.6.6.6.1.m1.1.1.3.3" xref="A0.T10.6.6.6.1.m1.1.1.3.3.cmml">d</mi></mrow></msup><annotation-xml encoding="MathML-Content" id="A0.T10.6.6.6.1.m1.1b"><apply id="A0.T10.6.6.6.1.m1.1.1.cmml" xref="A0.T10.6.6.6.1.m1.1.1"><csymbol cd="ambiguous" id="A0.T10.6.6.6.1.m1.1.1.1.cmml" xref="A0.T10.6.6.6.1.m1.1.1">superscript</csymbol><ci id="A0.T10.6.6.6.1.m1.1.1.2.cmml" xref="A0.T10.6.6.6.1.m1.1.1.2">𝑤</ci><apply id="A0.T10.6.6.6.1.m1.1.1.3.cmml" xref="A0.T10.6.6.6.1.m1.1.1.3"><times id="A0.T10.6.6.6.1.m1.1.1.3.1.cmml" xref="A0.T10.6.6.6.1.m1.1.1.3.1"></times><ci id="A0.T10.6.6.6.1.m1.1.1.3.2.cmml" xref="A0.T10.6.6.6.1.m1.1.1.3.2">𝑓</ci><ci id="A0.T10.6.6.6.1.m1.1.1.3.3.cmml" xref="A0.T10.6.6.6.1.m1.1.1.3.3">𝑑</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A0.T10.6.6.6.1.m1.1c">w^{fd}</annotation><annotation encoding="application/x-llamapun" id="A0.T10.6.6.6.1.m1.1d">italic_w start_POSTSUPERSCRIPT italic_f italic_d end_POSTSUPERSCRIPT</annotation></semantics></math> (the other hand links)</th>
<td class="ltx_td ltx_align_left" id="A0.T10.6.6.6.2">1.0</td>
</tr>
<tr class="ltx_tr" id="A0.T10.7.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A0.T10.7.7.7.1"><math alttext="w^{cu}" class="ltx_Math" display="inline" id="A0.T10.7.7.7.1.m1.1"><semantics id="A0.T10.7.7.7.1.m1.1a"><msup id="A0.T10.7.7.7.1.m1.1.1" xref="A0.T10.7.7.7.1.m1.1.1.cmml"><mi id="A0.T10.7.7.7.1.m1.1.1.2" xref="A0.T10.7.7.7.1.m1.1.1.2.cmml">w</mi><mrow id="A0.T10.7.7.7.1.m1.1.1.3" xref="A0.T10.7.7.7.1.m1.1.1.3.cmml"><mi id="A0.T10.7.7.7.1.m1.1.1.3.2" xref="A0.T10.7.7.7.1.m1.1.1.3.2.cmml">c</mi><mo id="A0.T10.7.7.7.1.m1.1.1.3.1" xref="A0.T10.7.7.7.1.m1.1.1.3.1.cmml">⁢</mo><mi id="A0.T10.7.7.7.1.m1.1.1.3.3" xref="A0.T10.7.7.7.1.m1.1.1.3.3.cmml">u</mi></mrow></msup><annotation-xml encoding="MathML-Content" id="A0.T10.7.7.7.1.m1.1b"><apply id="A0.T10.7.7.7.1.m1.1.1.cmml" xref="A0.T10.7.7.7.1.m1.1.1"><csymbol cd="ambiguous" id="A0.T10.7.7.7.1.m1.1.1.1.cmml" xref="A0.T10.7.7.7.1.m1.1.1">superscript</csymbol><ci id="A0.T10.7.7.7.1.m1.1.1.2.cmml" xref="A0.T10.7.7.7.1.m1.1.1.2">𝑤</ci><apply id="A0.T10.7.7.7.1.m1.1.1.3.cmml" xref="A0.T10.7.7.7.1.m1.1.1.3"><times id="A0.T10.7.7.7.1.m1.1.1.3.1.cmml" xref="A0.T10.7.7.7.1.m1.1.1.3.1"></times><ci id="A0.T10.7.7.7.1.m1.1.1.3.2.cmml" xref="A0.T10.7.7.7.1.m1.1.1.3.2">𝑐</ci><ci id="A0.T10.7.7.7.1.m1.1.1.3.3.cmml" xref="A0.T10.7.7.7.1.m1.1.1.3.3">𝑢</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A0.T10.7.7.7.1.m1.1c">w^{cu}</annotation><annotation encoding="application/x-llamapun" id="A0.T10.7.7.7.1.m1.1d">italic_w start_POSTSUPERSCRIPT italic_c italic_u end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_left" id="A0.T10.7.7.7.2">-1.0</td>
</tr>
<tr class="ltx_tr" id="A0.T10.8.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A0.T10.8.8.8.1"><math alttext="w^{fu}" class="ltx_Math" display="inline" id="A0.T10.8.8.8.1.m1.1"><semantics id="A0.T10.8.8.8.1.m1.1a"><msup id="A0.T10.8.8.8.1.m1.1.1" xref="A0.T10.8.8.8.1.m1.1.1.cmml"><mi id="A0.T10.8.8.8.1.m1.1.1.2" xref="A0.T10.8.8.8.1.m1.1.1.2.cmml">w</mi><mrow id="A0.T10.8.8.8.1.m1.1.1.3" xref="A0.T10.8.8.8.1.m1.1.1.3.cmml"><mi id="A0.T10.8.8.8.1.m1.1.1.3.2" xref="A0.T10.8.8.8.1.m1.1.1.3.2.cmml">f</mi><mo id="A0.T10.8.8.8.1.m1.1.1.3.1" xref="A0.T10.8.8.8.1.m1.1.1.3.1.cmml">⁢</mo><mi id="A0.T10.8.8.8.1.m1.1.1.3.3" xref="A0.T10.8.8.8.1.m1.1.1.3.3.cmml">u</mi></mrow></msup><annotation-xml encoding="MathML-Content" id="A0.T10.8.8.8.1.m1.1b"><apply id="A0.T10.8.8.8.1.m1.1.1.cmml" xref="A0.T10.8.8.8.1.m1.1.1"><csymbol cd="ambiguous" id="A0.T10.8.8.8.1.m1.1.1.1.cmml" xref="A0.T10.8.8.8.1.m1.1.1">superscript</csymbol><ci id="A0.T10.8.8.8.1.m1.1.1.2.cmml" xref="A0.T10.8.8.8.1.m1.1.1.2">𝑤</ci><apply id="A0.T10.8.8.8.1.m1.1.1.3.cmml" xref="A0.T10.8.8.8.1.m1.1.1.3"><times id="A0.T10.8.8.8.1.m1.1.1.3.1.cmml" xref="A0.T10.8.8.8.1.m1.1.1.3.1"></times><ci id="A0.T10.8.8.8.1.m1.1.1.3.2.cmml" xref="A0.T10.8.8.8.1.m1.1.1.3.2">𝑓</ci><ci id="A0.T10.8.8.8.1.m1.1.1.3.3.cmml" xref="A0.T10.8.8.8.1.m1.1.1.3.3">𝑢</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A0.T10.8.8.8.1.m1.1c">w^{fu}</annotation><annotation encoding="application/x-llamapun" id="A0.T10.8.8.8.1.m1.1d">italic_w start_POSTSUPERSCRIPT italic_f italic_u end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_left" id="A0.T10.8.8.8.2">-0.5</td>
</tr>
<tr class="ltx_tr" id="A0.T10.9.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A0.T10.9.9.9.1"><math alttext="w_{h}" class="ltx_Math" display="inline" id="A0.T10.9.9.9.1.m1.1"><semantics id="A0.T10.9.9.9.1.m1.1a"><msub id="A0.T10.9.9.9.1.m1.1.1" xref="A0.T10.9.9.9.1.m1.1.1.cmml"><mi id="A0.T10.9.9.9.1.m1.1.1.2" xref="A0.T10.9.9.9.1.m1.1.1.2.cmml">w</mi><mi id="A0.T10.9.9.9.1.m1.1.1.3" xref="A0.T10.9.9.9.1.m1.1.1.3.cmml">h</mi></msub><annotation-xml encoding="MathML-Content" id="A0.T10.9.9.9.1.m1.1b"><apply id="A0.T10.9.9.9.1.m1.1.1.cmml" xref="A0.T10.9.9.9.1.m1.1.1"><csymbol cd="ambiguous" id="A0.T10.9.9.9.1.m1.1.1.1.cmml" xref="A0.T10.9.9.9.1.m1.1.1">subscript</csymbol><ci id="A0.T10.9.9.9.1.m1.1.1.2.cmml" xref="A0.T10.9.9.9.1.m1.1.1.2">𝑤</ci><ci id="A0.T10.9.9.9.1.m1.1.1.3.cmml" xref="A0.T10.9.9.9.1.m1.1.1.3">ℎ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A0.T10.9.9.9.1.m1.1c">w_{h}</annotation><annotation encoding="application/x-llamapun" id="A0.T10.9.9.9.1.m1.1d">italic_w start_POSTSUBSCRIPT italic_h end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_left" id="A0.T10.9.9.9.2">-1.0</td>
</tr>
<tr class="ltx_tr" id="A0.T10.10.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A0.T10.10.10.10.1"><math alttext="w_{o}" class="ltx_Math" display="inline" id="A0.T10.10.10.10.1.m1.1"><semantics id="A0.T10.10.10.10.1.m1.1a"><msub id="A0.T10.10.10.10.1.m1.1.1" xref="A0.T10.10.10.10.1.m1.1.1.cmml"><mi id="A0.T10.10.10.10.1.m1.1.1.2" xref="A0.T10.10.10.10.1.m1.1.1.2.cmml">w</mi><mi id="A0.T10.10.10.10.1.m1.1.1.3" xref="A0.T10.10.10.10.1.m1.1.1.3.cmml">o</mi></msub><annotation-xml encoding="MathML-Content" id="A0.T10.10.10.10.1.m1.1b"><apply id="A0.T10.10.10.10.1.m1.1.1.cmml" xref="A0.T10.10.10.10.1.m1.1.1"><csymbol cd="ambiguous" id="A0.T10.10.10.10.1.m1.1.1.1.cmml" xref="A0.T10.10.10.10.1.m1.1.1">subscript</csymbol><ci id="A0.T10.10.10.10.1.m1.1.1.2.cmml" xref="A0.T10.10.10.10.1.m1.1.1.2">𝑤</ci><ci id="A0.T10.10.10.10.1.m1.1.1.3.cmml" xref="A0.T10.10.10.10.1.m1.1.1.3">𝑜</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A0.T10.10.10.10.1.m1.1c">w_{o}</annotation><annotation encoding="application/x-llamapun" id="A0.T10.10.10.10.1.m1.1d">italic_w start_POSTSUBSCRIPT italic_o end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_left" id="A0.T10.10.10.10.2">-15.0</td>
</tr>
<tr class="ltx_tr" id="A0.T10.11.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A0.T10.11.11.11.1"><math alttext="w_{l}" class="ltx_Math" display="inline" id="A0.T10.11.11.11.1.m1.1"><semantics id="A0.T10.11.11.11.1.m1.1a"><msub id="A0.T10.11.11.11.1.m1.1.1" xref="A0.T10.11.11.11.1.m1.1.1.cmml"><mi id="A0.T10.11.11.11.1.m1.1.1.2" xref="A0.T10.11.11.11.1.m1.1.1.2.cmml">w</mi><mi id="A0.T10.11.11.11.1.m1.1.1.3" xref="A0.T10.11.11.11.1.m1.1.1.3.cmml">l</mi></msub><annotation-xml encoding="MathML-Content" id="A0.T10.11.11.11.1.m1.1b"><apply id="A0.T10.11.11.11.1.m1.1.1.cmml" xref="A0.T10.11.11.11.1.m1.1.1"><csymbol cd="ambiguous" id="A0.T10.11.11.11.1.m1.1.1.1.cmml" xref="A0.T10.11.11.11.1.m1.1.1">subscript</csymbol><ci id="A0.T10.11.11.11.1.m1.1.1.2.cmml" xref="A0.T10.11.11.11.1.m1.1.1.2">𝑤</ci><ci id="A0.T10.11.11.11.1.m1.1.1.3.cmml" xref="A0.T10.11.11.11.1.m1.1.1.3">𝑙</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A0.T10.11.11.11.1.m1.1c">w_{l}</annotation><annotation encoding="application/x-llamapun" id="A0.T10.11.11.11.1.m1.1d">italic_w start_POSTSUBSCRIPT italic_l end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_left" id="A0.T10.11.11.11.2">-5.0</td>
</tr>
<tr class="ltx_tr" id="A0.T10.12.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A0.T10.12.12.12.1"><math alttext="w_{q}" class="ltx_Math" display="inline" id="A0.T10.12.12.12.1.m1.1"><semantics id="A0.T10.12.12.12.1.m1.1a"><msub id="A0.T10.12.12.12.1.m1.1.1" xref="A0.T10.12.12.12.1.m1.1.1.cmml"><mi id="A0.T10.12.12.12.1.m1.1.1.2" xref="A0.T10.12.12.12.1.m1.1.1.2.cmml">w</mi><mi id="A0.T10.12.12.12.1.m1.1.1.3" xref="A0.T10.12.12.12.1.m1.1.1.3.cmml">q</mi></msub><annotation-xml encoding="MathML-Content" id="A0.T10.12.12.12.1.m1.1b"><apply id="A0.T10.12.12.12.1.m1.1.1.cmml" xref="A0.T10.12.12.12.1.m1.1.1"><csymbol cd="ambiguous" id="A0.T10.12.12.12.1.m1.1.1.1.cmml" xref="A0.T10.12.12.12.1.m1.1.1">subscript</csymbol><ci id="A0.T10.12.12.12.1.m1.1.1.2.cmml" xref="A0.T10.12.12.12.1.m1.1.1.2">𝑤</ci><ci id="A0.T10.12.12.12.1.m1.1.1.3.cmml" xref="A0.T10.12.12.12.1.m1.1.1.3">𝑞</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A0.T10.12.12.12.1.m1.1c">w_{q}</annotation><annotation encoding="application/x-llamapun" id="A0.T10.12.12.12.1.m1.1d">italic_w start_POSTSUBSCRIPT italic_q end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_left" id="A0.T10.12.12.12.2">-1.0</td>
</tr>
<tr class="ltx_tr" id="A0.T10.13.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A0.T10.13.13.13.1"><math alttext="w_{re}" class="ltx_Math" display="inline" id="A0.T10.13.13.13.1.m1.1"><semantics id="A0.T10.13.13.13.1.m1.1a"><msub id="A0.T10.13.13.13.1.m1.1.1" xref="A0.T10.13.13.13.1.m1.1.1.cmml"><mi id="A0.T10.13.13.13.1.m1.1.1.2" xref="A0.T10.13.13.13.1.m1.1.1.2.cmml">w</mi><mrow id="A0.T10.13.13.13.1.m1.1.1.3" xref="A0.T10.13.13.13.1.m1.1.1.3.cmml"><mi id="A0.T10.13.13.13.1.m1.1.1.3.2" xref="A0.T10.13.13.13.1.m1.1.1.3.2.cmml">r</mi><mo id="A0.T10.13.13.13.1.m1.1.1.3.1" xref="A0.T10.13.13.13.1.m1.1.1.3.1.cmml">⁢</mo><mi id="A0.T10.13.13.13.1.m1.1.1.3.3" xref="A0.T10.13.13.13.1.m1.1.1.3.3.cmml">e</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="A0.T10.13.13.13.1.m1.1b"><apply id="A0.T10.13.13.13.1.m1.1.1.cmml" xref="A0.T10.13.13.13.1.m1.1.1"><csymbol cd="ambiguous" id="A0.T10.13.13.13.1.m1.1.1.1.cmml" xref="A0.T10.13.13.13.1.m1.1.1">subscript</csymbol><ci id="A0.T10.13.13.13.1.m1.1.1.2.cmml" xref="A0.T10.13.13.13.1.m1.1.1.2">𝑤</ci><apply id="A0.T10.13.13.13.1.m1.1.1.3.cmml" xref="A0.T10.13.13.13.1.m1.1.1.3"><times id="A0.T10.13.13.13.1.m1.1.1.3.1.cmml" xref="A0.T10.13.13.13.1.m1.1.1.3.1"></times><ci id="A0.T10.13.13.13.1.m1.1.1.3.2.cmml" xref="A0.T10.13.13.13.1.m1.1.1.3.2">𝑟</ci><ci id="A0.T10.13.13.13.1.m1.1.1.3.3.cmml" xref="A0.T10.13.13.13.1.m1.1.1.3.3">𝑒</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A0.T10.13.13.13.1.m1.1c">w_{re}</annotation><annotation encoding="application/x-llamapun" id="A0.T10.13.13.13.1.m1.1d">italic_w start_POSTSUBSCRIPT italic_r italic_e end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_left" id="A0.T10.13.13.13.2">1.0</td>
</tr>
<tr class="ltx_tr" id="A0.T10.14.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A0.T10.14.14.14.1"><math alttext="w_{act}" class="ltx_Math" display="inline" id="A0.T10.14.14.14.1.m1.1"><semantics id="A0.T10.14.14.14.1.m1.1a"><msub id="A0.T10.14.14.14.1.m1.1.1" xref="A0.T10.14.14.14.1.m1.1.1.cmml"><mi id="A0.T10.14.14.14.1.m1.1.1.2" xref="A0.T10.14.14.14.1.m1.1.1.2.cmml">w</mi><mrow id="A0.T10.14.14.14.1.m1.1.1.3" xref="A0.T10.14.14.14.1.m1.1.1.3.cmml"><mi id="A0.T10.14.14.14.1.m1.1.1.3.2" xref="A0.T10.14.14.14.1.m1.1.1.3.2.cmml">a</mi><mo id="A0.T10.14.14.14.1.m1.1.1.3.1" xref="A0.T10.14.14.14.1.m1.1.1.3.1.cmml">⁢</mo><mi id="A0.T10.14.14.14.1.m1.1.1.3.3" xref="A0.T10.14.14.14.1.m1.1.1.3.3.cmml">c</mi><mo id="A0.T10.14.14.14.1.m1.1.1.3.1a" xref="A0.T10.14.14.14.1.m1.1.1.3.1.cmml">⁢</mo><mi id="A0.T10.14.14.14.1.m1.1.1.3.4" xref="A0.T10.14.14.14.1.m1.1.1.3.4.cmml">t</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="A0.T10.14.14.14.1.m1.1b"><apply id="A0.T10.14.14.14.1.m1.1.1.cmml" xref="A0.T10.14.14.14.1.m1.1.1"><csymbol cd="ambiguous" id="A0.T10.14.14.14.1.m1.1.1.1.cmml" xref="A0.T10.14.14.14.1.m1.1.1">subscript</csymbol><ci id="A0.T10.14.14.14.1.m1.1.1.2.cmml" xref="A0.T10.14.14.14.1.m1.1.1.2">𝑤</ci><apply id="A0.T10.14.14.14.1.m1.1.1.3.cmml" xref="A0.T10.14.14.14.1.m1.1.1.3"><times id="A0.T10.14.14.14.1.m1.1.1.3.1.cmml" xref="A0.T10.14.14.14.1.m1.1.1.3.1"></times><ci id="A0.T10.14.14.14.1.m1.1.1.3.2.cmml" xref="A0.T10.14.14.14.1.m1.1.1.3.2">𝑎</ci><ci id="A0.T10.14.14.14.1.m1.1.1.3.3.cmml" xref="A0.T10.14.14.14.1.m1.1.1.3.3">𝑐</ci><ci id="A0.T10.14.14.14.1.m1.1.1.3.4.cmml" xref="A0.T10.14.14.14.1.m1.1.1.3.4">𝑡</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A0.T10.14.14.14.1.m1.1c">w_{act}</annotation><annotation encoding="application/x-llamapun" id="A0.T10.14.14.14.1.m1.1d">italic_w start_POSTSUBSCRIPT italic_a italic_c italic_t end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_left" id="A0.T10.14.14.14.2">1.0</td>
</tr>
<tr class="ltx_tr" id="A0.T10.16.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A0.T10.15.15.15.1"><math alttext="\lambda" class="ltx_Math" display="inline" id="A0.T10.15.15.15.1.m1.1"><semantics id="A0.T10.15.15.15.1.m1.1a"><mi id="A0.T10.15.15.15.1.m1.1.1" xref="A0.T10.15.15.15.1.m1.1.1.cmml">λ</mi><annotation-xml encoding="MathML-Content" id="A0.T10.15.15.15.1.m1.1b"><ci id="A0.T10.15.15.15.1.m1.1.1.cmml" xref="A0.T10.15.15.15.1.m1.1.1">𝜆</ci></annotation-xml><annotation encoding="application/x-tex" id="A0.T10.15.15.15.1.m1.1c">\lambda</annotation><annotation encoding="application/x-llamapun" id="A0.T10.15.15.15.1.m1.1d">italic_λ</annotation></semantics></math></th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A0.T10.16.16.16.2">1.0 - <math alttext="iter\_num" class="ltx_Math" display="inline" id="A0.T10.16.16.16.2.m1.1"><semantics id="A0.T10.16.16.16.2.m1.1a"><mrow id="A0.T10.16.16.16.2.m1.1.1" xref="A0.T10.16.16.16.2.m1.1.1.cmml"><mi id="A0.T10.16.16.16.2.m1.1.1.2" xref="A0.T10.16.16.16.2.m1.1.1.2.cmml">i</mi><mo id="A0.T10.16.16.16.2.m1.1.1.1" xref="A0.T10.16.16.16.2.m1.1.1.1.cmml">⁢</mo><mi id="A0.T10.16.16.16.2.m1.1.1.3" xref="A0.T10.16.16.16.2.m1.1.1.3.cmml">t</mi><mo id="A0.T10.16.16.16.2.m1.1.1.1a" xref="A0.T10.16.16.16.2.m1.1.1.1.cmml">⁢</mo><mi id="A0.T10.16.16.16.2.m1.1.1.4" xref="A0.T10.16.16.16.2.m1.1.1.4.cmml">e</mi><mo id="A0.T10.16.16.16.2.m1.1.1.1b" xref="A0.T10.16.16.16.2.m1.1.1.1.cmml">⁢</mo><mi id="A0.T10.16.16.16.2.m1.1.1.5" xref="A0.T10.16.16.16.2.m1.1.1.5.cmml">r</mi><mo id="A0.T10.16.16.16.2.m1.1.1.1c" xref="A0.T10.16.16.16.2.m1.1.1.1.cmml">⁢</mo><mi id="A0.T10.16.16.16.2.m1.1.1.6" mathvariant="normal" xref="A0.T10.16.16.16.2.m1.1.1.6.cmml">_</mi><mo id="A0.T10.16.16.16.2.m1.1.1.1d" xref="A0.T10.16.16.16.2.m1.1.1.1.cmml">⁢</mo><mi id="A0.T10.16.16.16.2.m1.1.1.7" xref="A0.T10.16.16.16.2.m1.1.1.7.cmml">n</mi><mo id="A0.T10.16.16.16.2.m1.1.1.1e" xref="A0.T10.16.16.16.2.m1.1.1.1.cmml">⁢</mo><mi id="A0.T10.16.16.16.2.m1.1.1.8" xref="A0.T10.16.16.16.2.m1.1.1.8.cmml">u</mi><mo id="A0.T10.16.16.16.2.m1.1.1.1f" xref="A0.T10.16.16.16.2.m1.1.1.1.cmml">⁢</mo><mi id="A0.T10.16.16.16.2.m1.1.1.9" xref="A0.T10.16.16.16.2.m1.1.1.9.cmml">m</mi></mrow><annotation-xml encoding="MathML-Content" id="A0.T10.16.16.16.2.m1.1b"><apply id="A0.T10.16.16.16.2.m1.1.1.cmml" xref="A0.T10.16.16.16.2.m1.1.1"><times id="A0.T10.16.16.16.2.m1.1.1.1.cmml" xref="A0.T10.16.16.16.2.m1.1.1.1"></times><ci id="A0.T10.16.16.16.2.m1.1.1.2.cmml" xref="A0.T10.16.16.16.2.m1.1.1.2">𝑖</ci><ci id="A0.T10.16.16.16.2.m1.1.1.3.cmml" xref="A0.T10.16.16.16.2.m1.1.1.3">𝑡</ci><ci id="A0.T10.16.16.16.2.m1.1.1.4.cmml" xref="A0.T10.16.16.16.2.m1.1.1.4">𝑒</ci><ci id="A0.T10.16.16.16.2.m1.1.1.5.cmml" xref="A0.T10.16.16.16.2.m1.1.1.5">𝑟</ci><ci id="A0.T10.16.16.16.2.m1.1.1.6.cmml" xref="A0.T10.16.16.16.2.m1.1.1.6">_</ci><ci id="A0.T10.16.16.16.2.m1.1.1.7.cmml" xref="A0.T10.16.16.16.2.m1.1.1.7">𝑛</ci><ci id="A0.T10.16.16.16.2.m1.1.1.8.cmml" xref="A0.T10.16.16.16.2.m1.1.1.8">𝑢</ci><ci id="A0.T10.16.16.16.2.m1.1.1.9.cmml" xref="A0.T10.16.16.16.2.m1.1.1.9">𝑚</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A0.T10.16.16.16.2.m1.1c">iter\_num</annotation><annotation encoding="application/x-llamapun" id="A0.T10.16.16.16.2.m1.1d">italic_i italic_t italic_e italic_r _ italic_n italic_u italic_m</annotation></semantics></math>/2000</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the weights used in the reward function of the reinforcement learning algorithm for training the robotic grasping policy. The reward function incentivizes the robot to perform successful grasping by considering various factors such as hand-object distance, contact and impulse rewards, link height to prevent collisions, and regularization for object movement and extreme robot movements.
> <details>
> <summary>read the caption</summary>
> TABLE X: Weights of the Reward Function
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A0.T11.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A0.T11.2.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A0.T11.2.1.1.1.1">Category</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A0.T11.2.1.1.1.2">Num.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A0.T11.2.1.1.1.3">Mass (g)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A0.T11.2.1.1.1.4">Scale (mm)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A0.T11.2.1.1.1.5">Material</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A0.T11.2.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A0.T11.2.1.2.1.1">Picnic Models</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A0.T11.2.1.2.1.2">41</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A0.T11.2.1.2.1.3">9-257</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A0.T11.2.1.2.1.4">50*50*40 - 280*170*100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A0.T11.2.1.2.1.5">Plastic</td>
</tr>
<tr class="ltx_tr" id="A0.T11.2.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A0.T11.2.1.3.2.1">Building Blocks</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A0.T11.2.1.3.2.2">54</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A0.T11.2.1.3.2.3">10-180</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A0.T11.2.1.3.2.4">40*30*30 - 200*200*100</td>
<td class="ltx_td ltx_align_center" id="A0.T11.2.1.3.2.5">Plastic/Styrofoam</td>
</tr>
<tr class="ltx_tr" id="A0.T11.2.1.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A0.T11.2.1.4.3.1">Fruit &amp; Vegetable Models</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A0.T11.2.1.4.3.2">35</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A0.T11.2.1.4.3.3">7-196</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A0.T11.2.1.4.3.4">70*50*50 - 330*80*80</td>
<td class="ltx_td ltx_align_center" id="A0.T11.2.1.4.3.5">Plastic/Styrofoam/Rubber</td>
</tr>
<tr class="ltx_tr" id="A0.T11.2.1.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A0.T11.2.1.5.4.1">Tool Models</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A0.T11.2.1.5.4.2">16</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A0.T11.2.1.5.4.3">20-270</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A0.T11.2.1.5.4.4">70*40*15 - 400*140*130</td>
<td class="ltx_td ltx_align_center" id="A0.T11.2.1.5.4.5">Plastic</td>
</tr>
<tr class="ltx_tr" id="A0.T11.2.1.6.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A0.T11.2.1.6.5.1">Animal Models</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A0.T11.2.1.6.5.2">18</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A0.T11.2.1.6.5.3">26-165</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A0.T11.2.1.6.5.4">100*50*30 - 230*120*100</td>
<td class="ltx_td ltx_align_center" id="A0.T11.2.1.6.5.5">Rubber</td>
</tr>
<tr class="ltx_tr" id="A0.T11.2.1.7.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A0.T11.2.1.7.6.1">Toy Cars</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A0.T11.2.1.7.6.2">16</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A0.T11.2.1.7.6.3">40-117</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A0.T11.2.1.7.6.4">90*35*30 - 110*100*70</td>
<td class="ltx_td ltx_align_center" id="A0.T11.2.1.7.6.5">Plastic</td>
</tr>
<tr class="ltx_tr" id="A0.T11.2.1.8.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A0.T11.2.1.8.7.1">Wooden Models</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A0.T11.2.1.8.7.2">78</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A0.T11.2.1.8.7.3">25-218</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A0.T11.2.1.8.7.4">50*30*30 - 170*90*90</td>
<td class="ltx_td ltx_align_center" id="A0.T11.2.1.8.7.5">Wood</td>
</tr>
<tr class="ltx_tr" id="A0.T11.2.1.9.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A0.T11.2.1.9.8.1">Snacks</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A0.T11.2.1.9.8.2">38</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A0.T11.2.1.9.8.3">22-570</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A0.T11.2.1.9.8.4">60*40*40 - 350*130*70</td>
<td class="ltx_td ltx_align_center" id="A0.T11.2.1.9.8.5">-</td>
</tr>
<tr class="ltx_tr" id="A0.T11.2.1.10.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A0.T11.2.1.10.9.1">Bottles &amp; Boxes</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A0.T11.2.1.10.9.2">67</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A0.T11.2.1.10.9.3">15-550</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A0.T11.2.1.10.9.4">35*35*30 - 240*170*55</td>
<td class="ltx_td ltx_align_center" id="A0.T11.2.1.10.9.5">Plastic/Glass/Paper</td>
</tr>
<tr class="ltx_tr" id="A0.T11.2.1.11.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A0.T11.2.1.11.10.1">Real Tools</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A0.T11.2.1.11.10.2">50</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A0.T11.2.1.11.10.3">16-610</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A0.T11.2.1.11.10.4">40*40*30 - 130*100*90</td>
<td class="ltx_td ltx_align_center" id="A0.T11.2.1.11.10.5">Metal/Plastic/Rubber</td>
</tr>
<tr class="ltx_tr" id="A0.T11.2.1.12.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A0.T11.2.1.12.11.1">Deformable Objects</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A0.T11.2.1.12.11.2">31</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A0.T11.2.1.12.11.3">8-142</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A0.T11.2.1.12.11.4">70*50*50 - 220*180*90</td>
<td class="ltx_td ltx_align_center" id="A0.T11.2.1.12.11.5">Rubber/Cloth/Sponge/Styrofoam</td>
</tr>
<tr class="ltx_tr" id="A0.T11.2.1.13.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A0.T11.2.1.13.12.1">Other Daily Objects</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A0.T11.2.1.13.12.2">68</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A0.T11.2.1.13.12.3">19-454</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A0.T11.2.1.13.12.4">40*30*30 - 270*130*100</td>
<td class="ltx_td ltx_align_center" id="A0.T11.2.1.13.12.5">-</td>
</tr>
<tr class="ltx_tr" id="A0.T11.2.1.14.13">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="A0.T11.2.1.14.13.1">Total</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="A0.T11.2.1.14.13.2">512</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A0.T11.2.1.14.13.3">7-610</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A0.T11.2.1.14.13.4">35*30*15 - 400*200*130</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A0.T11.2.1.14.13.5">-</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table XI presents a detailed breakdown of the physical attributes of 512 real-world objects used in the experiments.  For each of 12 object categories (Picnic Models, Building Blocks, Fruit & Vegetable Models, etc.), the table lists the number of objects, their mass range (in grams), their size range (in millimeters), and the materials they are made of. This information is crucial for understanding the diversity and complexity of the objects used in evaluating the robustness and generalizability of the proposed grasping method.
> <details>
> <summary>read the caption</summary>
> TABLE XI: Physical Attributes of Real Objects
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.05287/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05287/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05287/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05287/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05287/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05287/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05287/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05287/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05287/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05287/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05287/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05287/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05287/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}