---
title: "Steering Your Generalists: Improving Robotic Foundation Models via Value Guidance"
summary: "Value-Guided Policy Steering (V-GPS) improves pre-trained generalist robotic policies by re-ranking actions based on a value function learned from offline RL, leading to consistent performance gains a....."
categories: ["AI Generated"]
tags: ["🔖 2024-10-17", "🤗 2024-10-24"]
showSummary: true
date: 2024-10-17
draft: false
---

### TL;DR


{{< lead >}}

Value-Guided Policy Steering (V-GPS) improves pre-trained generalist robotic policies by re-ranking actions based on a value function learned from offline RL, leading to consistent performance gains across various robots and tasks without the need for fine-tuning.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.13816" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
This paper introduces Value-Guided Policy Steering (V-GPS), a novel method to improve the performance of pre-trained generalist robotic policies.  V-GPS re-ranks actions proposed by a generalist policy using a value function learned via offline reinforcement learning (RL), without requiring fine-tuning or access to the policy's weights.  Experiments on multiple robotic platforms and tasks demonstrate consistent performance improvements.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} V-GPS enhances generalist robotic policies' precision and robustness without needing to fine-tune or access their weights. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A single V-GPS value function improves performance across different generalist policies trained on varied datasets. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} V-GPS consistently boosts performance in both simulated and real-world robotic manipulation tasks. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_1_0.png "🔼 Figure 1: (V-GPS) We introduce Value-Guided Policy Steering (V-GPS), a novel approach that improves the performance of pre-trained generalist robotic policies by re-ranking their actions at deployment time based on a value function learned via offline RL. The same single V-GPS value function can be combined with any off-the-shelf generalist policy in a plug-and-play manner, without the need to fine-tune or access the policy's weights, improving downstream performance across multiple robotic platforms.")





{{< table-caption caption="🔽  (Real-world performance) V-GPS consistently improves the success rates of Octo across the board, achieving an 82.8% improvement on average. This demonstrates that using our value function to re-rank the actions can enhance the generalist policy." >}}
| Task | Task | Octo-small-1.5 | V-GPS (Ours) | Improvement |
| --- | --- | --- | --- | --- |
| Scene A | Green pepper in pot | 0.15 | 0.35 |  |
| Scene A | Sweet potato on cloth | 0.30 | 0.35 |  |
| Scene A | Average | 0.23 | 0.35 | +55.6% |
| Scene B | Mushroom on cloth | 0.35 | 0.70 |  |
| Scene B | Mushroom in pot | 0.30 | 0.55 |  |
| Scene B | Average | 0.33 | 0.63 | +92.3% |
| Scene C | Sushi in pot | 0.10 | 0.30 |  |
| Scene C | Spoon in pot | 0.25 | 0.40 |  |
| Scene C | Average | 0.18 | 0.35 | +100% |
| Total | Average | 0.24 | 0.44 | +82.8% |
{{< /table-caption >}}





<details>
<summary>More on figures
</summary>


![](figures/figures_6_0.png "🔼 Figure 3: (Experimental setup) We evaluate our method on 12 tasks in total. In the real-world WidowX robot platform, we study 6 tasks across 3 different scenes. In the SIMPLER simulated evaluation suite, we study 4 tasks on the WidowX platform and 2 tasks on the Google Robot.")

![](figures/figures_7_0.png "🔼 Figure 2: (Failures of Octo) Octo policy encounters failures such as imprecise grasping (first row), dropping the object prematurely (second row), and holding onto the object for too long (third row).")

![](figures/figures_15_0.png "🔼 Figure 5: (Model Architecture.) Our value function uses a ResNet-34 image encoder with FiLM language conditioning.")


</details>

------







<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 (SIMPLER [11] performance) V-GPS improves the success rates of all five generalist policies across multiple embodiments using the same single value function." >}}
| Task | Task | Octo-s | Octo-s +Ours | Octo-b | Octo-b +Ours | Octo-s-1.5 | Octo-s-1.5 +Ours | RT-1-X | RT-1-X +Ours | OpenVLA | OpenVLA +Ours |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| WidowX | Spoon on towel | 0.52 | 0.46 | 0.25 | 0.21 | 0.01 | 0.06 | 0.01 | 0.01 | 0.00 | 0.00 |
| WidowX | Carrot on plate | 0.15 | 0.16 | 0.18 | 0.24 | 0.00 | 0.00 | 0.06 | 0.07 | 0.06 | 0.04 |
| WidowX | Stack blocks | 0.07 | 0.07 | 0.00 | 0.01 | 0.00 | 0.02 | 0.00 | 0.00 | 0.00 | 0.02 |
| WidowX | Eggplant basket | 0.49 | 0.84 | 0.28 | 0.33 | 0.01 | 0.44 | 0.01 | 0.03 | 0.14 | 0.20 |
| WidowX | Average | 0.30 | 0.38 | 0.17 | 0.20 | 0.01 | 0.13 | 0.02 | 0.03 | 0.05 | 0.07 |
| Google Robot | Pick Can | 0.31 | 0.38 | 0.29 | 0.24 | 0.05 | 0.43 | 0.19 | 0.29 | 0.72 | 0.82 |
| Google Robot | Put Near | 0.12 | 0.16 | 0.04 | 0.05 | 0.10 | 0.15 | 0.44 | 0.42 | 0.52 | 0.56 |
| Google Robot | Average | 0.22 | 0.27 | 0.17 | 0.14 | 0.07 | 0.29 | 0.32 | 0.36 | 0.62 | 0.69 |
| Total | Average | 0.27 | 0.34 | 0.17 | 0.18 | 0.02 | 0.18 | 0.12 | 0.14 | 0.24 | 0.27 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 3: (V-GPS with IQL) Using an IQL value function for V-GPS is also effective for improving the success rates of all five generalist policies across multiple embodiments." >}}
| Task | Task | Octo-s | Octo-s +Ours | Octo-b | Octo-b +Ours | Octo-s-1.5 | Octo-s-1.5 +Ours | RT1-X | RT1-X +Ours | OpenVLA | OpenVLA +Ours |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| WidowX | Spoon on towel | 0.52 | 0.50 | 0.25 | 0.16 | 0.01 | 0.07 | 0.01 | 0.03 | 0.00 | 0.02 |
| WidowX | Carrot on plate | 0.15 | 0.18 | 0.18 | 0.20 | 0.00 | 0.00 | 0.06 | 0.07 | 0.06 | 0.06 |
| WidowX | Stack blocks | 0.07 | 0.09 | 0.00 | 0.00 | 0.00 | 0.02 | 0.00 | 0.00 | 0.00 | 0.00 |
| WidowX | Eggplant basket | 0.49 | 0.59 | 0.28 | 0.37 | 0.01 | 0.07 | 0.01 | 0.01 | 0.14 | 0.54 |
| WidowX | Average | 0.30 | 0.34 | 0.17 | 0.18 | 0.01 | 0.04 | 0.02 | 0.03 | 0.05 | 0.15 |
| Google Robot | Pick Can | 0.31 | 0.30 | 0.29 | 0.30 | 0.05 | 0.47 | 0.19 | 0.32 | 0.72 | 0.78 |
| Google Robot | Put Near | 0.12 | 0.17 | 0.04 | 0.06 | 0.10 | 0.21 | 0.44 | 0.43 | 0.52 | 0.44 |
| Google Robot | Average | 0.22 | 0.23 | 0.17 | 0.18 | 0.07 | 0.18 | 0.32 | 0.37 | 0.62 | 0.61 |
| Total | Average | 0.27 | 0.31 | 0.17 | 0.18 | 0.02 | 0.14 | 0.12 | 0.15 | 0.24 | 0.31 |
{{< /table-caption >}}

{{< table-caption caption="🔽 (Real-world performance) V-GPS consistently improves the success rates of Octo across the board, achieving an 82.8% improvement on average. This demonstrates that using our value function to re-rank the actions can enhance the generalist policy." >}}
| Cal-QL a | 5.0 |
| --- | --- |
| IQL expectile T | 0.7 |
| discount factor | 0.98 |
| learning rate | 3e-4 |
| positive reward steps H | 3 |
| number of actions to sample K | {10, 50} |
| softmax temperature B | {0, 0.1, 1.0} |
{{< /table-caption >}}

{{< table-caption caption="🔽 (Real-world performance) V-GPS consistently improves the success rates of Octo across the board, achieving an 82.8% improvement on average. This demonstrates that using our value function to re-rank the actions can enhance the generalist policy." >}}
|  | Language Instructions |
| --- | --- |
| Scene A | put the green pepper in the pot put the sweet potato on the cloth |
| Scene B | put the mushroom on the cloth put the mushroom in the pot |
| Scene C | put the sushi in the pot put the green spoon in the pot |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: (Real-world performance) V-GPS consistently improves the success rates of Octo across the board, achieving an 82.8% improvement on average. This demonstrates that using our value function to re-rank the actions can enhance the generalist policy." >}}
|  | Language Instructions |
| --- | --- |
| WidowX | put the spoon on the towel put carrot on plate stack the green block on the yellow block put eggplant into yellow basket |
| Google Robot | pick coke can move {object1} near {object2} |
{{< /table-caption >}}

{{< table-caption caption="🔽 (Real-world performance) V-GPS consistently improves the success rates of Octo across the board, achieving an 82.8% improvement on average. This demonstrates that using our value function to re-rank the actions can enhance the generalist policy." >}}
| Task | Octo-small | Octo-finetuned | Octo-scratch | Resnet-DP | Ours (IQL) | Ours (Cal-QL) |
| --- | --- | --- | --- | --- | --- | --- |
| Spoon on towel | 0.52 | 0.28 | 0.01 | 0.05 | 0.50 | 0.46 |
| Carrot on Plate | 0.15 | 0.12 | 0.01 | 0.01 | 0.18 | 0.15 |
| Stack blocks | 0.07 | 0.06 | 0.00 | 0.06 | 0.09 | 0.07 |
| Eggplant basket | 0.49 | 0.41 | 0.00 | 0.37 | 0.59 | 0.84 |
| Average | 0.30 | 0.22 | 0.01 | 0.12 | 0.34 | 0.38 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 8: (Ablation over the size of datasets.) Even a value function trained on small amounts of data can be effective in guiding generalist policies at test time." >}}
| Model | Success Rate |
| --- | --- |
| Octo-small (baseline) | 0.49 |
| Ours-100% | 0.59 |
| Ours-50% | 0.59 |
| Ours-10% | 0.55 |
{{< /table-caption >}}

{{< table-caption caption="🔽 (Real-world performance) V-GPS consistently improves the success rates of Octo across the board, achieving an 82.8% improvement on average. This demonstrates that using our value function to re-rank the actions can enhance the generalist policy." >}}
| Method | Inference time (s) | Overhead |
| --- | --- | --- |
| Octo-small | 0.0752 | 1.00 |
| Ours K = 10 | 0.0963 | 1.28 |
| Ours K = 30 | 0.1096 | 1.46 |
| Ours K = 50 | 0.1196 | 1.59 |
| Ours K = 100 | 0.1596 | 2.12 |
{{< /table-caption >}}

{{< table-caption caption="🔽 (SIMPLER [11] performance) V-GPS improves the success rates of all five generalist policies across multiple embodiments using the same single value function." >}}
| Task | Eggplant | Eggplant | Pick Coke | Pick Coke |
| --- | --- | --- | --- | --- |
| Offline RL method | IQL | Cal-QL | IQL | Cal-QL |
| Octo-small (baseline) | 0.49 | 0.49 | 0.31 | 0.31 |
| Ours K = 10 | 0.59 | 0.77 | 0.30 | 0.38 |
| Ours K = 30 | 0.47 | 0.81 | 0.37 | 0.38 |
| Ours K = 50 | 0.42 | 0.84 | 0.31 | 0.38 |
| Ours K = 100 | 0.35 | 0.63 | 0.37 | 0.36 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: (Real-world performance) V-GPS consistently improves the success rates of Octo across the board, achieving an 82.8% improvement on average. This demonstrates that using our value function to re-rank the actions can enhance the generalist policy." >}}
| Task | IQL actor | Cal-QL actor |
| --- | --- | --- |
| Spoon on towel | 0.00 | 0.00 |
| Eggplant basket | 0.00 | 0.00 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 2: (SIMPLER [11] performance) V-GPS improves the success rates of all five generalist policies across multiple embodiments using the same single value function." >}}
| Method | Success Rate |
| --- | --- |
| Octo-small (baseline) | 0.49 |
| Random-selecting | 0.49 |
| Random-policy | 0.00 |
| V-GPS (ours) | 0.84 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 2: (SIMPLER [11] performance) V-GPS improves the success rates of all five generalist policies across multiple embodiments using the same single value function." >}}
| Model | Num Params |
| --- | --- |
| Q Network (Ours) | 25.6M |
| Octo-small | 27M |
| Octo-base | 93M |
| OpenVLA | 7B |
| RT1-X | 35M |
{{< /table-caption >}}


</details>

------



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