---
title: "Precise and Dexterous Robotic Manipulation via Human-in-the-Loop Reinforcement Learning"
summary: "Human-in-the-loop RL system achieves near-perfect success rates on diverse dexterous robotic manipulation tasks within just 1-2.5 hours of real-world training, outperforming prior methods."
categories: ["AI Generated"]
tags: ["🔖 24-10-29", "🤗 24-10-30"]
showSummary: true
date: 2024-10-29
draft: false
---

{{< keyword >}} 2410.21845 {{< /keyword >}}

### TL;DR


{{< lead >}}

Real-world robotic manipulation skill acquisition remains challenging due to issues with sample complexity, reward function design, and optimization stability.  Existing methods often fall short in terms of efficiency and real-world performance.  Current approaches either rely heavily on simulation, require extensive training time, or struggle with the complexities of real-world physics and perception.  Many existing techniques also lack generalizability across diverse robotic manipulation tasks. 



This paper introduces HIL-SERL, a novel human-in-the-loop reinforcement learning system that efficiently addresses these issues. **HIL-SERL integrates human demonstrations and corrections, efficient RL algorithms, and several system-level design choices to learn high-performing policies.** The approach significantly outperforms imitation learning and prior RL methods, achieving near-perfect success rates within 1-2.5 hours of real-world training across a diverse set of dexterous manipulation tasks.  **HIL-SERL demonstrates that RL can effectively learn complex vision-based manipulation policies directly in the real world, advancing the field towards the goal of truly autonomous robotic manipulation.**

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.21845" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.21845" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for robotics researchers because it presents a novel human-in-the-loop reinforcement learning approach that significantly improves the efficiency and performance of training complex robotic manipulation skills in real-world settings.  **It addresses long-standing challenges in sample complexity and optimization stability**, offering a practical solution for achieving human-level dexterity in robots.  This work **opens new avenues for developing general-purpose robotic manipulation policies**, impacting various fields and inspiring further research on sample-efficient RL and human-robot interaction.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A novel human-in-the-loop reinforcement learning system significantly improves the speed and success rate of training complex robotic manipulation skills. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The system achieves near-perfect success rates and faster execution times on diverse dexterous tasks, exceeding human teleoperation performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The research provides insights into how effective RL-based manipulation learns robust, adaptive policies for both reactive and predictive control strategies. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.21845/figures_2_0.png)

> 🔼 Figure 3 shows a collection of images illustrating the diverse dexterous robotic manipulation tasks performed by the system in the paper.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustrations of the tasks in our experiments. (A)-(E) A sequence of motherboard assembly tasks: SSD installation, RAM insertion, USB cable grasping and insertion into a slot and a clip, and booting up the computer to ensure motherboard functionality. (F) A manipulation sequence to assemble an IKEA furniture: the robot first assembles two side panels, then installs the top panel onto the mounted side panels. (G) A manipulation sequence to assemble a car dashboard, two robot arms first grasp the workpiece then align multiple pins to the slots. (H) Two arms performing a coordinated handover task. (I) Two arms performing a timing belt installation task. (J) A manipulation sequence of Jenga whipping task, where the robot needs to extract one Jenga piece from the tower without crashing it. (K) The robot is flipping the object in the pan to the opposite side.
> </details>





![](https://ai-paper-reviewer.com/2410.21845/charts_14_0.png)

> 🔼 The chart displays the success rate, cycle time, and intervention rate for HIL-SERL and HG-DAgger across several tasks over training time, showing HIL-SERL's superior and consistent performance.
> <details>
> <summary>read the caption</summary>
> Figure 4: Learning curves for experimental tasks. This figure presents the success rate, cycle time, and intervention rates for both HIL-SERL and DAgger across few representative tasks, displayed as a running average over 20 episodes. For HIL-SERL, the success rate increased rapidly throughout training, eventually reaching 100%, while the intervention rate and cycle time progressively decreased, with the intervention rate ultimately reaching 0%. For HG-DAgger, the success rate fluctuates throughout training episodes and does not necessarily increase as training progresses. Since interventions occur frequently, leading to successful outcomes, the true policy success rate is likely lower than the curve suggests. Additionally, the intervention rate does not consistently decrease over time, indicating that the policy is not steadily improving. This is reflected in the cycle time as well, which shows no improvement, as DAgger lacks a mechanism to enhance performance beyond the provided training data. Additional plots are available in the supplementary material.
> </details>





{{< table-caption >}}
<table id='1' style='font-size:16px'><tr><td rowspan="2">Task</td><td rowspan="2">Training Time (h)</td><td colspan="2">Success Rate (%)</td><td colspan="2">Cycle Time (s)</td></tr><tr><td>BC</td><td>HIL-SERL (ours)</td><td>BC</td><td>HIL-SERL (ours)</td></tr><tr><td>RAM Insertion</td><td>1.5</td><td>29</td><td>100 (+245%)</td><td>8.3</td><td>4.8 (1.7x faster)</td></tr><tr><td>SSD Assembly</td><td>1</td><td>79</td><td>100 (+27%)</td><td>6.7</td><td>3.3 (2x faster)</td></tr><tr><td>USB Grasp-Insertion</td><td>2.5</td><td>26</td><td>100 (+285%)</td><td>13.4</td><td>6.7 (2x faster)</td></tr><tr><td>Cable Clipping</td><td>1.25</td><td>95</td><td>100 (+5%)</td><td>7.2</td><td>4.2 (1.7x faster)</td></tr><tr><td>IKEA - Side Panel 1</td><td>2</td><td>77</td><td>100 (+30%)</td><td>6.5</td><td>2.7 (2.4x faster)</td></tr><tr><td>IKEA - Side Panel 2</td><td>1.75</td><td>79</td><td>100 (+27%)</td><td>5.0</td><td>2.4 (2.1x faster)</td></tr><tr><td>IKEA - Top Panel</td><td>1</td><td>35</td><td>100 (+186%)</td><td>8.9</td><td>2.4 (3.7x faster)</td></tr><tr><td>IKEA - Whole Assembly</td><td>-</td><td>1/10</td><td>10/10 (+900%)</td><td>-</td><td>-</td></tr><tr><td>Car Dashboard Assembly</td><td>2</td><td>41</td><td>100 (+144%)</td><td>20.3</td><td>8.8 (2.3x faster)</td></tr><tr><td>Object Handover</td><td>2.5</td><td>79</td><td>100 (+27%)</td><td>16.1</td><td>13.6 (1.2x faster)</td></tr><tr><td>Timing Belt Assembly</td><td>6</td><td>2</td><td>100 (+4900%)</td><td>9.1</td><td>7.2 (1.3x faster)</td></tr><tr><td>Jenga Whipping</td><td>1.25</td><td>8</td><td>100 (+1150%)</td><td>-</td><td>-</td></tr><tr><td>Object Flipping</td><td>1</td><td>46</td><td>100 (+117%)</td><td>3.9</td><td>3.8 (1.03x faster)</td></tr><tr><td>Average</td><td>-</td><td>49.7</td><td>100 (+101%)</td><td>9.6</td><td>5.4 (1.8x faster)</td></tr></table>{{< /table-caption >}}

> 🔼 This table compares the performance of HIL-SERL against imitation learning and other baselines across various dexterous robotic manipulation tasks, reporting success rates, cycle times, and training times.
> <details>
> <summary>read the caption</summary>
> Table 1: Experiment results. (a) HIL-SERL against imitation learning baselines. (b) HIL-SERL against various other baselines.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.21845/figures_2_1.png)

> 🔼 Figure 3 shows images illustrating the various dexterous manipulation tasks performed by the robot in the experiments.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustrations of the tasks in our experiments. (A)-(E) A sequence of motherboard assembly tasks: SSD installation, RAM insertion, USB cable grasping and insertion into a slot and a clip, and booting up the computer to ensure motherboard functionality. (F) A manipulation sequence to assemble an IKEA furniture: the robot first assembles two side panels, then installs the top panel onto the mounted side panels. (G) A manipulation sequence to assemble a car dashboard, two robot arms first grasp the workpiece then align multiple pins to the slots. (H) Two arms performing a coordinated handover task. (I) Two arms performing a timing belt installation task. (J) A manipulation sequence of Jenga whipping task, where the robot needs to extract one Jenga piece from the tower without crashing it. (K) The robot is flipping the object in the pan to the opposite side.
> </details>



![](https://ai-paper-reviewer.com/2410.21845/figures_2_2.png)

> 🔼 Figure 3 shows various experimental tasks including motherboard assembly, IKEA furniture assembly, car dashboard assembly, object handover, timing belt assembly, Jenga whipping, and object flipping.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustrations of the tasks in our experiments. (A)-(E) A sequence of motherboard assembly tasks: SSD installation, RAM insertion, USB cable grasping and insertion into a slot and a clip, and booting up the computer to ensure motherboard functionality. (F) A manipulation sequence to assemble an IKEA furniture: the robot first assembles two side panels, then installs the top panel onto the mounted side panels. (G) A manipulation sequence to assemble a car dashboard, two robot arms first grasp the workpiece then align multiple pins to the slots. (H) Two arms performing a coordinated handover task. (I) Two arms performing a timing belt installation task. (J) A manipulation sequence of Jenga whipping task, where the robot needs to extract one Jenga piece from the tower without crashing it. (K) The robot is flipping the object in the pan to the opposite side.
> </details>



![](https://ai-paper-reviewer.com/2410.21845/figures_2_3.png)

> 🔼 The figure shows a subset of the complex dexterous robotic manipulation tasks the paper's method is tested on, including tasks requiring dynamic manipulation, precision assembly, and dual-arm coordination.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of experimental tasks. A subset of tasks considered in this paper, they include whipping out a Jenga block from its tower, flipping an object in a pan, assembling complex devices such as a timing belt, a dashboard, a motherboard, and an IKEA shelf.
> </details>



![](https://ai-paper-reviewer.com/2410.21845/figures_2_4.png)

> 🔼 Figure 3 shows various experimental tasks including motherboard assembly, IKEA furniture assembly, car dashboard assembly, object handover, timing belt installation, Jenga whipping, and object flipping.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustrations of the tasks in our experiments. (A)-(E) A sequence of motherboard assembly tasks: SSD installation, RAM insertion, USB cable grasping and insertion into a slot and a clip, and booting up the computer to ensure motherboard functionality. (F) A manipulation sequence to assemble an IKEA furniture: the robot first assembles two side panels, then installs the top panel onto the mounted side panels. (G) A manipulation sequence to assemble a car dashboard, two robot arms first grasp the workpiece then align multiple pins to the slots. (H) Two arms performing a coordinated handover task. (I) Two arms performing a timing belt installation task. (J) A manipulation sequence of Jenga whipping task, where the robot needs to extract one Jenga piece from the tower without crashing it. (K) The robot is flipping the object in the pan to the opposite side.
> </details>



![](https://ai-paper-reviewer.com/2410.21845/figures_2_5.png)

> 🔼 Figure 3 shows a subset of the seven diverse manipulation tasks considered in the paper, showcasing various challenges such as dynamic manipulation, precision assembly and dual-arm coordination.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustrations of the tasks in our experiments. (A)-(E) A sequence of motherboard assembly tasks: SSD installation, RAM insertion, USB cable grasping and insertion into a slot and a clip, and booting up the computer to ensure motherboard functionality. (F) A manipulation sequence to assemble an IKEA furniture: the robot first assembles two side panels, then installs the top panel onto the mounted side panels. (G) A manipulation sequence to assemble a car dashboard, two robot arms first grasp the workpiece then align multiple pins to the slots. (H) Two arms performing a coordinated handover task. (I) Two arms performing a timing belt installation task. (J) A manipulation sequence of Jenga whipping task, where the robot needs to extract one Jenga piece from the tower without crashing it. (K) The robot is flipping the object in the pan to the opposite side.
> </details>



![](https://ai-paper-reviewer.com/2410.21845/figures_6_0.png)

> 🔼 The figure illustrates the system architecture of HIL-SERL, showing the interaction between the actor process, learner process, and replay buffers, as well as human intervention and data flow.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of HIL-SERL. This figure illustrates the architecture of HIL-SERL, which comprises three primary components: the actor process, the learner process, and replay buffers. These components communicate asynchronously to facilitate efficient data flow. The actor process receives updated policy parameters from the learner process, interacts with the environment, and sends collected interaction data to the replay buffers. The environment is modular, supporting various external devices and multiple robotic arms. A human operator can intervene via teleoperation tools, such as a SpaceMouse. The learner process samples data evenly from two replay buffers and updates the policy using RLPD. When gripper control is required, a grasp critic is additionally trained with DQN.
> </details>



![](https://ai-paper-reviewer.com/2410.21845/figures_10_0.png)

> 🔼 Figure 3 shows a subset of the seven diverse manipulation tasks used in the HIL-SERL experiments, including motherboard assembly, IKEA furniture assembly, car dashboard assembly, object handover, timing belt installation, Jenga whipping, and object flipping.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustrations of the tasks in our experiments. (A)-(E) A sequence of motherboard assembly tasks: SSD installation, RAM insertion, USB cable grasping and insertion into a slot and a clip, and booting up the computer to ensure motherboard functionality. (F) A manipulation sequence to assemble an IKEA furniture: the robot first assembles two side panels, then installs the top panel onto the mounted side panels. (G) A manipulation sequence to assemble a car dashboard, two robot arms first grasp the workpiece then align multiple pins to the slots. (H) Two arms performing a coordinated handover task. (I) Two arms performing a timing belt installation task. (J) A manipulation sequence of Jenga whipping task, where the robot needs to extract one Jenga piece from the tower without crashing it. (K) The robot is flipping the object in the pan to the opposite side.
> </details>



![](https://ai-paper-reviewer.com/2410.21845/figures_15_0.png)

> 🔼 Figure 3 shows a subset of the seven diverse tasks used in the experiments, illustrating the range of manipulation challenges addressed by the HIL-SERL system.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustrations of the tasks in our experiments. (A)-(E) A sequence of motherboard assembly tasks: SSD installation, RAM insertion, USB cable grasping and insertion into a slot and a clip, and booting up the computer to ensure motherboard functionality. (F) A manipulation sequence to assemble an IKEA furniture: the robot first assembles two side panels, then installs the top panel onto the mounted side panels. (G) A manipulation sequence to assemble a car dashboard, two robot arms first grasp the workpiece then align multiple pins to the slots. (H) Two arms performing a coordinated handover task. (I) Two arms performing a timing belt installation task. (J) A manipulation sequence of Jenga whipping task, where the robot needs to extract one Jenga piece from the tower without crashing it. (K) The robot is flipping the object in the pan to the opposite side.
> </details>



![](https://ai-paper-reviewer.com/2410.21845/figures_19_0.png)

> 🔼 Figure 7 shows the different control strategies learned by the RL agent for different tasks, highlighting the reactive and predictive behaviors used for precise and dynamic manipulation tasks respectively.
> <details>
> <summary>read the caption</summary>
> Figure 7: Reactive vs Predictive Behavior. (A-D) A sequence of reactive behaviors in the dashboard assembly task: after getting stuck in contact, the policy breaks the contact by quickly lifting two arms, then re-establishing the contact when approaching the target, finally succeeding in the insertion. (E) Variance plots from trained Gaussian policies in the RAM insertion task, showing three trajectories. Initial variance is high but rapidly decreases as the target is approached. (F) Mean plots from trained Gaussian policies in the RAM insertion task, with values ranging from -1 to 1. (G) Variance plots in the Jenga whipping task, remaining consistently low (near 0), indicating stable execution and open-loop behavior. (H) Mean plots in the Jenga whipping task, with values between -1 and 1, demonstrating consistent behavior across three trajectories.
> </details>



![](https://ai-paper-reviewer.com/2410.21845/figures_32_0.png)

> 🔼 The figure shows the hardware setup for the motherboard assembly task, including the robot, camera placements, and task arrangement.
> <details>
> <summary>read the caption</summary>
> Figure 8: Hardware setup for the motherboard assembly task.
> </details>



![](https://ai-paper-reviewer.com/2410.21845/figures_32_1.png)

> 🔼 The figure shows sample images from wrist cameras used as inputs for the policy in the RAM insertion task.
> <details>
> <summary>read the caption</summary>
> Figure 9: Sample input images from cameras used as inputs to the policy.
> </details>



![](https://ai-paper-reviewer.com/2410.21845/figures_34_0.png)

> 🔼 Figure 3 shows various experimental tasks including motherboard assembly, IKEA assembly, car dashboard assembly, object handover, timing belt installation, Jenga whipping, and object flipping.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustrations of the tasks in our experiments. (A)-(E) A sequence of motherboard assembly tasks: SSD installation, RAM insertion, USB cable grasping and insertion into a slot and a clip, and booting up the computer to ensure motherboard functionality. (F) A manipulation sequence to assemble an IKEA furniture: the robot first assembles two side panels, then installs the top panel onto the mounted side panels. (G) A manipulation sequence to assemble a car dashboard, two robot arms first grasp the workpiece then align multiple pins to the slots. (H) Two arms performing a coordinated handover task. (I) Two arms performing a timing belt installation task. (J) A manipulation sequence of Jenga whipping task, where the robot needs to extract one Jenga piece from the tower without crashing it. (K) The robot is flipping the object in the pan to the opposite side.
> </details>



![](https://ai-paper-reviewer.com/2410.21845/figures_34_1.png)

> 🔼 Figure 3 shows an overview of the seven diverse tasks used in the experiments, showcasing a range of manipulation challenges.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustrations of the tasks in our experiments. (A)-(E) A sequence of motherboard assembly tasks: SSD installation, RAM insertion, USB cable grasping and insertion into a slot and a clip, and booting up the computer to ensure motherboard functionality. (F) A manipulation sequence to assemble an IKEA furniture: the robot first assembles two side panels, then installs the top panel onto the mounted side panels. (G) A manipulation sequence to assemble a car dashboard, two robot arms first grasp the workpiece then align multiple pins to the slots. (H) Two arms performing a coordinated handover task. (I) Two arms performing a timing belt installation task. (J) A manipulation sequence of Jenga whipping task, where the robot needs to extract one Jenga piece from the tower without crashing it. (K) The robot is flipping the object in the pan to the opposite side.
> </details>



![](https://ai-paper-reviewer.com/2410.21845/figures_34_2.png)

> 🔼 Figure 3 shows a subset of the experimental tasks considered in the paper, including assembling complex devices, dual-arm coordination, and dynamic manipulation.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustrations of the tasks in our experiments. (A)-(E) A sequence of motherboard assembly tasks: SSD installation, RAM insertion, USB cable grasping and insertion into a slot and a clip, and booting up the computer to ensure motherboard functionality. (F) A manipulation sequence to assemble an IKEA furniture: the robot first assembles two side panels, then installs the top panel onto the mounted side panels. (G) A manipulation sequence to assemble a car dashboard, two robot arms first grasp the workpiece then align multiple pins to the slots. (H) Two arms performing a coordinated handover task. (I) Two arms performing a timing belt installation task. (J) A manipulation sequence of Jenga whipping task, where the robot needs to extract one Jenga piece from the tower without crashing it. (K) The robot is flipping the object in the pan to the opposite side.
> </details>



![](https://ai-paper-reviewer.com/2410.21845/figures_35_0.png)

> 🔼 Figure 3 shows a series of images illustrating the diverse set of dexterous manipulation tasks performed by the robot in the study.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustrations of the tasks in our experiments. (A)-(E) A sequence of motherboard assembly tasks: SSD installation, RAM insertion, USB cable grasping and insertion into a slot and a clip, and booting up the computer to ensure motherboard functionality. (F) A manipulation sequence to assemble an IKEA furniture: the robot first assembles two side panels, then installs the top panel onto the mounted side panels. (G) A manipulation sequence to assemble a car dashboard, two robot arms first grasp the workpiece then align multiple pins to the slots. (H) Two arms performing a coordinated handover task. (I) Two arms performing a timing belt installation task. (J) A manipulation sequence of Jenga whipping task, where the robot needs to extract one Jenga piece from the tower without crashing it. (K) The robot is flipping the object in the pan to the opposite side.
> </details>



![](https://ai-paper-reviewer.com/2410.21845/figures_36_0.png)

> 🔼 The figure shows sample input images from cameras used as inputs to the policy for the RAM insertion task, illustrating the cropping used to focus on task-relevant parts of the scene.
> <details>
> <summary>read the caption</summary>
> Figure 9: Sample input images from cameras used as inputs to the policy.
> </details>



![](https://ai-paper-reviewer.com/2410.21845/figures_37_0.png)

> 🔼 Figure 3 shows an overview of the seven diverse tasks used in the experiments, showcasing the range of manipulation challenges addressed by the HIL-SERL system.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustrations of the tasks in our experiments. (A)-(E) A sequence of motherboard assembly tasks: SSD installation, RAM insertion, USB cable grasping and insertion into a slot and a clip, and booting up the computer to ensure motherboard functionality. (F) A manipulation sequence to assemble an IKEA furniture: the robot first assembles two side panels, then installs the top panel onto the mounted side panels. (G) A manipulation sequence to assemble a car dashboard, two robot arms first grasp the workpiece then align multiple pins to the slots. (H) Two arms performing a coordinated handover task. (I) Two arms performing a timing belt installation task. (J) A manipulation sequence of Jenga whipping task, where the robot needs to extract one Jenga piece from the tower without crashing it. (K) The robot is flipping the object in the pan to the opposite side.
> </details>



![](https://ai-paper-reviewer.com/2410.21845/figures_40_0.png)

> 🔼 The figure shows the experimental setup for the car dashboard assembly task, including two robot arms, cameras, and the dashboard workpiece.
> <details>
> <summary>read the caption</summary>
> Figure 14: Hardware setup for the car dashboard installation task.
> </details>



![](https://ai-paper-reviewer.com/2410.21845/figures_41_0.png)

> 🔼 Figure 3 shows an overview of the seven diverse manipulation tasks considered in the paper, showcasing dynamic, precise, and dual-arm coordination skills.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustrations of the tasks in our experiments. (A)-(E) A sequence of motherboard assembly tasks: SSD installation, RAM insertion, USB cable grasping and insertion into a slot and a clip, and booting up the computer to ensure motherboard functionality. (F) A manipulation sequence to assemble an IKEA furniture: the robot first assembles two side panels, then installs the top panel onto the mounted side panels. (G) A manipulation sequence to assemble a car dashboard, two robot arms first grasp the workpiece then align multiple pins to the slots. (H) Two arms performing a coordinated handover task. (I) Two arms performing a timing belt installation task. (J) A manipulation sequence of Jenga whipping task, where the robot needs to extract one Jenga piece from the tower without crashing it. (K) The robot is flipping the object in the pan to the opposite side.
> </details>



![](https://ai-paper-reviewer.com/2410.21845/figures_41_1.png)

> 🔼 Figure 3 shows a subset of the seven diverse tasks used in the HIL-SERL experiments, showcasing the range of manipulation challenges addressed, including dynamic object manipulation, precise assembly, and dual-arm coordination.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustrations of the tasks in our experiments. (A)-(E) A sequence of motherboard assembly tasks: SSD installation, RAM insertion, USB cable grasping and insertion into a slot and a clip, and booting up the computer to ensure motherboard functionality. (F) A manipulation sequence to assemble an IKEA furniture: the robot first assembles two side panels, then installs the top panel onto the mounted side panels. (G) A manipulation sequence to assemble a car dashboard, two robot arms first grasp the workpiece then align multiple pins to the slots. (H) Two arms performing a coordinated handover task. (I) Two arms performing a timing belt installation task. (J) A manipulation sequence of Jenga whipping task, where the robot needs to extract one Jenga piece from the tower without crashing it. (K) The robot is flipping the object in the pan to the opposite side.
> </details>



![](https://ai-paper-reviewer.com/2410.21845/figures_41_2.png)

> 🔼 Figure 3 shows illustrations of seven diverse tasks used in the experiments, encompassing various manipulation challenges such as dynamic object manipulation, precise and delicate manipulation, and flexible object manipulation.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustrations of the tasks in our experiments. (A)-(E) A sequence of motherboard assembly tasks: SSD installation, RAM insertion, USB cable grasping and insertion into a slot and a clip, and booting up the computer to ensure motherboard functionality. (F) A manipulation sequence to assemble an IKEA furniture: the robot first assembles two side panels, then installs the top panel onto the mounted side panels. (G) A manipulation sequence to assemble a car dashboard, two robot arms first grasp the workpiece then align multiple pins to the slots. (H) Two arms performing a coordinated handover task. (I) Two arms performing a timing belt installation task. (J) A manipulation sequence of Jenga whipping task, where the robot needs to extract one Jenga piece from the tower without crashing it. (K) The robot is flipping the object in the pan to the opposite side.
> </details>



![](https://ai-paper-reviewer.com/2410.21845/figures_42_0.png)

> 🔼 The figure shows the experimental setup for the object handover task, including two robot arms, wrist cameras, a side camera, and two baskets.
> <details>
> <summary>read the caption</summary>
> Figure 16: Hardware setup for the object handover task.
> </details>



![](https://ai-paper-reviewer.com/2410.21845/figures_42_1.png)

> 🔼 Figure 3 shows a subset of the experimental tasks considered in the paper, including assembly tasks, dual-arm coordination, and dynamic manipulation tasks.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustrations of the tasks in our experiments. (A)-(E) A sequence of motherboard assembly tasks: SSD installation, RAM insertion, USB cable grasping and insertion into a slot and a clip, and booting up the computer to ensure motherboard functionality. (F) A manipulation sequence to assemble an IKEA furniture: the robot first assembles two side panels, then installs the top panel onto the mounted side panels. (G) A manipulation sequence to assemble a car dashboard, two robot arms first grasp the workpiece then align multiple pins to the slots. (H) Two arms performing a coordinated handover task. (I) Two arms performing a timing belt installation task. (J) A manipulation sequence of Jenga whipping task, where the robot needs to extract one Jenga piece from the tower without crashing it. (K) The robot is flipping the object in the pan to the opposite side.
> </details>



![](https://ai-paper-reviewer.com/2410.21845/figures_44_0.png)

> 🔼 The figure shows the system architecture of HIL-SERL, illustrating the communication flow between the actor process, learner process, and replay buffers, highlighting the modular design and human intervention capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of HIL-SERL. This figure illustrates the architecture of HIL-SERL, which comprises three primary components: the actor process, the learner process, and replay buffers. These components communicate asynchronously to facilitate efficient data flow. The actor process receives updated policy parameters from the learner process, interacts with the environment, and sends collected interaction data to the replay buffers. The environment is modular, supporting various external devices and multiple robotic arms. A human operator can intervene via teleoperation tools, such as a SpaceMouse. The learner process samples data evenly from two replay buffers and updates the policy using RLPD. When gripper control is required, a grasp critic is additionally trained with DQN.
> </details>



![](https://ai-paper-reviewer.com/2410.21845/figures_44_1.png)

> 🔼 The figure shows sample input images from cameras used as inputs to the policy for the car dashboard assembly task, including close-up wrist views and a wider side view.
> <details>
> <summary>read the caption</summary>
> Figure 15: Sample input images from cameras used as inputs to the policy.
> </details>



![](https://ai-paper-reviewer.com/2410.21845/figures_46_0.png)

> 🔼 The figure shows the hardware setup for the Jenga whipping task, including a robot arm, wrist camera, and side camera positioned to observe the Jenga tower.
> <details>
> <summary>read the caption</summary>
> Figure 20: Hardware setup for the Jenga whipping task.
> </details>



![](https://ai-paper-reviewer.com/2410.21845/figures_46_1.png)

> 🔼 Figure 3 shows a collage of images illustrating the seven diverse dexterous manipulation tasks used to evaluate the proposed human-in-the-loop reinforcement learning system.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustrations of the tasks in our experiments. (A)-(E) A sequence of motherboard assembly tasks: SSD installation, RAM insertion, USB cable grasping and insertion into a slot and a clip, and booting up the computer to ensure motherboard functionality. (F) A manipulation sequence to assemble an IKEA furniture: the robot first assembles two side panels, then installs the top panel onto the mounted side panels. (G) A manipulation sequence to assemble a car dashboard, two robot arms first grasp the workpiece then align multiple pins to the slots. (H) Two arms performing a coordinated handover task. (I) Two arms performing a timing belt installation task. (J) A manipulation sequence of Jenga whipping task, where the robot needs to extract one Jenga piece from the tower without crashing it. (K) The robot is flipping the object in the pan to the opposite side.
> </details>



![](https://ai-paper-reviewer.com/2410.21845/figures_46_2.png)

> 🔼 Figure 3 shows an overview of the various experimental tasks performed by the robotic system, including motherboard assembly, IKEA furniture assembly, car dashboard assembly, object handover, timing belt installation, Jenga whipping, and object flipping.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustrations of the tasks in our experiments. (A)-(E) A sequence of motherboard assembly tasks: SSD installation, RAM insertion, USB cable grasping and insertion into a slot and a clip, and booting up the computer to ensure motherboard functionality. (F) A manipulation sequence to assemble an IKEA furniture: the robot first assembles two side panels, then installs the top panel onto the mounted side panels. (G) A manipulation sequence to assemble a car dashboard, two robot arms first grasp the workpiece then align multiple pins to the slots. (H) Two arms performing a coordinated handover task. (I) Two arms performing a timing belt installation task. (J) A manipulation sequence of Jenga whipping task, where the robot needs to extract one Jenga piece from the tower without crashing it. (K) The robot is flipping the object in the pan to the opposite side.
> </details>



![](https://ai-paper-reviewer.com/2410.21845/figures_48_0.png)

> 🔼 The figure shows the experimental setup for the object flipping task, including a robot arm, wrist camera, side camera, and a pan with an egg.
> <details>
> <summary>read the caption</summary>
> Figure 22: Hardware setup for the object flipping task.
> </details>



![](https://ai-paper-reviewer.com/2410.21845/figures_48_1.png)

> 🔼 The figure shows sample images from wrist and side cameras used as inputs to the policy for the object flipping task.
> <details>
> <summary>read the caption</summary>
> Figure 23: Sample input images from cameras used as inputs to the policy.
> </details>



![](https://ai-paper-reviewer.com/2410.21845/figures_50_0.png)

> 🔼 Figure 3 shows a subset of the seven diverse tasks considered in the paper, illustrating the range of dexterity and dynamics involved.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustrations of the tasks in our experiments. (A)-(E) A sequence of motherboard assembly tasks: SSD installation, RAM insertion, USB cable grasping and insertion into a slot and a clip, and booting up the computer to ensure motherboard functionality. (F) A manipulation sequence to assemble an IKEA furniture: the robot first assembles two side panels, then installs the top panel onto the mounted side panels. (G) A manipulation sequence to assemble a car dashboard, two robot arms first grasp the workpiece then align multiple pins to the slots. (H) Two arms performing a coordinated handover task. (I) Two arms performing a timing belt installation task. (J) A manipulation sequence of Jenga whipping task, where the robot needs to extract one Jenga piece from the tower without crashing it. (K) The robot is flipping the object in the pan to the opposite side.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.21845/charts_18_0.png)

> 🔼 Figure 6 shows the heatmaps of state visitations, Q-value variance, and Q-values across different training stages for both HIL-SERL and DAgger, illustrating the policy learning process and its robustness.
> <details>
> <summary>read the caption</summary>
> Figure 6: Visualization of policy training dynamics. (A) State visitation heatmaps during HIL-SERL training: The policy progressively forms a “funnel
> </details>


![](https://ai-paper-reviewer.com/2410.21845/charts_54_0.png)

> 🔼 The chart displays the learning curves of HIL-SERL and HG-DAgger across several tasks, illustrating the success rate, cycle time, and intervention rate over training time.
> <details>
> <summary>read the caption</summary>
> Figure 4: Learning curves for experimental tasks. This figure presents the success rate, cycle time, and intervention rates for both HIL-SERL and DAgger across few representative tasks, displayed as a running average over 20 episodes. For HIL-SERL, the success rate increased rapidly throughout training, eventually reaching 100%, while the intervention rate and cycle time progressively decreased, with the intervention rate ultimately reaching 0%. For HG-DAgger, the success rate fluctuates throughout training episodes and does not necessarily increase as training progresses. Since interventions occur frequently, leading to successful outcomes, the true policy success rate is likely lower than the curve suggests. Additionally, the intervention rate does not consistently decrease over time, indicating that the policy is not steadily improving. This is reflected in the cycle time as well, which shows no improvement, as DAgger lacks a mechanism to enhance performance beyond the provided training data. Additional plots are available in the supplementary material.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>Task</td><td>DP</td><td>HG-DAgger</td><td>BC</td><td>IBRL</td><td>Residual RL</td><td>DAPG</td><td>HIL-SERL no demo no itv</td><td>HIL-SERL no itv</td><td>HIL-SERL (ours)</td></tr><tr><td>RAM Insertion</td><td>27</td><td>29</td><td>12</td><td>75</td><td>0</td><td>8</td><td>0</td><td>48</td><td>100</td></tr><tr><td>Dashboard Assembly</td><td>18</td><td>41</td><td>35</td><td>0</td><td>0</td><td>18</td><td>0</td><td>0</td><td>100</td></tr><tr><td>Object Flipping</td><td>56</td><td>46</td><td>46</td><td>95</td><td>97</td><td>72</td><td>0</td><td>100</td><td>100</td></tr><tr><td>Average</td><td>34</td><td>39</td><td>31</td><td>57</td><td>32</td><td>33</td><td>0</td><td>49</td><td>100</td></tr></table>{{< /table-caption >}}
> 🔼 This table compares the performance of HIL-SERL against imitation learning and other state-of-the-art reinforcement learning methods across several robotic manipulation tasks, showing success rates, cycle times, and training times.
> <details>
> <summary>read the caption</summary>
> Table 1: Experiment results. (a) HIL-SERL against imitation learning baselines. (b) HIL-SERL against various other baselines.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:18px'><tr><td>Parameter</td><td>Value</td></tr><tr><td>Observation space</td><td>wrist_1, wrist_ 2, tcp_pose, tcp_vel, tcp_f/t</td></tr><tr><td>Action space</td><td>6D twist</td></tr><tr><td>Reward function</td><td>Binary classifier</td></tr><tr><td>Classifier views</td><td>wrist_1, wrist_2,</td></tr><tr><td>Classifier accuracy</td><td>97%</td></tr><tr><td>Initial offline demonstrations</td><td>20</td></tr><tr><td>Environment update frequency</td><td>10 HZ</td></tr><tr><td>Max episode length</td><td>100 environment steps</td></tr><tr><td>Reset method</td><td>Scripted reset</td></tr><tr><td>Randomization range</td><td>4 cm in x and y, 6 deg in rz</td></tr><tr><td>Proprio encoder size</td><td>64</td></tr><tr><td>Policy MLP size</td><td>256x256</td></tr><tr><td>Total number of RL transitions</td><td>32000</td></tr><tr><td>Discount factor</td><td>0.97</td></tr><tr><td>Optimizer</td><td>Adam</td></tr><tr><td>Learning rate</td><td>3e-4</td></tr><tr><td>Image augmentation</td><td>Random crop</td></tr></table>{{< /table-caption >}}
> 🔼 This table presents a comparison of HIL-SERL’s performance against imitation learning and other state-of-the-art reinforcement learning methods across several dexterous robotic manipulation tasks, showing success rates, cycle times, and training times.
> <details>
> <summary>read the caption</summary>
> Table 1: Experiment results. (a) HIL-SERL against imitation learning baselines. (b) HIL-SERL against various other baselines.
> </details>

{{< table-caption >}}
<table id='14' style='font-size:18px'><tr><td>Parameter</td><td>Value</td></tr><tr><td>Observation space</td><td>wrist_1, wrist_2, side_2, tcp_pose, tcp_vel, tcp_f/t</td></tr><tr><td>Action space</td><td>6D twist</td></tr><tr><td>Reward function</td><td>Binary Classifier</td></tr><tr><td>Classifier views</td><td>wrist_1, wrist_2, side_2</td></tr><tr><td>Classifier accuracy</td><td>95%</td></tr><tr><td>Initial offline demonstrations</td><td>20</td></tr><tr><td>Environment update frequency</td><td>10 HZ</td></tr><tr><td>Max episode length</td><td>100 environment steps</td></tr><tr><td>Reset method</td><td>Scripted reset</td></tr><tr><td>Randomization range</td><td>2 cm in x and y, 1 deg in rz</td></tr><tr><td>Proprio encoder size</td><td>64</td></tr><tr><td>Policy MLP size</td><td>256x256</td></tr><tr><td>Total number of RL transitions</td><td>21000</td></tr><tr><td>Discount factor</td><td>0.97</td></tr><tr><td>Optimizer</td><td>Adam</td></tr><tr><td>Learning rate</td><td>3e-4</td></tr><tr><td>Image augmentation</td><td>Random crop</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents a comparison of HIL-SERL's performance against imitation learning and other state-of-the-art reinforcement learning methods across several robotic manipulation tasks, showing success rates, cycle times, and training times.
> <details>
> <summary>read the caption</summary>
> Table 1: Experiment results. (a) HIL-SERL against imitation learning baselines. (b) HIL-SERL against various other baselines.
> </details>

{{< table-caption >}}
<table id='13' style='font-size:18px'><tr><td>Parameter</td><td>Value</td></tr><tr><td>Observation space</td><td>wrist_ 1, wrist_2, side_1, tcp_pose, tcp_vel, tcp_f/t, gripper_pos</td></tr><tr><td>Action space</td><td>6D twist and 1D discrete gripper control</td></tr><tr><td>Reward function</td><td>Binary classifier</td></tr><tr><td>Classifier views</td><td>side_1</td></tr><tr><td>Classifier accuracy</td><td>96%</td></tr><tr><td>Initial offline demonstrations</td><td>20</td></tr><tr><td>Environment update frequency</td><td>10 HZ</td></tr><tr><td>Max episode length</td><td>120 environment steps</td></tr><tr><td>Reset method</td><td>Scripted reset</td></tr><tr><td>Randomization range</td><td>2 cm in x and y, 10 deg in rz</td></tr><tr><td>Proprio encoder size</td><td>64</td></tr><tr><td>Motion policy MLP size</td><td>256x256</td></tr><tr><td>Grasp critic MLP size</td><td>256x256</td></tr><tr><td>Total number of RL transitions</td><td>50000</td></tr><tr><td>Discount factor</td><td>0.98</td></tr><tr><td>Optimizer</td><td>Adam</td></tr><tr><td>Learning rate</td><td>3e-4</td></tr><tr><td>Image augmentation</td><td>Random crop</td></tr></table>{{< /table-caption >}}
> 🔼 This table compares the performance of HIL-SERL against imitation learning and other state-of-the-art RL methods across multiple robotic manipulation tasks, showing success rates, cycle times, and training times.
> <details>
> <summary>read the caption</summary>
> Table 1: Experiment results. (a) HIL-SERL against imitation learning baselines. (b) HIL-SERL against various other baselines.
> </details>

{{< table-caption >}}
<table id='9' style='font-size:16px'><tr><td>Parameter</td><td>Value</td></tr><tr><td>Observation space</td><td>wrist_ 1, wrist_2, tcp_pose, tcp_vel, tcp_f/t, gripper_pos</td></tr><tr><td>Action space</td><td>6D twist and 1D discrete gripper control</td></tr><tr><td>Reward function</td><td>Binary classifier</td></tr><tr><td>Classifier views</td><td>wrist_1, wrist_2</td></tr><tr><td>Classifier accuracy</td><td>97%</td></tr><tr><td>Initial offline demonstrations</td><td>20</td></tr><tr><td>Environment update frequency</td><td>10 HZ</td></tr><tr><td>Max episode length</td><td>120 environment steps</td></tr><tr><td>Reset method</td><td>Human reset</td></tr><tr><td>Randomization range</td><td>4 cm in x and y, 10 deg in rz</td></tr><tr><td>Proprio encoder size</td><td>64</td></tr><tr><td>Motion policy MLP size</td><td>256x256</td></tr><tr><td>Grasp critic MLP size</td><td>256x256</td></tr><tr><td>Total number of RL transitions</td><td>28000</td></tr><tr><td>Discount factor</td><td>0.98</td></tr><tr><td>Optimizer</td><td>Adam</td></tr><tr><td>Learning rate</td><td>3e-4</td></tr><tr><td>Image augmentation</td><td>Random crop</td></tr></table>{{< /table-caption >}}
> 🔼 This table compares the performance of HIL-SERL against imitation learning and other state-of-the-art reinforcement learning methods across several robotic manipulation tasks, showing HIL-SERL's superior performance in terms of success rate and cycle time.
> <details>
> <summary>read the caption</summary>
> Table 1: Experiment results. (a) HIL-SERL against imitation learning baselines. (b) HIL-SERL against various other baselines.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:20px'><tr><td>Parameter</td><td>Value</td></tr><tr><td>Observation space for side panel 1</td><td>wrist_1, side_1, side_2, tcp_pose, tcp_vel, tcp_f/t</td></tr><tr><td>Observation space for side panel 2</td><td>wrist_2, side_3, side_4, tcp_pose, tcp_vel, tcp_f/t</td></tr><tr><td>Action space</td><td>12D twist</td></tr><tr><td>Reward function</td><td>Binary Classifier</td></tr><tr><td>Classifier views for panel 1</td><td>side_1, side_2</td></tr><tr><td>Classifier views for panel 2</td><td>side_3, side_4</td></tr><tr><td>Classifier accuracy</td><td>97%</td></tr><tr><td>Initial offline demonstrations</td><td>20</td></tr><tr><td>Environment update frequency</td><td>10 HZ</td></tr><tr><td>Max episode length</td><td>100 environment steps</td></tr><tr><td>Reset method</td><td>Scripted reset</td></tr><tr><td>Randomization range</td><td>8 cm in X, y, 1 deg in rz</td></tr><tr><td>Proprio encoder size</td><td>64</td></tr><tr><td>Policy MLP size</td><td>256x256</td></tr><tr><td>Total number of RL transitions for panel 1</td><td>31000</td></tr><tr><td>Total number of RL transitions for panel 2</td><td>36000</td></tr><tr><td>Discount factor</td><td>0.98</td></tr><tr><td>Optimizer</td><td>Adam</td></tr><tr><td>Learning rate</td><td>3e-4</td></tr><tr><td>Image augmentation</td><td>Random crop</td></tr></table>{{< /table-caption >}}
> 🔼 This table compares the performance of HIL-SERL against imitation learning and other state-of-the-art reinforcement learning baselines across several robotic manipulation tasks, showing success rates, cycle times, and training times.
> <details>
> <summary>read the caption</summary>
> Table 1: Experiment results. (a) HIL-SERL against imitation learning baselines. (b) HIL-SERL against various other baselines.
> </details>

{{< table-caption >}}
<table id='5' style='font-size:18px'><tr><td>Parameter</td><td>Value</td></tr><tr><td>Observation space</td><td>side_1, side_3, side_4, tcp_pose, tcp_vel, tcp_f/t</td></tr><tr><td>Action space</td><td>12D twist</td></tr><tr><td>Reward function</td><td>Binary Classifier</td></tr><tr><td>Classifier views</td><td>side_1, side_3, side_4</td></tr><tr><td>Classifier accuracy</td><td>95%</td></tr><tr><td>Initial offline demonstrations</td><td>20</td></tr><tr><td>Environment update frequency</td><td>10 HZ</td></tr><tr><td>Max episode length</td><td>150 environment steps</td></tr><tr><td>Reset method</td><td>Scripted reset</td></tr><tr><td>Randomization range</td><td>3 cm in X, y</td></tr><tr><td>Proprio encoder size</td><td>64</td></tr><tr><td>Policy MLP size</td><td>256x256</td></tr><tr><td>Total number of RL transitions</td><td>18000</td></tr><tr><td>Discount factor</td><td>0.97</td></tr><tr><td>Optimizer</td><td>Adam</td></tr><tr><td>Learning rate</td><td>3e-4</td></tr><tr><td>Image augmentation</td><td>Random crop</td></tr></table>{{< /table-caption >}}
> 🔼 This table compares the performance of HIL-SERL against imitation learning and other state-of-the-art reinforcement learning methods across various robotic manipulation tasks, showing success rates, cycle times, and training times.
> <details>
> <summary>read the caption</summary>
> Table 1: Experiment results. (a) HIL-SERL against imitation learning baselines. (b) HIL-SERL against various other baselines.
> </details>

{{< table-caption >}}
<table id='8' style='font-size:16px'><tr><td>Parameter</td><td>Value</td></tr><tr><td>Observation space</td><td>wrist_1, wrist_2, side, tcp_pose, tcp_vel, tcp_f/t, gripper_pos</td></tr><tr><td>Action space</td><td>12D twist and 1D discrete gripper control</td></tr><tr><td>Reward function</td><td>Binary classifier</td></tr><tr><td>Classifier views</td><td>wrist_1, wrist_2, side</td></tr><tr><td>Classifier accuracy</td><td>98%</td></tr><tr><td>Initial offline demonstrations</td><td>20</td></tr><tr><td>Environment update frequency</td><td>10 HZ</td></tr><tr><td>Max episode length</td><td>200 environment steps</td></tr><tr><td>Reset method</td><td>Human reset</td></tr><tr><td>Randomization range</td><td>2 cm in x and y</td></tr><tr><td>Proprio encoder size</td><td>64</td></tr><tr><td>Motion policy MLP size</td><td>256x256</td></tr><tr><td>Grasp critic MLP size</td><td>256x256</td></tr><tr><td>Total number of RL transitions</td><td>36000</td></tr><tr><td>Discount factor</td><td>0.97</td></tr><tr><td>Optimizer</td><td>Adam</td></tr><tr><td>Learning rate</td><td>3e-4</td></tr><tr><td>Image augmentation</td><td>Random crop</td></tr></table>{{< /table-caption >}}
> 🔼 This table compares the performance of HIL-SERL against imitation learning and other state-of-the-art reinforcement learning methods across several robotic manipulation tasks, showing HIL-SERL's superior success rate and faster cycle times.
> <details>
> <summary>read the caption</summary>
> Table 1: Experiment results. (a) HIL-SERL against imitation learning baselines. (b) HIL-SERL against various other baselines.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:20px'><tr><td>Parameter</td><td>Value</td></tr><tr><td>Observation space</td><td>wrist_ 1, wrist_2, side, tcp_pose, tcp_vel, gripper_pos</td></tr><tr><td>Action space</td><td>12D twist and 1D discrete gripper control</td></tr><tr><td>Reward function</td><td>Binary classifier</td></tr><tr><td>Classifier views</td><td>side</td></tr><tr><td>Classifier accuracy</td><td>99%</td></tr><tr><td>Initial offline demonstrations</td><td>20</td></tr><tr><td>Environment update frequency</td><td>10 HZ</td></tr><tr><td>Max episode length</td><td>200 environment steps</td></tr><tr><td>Reset method</td><td>Human reset</td></tr><tr><td>Randomization range</td><td>None</td></tr><tr><td>Proprio encoder size</td><td>64</td></tr><tr><td>Motion policy MLP size</td><td>256x256</td></tr><tr><td>Grasp critic MLP size</td><td>256x256</td></tr><tr><td>Total number of RL transitions</td><td>43000</td></tr><tr><td>Discount factor</td><td>0.97</td></tr><tr><td>Optimizer</td><td>Adam</td></tr><tr><td>Learning rate</td><td>3e-4</td></tr><tr><td>Image augmentation</td><td>Random crop</td></tr></table>{{< /table-caption >}}
> 🔼 This table presents a comparison of HIL-SERL's performance against imitation learning and other state-of-the-art reinforcement learning methods across several robotic manipulation tasks, highlighting the impact of human interventions and various design choices.
> <details>
> <summary>read the caption</summary>
> Table 1: Experiment results. (a) HIL-SERL against imitation learning baselines. (b) HIL-SERL against various other baselines.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:18px'><tr><td>Parameter</td><td>Value</td></tr><tr><td>Observation space</td><td>wrist_1, wrist_ 2, side 1, side_2, tcp_pose, tcp_vel, tcp_f/t</td></tr><tr><td>Action space</td><td>12D twist</td></tr><tr><td>Reward function</td><td>Binary classifier</td></tr><tr><td>Classifier views</td><td>side_1, side_2</td></tr><tr><td>Classifier accuracy</td><td>96%</td></tr><tr><td>Initial offline demonstrations</td><td>20</td></tr><tr><td>Environment update frequency</td><td>10 HZ</td></tr><tr><td>Max episode length</td><td>200 environment steps</td></tr><tr><td>Reset method</td><td>Human reset</td></tr><tr><td>Randomization range</td><td>2 cm in x and y</td></tr><tr><td>Proprio encoder size</td><td>64</td></tr><tr><td>Policy MLP size</td><td>256x256</td></tr><tr><td>Total number of RL transitions</td><td>108000</td></tr><tr><td>Discount factor</td><td>0.97</td></tr><tr><td>Optimizer</td><td>Adam</td></tr><tr><td>Learning rate</td><td>3e-4</td></tr><tr><td>Image augmentation</td><td>Random crop</td></tr></table>{{< /table-caption >}}
> 🔼 This table compares the performance of HIL-SERL against several baselines (imitation learning and other RL methods) across multiple dexterous manipulation tasks, showing success rates, cycle times, and training time.
> <details>
> <summary>read the caption</summary>
> Table 1: Experiment results. (a) HIL-SERL against imitation learning baselines. (b) HIL-SERL against various other baselines.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:20px'><tr><td>Parameter</td><td>Value</td></tr><tr><td>Observation space</td><td>wrist, global, tcp_pose, tcp_ vel, 9, dq</td></tr><tr><td>Action space</td><td>Feedforward wrench Fx, Fz, Tz</td></tr><tr><td>Reward function</td><td>Human annotation in the end of an episode</td></tr><tr><td>Environment update frequency</td><td>10 HZ</td></tr><tr><td>Max episode length</td><td>20 environment steps</td></tr><tr><td>Reset method</td><td>Human reset</td></tr><tr><td>Randomization range</td><td>None</td></tr><tr><td>Initial offline demonstrations</td><td>30</td></tr><tr><td>Proprio encoder size</td><td>64</td></tr><tr><td>Policy MLP size</td><td>256x256</td></tr><tr><td>Total number of RL transitions</td><td>10000</td></tr><tr><td>Discount factor</td><td>0.96, but every episode was run to maximum length</td></tr><tr><td>Optimizer</td><td>Adam</td></tr><tr><td>Learning rate</td><td>3e-4, decayed to 3e-5 when reaching 70% success rate</td></tr><tr><td>Image augmentation</td><td>Random crop</td></tr></table>{{< /table-caption >}}
> 🔼 This table compares the performance of HIL-SERL against imitation learning and other state-of-the-art reinforcement learning baselines across several robotic manipulation tasks, showing success rates, cycle times, and training times.
> <details>
> <summary>read the caption</summary>
> Table 1: Experiment results. (a) HIL-SERL against imitation learning baselines. (b) HIL-SERL against various other baselines.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:20px'><tr><td>Parameter</td><td>Value</td></tr><tr><td>Observation space</td><td>wrist, side, tcp_pose, tcp_vel, 9, dq</td></tr><tr><td>Action space</td><td>Feedforward wrench Fx, Fz, Ty</td></tr><tr><td>Reward function</td><td>Binary classifier</td></tr><tr><td>Classifier views</td><td>wrist</td></tr><tr><td>Classifier accuracy</td><td>97%</td></tr><tr><td>Initial offline demonstrations</td><td>20</td></tr><tr><td>Environment update frequency</td><td>10 HZ</td></tr><tr><td>Max episode length</td><td>100 environment steps</td></tr><tr><td>Reset method</td><td>Scripted reset</td></tr><tr><td>Randomization range</td><td>None</td></tr><tr><td>Proprio encoder size</td><td>64</td></tr><tr><td>Policy MLP size</td><td>256x256</td></tr><tr><td>Total number of RL transitions</td><td>25000</td></tr><tr><td>Discount factor</td><td>0.985</td></tr><tr><td>Optimizer</td><td>Adam</td></tr><tr><td>Learning rate</td><td>3e-4</td></tr><tr><td>Image augmentation</td><td>Random crop</td></tr></table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the success rates, cycle times, and training times of HIL-SERL against imitation learning and other state-of-the-art reinforcement learning baselines across seven different dexterous robotic manipulation tasks.
> <details>
> <summary>read the caption</summary>
> Table 1: Experiment results. (a) HIL-SERL against imitation learning baselines. (b) HIL-SERL against various other baselines.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>Task Name</td><td>Number of Demos</td><td>Observation Chunking Size</td><td>Action Prediction Horizon</td><td>Action Chunking Size</td></tr><tr><td>RAM Insertion</td><td>200</td><td>1</td><td>8</td><td>2</td></tr><tr><td>Dashboard Assembly</td><td>200</td><td>1</td><td>8</td><td>4</td></tr><tr><td>Object Flipping</td><td>200</td><td>1</td><td>1</td><td>1</td></tr></table>{{< /table-caption >}}
> 🔼 This table compares the performance of HIL-SERL against several imitation learning and other state-of-the-art reinforcement learning baselines across multiple robotic manipulation tasks, showcasing its superior success rate and efficiency.
> <details>
> <summary>read the caption</summary>
> Table 1: Experiment results. (a) HIL-SERL against imitation learning baselines. (b) HIL-SERL against various other baselines.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.21845/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/25.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/26.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/27.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/28.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/29.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/30.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/31.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/32.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/33.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/34.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/35.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/36.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/37.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/38.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/39.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/40.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/41.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/42.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/43.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/44.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/45.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/46.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/47.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/48.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/49.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/50.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/51.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/52.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/53.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21845/54.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}