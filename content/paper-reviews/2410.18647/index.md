---
title: "Data Scaling Laws in Imitation Learning for Robotic Manipulation"
summary: "Robotic manipulation policies achieve near 90% success in novel environments and with unseen objects using a data-driven approach that leverages power-law scaling relationships."
categories: ["AI Generated"]
tags: ["🔖 24-10-24", "🤗 24-10-25"]
showSummary: true
date: 2024-10-24
draft: false
---

### TL;DR


{{< lead >}}

This research investigates data scaling laws in imitation learning for robotic manipulation.  The authors collected over 40,000 demonstrations across various environments and objects, evaluating policy performance on unseen scenarios.  Results reveal power-law relationships between policy generalization and the number of training environments/objects.  Diversity is key: increasing the variety of environments and objects improves generalization significantly more than simply increasing demonstrations.  The researchers propose an efficient data collection method, achieving approximately 90% success rates in novel environments with unseen objects using data from a single afternoon of collection by four people.  These findings provide valuable insights for designing efficient data collection strategies and developing more robust, generalizable robotic systems.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18647" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.18647" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for robotics researchers as it establishes data scaling laws for robotic manipulation, a field previously lacking such comprehensive guidelines.  It offers a practical data collection strategy and demonstrates surprisingly high zero-shot generalization performance, opening up new avenues for creating more efficient and generalizable robotic systems.  The findings challenge existing assumptions about the data requirements for robust robotic policies and may change how large-scale robotic datasets are designed and collected.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Robotic manipulation policies show power-law scaling with the number of training environments and objects. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Diversity of environments and objects is more important for generalization than the absolute number of demonstrations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} An efficient data collection strategy is proposed, demonstrating impressive zero-shot generalization with limited data. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_2_0.png)

> 🔼 The figure shows four different robotic manipulation tasks: Pour Water, Mouse Arrangement, Fold Towels, and Unplug Charger.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustrations of all tasks. We derive the data scaling laws through extensive experiments on Pour Water and Mouse Arrangement, and further validate these findings on additional tasks, including Fold Towels and Unplug Charger.
> </details>





![](charts/charts_6_0.png)

> 🔼 The chart shows how a robot policy's ability to generalize to unseen objects changes as the number of training objects and the fraction of training demonstrations increases.
> <details>
> <summary>read the caption</summary>
> Figure 2: Object generalization. Each curve corresponds to a different fraction of demonstrations used, with normalized scores shown as a function of the number of training objects.
> </details>





{{< table-caption >}}
<table id='5' style='font-size:14px'><tr><td></td><td>Pour Water</td><td>Mouse Arrangement</td><td>Fold Towels</td><td>Unplug Charger</td></tr><tr><td>Score</td><td>0.922 士 0.075</td><td>0.933 士 0.088</td><td>0.95 士 0.062</td><td>0.887 士 0.14</td></tr><tr><td>Success Rate</td><td>85.0 士 19.4%</td><td>92.5 士 9.7%</td><td>87.5 士 17.1%</td><td>90.0 士 14.1%</td></tr></table>{{< /table-caption >}}

> 🔼 The table presents the average success rate and standard deviation of the policies across four tasks and eight unseen environments.
> <details>
> <summary>read the caption</summary>
> Table 1: Success rate across all tasks. We report the average success rate and standard deviation across 8 unseen environments. The performance in each environment is detailed in Table 12.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](figures/figures_16_0.png)

> 🔼 This figure shows eight unseen testing environments used to evaluate the generalization performance of the robotic manipulation policies across all four tasks.
> <details>
> <summary>read the caption</summary>
> Figure 12: Testing environments. These 8 environments are not included in the training data and are used across all tasks.
> </details>



![](figures/figures_16_1.png)

> 🔼 This figure shows eight unseen testing environments used to evaluate the generalization capability of the robotic policies across all four tasks.
> <details>
> <summary>read the caption</summary>
> Figure 12: Testing environments. These 8 environments are not included in the training data and are used across all tasks.
> </details>



![](figures/figures_17_0.png)

> 🔼 This figure shows eight unseen testing environments used to evaluate the generalization capabilities of the trained robotic manipulation policies across all four tasks.
> <details>
> <summary>read the caption</summary>
> Figure 12: Testing environments. These 8 environments are not included in the training data and are used across all tasks.
> </details>



![](figures/figures_17_1.png)

> 🔼 This figure shows eight unseen testing environments used to evaluate the generalization capabilities of the trained robot policies across four manipulation tasks.
> <details>
> <summary>read the caption</summary>
> Figure 12: Testing environments. These 8 environments are not included in the training data and are used across all tasks.
> </details>



![](figures/figures_17_2.png)

> 🔼 The figure shows eight unseen testing environments used to evaluate the generalization performance of the robotic policies across four different manipulation tasks.
> <details>
> <summary>read the caption</summary>
> Figure 12: Testing environments. These 8 environments are not included in the training data and are used across all tasks.
> </details>



![](figures/figures_18_0.png)

> 🔼 The figure shows the 64 training and 16 testing objects used in the Pour Water task of the robotic manipulation experiment.
> <details>
> <summary>read the caption</summary>
> Figure 13: Objects for Pour Water. All of our experiments include a total of 64 training bottles and mugs, as well as 16 unseen testing bottles and mugs.
> </details>



![](figures/figures_19_0.png)

> 🔼 The figure shows the 64 training and 16 testing mouse and mousepad used in the experiments.
> <details>
> <summary>read the caption</summary>
> Figure 14: Objects for Mouse Arrangement. All of our experiments include a total of 64 training mice and mouse pads, as well as 16 unseen testing mice and mouse pads.
> </details>



![](figures/figures_20_0.png)

> 🔼 This figure shows the 32 training towels and 16 testing towels used in the Fold Towels task of the robotic manipulation experiments.
> <details>
> <summary>read the caption</summary>
> Figure 15: Objects for Fold Towels. All of our experiments include a total of 32 training towels, as well as 16 unseen testing towels.
> </details>



![](figures/figures_21_0.png)

> 🔼 The figure shows the 32 training and 16 testing objects used in the Unplug Charger task, which includes various chargers and power strips.
> <details>
> <summary>read the caption</summary>
> Figure 16: Objects for Unplug Charger. All of our experiments include a total of 32 training chargers and power strips, as well as 16 unseen testing chargers and power strips.
> </details>



![](figures/figures_29_0.png)

> 🔼 The figure shows four UMI hand-held grippers used in the study, each equipped with a GoPro camera.
> <details>
> <summary>read the caption</summary>
> Figure 18: UMI hand-held grippers. We do not install side mirrors on the grippers.
> </details>



![](figures/figures_29_1.png)

> 🔼 The figure shows the hardware setup used for the robotic manipulation experiments, including a Franka Emika Panda robot, WSG-50 gripper, GoPro Hero 10 camera, workstation, and power supply.
> <details>
> <summary>read the caption</summary>
> Figure 19: Deployment hardware setup.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](charts/charts_6_1.png "🔼 Figure 3: Environment generalization. Each curve corresponds to a different fraction of demonstrations used, with normalized scores shown as a function of the number of training environments.")

> 🔼 The chart displays the relationship between a policy's ability to generalize to new environments and the number of training environments used, considering different fractions of demonstrations.
> <details>
> <summary>read the caption</summary>
> Figure 3: Environment generalization. Each curve corresponds to a different fraction of demonstrations used, with normalized scores shown as a function of the number of training environments.
> </details>


![](charts/charts_7_0.png "🔼 Figure 4: Generlization across environments and objects. Each curve corresponds to a different fraction of demonstrations used, with normalized scores shown as a function of the number of training environment-object pairs.")

> 🔼 The chart visualizes how a policy's generalization ability across both environments and objects scales with the number of training environment-object pairs, showing different performance trends based on varying fractions of training demonstrations.
> <details>
> <summary>read the caption</summary>
> Figure 4: Generlization across environments and objects. Each curve corresponds to a different fraction of demonstrations used, with normalized scores shown as a function of the number of training environment-object pairs.
> </details>


![](charts/charts_7_1.png "🔼 Figure 5: Power-law relationship. Dashed lines represent power-law fits, with the equations provided in the legend. All axes are shown on a logarithmic scale. The correlation coefficient r indicates a power-law relationship between the policy generalization ability and the number of objects, environments, and environment-object pairs. See Appendix G.1 for data scaling laws on MSE.")

> 🔼 The chart displays the power-law relationship between the policy's generalization ability and the number of training objects, environments, and environment-object pairs.
> <details>
> <summary>read the caption</summary>
> Figure 5: Power-law relationship. Dashed lines represent power-law fits, with the equations provided in the legend. All axes are shown on a logarithmic scale. The correlation coefficient r indicates a power-law relationship between the policy generalization ability and the number of objects, environments, and environment-object pairs. See Appendix G.1 for data scaling laws on MSE.
> </details>


![](charts/charts_8_0.png "🔼 Figure 6: Multiple objects per environment. Brighter colors indicate higher normalized scores.")

> 🔼 The heatmap visualizes the normalized scores achieved by policies trained with varying numbers of environments and objects per environment, revealing the impact of data diversity on policy generalization performance.
> <details>
> <summary>read the caption</summary>
> Figure 6: Multiple objects per environment. Brighter colors indicate higher normalized scores.
> </details>


![](charts/charts_9_0.png "🔼 Figure 7: Number of demonstrations. Left: In the setting where we collect the maximum number of demonstrations, we examine whether the policy's performance follows a power-law relationship with the total number of demonstrations. The correlation coefficients for Pour Water and Mouse Arrangement are -0.62 and -0.79, respectively, suggesting only a weak power-law relationship. Right: For varying environment-object pairs, the policy performance increases with the total number of demonstrations at first, and then reaches saturation.")

> 🔼 The chart displays the relationship between the number of demonstrations and the policy's performance, showing saturation at a certain number of demonstrations for both object and environment generalization.
> <details>
> <summary>read the caption</summary>
> Figure 7: Number of demonstrations. Left: In the setting where we collect the maximum number of demonstrations, we examine whether the policy's performance follows a power-law relationship with the total number of demonstrations. The correlation coefficients for Pour Water and Mouse Arrangement are -0.62 and -0.79, respectively, suggesting only a weak power-law relationship. Right: For varying environment-object pairs, the policy performance increases with the total number of demonstrations at first, and then reaches saturation.
> </details>


![](charts/charts_27_0.png "🔼 Figure 17: Comparison between normalized score and MSE. Left: In the object generalization experiment, the inverse correlation between MSE and normalized score is weak. Right: In the generalization experiment across both environments and objects, the inverse correlation between MSE and normalized score is very strong. Correlation coefficients (Pearson’s r and Spearman’s ρ) are shown in the bottom right.")

> 🔼 The chart compares the normalized score and MSE as evaluation metrics for object generalization and generalization across environments and objects, revealing a strong inverse correlation in the latter case.
> <details>
> <summary>read the caption</summary>
> Figure 17: Comparison between normalized score and MSE. Left: In the object generalization experiment, the inverse correlation between MSE and normalized score is weak. Right: In the generalization experiment across both environments and objects, the inverse correlation between MSE and normalized score is very strong. Correlation coefficients (Pearson’s r and Spearman’s ρ) are shown in the bottom right.
> </details>


![](charts/charts_30_0.png "🔼 Figure 20: Data scaling laws on MSE. Dashed lines represent power-law fits, with the equations provided in the legend. All axes are shown on a logarithmic scale.")

> 🔼 The chart shows the relationship between mean squared error (MSE) and the number of training objects, environments, and environment-object pairs.
> <details>
> <summary>read the caption</summary>
> Figure 20: Data scaling laws on MSE. Dashed lines represent power-law fits, with the equations provided in the legend. All axes are shown on a logarithmic scale.
> </details>


![](charts/charts_31_0.png "🔼 Figure 21: Object generalization. Each curve corresponds to a different total numbers of demonstrations used, with normalized scores shown as a function of the number of training objects.")

> 🔼 The chart displays the relationship between the number of training objects and the normalized score of the policy, while keeping the total number of demonstrations relatively constant across different data usage levels.
> <details>
> <summary>read the caption</summary>
> Figure 21: Object generalization. Each curve corresponds to a different total numbers of demonstrations used, with normalized scores shown as a function of the number of training objects.
> </details>


![](charts/charts_31_1.png "🔼 Figure 21: Object generalization. Each curve corresponds to a different total numbers of demonstrations used, with normalized scores shown as a function of the number of training objects.")

> 🔼 The chart displays the impact of the number of training objects on object generalization performance while keeping the total number of demonstrations relatively constant.
> <details>
> <summary>read the caption</summary>
> Figure 21: Object generalization. Each curve corresponds to a different total numbers of demonstrations used, with normalized scores shown as a function of the number of training objects.
> </details>


![](charts/charts_31_2.png "🔼 Figure 23: Generalization across environments and objects. Each curve corresponds to a different total numbers of demonstrations used, with normalized scores shown as a function of the number of training environment-object pairs.")

> 🔼 The chart shows how a policy's generalization ability to new environments and objects improves with the number of training environment-object pairs, even when the total number of demonstrations is kept relatively constant.
> <details>
> <summary>read the caption</summary>
> Figure 23: Generalization across environments and objects. Each curve corresponds to a different total numbers of demonstrations used, with normalized scores shown as a function of the number of training environment-object pairs.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Case</td><td>Score</td><td></td><td></td></tr><tr><td>DINOv2 ViT-L/14</td><td>0.90</td><td>Case</td><td>Score</td></tr><tr><td>LfS ViT-L/14</td><td>0.03</td><td>DINOv2 ViT-S/14</td><td>0.66</td></tr><tr><td>frozen DINOv2</td><td>0.00</td><td>DINOv2 ViT-B/14</td><td>0.81</td></tr><tr><td>LoRA DINOv2</td><td>0.72</td><td>DINOv2 ViT-L/14</td><td>0.90</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 shows the results of experiments conducted to investigate the impact of training strategies and model size on the performance of a diffusion policy for the Pour Water task.


{{< table-caption >}}
<br><table id='2' style='font-size:14px'><tr><td>Case</td><td>Score</td></tr><tr><td>small U-Net</td><td>0.88</td></tr><tr><td>base U-Net</td><td>0.90</td></tr><tr><td>large U-Net</td><td>0.83</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table shows the results of model-related experiments on Pour Water, comparing different visual encoder sizes and training strategies, and the effect of scaling the action diffusion model.


{{< table-caption >}}
<table id='5' style='font-size:14px'><tr><td>Config</td><td>Value</td></tr><tr><td>Image observation horizon</td><td>3 (Pour Water, Unplug Charger), 2 (other tasks)</td></tr><tr><td>Proprioception observation horizon</td><td>3 (Pour Water, Unplug Charger), 2 (other tasks)</td></tr><tr><td>Action horizon</td><td>16</td></tr><tr><td>Observation resolution</td><td>224x224</td></tr><tr><td>Environment frequency</td><td>5</td></tr><tr><td>Optimizer</td><td>AdamW</td></tr><tr><td>Optimizer momentum</td><td>B1, B2 = 0.95, 0.999</td></tr><tr><td>Learning rate for action diffusion model</td><td>3e-4</td></tr><tr><td>Learning rate for visual encoder</td><td>3e-5</td></tr><tr><td>Learning rate schedule</td><td>cosine decay</td></tr><tr><td>Batch size</td><td>256</td></tr><tr><td>Inference denoising iterations</td><td>16</td></tr><tr><td>Temporal ensemble steps</td><td>8</td></tr><tr><td>Temporal ensemble adaptation rate</td><td>-0.01</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 3 shows the default set of hyperparameters used in the policy training process, including image observation horizon, action horizon, optimizer, and learning rate.


{{< table-caption >}}
<table id='5' style='font-size:14px'><tr><td>Usage</td><td rowspan="2">3.125%</td><td rowspan="2">6.25%</td><td rowspan="2">12.5%</td><td rowspan="2">25%</td><td rowspan="2">50%</td><td rowspan="2">100%</td></tr><tr><td>#Envs</td></tr><tr><td>1</td><td></td><td></td><td></td><td></td><td></td><td>1.3</td></tr><tr><td>2</td><td></td><td></td><td></td><td></td><td>2.85</td><td>3.325</td></tr><tr><td>4</td><td></td><td></td><td></td><td>2.55</td><td>4.3</td><td>4.475</td></tr><tr><td>8</td><td></td><td></td><td>3.925</td><td>6.1</td><td>6.575</td><td>6.2</td></tr><tr><td>16</td><td></td><td>4.15</td><td>6.2</td><td>6.525</td><td>7.85</td><td>8</td></tr><tr><td>32</td><td>3.475</td><td>6.55</td><td>7.2</td><td>8.65</td><td>8.75</td><td>8.6</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 5 shows the results of an experiment on Pour Water, measuring the effect of increasing the number of training environments on the policy's generalization ability while controlling for the number of training objects and demonstrating the power-law relationship of the data.


{{< table-caption >}}
<table id='9' style='font-size:14px'><tr><td>#Demos</td><td>64</td><td>100</td><td>200</td><td>400</td><td>800</td><td>1600</td><td>3200</td><td>6400</td></tr><tr><td>Score</td><td>4.35</td><td>6.15</td><td>6.875</td><td>7.025</td><td>6.975</td><td>7.2</td><td>7.125</td><td>6.525</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 7 shows the relationship between the number of demonstrations and the normalized score for the Pour Water task, after normalizing the raw scores by dividing them by 9.


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Usage</td><td>3.125%</td><td>6.25%</td><td>12.5%</td><td>25%</td><td>50%</td><td>100%</td></tr><tr><td>#Objs 1</td><td></td><td></td><td></td><td></td><td></td><td>1.3</td></tr><tr><td>2</td><td></td><td></td><td></td><td></td><td>2.475</td><td>3.25</td></tr><tr><td>4</td><td></td><td></td><td></td><td>2.425</td><td>2.975</td><td>3.625</td></tr><tr><td>8</td><td></td><td></td><td>1.75</td><td>3.525</td><td>4.1</td><td>4.8</td></tr><tr><td>16</td><td></td><td>2.525</td><td>3.675</td><td>3.925</td><td>4.425</td><td>5.325</td></tr><tr><td>32</td><td>3.7</td><td>3.675</td><td>4.2</td><td>5.025</td><td>5.175</td><td>5.575</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table shows the raw test scores of object generalization on Mouse Arrangement before normalization, where scores are shown for different fractions of demonstrations used and numbers of training objects.


{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>Usage</td><td>3.125%</td><td>6.25%</td><td>12.5%</td><td>25%</td><td>50%</td><td>100%</td></tr><tr><td>#Envs 1</td><td></td><td></td><td></td><td></td><td></td><td>1.3</td></tr><tr><td>2</td><td></td><td></td><td></td><td></td><td>1.975</td><td>2.475</td></tr><tr><td>4</td><td></td><td></td><td></td><td>1.8</td><td>3.3</td><td>3.625</td></tr><tr><td>8</td><td></td><td></td><td>2.075</td><td>2.5</td><td>3.2</td><td>3.6</td></tr><tr><td>16</td><td></td><td>1.525</td><td>3.65</td><td>3.8</td><td>4.375</td><td>4.45</td></tr><tr><td>32</td><td>2.725</td><td>3.325</td><td>3.9</td><td>4.7</td><td>5.125</td><td>5.2</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table shows the raw test scores of environment generalization on Mouse Arrangement before normalization.


{{< table-caption >}}
<table id='5' style='font-size:14px'><tr><td>Usage</td><td>3.125%</td><td>6.25%</td><td>12.5%</td><td>25%</td><td>50%</td><td>100%</td></tr><tr><td>#Pairs 1</td><td></td><td></td><td></td><td></td><td></td><td>0.75</td></tr><tr><td>2</td><td></td><td></td><td></td><td></td><td>0.975</td><td>0.875</td></tr><tr><td>4</td><td></td><td></td><td></td><td>1.8</td><td>2.3</td><td>2.325</td></tr><tr><td>8</td><td></td><td></td><td>2.425</td><td>3.725</td><td>3.425</td><td>3.35</td></tr><tr><td>16</td><td></td><td>3.375</td><td>4.925</td><td>4.5</td><td>5.05</td><td>4.75</td></tr><tr><td>32</td><td>4.225</td><td>4.225</td><td>5.075</td><td>5.2</td><td>5.6</td><td>5.525</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents the raw success scores for the Mouse Arrangement task before normalization, categorized by the number of training environment-object pairs and the fraction of demonstrations used.


{{< table-caption >}}
<table id='7' style='font-size:14px'><tr><td>#Demos</td><td>64</td><td>100</td><td>200</td><td>400</td><td>800</td><td>1600</td><td>3200</td><td>6400</td></tr><tr><td>Score</td><td>1.725</td><td>3.025</td><td>3.3</td><td>3.775</td><td>3.975</td><td>3.8</td><td>3.875</td><td>3.8</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 11 presents the normalized scores for the Mouse Arrangement task based on varying numbers of demonstrations, used to generate Figure 7 in the paper.


{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td></td><td colspan="8">Environment ID</td><td></td></tr><tr><td>Task</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>Mean</td></tr><tr><td>Pour Water</td><td>80%</td><td>40%</td><td>100%</td><td>80%</td><td>100%</td><td>100%</td><td>80%</td><td>100%</td><td>85%</td></tr><tr><td>Mouse Arrangement</td><td>100%</td><td>80%</td><td>100%</td><td>100%</td><td>80%</td><td>80%</td><td>100%</td><td>100%</td><td>92.5%</td></tr><tr><td>Fold Towels</td><td>100%</td><td>100%</td><td>60%</td><td>100%</td><td>100%</td><td>60%</td><td>100%</td><td>80%</td><td>87.5%</td></tr><tr><td>Unplug Charger</td><td>80%</td><td>60%</td><td>100%</td><td>100%</td><td>100%</td><td>80%</td><td>100%</td><td>100%</td><td>90%</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> This table presents the success rates of the policies trained across 32 environment-object pairs for each task, showing the success rate in each of eight evaluation environments.


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
<img src="paper_images/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/25.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/26.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/27.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/28.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/29.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/30.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/31.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/32.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/33.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/34.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}