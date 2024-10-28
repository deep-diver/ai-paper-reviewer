---
title: "Steering Your Generalists: Improving Robotic Foundation Models via Value Guidance"
summary: "Boosting robot performance at deployment time, Value-Guided Policy Steering (V-GPS) re-ranks actions from existing policies using a value function learned via offline RL, consistently improving perfor..."
categories: ["AI Generated"]
tags: ["🔖 24-10-17", "🤗 24-10-24"]
showSummary: true
date: 2024-10-17
draft: false
---

### TL;DR


{{< lead >}}

This research tackles the challenge of improving the accuracy and robustness of general-purpose robot controllers.  Current large-scale robotic models, while versatile, often struggle due to imperfections in training data. The paper proposes Value-Guided Policy Steering (V-GPS), a novel technique that enhances these models' performance without requiring retraining. V-GPS works by adding a 'value function' – essentially a learned scoring system for how good various actions are – during the robot's decision-making process. This value function is learned offline using existing data, allowing for a simple plug-and-play approach. The researchers demonstrated the effectiveness of V-GPS across several state-of-the-art models, various robotic platforms, and twelve different tasks, achieving consistent performance improvements, especially in handling precise movements and avoiding premature action termination.  The approach is valuable because it sidesteps the costly and time-consuming process of retraining these models while significantly boosting performance.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.13816" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.13816" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is highly important for researchers in robotics and machine learning because it introduces a novel, efficient method to significantly improve the performance of existing general-purpose robotic policies without needing to retrain or fine-tune them.  This addresses a key challenge in robotics where high-quality training data is scarce and expensive. The plug-and-play nature of the method makes it broadly applicable, accelerating progress in the field.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} V-GPS improves robotic policy performance by re-ranking actions at test time, using a value function learned offline. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method works across different robot platforms and pre-trained policies without retraining, increasing efficiency. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Consistent performance gains are observed across diverse robotic tasks, demonstrating the broad applicability and robustness of V-GPS. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_1_0.png)

> 🔼 The figure illustrates the Value-Guided Policy Steering (V-GPS) approach, showing how a value function is used to re-rank action proposals from a generalist robotic policy at test time to improve performance.
> <details>
> <summary>read the caption</summary>
> Figure 1: (V-GPS) We introduce Value-Guided Policy Steering (V-GPS), a novel approach that improves the performance of pre-trained generalist robotic policies by re-ranking their actions at deployment time based on a value function learned via offline RL. The same single V-GPS value function can be combined with any off-the-shelf generalist policy in a plug-and-play manner, without the need to fine-tune or access the policy's weights, improving downstream performance across multiple robotic platforms.
> </details>







{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td colspan="2">Task</td><td>Octo-small-1.5</td><td>V-GPS (Ours)</td><td>Improvement</td></tr><tr><td rowspan="3">Scene A</td><td>Green pepper in pot</td><td>0.15</td><td>0.35</td><td></td></tr><tr><td>Sweet potato on cloth</td><td>0.30</td><td>0.35</td><td></td></tr><tr><td>Average</td><td>0.23</td><td>0.35</td><td>+55.6%</td></tr><tr><td rowspan="3">Scene B</td><td>Mushroom on cloth</td><td>0.35</td><td>0.70</td><td></td></tr><tr><td>Mushroom in pot</td><td>0.30</td><td>0.55</td><td></td></tr><tr><td>Average</td><td>0.33</td><td>0.63</td><td>+92.3%</td></tr><tr><td rowspan="3">Scene C</td><td>Sushi in pot</td><td>0.10</td><td>0.30</td><td></td></tr><tr><td>Spoon in pot</td><td>0.25</td><td>0.40</td><td></td></tr><tr><td>Average</td><td>0.18</td><td>0.35</td><td>+100%</td></tr><tr><td>Total</td><td>Average</td><td>0.24</td><td>0.44</td><td>+82.8%</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 shows the success rates of the Octo-small-1.5 policy and the V-GPS method on six real-world robotic manipulation tasks, demonstrating a substantial performance improvement with V-GPS.
> <details>
> <summary>read the caption</summary>
> Table 1: (Real-world performance) V-GPS consistently improves the success rates of Octo across the board, achieving an 82.8% improvement on average. This demonstrates that using our value function to re-rank the actions can enhance the generalist policy.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](figures/figures_6_0.png)

> 🔼 The figure shows the experimental setup for evaluating the proposed V-GPS method on 12 tasks across real-world and simulated environments using two different robot platforms.
> <details>
> <summary>read the caption</summary>
> Figure 3: (Experimental setup) We evaluate our method on 12 tasks in total. In the real-world WidowX robot platform, we study 6 tasks across 3 different scenes. In the SIMPLER simulated evaluation suite, we study 4 tasks on the WidowX platform and 2 tasks on the Google Robot.
> </details>



![](figures/figures_7_0.png)

> 🔼 The figure illustrates the Value-Guided Policy Steering (V-GPS) framework, showing how a value function is used to re-rank action proposals from a generalist robotic policy to improve its performance.
> <details>
> <summary>read the caption</summary>
> Figure 1: (V-GPS) We introduce Value-Guided Policy Steering (V-GPS), a novel approach that improves the performance of pre-trained generalist robotic policies by re-ranking their actions at deployment time based on a value function learned via offline RL. The same single V-GPS value function can be combined with any off-the-shelf generalist policy in a plug-and-play manner, without the need to fine-tune or access the policy's weights, improving downstream performance across multiple robotic platforms.
> </details>



![](figures/figures_15_0.png)

> 🔼 The figure illustrates the Value-Guided Policy Steering (V-GPS) approach, which enhances the performance of generalist robotic policies by re-ranking actions based on a learned value function.
> <details>
> <summary>read the caption</summary>
> Figure 1: (V-GPS) We introduce Value-Guided Policy Steering (V-GPS), a novel approach that improves the performance of pre-trained generalist robotic policies by re-ranking their actions at deployment time based on a value function learned via offline RL. The same single V-GPS value function can be combined with any off-the-shelf generalist policy in a plug-and-play manner, without the need to fine-tune or access the policy's weights, improving downstream performance across multiple robotic platforms.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td colspan="2">Task</td><td>Octo-s</td><td>Octo-s +Ours</td><td>Octo-b</td><td>Octo-b +Ours</td><td>Octo-s-1.5</td><td>Octo-s-1.5 +Ours</td><td>RT-1-X</td><td>RT-1-X +Ours</td><td>OpenVLA</td><td>OpenVLA +Ours</td></tr><tr><td rowspan="5">WidowX</td><td>Spoon on towel</td><td>0.52</td><td>0.46</td><td>0.25</td><td>0.21</td><td>0.01</td><td>0.06</td><td>0.01</td><td>0.01</td><td>0.00</td><td>0.00</td></tr><tr><td>Carrot on plate</td><td>0.15</td><td>0.16</td><td>0.18</td><td>0.24</td><td>0.00</td><td>0.00</td><td>0.06</td><td>0.07</td><td>0.06</td><td>0.04</td></tr><tr><td>Stack blocks</td><td>0.07</td><td>0.07</td><td>0.00</td><td>0.01</td><td>0.00</td><td>0.02</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.02</td></tr><tr><td>Eggplant basket</td><td>0.49</td><td>0.84</td><td>0.28</td><td>0.33</td><td>0.01</td><td>0.44</td><td>0.01</td><td>0.03</td><td>0.14</td><td>0.20</td></tr><tr><td>Average</td><td>0.30</td><td>0.38</td><td>0.17</td><td>0.20</td><td>0.01</td><td>0.13</td><td>0.02</td><td>0.03</td><td>0.05</td><td>0.07</td></tr><tr><td rowspan="3">Google Robot</td><td>Pick Can</td><td>0.31</td><td>0.38</td><td>0.29</td><td>0.24</td><td>0.05</td><td>0.43</td><td>0.19</td><td>0.29</td><td>0.72</td><td>0.82</td></tr><tr><td>Put Near</td><td>0.12</td><td>0.16</td><td>0.04</td><td>0.05</td><td>0.10</td><td>0.15</td><td>0.44</td><td>0.42</td><td>0.52</td><td>0.56</td></tr><tr><td>Average</td><td>0.22</td><td>0.27</td><td>0.17</td><td>0.14</td><td>0.07</td><td>0.29</td><td>0.32</td><td>0.36</td><td>0.62</td><td>0.69</td></tr><tr><td>Total</td><td>Average</td><td>0.27</td><td>0.34</td><td>0.17</td><td>0.18</td><td>0.02</td><td>0.18</td><td>0.12</td><td>0.14</td><td>0.24</td><td>0.27</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents the average success rates of five different generalist robot policies across multiple robot embodiments on twelve tasks within the SIMPLER simulated environment, comparing performance with and without V-GPS.


{{< table-caption >}}
<table id='7' style='font-size:14px'><tr><td colspan="2">Task</td><td>Octo-s</td><td>Octo-s +Ours</td><td>Octo-b</td><td>Octo-b +Ours</td><td>Octo-s-1.5</td><td>Octo-s-1.5 +Ours</td><td>RT1-X</td><td>RT1-X +Ours</td><td>OpenVLA</td><td>OpenVLA +Ours</td></tr><tr><td rowspan="5">WidowX</td><td>Spoon on towel</td><td>0.52</td><td>0.50</td><td>0.25</td><td>0.16</td><td>0.01</td><td>0.07</td><td>0.01</td><td>0.03</td><td>0.00</td><td>0.02</td></tr><tr><td>Carrot on plate</td><td>0.15</td><td>0.18</td><td>0.18</td><td>0.20</td><td>0.00</td><td>0.00</td><td>0.06</td><td>0.07</td><td>0.06</td><td>0.06</td></tr><tr><td>Stack blocks</td><td>0.07</td><td>0.09</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.02</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr><tr><td>Eggplant basket</td><td>0.49</td><td>0.59</td><td>0.28</td><td>0.37</td><td>0.01</td><td>0.07</td><td>0.01</td><td>0.01</td><td>0.14</td><td>0.54</td></tr><tr><td>Average</td><td>0.30</td><td>0.34</td><td>0.17</td><td>0.18</td><td>0.01</td><td>0.04</td><td>0.02</td><td>0.03</td><td>0.05</td><td>0.15</td></tr><tr><td rowspan="3">Google Robot</td><td>Pick Can</td><td>0.31</td><td>0.30</td><td>0.29</td><td>0.30</td><td>0.05</td><td>0.47</td><td>0.19</td><td>0.32</td><td>0.72</td><td>0.78</td></tr><tr><td>Put Near</td><td>0.12</td><td>0.17</td><td>0.04</td><td>0.06</td><td>0.10</td><td>0.21</td><td>0.44</td><td>0.43</td><td>0.52</td><td>0.44</td></tr><tr><td>Average</td><td>0.22</td><td>0.23</td><td>0.17</td><td>0.18</td><td>0.07</td><td>0.18</td><td>0.32</td><td>0.37</td><td>0.62</td><td>0.61</td></tr><tr><td>Total</td><td>Average</td><td>0.27</td><td>0.31</td><td>0.17</td><td>0.18</td><td>0.02</td><td>0.14</td><td>0.12</td><td>0.15</td><td>0.24</td><td>0.31</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents the average success rates of five different generalist robotic policies across multiple robot embodiments and tasks in the SIMPLER simulated environment, with and without the application of V-GPS.


{{< table-caption >}}
<table id='2' style='font-size:18px'><tr><td>Cal-QL a</td><td>5.0</td></tr><tr><td>IQL expectile T</td><td>0.7</td></tr><tr><td>discount factor</td><td>0.98</td></tr><tr><td>learning rate</td><td>3e-4</td></tr><tr><td>positive reward steps H</td><td>3</td></tr><tr><td>number of actions to sample K</td><td>{10, 50}</td></tr><tr><td>softmax temperature B</td><td>{0, 0.1, 1.0}</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 presents the success rates of the Octo-small-1.5 policy and the V-GPS method on six real-world robotic manipulation tasks, showing consistent performance improvements across all tasks.


{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td></td><td>Language Instructions</td></tr><tr><td>Scene A</td><td>put the green pepper in the pot put the sweet potato on the cloth</td></tr><tr><td>Scene B</td><td>put the mushroom on the cloth put the mushroom in the pot</td></tr><tr><td>Scene C</td><td>put the sushi in the pot put the green spoon in the pot</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 presents the success rates of the Octo-small-1.5 policy and V-GPS on six real-world robotic manipulation tasks, showing consistent improvement with V-GPS across all tasks.


{{< table-caption >}}
<br><table id='2' style='font-size:14px'><tr><td></td><td>Language Instructions</td></tr><tr><td>WidowX</td><td>put the spoon on the towel put carrot on plate stack the green block on the yellow block put eggplant into yellow basket</td></tr><tr><td>Google Robot</td><td>pick coke can move {object1} near {object2}</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 presents the success rates of the Octo-small-1.5 policy with and without V-GPS across six real-world robotic manipulation tasks.


{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Task</td><td>Octo-small</td><td>Octo-finetuned</td><td>Octo-scratch</td><td>Resnet-DP</td><td>Ours (IQL)</td><td>Ours (Cal-QL)</td></tr><tr><td>Spoon on towel</td><td>0.52</td><td>0.28</td><td>0.01</td><td>0.05</td><td>0.50</td><td>0.46</td></tr><tr><td>Carrot on Plate</td><td>0.15</td><td>0.12</td><td>0.01</td><td>0.01</td><td>0.18</td><td>0.15</td></tr><tr><td>Stack blocks</td><td>0.07</td><td>0.06</td><td>0.00</td><td>0.06</td><td>0.09</td><td>0.07</td></tr><tr><td>Eggplant basket</td><td>0.49</td><td>0.41</td><td>0.00</td><td>0.37</td><td>0.59</td><td>0.84</td></tr><tr><td>Average</td><td>0.30</td><td>0.22</td><td>0.01</td><td>0.12</td><td>0.34</td><td>0.38</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 7 compares the performance of V-GPS against fine-tuning generalist policies or training policies from scratch, showing V-GPS achieves superior performance.


{{< table-caption >}}
<table id='3' style='font-size:18px'><tr><td>Model</td><td>Success Rate</td></tr><tr><td>Octo-small (baseline)</td><td>0.49</td></tr><tr><td>Ours-100%</td><td>0.59</td></tr><tr><td>Ours-50%</td><td>0.59</td></tr><tr><td>Ours-10%</td><td>0.55</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 8 shows the ablation study on the size of the dataset used for training the value function, evaluating its performance on the SIMPLER eggplant task.


{{< table-caption >}}
<table id='7' style='font-size:16px'><tr><td>Method</td><td>Inference time (s)</td><td>Overhead</td></tr><tr><td>Octo-small</td><td>0.0752</td><td>1.00</td></tr><tr><td>Ours K = 10</td><td>0.0963</td><td>1.28</td></tr><tr><td>Ours K = 30</td><td>0.1096</td><td>1.46</td></tr><tr><td>Ours K = 50</td><td>0.1196</td><td>1.59</td></tr><tr><td>Ours K = 100</td><td>0.1596</td><td>2.12</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 presents the success rates of the Octo-small-1.5 policy and the V-GPS method on six real-world robotic manipulation tasks, showing consistent improvement with V-GPS.


{{< table-caption >}}
<table id='11' style='font-size:16px'><tr><td>Task</td><td colspan="2">Eggplant</td><td colspan="2">Pick Coke</td></tr><tr><td>Offline RL method</td><td>IQL</td><td>Cal-QL</td><td>IQL</td><td>Cal-QL</td></tr><tr><td>Octo-small (baseline)</td><td>0.49</td><td>0.49</td><td>0.31</td><td>0.31</td></tr><tr><td>Ours K = 10</td><td>0.59</td><td>0.77</td><td>0.30</td><td>0.38</td></tr><tr><td>Ours K = 30</td><td>0.47</td><td>0.81</td><td>0.37</td><td>0.38</td></tr><tr><td>Ours K = 50</td><td>0.42</td><td>0.84</td><td>0.31</td><td>0.38</td></tr><tr><td>Ours K = 100</td><td>0.35</td><td>0.63</td><td>0.37</td><td>0.36</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents the average success rates of five different generalist robotic policies across 12 tasks in SIMPLER simulated environment, comparing the performance with and without V-GPS.


{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td>Task</td><td>IQL actor</td><td>Cal-QL actor</td></tr><tr><td>Spoon on towel</td><td>0.00</td><td>0.00</td></tr><tr><td>Eggplant basket</td><td>0.00</td><td>0.00</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 presents the real-world performance improvement of the Octo policy across six tasks after applying V-GPS, showing consistent success rate increases.


{{< table-caption >}}
<table id='8' style='font-size:18px'><tr><td>Method</td><td>Success Rate</td></tr><tr><td>Octo-small (baseline)</td><td>0.49</td></tr><tr><td>Random-selecting</td><td>0.49</td></tr><tr><td>Random-policy</td><td>0.00</td></tr><tr><td>V-GPS (ours)</td><td>0.84</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents the quantitative results of V-GPS across five different generalist policies and two different robot embodiments on SIMPLER benchmark.


{{< table-caption >}}
<br><table id='12' style='font-size:16px'><tr><td>Model</td><td>Num Params</td></tr><tr><td>Q Network (Ours)</td><td>25.6M</td></tr><tr><td>Octo-small</td><td>27M</td></tr><tr><td>Octo-base</td><td>93M</td></tr><tr><td>OpenVLA</td><td>7B</td></tr><tr><td>RT1-X</td><td>35M</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 presents the real-world performance improvement of the Octo policy using Value-Guided Policy Steering (V-GPS) across six tasks.


</details>


### Full paper

{{< gallery >}}
<img src="paper_images/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}