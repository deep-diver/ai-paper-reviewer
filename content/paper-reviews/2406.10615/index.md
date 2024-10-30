---
title: "Leveraging Locality to Boost Sample Efficiency in Robotic Manipulation"
summary: "SGRv2: Action locality boosts sample efficiency in robot manipulation!"
categories: ["AI Generated"]
tags: ["🔖 24-06-15", "🤗 24-10-29"]
showSummary: true
date: 2024-06-15
draft: false
---

{{< keyword >}} 2406.10615 {{< /keyword >}}

{{< keywordList >}}
{{< keyword icon="github" >}} Lorem ipsum dolor. {{< /keyword >}}
{{< keyword icon="code" >}} **Important** skill {{< /keyword >}}
{{< /keywordList >}}

### TL;DR


{{< lead >}}

Robotic manipulation requires a lot of data for training, which is expensive and time-consuming. This paper introduces a new method, called SGRv2, which uses a concept called "action locality" to solve this problem. Action locality means that a robot's actions primarily depend on the target object and nearby surroundings. 



SGRv2 uses a special architecture that considers both the object's visual features and its location to decide on the next action.  **Experiments show that SGRv2 outperforms previous methods by a significant margin, particularly when only a small number of training examples are available.**  This makes SGRv2 a valuable tool for developing robots that can learn more quickly and efficiently.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2406.10615" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2406.10615" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is important because it tackles the critical challenge of sample inefficiency in robotic manipulation, a major bottleneck hindering progress in the field.  **By introducing a novel imitation learning framework (SGRv2) that leverages the inductive bias of *action locality*, it significantly improves sample efficiency in various simulated and real-world robotic manipulation tasks.**  The findings have implications for broader AI research concerning efficient learning with limited data, as well as for advancements in practical robotic applications.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SGRv2, a new imitation learning framework, significantly enhances sample efficiency in robotic manipulation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The key innovation is the integration of *action locality*, which posits that robot actions are primarily influenced by the target object and its local environment. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Extensive experiments demonstrate SGRv2's superior performance across various benchmarks and real-world scenarios, using significantly fewer demonstrations than prior methods. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2406.10615/figures_2_0.png)

> 🔼 Figure 1 shows the sample efficiency of SGRv2 across various benchmarks, highlighting its superior performance compared to baselines, especially in data-limited settings.
> <details>
> <summary>read the caption</summary>
> Figure 1: Left: Sample efficiency of SGRv2. We evaluate SGR and SGRv2 on 26 RLBench tasks, with demonstration numbers ranging from 100 to 5. Results indicate that, owing to the locality of SGRv2, it exhibits exceptional sample efficiency, with its success rate declining by only about 10%. Top Right: Overview of simulation results. We test SGRv2 on 3 benchmarks, consistently outperforming the baselines. Bottom Right: Tasks of the 3 simulation benchmarks.
> </details>





![](https://ai-paper-reviewer.com/2406.10615/charts_2_0.png)

> 🔼 The chart compares the sample efficiency of SGRv2 and SGR across different numbers of demonstrations on 26 RLBench tasks, highlighting SGRv2's superior performance and its ability to maintain high success rates even with limited data.
> <details>
> <summary>read the caption</summary>
> Figure 1: Left: Sample efficiency of SGRv2. We evaluate SGR and SGRv2 on 26 RLBench tasks, with demonstration numbers ranging from 100 to 5. Results indicate that, owing to the locality of SGRv2, it exhibits exceptional sample efficiency, with its success rate declining by only about 10%. Top Right: Overview of simulation results. We test SGRv2 on 3 benchmarks, consistently outperforming the baselines. Bottom Right: Tasks of the 3 simulation benchmarks.
> </details>





{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Method</td><td>Avg. Success</td><td>Avg. ↑ Rank ↓</td><td>Open Microwave</td><td>Open Door</td><td>Water Plants</td><td>Toilet Seat Up</td><td>Phone On Base</td><td>Put Books</td><td>Take Out Umbrella</td><td>Open Fridge</td><td>Open Drawer</td><td>Slide Block</td><td>Sweep To Dustpan</td><td>Meat Off Grill</td></tr><tr><td>R3M</td><td>4.7</td><td>5.8</td><td>0.9</td><td>36.4</td><td>2.9</td><td>15.5</td><td>0.0</td><td>0.5</td><td>5.2</td><td>3.2</td><td>0.0</td><td>24.0</td><td>0.4</td><td>0.1</td></tr><tr><td>PointNeXt</td><td>25.3</td><td>3.4</td><td>7.1</td><td>60.9</td><td>5.6</td><td>49.9</td><td>46.4</td><td>57.5</td><td>37.5</td><td>9.2</td><td>21.7</td><td>59.5</td><td>42.0</td><td>59.9</td></tr><tr><td>PerAct</td><td>22.3</td><td>4.1</td><td>4.3</td><td>59.6</td><td>28.5</td><td>69.3</td><td>0.0</td><td>25.1</td><td>75.9</td><td>3.1</td><td>56.4</td><td>47.5</td><td>2.8</td><td>85.9</td></tr><tr><td>SGR</td><td>23.6</td><td>4.1</td><td>6.4</td><td>55.3</td><td>24.9</td><td>30.7</td><td>47.2</td><td>29.3</td><td>36.3</td><td>7.1</td><td>31.9</td><td>72.0</td><td>43.6</td><td>52.7</td></tr><tr><td>RVT</td><td>40.4</td><td>2.2</td><td>18.3</td><td>71.2</td><td>34.8</td><td>47.6</td><td>62.3</td><td>46.5</td><td>85.3</td><td>24.0</td><td>75.1</td><td>85.1</td><td>19.6</td><td>90.5</td></tr><tr><td>SGRv2 (ours)</td><td>53.2</td><td>1.2</td><td>27.2</td><td>76.8</td><td>38.0</td><td>89.6</td><td>84.1</td><td>63.7</td><td>74.5</td><td>13.2</td><td>81.3</td><td>100.0</td><td>61.5</td><td>96.5</td></tr><tr><td>Method</td><td>Turn Tap</td><td>Put In</td><td>Close</td><td>Drag</td><td>Stack</td><td>Screw</td><td>Put In</td><td>Place</td><td>Put In</td><td>Sort</td><td>Push</td><td>Insert</td><td>Stack</td><td>Place Cups</td></tr><tr><td>R3M</td><td>26.1</td><td>Drawer 0.0</td><td>Jar 0.0</td><td>Stick 0.3</td><td>Blocks 0.0</td><td>Bulb 0.0</td><td>Safe 0.3</td><td>Wine 0.4</td><td>Cupboard 0.0</td><td>Shape 0.0</td><td>Buttons 6.8</td><td>Peg 0.0</td><td>Cups 0.0</td><td>0.0</td></tr><tr><td>PointNeXt</td><td>48.7</td><td>17.1</td><td>36.0</td><td>18.5</td><td>1.9</td><td>4.1</td><td>12.1</td><td>31.5</td><td>3.3</td><td>0.4</td><td>22.0</td><td>0.1</td><td>4.4</td><td>0.4</td></tr><tr><td>PerAct</td><td>8.0</td><td>0.1</td><td>0.5</td><td>10.3</td><td>1.7</td><td>4.4</td><td>0.9</td><td>8.7</td><td>0.4</td><td>0.4</td><td>83.1</td><td>1.9</td><td>0.1</td><td>0.7</td></tr><tr><td>SGR</td><td></td><td>8.3</td><td>13.3</td><td>64.4</td><td>0.0</td><td>0.9</td><td>16.9</td><td>24.7</td><td>0.1</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>34.4</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.1</td><td>12.0</td><td>0.1</td><td>0.0</td><td>1.1</td></tr><tr><td>RVT</td><td>38.4</td><td>19.6</td><td>25.2</td><td>45.7</td><td>8.8</td><td>24.0</td><td>30.7</td><td>92.7</td><td>5.6</td><td>1.6</td><td>90.4</td><td>4.0</td><td>3.1</td><td>1.2</td></tr><tr><td>SGRv2 (ours)</td><td>87.9</td><td>75.9</td><td>25.6</td><td>94.9</td><td>17.5</td><td>24.1</td><td>55.6</td><td>53.1</td><td>20.3</td><td>1.9</td><td>93.2</td><td>4.1</td><td>21.3</td><td>1.6</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents the average success rates of different methods on 26 RLBench tasks using only 5 demonstrations, showing SGRv2's superior performance compared to other baselines.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance on RLBench with 5 Demonstrations. All numbers represent percentage success rates averaged over 3 seeds. See Appendix F for standard deviation. SGRv2 outperforms the most competitive baseline RVT on 23/26 tasks, with an average improvement of 1.32x.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2406.10615/figures_4_0.png)

> 🔼 The figure illustrates the architecture of SGRv2, highlighting its four key designs for integrating action locality, including an encoder-decoder for point-wise features, relative position prediction, weighted average for focusing on critical regions, and dense supervision.
> <details>
> <summary>read the caption</summary>
> Figure 2: SGRv2 Architecture. Built upon SGR, SGRv2 integrates locality into its framework through four primary designs: an encoder-decoder architecture for point-wise features, a strategy for predicting relative target position, a weighted average for focusing on critical local regions, and a dense supervision strategy (not shown in the figure). This illustration specifically represents the water plants task. For simplicity in the visualization, we omit the proprioceptive data that is concatenated with the RGB of the point cloud before being fed into the geometric branch.
> </details>



![](https://ai-paper-reviewer.com/2406.10615/figures_8_0.png)

> 🔼 Figure 3 visualizes the point-wise weights learned by SGRv2, showing that high-weighted points align with object affordances.
> <details>
> <summary>read the caption</summary>
> Figure 3: Emergent Capabilities. We visualize the point-specific weights and find that the points with high weights (in red) align with the object's affordances. Left: toilet seat up. Right: open microwave.
> </details>



![](https://ai-paper-reviewer.com/2406.10615/figures_8_1.png)

> 🔼 Figure 4 shows the real-robot experimental results for long-horizon tasks and generalization tasks, comparing the success rates of PerAct, RVT, and SGRv2 across multiple sub-tasks.
> <details>
> <summary>read the caption</summary>
> Figure 4: Left: Real-robot long-horizon tasks. Right: Success rate (%) of multi-task agents on real-robot tasks. We collect 8 demonstrations and evaluate 10 episodes for each task.
> </details>



![](https://ai-paper-reviewer.com/2406.10615/figures_13_0.png)

> 🔼 Figure 5 shows an overview of the simulation tasks used in the experiments, categorized by RLBench, ManiSkill2, and MimicGen datasets.
> <details>
> <summary>read the caption</summary>
> Figure 5: Simulation Tasks. Our simulation experiments encompass 26 tasks (1-26) from RL-Bench, 4 tasks (27-37, where 30-37 are 8 different YCB [63] objects of task Pick Single YCB) from ManiSkill2, and 7 tasks (38-44) from MimicGen.
> </details>



![](https://ai-paper-reviewer.com/2406.10615/figures_17_0.png)

> 🔼 The figure shows a Franka Emika Panda robot arm performing a generalization task of moving a colored cup to a target location amongst distractor cups.
> <details>
> <summary>read the caption</summary>
> Figure 6: Real-robot generalization task.
> </details>



![](https://ai-paper-reviewer.com/2406.10615/figures_19_0.png)

> 🔼 Figure 5 shows the various simulated robotic manipulation tasks used to evaluate the SGRv2 model, including tasks from RLBench, ManiSkill2, and MimicGen datasets.
> <details>
> <summary>read the caption</summary>
> Figure 5: Simulation Tasks. Our simulation experiments encompass 26 tasks (1-26) from RL-Bench, 4 tasks (27-37, where 30-37 are 8 different YCB [63] objects of task Pick Single YCB) from ManiSkill2, and 7 tasks (38-44) from MimicGen.
> </details>



![](https://ai-paper-reviewer.com/2406.10615/figures_19_1.png)

> 🔼 The figure visualizes point-wise weights learned by SGRv2, showing that high-weight points align with object affordances.
> <details>
> <summary>read the caption</summary>
> Figure 3: Emergent Capabilities. We visualize the point-specific weights and find that the points with high weights (in red) align with the object's affordances. Left: toilet seat up. Right: open microwave.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<br><table id='7' style='font-size:14px'><tr><td></td><td>Avg. success</td></tr><tr><td></td><td>53.2</td></tr><tr><td>w/o decoder</td><td>21.3</td></tr><tr><td>w/ absolute pos prediction</td><td>21.0</td></tr><tr><td>w/ uniform point weight</td><td>44.2</td></tr><tr><td>w/o dense supervision</td><td>40.1</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the average success rates of different methods on 26 RLBench tasks using only 5 demonstrations, highlighting SGRv2's superior performance compared to baselines.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance on RLBench with 5 Demonstrations. All numbers represent percentage success rates averaged over 3 seeds. See Appendix F for standard deviation. SGRv2 outperforms the most competitive baseline RVT on 23/26 tasks, with an average improvement of 1.32x.
> </details>

{{< table-caption >}}
<br><table id='3' style='font-size:14px'><tr><td>Task</td><td>Sub-task</td><td>PerAct</td><td>RVT</td><td>SGRv2</td></tr><tr><td rowspan="6">Tidy Up the Table</td><td>Put trash in trash can</td><td>50</td><td>50</td><td>80</td></tr><tr><td>Put socks in box</td><td>60</td><td>80</td><td>90</td></tr><tr><td>Put marker in pen holder</td><td>10</td><td>10</td><td>30</td></tr><tr><td>Open drawer</td><td>20</td><td>40</td><td>60</td></tr><tr><td>Put lollipop in drawer</td><td>10</td><td>10</td><td>30</td></tr><tr><td>Close drawer</td><td>40</td><td>60</td><td>80</td></tr><tr><td rowspan="4">Make Coffee</td><td>Turn on coffee machine</td><td>100</td><td>100</td><td>100</td></tr><tr><td>Put funnel onto carafe</td><td>0</td><td>20</td><td>80</td></tr><tr><td>Pour powder into funnel</td><td>0</td><td>10</td><td>10</td></tr><tr><td>Pour water</td><td>10</td><td>30</td><td>70</td></tr><tr><td>Avg. Success Rate</td><td></td><td>30</td><td>41</td><td>63</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the average success rates of different robotic manipulation methods on 26 RLBench tasks using only 5 demonstrations, highlighting the superior sample efficiency of SGRv2 compared to other baselines.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance on RLBench with 5 Demonstrations. All numbers represent percentage success rates averaged over 3 seeds. See Appendix F for standard deviation. SGRv2 outperforms the most competitive baseline RVT on 23/26 tasks, with an average improvement of 1.32x.
> </details>

{{< table-caption >}}
<br><table id='3' style='font-size:16px'><tr><td>Config</td><td>Keyframe Control</td><td>Dense Control</td></tr><tr><td>Training iterations</td><td>20, 000</td><td>100, 000</td></tr><tr><td>Leraning rate</td><td>0.003</td><td>0.0003</td></tr><tr><td>Batch size</td><td>16</td><td>16</td></tr><tr><td>Optimizer</td><td>AdamW</td><td>AdamW</td></tr><tr><td>Lr Scheduler</td><td>Cosine</td><td>Cosine</td></tr><tr><td>Warmup step</td><td>200</td><td>0</td></tr><tr><td>Weight decay</td><td>1 x 10-6</td><td>1 x 10-6</td></tr><tr><td>Color drop</td><td>0.4</td><td>0</td></tr><tr><td>Feature drop</td><td>0</td><td>0.4</td></tr><tr><td>Number of input points</td><td>4096</td><td>1200</td></tr></table>{{< /table-caption >}}
> 🔼 This table shows the hyperparameter settings used in the simulation experiments for both keyframe and dense control.
> <details>
> <summary>read the caption</summary>
> Table 4: Hyper-parameters used in our simulation experiments.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Method</td><td>Avg. Success ↑</td><td>Open Microwave</td><td>Open Door</td><td>Water Plants</td><td>Toilet Seat Up</td><td>Phone On Base</td><td>Put Books</td><td>Take Out Umbrella</td><td>Open Fridge</td></tr><tr><td>PointNeXt</td><td>33.1</td><td>13.6</td><td>61.6</td><td>14.8</td><td>64.4</td><td>57.2</td><td>48.0</td><td>83.6</td><td>16.4</td></tr><tr><td>PerAct</td><td>36.7</td><td>9.2</td><td>78.0</td><td>12.0</td><td>83.6</td><td>0.0</td><td>18.8</td><td>91.6</td><td>14.4</td></tr><tr><td>SGR</td><td>47.8</td><td>46.0</td><td>76.8</td><td>24.4</td><td>59.6</td><td>82.8</td><td>92.0</td><td>90.0</td><td>26.4</td></tr><tr><td>RVT</td><td>52.1</td><td>19.2</td><td>79.2</td><td>11.2</td><td>62.0</td><td>78.4</td><td>63.6</td><td>97.2</td><td>18.4</td></tr><tr><td>SGRv2 (ours)</td><td>63.3</td><td>68.4</td><td>86.0</td><td>17.6</td><td>69.2</td><td>85.6</td><td>69.2</td><td>95.6</td><td>19.2</td></tr><tr><td>Method</td><td>Open Drawer</td><td>Slide Block</td><td>Sweep To Dustpan</td><td>Meat Off Grill</td><td>Turn Tap</td><td>Put In Drawer</td><td>Close Jar</td><td>Drag Stick</td><td>Stack Blocks</td></tr><tr><td>PointNeXt</td><td>63.6</td><td>83.6</td><td>52.4</td><td>0.0</td><td>84.8</td><td>1.6</td><td>35.6</td><td>0.0</td><td>8.8</td></tr><tr><td>PerAct</td><td>89.8</td><td>97.3</td><td>32.9</td><td>98.2</td><td>5.5</td><td>4.4</td><td>23.2</td><td>75.3</td><td>43.4</td></tr><tr><td>SGR</td><td>75.6</td><td>89.2</td><td>63.2</td><td>93.6</td><td>94.8</td><td>22.8</td><td>36.4</td><td>80.8</td><td>0.0</td></tr><tr><td>RVT</td><td>70.0</td><td>71.2</td><td>18.0</td><td>92.0</td><td>73.6</td><td>84.4</td><td>35.2</td><td>100.0</td><td>18.8</td></tr><tr><td>SGRv2 (ours)</td><td>92.8</td><td>94.4</td><td>64.4</td><td>97.6</td><td>95.2</td><td>80.8</td><td>32.4</td><td>94.8</td><td>52.0</td></tr><tr><td>Method</td><td>Screw Bulb</td><td>Put In Safe</td><td>Place Wine</td><td>Put In Cupboard</td><td>Sort Shape</td><td>Push Buttons</td><td>Insert Peg</td><td>Stack Cups</td><td>Place Cups</td></tr><tr><td>PointNeXt</td><td>21.6</td><td>7.2</td><td>13.6</td><td>18.0</td><td>2.8</td><td>100.0</td><td>1.2</td><td>6.0</td><td>0.0</td></tr><tr><td>PerAct</td><td>18.2</td><td>7.9</td><td>39.7</td><td>7.9</td><td>2.2</td><td>82.0</td><td>8.9</td><td>7.7</td><td>1.2</td></tr><tr><td>SGR</td><td>17.6</td><td>27.6</td><td>35.6</td><td>12.4</td><td>2.8</td><td>84.8</td><td>2.0</td><td>6.0</td><td>0.8</td></tr><tr><td>RVT</td><td>43.2</td><td>67.2</td><td>92.0</td><td>17.6</td><td>6.4</td><td>100.0</td><td>12.8</td><td>22.8</td><td></td></tr><tr><td>SGRv2 (ours)</td><td>68.4</td><td>59.2</td><td>68.0</td><td>50.4</td><td>6.4</td><td>99.2</td><td>8.0</td><td>70.4</td><td>0.4 0.8</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the average success rates of different robotic manipulation methods on 26 RLBench tasks using only 5 demonstrations, showing SGRv2's superior performance compared to other methods.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance on RLBench with 5 Demonstrations. All numbers represent percentage success rates averaged over 3 seeds. See Appendix F for standard deviation. SGRv2 outperforms the most competitive baseline RVT on 23/26 tasks, with an average improvement of 1.32x.
> </details>

{{< table-caption >}}
<table id='2' style='font-size:18px'><tr><td>#Demonstrations</td><td>100</td><td>50</td><td>20</td><td>10</td><td>5</td></tr><tr><td>RVT</td><td>52.1</td><td>46.3</td><td>43.3</td><td>42.3</td><td>40.4</td></tr><tr><td>SGRv2 (ours)</td><td>63.3</td><td>62.4</td><td>61.9</td><td>56.0</td><td>53.2</td></tr></table>{{< /table-caption >}}
> 🔼 The table shows the average success rate of 26 RLBench tasks for the RVT baseline and the SGRv2 model with varying numbers of demonstrations (100, 50, 20, 10, and 5).
> <details>
> <summary>read the caption</summary>
> Table 6: Average performance of 26 RLBench tasks with varying number of demonstrations.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Method</td><td>Avg. Success ↑</td><td>Stack</td><td>StackThree</td><td>Square</td><td>Threading</td><td>Coffee</td><td>HammerCleanup</td><td>MugCleanup</td></tr><tr><td>SGR</td><td>42.1</td><td>84.4</td><td>54.0</td><td>26.4</td><td>11.6</td><td>41.6</td><td>38.4</td><td>38.4</td></tr><tr><td>PointNeXt</td><td>42.3</td><td>90.4</td><td>72.4</td><td>12.4</td><td>12.8</td><td>36.4</td><td>33.6</td><td>38.0</td></tr><tr><td>2D BC</td><td>32.3</td><td>84.4</td><td>54.8</td><td>35.6</td><td>13.2</td><td>6.8</td><td>26.8</td><td>4.8</td></tr><tr><td>2D BC-RNN</td><td>63.2</td><td>96.0</td><td>74.4</td><td>56.8</td><td>34.8</td><td>82.8</td><td>46.0</td><td>51.6</td></tr><tr><td>SGRv2 (ours)</td><td>66.2</td><td>96.4</td><td>84.2</td><td>56.4</td><td>56.0</td><td>86.0</td><td>46.2</td><td>38.4</td></tr></table>{{< /table-caption >}}
> 🔼 Table 7 presents a comparison of the average success rates achieved by different methods on seven MimicGen tasks using 1000 demonstrations.
> <details>
> <summary>read the caption</summary>
> Table 7: Performance on MimicGen with 1000 demonstrations.
> </details>

{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td>Method</td><td>Avg. Success ↑</td><td>Stack</td><td>StackThree</td><td>Square</td><td>Threading</td><td>Coffee</td><td>HammerCleanup</td><td>MugCleanup</td></tr><tr><td>R3M</td><td>5.3</td><td>34.5</td><td>0.3</td><td>0.0</td><td>0.5</td><td>1.2</td><td>0.3</td><td>0.0</td></tr><tr><td>2D BC</td><td>10.6</td><td>31.2</td><td>3.6</td><td>0.4</td><td>4.4</td><td>22.8</td><td>8.0</td><td>3.6</td></tr><tr><td>2D BC-RNN</td><td>10.0</td><td>30.0</td><td>3.2</td><td>0.0</td><td>0.8</td><td>24.0</td><td>4.0</td><td>8.0</td></tr><tr><td>SGRv2 (ours)</td><td>26.0</td><td>81.2</td><td>37.9</td><td>2.8</td><td>6.7</td><td>27.9</td><td>16.1</td><td>9.7</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 presents the average success rates and ranks of different methods on ManiSkill2 and MimicGen benchmarks using 50 demonstrations, showing SGRv2's superior performance.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance on ManiSkill2 (top) and MimicGen (bottom) with 50 Demonstrations. We report success rates averaged over 3 seeds. See Appendix F for standard deviation. We observe that SGRv2 consistently outperforms baselines like SGR and PointNeXt.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:16px'><tr><td>Method</td><td>Avg. Success ↑</td><td>Stack</td><td>StackThree</td><td>Square</td><td>Threading</td><td>Coffee</td><td>HammerCleanup</td><td>MugCleanup</td></tr><tr><td>2D BC</td><td>21.9</td><td>62.8</td><td>23.6</td><td>14.8</td><td>14.4</td><td>4.8</td><td>24.8</td><td>8.4</td></tr><tr><td>2D BC-RNN</td><td>41.1</td><td>84.0</td><td>51.6</td><td>15.2</td><td>16.8</td><td>69.6</td><td>22.4</td><td>28.4</td></tr><tr><td>SGRv2 (ours)</td><td>55.8</td><td>95.2</td><td>80.4</td><td>32.4</td><td>42.2</td><td>74.4</td><td>38.0</td><td>28.2</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents the average success rate and ranking of different methods on MimicGen benchmark using 1000 demonstrations, showing SGRv2's superior performance.
> <details>
> <summary>read the caption</summary>
> Table 7: Performance on MimicGen with 1000 demonstrations.
> </details>

{{< table-caption >}}
<table id='2' style='font-size:20px'><tr><td></td><td>Meat Off Grill</td><td>Phone On Base</td><td>Push Buttons</td></tr><tr><td>RVT on env w/o distractors</td><td>90.5</td><td>62.3</td><td>90.4</td></tr><tr><td>RVT on env w/ distractors</td><td>65.0</td><td>2.5</td><td>67.5</td></tr><tr><td>SGRv2 on env w/o distractors</td><td>96.5</td><td>84.1</td><td>93.2</td></tr><tr><td>SGRv2 on env w/ distractors</td><td>92.4</td><td>80.4</td><td>81.7</td></tr></table>{{< /table-caption >}}
> 🔼 Table 10 shows the performance of RVT and SGRv2 on RLBench tasks with and without visual distractors, demonstrating SGRv2's robustness.
> <details>
> <summary>read the caption</summary>
> Table 10: Performance evaluation in environments with and without visual distractors.
> </details>

{{< table-caption >}}
<table id='6' style='font-size:14px'><tr><td>Method</td><td>Avg.</td><td>Success ↑</td><td>Avg. Rank ↓</td><td colspan="2">LiftCube</td><td>PickCube</td><td colspan="2">StackCube</td><td colspan="2">PickSingleYCB</td></tr><tr><td>PointNeXt</td><td colspan="2">16.8</td><td>2.5</td><td colspan="2">50.8 士 15.2</td><td>4.7 士 0.4</td><td colspan="2">10.6 士 4.3</td><td colspan="2">1.1 土 0.1</td></tr><tr><td>SGR</td><td colspan="2">14.9</td><td>2.5</td><td colspan="2">26.9 土 4.0</td><td>12.2 士 3.1</td><td colspan="2">3.5 士 2.2</td><td colspan="2">17.0 土 0.2</td></tr><tr><td>SGRv2 (ours)</td><td colspan="2">55.8</td><td>1.0</td><td colspan="2">80.5 土 7.3</td><td>72.9 土 4.1</td><td colspan="2">27.7 土 4.3</td><td colspan="2">42.2 + 2.3</td></tr><tr><td>Method</td><td>Avg. Success</td><td>↑ Avg. Rank ↓</td><td>Stack</td><td>StackThree</td><td>Square</td><td>Threading</td><td>Coffee</td><td>HammerCleanup</td><td></td><td>MugCleanup</td></tr><tr><td>PointNeXt</td><td>13.6</td><td>2.9</td><td>56.1 ±6.4</td><td>3.7 ±1.4</td><td>0.9 ±0.5</td><td>3.6 ±2.2</td><td>12.0 ±5.2</td><td></td><td>11.7 ±2.8</td><td>7.1 ±0.9</td></tr><tr><td>SGR</td><td>14.2</td><td>2.0</td><td>50.8 ±7.7</td><td>5.6 + 1.7</td><td>1.3 ±0.5</td><td>4.0 ±0.8</td><td>14.1 ± 2.0</td><td></td><td>14.1 ± 1.7</td><td>9.7 ±2.4</td></tr><tr><td>SGRv2 (ours)</td><td>26.0</td><td>1.0</td><td>81.2±4.4</td><td>37.9 ± 1.5</td><td>2.8 ±0.7</td><td>6.7 ±2.0</td><td>27.9 ±7.0</td><td></td><td>16.1 ±3.9</td><td>9.7 ±2.7</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the average success rates of different methods on 26 RLBench tasks using only 5 demonstrations, highlighting SGRv2's superior performance compared to baselines.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance on RLBench with 5 Demonstrations. All numbers represent percentage success rates averaged over 3 seeds. See Appendix F for standard deviation. SGRv2 outperforms the most competitive baseline RVT on 23/26 tasks, with an average improvement of 1.32x.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2406.10615/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2406.10615/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2406.10615/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2406.10615/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2406.10615/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2406.10615/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2406.10615/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2406.10615/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2406.10615/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2406.10615/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2406.10615/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2406.10615/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2406.10615/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2406.10615/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2406.10615/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2406.10615/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2406.10615/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2406.10615/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2406.10615/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2406.10615/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2406.10615/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}