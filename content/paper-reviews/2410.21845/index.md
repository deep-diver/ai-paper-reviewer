---
title: "Precise and Dexterous Robotic Manipulation via Human-in-the-Loop Reinforcement Learning"
summary: "Human-in-the-loop RL enables robots to master complex manipulation tasks with near-perfect success rates and superhuman speed, exceeding prior methods."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Robotics", "🏢 UC Berkeley",]
showSummary: true
date: 2024-10-29
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2410.21845 {{< /keyword >}}
{{< keyword icon="writer" >}} Jianlan Luo et el. {{< /keyword >}}
 
{{< keyword icon="hf-logo" >}} 2024-10-30 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2410.21845" target="_self" >}}
↗ arXiv
{{< /button >}}
&nbsp; 
{{< button href="https://huggingface.co/papers/2410.21845" target="_self" >}}
↗ Hugging Face
{{< /button >}}

### TL;DR


{{< lead >}}

Real-world robotic manipulation is challenging due to sample inefficiency and optimization difficulties in reinforcement learning (RL).  Hand-designed controllers often lack the adaptability needed for complex tasks, while imitation learning methods struggle to generalize well.  



The paper introduces HIL-SERL, a human-in-the-loop vision-based RL system to overcome these issues.  By integrating human demonstrations and corrections with efficient RL algorithms and thoughtful system design, HIL-SERL achieves near-perfect success rates on complex tasks, outperforming existing methods by a significant margin.  The framework demonstrates the practicality of vision-based RL for real-world manipulation and offers valuable insights into effective RL strategies for complex tasks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} **A novel human-in-the-loop reinforcement learning system (HIL-SERL) achieves impressive performance on diverse dexterous manipulation tasks.** {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} **HIL-SERL significantly outperforms imitation learning and prior RL approaches in both success rate and speed, learning robust policies within practical training times.** {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} **The study provides valuable insights into the effectiveness of human feedback and sample-efficient RL algorithms for real-world robotic manipulation.** {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**This paper is highly important** for researchers in robotics and machine learning because it presents a novel human-in-the-loop reinforcement learning system that achieves near-perfect success rates in real-world dexterous manipulation tasks, significantly outperforming prior methods. Its sample efficiency and focus on real-world application makes it highly relevant to current trends in robotics research.  The integrated approach and design choices open new avenues for research on efficient and reliable RL in complex, real-world settings.

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.21845/figures_32_1.png)

> 🔼 The figure shows sample input images from cameras used as inputs to the policy for the RAM insertion task, illustrating the cropped images focusing on task-relevant parts of the scene.
> <details>
> <summary>read the caption</summary>
> Figure 9: Sample input images from cameras used as inputs to the policy.
> </details>







{{< table-caption >}}
<table id='1' style='font-size:16px'><tr><td rowspan="2">Task</td><td rowspan="2">Training Time (h)</td><td colspan="2">Success Rate (%)</td><td colspan="2">Cycle Time (s)</td></tr><tr><td>BC</td><td>HIL-SERL (ours)</td><td>BC</td><td>HIL-SERL (ours)</td></tr><tr><td>RAM Insertion</td><td>1.5</td><td>29</td><td>100 (+245%)</td><td>8.3</td><td>4.8 (1.7x faster)</td></tr><tr><td>SSD Assembly</td><td>1</td><td>79</td><td>100 (+27%)</td><td>6.7</td><td>3.3 (2x faster)</td></tr><tr><td>USB Grasp-Insertion</td><td>2.5</td><td>26</td><td>100 (+285%)</td><td>13.4</td><td>6.7 (2x faster)</td></tr><tr><td>Cable Clipping</td><td>1.25</td><td>95</td><td>100 (+5%)</td><td>7.2</td><td>4.2 (1.7x faster)</td></tr><tr><td>IKEA - Side Panel 1</td><td>2</td><td>77</td><td>100 (+30%)</td><td>6.5</td><td>2.7 (2.4x faster)</td></tr><tr><td>IKEA - Side Panel 2</td><td>1.75</td><td>79</td><td>100 (+27%)</td><td>5.0</td><td>2.4 (2.1x faster)</td></tr><tr><td>IKEA - Top Panel</td><td>1</td><td>35</td><td>100 (+186%)</td><td>8.9</td><td>2.4 (3.7x faster)</td></tr><tr><td>IKEA - Whole Assembly</td><td>-</td><td>1/10</td><td>10/10 (+900%)</td><td>-</td><td>-</td></tr><tr><td>Car Dashboard Assembly</td><td>2</td><td>41</td><td>100 (+144%)</td><td>20.3</td><td>8.8 (2.3x faster)</td></tr><tr><td>Object Handover</td><td>2.5</td><td>79</td><td>100 (+27%)</td><td>16.1</td><td>13.6 (1.2x faster)</td></tr><tr><td>Timing Belt Assembly</td><td>6</td><td>2</td><td>100 (+4900%)</td><td>9.1</td><td>7.2 (1.3x faster)</td></tr><tr><td>Jenga Whipping</td><td>1.25</td><td>8</td><td>100 (+1150%)</td><td>-</td><td>-</td></tr><tr><td>Object Flipping</td><td>1</td><td>46</td><td>100 (+117%)</td><td>3.9</td><td>3.8 (1.03x faster)</td></tr><tr><td>Average</td><td>-</td><td>49.7</td><td>100 (+101%)</td><td>9.6</td><td>5.4 (1.8x faster)</td></tr></table>{{< /table-caption >}}

> 🔼 The table summarizes the success rates, cycle times, and training times of HIL-SERL and several baseline methods across various dexterous robotic manipulation tasks.
> <details>
> <summary>read the caption</summary>
> Table 1: Experiment results. (a) HIL-SERL against imitation learning baselines. (b) HIL-SERL against various other baselines.
> </details>





### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.21845/figures_37_0.png)

> 🔼 The figure shows the hardware setup for the IKEA furniture assembly task, including the robot arms, cameras and the work piece.
> <details>
> <summary>read the caption</summary>
> Figure 13: Hardware setup for the IKEA furniture assembly task.
> </details>



![](https://ai-paper-reviewer.com/2410.21845/figures_46_0.png)

> 🔼 The figure shows the hardware setup for the Jenga whipping task, including the robot arm, wrist camera, side camera, and the Jenga tower.
> <details>
> <summary>read the caption</summary>
> Figure 20: Hardware setup for the Jenga whipping task.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>Task</td><td>DP</td><td>HG-DAgger</td><td>BC</td><td>IBRL</td><td>Residual RL</td><td>DAPG</td><td>HIL-SERL no demo no itv</td><td>HIL-SERL no itv</td><td>HIL-SERL (ours)</td></tr><tr><td>RAM Insertion</td><td>27</td><td>29</td><td>12</td><td>75</td><td>0</td><td>8</td><td>0</td><td>48</td><td>100</td></tr><tr><td>Dashboard Assembly</td><td>18</td><td>41</td><td>35</td><td>0</td><td>0</td><td>18</td><td>0</td><td>0</td><td>100</td></tr><tr><td>Object Flipping</td><td>56</td><td>46</td><td>46</td><td>95</td><td>97</td><td>72</td><td>0</td><td>100</td><td>100</td></tr><tr><td>Average</td><td>34</td><td>39</td><td>31</td><td>57</td><td>32</td><td>33</td><td>0</td><td>49</td><td>100</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 compares the performance of HIL-SERL against several baselines (imitation learning and other state-of-the-art RL methods) across various dexterous robotic manipulation tasks, reporting success rates, cycle times, and training times.
> <details>
> <summary>read the caption</summary>
> Table 1: Experiment results. (a) HIL-SERL against imitation learning baselines. (b) HIL-SERL against various other baselines.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:18px'><tr><td>Parameter</td><td>Value</td></tr><tr><td>Observation space</td><td>wrist_1, wrist_ 2, tcp_pose, tcp_vel, tcp_f/t</td></tr><tr><td>Action space</td><td>6D twist</td></tr><tr><td>Reward function</td><td>Binary classifier</td></tr><tr><td>Classifier views</td><td>wrist_1, wrist_2,</td></tr><tr><td>Classifier accuracy</td><td>97%</td></tr><tr><td>Initial offline demonstrations</td><td>20</td></tr><tr><td>Environment update frequency</td><td>10 HZ</td></tr><tr><td>Max episode length</td><td>100 environment steps</td></tr><tr><td>Reset method</td><td>Scripted reset</td></tr><tr><td>Randomization range</td><td>4 cm in x and y, 6 deg in rz</td></tr><tr><td>Proprio encoder size</td><td>64</td></tr><tr><td>Policy MLP size</td><td>256x256</td></tr><tr><td>Total number of RL transitions</td><td>32000</td></tr><tr><td>Discount factor</td><td>0.97</td></tr><tr><td>Optimizer</td><td>Adam</td></tr><tr><td>Learning rate</td><td>3e-4</td></tr><tr><td>Image augmentation</td><td>Random crop</td></tr></table>{{< /table-caption >}}
> 🔼 This table compares the performance of the proposed HIL-SERL method against imitation learning baselines and other state-of-the-art reinforcement learning methods across several robotic manipulation tasks, reporting success rates, cycle times, and training times.
> <details>
> <summary>read the caption</summary>
> Table 1: Experiment results. (a) HIL-SERL against imitation learning baselines. (b) HIL-SERL against various other baselines.
> </details>

{{< table-caption >}}
<table id='14' style='font-size:18px'><tr><td>Parameter</td><td>Value</td></tr><tr><td>Observation space</td><td>wrist_1, wrist_2, side_2, tcp_pose, tcp_vel, tcp_f/t</td></tr><tr><td>Action space</td><td>6D twist</td></tr><tr><td>Reward function</td><td>Binary Classifier</td></tr><tr><td>Classifier views</td><td>wrist_1, wrist_2, side_2</td></tr><tr><td>Classifier accuracy</td><td>95%</td></tr><tr><td>Initial offline demonstrations</td><td>20</td></tr><tr><td>Environment update frequency</td><td>10 HZ</td></tr><tr><td>Max episode length</td><td>100 environment steps</td></tr><tr><td>Reset method</td><td>Scripted reset</td></tr><tr><td>Randomization range</td><td>2 cm in x and y, 1 deg in rz</td></tr><tr><td>Proprio encoder size</td><td>64</td></tr><tr><td>Policy MLP size</td><td>256x256</td></tr><tr><td>Total number of RL transitions</td><td>21000</td></tr><tr><td>Discount factor</td><td>0.97</td></tr><tr><td>Optimizer</td><td>Adam</td></tr><tr><td>Learning rate</td><td>3e-4</td></tr><tr><td>Image augmentation</td><td>Random crop</td></tr></table>{{< /table-caption >}}
> 🔼 This table compares the performance of HIL-SERL against imitation learning and other state-of-the-art reinforcement learning methods across multiple dexterous robotic manipulation tasks.
> <details>
> <summary>read the caption</summary>
> Table 1: Experiment results. (a) HIL-SERL against imitation learning baselines. (b) HIL-SERL against various other baselines.
> </details>

{{< table-caption >}}
<table id='13' style='font-size:18px'><tr><td>Parameter</td><td>Value</td></tr><tr><td>Observation space</td><td>wrist_ 1, wrist_2, side_1, tcp_pose, tcp_vel, tcp_f/t, gripper_pos</td></tr><tr><td>Action space</td><td>6D twist and 1D discrete gripper control</td></tr><tr><td>Reward function</td><td>Binary classifier</td></tr><tr><td>Classifier views</td><td>side_1</td></tr><tr><td>Classifier accuracy</td><td>96%</td></tr><tr><td>Initial offline demonstrations</td><td>20</td></tr><tr><td>Environment update frequency</td><td>10 HZ</td></tr><tr><td>Max episode length</td><td>120 environment steps</td></tr><tr><td>Reset method</td><td>Scripted reset</td></tr><tr><td>Randomization range</td><td>2 cm in x and y, 10 deg in rz</td></tr><tr><td>Proprio encoder size</td><td>64</td></tr><tr><td>Motion policy MLP size</td><td>256x256</td></tr><tr><td>Grasp critic MLP size</td><td>256x256</td></tr><tr><td>Total number of RL transitions</td><td>50000</td></tr><tr><td>Discount factor</td><td>0.98</td></tr><tr><td>Optimizer</td><td>Adam</td></tr><tr><td>Learning rate</td><td>3e-4</td></tr><tr><td>Image augmentation</td><td>Random crop</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 compares the performance of HIL-SERL against imitation learning and other state-of-the-art reinforcement learning methods across several robotic manipulation tasks, reporting success rates, cycle times, and training times.
> <details>
> <summary>read the caption</summary>
> Table 1: Experiment results. (a) HIL-SERL against imitation learning baselines. (b) HIL-SERL against various other baselines.
> </details>

{{< table-caption >}}
<table id='9' style='font-size:16px'><tr><td>Parameter</td><td>Value</td></tr><tr><td>Observation space</td><td>wrist_ 1, wrist_2, tcp_pose, tcp_vel, tcp_f/t, gripper_pos</td></tr><tr><td>Action space</td><td>6D twist and 1D discrete gripper control</td></tr><tr><td>Reward function</td><td>Binary classifier</td></tr><tr><td>Classifier views</td><td>wrist_1, wrist_2</td></tr><tr><td>Classifier accuracy</td><td>97%</td></tr><tr><td>Initial offline demonstrations</td><td>20</td></tr><tr><td>Environment update frequency</td><td>10 HZ</td></tr><tr><td>Max episode length</td><td>120 environment steps</td></tr><tr><td>Reset method</td><td>Human reset</td></tr><tr><td>Randomization range</td><td>4 cm in x and y, 10 deg in rz</td></tr><tr><td>Proprio encoder size</td><td>64</td></tr><tr><td>Motion policy MLP size</td><td>256x256</td></tr><tr><td>Grasp critic MLP size</td><td>256x256</td></tr><tr><td>Total number of RL transitions</td><td>28000</td></tr><tr><td>Discount factor</td><td>0.98</td></tr><tr><td>Optimizer</td><td>Adam</td></tr><tr><td>Learning rate</td><td>3e-4</td></tr><tr><td>Image augmentation</td><td>Random crop</td></tr></table>{{< /table-caption >}}
> 🔼 This table compares the performance of HIL-SERL against imitation learning and other state-of-the-art reinforcement learning baselines across several robotic manipulation tasks, showing success rates, cycle times, and training times.
> <details>
> <summary>read the caption</summary>
> Table 1: Experiment results. (a) HIL-SERL against imitation learning baselines. (b) HIL-SERL against various other baselines.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:20px'><tr><td>Parameter</td><td>Value</td></tr><tr><td>Observation space for side panel 1</td><td>wrist_1, side_1, side_2, tcp_pose, tcp_vel, tcp_f/t</td></tr><tr><td>Observation space for side panel 2</td><td>wrist_2, side_3, side_4, tcp_pose, tcp_vel, tcp_f/t</td></tr><tr><td>Action space</td><td>12D twist</td></tr><tr><td>Reward function</td><td>Binary Classifier</td></tr><tr><td>Classifier views for panel 1</td><td>side_1, side_2</td></tr><tr><td>Classifier views for panel 2</td><td>side_3, side_4</td></tr><tr><td>Classifier accuracy</td><td>97%</td></tr><tr><td>Initial offline demonstrations</td><td>20</td></tr><tr><td>Environment update frequency</td><td>10 HZ</td></tr><tr><td>Max episode length</td><td>100 environment steps</td></tr><tr><td>Reset method</td><td>Scripted reset</td></tr><tr><td>Randomization range</td><td>8 cm in X, y, 1 deg in rz</td></tr><tr><td>Proprio encoder size</td><td>64</td></tr><tr><td>Policy MLP size</td><td>256x256</td></tr><tr><td>Total number of RL transitions for panel 1</td><td>31000</td></tr><tr><td>Total number of RL transitions for panel 2</td><td>36000</td></tr><tr><td>Discount factor</td><td>0.98</td></tr><tr><td>Optimizer</td><td>Adam</td></tr><tr><td>Learning rate</td><td>3e-4</td></tr><tr><td>Image augmentation</td><td>Random crop</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents a comparison of the success rate and cycle time of HIL-SERL against several imitation learning baselines and other state-of-the-art RL methods across multiple robotic manipulation tasks.
> <details>
> <summary>read the caption</summary>
> Table 1: Experiment results. (a) HIL-SERL against imitation learning baselines. (b) HIL-SERL against various other baselines.
> </details>

{{< table-caption >}}
<table id='5' style='font-size:18px'><tr><td>Parameter</td><td>Value</td></tr><tr><td>Observation space</td><td>side_1, side_3, side_4, tcp_pose, tcp_vel, tcp_f/t</td></tr><tr><td>Action space</td><td>12D twist</td></tr><tr><td>Reward function</td><td>Binary Classifier</td></tr><tr><td>Classifier views</td><td>side_1, side_3, side_4</td></tr><tr><td>Classifier accuracy</td><td>95%</td></tr><tr><td>Initial offline demonstrations</td><td>20</td></tr><tr><td>Environment update frequency</td><td>10 HZ</td></tr><tr><td>Max episode length</td><td>150 environment steps</td></tr><tr><td>Reset method</td><td>Scripted reset</td></tr><tr><td>Randomization range</td><td>3 cm in X, y</td></tr><tr><td>Proprio encoder size</td><td>64</td></tr><tr><td>Policy MLP size</td><td>256x256</td></tr><tr><td>Total number of RL transitions</td><td>18000</td></tr><tr><td>Discount factor</td><td>0.97</td></tr><tr><td>Optimizer</td><td>Adam</td></tr><tr><td>Learning rate</td><td>3e-4</td></tr><tr><td>Image augmentation</td><td>Random crop</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 compares the performance of HIL-SERL against imitation learning and other state-of-the-art reinforcement learning methods across several dexterous robotic manipulation tasks.
> <details>
> <summary>read the caption</summary>
> Table 1: Experiment results. (a) HIL-SERL against imitation learning baselines. (b) HIL-SERL against various other baselines.
> </details>

{{< table-caption >}}
<table id='8' style='font-size:16px'><tr><td>Parameter</td><td>Value</td></tr><tr><td>Observation space</td><td>wrist_1, wrist_2, side, tcp_pose, tcp_vel, tcp_f/t, gripper_pos</td></tr><tr><td>Action space</td><td>12D twist and 1D discrete gripper control</td></tr><tr><td>Reward function</td><td>Binary classifier</td></tr><tr><td>Classifier views</td><td>wrist_1, wrist_2, side</td></tr><tr><td>Classifier accuracy</td><td>98%</td></tr><tr><td>Initial offline demonstrations</td><td>20</td></tr><tr><td>Environment update frequency</td><td>10 HZ</td></tr><tr><td>Max episode length</td><td>200 environment steps</td></tr><tr><td>Reset method</td><td>Human reset</td></tr><tr><td>Randomization range</td><td>2 cm in x and y</td></tr><tr><td>Proprio encoder size</td><td>64</td></tr><tr><td>Motion policy MLP size</td><td>256x256</td></tr><tr><td>Grasp critic MLP size</td><td>256x256</td></tr><tr><td>Total number of RL transitions</td><td>36000</td></tr><tr><td>Discount factor</td><td>0.97</td></tr><tr><td>Optimizer</td><td>Adam</td></tr><tr><td>Learning rate</td><td>3e-4</td></tr><tr><td>Image augmentation</td><td>Random crop</td></tr></table>{{< /table-caption >}}
> 🔼 This table compares the performance of HIL-SERL against imitation learning and other state-of-the-art reinforcement learning baselines across several robotic manipulation tasks, showing success rates, cycle times, and training times.
> <details>
> <summary>read the caption</summary>
> Table 1: Experiment results. (a) HIL-SERL against imitation learning baselines. (b) HIL-SERL against various other baselines.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:20px'><tr><td>Parameter</td><td>Value</td></tr><tr><td>Observation space</td><td>wrist_ 1, wrist_2, side, tcp_pose, tcp_vel, gripper_pos</td></tr><tr><td>Action space</td><td>12D twist and 1D discrete gripper control</td></tr><tr><td>Reward function</td><td>Binary classifier</td></tr><tr><td>Classifier views</td><td>side</td></tr><tr><td>Classifier accuracy</td><td>99%</td></tr><tr><td>Initial offline demonstrations</td><td>20</td></tr><tr><td>Environment update frequency</td><td>10 HZ</td></tr><tr><td>Max episode length</td><td>200 environment steps</td></tr><tr><td>Reset method</td><td>Human reset</td></tr><tr><td>Randomization range</td><td>None</td></tr><tr><td>Proprio encoder size</td><td>64</td></tr><tr><td>Motion policy MLP size</td><td>256x256</td></tr><tr><td>Grasp critic MLP size</td><td>256x256</td></tr><tr><td>Total number of RL transitions</td><td>43000</td></tr><tr><td>Discount factor</td><td>0.97</td></tr><tr><td>Optimizer</td><td>Adam</td></tr><tr><td>Learning rate</td><td>3e-4</td></tr><tr><td>Image augmentation</td><td>Random crop</td></tr></table>{{< /table-caption >}}
> 🔼 This table compares the performance of HIL-SERL against imitation learning and other state-of-the-art reinforcement learning baselines across various robotic manipulation tasks, reporting success rates, cycle times, and training times.
> <details>
> <summary>read the caption</summary>
> Table 1: Experiment results. (a) HIL-SERL against imitation learning baselines. (b) HIL-SERL against various other baselines.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:18px'><tr><td>Parameter</td><td>Value</td></tr><tr><td>Observation space</td><td>wrist_1, wrist_ 2, side 1, side_2, tcp_pose, tcp_vel, tcp_f/t</td></tr><tr><td>Action space</td><td>12D twist</td></tr><tr><td>Reward function</td><td>Binary classifier</td></tr><tr><td>Classifier views</td><td>side_1, side_2</td></tr><tr><td>Classifier accuracy</td><td>96%</td></tr><tr><td>Initial offline demonstrations</td><td>20</td></tr><tr><td>Environment update frequency</td><td>10 HZ</td></tr><tr><td>Max episode length</td><td>200 environment steps</td></tr><tr><td>Reset method</td><td>Human reset</td></tr><tr><td>Randomization range</td><td>2 cm in x and y</td></tr><tr><td>Proprio encoder size</td><td>64</td></tr><tr><td>Policy MLP size</td><td>256x256</td></tr><tr><td>Total number of RL transitions</td><td>108000</td></tr><tr><td>Discount factor</td><td>0.97</td></tr><tr><td>Optimizer</td><td>Adam</td></tr><tr><td>Learning rate</td><td>3e-4</td></tr><tr><td>Image augmentation</td><td>Random crop</td></tr></table>{{< /table-caption >}}
> 🔼 This table compares the performance of HIL-SERL against imitation learning and other state-of-the-art reinforcement learning methods across several robotic manipulation tasks, showing success rates, cycle times, and training times.
> <details>
> <summary>read the caption</summary>
> Table 1: Experiment results. (a) HIL-SERL against imitation learning baselines. (b) HIL-SERL against various other baselines.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:20px'><tr><td>Parameter</td><td>Value</td></tr><tr><td>Observation space</td><td>wrist, global, tcp_pose, tcp_ vel, 9, dq</td></tr><tr><td>Action space</td><td>Feedforward wrench Fx, Fz, Tz</td></tr><tr><td>Reward function</td><td>Human annotation in the end of an episode</td></tr><tr><td>Environment update frequency</td><td>10 HZ</td></tr><tr><td>Max episode length</td><td>20 environment steps</td></tr><tr><td>Reset method</td><td>Human reset</td></tr><tr><td>Randomization range</td><td>None</td></tr><tr><td>Initial offline demonstrations</td><td>30</td></tr><tr><td>Proprio encoder size</td><td>64</td></tr><tr><td>Policy MLP size</td><td>256x256</td></tr><tr><td>Total number of RL transitions</td><td>10000</td></tr><tr><td>Discount factor</td><td>0.96, but every episode was run to maximum length</td></tr><tr><td>Optimizer</td><td>Adam</td></tr><tr><td>Learning rate</td><td>3e-4, decayed to 3e-5 when reaching 70% success rate</td></tr><tr><td>Image augmentation</td><td>Random crop</td></tr></table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the success rate and cycle time of HIL-SERL against imitation learning and other state-of-the-art reinforcement learning baselines on several dexterous manipulation tasks.
> <details>
> <summary>read the caption</summary>
> Table 1: Experiment results. (a) HIL-SERL against imitation learning baselines. (b) HIL-SERL against various other baselines.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:20px'><tr><td>Parameter</td><td>Value</td></tr><tr><td>Observation space</td><td>wrist, side, tcp_pose, tcp_vel, 9, dq</td></tr><tr><td>Action space</td><td>Feedforward wrench Fx, Fz, Ty</td></tr><tr><td>Reward function</td><td>Binary classifier</td></tr><tr><td>Classifier views</td><td>wrist</td></tr><tr><td>Classifier accuracy</td><td>97%</td></tr><tr><td>Initial offline demonstrations</td><td>20</td></tr><tr><td>Environment update frequency</td><td>10 HZ</td></tr><tr><td>Max episode length</td><td>100 environment steps</td></tr><tr><td>Reset method</td><td>Scripted reset</td></tr><tr><td>Randomization range</td><td>None</td></tr><tr><td>Proprio encoder size</td><td>64</td></tr><tr><td>Policy MLP size</td><td>256x256</td></tr><tr><td>Total number of RL transitions</td><td>25000</td></tr><tr><td>Discount factor</td><td>0.985</td></tr><tr><td>Optimizer</td><td>Adam</td></tr><tr><td>Learning rate</td><td>3e-4</td></tr><tr><td>Image augmentation</td><td>Random crop</td></tr></table>{{< /table-caption >}}
> 🔼 This table compares the performance of HIL-SERL against imitation learning and other state-of-the-art reinforcement learning methods across various robotic manipulation tasks, showing success rates, cycle times, and training times.
> <details>
> <summary>read the caption</summary>
> Table 1: Experiment results. (a) HIL-SERL against imitation learning baselines. (b) HIL-SERL against various other baselines.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>Task Name</td><td>Number of Demos</td><td>Observation Chunking Size</td><td>Action Prediction Horizon</td><td>Action Chunking Size</td></tr><tr><td>RAM Insertion</td><td>200</td><td>1</td><td>8</td><td>2</td></tr><tr><td>Dashboard Assembly</td><td>200</td><td>1</td><td>8</td><td>4</td></tr><tr><td>Object Flipping</td><td>200</td><td>1</td><td>1</td><td>1</td></tr></table>{{< /table-caption >}}
> 🔼 This table compares the performance of HIL-SERL against imitation learning and other state-of-the-art reinforcement learning baselines across multiple robotic manipulation tasks, reporting success rates, cycle times, and training times.
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