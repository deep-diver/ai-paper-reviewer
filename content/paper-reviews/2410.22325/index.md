---
title: "Robots Pre-train Robots: Manipulation-Centric Robotic Representation from Large-Scale Robot Dataset"
summary: "MCR, a novel pre-training method, learns manipulation-centric robotic representations from large-scale robot datasets, significantly boosting real-world robot manipulation success rates."
categories: ["AI Generated"]
tags: ["🔖 24-10-29", "🤗 24-10-30"]
showSummary: true
date: 2024-10-29
draft: false
---

{{< keyword >}} 2410.22325 {{< /keyword >}}

### TL;DR


{{< lead >}}

Existing methods for pre-training robotic visual representations often use human-centric datasets which suffer from distribution shifts and lack crucial dynamic information needed for robotic manipulation tasks.  This leads to suboptimal performance in real-world scenarios. **The paper addresses this by introducing a new evaluation metric, "manipulation centricity," to better assess robotic representation quality.**



To improve performance, the authors propose a novel pre-training method, Manipulation Centric Representation (MCR).  **MCR uses a large-scale robotic dataset (DROID) and incorporates robot dynamics information into its training process, specifically via new "dynamics alignment" and "action prediction" loss functions, along with a time contrastive loss.**  This results in a significant performance boost across various simulation and real-world robotic manipulation tasks, demonstrating the effectiveness of their approach and the importance of leveraging robot-specific data.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.22325" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.22325" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is important because it introduces a novel metric for evaluating robotic representations and a new pre-training method that significantly improves the performance of robots in manipulation tasks.  **The findings challenge existing approaches that rely on human data for pre-training and highlight the importance of using robot-specific datasets and dynamics information.** This opens new avenues for research in robotic representation learning and has implications for the development of more effective and robust robots.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A new evaluation metric, "manipulation centricity," strongly correlates with robotic manipulation task performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Pre-training with large-scale robot datasets, like DROID, yields superior robotic representations compared to human-centric datasets. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The MCR pre-training method, leveraging robot dynamics information, significantly improves downstream manipulation task performance. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.22325/figures_1_0.png)

> 🔼 This figure provides an overview of the proposed Manipulation Centric Representation (MCR) method, highlighting its key components, training process, and evaluation methodology.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview. We introduce a robotic representation evaluation metric termed manipulation centricity, which exhibits a strong correlation with downstream policy performance. Accordingly, we design a new pre-training method, MCR, to learn manipulation-centric representation from large-scale robotic datasets. Comprehensive experiments on both simulations and real robot validate the superiority of our proposed representation.
> </details>





![](https://ai-paper-reviewer.com/2410.22325/charts_2_0.png)

> 🔼 The chart shows a strong positive correlation between manipulation centricity (a metric indicating how well a robotic representation focuses on manipulation-relevant regions) and downstream performance across different robotic representation methods and datasets.
> <details>
> <summary>read the caption</summary>
> Figure 2: Correlation between manipulation centricity and downstream performance. Our findings reveal that (1) the proposed metric of manipulation centricity strongly correlates with the downstream performance of robotic representations, and (2) using the robot dataset DROID yields greater benefits for robotic representations than human datasets. (3) These insights motivate our method, MCR, which leverages dynamics labels from the robot dataset to further enhance manipulation centricity and downstream performance.
> </details>





{{< table-caption >}}
<br><table id='5' style='font-size:20px'><tr><td>Task</td><td>LfS</td><td>MVP</td><td>VC-1</td><td>R3M</td><td>MCR</td></tr><tr><td>Lift</td><td>5/10</td><td>6/10</td><td>5/10</td><td>6/10</td><td>9/10</td></tr><tr><td>Sweep</td><td>3/10</td><td>1/10</td><td>2/10</td><td>1/10</td><td>7/10</td></tr><tr><td>Rearrange</td><td>2/10</td><td>3/10</td><td>6/10</td><td>4/10</td><td>7/10</td></tr><tr><td>All</td><td>10/30</td><td>10/30</td><td>13/30</td><td>11/30</td><td>23/30</td></tr></table>{{< /table-caption >}}

> 🔼 The table presents the success rate of five different methods (LfS, MVP, VC-1, R3M, and MCR) on three real-world robotic manipulation tasks (Lift, Sweep, and Rearrange), showing the superior performance of MCR.
> <details>
> <summary>read the caption</summary>
> Table 2: Real robot results. Our method MCR performs best in all tasks. Each method is fairly assessed over 10 trials on each task.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.22325/figures_3_0.png)

> 🔼 Figure 3 visualizes 20 diverse robotic manipulation tasks across four simulation environments, showcasing the range of complexity and end-effectors involved.
> <details>
> <summary>read the caption</summary>
> Figure 3: Task visualization. We consider 20 challenging and diverse manipulation tasks spanning 4 domains.
> </details>



![](https://ai-paper-reviewer.com/2410.22325/figures_4_0.png)

> 🔼 The figure provides an overview of the proposed Manipulation Centric Representation (MCR) method, showing its training process, the manipulation centricity metric, and its evaluation on various robotic manipulation tasks.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview. We introduce a robotic representation evaluation metric termed manipulation centricity, which exhibits a strong correlation with downstream policy performance. Accordingly, we design a new pre-training method, MCR, to learn manipulation-centric representation from large-scale robotic datasets. Comprehensive experiments on both simulations and real robot validate the superiority of our proposed representation.
> </details>



![](https://ai-paper-reviewer.com/2410.22325/figures_6_0.png)

> 🔼 The figure illustrates the dynamics alignment loss (Ldyn) used in the MCR pre-training process, contrasting image features with robot state-action dynamics.
> <details>
> <summary>read the caption</summary>
> Figure 5: Illustration of objective Ldyn.
> </details>



![](https://ai-paper-reviewer.com/2410.22325/figures_8_0.png)

> 🔼 The figure shows the experimental setup for three real-world robot manipulation tasks, including images of the robot arm and gripper, camera, and various objects used in the tasks.
> <details>
> <summary>read the caption</summary>
> Figure 7: Real robot setup. We design 3 real-world robot tasks with different manipulation skills and objects.
> </details>



![](https://ai-paper-reviewer.com/2410.22325/figures_8_1.png)

> 🔼 The figure illustrates the overall framework of the proposed Manipulation Centric Representation (MCR) method, showing the process of pre-training from large-scale robot datasets and its evaluation on simulation and real robot experiments.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview. We introduce a robotic representation evaluation metric termed manipulation centricity, which exhibits a strong correlation with downstream policy performance. Accordingly, we design a new pre-training method, MCR, to learn manipulation-centric representation from large-scale robotic datasets. Comprehensive experiments on both simulations and real robot validate the superiority of our proposed representation.
> </details>



![](https://ai-paper-reviewer.com/2410.22325/figures_10_0.png)

> 🔼 The figure shows t-SNE visualizations of image frame embeddings generated by R3M, R3M-DROID, and MCR across simulation and real-world robotic tasks, demonstrating MCR's superior clustering ability and the benefit of robot data.
> <details>
> <summary>read the caption</summary>
> Figure 11: t-SNE visualization. We do t-SNE visualization on 10 simulation tasks from MetaWorld and 3 real robot tasks. Each dot represents an image frame and each color indicates a task. The results demonstrate that (1) our representation has the best clustering ability and (2) robot data is helpful to robotic representation compared to simulations. However, R3M remains inferior to the other two methods, reinforcing the critical role of robot datasets in enhancing robotic representations.
> </details>



![](https://ai-paper-reviewer.com/2410.22325/figures_19_0.png)

> 🔼 The figure shows an overview of the proposed manipulation-centric representation (MCR) method, highlighting its key components and the workflow from data collection to downstream policy performance evaluation.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview. We introduce a robotic representation evaluation metric termed manipulation centricity, which exhibits a strong correlation with downstream policy performance. Accordingly, we design a new pre-training method, MCR, to learn manipulation-centric representation from large-scale robotic datasets. Comprehensive experiments on both simulations and real robot validate the superiority of our proposed representation.
> </details>



![](https://ai-paper-reviewer.com/2410.22325/figures_20_0.png)

> 🔼 Figure 6 shows the comparison of the success rate of MCR with other baseline methods across four different simulation domains.
> <details>
> <summary>read the caption</summary>
> Figure 6: Simulation results. We evaluate MCR and baselines across different domains. Our method consistently outperforms the baselines. Results are mean success rate aggregated over 3 seeds with standard deviation.
> </details>



![](https://ai-paper-reviewer.com/2410.22325/figures_21_0.png)

> 🔼 The figure provides an overview of the proposed Manipulation Centric Representation (MCR) method for pre-training robotic representations, highlighting the manipulation centricity metric and the training process from large-scale robotic datasets.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview. We introduce a robotic representation evaluation metric termed manipulation centricity, which exhibits a strong correlation with downstream policy performance. Accordingly, we design a new pre-training method, MCR, to learn manipulation-centric representation from large-scale robotic datasets. Comprehensive experiments on both simulations and real robot validate the superiority of our proposed representation.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.22325/charts_7_0.png)

> 🔼 The chart displays a comparison of the success rates of different methods (Learn from Scratch, MVP, VC-1, HRP, R3M, R3M-DROID, and MCR) across four simulation environments (Robomimic, RoboCasa, MetaWorld, and DexArt), showing MCR's superior performance.
> <details>
> <summary>read the caption</summary>
> Figure 6: Simulation results. We evaluate MCR and baselines across different domains. Our method consistently outperforms the baselines. Results are mean success rate aggregated over 3 seeds with standard deviation.
> </details>


![](https://ai-paper-reviewer.com/2410.22325/charts_9_0.png)

> 🔼 The chart displays the relationship between the scale of the robot dataset used for pre-training and the resulting success rate in downstream tasks.
> <details>
> <summary>read the caption</summary>
> Figure 9: Effect of robot dataset size.
> </details>


![](https://ai-paper-reviewer.com/2410.22325/charts_9_1.png)

> 🔼 The chart displays the relative change in manipulation centricity and success rate of R3M-DROID and MCR compared to R3M, categorized by gripper-based and hand-based tasks.
> <details>
> <summary>read the caption</summary>
> Figure 10: Downstream domain gap.
> </details>


![](https://ai-paper-reviewer.com/2410.22325/charts_19_0.png)

> 🔼 The chart displays the statistical distribution of video lengths, common object nouns, and action verbs within the DROID dataset subset used in the study.
> <details>
> <summary>read the caption</summary>
> Figure 12: Statistical Analysis of the DROID Subset.
> </details>


![](https://ai-paper-reviewer.com/2410.22325/charts_19_1.png)

> 🔼 The chart presents statistical analysis of the DROID dataset subset, including video length distribution, common object nouns, and action verbs.
> <details>
> <summary>read the caption</summary>
> Figure 12: Statistical Analysis of the DROID Subset.
> </details>


![](https://ai-paper-reviewer.com/2410.22325/charts_19_2.png)

> 🔼 The bar chart displays the frequency distribution of action verbs in the DROID dataset.
> <details>
> <summary>read the caption</summary>
> Figure 12c: Statistics of Action Verb.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='14' style='font-size:16px'><tr><td>Ablated Components</td><td>Success Rate (%)</td></tr><tr><td>Training Objective</td><td></td></tr><tr><td>w/o. objective Ldyn - 一</td><td>66.2(±0.8)</td></tr><tr><td>w/o. objective Lact</td><td>71.3 (土1.2)</td></tr><tr><td>w/o. objective Ltcl</td><td>72.0 (土1.2)</td></tr><tr><td>Dynamic Chunk</td><td></td></tr><tr><td>Lengthl: 3→1</td><td>72.1 (士2.9)</td></tr><tr><td>Length l: 3→5</td><td>76.8 (土2.4)</td></tr><tr><td>Length l: 3→7</td><td>76.8 (土2.2)</td></tr><tr><td>Encoder Backbone</td><td></td></tr><tr><td>ResNet-: 50→18</td><td>77.3(±1.8)</td></tr><tr><td>ResNet-: 50→34</td><td>77.9(±1.7)</td></tr><tr><td>MCR (original)</td><td>83.2 (士1.3)</td></tr></table>{{< /table-caption >}}
> 🔼 The table shows the ablation study results for the MCR model, evaluating the impact of different design choices on the success rate across three challenging tasks.
> <details>
> <summary>read the caption</summary>
> Table 4: Key design choices of MCR.
> </details>

{{< table-caption >}}
<br><table id='7' style='font-size:18px'><tr><td></td><td>GPU Type</td><td>Training Time (h)</td></tr><tr><td></td><td>Tesla V100</td><td>~120</td></tr><tr><td></td><td>RTX 3090 Ti</td><td>~50</td></tr></table>{{< /table-caption >}}
> 🔼 The table shows the GPU type and training time in hours for different methods in the paper, highlighting the computational efficiency of the proposed MCR method.
> <details>
> <summary>read the caption</summary>
> Table 5: Computation efficiency. Training computation requirements across methods.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:16px'><tr><td>Ramprasaath R Selvaraju, Michael Cogswell, Abhishek Das, Ramakrishna Vedantam, Devi Parikh, and Dhruv Batra. Grad-cam: Visual explanations from deep networks via gradient-based local- ization. In International Conference on Computer Vision (ICCV), 2017.</td></tr><tr><td>Younggyo Seo, Danijar Hafner, Hao Liu, Fangchen Liu, Stephen James, Kimin Lee, and P. Abbeel. Masked world models for visual control. In Conference on Robot Learning (CoRL), 2022.</td></tr><tr><td>Jinghuan Shang, Karl Schmeckpeper, Brandon B. May, Maria Vittoria Minniti, Tarik Kelestemur, David Watkins, and Laura Herlant. Theia: Distilling diverse vision foundation models for robot learning. In Conference on Robot Learning (CoRL), 2024.</td></tr><tr><td>Mohan Kumar Srirama, Sudeep Dasari, Shikhar Bahl, and Abhinav Gupta. Hrp: Human affordances for robotic pre-training. Robotics: Science and Systems (RSS), 2024.</td></tr><tr><td>Adam Stooke, Kimin Lee, Pieter Abbeel, and Michael Laskin. Decoupling representation learning from reinforcement learning. In International Conference on Machine Learning (ICML), 2021.</td></tr><tr><td>Octo Model Team, Dibya Ghosh, Homer Walke, Karl Pertsch, Kevin Black, Oier Mees, Sudeep Dasari, Joey Hejna, Tobias Kreiman, Charles Xu, et al. Octo: An open-source generalist robot policy. Robotics: Science and Systems (RSS), 2024.</td></tr><tr><td>Aaron van den Oord, Yazhe Li, and Oriol Vinyals. Representation learning with contrastive predic- tive coding. arXiv preprint arXiv:1807.03748, 2019.</td></tr><tr><td>Laurens Van der Maaten and Geoffrey Hinton. Visualizing data using t-sne. Journal of Machine Learning Research (JMLR), 2008.</td></tr><tr><td>Homer Walke, Kevin Black, Abraham Lee, Moo Jin Kim, Max Du, Chongyi Zheng, Tony Zhao, Philippe Hansen-Estruch, Quan Vuong, Andre He, Vivek Myers, Kuan Fang, Chelsea Finn, and Sergey Levine. Bridgedata v2: A dataset for robot learning at scale. In Conference on Robot Learning (CoRL), 2023.</td></tr><tr><td>Tete Xiao, Ilija Radosavovic, Trevor Darrell, and Jitendra Malik. Masked visual pre-training for motor control. In Conference on Robot Learning (CoRL), 2022.</td></tr><tr><td>Guowei Xu, Ruijie Zheng, Yongyuan Liang, Xiyao Wang, Zhecheng Yuan, Tianying Ji, Yu Luo, Xiaoyu Liu, Jiaxin Yuan, Pu Hua, et al. Drm: Mastering visual reinforcement learning through dormant ratio minimization. In International Conference on Learning Representations (ICLR), 2023.</td></tr><tr><td>Tianhe Yu, Deirdre Quillen, Zhanpeng He, Ryan Julian, Karol Hausman, Chelsea Finn, and Sergey Levine. Meta-world: A benchmark and evaluation for multi-task and meta reinforcement learning. In Conference on Robot Learning (CoRL), 2019.</td></tr><tr><td>Zhecheng Yuan, Zhengrong Xue, Bo Yuan, Xueqian Wang, Yi Wu, Yang Gao, and Huazhe Xu. Pre-trained image encoder for generalizable visual reinforcement learning. Advances in Neural Information Processing Systems, 35:13022-13037, 2022.</td></tr><tr><td>Yanjie Ze, Gu Zhang, Kangning Zhang, Chenyuan Hu, Muhan Wang, and Huazhe Xu. 3d diffu- sion policy: Generalizable visuomotor policy learning via simple 3d representations. Robotics: Science and Systems (RSS), 2024.</td></tr><tr><td>Tony Z Zhao, Vikash Kumar, Sergey Levine, and Chelsea Finn. Learning fine-grained bimanual manipulation with low-cost hardware. Robotics: Science and Systems (RSS), 2023.</td></tr><tr><td>Ruijie Zheng, Xiyao Wang, Yanchao Sun, Shuang Ma, Jieyu Zhao, Huazhe Xu, Hal Daume III, and Furong Huang. TACO: Temporal latent action-driven contrastive loss for visual reinforce- ment learning. In International Conference on Neural Information Processing Systems (NeurIPS), 2023.</td></tr><tr><td>Ruijie Zheng, Yongyuan Liang, Xiyao Wang, Shuang Ma, Hal Daume III, Huazhe Xu, John Lang- ford, Praveen Palanisamy, Kalyan Shankar Basu, and Furong Huang. Premier-taco: Pretraining multitask representation via temporal action-driven contrastive loss. In International Conference</td></tr></table>{{< /table-caption >}}
> 🔼 Table 8 visualizes Grad-CAM results for various robotic manipulation tasks, showing the attention regions of different robotic representation methods.
> <details>
> <summary>read the caption</summary>
> Table 8: Grad-CAM of all tasks
> </details>

{{< table-caption >}}
<table id='2' style='font-size:22px'><tr><td>Hyperparameter</td><td>Value</td></tr><tr><td>Encoder type</td><td>ResNet50</td></tr><tr><td>Batch size</td><td>32</td></tr><tr><td>Learning rate</td><td>1e-4</td></tr><tr><td>Training steps</td><td>500,000</td></tr><tr><td>Data augmentation</td><td>RandomResizedCrop (224,(0.5, 1.0))</td></tr><tr><td>Optimizer</td><td>Adam</td></tr><tr><td>DROID views used</td><td>two exterior views</td></tr><tr><td>DROID proprioception used</td><td>cartesian and gripper position</td></tr></table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used in the pre-training stage of the Manipulation Centric Representation (MCR) model.
> <details>
> <summary>read the caption</summary>
> Table 6: Hyperparameters for MCR pre-training.
> </details>

{{< table-caption >}}
<table id='6' style='font-size:14px'><tr><td></td><td colspan="4">DexArt</td><td colspan="3">Robomimic</td><td colspan="3">RobocCasa</td></tr><tr><td>Alg  Task</td><td>Bucket</td><td>Faucet</td><td>Laptop</td><td>Toilet</td><td>Can</td><td>Lift</td><td>Square</td><td>CloseDrawer</td><td>CoffeeButtonPress</td><td>OpenSingleDoor</td></tr><tr><td>MCR(ours)</td><td>36.7 (土2.9)</td><td>38.3 (土2.9)</td><td>93.3 (土2.9)</td><td>73.3 (士2.9)</td><td>68.0 (±4.0)</td><td>96.0 (±2.3)</td><td>30.0 (±1.2)</td><td>99.3 (土1.2)</td><td>72.0 (±3.5)</td><td>56.0 (±3.5)</td></tr><tr><td>LfS</td><td>33.3 (士5.8)</td><td>36.7 (士5.8)</td><td>83.3 (士10.4)</td><td>71.7 (土2.9)</td><td>6.0 (±0.0)</td><td>64.0 (士4.2)</td><td>4.0 (±0.0)</td><td>85.3 (土1.2)</td><td>52.0 (士4.0)</td><td>46.7 (土1.2)</td></tr><tr><td>MVP</td><td>31.7 (土2.9)</td><td>33.3 (土2.9)</td><td>81.7 (士5.8)</td><td>80.0 (±0.0)</td><td>28.0 (土2.0)</td><td>74.0 (±6.4)</td><td>14.0 (士2.3)</td><td>98.0 (土2.0)</td><td>52.7 (土18.9)</td><td>33.3 (±14.5)</td></tr><tr><td>VC1</td><td>30.0 (±0.0)</td><td>35.0 (±0.0)</td><td>85.0 (±0.0)</td><td>71.7 (土2.9)</td><td>44.0 (士7.0)</td><td>74.0 (土9.2)</td><td>20.0 (士3.5)</td><td>98.7 (士2.0)</td><td>29.3 (±5.8)</td><td>33.3 (土7.0)</td></tr><tr><td>R3M</td><td>31.7 (土2.9)</td><td>36.7 (土2.9)</td><td>81.7 (士5.8)</td><td>71.7 (土2.9)</td><td>50.0 (士4.2)</td><td>86.0 (士6.0)</td><td>24.0 (土1.2)</td><td>88.7 (土3.1)</td><td>47.3 (士6.1)</td><td>48.7 (土7.6)</td></tr><tr><td>HRP</td><td>31.7 (土2.9)</td><td>36.7 (士2.9)</td><td>90.0 (士5.0)</td><td>63.3 (±14.4)</td><td>42.0 (±3.5)</td><td>86.0 (士3.5)</td><td>26.0 (士2.3)</td><td>91.3 (士4.6)</td><td>35.3 (土11.6)</td><td>38.0 (士6.0)</td></tr><tr><td>R3M-Droid</td><td>35.0 (士5.0)</td><td>33.3 (士2.9)</td><td>80.0 (±0.0)</td><td>66.7 (士7.6)</td><td>54.0 (士2.3)</td><td>96.0 (±0.0)</td><td>22.0 (士3.1)</td><td>88.7 (士2.3)</td><td>51.3 (土2.3)</td><td>45.3 (±7.6)</td></tr><tr><td></td><td colspan="4">MetaWorld</td><td colspan="3">MetaWorld (Hard)</td><td colspan="3">Meta World (Very Hard)</td></tr><tr><td>Alg  Task</td><td>Button Press</td><td>Drawer Open</td><td>MetaWorld (Medium) Bin Picking</td><td>Hammer</td><td>Assembly</td><td></td><td>Shelf Place</td><td>Disassemble Stick Pull</td><td>Stick Push</td><td>Pick Place Wall</td></tr><tr><td>MCR(ours)</td><td>100.0 (±0.0)</td><td>100.0 (±0.0)</td><td>96.7 (土2.9)</td><td>100.0 (±0.0)</td><td>100.0 (±0.0)</td><td>41.7</td><td>(±5.8) 93.3 (±2.9)</td><td>86.7 (±2.9)</td><td>100.0 (±0.0)</td><td>91.7 (±2.9)</td></tr><tr><td>LfS</td><td>96.7 (土2.9)</td><td>95.0 (±5.0)</td><td>81.7 (士2.9)</td><td>95.0 (士5.0)</td><td>95.0 (士5.0)</td><td>35.0 (士5.0)</td><td>86.7 (士2.9)</td><td>83.3 (士5.8)</td><td>96.7 (土2.9)</td><td>85.0 (士5.0)</td></tr><tr><td>MVP</td><td>96.7 (士2.9)</td><td>98.3 (士2.9)</td><td>81.7 (士2.9)</td><td>91.7 (士2.9)</td><td>86.7 (士2.9)</td><td>20.0 (士5.0)</td><td>65.0 (±8.7)</td><td>75.0 (±8.7)</td><td>96.7 (士2.9)</td><td>76.7 (±11.6)</td></tr><tr><td>VC-1</td><td>98.3 (土2.9)</td><td>98.3 (土2.9)</td><td>78.3 (土2.9)</td><td>86.7 (士2.9)</td><td>95.0 (士5.0)</td><td>21.7 (土2.9)</td><td>66.7 (土2.9)</td><td>86.7 (士2.9)</td><td>98.3 (土2.9)</td><td>71.7 (土2.9)</td></tr><tr><td>R3M</td><td>91.7 (土2.9)</td><td>71.7 (±16.1)</td><td>21.7 (士2.9)</td><td>63.3 (士5.8)</td><td>36.7 (士2.9)</td><td>35.0 (土8.7)</td><td>76.7 (士2.9)</td><td>43.3 (土7.6)</td><td>71.7 (土2.9)</td><td>58.3 (士5.8)</td></tr><tr><td>HRP</td><td>98.3 (土2.9)</td><td>98.3 (土2.9)</td><td>90.0 (±0.0)</td><td>65.0 (±0.0)</td><td>96.7 (士2.9)</td><td>23.3 (土2.9)</td><td>61.7 (士2.9)</td><td>85.0 (±0.0)</td><td>96.7 (土2.9)</td><td>81.7 (土2.9)</td></tr><tr><td>R3M-Droid</td><td>98.3 (土2.9)</td><td>96.7 (士5.8)</td><td>90.0 (±0.0)</td><td>80.0 (±0.0)</td><td>83.3 (士5.8)</td><td>38.3 (土2.9)</td><td>66.7 (士2.9)</td><td>61.7 (士20.2)</td><td>98.3 (土2.9)</td><td>83.3 (士5.8)</td></tr></table>{{< /table-caption >}}
> 🔼 Table 7 presents the success rate of different methods across various simulation tasks, showing the performance of MCR compared to other baselines.
> <details>
> <summary>read the caption</summary>
> Table 7: Main results on 20 simulation tasks. Results for each task are provided in this table. A summary across domains is shown in Figure 7.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.22325/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22325/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22325/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22325/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22325/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22325/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22325/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22325/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22325/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22325/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22325/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22325/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22325/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22325/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22325/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22325/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22325/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22325/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22325/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22325/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22325/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}