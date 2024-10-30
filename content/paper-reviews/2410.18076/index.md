---
title: "Leveraging Skills from Unlabeled Prior Data for Efficient Online Exploration"
summary: "SUPE leverages unlabeled prior data to pre-train skills and pseudo-label trajectories for efficient online RL exploration, significantly outperforming existing methods on challenging tasks."
categories: ["AI Generated"]
tags: ["🔖 24-10-23", ]
showSummary: true
date: 2024-10-23
draft: false
---

{{< keyword >}} 2410.18076 {{< /keyword >}}

### TL;DR


{{< lead >}}

Reinforcement learning (RL) agents often struggle with exploration, especially in complex environments with sparse rewards. This paper introduces SUPE, a new method that uses previously collected, unlabeled data to improve exploration.  SUPE first extracts reusable skills from the unlabeled data using a technique called a variational autoencoder. Then, it uses an optimistic reward model to estimate rewards for past experiences and convert this unlabeled data into something more useful for training. This new data is used alongside the agent's new experiences to train a high-level policy that efficiently uses the pre-trained skills to explore and solve the task. In experiments across several challenging tasks, SUPE significantly outperformed other methods, demonstrating its ability to learn more efficiently by leveraging readily available unlabeled data.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18076" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.18076" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is important because it presents a novel method for efficient online exploration in reinforcement learning, a critical area for developing more robust and adaptable AI systems.  The use of unlabeled prior data, a readily available resource, significantly improves exploration efficiency, opening new avenues for research in data-driven exploration strategies and hierarchical RL.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SUPE uses unlabeled data twice: offline for skill pre-training and online for improved exploration. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Combining offline skill learning and online RL enhances exploration efficiency. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} SUPE consistently outperforms existing methods in challenging sparse-reward environments. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.18076/figures_2_0.png)

> 🔼 The figure illustrates the SUPE method, showing how unlabeled trajectory data is used for both offline skill pretraining and online high-level policy learning via off-policy RL.
> <details>
> <summary>read the caption</summary>
> Figure 1: SUPE utilizes unlabeled trajectory data twice, both for offline unsupervised skill pretraining and for online high-level policy learning using RL. Left: in the offline pretraining phase (Stage 1), we unsupervisedly learn both a trajectory segment encoder (a) and a low-level latent conditioned skill policy (b) via a behavior cloning objective where the policy is optimized to reconstruct the action in the trajectory segment. Right: in the online exploration phase (Stage 2), the pretrained trajectory segment encoder (a) and an optimistic reward module (d) are used to pseudo-label the prior data and transform it into high-level trajectories (f) that can be readily consumed by a high-level off-policy RL agent. Leveraging these offline trajectories and the online replay buffer (e), we learn a high-level policy (c) that picks the pretrained low-level skills online to explore in the environment. Finally, the observed transitions and reward values are used to update the optimistic reward module and the online replay buffer.
> </details>





![](https://ai-paper-reviewer.com/2410.18076/charts_8_0.png)

> 🔼 The chart shows the aggregated normalized return across three different domains (AntMaze, Visual AntMaze, and Kitchen) over various environment steps for different exploration strategies.
> <details>
> <summary>read the caption</summary>
> Figure 3: Aggregated normalized return across three different domains. Ours achieves the best performance through training on all three domains. ExPLORe achieves strong later stage performance on AntMaze, but struggles in high-dimensional Visual AntMaze and Kitchen tasks. Online w/ HILP Skills and HILP w/ Offline Data achieve decent initial return on Kitchen, but struggle to learn in all three domains. Online w/ Trajectory Skills consistently underperforms Ours across all three environments. Diffusion BC + JSRL learns reasonably well in Kitchen, but performs much worse in AntMaze and Visual AntMaze. Online does not perform competitively at any stage of exploration. Section 5.2 contains details on the baselines we compare with. Each curve is an average over 8 seeds. For AntMaze, we aggregate over 3 maze layouts and 4 goals. For Kitchen, we aggregate over 3 tasks. For Visual AntMaze, we aggregate over 4 goals on one maze layout.
> </details>





{{< table-caption >}}
<br><table id='7' style='font-size:18px'><tr><td>Parameter Name</td><td>Value</td></tr><tr><td>Batch size</td><td>256</td></tr><tr><td>Optimizer</td><td>Adam</td></tr><tr><td>Learning rate</td><td>3 X 10-4</td></tr><tr><td>GRU Hidden Size</td><td>256</td></tr><tr><td>GRU Layers</td><td>2 hidden layers</td></tr><tr><td>KL Coefficient (B)</td><td>0.1</td></tr><tr><td>VAE Prior</td><td>state-conditioned isotropic Gaussian distribution over the latent</td></tr><tr><td>VAE Posterior</td><td>isotropic Gaussian distribution over the latent</td></tr><tr><td>Reconstruction Policy Decoder</td><td>isotropic Gaussian distribution over the action space</td></tr><tr><td>Latent Dimension</td><td>8</td></tr><tr><td>Trajectory Segment Length (H)</td><td>4</td></tr><tr><td>Image Encoder Latent Dim</td><td>50</td></tr></table>{{< /table-caption >}}

> 🔼 This table shows the hyperparameters used for training the variational autoencoder (VAE) in the SUPE algorithm.
> <details>
> <summary>read the caption</summary>
> Table 2: VAE training details.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.18076/figures_6_0.png)

> 🔼 Figure 2 shows the three challenging sparse-reward environments used in the paper: AntMaze, Kitchen, and Visual AntMaze.
> <details>
> <summary>read the caption</summary>
> Figure 2: We experiment on three challenging, sparse-reward domains: AntMaze, Kitchen, and Visual AntMaze. a): AntMaze (Fu et al., 2020) (state-based) with three different maze layouts (antmaze-medium, antmaze-large, and antmaze-ultra) and the corresponding four goal locations (denoted as the red dots) that we experiment with for each of the layouts; b): Kitchen (Fu et al., 2020) (state-based); c): Visual AntMaze (Park et al., 2023a) with colors added to the floor with local 64 × 64 image observations (e.g., see examples right of the maze). The color of the floor uniquely identifies the ant's position within the maze. For both state-based and visual AntMaze, the ant starts at the bottom-left corner in the beginning of every episode.
> </details>



![](https://ai-paper-reviewer.com/2410.18076/figures_9_0.png)

> 🔼 Figure 2 shows the three challenging sparse-reward environments used in the paper: AntMaze, Kitchen, and Visual AntMaze, illustrating their layouts and observation modalities.
> <details>
> <summary>read the caption</summary>
> Figure 2: We experiment on three challenging, sparse-reward domains: AntMaze, Kitchen, and Visual AntMaze. a): AntMaze (Fu et al., 2020) (state-based) with three different maze layouts (antmaze-medium, antmaze-large, and antmaze-ultra) and the corresponding four goal locations (denoted as the red dots) that we experiment with for each of the layouts; b): Kitchen (Fu et al., 2020) (state-based); c): Visual AntMaze (Park et al., 2023a) with colors added to the floor with local 64 × 64 image observations (e.g., see examples right of the maze). The color of the floor uniquely identifies the ant's position within the maze. For both state-based and visual AntMaze, the ant starts at the bottom-left corner in the beginning of every episode.
> </details>



![](https://ai-paper-reviewer.com/2410.18076/figures_23_0.png)

> 🔼 The figure shows the three challenging sparse-reward environments used in the paper: AntMaze, Kitchen, and Visual AntMaze, illustrating their layouts and observation modalities.
> <details>
> <summary>read the caption</summary>
> Figure 2: We experiment on three challenging, sparse-reward domains: AntMaze, Kitchen, and Visual AntMaze. a): AntMaze (Fu et al., 2020) (state-based) with three different maze layouts (antmaze-medium, antmaze-large, and antmaze-ultra) and the corresponding four goal locations (denoted as the red dots) that we experiment with for each of the layouts; b): Kitchen (Fu et al., 2020) (state-based); c): Visual AntMaze (Park et al., 2023a) with colors added to the floor with local 64 × 64 image observations (e.g., see examples right of the maze). The color of the floor uniquely identifies the ant's position within the maze. For both state-based and visual AntMaze, the ant starts at the bottom-left corner in the beginning of every episode.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.18076/charts_10_0.png)

> 🔼 The chart displays the coverage performance of different exploration methods across three AntMaze environments over training time.
> <details>
> <summary>read the caption</summary>
> Figure 5: Coverage on three different AntMaze mazes, averaged over runs on four goals. Ours has the best coverage performance on the challenging antmaze-ultra, and is only passed by HILP w/ Offline Data on antmaze-large. Online w/ Traj. Skills and Online with HILP Skills struggle to explore after initial learning, and Online and Diffusion BC + JSRL generally perform poorly at all time steps.
> </details>


![](https://ai-paper-reviewer.com/2410.18076/charts_19_0.png)

> 🔼 The chart shows the success rate of different methods on the Visual AntMaze environment with and without using ICVF (a method for learning image/state representations from passive data).
> <details>
> <summary>read the caption</summary>
> Figure 6: Success rate on Visual AntMaze environment with and without ICVF. Ours works well without ICVF, almost matching the original performance. However, the other baselines Online w/ Trajectory Skills and EXPLORe achieve far worse performance without ICVF, which shows that using offline data both for extracting skills and online learning leads to better utilization of noisy exploration bonuses. Initializing ExPLORe critic with ICVF helps, but does not substantially change performance.
> </details>


![](https://ai-paper-reviewer.com/2410.18076/charts_20_0.png)

> 🔼 The chart compares the performance of the proposed method (Ours) with a KL-regularized version and ExPLORE across three AntMaze environments of varying complexity.
> <details>
> <summary>read the caption</summary>
> Figure 7: Normalized return on three AntMaze mazes, comparing Ours with a KL regularized alternative (Ours (KL)). We that Ours consistently outperforms Ours (KL) on all three mazes, with initial learning that is at least as fast and significantly improved asymptotic performance. Only Ours is able to meet or surpass the asymptotic performance of ExPLORe on all mazes.
> </details>


![](https://ai-paper-reviewer.com/2410.18076/charts_21_0.png)

> 🔼 The chart displays the success rate of different methods across various AntMaze goal locations, illustrating the impact of online RND and the effectiveness of the proposed method.
> <details>
> <summary>read the caption</summary>
> Figure 8: Success rate by goal location. The addition of online RND in ExPLORe leads to better performance on goals with less offline data coverage, and slightly worse performance on goals well-represented in the dataset. Ours consistently matches are outperforms all other methods on all goals throughout training.
> </details>


![](https://ai-paper-reviewer.com/2410.18076/charts_22_0.png)

> 🔼 The chart displays the percentage of the maze explored by different methods over time across various goal locations and maze sizes.
> <details>
> <summary>read the caption</summary>
> Figure 9: Coverage for every goal location on three antmaze environments. There is significant variation between goals, and Ours consistently has the best initial coverage performance on 11 of 12 goals. Flattening coverage compared to other methods can be at least partially attributed to having already found the goal, and sucessfully optimizing reaching that goal, rather than continuing to explore after already finding the goal.
> </details>


![](https://ai-paper-reviewer.com/2410.18076/charts_23_0.png)

> 🔼 The chart displays the success rate of different reinforcement learning methods on the AntMaze task under two data corruption scenarios (5% data and insufficient coverage), showing the robustness of the proposed method.
> <details>
> <summary>read the caption</summary>
> Figure 10: Data corruption ablation on state-based antmaze-large. Top: The success rate of different methods on these data corruption settings. Bottom: Visualization of the data distribution for each corruption setting. We experiment with two data corruption settings. Our method performs worse than the full data setting but still consistently outperforms all baselines.
> </details>


</details>



### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.18076/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18076/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18076/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18076/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18076/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18076/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18076/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18076/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18076/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18076/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18076/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18076/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18076/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18076/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18076/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18076/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18076/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18076/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18076/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18076/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18076/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18076/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18076/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}