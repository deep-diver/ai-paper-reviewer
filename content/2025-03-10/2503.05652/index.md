---
title: "BEHAVIOR Robot Suite: Streamlining Real-World Whole-Body Manipulation for Everyday Household Activities"
summary: "BRS: Streamlining real-world whole-body manipulation for household activities. It introduces a robot suite tackling robot dexterity with bimanual coordination, navigation, and end-effector reach."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Robotics", "🏢 Stanford University",]
showSummary: true
date: 2025-03-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.05652 {{< /keyword >}}
{{< keyword icon="writer" >}} Yunfan Jiang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.05652" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.05652" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.05652/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Household robots face challenges in dexterity, navigation, and environment interaction. Existing benchmarks highlight the need for enhanced bimanual coordination, precise navigation, and extensive reach. Everyday tasks involve articulated/deformable objects and confined spaces, requiring robots to effectively use their whole bodies. Current systems struggle with data collection, coordinated movements, and real-world complexity. Success requires careful hardware design and effective visuomotor policy learning.



This paper introduces the Behavior Robot Suite (BRS), a framework for whole-body manipulation in diverse household activities. BRS uses a wheeled, dual-arm robot with a 4-DoF torso, integrating JoyLo (a teleoperation interface) and WB-VIMA (a learning algorithm). JoyLo eases data collection through intuitive control, while WB-VIMA leverages robot's kinematic hierarchy for synchronized movements. BRS excels in navigation, object manipulation, and complex tasks, marking a step toward real-world household assistance.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} The Behavior Robot Suite (BRS) emphasizes the importance of bimanual coordination, navigation, and end-effector reachability for household robots. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The JoyLo teleoperation interface and WB-VIMA algorithm are the enablers of the BRS framework. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} BRS showcases the potential for robots to perform complex household tasks in real-world environments. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces the Behavior Robot Suite (BRS), paving the way for **more capable household robots.** BRS integrates a novel hardware design and whole-body learning methods, which will enable robots to **navigate complex environments, handle objects, and perform everyday tasks with greater dexterity and reliability.**

------
#### Visual Insights



![](https://arxiv.org/html/2503.05652/x1.png)

> 🔼 Figure 2 shows the distribution of household objects' locations based on the BEHAVIOR-1K dataset. The left graph displays the horizontal distances of objects from the robot's reachable space, following a long-tail distribution (most objects are close, few are far).  The right graph shows the vertical distances (heights) of the objects, revealing multiple peaks at 1.43m, 0.94m, 0.49m, and 0.09m. This indicates that objects are commonly found at these specific heights within a house (e.g., countertops, tables, floors).
> <details>
> <summary>read the caption</summary>
> Figure 2: Ecological distributions of task-relevant objects involved in daily household activities. Left: The horizontal distance distribution follows a long-tail distribution. Right: The vertical distance distribution exhibits multiple distinct modes, located at 1.43 mtimes1.43meter1.43\text{\,}\mathrm{m}start_ARG 1.43 end_ARG start_ARG times end_ARG start_ARG roman_m end_ARG, 0.94 mtimes0.94meter0.94\text{\,}\mathrm{m}start_ARG 0.94 end_ARG start_ARG times end_ARG start_ARG roman_m end_ARG, 0.49 mtimes0.49meter0.49\text{\,}\mathrm{m}start_ARG 0.49 end_ARG start_ARG times end_ARG start_ARG roman_m end_ARG, and 0.09 mtimes0.09meter0.09\text{\,}\mathrm{m}start_ARG 0.09 end_ARG start_ARG times end_ARG start_ARG roman_m end_ARG, representing heights at which household objects are typically found.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.6.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.6.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T1.6.1.1.1.1"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.1.1.1.2">
<table class="ltx_tabular ltx_align_middle" id="S4.T1.6.1.1.1.2.1">
<tr class="ltx_tr" id="S4.T1.6.1.1.1.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.6.1.1.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.1.2.1.1.1.1">Clean House</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.1.1.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.6.1.1.1.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.1.2.1.2.1.1">After a Wild Party</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.1.1.1.3">
<table class="ltx_tabular ltx_align_middle" id="S4.T1.6.1.1.1.3.1">
<tr class="ltx_tr" id="S4.T1.6.1.1.1.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.6.1.1.1.3.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.1.3.1.1.1.1">Clean the</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.1.1.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.6.1.1.1.3.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.1.3.1.2.1.1">Toilet</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.1.1.1.4">
<table class="ltx_tabular ltx_align_middle" id="S4.T1.6.1.1.1.4.1">
<tr class="ltx_tr" id="S4.T1.6.1.1.1.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.6.1.1.1.4.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.1.4.1.1.1.1">Take Trash</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.1.1.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.6.1.1.1.4.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.1.4.1.2.1.1">Outside</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.1.1.1.5">
<table class="ltx_tabular ltx_align_middle" id="S4.T1.6.1.1.1.5.1">
<tr class="ltx_tr" id="S4.T1.6.1.1.1.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.6.1.1.1.5.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.1.5.1.1.1.1">Put Staff</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.1.1.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.6.1.1.1.5.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.1.5.1.2.1.1">onto Shelves</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T1.6.1.1.1.6">
<table class="ltx_tabular ltx_align_middle" id="S4.T1.6.1.1.1.6.1">
<tr class="ltx_tr" id="S4.T1.6.1.1.1.6.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.6.1.1.1.6.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.1.6.1.1.1.1">Lay Clothes</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.1.1.6.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.6.1.1.1.6.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.1.6.1.2.1.1">Out</span></td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.2.2">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_t" id="S4.T1.6.1.2.2.1">
<span class="ltx_text" id="S4.T1.6.1.2.2.1.1">WB-VIMA</span> (ours)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.2.2.2.1">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.2.2.3"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.2.2.3.1">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.2.2.4"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.2.2.4.1">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.2.2.5"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.2.2.5.1">0</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.6.1.2.2.6"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.2.2.6.1">0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.3.3">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S4.T1.6.1.3.3.1">DP3 <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.05652v1#bib.bib70" title="">70</a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.3.3.2">13</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.3.3.3"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.3.3.3.1">0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.3.3.4">9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.3.3.5"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.3.3.5.1">0</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.6.1.3.3.6">7</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.4.4">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_bb" id="S4.T1.6.1.4.4.1">RGB-DP <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.05652v1#bib.bib66" title="">66</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.1.4.4.2">2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.1.4.4.3">2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.1.4.4.4">3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.1.4.4.5"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.4.4.5.1">0</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.6.1.4.4.6">3</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative overview of safety incidents during the evaluation of the Whole-Body VisuoMotor Attention (WB-VIMA) model and baseline models.  It shows the number of collisions with environmental objects and instances of motor power loss due to excessive force, highlighting WB-VIMA's enhanced safety performance compared to the baselines. The minimal number of safety incidents for WB-VIMA suggests that its whole-body motion planning and control are robust and safe, especially when compared to the higher number of incidents recorded for DP3 and RGB-DP.
> <details>
> <summary>read the caption</summary>
> TABLE I: Safety violations during evaluation. WB-VIMA exhibits minimal collisions with environmental objects and rarely causes motor power loss due to excessive force.
> </details>





### In-depth insights


#### WB-VIMA Policy
The paper introduces a **Whole-Body VisuoMotor Attention (WB-VIMA) policy** for robot manipulation. It leverages a transformer-based model for learning coordinated actions in mobile manipulation tasks. WB-VIMA **autoregressively denoises whole-body actions**, considering the robot's embodiment and multi-modal observations. A key aspect is conditioning upper-body actions on lower-body actions, improving coordination and reducing error propagation. WB-VIMA uses **visuomotor self-attention** to fuse visual (point clouds) and proprioceptive data, avoiding overfitting. The model predicts actions sequentially within the robot's kinematic structure, enhancing its ability to execute complex tasks with greater accuracy and stability.

#### JoyLo Interface
**JoyLo** seems to be a key innovation, a **low-cost, whole-body teleoperation** interface. Its design prioritizes efficient control, intuitive feedback via **bilateral teleoperation**, and data quality for policy learning. The use of **kinematic-twin arms** and **Nintendo Joy-Cons** is interesting, potentially balancing intuitiveness with precision. A key aspect is its ability to prevent singularities and ensure smooth control, crucial for replay success and mitigating embodiment mismatches. It enables faster data collection, enhanced safety, and better coordination.

#### Real World Tests
Although there's no explicit section titled "Real World Tests," the paper describes comprehensive experiments in real-world, unmodified household environments. This is **crucial** because it moves beyond simulated or lab settings, highlighting the robot's ability to handle the complexities and unpredictability inherent in human living spaces. The five chosen tasks—cleaning after a party, cleaning a toilet, taking out the trash, putting items on shelves, and laying out clothes—are **representative of everyday activities** and demand a combination of navigation, manipulation, and interaction with articulated objects. The evaluation methodology, including success rates for the entire task and sub-tasks, provides valuable insights into the robot's strengths and weaknesses. Addressing these challenges is vital for developing truly useful assistive robots.

#### Robotics: Hardware
Robotics hardware is the **foundation** for bringing AI algorithms into the physical world. Advancements in actuators, sensors, and materials directly influence a robot's capabilities. **High-performance** motors, coupled with precise encoders, enable accurate movements, while robust force sensors provide the ability to interact safely. **Lightweight** yet strong materials allow for energy-efficient designs. The rise of **modular** robotics is also a key area, allowing easier customization and repair. Furthermore, effective **integration** of these hardware components is necessary to perform complex tasks in unstructured environments.

#### Action Denoising
**Action denoising** appears to be a critical component for enabling effective control of complex robotic systems, especially those with multiple articulated parts. The core idea is to leverage the robot's inherent kinematic hierarchy to improve coordination and reduce error propagation. By conditioning the action predictions of downstream joints on the predicted actions of upstream joints (e.g., conditioning arm movements on torso and base movements), the policy can better account for the interdependencies between different body parts. This approach leads to more coordinated and accurate whole-body movements, and minimizes the accumulation of errors that can arise from independent joint control. Moreover, this could lead to greater robustness and safety, preventing the robot from entering out-of-distribution states or experiencing collisions. The autoregressive nature of the action decoding process ensures that movements are sequentially predicted within the robot's embodiment, resulting in a more coherent and stable behavior.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.05652/x2.png)

> 🔼 The figure showcases the hardware components of the BEHAVIOR ROBOT SUITE (BRS). On the left, it displays the R1 robot, highlighting its dimensions (2066mm x 1746mm x 863mm), range of motion (two 6-DoF arms with parallel jaw grippers, and a 4-DoF torso mounted on an omnidirectional mobile base with three wheel and three steering motors), and its array of sensors (ZED-Mini, ZED 2, and RealSense T265 cameras).  The right side of the figure details the JoyLo teleoperation interface, which uses two 3D-printed, kinematic-twin arms with Dynamixel motors and Nintendo Joy-Con controllers for intuitive whole-body control of the R1 robot.  Two Dynamixel motors are coupled together on each JoyLo arm to ensure sufficient torque at the shoulder joint.
> <details>
> <summary>read the caption</summary>
> Figure 3: BRS hardware system. Left: The R1 robot’s dimensions, range of motion, and onboard sensors. The robot features two 6-DoF arms, each equipped with a parallel jaw gripper, and a 4-DoF torso. The torso is mounted on an omnidirectional mobile base with three wheel motors and three steering motors. Right: The JoyLo system, consisting of two kinematic-twin arms constructed using 3D-printed components and low-cost Dynamixel motors. Compact, off-the-shelf Nintendo Joy-Con controllers are mounted at the one end of the arms, serving as the interface for controlling the grippers, torso, and mobile base. To ensure sufficient stall torque for the shoulder joints, two Dynamixel motors are coupled together.
> </details>



![](https://arxiv.org/html/2503.05652/x3.png)

> 🔼 The figure illustrates the architecture of the WB-VIMA model, an imitation learning algorithm used for whole-body control. The model processes multi-modal sensory data (point cloud and proprioception) using self-attention to capture interdependencies between different parts of the robot's body (arms, torso, base). The autoregressive denoising process predicts actions sequentially from the base to the end-effectors, ensuring coordinated whole-body movements.  This hierarchical approach enables effective learning of complex whole-body policies.
> <details>
> <summary>read the caption</summary>
> Figure 4: WB-VIMA model architecture for imitation learning. WB-VIMA autoregressively denoises whole-body actions within the embodiment space and dynamically aggregates multi-modal observations using self-attention. By leveraging the hierarchical interdependencies within the robot’s embodiment and the rich information provided by multi-modal sensory inputs, WB-VIMA enables effective whole-body policy learning.
> </details>



![](https://arxiv.org/html/2503.05652/x4.png)

> 🔼 This figure presents the success rates achieved by different methods on five representative household tasks.  The success rates are shown for both the entire task ('ET') and individual sub-tasks ('ST').  'ET' represents the percentage of times the robot successfully completed the entire task from start to finish. 'ST' shows the success rate for each individual step or sub-goal within a task. The methods compared include a trained WB-VIMA policy, a human operator using the JoyLo interface, DP3 (a baseline diffusion model), and RGB-DP (another baseline diffusion model that uses RGB images as input). The data visualization allows for a comparison of the overall effectiveness of each method on these tasks, as well as their relative strengths and weaknesses on the individual sub-tasks. Detailed numerical results are available in Appendix D-B.
> <details>
> <summary>read the caption</summary>
> Figure 5: Success rate for five representative household activities. “ET” denotes the entire task and “ST” denotes sub-task. Numerical results are provided in Appendix D-B.
> </details>



![](https://arxiv.org/html/2503.05652/x5.png)

> 🔼 The figure shows emergent behaviors of learned WB-VIMA policies. The robot uses its torso and mobile base to improve maneuverability. In (a), the robot leans forward and moves its base to push a door open. In (b), after grasping a dishwasher handle, it moves its base backward to pull the dishwasher open. In (c), the robot demonstrates failure recovery; it adjusts its torso to reach the toilet cover when its gripper is initially too far.
> <details>
> <summary>read the caption</summary>
> (a)
> </details>



![](https://arxiv.org/html/2503.05652/x6.png)

> 🔼 The image shows the robot successfully completing a subtask of the 'Clean House After a Wild Party' task.  It demonstrates the robot's ability to recover from a failed attempt to open the dishwasher. Initially, the robot's gripper is too far from the dishwasher handle. The robot adjusts by moving its base backward, tilting its torso forward, and bringing its gripper closer to successfully close the dishwasher.
> <details>
> <summary>read the caption</summary>
> (b)
> </details>



![](https://arxiv.org/html/2503.05652/x7.png)

> 🔼 A user study compared three interfaces for robot teleoperation: JoyLo, VR controllers, and Apple Vision Pro.  The results, shown in two subfigures, demonstrate that JoyLo is the most efficient, producing the highest-quality data for robot learning.  Figure 6a shows success rates and task completion times, highlighting JoyLo's superior performance. Figure 6b presents survey results indicating JoyLo's superior user-friendliness, especially in terms of ease of use and effectiveness for whole-body control.
> <details>
> <summary>read the caption</summary>
> Figure 6: User study results with 10 participants. (a): JoyLo is the most efficient interface and produces the highest-quality data. “S.R.” denotes success rate. “ET Comp. Time” (“ST Comp. Time”) refers to entire task (sub-task) completion time. (b): Survey results show that JoyLo is unanimously rated as the most user-friendly interface by both robot learning practitioners and novices (“past data collection experience”). Nearly all participants find the Joy-Con helpful for whole-body control (“helpfulness of Joy-Con”).
> </details>



![](https://arxiv.org/html/2503.05652/x8.png)

> 🔼 This ablation study analyzes the impact of two key components of the WB-VIMA model on task performance: autoregressive whole-body action denoising and multi-modal observation attention.  The figure presents success rates for two representative household tasks, 'Put Items onto Shelves' and 'Lay Clothes Out,' comparing the full WB-VIMA model against variants where each of these components is removed. This visualization allows for a quantitative assessment of the individual contribution of each component to the model's overall effectiveness and robustness in performing complex whole-body manipulation tasks. The results show that both components significantly contribute to the superior performance of WB-VIMA.
> <details>
> <summary>read the caption</summary>
> Figure 7: Ablation study results for tasks “put items onto shelves” and “lay clothes out”. “w/o W.B. Action Denoising” refers to the variant without autoregressive whole-body action denoising. “w/o Multi-Modal Obs. Attn.” refers to the variant without multi-modal observation attention.
> </details>



![](https://arxiv.org/html/2503.05652/extracted/6261453/appendix/figs/arm_diagram.png)

> 🔼 Figure 8 showcases emergent behaviors of the WB-VIMA policies in handling real-world manipulation challenges. The robot utilizes its torso and mobile base for enhanced maneuverability. In (a), the robot leans forward, using its hip and base to push a door open. In (b), the robot strategically reverses its mobile base to pull open a dishwasher after grasping the handle. Notably, (c) demonstrates a failure recovery mechanism; when unable to reach the toilet cover with its arm extended, the robot adjusts its torso position to bring the gripper within reach and successfully completes the task.
> <details>
> <summary>read the caption</summary>
> Figure 8: Emergent behaviors of learned WB-VIMA policies. (a) and (b): The trained policies leverage the torso and mobile base to improve maneuverability. In (a), the robot bends its hip forward and advances the mobile base to push the door open. In (b), after grasping the dishwasher handle, the robot moves its base backward to pull the dishwasher open. (c): The trained policy exhibits failure recovery behavior. On the first attempt to close the toilet cover, the robot’s gripper is too far to reach it. The policy adjusts by tilting the torso forward, bringing the gripper closer, and successfully closing the cover.
> </details>



![](https://arxiv.org/html/2503.05652/x9.png)

> 🔼 The figure shows emergent behaviors of the trained WB-VIMA policies. In (a), the robot uses its hip to push the door open, demonstrating maneuverability. In (b), the robot uses its base to pull open a dishwasher. In (c), the robot recovers from a failure to close the toilet cover by adjusting its torso.
> <details>
> <summary>read the caption</summary>
> (a)
> </details>



![](https://arxiv.org/html/2503.05652/x10.png)

> 🔼 The trained policies leverage the torso and mobile base to improve maneuverability. In (a), the robot bends its hip forward and advances the mobile base to push the door open. In (b), after grasping the dishwasher handle, the robot moves its base backward to pull the dishwasher open. In (c), the trained policy exhibits failure recovery behavior. On the first attempt to close the toilet cover, the robot's gripper is too far to reach it. The policy adjusts by tilting the torso forward, bringing the gripper closer, and successfully closing the cover.
> <details>
> <summary>read the caption</summary>
> (b)
> </details>



![](https://arxiv.org/html/2503.05652/extracted/6261453/appendix/figs/fused_pcd_visualization-fig.png)

> 🔼 The image showcases an example of the trained WB-VIMA policy's failure recovery behavior.  Initially, the robot attempts to close the toilet cover but its gripper is too far to reach.  The policy then smartly adjusts by tilting the torso forward, bringing the gripper closer, and successfully completes the action of closing the toilet cover.
> <details>
> <summary>read the caption</summary>
> (c)
> </details>



![](https://arxiv.org/html/2503.05652/extracted/6261453/appendix/figs/joylo_disassembled_2k.png)

> 🔼 The figure shows three diagrams of the robot's hardware components. Diagram (a) illustrates the robot's dual arms, each having six degrees of freedom (DoFs) and a parallel jaw gripper. Diagram (b) depicts the robot's four-DoF torso which allows for waist rotation, hip bending, and knee-like motions. Lastly, Diagram (c) presents the omnidirectional mobile base that uses three steering motors and three wheel motors enabling versatile movement.
> <details>
> <summary>read the caption</summary>
> Figure A.1: Robot diagrams. (a): Each arm has six DoFs and a parallel jaw gripper. (b): The torso features four revolute joints for waist rotation, hip bending, and knee-like motions. (c): The wheeled, omnidirectional mobile base is equipped with three steering motors and three wheel motors.
> </details>



![](https://arxiv.org/html/2503.05652/x11.png)

> 🔼 Figure A.2 presents a visualization of the processed point cloud data used by the robot. The left panel shows the colored point cloud data from all three cameras (head, left and right arms) fused into a single egocentric view aligned with the robot's coordinate frame. This provides a comprehensive 3D view of the robot's surroundings. The right panel shows the robot's orientation within its environment, illustrating how the robot perceives and understands its spatial location relative to surrounding objects.
> <details>
> <summary>read the caption</summary>
> Figure A.2: Visualization of the fused, ego-centric colored point clouds. Left: The colored point cloud observation, aligned with the robot’s coordinate frame. Right: The robot’s orientation and its surrounding environment.
> </details>



![](https://arxiv.org/html/2503.05652/x12.png)

> 🔼 The figure shows the individual links of a single JoyLo arm.  Each arm consists of multiple 3D-printed links and low-cost Dynamixel motors. The JoyLo system uses two of these arms for intuitive whole-body teleoperation.
> <details>
> <summary>read the caption</summary>
> Figure A.3: Individual JoyLo arm links.
> </details>



![](https://arxiv.org/html/2503.05652/x13.png)

> 🔼 Figure A.4 shows the generalization capabilities tested for the task of cleaning up after a party. The left panel displays variations of bowls used in the experiment, categorized as 'seen' (bowls that were included during training) and 'unseen' (bowls not seen during training).  This tests the model's ability to generalize to new, unseen objects. The middle panel illustrates the designated starting region for the robot.  The right panel showcases various initial placements of objects (bowls in this case) on the gaming table. These different starting configurations and object arrangements demonstrate the robustness and adaptability of the robot's learned policy.
> <details>
> <summary>read the caption</summary>
> Figure A.4: Generalization settings for the task “clean house after a wild party”. From left to right: seen and unseen bowl variations, robot’s starting region, and initial object placements on the gaming table.
> </details>



![](https://arxiv.org/html/2503.05652/x14.png)

> 🔼 Figure A.5 shows various aspects of the experimental setup for the 'clean the toilet' task.  The image shows three key elements. First, it illustrates the robot's designated starting location within the restroom environment. Second, it displays a range of different sponge types used during the experiment to assess the robot's adaptability to varying object characteristics. Third, it shows different initial positions or placements of the toilet cleaning objects before the robot begins the task. These variations help ensure the robustness of the experimental design by testing the robot's ability to complete the task in a variety of realistic scenarios.
> <details>
> <summary>read the caption</summary>
> Figure A.5: Generalization settings for the task “clean the toilet”. From left to right: robot’s starting region, sponge variations, and initial placements.
> </details>



![](https://arxiv.org/html/2503.05652/x15.png)

> 🔼 The figure displays the generalization settings used for the 'Take Trash Outside' task within the BEHAVIOR ROBOT SUITE (BRS) experiment.  It showcases two key aspects: the possible starting locations of the robot, indicated by a designated 'Starting Region', and the various possible initial locations of the trash bag, illustrated as an 'Initial Placement Region'.  This variation in starting configurations and object placement ensures the robustness and generalizability of the learned robot policy by testing its ability to complete the task across a range of realistic scenarios.
> <details>
> <summary>read the caption</summary>
> Figure A.6: Generalization settings for the task “take trash outside”. From left to right: initial placement region of the trash bag and robot’s starting region.
> </details>



![](https://arxiv.org/html/2503.05652/extracted/6261453/appendix/figs/user_study_example-fig.png)

> 🔼 Figure A.7 shows different aspects of the experimental setup for the 'put items onto shelves' task.  It illustrates the variability introduced to test the robustness of the robot's ability to generalize its actions across different scenarios.  The image displays three key elements: the robot's starting position (showing the range of potential starting locations), the arrangement of boxes to be placed onto the shelves (including various placements to increase variability), and finally, several configurations of shelves (demonstrating the different shelf setups the robot was tested on). Each of these variable elements is designed to challenge the robot's ability to perform the task consistently and successfully despite changes in the environment.
> <details>
> <summary>read the caption</summary>
> Figure A.7: Generalization settings for the task “put items onto shelves”. From left to right: robot’s starting region, box placements, and shelf configurations.
> </details>



![](https://arxiv.org/html/2503.05652/extracted/6261453/appendix/figs/user_study_annotation_gui-fig.png)

> 🔼 Figure A.8 shows various scenarios for the task of laying out clothes.  It illustrates the generalization capabilities of the system by showcasing different starting positions for the robot, various arrangements of clothes, and different types of clothing items (e.g., different colors and styles). This demonstrates the robustness of the learned policy and its ability to handle the variability inherent in real-world environments.
> <details>
> <summary>read the caption</summary>
> Figure A.8: Generalization settings for the task “lay clothes out”. From left to right: robot’s starting region, clothing placements, and clothing variations.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.6.1.1.1.2.1">
<tr class="ltx_tr" id="S4.T1.6.1.1.1.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.6.1.1.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.1.2.1.1.1.1">Clean House</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.1.1.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.6.1.1.1.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.1.2.1.2.1.1">After a Wild Party</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table A.I provides detailed specifications for the motors that control the robot's torso. It lists the range of motion (in radians and degrees) for each of the four torso joints: waist (yaw), hip (pitch), and two knee-like joints.  It also gives the rated and maximum motor torque for these joints in Newton-meters (Nm). This table is essential for understanding the physical capabilities and limitations of the robot's torso.
> <details>
> <summary>read the caption</summary>
> TABLE A.I: Torso motor specifications.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.6.1.1.1.3.1">
<tr class="ltx_tr" id="S4.T1.6.1.1.1.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.6.1.1.1.3.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.1.3.1.1.1.1">Clean the</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.1.1.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.6.1.1.1.3.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.1.3.1.2.1.1">Toilet</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the specifications of the mobile base of the R1 robot, including its velocity limits, acceleration limits, and onboard sensors.
> <details>
> <summary>read the caption</summary>
> TABLE A.II: Mobile base specifications.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.6.1.1.1.4.1">
<tr class="ltx_tr" id="S4.T1.6.1.1.1.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.6.1.1.1.4.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.1.4.1.1.1.1">Take Trash</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.1.1.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.6.1.1.1.4.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.1.4.1.2.1.1">Outside</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table A.III presents the configurations used for the ZED stereo RGB-D cameras (both the main head camera and the two wrist cameras) and the RealSense T265 tracking camera.  It details the frequency of data acquisition, image resolution, depth mode for the ZED cameras, and minimum and maximum depth ranges for each camera setup. This information is crucial for understanding the quality and characteristics of the visual data collected by the robot for the tasks in the BEHAVIOR ROBOT SUITE.
> <details>
> <summary>read the caption</summary>
> TABLE A.III: Configurations for the ZED RGB-D cameras and RealSense T265 tracking camera.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.6.1.1.1.5.1">
<tr class="ltx_tr" id="S4.T1.6.1.1.1.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.6.1.1.1.5.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.1.5.1.1.1.1">Put Staff</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.1.1.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.6.1.1.1.5.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.1.5.1.2.1.1">onto Shelves</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table A.IV provides a detailed breakdown of the costs associated with building the JoyLo teleoperation interface. It lists each component, its quantity, unit price, total price, and supplier. This table is valuable for understanding the affordability and accessibility of the JoyLo system, as it demonstrates the low cost of the materials used in its construction.
> <details>
> <summary>read the caption</summary>
> TABLE A.IV: JoyLo bill of materials.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.6.1.1.1.6.1">
<tr class="ltx_tr" id="S4.T1.6.1.1.1.6.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.6.1.1.1.6.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.1.6.1.1.1.1">Lay Clothes</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.1.1.6.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.6.1.1.1.6.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.1.6.1.2.1.1">Out</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table A.V presents the hyperparameters used for both the PointNet and the proprioception MLP. PointNet is a deep learning architecture used for processing point cloud data, while the proprioception MLP processes proprioceptive data (information about the robot's own state, such as joint angles and velocities).  The table lists specific values used in the model's configuration, such as the number of hidden dimensions in each network, their depth (number of layers), and the activation functions used. These hyperparameters are critical for the performance of the model and tuning them appropriately is an essential part of training.
> <details>
> <summary>read the caption</summary>
> TABLE A.V: Hyperparameters for PointNet and the proprioception MLP.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T1.20">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T1.20.21.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="A1.T1.20.21.1.1"><span class="ltx_text ltx_font_bold" id="A1.T1.20.21.1.1.1">Parameter</span></th>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="A1.T1.20.21.1.2"><span class="ltx_text ltx_font_bold" id="A1.T1.20.21.1.2.1">Value</span></td>
</tr>
<tr class="ltx_tr" id="A1.T1.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A1.T1.3.3.4">Waist Joint Range (Yaw)</th>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T1.3.3.3">
<math alttext="\pm" class="ltx_Math" display="inline" id="A1.T1.1.1.1.m1.1"><semantics id="A1.T1.1.1.1.m1.1a"><mo id="A1.T1.1.1.1.m1.1.1" xref="A1.T1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A1.T1.1.1.1.m1.1b"><csymbol cd="latexml" id="A1.T1.1.1.1.m1.1.1.cmml" xref="A1.T1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A1.T1.1.1.1.m1.1d">±</annotation></semantics></math> <math alttext="3.05\text{\,}\mathrm{rad}" class="ltx_Math" display="inline" id="A1.T1.2.2.2.m2.3"><semantics id="A1.T1.2.2.2.m2.3a"><mrow id="A1.T1.2.2.2.m2.3.3" xref="A1.T1.2.2.2.m2.3.3.cmml"><mn id="A1.T1.2.2.2.m2.1.1.1.1.1.1" xref="A1.T1.2.2.2.m2.1.1.1.1.1.1.cmml">3.05</mn><mtext id="A1.T1.2.2.2.m2.2.2.2.2.2.2" xref="A1.T1.2.2.2.m2.2.2.2.2.2.2.cmml"> </mtext><mi class="ltx_unit" id="A1.T1.2.2.2.m2.3.3.3.3.3.3" xref="A1.T1.2.2.2.m2.3.3.3.3.3.3.cmml">rad</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T1.2.2.2.m2.3b"><apply id="A1.T1.2.2.2.m2.3.3.cmml" xref="A1.T1.2.2.2.m2.3.3"><csymbol cd="latexml" id="A1.T1.2.2.2.m2.2.2.2.2.2.2.cmml" xref="A1.T1.2.2.2.m2.2.2.2.2.2.2">times</csymbol><cn id="A1.T1.2.2.2.m2.1.1.1.1.1.1.cmml" type="float" xref="A1.T1.2.2.2.m2.1.1.1.1.1.1">3.05</cn><csymbol cd="latexml" id="A1.T1.2.2.2.m2.3.3.3.3.3.3.cmml" xref="A1.T1.2.2.2.m2.3.3.3.3.3.3">radian</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.2.2.2.m2.3c">3.05\text{\,}\mathrm{rad}</annotation><annotation encoding="application/x-llamapun" id="A1.T1.2.2.2.m2.3d">start_ARG 3.05 end_ARG start_ARG times end_ARG start_ARG roman_rad end_ARG</annotation></semantics></math> (<math alttext="175\text{\,}\mathrm{\SIUnitSymbolDegree}" class="ltx_Math" display="inline" id="A1.T1.3.3.3.m3.3"><semantics id="A1.T1.3.3.3.m3.3a"><mrow id="A1.T1.3.3.3.m3.3.3" xref="A1.T1.3.3.3.m3.3.3.cmml"><mn id="A1.T1.3.3.3.m3.1.1.1.1.1.1" xref="A1.T1.3.3.3.m3.1.1.1.1.1.1.cmml">175</mn><mtext id="A1.T1.3.3.3.m3.2.2.2.2.2.2" xref="A1.T1.3.3.3.m3.2.2.2.2.2.2.cmml"> </mtext><mi class="ltx_unit" id="A1.T1.3.3.3.m3.3.3.3.3.3.3" mathvariant="normal" xref="A1.T1.3.3.3.m3.3.3.3.3.3.3.cmml">°</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T1.3.3.3.m3.3b"><apply id="A1.T1.3.3.3.m3.3.3.cmml" xref="A1.T1.3.3.3.m3.3.3"><csymbol cd="latexml" id="A1.T1.3.3.3.m3.2.2.2.2.2.2.cmml" xref="A1.T1.3.3.3.m3.2.2.2.2.2.2">times</csymbol><cn id="A1.T1.3.3.3.m3.1.1.1.1.1.1.cmml" type="integer" xref="A1.T1.3.3.3.m3.1.1.1.1.1.1">175</cn><csymbol cd="latexml" id="A1.T1.3.3.3.m3.3.3.3.3.3.3.cmml" xref="A1.T1.3.3.3.m3.3.3.3.3.3.3">degree</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.3.3.3.m3.3c">175\text{\,}\mathrm{\SIUnitSymbolDegree}</annotation><annotation encoding="application/x-llamapun" id="A1.T1.3.3.3.m3.3d">start_ARG 175 end_ARG start_ARG times end_ARG start_ARG ° end_ARG</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="A1.T1.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T1.8.8.6">Hip Joint Range (Pitch)</th>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T1.8.8.5">
<math alttext="-2.09\text{\,}\mathrm{rad}" class="ltx_Math" display="inline" id="A1.T1.4.4.1.m1.3"><semantics id="A1.T1.4.4.1.m1.3a"><mrow id="A1.T1.4.4.1.m1.3.3" xref="A1.T1.4.4.1.m1.3.3.cmml"><mrow id="A1.T1.4.4.1.m1.1.1.1.1.1.1.2" xref="A1.T1.4.4.1.m1.3.3.cmml"><mo id="A1.T1.4.4.1.m1.1.1.1.1.1.1.2a" xref="A1.T1.4.4.1.m1.1.1.1.1.1.1.1.cmml">−</mo><mn id="A1.T1.4.4.1.m1.1.1.1.1.1.1.2.2" xref="A1.T1.4.4.1.m1.1.1.1.1.1.1.1.cmml">2.09</mn></mrow><mtext id="A1.T1.4.4.1.m1.2.2.2.2.2.2" xref="A1.T1.4.4.1.m1.2.2.2.2.2.2.cmml"> </mtext><mi class="ltx_unit" id="A1.T1.4.4.1.m1.3.3.3.3.3.3" xref="A1.T1.4.4.1.m1.3.3.3.3.3.3.cmml">rad</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T1.4.4.1.m1.3b"><apply id="A1.T1.4.4.1.m1.3.3.cmml" xref="A1.T1.4.4.1.m1.3.3"><csymbol cd="latexml" id="A1.T1.4.4.1.m1.2.2.2.2.2.2.cmml" xref="A1.T1.4.4.1.m1.2.2.2.2.2.2">times</csymbol><cn id="A1.T1.4.4.1.m1.1.1.1.1.1.1.1.cmml" type="float" xref="A1.T1.4.4.1.m1.1.1.1.1.1.1.2a">-2.09</cn><csymbol cd="latexml" id="A1.T1.4.4.1.m1.3.3.3.3.3.3.cmml" xref="A1.T1.4.4.1.m1.3.3.3.3.3.3">radian</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.4.4.1.m1.3c">-2.09\text{\,}\mathrm{rad}</annotation><annotation encoding="application/x-llamapun" id="A1.T1.4.4.1.m1.3d">start_ARG - 2.09 end_ARG start_ARG times end_ARG start_ARG roman_rad end_ARG</annotation></semantics></math> (<math alttext="-120\text{\,}\mathrm{\SIUnitSymbolDegree}" class="ltx_Math" display="inline" id="A1.T1.5.5.2.m2.3"><semantics id="A1.T1.5.5.2.m2.3a"><mrow id="A1.T1.5.5.2.m2.3.3" xref="A1.T1.5.5.2.m2.3.3.cmml"><mrow id="A1.T1.5.5.2.m2.1.1.1.1.1.1.2" xref="A1.T1.5.5.2.m2.3.3.cmml"><mo id="A1.T1.5.5.2.m2.1.1.1.1.1.1.2a" xref="A1.T1.5.5.2.m2.1.1.1.1.1.1.1.cmml">−</mo><mn id="A1.T1.5.5.2.m2.1.1.1.1.1.1.2.2" xref="A1.T1.5.5.2.m2.1.1.1.1.1.1.1.cmml">120</mn></mrow><mtext id="A1.T1.5.5.2.m2.2.2.2.2.2.2" xref="A1.T1.5.5.2.m2.2.2.2.2.2.2.cmml"> </mtext><mi class="ltx_unit" id="A1.T1.5.5.2.m2.3.3.3.3.3.3" mathvariant="normal" xref="A1.T1.5.5.2.m2.3.3.3.3.3.3.cmml">°</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T1.5.5.2.m2.3b"><apply id="A1.T1.5.5.2.m2.3.3.cmml" xref="A1.T1.5.5.2.m2.3.3"><csymbol cd="latexml" id="A1.T1.5.5.2.m2.2.2.2.2.2.2.cmml" xref="A1.T1.5.5.2.m2.2.2.2.2.2.2">times</csymbol><cn id="A1.T1.5.5.2.m2.1.1.1.1.1.1.1.cmml" type="integer" xref="A1.T1.5.5.2.m2.1.1.1.1.1.1.2a">-120</cn><csymbol cd="latexml" id="A1.T1.5.5.2.m2.3.3.3.3.3.3.cmml" xref="A1.T1.5.5.2.m2.3.3.3.3.3.3">degree</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.5.5.2.m2.3c">-120\text{\,}\mathrm{\SIUnitSymbolDegree}</annotation><annotation encoding="application/x-llamapun" id="A1.T1.5.5.2.m2.3d">start_ARG - 120 end_ARG start_ARG times end_ARG start_ARG ° end_ARG</annotation></semantics></math>) <math alttext="\sim" class="ltx_Math" display="inline" id="A1.T1.6.6.3.m3.1"><semantics id="A1.T1.6.6.3.m3.1a"><mo id="A1.T1.6.6.3.m3.1.1" xref="A1.T1.6.6.3.m3.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="A1.T1.6.6.3.m3.1b"><csymbol cd="latexml" id="A1.T1.6.6.3.m3.1.1.cmml" xref="A1.T1.6.6.3.m3.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.6.6.3.m3.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="A1.T1.6.6.3.m3.1d">∼</annotation></semantics></math> <math alttext="1.83\text{\,}\mathrm{rad}" class="ltx_Math" display="inline" id="A1.T1.7.7.4.m4.3"><semantics id="A1.T1.7.7.4.m4.3a"><mrow id="A1.T1.7.7.4.m4.3.3" xref="A1.T1.7.7.4.m4.3.3.cmml"><mn id="A1.T1.7.7.4.m4.1.1.1.1.1.1" xref="A1.T1.7.7.4.m4.1.1.1.1.1.1.cmml">1.83</mn><mtext id="A1.T1.7.7.4.m4.2.2.2.2.2.2" xref="A1.T1.7.7.4.m4.2.2.2.2.2.2.cmml"> </mtext><mi class="ltx_unit" id="A1.T1.7.7.4.m4.3.3.3.3.3.3" xref="A1.T1.7.7.4.m4.3.3.3.3.3.3.cmml">rad</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T1.7.7.4.m4.3b"><apply id="A1.T1.7.7.4.m4.3.3.cmml" xref="A1.T1.7.7.4.m4.3.3"><csymbol cd="latexml" id="A1.T1.7.7.4.m4.2.2.2.2.2.2.cmml" xref="A1.T1.7.7.4.m4.2.2.2.2.2.2">times</csymbol><cn id="A1.T1.7.7.4.m4.1.1.1.1.1.1.cmml" type="float" xref="A1.T1.7.7.4.m4.1.1.1.1.1.1">1.83</cn><csymbol cd="latexml" id="A1.T1.7.7.4.m4.3.3.3.3.3.3.cmml" xref="A1.T1.7.7.4.m4.3.3.3.3.3.3">radian</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.7.7.4.m4.3c">1.83\text{\,}\mathrm{rad}</annotation><annotation encoding="application/x-llamapun" id="A1.T1.7.7.4.m4.3d">start_ARG 1.83 end_ARG start_ARG times end_ARG start_ARG roman_rad end_ARG</annotation></semantics></math> (<math alttext="105\text{\,}\mathrm{\SIUnitSymbolDegree}" class="ltx_Math" display="inline" id="A1.T1.8.8.5.m5.3"><semantics id="A1.T1.8.8.5.m5.3a"><mrow id="A1.T1.8.8.5.m5.3.3" xref="A1.T1.8.8.5.m5.3.3.cmml"><mn id="A1.T1.8.8.5.m5.1.1.1.1.1.1" xref="A1.T1.8.8.5.m5.1.1.1.1.1.1.cmml">105</mn><mtext id="A1.T1.8.8.5.m5.2.2.2.2.2.2" xref="A1.T1.8.8.5.m5.2.2.2.2.2.2.cmml"> </mtext><mi class="ltx_unit" id="A1.T1.8.8.5.m5.3.3.3.3.3.3" mathvariant="normal" xref="A1.T1.8.8.5.m5.3.3.3.3.3.3.cmml">°</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T1.8.8.5.m5.3b"><apply id="A1.T1.8.8.5.m5.3.3.cmml" xref="A1.T1.8.8.5.m5.3.3"><csymbol cd="latexml" id="A1.T1.8.8.5.m5.2.2.2.2.2.2.cmml" xref="A1.T1.8.8.5.m5.2.2.2.2.2.2">times</csymbol><cn id="A1.T1.8.8.5.m5.1.1.1.1.1.1.cmml" type="integer" xref="A1.T1.8.8.5.m5.1.1.1.1.1.1">105</cn><csymbol cd="latexml" id="A1.T1.8.8.5.m5.3.3.3.3.3.3.cmml" xref="A1.T1.8.8.5.m5.3.3.3.3.3.3">degree</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.8.8.5.m5.3c">105\text{\,}\mathrm{\SIUnitSymbolDegree}</annotation><annotation encoding="application/x-llamapun" id="A1.T1.8.8.5.m5.3d">start_ARG 105 end_ARG start_ARG times end_ARG start_ARG ° end_ARG</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="A1.T1.13.13">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T1.13.13.6">Knee Joint 1 Range</th>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T1.13.13.5">
<math alttext="-2.79\text{\,}\mathrm{rad}" class="ltx_Math" display="inline" id="A1.T1.9.9.1.m1.3"><semantics id="A1.T1.9.9.1.m1.3a"><mrow id="A1.T1.9.9.1.m1.3.3" xref="A1.T1.9.9.1.m1.3.3.cmml"><mrow id="A1.T1.9.9.1.m1.1.1.1.1.1.1.2" xref="A1.T1.9.9.1.m1.3.3.cmml"><mo id="A1.T1.9.9.1.m1.1.1.1.1.1.1.2a" xref="A1.T1.9.9.1.m1.1.1.1.1.1.1.1.cmml">−</mo><mn id="A1.T1.9.9.1.m1.1.1.1.1.1.1.2.2" xref="A1.T1.9.9.1.m1.1.1.1.1.1.1.1.cmml">2.79</mn></mrow><mtext id="A1.T1.9.9.1.m1.2.2.2.2.2.2" xref="A1.T1.9.9.1.m1.2.2.2.2.2.2.cmml"> </mtext><mi class="ltx_unit" id="A1.T1.9.9.1.m1.3.3.3.3.3.3" xref="A1.T1.9.9.1.m1.3.3.3.3.3.3.cmml">rad</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T1.9.9.1.m1.3b"><apply id="A1.T1.9.9.1.m1.3.3.cmml" xref="A1.T1.9.9.1.m1.3.3"><csymbol cd="latexml" id="A1.T1.9.9.1.m1.2.2.2.2.2.2.cmml" xref="A1.T1.9.9.1.m1.2.2.2.2.2.2">times</csymbol><cn id="A1.T1.9.9.1.m1.1.1.1.1.1.1.1.cmml" type="float" xref="A1.T1.9.9.1.m1.1.1.1.1.1.1.2a">-2.79</cn><csymbol cd="latexml" id="A1.T1.9.9.1.m1.3.3.3.3.3.3.cmml" xref="A1.T1.9.9.1.m1.3.3.3.3.3.3">radian</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.9.9.1.m1.3c">-2.79\text{\,}\mathrm{rad}</annotation><annotation encoding="application/x-llamapun" id="A1.T1.9.9.1.m1.3d">start_ARG - 2.79 end_ARG start_ARG times end_ARG start_ARG roman_rad end_ARG</annotation></semantics></math> (<math alttext="-160\text{\,}\mathrm{\SIUnitSymbolDegree}" class="ltx_Math" display="inline" id="A1.T1.10.10.2.m2.3"><semantics id="A1.T1.10.10.2.m2.3a"><mrow id="A1.T1.10.10.2.m2.3.3" xref="A1.T1.10.10.2.m2.3.3.cmml"><mrow id="A1.T1.10.10.2.m2.1.1.1.1.1.1.2" xref="A1.T1.10.10.2.m2.3.3.cmml"><mo id="A1.T1.10.10.2.m2.1.1.1.1.1.1.2a" xref="A1.T1.10.10.2.m2.1.1.1.1.1.1.1.cmml">−</mo><mn id="A1.T1.10.10.2.m2.1.1.1.1.1.1.2.2" xref="A1.T1.10.10.2.m2.1.1.1.1.1.1.1.cmml">160</mn></mrow><mtext id="A1.T1.10.10.2.m2.2.2.2.2.2.2" xref="A1.T1.10.10.2.m2.2.2.2.2.2.2.cmml"> </mtext><mi class="ltx_unit" id="A1.T1.10.10.2.m2.3.3.3.3.3.3" mathvariant="normal" xref="A1.T1.10.10.2.m2.3.3.3.3.3.3.cmml">°</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T1.10.10.2.m2.3b"><apply id="A1.T1.10.10.2.m2.3.3.cmml" xref="A1.T1.10.10.2.m2.3.3"><csymbol cd="latexml" id="A1.T1.10.10.2.m2.2.2.2.2.2.2.cmml" xref="A1.T1.10.10.2.m2.2.2.2.2.2.2">times</csymbol><cn id="A1.T1.10.10.2.m2.1.1.1.1.1.1.1.cmml" type="integer" xref="A1.T1.10.10.2.m2.1.1.1.1.1.1.2a">-160</cn><csymbol cd="latexml" id="A1.T1.10.10.2.m2.3.3.3.3.3.3.cmml" xref="A1.T1.10.10.2.m2.3.3.3.3.3.3">degree</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.10.10.2.m2.3c">-160\text{\,}\mathrm{\SIUnitSymbolDegree}</annotation><annotation encoding="application/x-llamapun" id="A1.T1.10.10.2.m2.3d">start_ARG - 160 end_ARG start_ARG times end_ARG start_ARG ° end_ARG</annotation></semantics></math>) <math alttext="\sim" class="ltx_Math" display="inline" id="A1.T1.11.11.3.m3.1"><semantics id="A1.T1.11.11.3.m3.1a"><mo id="A1.T1.11.11.3.m3.1.1" xref="A1.T1.11.11.3.m3.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="A1.T1.11.11.3.m3.1b"><csymbol cd="latexml" id="A1.T1.11.11.3.m3.1.1.cmml" xref="A1.T1.11.11.3.m3.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.11.11.3.m3.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="A1.T1.11.11.3.m3.1d">∼</annotation></semantics></math> <math alttext="2.53\text{\,}\mathrm{rad}" class="ltx_Math" display="inline" id="A1.T1.12.12.4.m4.3"><semantics id="A1.T1.12.12.4.m4.3a"><mrow id="A1.T1.12.12.4.m4.3.3" xref="A1.T1.12.12.4.m4.3.3.cmml"><mn id="A1.T1.12.12.4.m4.1.1.1.1.1.1" xref="A1.T1.12.12.4.m4.1.1.1.1.1.1.cmml">2.53</mn><mtext id="A1.T1.12.12.4.m4.2.2.2.2.2.2" xref="A1.T1.12.12.4.m4.2.2.2.2.2.2.cmml"> </mtext><mi class="ltx_unit" id="A1.T1.12.12.4.m4.3.3.3.3.3.3" xref="A1.T1.12.12.4.m4.3.3.3.3.3.3.cmml">rad</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T1.12.12.4.m4.3b"><apply id="A1.T1.12.12.4.m4.3.3.cmml" xref="A1.T1.12.12.4.m4.3.3"><csymbol cd="latexml" id="A1.T1.12.12.4.m4.2.2.2.2.2.2.cmml" xref="A1.T1.12.12.4.m4.2.2.2.2.2.2">times</csymbol><cn id="A1.T1.12.12.4.m4.1.1.1.1.1.1.cmml" type="float" xref="A1.T1.12.12.4.m4.1.1.1.1.1.1">2.53</cn><csymbol cd="latexml" id="A1.T1.12.12.4.m4.3.3.3.3.3.3.cmml" xref="A1.T1.12.12.4.m4.3.3.3.3.3.3">radian</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.12.12.4.m4.3c">2.53\text{\,}\mathrm{rad}</annotation><annotation encoding="application/x-llamapun" id="A1.T1.12.12.4.m4.3d">start_ARG 2.53 end_ARG start_ARG times end_ARG start_ARG roman_rad end_ARG</annotation></semantics></math> (<math alttext="145\text{\,}\mathrm{\SIUnitSymbolDegree}" class="ltx_Math" display="inline" id="A1.T1.13.13.5.m5.3"><semantics id="A1.T1.13.13.5.m5.3a"><mrow id="A1.T1.13.13.5.m5.3.3" xref="A1.T1.13.13.5.m5.3.3.cmml"><mn id="A1.T1.13.13.5.m5.1.1.1.1.1.1" xref="A1.T1.13.13.5.m5.1.1.1.1.1.1.cmml">145</mn><mtext id="A1.T1.13.13.5.m5.2.2.2.2.2.2" xref="A1.T1.13.13.5.m5.2.2.2.2.2.2.cmml"> </mtext><mi class="ltx_unit" id="A1.T1.13.13.5.m5.3.3.3.3.3.3" mathvariant="normal" xref="A1.T1.13.13.5.m5.3.3.3.3.3.3.cmml">°</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T1.13.13.5.m5.3b"><apply id="A1.T1.13.13.5.m5.3.3.cmml" xref="A1.T1.13.13.5.m5.3.3"><csymbol cd="latexml" id="A1.T1.13.13.5.m5.2.2.2.2.2.2.cmml" xref="A1.T1.13.13.5.m5.2.2.2.2.2.2">times</csymbol><cn id="A1.T1.13.13.5.m5.1.1.1.1.1.1.cmml" type="integer" xref="A1.T1.13.13.5.m5.1.1.1.1.1.1">145</cn><csymbol cd="latexml" id="A1.T1.13.13.5.m5.3.3.3.3.3.3.cmml" xref="A1.T1.13.13.5.m5.3.3.3.3.3.3">degree</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.13.13.5.m5.3c">145\text{\,}\mathrm{\SIUnitSymbolDegree}</annotation><annotation encoding="application/x-llamapun" id="A1.T1.13.13.5.m5.3d">start_ARG 145 end_ARG start_ARG times end_ARG start_ARG ° end_ARG</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="A1.T1.18.18">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T1.18.18.6">Knee Joint 2 Range</th>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T1.18.18.5">
<math alttext="-1.13\text{\,}\mathrm{rad}" class="ltx_Math" display="inline" id="A1.T1.14.14.1.m1.3"><semantics id="A1.T1.14.14.1.m1.3a"><mrow id="A1.T1.14.14.1.m1.3.3" xref="A1.T1.14.14.1.m1.3.3.cmml"><mrow id="A1.T1.14.14.1.m1.1.1.1.1.1.1.2" xref="A1.T1.14.14.1.m1.3.3.cmml"><mo id="A1.T1.14.14.1.m1.1.1.1.1.1.1.2a" xref="A1.T1.14.14.1.m1.1.1.1.1.1.1.1.cmml">−</mo><mn id="A1.T1.14.14.1.m1.1.1.1.1.1.1.2.2" xref="A1.T1.14.14.1.m1.1.1.1.1.1.1.1.cmml">1.13</mn></mrow><mtext id="A1.T1.14.14.1.m1.2.2.2.2.2.2" xref="A1.T1.14.14.1.m1.2.2.2.2.2.2.cmml"> </mtext><mi class="ltx_unit" id="A1.T1.14.14.1.m1.3.3.3.3.3.3" xref="A1.T1.14.14.1.m1.3.3.3.3.3.3.cmml">rad</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T1.14.14.1.m1.3b"><apply id="A1.T1.14.14.1.m1.3.3.cmml" xref="A1.T1.14.14.1.m1.3.3"><csymbol cd="latexml" id="A1.T1.14.14.1.m1.2.2.2.2.2.2.cmml" xref="A1.T1.14.14.1.m1.2.2.2.2.2.2">times</csymbol><cn id="A1.T1.14.14.1.m1.1.1.1.1.1.1.1.cmml" type="float" xref="A1.T1.14.14.1.m1.1.1.1.1.1.1.2a">-1.13</cn><csymbol cd="latexml" id="A1.T1.14.14.1.m1.3.3.3.3.3.3.cmml" xref="A1.T1.14.14.1.m1.3.3.3.3.3.3">radian</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.14.14.1.m1.3c">-1.13\text{\,}\mathrm{rad}</annotation><annotation encoding="application/x-llamapun" id="A1.T1.14.14.1.m1.3d">start_ARG - 1.13 end_ARG start_ARG times end_ARG start_ARG roman_rad end_ARG</annotation></semantics></math> (<math alttext="-65\text{\,}\mathrm{\SIUnitSymbolDegree}" class="ltx_Math" display="inline" id="A1.T1.15.15.2.m2.3"><semantics id="A1.T1.15.15.2.m2.3a"><mrow id="A1.T1.15.15.2.m2.3.3" xref="A1.T1.15.15.2.m2.3.3.cmml"><mrow id="A1.T1.15.15.2.m2.1.1.1.1.1.1.2" xref="A1.T1.15.15.2.m2.3.3.cmml"><mo id="A1.T1.15.15.2.m2.1.1.1.1.1.1.2a" xref="A1.T1.15.15.2.m2.1.1.1.1.1.1.1.cmml">−</mo><mn id="A1.T1.15.15.2.m2.1.1.1.1.1.1.2.2" xref="A1.T1.15.15.2.m2.1.1.1.1.1.1.1.cmml">65</mn></mrow><mtext id="A1.T1.15.15.2.m2.2.2.2.2.2.2" xref="A1.T1.15.15.2.m2.2.2.2.2.2.2.cmml"> </mtext><mi class="ltx_unit" id="A1.T1.15.15.2.m2.3.3.3.3.3.3" mathvariant="normal" xref="A1.T1.15.15.2.m2.3.3.3.3.3.3.cmml">°</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T1.15.15.2.m2.3b"><apply id="A1.T1.15.15.2.m2.3.3.cmml" xref="A1.T1.15.15.2.m2.3.3"><csymbol cd="latexml" id="A1.T1.15.15.2.m2.2.2.2.2.2.2.cmml" xref="A1.T1.15.15.2.m2.2.2.2.2.2.2">times</csymbol><cn id="A1.T1.15.15.2.m2.1.1.1.1.1.1.1.cmml" type="integer" xref="A1.T1.15.15.2.m2.1.1.1.1.1.1.2a">-65</cn><csymbol cd="latexml" id="A1.T1.15.15.2.m2.3.3.3.3.3.3.cmml" xref="A1.T1.15.15.2.m2.3.3.3.3.3.3">degree</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.15.15.2.m2.3c">-65\text{\,}\mathrm{\SIUnitSymbolDegree}</annotation><annotation encoding="application/x-llamapun" id="A1.T1.15.15.2.m2.3d">start_ARG - 65 end_ARG start_ARG times end_ARG start_ARG ° end_ARG</annotation></semantics></math>) <math alttext="\sim" class="ltx_Math" display="inline" id="A1.T1.16.16.3.m3.1"><semantics id="A1.T1.16.16.3.m3.1a"><mo id="A1.T1.16.16.3.m3.1.1" xref="A1.T1.16.16.3.m3.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="A1.T1.16.16.3.m3.1b"><csymbol cd="latexml" id="A1.T1.16.16.3.m3.1.1.cmml" xref="A1.T1.16.16.3.m3.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.16.16.3.m3.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="A1.T1.16.16.3.m3.1d">∼</annotation></semantics></math> <math alttext="1.83\text{\,}\mathrm{rad}" class="ltx_Math" display="inline" id="A1.T1.17.17.4.m4.3"><semantics id="A1.T1.17.17.4.m4.3a"><mrow id="A1.T1.17.17.4.m4.3.3" xref="A1.T1.17.17.4.m4.3.3.cmml"><mn id="A1.T1.17.17.4.m4.1.1.1.1.1.1" xref="A1.T1.17.17.4.m4.1.1.1.1.1.1.cmml">1.83</mn><mtext id="A1.T1.17.17.4.m4.2.2.2.2.2.2" xref="A1.T1.17.17.4.m4.2.2.2.2.2.2.cmml"> </mtext><mi class="ltx_unit" id="A1.T1.17.17.4.m4.3.3.3.3.3.3" xref="A1.T1.17.17.4.m4.3.3.3.3.3.3.cmml">rad</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T1.17.17.4.m4.3b"><apply id="A1.T1.17.17.4.m4.3.3.cmml" xref="A1.T1.17.17.4.m4.3.3"><csymbol cd="latexml" id="A1.T1.17.17.4.m4.2.2.2.2.2.2.cmml" xref="A1.T1.17.17.4.m4.2.2.2.2.2.2">times</csymbol><cn id="A1.T1.17.17.4.m4.1.1.1.1.1.1.cmml" type="float" xref="A1.T1.17.17.4.m4.1.1.1.1.1.1">1.83</cn><csymbol cd="latexml" id="A1.T1.17.17.4.m4.3.3.3.3.3.3.cmml" xref="A1.T1.17.17.4.m4.3.3.3.3.3.3">radian</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.17.17.4.m4.3c">1.83\text{\,}\mathrm{rad}</annotation><annotation encoding="application/x-llamapun" id="A1.T1.17.17.4.m4.3d">start_ARG 1.83 end_ARG start_ARG times end_ARG start_ARG roman_rad end_ARG</annotation></semantics></math> (<math alttext="105\text{\,}\mathrm{\SIUnitSymbolDegree}" class="ltx_Math" display="inline" id="A1.T1.18.18.5.m5.3"><semantics id="A1.T1.18.18.5.m5.3a"><mrow id="A1.T1.18.18.5.m5.3.3" xref="A1.T1.18.18.5.m5.3.3.cmml"><mn id="A1.T1.18.18.5.m5.1.1.1.1.1.1" xref="A1.T1.18.18.5.m5.1.1.1.1.1.1.cmml">105</mn><mtext id="A1.T1.18.18.5.m5.2.2.2.2.2.2" xref="A1.T1.18.18.5.m5.2.2.2.2.2.2.cmml"> </mtext><mi class="ltx_unit" id="A1.T1.18.18.5.m5.3.3.3.3.3.3" mathvariant="normal" xref="A1.T1.18.18.5.m5.3.3.3.3.3.3.cmml">°</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T1.18.18.5.m5.3b"><apply id="A1.T1.18.18.5.m5.3.3.cmml" xref="A1.T1.18.18.5.m5.3.3"><csymbol cd="latexml" id="A1.T1.18.18.5.m5.2.2.2.2.2.2.cmml" xref="A1.T1.18.18.5.m5.2.2.2.2.2.2">times</csymbol><cn id="A1.T1.18.18.5.m5.1.1.1.1.1.1.cmml" type="integer" xref="A1.T1.18.18.5.m5.1.1.1.1.1.1">105</cn><csymbol cd="latexml" id="A1.T1.18.18.5.m5.3.3.3.3.3.3.cmml" xref="A1.T1.18.18.5.m5.3.3.3.3.3.3">degree</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.18.18.5.m5.3c">105\text{\,}\mathrm{\SIUnitSymbolDegree}</annotation><annotation encoding="application/x-llamapun" id="A1.T1.18.18.5.m5.3d">start_ARG 105 end_ARG start_ARG times end_ARG start_ARG ° end_ARG</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="A1.T1.19.19">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T1.19.19.2">Rated Motor Torque</th>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T1.19.19.1"><math alttext="108\text{\,}\mathrm{N}\text{\,}\mathrm{m}" class="ltx_Math" display="inline" id="A1.T1.19.19.1.m1.3"><semantics id="A1.T1.19.19.1.m1.3a"><mrow id="A1.T1.19.19.1.m1.3.3" xref="A1.T1.19.19.1.m1.3.3.cmml"><mn id="A1.T1.19.19.1.m1.1.1.1.1.1.1" xref="A1.T1.19.19.1.m1.1.1.1.1.1.1.cmml">108</mn><mtext id="A1.T1.19.19.1.m1.2.2.2.2.2.2" xref="A1.T1.19.19.1.m1.2.2.2.2.2.2.cmml"> </mtext><mrow id="A1.T1.19.19.1.m1.3.3.3.3.3.3" xref="A1.T1.19.19.1.m1.3.3.3.3.3.3.cmml"><mi class="ltx_unit" id="A1.T1.19.19.1.m1.3.3.3.3.3.3.1.1.1.1.1.1" mathvariant="normal" xref="A1.T1.19.19.1.m1.3.3.3.3.3.3.1.1.1.1.1.1.cmml">N</mi><mtext id="A1.T1.19.19.1.m1.3.3.3.3.3.3.2.2.2.2.2.2" xref="A1.T1.19.19.1.m1.3.3.3.3.3.3.2.2.2.2.2.2.cmml"> </mtext><mi class="ltx_unit" id="A1.T1.19.19.1.m1.3.3.3.3.3.3.3.3.3.3.3.3" mathvariant="normal" xref="A1.T1.19.19.1.m1.3.3.3.3.3.3.3.3.3.3.3.3.cmml">m</mi></mrow></mrow><annotation-xml encoding="MathML-Content" id="A1.T1.19.19.1.m1.3b"><apply id="A1.T1.19.19.1.m1.3.3.cmml" xref="A1.T1.19.19.1.m1.3.3"><csymbol cd="latexml" id="A1.T1.19.19.1.m1.2.2.2.2.2.2.cmml" xref="A1.T1.19.19.1.m1.2.2.2.2.2.2">times</csymbol><cn id="A1.T1.19.19.1.m1.1.1.1.1.1.1.cmml" type="integer" xref="A1.T1.19.19.1.m1.1.1.1.1.1.1">108</cn><apply id="A1.T1.19.19.1.m1.3.3.3.3.3.3.cmml" xref="A1.T1.19.19.1.m1.3.3.3.3.3.3"><csymbol cd="latexml" id="A1.T1.19.19.1.m1.3.3.3.3.3.3.2.2.2.2.2.2.cmml" xref="A1.T1.19.19.1.m1.3.3.3.3.3.3.2.2.2.2.2.2">times</csymbol><csymbol cd="latexml" id="A1.T1.19.19.1.m1.3.3.3.3.3.3.1.1.1.1.1.1.cmml" xref="A1.T1.19.19.1.m1.3.3.3.3.3.3.1.1.1.1.1.1">newton</csymbol><csymbol cd="latexml" id="A1.T1.19.19.1.m1.3.3.3.3.3.3.3.3.3.3.3.3.cmml" xref="A1.T1.19.19.1.m1.3.3.3.3.3.3.3.3.3.3.3.3">meter</csymbol></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.19.19.1.m1.3c">108\text{\,}\mathrm{N}\text{\,}\mathrm{m}</annotation><annotation encoding="application/x-llamapun" id="A1.T1.19.19.1.m1.3d">start_ARG 108 end_ARG start_ARG times end_ARG start_ARG start_ARG roman_N end_ARG start_ARG times end_ARG start_ARG roman_m end_ARG end_ARG</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T1.20.20">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="A1.T1.20.20.2">Maximum Motor Torque</th>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T1.20.20.1"><math alttext="304\text{\,}\mathrm{N}\text{\,}\mathrm{m}" class="ltx_Math" display="inline" id="A1.T1.20.20.1.m1.3"><semantics id="A1.T1.20.20.1.m1.3a"><mrow id="A1.T1.20.20.1.m1.3.3" xref="A1.T1.20.20.1.m1.3.3.cmml"><mn id="A1.T1.20.20.1.m1.1.1.1.1.1.1" xref="A1.T1.20.20.1.m1.1.1.1.1.1.1.cmml">304</mn><mtext id="A1.T1.20.20.1.m1.2.2.2.2.2.2" xref="A1.T1.20.20.1.m1.2.2.2.2.2.2.cmml"> </mtext><mrow id="A1.T1.20.20.1.m1.3.3.3.3.3.3" xref="A1.T1.20.20.1.m1.3.3.3.3.3.3.cmml"><mi class="ltx_unit" id="A1.T1.20.20.1.m1.3.3.3.3.3.3.1.1.1.1.1.1" mathvariant="normal" xref="A1.T1.20.20.1.m1.3.3.3.3.3.3.1.1.1.1.1.1.cmml">N</mi><mtext id="A1.T1.20.20.1.m1.3.3.3.3.3.3.2.2.2.2.2.2" xref="A1.T1.20.20.1.m1.3.3.3.3.3.3.2.2.2.2.2.2.cmml"> </mtext><mi class="ltx_unit" id="A1.T1.20.20.1.m1.3.3.3.3.3.3.3.3.3.3.3.3" mathvariant="normal" xref="A1.T1.20.20.1.m1.3.3.3.3.3.3.3.3.3.3.3.3.cmml">m</mi></mrow></mrow><annotation-xml encoding="MathML-Content" id="A1.T1.20.20.1.m1.3b"><apply id="A1.T1.20.20.1.m1.3.3.cmml" xref="A1.T1.20.20.1.m1.3.3"><csymbol cd="latexml" id="A1.T1.20.20.1.m1.2.2.2.2.2.2.cmml" xref="A1.T1.20.20.1.m1.2.2.2.2.2.2">times</csymbol><cn id="A1.T1.20.20.1.m1.1.1.1.1.1.1.cmml" type="integer" xref="A1.T1.20.20.1.m1.1.1.1.1.1.1">304</cn><apply id="A1.T1.20.20.1.m1.3.3.3.3.3.3.cmml" xref="A1.T1.20.20.1.m1.3.3.3.3.3.3"><csymbol cd="latexml" id="A1.T1.20.20.1.m1.3.3.3.3.3.3.2.2.2.2.2.2.cmml" xref="A1.T1.20.20.1.m1.3.3.3.3.3.3.2.2.2.2.2.2">times</csymbol><csymbol cd="latexml" id="A1.T1.20.20.1.m1.3.3.3.3.3.3.1.1.1.1.1.1.cmml" xref="A1.T1.20.20.1.m1.3.3.3.3.3.3.1.1.1.1.1.1">newton</csymbol><csymbol cd="latexml" id="A1.T1.20.20.1.m1.3.3.3.3.3.3.3.3.3.3.3.3.cmml" xref="A1.T1.20.20.1.m1.3.3.3.3.3.3.3.3.3.3.3.3">meter</csymbol></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.20.20.1.m1.3c">304\text{\,}\mathrm{N}\text{\,}\mathrm{m}</annotation><annotation encoding="application/x-llamapun" id="A1.T1.20.20.1.m1.3d">start_ARG 304 end_ARG start_ARG times end_ARG start_ARG start_ARG roman_N end_ARG start_ARG times end_ARG start_ARG roman_m end_ARG end_ARG</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used for configuring the transformer decoder within the WB-VIMA model.  The transformer decoder is a key component of the model responsible for processing and integrating information from multiple sensory modalities (vision and proprioception) before generating predictions for the robot's actions. The hyperparameters control various aspects of the transformer's architecture and training process, influencing its ability to learn effective and coordinated whole-body movements.
> <details>
> <summary>read the caption</summary>
> TABLE A.VI: Hyperparameters for the transformer decoder used in multi-modal observation attention.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T2.12">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T2.12.13.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T2.12.13.1.1"><span class="ltx_text ltx_font_bold" id="A1.T2.12.13.1.1.1">Parameter</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T2.12.13.1.2"><span class="ltx_text ltx_font_bold" id="A1.T2.12.13.1.2.1">Value</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A1.T2.2.2.3">Forward Velocity Limit</th>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T2.2.2.2">
<math alttext="\pm" class="ltx_Math" display="inline" id="A1.T2.1.1.1.m1.1"><semantics id="A1.T2.1.1.1.m1.1a"><mo id="A1.T2.1.1.1.m1.1.1" xref="A1.T2.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A1.T2.1.1.1.m1.1b"><csymbol cd="latexml" id="A1.T2.1.1.1.m1.1.1.cmml" xref="A1.T2.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A1.T2.1.1.1.m1.1d">±</annotation></semantics></math> <math alttext="1.5\text{\,}\mathrm{m}\text{\,}{\mathrm{s}}^{-1}" class="ltx_Math" display="inline" id="A1.T2.2.2.2.m2.3"><semantics id="A1.T2.2.2.2.m2.3a"><mrow id="A1.T2.2.2.2.m2.3.3" xref="A1.T2.2.2.2.m2.3.3.cmml"><mn id="A1.T2.2.2.2.m2.1.1.1.1.1.1" xref="A1.T2.2.2.2.m2.1.1.1.1.1.1.cmml">1.5</mn><mtext id="A1.T2.2.2.2.m2.2.2.2.2.2.2" xref="A1.T2.2.2.2.m2.2.2.2.2.2.2.cmml"> </mtext><mrow id="A1.T2.2.2.2.m2.3.3.3.3.3.3" xref="A1.T2.2.2.2.m2.3.3.3.3.3.3.cmml"><mi class="ltx_unit" id="A1.T2.2.2.2.m2.3.3.3.3.3.3.1.1.1.1.1.1" mathvariant="normal" xref="A1.T2.2.2.2.m2.3.3.3.3.3.3.1.1.1.1.1.1.cmml">m</mi><mtext id="A1.T2.2.2.2.m2.3.3.3.3.3.3.2.2.2.2.2.2" xref="A1.T2.2.2.2.m2.3.3.3.3.3.3.2.2.2.2.2.2.cmml"> </mtext><msup id="A1.T2.2.2.2.m2.3.3.3.3.3.3.3.3.3.3.3.3" xref="A1.T2.2.2.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.cmml"><mi class="ltx_unit" id="A1.T2.2.2.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.2" mathvariant="normal" xref="A1.T2.2.2.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.2.cmml">s</mi><mrow id="A1.T2.2.2.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3" xref="A1.T2.2.2.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.cmml"><mo id="A1.T2.2.2.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3a" xref="A1.T2.2.2.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.cmml">−</mo><mn id="A1.T2.2.2.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.2" xref="A1.T2.2.2.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.2.cmml">1</mn></mrow></msup></mrow></mrow><annotation-xml encoding="MathML-Content" id="A1.T2.2.2.2.m2.3b"><apply id="A1.T2.2.2.2.m2.3.3.cmml" xref="A1.T2.2.2.2.m2.3.3"><csymbol cd="latexml" id="A1.T2.2.2.2.m2.2.2.2.2.2.2.cmml" xref="A1.T2.2.2.2.m2.2.2.2.2.2.2">times</csymbol><cn id="A1.T2.2.2.2.m2.1.1.1.1.1.1.cmml" type="float" xref="A1.T2.2.2.2.m2.1.1.1.1.1.1">1.5</cn><apply id="A1.T2.2.2.2.m2.3.3.3.3.3.3.cmml" xref="A1.T2.2.2.2.m2.3.3.3.3.3.3"><csymbol cd="latexml" id="A1.T2.2.2.2.m2.3.3.3.3.3.3.2.2.2.2.2.2.cmml" xref="A1.T2.2.2.2.m2.3.3.3.3.3.3.2.2.2.2.2.2">times</csymbol><csymbol cd="latexml" id="A1.T2.2.2.2.m2.3.3.3.3.3.3.1.1.1.1.1.1.cmml" xref="A1.T2.2.2.2.m2.3.3.3.3.3.3.1.1.1.1.1.1">meter</csymbol><apply id="A1.T2.2.2.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.cmml" xref="A1.T2.2.2.2.m2.3.3.3.3.3.3.3.3.3.3.3.3"><power id="A1.T2.2.2.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.1.cmml" xref="A1.T2.2.2.2.m2.3.3.3.3.3.3.3.3.3.3.3.3"></power><csymbol cd="latexml" id="A1.T2.2.2.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.2.cmml" xref="A1.T2.2.2.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.2">second</csymbol><apply id="A1.T2.2.2.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.cmml" xref="A1.T2.2.2.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3"><minus id="A1.T2.2.2.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.1.cmml" xref="A1.T2.2.2.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3"></minus><cn id="A1.T2.2.2.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.2.cmml" type="integer" xref="A1.T2.2.2.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.2">1</cn></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.2.2.2.m2.3c">1.5\text{\,}\mathrm{m}\text{\,}{\mathrm{s}}^{-1}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.2.2.2.m2.3d">start_ARG 1.5 end_ARG start_ARG times end_ARG start_ARG start_ARG roman_m end_ARG start_ARG times end_ARG start_ARG power start_ARG roman_s end_ARG start_ARG - 1 end_ARG end_ARG end_ARG</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T2.4.4.3">Lateral Velocity Limit</th>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T2.4.4.2">
<math alttext="\pm" class="ltx_Math" display="inline" id="A1.T2.3.3.1.m1.1"><semantics id="A1.T2.3.3.1.m1.1a"><mo id="A1.T2.3.3.1.m1.1.1" xref="A1.T2.3.3.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A1.T2.3.3.1.m1.1b"><csymbol cd="latexml" id="A1.T2.3.3.1.m1.1.1.cmml" xref="A1.T2.3.3.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.3.3.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A1.T2.3.3.1.m1.1d">±</annotation></semantics></math> <math alttext="1.5\text{\,}\mathrm{m}\text{\,}{\mathrm{s}}^{-1}" class="ltx_Math" display="inline" id="A1.T2.4.4.2.m2.3"><semantics id="A1.T2.4.4.2.m2.3a"><mrow id="A1.T2.4.4.2.m2.3.3" xref="A1.T2.4.4.2.m2.3.3.cmml"><mn id="A1.T2.4.4.2.m2.1.1.1.1.1.1" xref="A1.T2.4.4.2.m2.1.1.1.1.1.1.cmml">1.5</mn><mtext id="A1.T2.4.4.2.m2.2.2.2.2.2.2" xref="A1.T2.4.4.2.m2.2.2.2.2.2.2.cmml"> </mtext><mrow id="A1.T2.4.4.2.m2.3.3.3.3.3.3" xref="A1.T2.4.4.2.m2.3.3.3.3.3.3.cmml"><mi class="ltx_unit" id="A1.T2.4.4.2.m2.3.3.3.3.3.3.1.1.1.1.1.1" mathvariant="normal" xref="A1.T2.4.4.2.m2.3.3.3.3.3.3.1.1.1.1.1.1.cmml">m</mi><mtext id="A1.T2.4.4.2.m2.3.3.3.3.3.3.2.2.2.2.2.2" xref="A1.T2.4.4.2.m2.3.3.3.3.3.3.2.2.2.2.2.2.cmml"> </mtext><msup id="A1.T2.4.4.2.m2.3.3.3.3.3.3.3.3.3.3.3.3" xref="A1.T2.4.4.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.cmml"><mi class="ltx_unit" id="A1.T2.4.4.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.2" mathvariant="normal" xref="A1.T2.4.4.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.2.cmml">s</mi><mrow id="A1.T2.4.4.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3" xref="A1.T2.4.4.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.cmml"><mo id="A1.T2.4.4.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3a" xref="A1.T2.4.4.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.cmml">−</mo><mn id="A1.T2.4.4.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.2" xref="A1.T2.4.4.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.2.cmml">1</mn></mrow></msup></mrow></mrow><annotation-xml encoding="MathML-Content" id="A1.T2.4.4.2.m2.3b"><apply id="A1.T2.4.4.2.m2.3.3.cmml" xref="A1.T2.4.4.2.m2.3.3"><csymbol cd="latexml" id="A1.T2.4.4.2.m2.2.2.2.2.2.2.cmml" xref="A1.T2.4.4.2.m2.2.2.2.2.2.2">times</csymbol><cn id="A1.T2.4.4.2.m2.1.1.1.1.1.1.cmml" type="float" xref="A1.T2.4.4.2.m2.1.1.1.1.1.1">1.5</cn><apply id="A1.T2.4.4.2.m2.3.3.3.3.3.3.cmml" xref="A1.T2.4.4.2.m2.3.3.3.3.3.3"><csymbol cd="latexml" id="A1.T2.4.4.2.m2.3.3.3.3.3.3.2.2.2.2.2.2.cmml" xref="A1.T2.4.4.2.m2.3.3.3.3.3.3.2.2.2.2.2.2">times</csymbol><csymbol cd="latexml" id="A1.T2.4.4.2.m2.3.3.3.3.3.3.1.1.1.1.1.1.cmml" xref="A1.T2.4.4.2.m2.3.3.3.3.3.3.1.1.1.1.1.1">meter</csymbol><apply id="A1.T2.4.4.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.cmml" xref="A1.T2.4.4.2.m2.3.3.3.3.3.3.3.3.3.3.3.3"><power id="A1.T2.4.4.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.1.cmml" xref="A1.T2.4.4.2.m2.3.3.3.3.3.3.3.3.3.3.3.3"></power><csymbol cd="latexml" id="A1.T2.4.4.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.2.cmml" xref="A1.T2.4.4.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.2">second</csymbol><apply id="A1.T2.4.4.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.cmml" xref="A1.T2.4.4.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3"><minus id="A1.T2.4.4.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.1.cmml" xref="A1.T2.4.4.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3"></minus><cn id="A1.T2.4.4.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.2.cmml" type="integer" xref="A1.T2.4.4.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.2">1</cn></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.4.4.2.m2.3c">1.5\text{\,}\mathrm{m}\text{\,}{\mathrm{s}}^{-1}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.4.4.2.m2.3d">start_ARG 1.5 end_ARG start_ARG times end_ARG start_ARG start_ARG roman_m end_ARG start_ARG times end_ARG start_ARG power start_ARG roman_s end_ARG start_ARG - 1 end_ARG end_ARG end_ARG</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T2.6.6.3">Yaw Rotation Velocity Limit</th>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T2.6.6.2">
<math alttext="\pm" class="ltx_Math" display="inline" id="A1.T2.5.5.1.m1.1"><semantics id="A1.T2.5.5.1.m1.1a"><mo id="A1.T2.5.5.1.m1.1.1" xref="A1.T2.5.5.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A1.T2.5.5.1.m1.1b"><csymbol cd="latexml" id="A1.T2.5.5.1.m1.1.1.cmml" xref="A1.T2.5.5.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.5.5.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A1.T2.5.5.1.m1.1d">±</annotation></semantics></math> <math alttext="3\text{\,}\mathrm{rad}\text{\,}{\mathrm{s}}^{-1}" class="ltx_Math" display="inline" id="A1.T2.6.6.2.m2.3"><semantics id="A1.T2.6.6.2.m2.3a"><mrow id="A1.T2.6.6.2.m2.3.3" xref="A1.T2.6.6.2.m2.3.3.cmml"><mn id="A1.T2.6.6.2.m2.1.1.1.1.1.1" xref="A1.T2.6.6.2.m2.1.1.1.1.1.1.cmml">3</mn><mtext id="A1.T2.6.6.2.m2.2.2.2.2.2.2" xref="A1.T2.6.6.2.m2.2.2.2.2.2.2.cmml"> </mtext><mrow id="A1.T2.6.6.2.m2.3.3.3.3.3.3" xref="A1.T2.6.6.2.m2.3.3.3.3.3.3.cmml"><mi class="ltx_unit" id="A1.T2.6.6.2.m2.3.3.3.3.3.3.1.1.1.1.1.1" xref="A1.T2.6.6.2.m2.3.3.3.3.3.3.1.1.1.1.1.1.cmml">rad</mi><mtext id="A1.T2.6.6.2.m2.3.3.3.3.3.3.2.2.2.2.2.2" xref="A1.T2.6.6.2.m2.3.3.3.3.3.3.2.2.2.2.2.2.cmml"> </mtext><msup id="A1.T2.6.6.2.m2.3.3.3.3.3.3.3.3.3.3.3.3" xref="A1.T2.6.6.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.cmml"><mi class="ltx_unit" id="A1.T2.6.6.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.2" mathvariant="normal" xref="A1.T2.6.6.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.2.cmml">s</mi><mrow id="A1.T2.6.6.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3" xref="A1.T2.6.6.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.cmml"><mo id="A1.T2.6.6.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3a" xref="A1.T2.6.6.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.cmml">−</mo><mn id="A1.T2.6.6.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.2" xref="A1.T2.6.6.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.2.cmml">1</mn></mrow></msup></mrow></mrow><annotation-xml encoding="MathML-Content" id="A1.T2.6.6.2.m2.3b"><apply id="A1.T2.6.6.2.m2.3.3.cmml" xref="A1.T2.6.6.2.m2.3.3"><csymbol cd="latexml" id="A1.T2.6.6.2.m2.2.2.2.2.2.2.cmml" xref="A1.T2.6.6.2.m2.2.2.2.2.2.2">times</csymbol><cn id="A1.T2.6.6.2.m2.1.1.1.1.1.1.cmml" type="integer" xref="A1.T2.6.6.2.m2.1.1.1.1.1.1">3</cn><apply id="A1.T2.6.6.2.m2.3.3.3.3.3.3.cmml" xref="A1.T2.6.6.2.m2.3.3.3.3.3.3"><csymbol cd="latexml" id="A1.T2.6.6.2.m2.3.3.3.3.3.3.2.2.2.2.2.2.cmml" xref="A1.T2.6.6.2.m2.3.3.3.3.3.3.2.2.2.2.2.2">times</csymbol><csymbol cd="latexml" id="A1.T2.6.6.2.m2.3.3.3.3.3.3.1.1.1.1.1.1.cmml" xref="A1.T2.6.6.2.m2.3.3.3.3.3.3.1.1.1.1.1.1">radian</csymbol><apply id="A1.T2.6.6.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.cmml" xref="A1.T2.6.6.2.m2.3.3.3.3.3.3.3.3.3.3.3.3"><power id="A1.T2.6.6.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.1.cmml" xref="A1.T2.6.6.2.m2.3.3.3.3.3.3.3.3.3.3.3.3"></power><csymbol cd="latexml" id="A1.T2.6.6.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.2.cmml" xref="A1.T2.6.6.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.2">second</csymbol><apply id="A1.T2.6.6.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.cmml" xref="A1.T2.6.6.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3"><minus id="A1.T2.6.6.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.1.cmml" xref="A1.T2.6.6.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3"></minus><cn id="A1.T2.6.6.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.2.cmml" type="integer" xref="A1.T2.6.6.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.2">1</cn></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.6.6.2.m2.3c">3\text{\,}\mathrm{rad}\text{\,}{\mathrm{s}}^{-1}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.6.6.2.m2.3d">start_ARG 3 end_ARG start_ARG times end_ARG start_ARG start_ARG roman_rad end_ARG start_ARG times end_ARG start_ARG power start_ARG roman_s end_ARG start_ARG - 1 end_ARG end_ARG end_ARG</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T2.8.8.3">Forward Acceleration Limit</th>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T2.8.8.2">
<math alttext="\pm" class="ltx_Math" display="inline" id="A1.T2.7.7.1.m1.1"><semantics id="A1.T2.7.7.1.m1.1a"><mo id="A1.T2.7.7.1.m1.1.1" xref="A1.T2.7.7.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A1.T2.7.7.1.m1.1b"><csymbol cd="latexml" id="A1.T2.7.7.1.m1.1.1.cmml" xref="A1.T2.7.7.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.7.7.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A1.T2.7.7.1.m1.1d">±</annotation></semantics></math> <math alttext="2.5\text{\,}\mathrm{m}\text{\,}{\mathrm{s}}^{-2}" class="ltx_Math" display="inline" id="A1.T2.8.8.2.m2.3"><semantics id="A1.T2.8.8.2.m2.3a"><mrow id="A1.T2.8.8.2.m2.3.3" xref="A1.T2.8.8.2.m2.3.3.cmml"><mn id="A1.T2.8.8.2.m2.1.1.1.1.1.1" xref="A1.T2.8.8.2.m2.1.1.1.1.1.1.cmml">2.5</mn><mtext id="A1.T2.8.8.2.m2.2.2.2.2.2.2" xref="A1.T2.8.8.2.m2.2.2.2.2.2.2.cmml"> </mtext><mrow id="A1.T2.8.8.2.m2.3.3.3.3.3.3" xref="A1.T2.8.8.2.m2.3.3.3.3.3.3.cmml"><mi class="ltx_unit" id="A1.T2.8.8.2.m2.3.3.3.3.3.3.1.1.1.1.1.1" mathvariant="normal" xref="A1.T2.8.8.2.m2.3.3.3.3.3.3.1.1.1.1.1.1.cmml">m</mi><mtext id="A1.T2.8.8.2.m2.3.3.3.3.3.3.2.2.2.2.2.2" xref="A1.T2.8.8.2.m2.3.3.3.3.3.3.2.2.2.2.2.2.cmml"> </mtext><msup id="A1.T2.8.8.2.m2.3.3.3.3.3.3.3.3.3.3.3.3" xref="A1.T2.8.8.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.cmml"><mi class="ltx_unit" id="A1.T2.8.8.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.2" mathvariant="normal" xref="A1.T2.8.8.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.2.cmml">s</mi><mrow id="A1.T2.8.8.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3" xref="A1.T2.8.8.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.cmml"><mo id="A1.T2.8.8.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3a" xref="A1.T2.8.8.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.cmml">−</mo><mn id="A1.T2.8.8.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.2" xref="A1.T2.8.8.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.2.cmml">2</mn></mrow></msup></mrow></mrow><annotation-xml encoding="MathML-Content" id="A1.T2.8.8.2.m2.3b"><apply id="A1.T2.8.8.2.m2.3.3.cmml" xref="A1.T2.8.8.2.m2.3.3"><csymbol cd="latexml" id="A1.T2.8.8.2.m2.2.2.2.2.2.2.cmml" xref="A1.T2.8.8.2.m2.2.2.2.2.2.2">times</csymbol><cn id="A1.T2.8.8.2.m2.1.1.1.1.1.1.cmml" type="float" xref="A1.T2.8.8.2.m2.1.1.1.1.1.1">2.5</cn><apply id="A1.T2.8.8.2.m2.3.3.3.3.3.3.cmml" xref="A1.T2.8.8.2.m2.3.3.3.3.3.3"><csymbol cd="latexml" id="A1.T2.8.8.2.m2.3.3.3.3.3.3.2.2.2.2.2.2.cmml" xref="A1.T2.8.8.2.m2.3.3.3.3.3.3.2.2.2.2.2.2">times</csymbol><csymbol cd="latexml" id="A1.T2.8.8.2.m2.3.3.3.3.3.3.1.1.1.1.1.1.cmml" xref="A1.T2.8.8.2.m2.3.3.3.3.3.3.1.1.1.1.1.1">meter</csymbol><apply id="A1.T2.8.8.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.cmml" xref="A1.T2.8.8.2.m2.3.3.3.3.3.3.3.3.3.3.3.3"><power id="A1.T2.8.8.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.1.cmml" xref="A1.T2.8.8.2.m2.3.3.3.3.3.3.3.3.3.3.3.3"></power><csymbol cd="latexml" id="A1.T2.8.8.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.2.cmml" xref="A1.T2.8.8.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.2">second</csymbol><apply id="A1.T2.8.8.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.cmml" xref="A1.T2.8.8.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3"><minus id="A1.T2.8.8.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.1.cmml" xref="A1.T2.8.8.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3"></minus><cn id="A1.T2.8.8.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.2.cmml" type="integer" xref="A1.T2.8.8.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.2">2</cn></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.8.8.2.m2.3c">2.5\text{\,}\mathrm{m}\text{\,}{\mathrm{s}}^{-2}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.8.8.2.m2.3d">start_ARG 2.5 end_ARG start_ARG times end_ARG start_ARG start_ARG roman_m end_ARG start_ARG times end_ARG start_ARG power start_ARG roman_s end_ARG start_ARG - 2 end_ARG end_ARG end_ARG</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.10.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T2.10.10.3">Lateral Acceleration Limit</th>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T2.10.10.2">
<math alttext="\pm" class="ltx_Math" display="inline" id="A1.T2.9.9.1.m1.1"><semantics id="A1.T2.9.9.1.m1.1a"><mo id="A1.T2.9.9.1.m1.1.1" xref="A1.T2.9.9.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A1.T2.9.9.1.m1.1b"><csymbol cd="latexml" id="A1.T2.9.9.1.m1.1.1.cmml" xref="A1.T2.9.9.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.9.9.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A1.T2.9.9.1.m1.1d">±</annotation></semantics></math> <math alttext="1.0\text{\,}\mathrm{m}\text{\,}{\mathrm{s}}^{-2}" class="ltx_Math" display="inline" id="A1.T2.10.10.2.m2.3"><semantics id="A1.T2.10.10.2.m2.3a"><mrow id="A1.T2.10.10.2.m2.3.3" xref="A1.T2.10.10.2.m2.3.3.cmml"><mn id="A1.T2.10.10.2.m2.1.1.1.1.1.1" xref="A1.T2.10.10.2.m2.1.1.1.1.1.1.cmml">1.0</mn><mtext id="A1.T2.10.10.2.m2.2.2.2.2.2.2" xref="A1.T2.10.10.2.m2.2.2.2.2.2.2.cmml"> </mtext><mrow id="A1.T2.10.10.2.m2.3.3.3.3.3.3" xref="A1.T2.10.10.2.m2.3.3.3.3.3.3.cmml"><mi class="ltx_unit" id="A1.T2.10.10.2.m2.3.3.3.3.3.3.1.1.1.1.1.1" mathvariant="normal" xref="A1.T2.10.10.2.m2.3.3.3.3.3.3.1.1.1.1.1.1.cmml">m</mi><mtext id="A1.T2.10.10.2.m2.3.3.3.3.3.3.2.2.2.2.2.2" xref="A1.T2.10.10.2.m2.3.3.3.3.3.3.2.2.2.2.2.2.cmml"> </mtext><msup id="A1.T2.10.10.2.m2.3.3.3.3.3.3.3.3.3.3.3.3" xref="A1.T2.10.10.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.cmml"><mi class="ltx_unit" id="A1.T2.10.10.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.2" mathvariant="normal" xref="A1.T2.10.10.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.2.cmml">s</mi><mrow id="A1.T2.10.10.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3" xref="A1.T2.10.10.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.cmml"><mo id="A1.T2.10.10.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3a" xref="A1.T2.10.10.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.cmml">−</mo><mn id="A1.T2.10.10.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.2" xref="A1.T2.10.10.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.2.cmml">2</mn></mrow></msup></mrow></mrow><annotation-xml encoding="MathML-Content" id="A1.T2.10.10.2.m2.3b"><apply id="A1.T2.10.10.2.m2.3.3.cmml" xref="A1.T2.10.10.2.m2.3.3"><csymbol cd="latexml" id="A1.T2.10.10.2.m2.2.2.2.2.2.2.cmml" xref="A1.T2.10.10.2.m2.2.2.2.2.2.2">times</csymbol><cn id="A1.T2.10.10.2.m2.1.1.1.1.1.1.cmml" type="float" xref="A1.T2.10.10.2.m2.1.1.1.1.1.1">1.0</cn><apply id="A1.T2.10.10.2.m2.3.3.3.3.3.3.cmml" xref="A1.T2.10.10.2.m2.3.3.3.3.3.3"><csymbol cd="latexml" id="A1.T2.10.10.2.m2.3.3.3.3.3.3.2.2.2.2.2.2.cmml" xref="A1.T2.10.10.2.m2.3.3.3.3.3.3.2.2.2.2.2.2">times</csymbol><csymbol cd="latexml" id="A1.T2.10.10.2.m2.3.3.3.3.3.3.1.1.1.1.1.1.cmml" xref="A1.T2.10.10.2.m2.3.3.3.3.3.3.1.1.1.1.1.1">meter</csymbol><apply id="A1.T2.10.10.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.cmml" xref="A1.T2.10.10.2.m2.3.3.3.3.3.3.3.3.3.3.3.3"><power id="A1.T2.10.10.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.1.cmml" xref="A1.T2.10.10.2.m2.3.3.3.3.3.3.3.3.3.3.3.3"></power><csymbol cd="latexml" id="A1.T2.10.10.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.2.cmml" xref="A1.T2.10.10.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.2">second</csymbol><apply id="A1.T2.10.10.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.cmml" xref="A1.T2.10.10.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3"><minus id="A1.T2.10.10.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.1.cmml" xref="A1.T2.10.10.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3"></minus><cn id="A1.T2.10.10.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.2.cmml" type="integer" xref="A1.T2.10.10.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.2">2</cn></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.10.10.2.m2.3c">1.0\text{\,}\mathrm{m}\text{\,}{\mathrm{s}}^{-2}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.10.10.2.m2.3d">start_ARG 1.0 end_ARG start_ARG times end_ARG start_ARG start_ARG roman_m end_ARG start_ARG times end_ARG start_ARG power start_ARG roman_s end_ARG start_ARG - 2 end_ARG end_ARG end_ARG</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.12.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="A1.T2.12.12.3">Yaw Rotation Acceleration Limit</th>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T2.12.12.2">
<math alttext="\pm" class="ltx_Math" display="inline" id="A1.T2.11.11.1.m1.1"><semantics id="A1.T2.11.11.1.m1.1a"><mo id="A1.T2.11.11.1.m1.1.1" xref="A1.T2.11.11.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A1.T2.11.11.1.m1.1b"><csymbol cd="latexml" id="A1.T2.11.11.1.m1.1.1.cmml" xref="A1.T2.11.11.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.11.11.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A1.T2.11.11.1.m1.1d">±</annotation></semantics></math> <math alttext="1.0\text{\,}\mathrm{rad}\text{\,}{\mathrm{s}}^{-2}" class="ltx_Math" display="inline" id="A1.T2.12.12.2.m2.3"><semantics id="A1.T2.12.12.2.m2.3a"><mrow id="A1.T2.12.12.2.m2.3.3" xref="A1.T2.12.12.2.m2.3.3.cmml"><mn id="A1.T2.12.12.2.m2.1.1.1.1.1.1" xref="A1.T2.12.12.2.m2.1.1.1.1.1.1.cmml">1.0</mn><mtext id="A1.T2.12.12.2.m2.2.2.2.2.2.2" xref="A1.T2.12.12.2.m2.2.2.2.2.2.2.cmml"> </mtext><mrow id="A1.T2.12.12.2.m2.3.3.3.3.3.3" xref="A1.T2.12.12.2.m2.3.3.3.3.3.3.cmml"><mi class="ltx_unit" id="A1.T2.12.12.2.m2.3.3.3.3.3.3.1.1.1.1.1.1" xref="A1.T2.12.12.2.m2.3.3.3.3.3.3.1.1.1.1.1.1.cmml">rad</mi><mtext id="A1.T2.12.12.2.m2.3.3.3.3.3.3.2.2.2.2.2.2" xref="A1.T2.12.12.2.m2.3.3.3.3.3.3.2.2.2.2.2.2.cmml"> </mtext><msup id="A1.T2.12.12.2.m2.3.3.3.3.3.3.3.3.3.3.3.3" xref="A1.T2.12.12.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.cmml"><mi class="ltx_unit" id="A1.T2.12.12.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.2" mathvariant="normal" xref="A1.T2.12.12.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.2.cmml">s</mi><mrow id="A1.T2.12.12.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3" xref="A1.T2.12.12.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.cmml"><mo id="A1.T2.12.12.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3a" xref="A1.T2.12.12.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.cmml">−</mo><mn id="A1.T2.12.12.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.2" xref="A1.T2.12.12.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.2.cmml">2</mn></mrow></msup></mrow></mrow><annotation-xml encoding="MathML-Content" id="A1.T2.12.12.2.m2.3b"><apply id="A1.T2.12.12.2.m2.3.3.cmml" xref="A1.T2.12.12.2.m2.3.3"><csymbol cd="latexml" id="A1.T2.12.12.2.m2.2.2.2.2.2.2.cmml" xref="A1.T2.12.12.2.m2.2.2.2.2.2.2">times</csymbol><cn id="A1.T2.12.12.2.m2.1.1.1.1.1.1.cmml" type="float" xref="A1.T2.12.12.2.m2.1.1.1.1.1.1">1.0</cn><apply id="A1.T2.12.12.2.m2.3.3.3.3.3.3.cmml" xref="A1.T2.12.12.2.m2.3.3.3.3.3.3"><csymbol cd="latexml" id="A1.T2.12.12.2.m2.3.3.3.3.3.3.2.2.2.2.2.2.cmml" xref="A1.T2.12.12.2.m2.3.3.3.3.3.3.2.2.2.2.2.2">times</csymbol><csymbol cd="latexml" id="A1.T2.12.12.2.m2.3.3.3.3.3.3.1.1.1.1.1.1.cmml" xref="A1.T2.12.12.2.m2.3.3.3.3.3.3.1.1.1.1.1.1">radian</csymbol><apply id="A1.T2.12.12.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.cmml" xref="A1.T2.12.12.2.m2.3.3.3.3.3.3.3.3.3.3.3.3"><power id="A1.T2.12.12.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.1.cmml" xref="A1.T2.12.12.2.m2.3.3.3.3.3.3.3.3.3.3.3.3"></power><csymbol cd="latexml" id="A1.T2.12.12.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.2.cmml" xref="A1.T2.12.12.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.2">second</csymbol><apply id="A1.T2.12.12.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.cmml" xref="A1.T2.12.12.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3"><minus id="A1.T2.12.12.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.1.cmml" xref="A1.T2.12.12.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3"></minus><cn id="A1.T2.12.12.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.2.cmml" type="integer" xref="A1.T2.12.12.2.m2.3.3.3.3.3.3.3.3.3.3.3.3.3.2">2</cn></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.12.12.2.m2.3c">1.0\text{\,}\mathrm{rad}\text{\,}{\mathrm{s}}^{-2}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.12.12.2.m2.3d">start_ARG 1.0 end_ARG start_ARG times end_ARG start_ARG start_ARG roman_rad end_ARG start_ARG times end_ARG start_ARG power start_ARG roman_s end_ARG start_ARG - 2 end_ARG end_ARG end_ARG</annotation></semantics></math>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used for training the UNet models within the WB-VIMA architecture. These UNet models are responsible for the autoregressive denoising of the whole-body actions (mobile base, torso, and arms) during the policy learning process.  The hyperparameters specified include the number of hidden dimensions, kernel size, group normalization settings, and embedding dimensions for the diffusion steps. This table is crucial for understanding the configuration of the model's denoising components and how they impact the quality and efficiency of whole-body action prediction.
> <details>
> <summary>read the caption</summary>
> TABLE A.VII: Hyperparameters for the UNet models used for denoising.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T3.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T3.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="A1.T3.3.4.1.1"><span class="ltx_text ltx_font_bold" id="A1.T3.3.4.1.1.1">Parameter</span></th>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="A1.T3.3.4.1.2"><span class="ltx_text ltx_font_bold" id="A1.T3.3.4.1.2.1">Value</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.3.5.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="2" id="A1.T3.3.5.2.1">RGB-D Cameras</th>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A1.T3.1.1.2">Frequency</th>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T3.1.1.1"><math alttext="60\text{\,}\mathrm{Hz}" class="ltx_Math" display="inline" id="A1.T3.1.1.1.m1.3"><semantics id="A1.T3.1.1.1.m1.3a"><mrow id="A1.T3.1.1.1.m1.3.3" xref="A1.T3.1.1.1.m1.3.3.cmml"><mn id="A1.T3.1.1.1.m1.1.1.1.1.1.1" xref="A1.T3.1.1.1.m1.1.1.1.1.1.1.cmml">60</mn><mtext id="A1.T3.1.1.1.m1.2.2.2.2.2.2" xref="A1.T3.1.1.1.m1.2.2.2.2.2.2.cmml"> </mtext><mi class="ltx_unit" id="A1.T3.1.1.1.m1.3.3.3.3.3.3" xref="A1.T3.1.1.1.m1.3.3.3.3.3.3.cmml">Hz</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T3.1.1.1.m1.3b"><apply id="A1.T3.1.1.1.m1.3.3.cmml" xref="A1.T3.1.1.1.m1.3.3"><csymbol cd="latexml" id="A1.T3.1.1.1.m1.2.2.2.2.2.2.cmml" xref="A1.T3.1.1.1.m1.2.2.2.2.2.2">times</csymbol><cn id="A1.T3.1.1.1.m1.1.1.1.1.1.1.cmml" type="integer" xref="A1.T3.1.1.1.m1.1.1.1.1.1.1">60</cn><csymbol cd="latexml" id="A1.T3.1.1.1.m1.3.3.3.3.3.3.cmml" xref="A1.T3.1.1.1.m1.3.3.3.3.3.3">hertz</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T3.1.1.1.m1.3c">60\text{\,}\mathrm{Hz}</annotation><annotation encoding="application/x-llamapun" id="A1.T3.1.1.1.m1.3d">start_ARG 60 end_ARG start_ARG times end_ARG start_ARG roman_Hz end_ARG</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T3.2.2.2">Image Resolution</th>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T3.2.2.1">1344<math alttext="\times" class="ltx_Math" display="inline" id="A1.T3.2.2.1.m1.1"><semantics id="A1.T3.2.2.1.m1.1a"><mo id="A1.T3.2.2.1.m1.1.1" xref="A1.T3.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T3.2.2.1.m1.1b"><times id="A1.T3.2.2.1.m1.1.1.cmml" xref="A1.T3.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T3.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T3.2.2.1.m1.1d">×</annotation></semantics></math>376</td>
</tr>
<tr class="ltx_tr" id="A1.T3.3.6.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T3.3.6.3.1">ZED Depth Mode</th>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T3.3.6.3.2"><span class="ltx_text ltx_font_typewriter" id="A1.T3.3.6.3.2.1">PERFORMANCE</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.3.7.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T3.3.7.4.1">Head Camera Min Depth</th>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T3.3.7.4.2">0.2</td>
</tr>
<tr class="ltx_tr" id="A1.T3.3.8.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T3.3.8.5.1">Head Camera Max Depth</th>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T3.3.8.5.2">3</td>
</tr>
<tr class="ltx_tr" id="A1.T3.3.9.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T3.3.9.6.1">Wrist Camera Min Depth</th>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T3.3.9.6.2">0.1</td>
</tr>
<tr class="ltx_tr" id="A1.T3.3.10.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A1.T3.3.10.7.1">Wrist Camera Max Depth</th>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T3.3.10.7.2">1</td>
</tr>
<tr class="ltx_tr" id="A1.T3.3.11.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="2" id="A1.T3.3.11.8.1">Tracking Camera</th>
</tr>
<tr class="ltx_tr" id="A1.T3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A1.T3.3.3.2">Odometry Frequency</th>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="A1.T3.3.3.1"><math alttext="200\text{\,}\mathrm{Hz}" class="ltx_Math" display="inline" id="A1.T3.3.3.1.m1.3"><semantics id="A1.T3.3.3.1.m1.3a"><mrow id="A1.T3.3.3.1.m1.3.3" xref="A1.T3.3.3.1.m1.3.3.cmml"><mn id="A1.T3.3.3.1.m1.1.1.1.1.1.1" xref="A1.T3.3.3.1.m1.1.1.1.1.1.1.cmml">200</mn><mtext id="A1.T3.3.3.1.m1.2.2.2.2.2.2" xref="A1.T3.3.3.1.m1.2.2.2.2.2.2.cmml"> </mtext><mi class="ltx_unit" id="A1.T3.3.3.1.m1.3.3.3.3.3.3" xref="A1.T3.3.3.1.m1.3.3.3.3.3.3.cmml">Hz</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T3.3.3.1.m1.3b"><apply id="A1.T3.3.3.1.m1.3.3.cmml" xref="A1.T3.3.3.1.m1.3.3"><csymbol cd="latexml" id="A1.T3.3.3.1.m1.2.2.2.2.2.2.cmml" xref="A1.T3.3.3.1.m1.2.2.2.2.2.2">times</csymbol><cn id="A1.T3.3.3.1.m1.1.1.1.1.1.1.cmml" type="integer" xref="A1.T3.3.3.1.m1.1.1.1.1.1.1">200</cn><csymbol cd="latexml" id="A1.T3.3.3.1.m1.3.3.3.3.3.3.cmml" xref="A1.T3.3.3.1.m1.3.3.3.3.3.3">hertz</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T3.3.3.1.m1.3c">200\text{\,}\mathrm{Hz}</annotation><annotation encoding="application/x-llamapun" id="A1.T3.3.3.1.m1.3d">start_ARG 200 end_ARG start_ARG times end_ARG start_ARG roman_Hz end_ARG</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used for training the WB-VIMA model.  It includes settings for the optimizer (AdamW), such as learning rate, weight decay, learning rate warmup steps, learning rate cosine decay steps, and minimal learning rate.  These values are crucial for controlling the training process and achieving optimal model performance.
> <details>
> <summary>read the caption</summary>
> TABLE A.VIII: Training hyperparameters.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T4.3.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.3.3.4.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.3.3.4.1.1"><span class="ltx_text ltx_font_bold" id="A1.T4.3.3.4.1.1.1">Item No.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.3.3.4.1.2"><span class="ltx_text ltx_font_bold" id="A1.T4.3.3.4.1.2.1">Part Name</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.3.3.4.1.3"><span class="ltx_text ltx_font_bold" id="A1.T4.3.3.4.1.3.1">Description</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.3.3.4.1.4"><span class="ltx_text ltx_font_bold" id="A1.T4.3.3.4.1.4.1">Quantity</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.3.3.4.1.5"><span class="ltx_text ltx_font_bold" id="A1.T4.3.3.4.1.5.1">Unit Price ($)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.3.3.4.1.6"><span class="ltx_text ltx_font_bold" id="A1.T4.3.3.4.1.6.1">Total Price ($)</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="A1.T4.3.3.4.1.7"><span class="ltx_text ltx_font_bold" id="A1.T4.3.3.4.1.7.1">Supplier</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.3.3.5.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.3.3.5.2.1">1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.3.3.5.2.2">Dynamixel XL330-M288-T</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.3.3.5.2.3">
<span class="ltx_text" id="A1.T4.3.3.5.2.3.1">JoyLo</span> arm joint motors</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.3.3.5.2.4">16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.3.3.5.2.5">23.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.3.3.5.2.6">382.40</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T4.3.3.5.2.7">Dynamixel</td>
</tr>
<tr class="ltx_tr" id="A1.T4.3.3.6.3">
<td class="ltx_td ltx_align_center" id="A1.T4.3.3.6.3.1">2</td>
<td class="ltx_td ltx_align_left" id="A1.T4.3.3.6.3.2">Nintendo Joy-Con</td>
<td class="ltx_td ltx_align_left" id="A1.T4.3.3.6.3.3">
<span class="ltx_text" id="A1.T4.3.3.6.3.3.1">JoyLo</span> hand-held controllers</td>
<td class="ltx_td ltx_align_center" id="A1.T4.3.3.6.3.4">1</td>
<td class="ltx_td ltx_align_center" id="A1.T4.3.3.6.3.5">70</td>
<td class="ltx_td ltx_align_center" id="A1.T4.3.3.6.3.6">70</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T4.3.3.6.3.7">Nintendo</td>
</tr>
<tr class="ltx_tr" id="A1.T4.3.3.7.4">
<td class="ltx_td ltx_align_center" id="A1.T4.3.3.7.4.1">3</td>
<td class="ltx_td ltx_align_left" id="A1.T4.3.3.7.4.2">Dynamixel U2D2</td>
<td class="ltx_td ltx_align_left" id="A1.T4.3.3.7.4.3">USB communication converter for controlling Dynamixel motors</td>
<td class="ltx_td ltx_align_center" id="A1.T4.3.3.7.4.4">1</td>
<td class="ltx_td ltx_align_center" id="A1.T4.3.3.7.4.5">32.10</td>
<td class="ltx_td ltx_align_center" id="A1.T4.3.3.7.4.6">32.10</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T4.3.3.7.4.7">Dynamixel</td>
</tr>
<tr class="ltx_tr" id="A1.T4.3.3.8.5">
<td class="ltx_td ltx_align_center" id="A1.T4.3.3.8.5.1">4</td>
<td class="ltx_td ltx_align_left" id="A1.T4.3.3.8.5.2">5V DC Power Supply</td>
<td class="ltx_td ltx_align_left" id="A1.T4.3.3.8.5.3">Power supply for Dynamixel motors</td>
<td class="ltx_td ltx_align_center" id="A1.T4.3.3.8.5.4">1</td>
<td class="ltx_td ltx_align_center" id="A1.T4.3.3.8.5.5">&lt;10</td>
<td class="ltx_td ltx_align_center" id="A1.T4.3.3.8.5.6">&lt;10</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T4.3.3.8.5.7">Various</td>
</tr>
<tr class="ltx_tr" id="A1.T4.2.2.2">
<td class="ltx_td ltx_align_center" id="A1.T4.2.2.2.3">5</td>
<td class="ltx_td ltx_align_left" id="A1.T4.2.2.2.4">3D Printer PLA Filament</td>
<td class="ltx_td ltx_align_left" id="A1.T4.2.2.2.5">PLA filament for 3D printing <span class="ltx_text" id="A1.T4.2.2.2.5.1">JoyLo</span> arm links</td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.2.2.6">1</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.1.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="A1.T4.1.1.1.1.m1.1"><semantics id="A1.T4.1.1.1.1.m1.1a"><mo id="A1.T4.1.1.1.1.m1.1.1" xref="A1.T4.1.1.1.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="A1.T4.1.1.1.1.m1.1b"><csymbol cd="latexml" id="A1.T4.1.1.1.1.m1.1.1.cmml" xref="A1.T4.1.1.1.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.1.1.1.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="A1.T4.1.1.1.1.m1.1d">∼</annotation></semantics></math>5</td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.2.2.2">
<math alttext="\sim" class="ltx_Math" display="inline" id="A1.T4.2.2.2.2.m1.1"><semantics id="A1.T4.2.2.2.2.m1.1a"><mo id="A1.T4.2.2.2.2.m1.1.1" xref="A1.T4.2.2.2.2.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="A1.T4.2.2.2.2.m1.1b"><csymbol cd="latexml" id="A1.T4.2.2.2.2.m1.1.1.cmml" xref="A1.T4.2.2.2.2.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.2.2.2.2.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="A1.T4.2.2.2.2.m1.1d">∼</annotation></semantics></math>5</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T4.2.2.2.7">Various</td>
</tr>
<tr class="ltx_tr" id="A1.T4.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="7" id="A1.T4.3.3.3.1"><span class="ltx_text ltx_font_bold" id="A1.T4.3.3.3.1.1">Total Cost: <math alttext="\sim" class="ltx_Math" display="inline" id="A1.T4.3.3.3.1.1.m1.1"><semantics id="A1.T4.3.3.3.1.1.m1.1a"><mo id="A1.T4.3.3.3.1.1.m1.1.1" xref="A1.T4.3.3.3.1.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="A1.T4.3.3.3.1.1.m1.1b"><csymbol cd="latexml" id="A1.T4.3.3.3.1.1.m1.1.1.cmml" xref="A1.T4.3.3.3.1.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.3.3.3.1.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="A1.T4.3.3.3.1.1.m1.1d">∼</annotation></semantics></math>$499.5</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table A.IX presents a detailed breakdown of the success rates achieved by different methods (Human, Ours, DP3, and RGB-DP) across various sub-tasks involved in the 'Clean House After a Wild Party' task. The success rates are expressed as percentages, with the number of successful trials out of the total trials provided in parentheses.  This allows for a granular understanding of performance at each stage of the task, revealing where certain approaches may struggle and highlighting the overall effectiveness of different methods.  The table also notes any safety violations (collisions or motor power loss) that occurred during the task execution.
> <details>
> <summary>read the caption</summary>
> TABLE A.IX: Numerical evaluation results for the task “clean house after a wild party”. Success rates are shown as percentages. Values in parentheses indicate the number of successful trials out of the total trials.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T5.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T5.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="A3.T5.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A3.T5.1.2.1.1.1">Hyperparameter</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T5.1.2.1.2"><span class="ltx_text ltx_font_bold" id="A3.T5.1.2.1.2.1">Value</span></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="A3.T5.1.2.1.3"><span class="ltx_text ltx_font_bold" id="A3.T5.1.2.1.3.1">Hyperparameter</span></th>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="A3.T5.1.2.1.4"><span class="ltx_text ltx_font_bold" id="A3.T5.1.2.1.4.1">Value</span></td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" colspan="2" id="A3.T5.1.3.2.1">PointNet</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="2" id="A3.T5.1.3.2.2">Prop. MLP</th>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A3.T5.1.1.1"><math alttext="N_{\text{pcd}}" class="ltx_Math" display="inline" id="A3.T5.1.1.1.m1.1"><semantics id="A3.T5.1.1.1.m1.1a"><msub id="A3.T5.1.1.1.m1.1.1" xref="A3.T5.1.1.1.m1.1.1.cmml"><mi id="A3.T5.1.1.1.m1.1.1.2" xref="A3.T5.1.1.1.m1.1.1.2.cmml">N</mi><mtext id="A3.T5.1.1.1.m1.1.1.3" xref="A3.T5.1.1.1.m1.1.1.3a.cmml">pcd</mtext></msub><annotation-xml encoding="MathML-Content" id="A3.T5.1.1.1.m1.1b"><apply id="A3.T5.1.1.1.m1.1.1.cmml" xref="A3.T5.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A3.T5.1.1.1.m1.1.1.1.cmml" xref="A3.T5.1.1.1.m1.1.1">subscript</csymbol><ci id="A3.T5.1.1.1.m1.1.1.2.cmml" xref="A3.T5.1.1.1.m1.1.1.2">𝑁</ci><ci id="A3.T5.1.1.1.m1.1.1.3a.cmml" xref="A3.T5.1.1.1.m1.1.1.3"><mtext id="A3.T5.1.1.1.m1.1.1.3.cmml" mathsize="70%" xref="A3.T5.1.1.1.m1.1.1.3">pcd</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T5.1.1.1.m1.1c">N_{\text{pcd}}</annotation><annotation encoding="application/x-llamapun" id="A3.T5.1.1.1.m1.1d">italic_N start_POSTSUBSCRIPT pcd end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T5.1.1.2">4096</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T5.1.1.3">Input Dim</th>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.4">21</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T5.1.4.3.1">Hidden Dim</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T5.1.4.3.2">256</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T5.1.4.3.3">Hidden Dim</th>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T5.1.4.3.4">256</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T5.1.5.4.1">Hidden Depth</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T5.1.5.4.2">2</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T5.1.5.4.3">Hidden Depth</th>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T5.1.5.4.4">3</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.6.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T5.1.6.5.1">Output Dim</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T5.1.6.5.2">256</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T5.1.6.5.3">Output Dim</th>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T5.1.6.5.4">256</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.7.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="A3.T5.1.7.6.1">Activation</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T5.1.7.6.2">GELU</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A3.T5.1.7.6.3">Activation</th>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A3.T5.1.7.6.4">ReLU</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table A.X presents a detailed breakdown of the success rates achieved by different methods (Human, Ours, DP3 [70], and RGB-DP [66]) on the 'Clean the Toilet' task.  Success is measured for the entire task (ET) as well as individual sub-tasks (ST1-ST6), providing a granular view of performance at each stage of the process.  The success rates are expressed as percentages, with the raw numbers of successful and total trials included in parentheses for complete transparency and reproducibility of the results.  Additionally, safety violations (collisions or motor power loss) are recorded for each method, offering further insights into the robustness and safety of each approach during task execution.
> <details>
> <summary>read the caption</summary>
> TABLE A.X: Numerical evaluation results for the task “clean the toilet”. Success rates are shown as percentages. Values in parentheses indicate the number of successful trials out of the total trials.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T6.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T6.5.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A3.T6.5.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T6.5.1.1.1.1">Hyperparameter</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T6.5.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T6.5.1.1.2.1">Value</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T6.5.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A3.T6.5.2.1.1">Embed Size</th>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T6.5.2.1.2">256</td>
</tr>
<tr class="ltx_tr" id="A3.T6.5.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T6.5.3.2.1">Num Layers</th>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.5.3.2.2">2</td>
</tr>
<tr class="ltx_tr" id="A3.T6.5.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T6.5.4.3.1">Num Heads</th>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.5.4.3.2">8</td>
</tr>
<tr class="ltx_tr" id="A3.T6.5.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T6.5.5.4.1">Dropout Rate</th>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.5.5.4.2">0.1</td>
</tr>
<tr class="ltx_tr" id="A3.T6.5.6.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="A3.T6.5.6.5.1">Activation</th>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A3.T6.5.6.5.2">GEGLU <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.05652v1#bib.bib171" title="">171</a>]</cite>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the success rates achieved by different methods (human, Ours, DP3, and RGB-DP) on the sub-tasks involved in the 'Take Trash Outside' task.  Success rates are represented as percentages, and the raw numbers of successful trials versus total trials for each method and subtask are given in parentheses.  Additionally, the number of safety violations (collisions or excessive force leading to motor power loss) is recorded for each method. This allows for a granular analysis of performance and safety across various approaches and task stages.
> <details>
> <summary>read the caption</summary>
> TABLE A.XI: Numerical evaluation results for the task “take trash outside”. Success rates are shown as percentages. Values in parentheses indicate the number of successful trials out of the total trials.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T7.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T7.5.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T7.5.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T7.5.1.1.1.1">Hyperparameter</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T7.5.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T7.5.1.1.2.1">Value</span></th>
</tr>
<tr class="ltx_tr" id="A3.T7.5.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A3.T7.5.2.2.1">Hidden Dim</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A3.T7.5.2.2.2">[64,128]</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T7.5.3.1">
<td class="ltx_td ltx_align_center" id="A3.T7.5.3.1.1">Kernel Size</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.5.3.1.2">2</td>
</tr>
<tr class="ltx_tr" id="A3.T7.5.4.2">
<td class="ltx_td ltx_align_center" id="A3.T7.5.4.2.1">GroupNorm Num Groups</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.5.4.2.2">5</td>
</tr>
<tr class="ltx_tr" id="A3.T7.5.5.3">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.5.5.3.1">Diffusion Step Embd Dim</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A3.T7.5.5.3.2">8</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table A.XII presents a detailed breakdown of the success rates achieved by different methods (Human, Ours, DP3 [70], RGB-DP [66], Ours w/o W.B. Action Denoising, Ours w/o Multi-Modal Obs. Attn.) on the 'Put Items onto Shelves' task.  The success rates are expressed as percentages, with the raw numbers of successful and total trials given in parentheses. This granular data allows for a precise comparison of performance across various methods and helps to understand the impact of specific model components on overall success in completing this household task.  The table also shows the number of safety violations (collisions or motor power losses) encountered during each method's trials.
> <details>
> <summary>read the caption</summary>
> TABLE A.XII: Numerical evaluation results for the task “put items onto shelf”. Success rates are shown as percentages. Values in parentheses indicate the number of successful trials out of the total trials.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T8.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T8.2.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="A3.T8.2.3.1.1"><span class="ltx_text ltx_font_bold" id="A3.T8.2.3.1.1.1">Hyperparameter</span></th>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="A3.T8.2.3.1.2"><span class="ltx_text ltx_font_bold" id="A3.T8.2.3.1.2.1">Value</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A3.T8.1.1.2">Learning Rate</th>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T8.1.1.1"><math alttext="7\times 10^{-4}" class="ltx_Math" display="inline" id="A3.T8.1.1.1.m1.1"><semantics id="A3.T8.1.1.1.m1.1a"><mrow id="A3.T8.1.1.1.m1.1.1" xref="A3.T8.1.1.1.m1.1.1.cmml"><mn id="A3.T8.1.1.1.m1.1.1.2" xref="A3.T8.1.1.1.m1.1.1.2.cmml">7</mn><mo id="A3.T8.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A3.T8.1.1.1.m1.1.1.1.cmml">×</mo><msup id="A3.T8.1.1.1.m1.1.1.3" xref="A3.T8.1.1.1.m1.1.1.3.cmml"><mn id="A3.T8.1.1.1.m1.1.1.3.2" xref="A3.T8.1.1.1.m1.1.1.3.2.cmml">10</mn><mrow id="A3.T8.1.1.1.m1.1.1.3.3" xref="A3.T8.1.1.1.m1.1.1.3.3.cmml"><mo id="A3.T8.1.1.1.m1.1.1.3.3a" xref="A3.T8.1.1.1.m1.1.1.3.3.cmml">−</mo><mn id="A3.T8.1.1.1.m1.1.1.3.3.2" xref="A3.T8.1.1.1.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A3.T8.1.1.1.m1.1b"><apply id="A3.T8.1.1.1.m1.1.1.cmml" xref="A3.T8.1.1.1.m1.1.1"><times id="A3.T8.1.1.1.m1.1.1.1.cmml" xref="A3.T8.1.1.1.m1.1.1.1"></times><cn id="A3.T8.1.1.1.m1.1.1.2.cmml" type="integer" xref="A3.T8.1.1.1.m1.1.1.2">7</cn><apply id="A3.T8.1.1.1.m1.1.1.3.cmml" xref="A3.T8.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="A3.T8.1.1.1.m1.1.1.3.1.cmml" xref="A3.T8.1.1.1.m1.1.1.3">superscript</csymbol><cn id="A3.T8.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="A3.T8.1.1.1.m1.1.1.3.2">10</cn><apply id="A3.T8.1.1.1.m1.1.1.3.3.cmml" xref="A3.T8.1.1.1.m1.1.1.3.3"><minus id="A3.T8.1.1.1.m1.1.1.3.3.1.cmml" xref="A3.T8.1.1.1.m1.1.1.3.3"></minus><cn id="A3.T8.1.1.1.m1.1.1.3.3.2.cmml" type="integer" xref="A3.T8.1.1.1.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T8.1.1.1.m1.1c">7\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="A3.T8.1.1.1.m1.1d">7 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T8.2.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T8.2.4.2.1">Weight Decay</th>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.2.4.2.2">0.1</td>
</tr>
<tr class="ltx_tr" id="A3.T8.2.5.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A3.T8.2.5.3.1">Learning Rate Warm Up Steps</th>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.2.5.3.2">1000</td>
</tr>
<tr class="ltx_tr" id="A3.T8.2.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T8.2.6.4.1">Learning Rate Cosine Decay Steps</th>
<td class="ltx_td ltx_align_left" id="A3.T8.2.6.4.2">300,000</td>
</tr>
<tr class="ltx_tr" id="A3.T8.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="A3.T8.2.2.2">Minimal Learning Rate</th>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A3.T8.2.2.1"><math alttext="5\times 10^{-6}" class="ltx_Math" display="inline" id="A3.T8.2.2.1.m1.1"><semantics id="A3.T8.2.2.1.m1.1a"><mrow id="A3.T8.2.2.1.m1.1.1" xref="A3.T8.2.2.1.m1.1.1.cmml"><mn id="A3.T8.2.2.1.m1.1.1.2" xref="A3.T8.2.2.1.m1.1.1.2.cmml">5</mn><mo id="A3.T8.2.2.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A3.T8.2.2.1.m1.1.1.1.cmml">×</mo><msup id="A3.T8.2.2.1.m1.1.1.3" xref="A3.T8.2.2.1.m1.1.1.3.cmml"><mn id="A3.T8.2.2.1.m1.1.1.3.2" xref="A3.T8.2.2.1.m1.1.1.3.2.cmml">10</mn><mrow id="A3.T8.2.2.1.m1.1.1.3.3" xref="A3.T8.2.2.1.m1.1.1.3.3.cmml"><mo id="A3.T8.2.2.1.m1.1.1.3.3a" xref="A3.T8.2.2.1.m1.1.1.3.3.cmml">−</mo><mn id="A3.T8.2.2.1.m1.1.1.3.3.2" xref="A3.T8.2.2.1.m1.1.1.3.3.2.cmml">6</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A3.T8.2.2.1.m1.1b"><apply id="A3.T8.2.2.1.m1.1.1.cmml" xref="A3.T8.2.2.1.m1.1.1"><times id="A3.T8.2.2.1.m1.1.1.1.cmml" xref="A3.T8.2.2.1.m1.1.1.1"></times><cn id="A3.T8.2.2.1.m1.1.1.2.cmml" type="integer" xref="A3.T8.2.2.1.m1.1.1.2">5</cn><apply id="A3.T8.2.2.1.m1.1.1.3.cmml" xref="A3.T8.2.2.1.m1.1.1.3"><csymbol cd="ambiguous" id="A3.T8.2.2.1.m1.1.1.3.1.cmml" xref="A3.T8.2.2.1.m1.1.1.3">superscript</csymbol><cn id="A3.T8.2.2.1.m1.1.1.3.2.cmml" type="integer" xref="A3.T8.2.2.1.m1.1.1.3.2">10</cn><apply id="A3.T8.2.2.1.m1.1.1.3.3.cmml" xref="A3.T8.2.2.1.m1.1.1.3.3"><minus id="A3.T8.2.2.1.m1.1.1.3.3.1.cmml" xref="A3.T8.2.2.1.m1.1.1.3.3"></minus><cn id="A3.T8.2.2.1.m1.1.1.3.3.2.cmml" type="integer" xref="A3.T8.2.2.1.m1.1.1.3.3.2">6</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T8.2.2.1.m1.1c">5\times 10^{-6}</annotation><annotation encoding="application/x-llamapun" id="A3.T8.2.2.1.m1.1d">5 × 10 start_POSTSUPERSCRIPT - 6 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table A.XIII presents a detailed breakdown of the success rates achieved by different methods (Human, Ours, DP3, RGB-DP, and two ablation variants of Ours) on the 'Lay Clothes Out' task.  Success is measured across the entire task (ET) and its four sub-tasks (ST1-ST4). The success rates are represented as percentages, with the number of successful trials out of the total trials indicated in parentheses for each method and subtask.  Additionally, the table includes a count of safety violations (collisions, motor power loss) for each approach. This granular level of detail enables a thorough comparison of the performance and safety profiles of various methods on this complex household task.
> <details>
> <summary>read the caption</summary>
> TABLE A.XIII: Numerical evaluation results for the task “lay clothes out”. Success rates are shown as percentages. Values in parentheses indicate the number of successful trials out of the total trials.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.05652/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05652/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05652/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05652/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05652/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05652/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05652/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05652/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05652/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05652/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05652/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05652/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05652/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05652/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05652/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05652/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05652/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05652/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05652/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05652/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}