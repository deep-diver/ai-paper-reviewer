---
title: "Efficient Diffusion Transformer Policies with Mixture of Expert Denoisers for Multitask Learning"
summary: "MoDE makes AI for robot control faster and more efficient."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Robotics", "🏢 MIT",]
showSummary: true
date: 2024-12-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.12953 {{< /keyword >}}
{{< keyword icon="writer" >}} Moritz Reuss et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.12953" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.12953" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/efficient-diffusion-transformer-policies-with" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.12953/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

AI is increasingly used to control robots, learning from human demonstrations. **Diffusion Policies**, a cutting-edge method, enable robots to learn complex, versatile behaviors. However, these models can become computationally expensive, limiting their real-world use, especially for robots with limited processing power. This poses a challenge for researchers seeking to deploy these advanced AI models on real-world robotic systems.

To overcome this obstacle, the researchers introduced **MoDE (Mixture-of-Denoising Experts)**, a new type of Diffusion Policy.  MoDE uses a clever trick: it only activates parts of the model relevant to the robot's current situation, making the process much more efficient.  It routes tokens based on the noise levels, which also enables smart caching, cutting down processing time even further. Tests showed MoDE outperforms current top methods while using less computational resources and even achieving state-of-the-art performance in complex, multi-step tasks, showcasing the power of this efficient design.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MoDE outperforms existing diffusion policies while being computationally cheaper. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Noise-conditioned routing enables expert specialization and efficient caching. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Diverse pretraining on robotics data significantly improves MoDE’s performance {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**MoDE offers a novel approach to building more efficient and scalable diffusion policies for robotics.** It tackles the computational bottleneck of large diffusion models by reducing inference costs and active parameters.  This opens new possibilities for real-time applications and resource-constrained robots. Future work on routing mechanisms could further enhance stability and expert utilization.

------
#### Visual Insights



![](https://arxiv.org/html/2412.12953/x1.png)

> 🔼 MoDE architecture uses a transformer with causal masking. Each transformer block has noise-conditional self-attention and a router.  The router selects expert models based on the noise level of the input. During denoising, the router activates subsets of MLP experts which use Swish-GLU activations.
> <details>
> <summary>read the caption</summary>
> Figure 1: The proposed MoDE architecture (left) uses a transformer with causal masking, where each block includes noise-conditional self-attention and a noise-conditioned router that assigns tokens to expert models based on the noise level. This design enables efficient, scalable action generation. On the right, the router’s activation of subsets of simple MLP experts with Swish-GLU activation during denoising is illustrated.
> </details>





{{< table-caption >}}
| Train → Test | Method | Active Params in Million | PrT | No. Instructions in a Row (1000 chains) |  |  |  |  | **Avg. Len.** |
|---|---|---|---|---|---|---|---|---|---| 
| ABCD → D | Diff-P-CNN | 321 | × | 86.3% | 72.7% | 60.1% | 51.2% | 41.7% | 3.16 ± 0.06 |
| | Diff-P-T | 194 | × | 78.3% | 53.9% | 33.8% | 20.4% | 11.3% | 1.98 ± 0.09 |
| | RoboFlamingo | 1000 | ✓ | 96.4% | 89.6% | 82.4% | 74.0% | 66.0% | 4.09 ± 0.00 |
| | GR-1 | 130 | ✓ | 94.9% | 89.6% | 84.4% | 78.9% | 73.1% | 4.21 ± 0.00 |
| | **MoDE** | 277 | × | 96.6% | 90.6% | 86.6% | 80.9% | 75.5% | 4.30 ± 0.02 |
| | **MoDE** | 436 | ✓ | **97.1%** | **92.5%** | **87.9%** | **83.5%** | **77.9%** | **4.39 ± 0.04** |
| ABC → D | Diff-P-CNN | 321 | × | 63.5% | 35.3% | 19.4% | 10.7% | 6.4% | 1.35 ± 0.05 |
| | Diff-P-T | 194 | × | 62.2% | 30.9% | 13.2% | 5.0% | 1.6% | 1.13 ± 0.02 |
| | RoboFlamingo | 1000 | ✓ | 82.4% | 61.9% | 46.6% | 33.1% | 23.5% | 2.47 ± 0.00 |
| | SuSIE | 860+ | ✓ | 87.0% | 69.0% | 49.0% | 38.0% | 26.0% | 2.69 ± 0.00 |
| | GR-1 | 130 | ✓ | 85.4% | 71.2% | 59.6% | 49.7% | 40.1% | 3.06 ± 0.00 |
| | **MoDE** | 307 | × | 91.5% | 79.2% | 67.3% | 55.8% | 45.3% | 3.39 ± 0.03 |
| | **MoDE** | 436 | ✓ | **96.2%** | **88.9%** | **81.1%** | **71.8%** | **63.5%** | **4.01 ± 0.04** |{{< /table-caption >}}

> 🔼 This table compares the performance of different models on the CALVIN benchmark challenges, including ABCD→D and ABC→D. It presents average success rates for completing individual tasks within instruction chains and the average rollout length to complete five consecutive instructions. The results are based on 1000 instruction chains. Models marked with 'Prt' require policy pretraining. Reported parameter counts exclude the language encoders.  Some methods show a zero standard deviation because the papers did not report these values.
> <details>
> <summary>read the caption</summary>
> Table 1:  Performance comparison on the two CALVIN challenges. The table reports average success rates for individual tasks within instruction chains and the average rollout length (Avg. Len.) to complete 5 consecutive instructions, based on 1000 chains. Zero standard deviation indicates methods without reported average performance. 'Prt' denotes models requiring policy pretraining. Parameter counts exclude language encoders.
> </details>





### In-depth insights


#### Scaling Diffusion Policies
**Scaling diffusion policies** involves increasing model size and data to handle complex behaviors.  This poses a **computational challenge** due to larger models and numerous denoising steps.  **Mixture-of-Experts (MoE)** offers a promising solution by activating only a subset of parameters during each forward pass.  Noise-conditioned routing allows specialized experts for different denoising phases. Combining noise-conditioned self-attention further improves efficiency.  This enables **scaling model capacity while reducing computational costs**, which is crucial for real-time robotics applications.

#### MoDE Architecture
The MoDE architecture presented leverages a Mixture of Denoising Experts (MoE) within a transformer framework for diffusion-based policies.  A **key innovation** is the **noise-conditioned routing**, where expert selection depends on the noise level during the denoising process. This specialization allows experts to focus on specific denoising phases and enables efficient **expert caching**, reducing computational overhead during inference. The design incorporates **noise-conditioned self-attention**  and noise input tokens for enhanced noise injection. These elements together enable MoDE to efficiently scale to larger model capacities while maintaining a smaller active parameter footprint. Notably, the architecture facilitates a flexible utilization of experts, allowing the model to dynamically adapt to the denoising requirements at different noise levels.

#### Noise-Conditioned Routing
**Noise-conditioned routing** presents a novel approach in Mixture-of-Experts (MoE) models, where the routing of input tokens to expert networks is determined by the noise level in the data. This strategy proves particularly advantageous in Diffusion Policies, which are increasingly used for tasks like imitation learning in robotics.  Traditional MoE routing often relies on input content, while noise-conditioned routing allows for specialization of experts across different denoising phases in diffusion models. This specialization is crucial for efficient handling of the varying levels of noise present during the denoising process. It enables **improved performance and computational efficiency**, as experts can be pre-computed and cached based on noise level. This reduces computational overhead during inference. Furthermore, this routing method leads to **better scaling and generalization** compared to standard MoE approaches by allowing experts to focus on specific noise regimes rather than the entire data distribution.

#### Multitask Efficiency
**MoDE**, a Mixture-of-Denoising-Experts policy, exhibits remarkable multitask efficiency in imitation learning.  Its **noise-conditioned routing** mechanism activates specific expert denoisers based on the noise level, enabling **sparse parameter usage and expert caching**. This significantly reduces computational costs, achieving up to **90% fewer FLOPs and faster inference** compared to dense transformer models.  Evaluations across diverse benchmarks like CALVIN and LIBERO show MoDE's superior performance on a wide range of tasks, confirming its potential for efficient and scalable multitask learning.

#### Expert Utilization Analysis
**MoDE's noise-conditioned routing** enables dynamic expert allocation during action denoising.  Visualizations reveal specialized expert roles across noise levels.  Early layers differentiate strongly between high and low noise, while middle layers exhibit more distributed utilization, suggesting a transition from coarse to fine action refinement.  Later layers show a return to specialization, indicating a focus on final action adjustments.  The first layer prioritizes low-noise scenarios. Notably, different experts handle distinct noise ranges.  Some specialize in initial high-noise denoising, others in low-noise refinement, and some in transitional phases.  **This division of labor** across noise levels, without explicit supervision, highlights the effectiveness of noise-conditioned routing for enabling specialized denoising expertise within MoDE's architecture.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.12953/x2.png)

> 🔼 MoDE's router pre-computes expert utilization at each noise level before inference. This allows fusing selected expert MLPs into a single, composite MLP, enhancing efficiency by eliminating per-step expert invocation and streamlining memory access.  The figure illustrates how the router activates different experts based on the noise level during the denoising process. At high noise levels, different experts are used than at lower noise levels. Caching eliminates the need for the router after training. This process significantly reduces the FLOPs overhead by over 80% and speeds up inference by a factor of two compared to standard Mixture of Experts.
> <details>
> <summary>read the caption</summary>
> Figure 2: After training MoDE, the router is noise-conditioned, allowing pre-computation of the experts used at each noise level before inference. This enables removing the router and retaining only the selected experts, significantly improving network efficiency.
> </details>



![](https://arxiv.org/html/2412.12953/x3.png)

> 🔼 The figure shows example tasks within the LIBERO-90 benchmark.  LIBERO-90 consists of 90 diverse, short-horizon tasks in different simulated environments.  The environments include a variety of objects and interactive elements such as drawers, doors, cabinets, switches, buttons, and more. The tasks range in complexity from simple pick-and-place tasks to more complex manipulation sequences. In this particular visualization, tasks include opening drawers, stacking objects, picking, placing, pushing, and interacting with buttons and switches.
> <details>
> <summary>read the caption</summary>
> (a) LIBERO-90 Tasks
> </details>



![](https://arxiv.org/html/2412.12953/x4.png)

> 🔼 The figure presents a bar chart comparing the performance of different models on two LIBERO benchmark challenges: LIBERO-10 and LIBERO-90. The models compared are DP-T, DP-CNN, QueST, MoDE (Mixture-of-Denoising Experts) and Prt-MODE (pretrained MoDE).  The y-axis represents the average success rate. The chart demonstrates that pretrained MoDE achieves near-perfect performance on LIBERO-10 and outperforms other models on LIBERO-90. It also suggests that pretraining leads to significant improvements in both settings.
> <details>
> <summary>read the caption</summary>
> (b) Results for LIBERO-10 and LIBERO-90
> </details>



![](https://arxiv.org/html/2412.12953/x5.png)

> 🔼 Figure 3 visualizes the LIBERO environment and presents results comparing MoDE to baseline models (DP-T, DP-CNN, and QueST) on the LIBERO-10 and LIBERO-90 benchmark tasks.   Part (a) showcases representative environments and tasks from the LIBERO-90 suite, which includes 90 diverse short-horizon manipulation tasks.  These tasks span a range of complexities and manipulation skills within simulated robotic environments.  Part (b) displays the average success rate achieved by each model on both LIBERO-10 (10 long-horizon tasks) and LIBERO-90. The results, based on 20 rollouts per task averaged over 3 seeds, highlight MoDE's superior performance compared to the baseline models across these benchmarks. Notably, the pretrained MoDE (Prt-MODE) demonstrates even higher performance.
> <details>
> <summary>read the caption</summary>
> Figure 3: Visualization and Results for LIBERO environment. (a) Few example environments and tasks of the LIBERO-90 task suite. (b) Average results for both LIBERO challenges averaged over 3333 seeds with 20202020 rollouts for each task.
> </details>



![](https://arxiv.org/html/2412.12953/x6.png)

> 🔼 The CALVIN benchmark features four distinct simulated robot environments (A, B, C, and D). Each environment contains a different arrangement of objects, including drawers, slides, and colored blocks, which are used for diverse manipulation tasks. The robot's objective is to interact with these objects based on language instructions. An example of an instruction could be 'push the blue block into the drawer.' The variations in object placement and color across the four environments encourage generalization during policy learning.
> <details>
> <summary>read the caption</summary>
> (a) Environments
> </details>



![](https://arxiv.org/html/2412.12953/x8.png)

> 🔼 A series of images illustrating a CALVIN environment rollout.  The robot is shown performing a sequence of five tasks: 1) pushing a red block to the left, 2) pulling a cabinet handle to open a drawer, 3) lifting a pink block from a sliding compartment within the cabinet, 4) storing a grasped block (likely the pink one) in the drawer, and 5) grasping and lifting a red block. The goal for the next task is given to the robot only after the successful completion of the previous task. The captions on each frame describe the task being performed.
> <details>
> <summary>read the caption</summary>
> (b) Example CALVIN-Rollout
> </details>



![](https://arxiv.org/html/2412.12953/x9.png)

> 🔼 The CALVIN environment, a simulated robot manipulation setup, is depicted in this figure.  Part (a) showcases the four distinct environment configurations (A, B, C, and D) available in CALVIN. These variations feature different arrangements of interactive elements like slides and drawers, as well as varying textures on surfaces.  Part (b) illustrates a sample rollout of a policy interacting with the CALVIN environment. It highlights the sequential nature of task execution, where the robot receives a new instruction only after successfully completing the previous one. The example rollout consists of five consecutive tasks, demonstrating the policy's ability to chain skills together. 
> <details>
> <summary>read the caption</summary>
> Figure 4: Overview of the CALVIN environment. (a) CALVIN contains four different settings (A,B,C,D) with different configurations of slides, drawers and textures. (b) Example rollout consisting of 5555 tasks in sequence. The next goal is only given to the policy, if it manages to complete the prior.
> </details>



![](https://arxiv.org/html/2412.12953/x10.png)

> 🔼 This figure compares the computational efficiency of MoDE against a dense transformer baseline with a similar number of parameters. The left plot shows that MoDE with caching significantly improves inference speed, especially at larger batch sizes. At batch size 1, MoDE is only slightly faster (12ms vs 15ms). However, at batch size 512, MoDE achieves nearly 40% faster inference (64ms vs 104ms). The right plot demonstrates the substantial reduction in FLOPs achieved by MoDE, particularly with router caching enabled. At batch size 1, the difference is marginal. However, at batch size 512, MoDE requires 16x fewer FLOPs (361 vs 5,772 GFLOPs) due to its sparse architecture and caching mechanism. These results highlight the superior computational efficiency of MoDE in terms of both inference speed and FLOP count.
> <details>
> <summary>read the caption</summary>
> Figure 5: Computational efficiency comparison between MoDE and a Dense-Transformer model with the same number of parameters. Left: Average inference speed over 100 forward passes for various batch sizes. Right: FLOP count for MoDE with router cache and without compared against a dense baseline. MoDE demonstrates superior efficiency with lower FLOP count and faster inference thanks to its router caching and sparse expert design.
> </details>



![](https://arxiv.org/html/2412.12953/x11.png)

> 🔼 This figure visualizes how a Mixture-of-Denoising-Experts (MoDE) model distributes its workload across different expert modules during the denoising process of generating actions. Each small heatmap represents a layer in the MoDE architecture, and the horizontal axis represents the different expert modules within that layer. The vertical axis shows the denoising steps, progressing from high noise levels at the top to low noise levels at the bottom. The color intensity within each cell indicates the proportion of tokens (parts of the input data) that the corresponding expert processes at a given denoising step. Darker yellow colors signify higher utilization of an expert, while darker purple colors indicate lower usage. The figure shows how different experts specialize in different phases of the denoising process, with some experts handling high-noise inputs and others focusing on refining low-noise outputs. This specialized distribution of work allows MoDE to efficiently generate complex and nuanced actions by leveraging the strengths of different expert modules.
> <details>
> <summary>read the caption</summary>
> Figure 6: Visualized Expert Utilization. The average usage of all experts in MoDE across all layers is shown. Purple color corresponds to low usage and yellow color to high one, and each image is separately normalized. The average activation shows that MoDE learns to utilize different experts for different noise levels.
> </details>



![](https://arxiv.org/html/2412.12953/x12.png)

> 🔼 Figure 7 presents sample environments from the SIMPLER benchmark (Li et al., 2024b), which evaluates generalist robot policies on manipulation tasks. The scenes include examples from the Bridge and Google Fractal datasets, highlighting the diversity of the benchmark's tasks.  These involve tasks like picking up objects, opening drawers, and manipulating tools. The SIMPLER benchmark uses real-world scenes rendered into a simulation for robust evaluation of policy generalization capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 7: Example Scenes of the SIMPLER Li et al. (2024b) benchmark used to test generalist policies on various tasks from the Bridge and Google Fractal dataset.
> </details>



![](https://arxiv.org/html/2412.12953/x13.png)

> 🔼 Figure 8, located in the 'Evaluation' section (specifically subsection 4.5.4: 'How does the model scale with more experts?'), presents the performance of MoDE and its dense variants (Dense-small and Dense-large) on two CALVIN benchmark challenges: ABC and ABCD. The x-axis represents the number of experts used in the MoDE architecture, ranging from 2 to 8. The y-axis represents the performance, measured as the average rollout length achieved by the policy.  Higher average rollout lengths indicate better performance, as the robot successfully completes more tasks within a given instruction sequence. Two variants of dense MoDE baselines are included for comparison. Dense-small has the same latent dimensionality as MoDE, while Dense-large is scaled to match MoDE's overall parameter count (2048 dimensions). The graph demonstrates how increasing the number of experts in MoDE initially improves performance, peaking at 4 experts for both ABC and ABCD. However, further increasing the number of experts leads to a decrease in performance, potentially due to overfitting or increased routing complexity.  The consistent underperformance of the Dense-small variant across both tasks highlights the parameter efficiency of the MoE architecture in MoDE.
> <details>
> <summary>read the caption</summary>
> Figure 8: Scaling performance of MoDE and Dense-MoDE on CALVIN ABC and ABCD environments, showing average performance for 2222 to 8888 experts using best-performing variants for each environment.
> </details>



![](https://arxiv.org/html/2412.12953/x14.png)

> 🔼 The figure shows some example environments and tasks from the LIBERO-90 task suite.  LIBERO-90 involves short-horizon tasks across a diverse range of environments. The environments include household objects like drawers, cabinets, and various small objects. The tasks typically involve manipulating these objects to achieve specified goals, such as opening drawers, grasping objects, or placing them in designated locations. The images provide a visual representation of the complexity and variety of tasks included in the LIBERO-90 benchmark.
> <details>
> <summary>read the caption</summary>
> (a)
> </details>



![](https://arxiv.org/html/2412.12953/x15.png)

> 🔼 This bar chart shows the results of evaluating the Mixture-of-Denoising-Experts (MoDE) model on the LIBERO benchmark and comparing it against other Diffusion Policies and a state-of-the-art transformer model QueST. It shows that MoDE outperforms other approaches across the board, with substantial improvements on both the LIBERO-10 and LIBERO-90 challenges. Pretrained MoDE generally achieves better performance than its non-pretrained counterpart.
> <details>
> <summary>read the caption</summary>
> (b)
> </details>



![](https://arxiv.org/html/2412.12953/x16.png)

> 🔼 This image visualizes how tokens are distributed to different experts in a 12-layer Mixture of Experts (MoE) model during the denoising process. Each subplot corresponds to a distinct layer, with experts (E0 to E3) represented on the horizontal axis and the log-scaled token count on the vertical axis. The color intensity depicts the proportion of tokens routed to each expert: darker colors signify higher usage. This visualization highlights how MoDE learns specialized denoising behaviors across its experts, varying with noise levels. Notably, different layers exhibit distinct patterns of expert utilization, suggesting layer-specific roles in the denoising process.  The analysis further reveals transitions in expert usage at certain noise levels, indicating shifts in the model's focus during action generation.
> <details>
> <summary>read the caption</summary>
> (c)
> </details>



![](https://arxiv.org/html/2412.12953/x17.png)

> 🔼 This image shows the average token routing probabilities assigned by the router to different experts based on the input noise level. The experts are represented on the x-axis (E0 to E3), and the y-axis shows the logarithm of the noise levels (σ). Brighter colors indicate higher routing probabilities, showing which experts are activated more for each noise level during the denoising process. The illustration reveals that the routing probabilities vary significantly with the noise level, highlighting the noise-dependent nature of MoDE's expert utilization.  This visualization reveals the distinct specialization of each expert based on the noise level.
> <details>
> <summary>read the caption</summary>
> (d)
> </details>



![](https://arxiv.org/html/2412.12953/x18.png)

> 🔼 This figure visualizes the impact of different load-balancing weights (YLB) on expert utilization in a Mixture-of-Denoising-Experts (MoDE) model during the denoising process.  Each subfigure corresponds to a different YLB value (0.1, 0.01, 0.001, and 0.0001). Within each subfigure, a heatmap represents the average usage of each of the four experts (E0 to E3) across the model's layers (0 to 7) for different noise levels in the denoising process (σ1 to σ10, representing decreasing noise levels).  The color intensity within each cell of the heatmap indicates the proportion of tokens routed to a specific expert at a particular layer and noise level.  Darker colors represent higher utilization of an expert. The figure aims to demonstrate how varying the load balancing loss affects how the model distributes tokens to different experts during the denoising process.
> <details>
> <summary>read the caption</summary>
> Figure 9: Average Expert Utilization for different Load Balancing Weights across all denoising levels.
> </details>



![](https://arxiv.org/html/2412.12953/x19.png)

> 🔼 The figure shows example environments and tasks from the LIBERO-90 task suite.  These tasks are diverse and involve short horizons, meaning the robot needs to complete them in relatively few steps.  The figure also demonstrates the range of environments in the benchmark, including different objects, layouts, and backgrounds.  The environments are interactive, so the robot can move, push, and manipulate various objects within each setting. Examples of the 90 diverse short-horizon tasks include 'pick up the red cube', 'move the blue block', and 'close the drawer'. The tasks are labeled with language instructions that are given to the model.
> <details>
> <summary>read the caption</summary>
> (a)
> </details>



![](https://arxiv.org/html/2412.12953/x20.png)

> 🔼 This bar chart presents the success rate of different models such as DP-T, DP-CNN, QueST, MODEPrt, MODE on two LIBERO challenges namely LIBERO-10 and LIBERO-90.  LIBERO-10 challenge comprises of 10 tasks, whereas LIBERO-90 tests policies on 90 short horizon tasks. As shown, MODE achieves higher success rate compared to other models across both benchmarks.
> <details>
> <summary>read the caption</summary>
> (b)
> </details>



![](https://arxiv.org/html/2412.12953/x21.png)

> 🔼 This image visualizes the expert utilization across 12 layers in a Mixture of Experts (MoE) Diffusion Policy. Each subplot corresponds to a layer, with experts E0-E3 on the horizontal axis and the log-scaled token count on the vertical axis. The color gradient represents the proportion of tokens routed to each expert; darker colors indicate higher usage. The figure reveals that the experts specialize in handling different noise levels. High-noise regimes (σ1-σ7) and low-noise regimes (σ8-σ10) are handled by different experts, with some experts focusing on initial denoising and others on final refinement. The first layer (L0) exhibits a strong preference for the final denoising steps at low noise levels. Certain layers, especially L4 and L5, clearly demarcate high-noise and low-noise handling experts, showcasing the transition point at around σ8. Smooth transitions in expert activations across noise levels are seen, like in L7, demonstrating smooth hand-offs between experts in denoising phases. Overall, the figure elucidates the noise-level specialization and coordinated behavior among experts within the MoE architecture during the denoising process.
> <details>
> <summary>read the caption</summary>
> (c)
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
|                       | Avg. Success. |
| :-------------------- | :----------- |
| **MoDE**             | **0.92**     |
| - Input Noise Token   | 0.90         |
| - Noise-cond Attention | 0.85         |
| FiLM Noise Conditioning | 0.81         |
| **TopK=1**           | **0.91**     |
| Shared Expert        | 0.90         |
| $
gamma=0.1$          | 0.90         |
| $
gamma=0.001$       | 0.86         |
| 256 Embed Dim       | 0.86         |
| 512 Embed Dim       | 0.87         |{{< /table-caption >}}
> 🔼 This table presents the ablation study results of the MoDE policy on the LIBERO-10 benchmark.  It investigates the impact of different design choices on MoDE's performance by evaluating variations in noise injection methods, Mixture-of-Expert (MoE) strategies, and latent dimension. Reported metrics (average success rate) are averaged over 3 seeds, each with 20 rollouts per task.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablation Studies for MoDE on LIBERO-10. All results are averaged over 3333 seeds with 20202020 rollouts each.
> </details>

{{< table-caption >}}
| Hyperparameter | CALVIN ABCD | CALVIN ABC | LIBERO-10 | LIBERO-90 | Pret-MoDE |
|---|---|---|---|---|---|---|---|---| 
| Number of Transformer Layers | 8 | 8 | 8 | 8 | 12 |
| Number Experts | 4 | 4 | 4 | 4 | 4 |
| Attention Heads | 8 | 8 | 8 | 8 | 8 |
| Action Chunk Size | 10 | 10 | 10 | 10 | 10 |
| History Length | 1 | 1 | 1 | 1 | 1 |
| Embedding Dimension | 1024 | 1024 | 1024 | 1024 | 1024 |
| Image Encoder | FiLM-ResNet18 | FiLM-ResNet50 | FiLM-ResNet18 | FiLM-ResNet18 | FiLM-ResNet50 |
| Goal Lang Encoder | CLIP ViT-B/32 | CLIP ViT-B/32 | CLIP ViT-B/32 | CLIP ViT-B/32 | CLIP ViT-B/32 |
| Attention Dropout | 0.3 | 0.3 | 0.3 | 0.3 | 0.3 |
| Residual Dropout | 0.1 | 0.1 | 0.1 | 0.1 | 0.1 |
| MLP Dropout | 0.1 | 0.1 | 0.1 | 0.1 | 0.1 |
| Optimizer | AdamW | AdamW | AdamW | AdamW | AdamW |
| Betas | [0.9, 0.95] | [0.9, 0.95] | [0.9, 0.95] | [0.9, 0.95] | [0.9, 0.95] |
| Learning Rate | 1e-4 | 1e-4 | 1e-4 | 1e-4 | 1e-4 |
| Transformer Weight Decay | 0.05 | 0.05 | 0.05 | 0.05 | 0.1 |
| Other weight decay | 0.05 | 0.05 | 0.05 | 0.05 | 0.1 |
| Batch Size | 512 | 512 | 512 | 512 | 512 |
| Train Steps in Thousands | 30 | 25 | 15 | 30 | 300 |
| \(\sigma_{\text{max}}\) | 80 | 80 | 80 | 80 | 80 |
| \(\sigma_{\text{min}}\) | 0.001 | 0.001 | 0.001 | 0.001 | 0.001 |
| \(\sigma_{t}\) | 0.5 | 0.5 | 0.5 | 0.5 | 0.5 |
| EMA | True | True | True | True | True |
| Time steps | Exponential | Exponential | Exponential | Exponential | Exponential |
| Sampler | DDIM | DDIM | DDIM | DDIM | DDIM |
| Parameter Count (Millions) | 460 | 460 | 460 | 460 | 685 |{{< /table-caption >}}
> 🔼 This table provides a comprehensive overview of the hyperparameters used for the Mixture-of-Denoising-Experts (MoDE) policy in the described experiments. It details the specific settings for various components of the MoDE architecture, including the number of transformer layers, the number of experts used in the mixture-of-experts setup, the dimensions of embedding vectors, and the choice of image and goal encoders. Optimization parameters like the learning rate, weight decay, and choice of optimizer (AdamW) are also specified. The table covers configurations used for the CALVIN benchmarks (ABCD and ABC), the LIBERO benchmarks (LIBERO-10 and LIBERO-90), and a pretrained version of MoDE.  Additionally, details about data augmentation, batch size, training steps, sampler and parameter count are included to ensure reproducibility and facilitate comparison with other methods.
> <details>
> <summary>read the caption</summary>
> Table 3: Summary of all the Hyperparameters for the MoDE policy used in our experiments.
> </details>

{{< table-caption >}}
| Dataset | Weight |
|---|---| 
| BC-Z | 0.258768 |
| LIBERO-10 | 0.043649 |
| BRIDGE | 0.188043 |
| CMU Play-Fusion | 0.101486 |
| Google Fractal | 0.162878 |
| DOBB-E | 0.245176 |
| **Total** | 1.000000 |{{< /table-caption >}}
> 🔼 This table details how the Mixture-of-Denoising-Experts (MoDE) policy is pretrained on a diverse dataset of robot demonstrations from six different sources (BC-Z, LIBERO-10, BRIDGE, CMU Play-Fusion, Google Fractal, and DOBB-E). Each source has an associated sampling weight, reflecting its proportional contribution to the training mix.  This pretraining dataset totals 196k trajectories and aims to improve the model's generalization capabilities, especially in zero-shot settings.
> <details>
> <summary>read the caption</summary>
> Table 4: Dataset sampling weights used for training MoDE on a small subset of trajectories. The total dataset consists of 196k trajectories.
> </details>

{{< table-caption >}}
| Benchmark | MoDE | DP-T | DP-CNN | Avg. Baseline | Improvement |
|---|---|---|---|---|---| 
| CALVIN ABC→D (norm.) | **0.678** | 0.226 | 0.270 | 0.248 | +151.1% |
| CALVIN ABCD→D (norm.) | **0.860** | 0.396 | 0.632 | 0.514 | +36.1% |
| LIBERO-90 | **0.910** | 0.690 | 0.780 | 0.735 | +16.7% |
| LIBERO-10 | **0.920** | 0.510 | 0.730 | 0.620 | +26.0% |
| Average Improvement Over Second-Best: | **57.5%** | | | | |{{< /table-caption >}}
> 🔼 This table presents a detailed analysis of the performance improvement achieved by MoDE compared to other Diffusion Policy variants across four different benchmarks: CALVIN ABC→D, CALVIN ABCD→D, LIBERO-90, and LIBERO-10. The CALVIN scores are normalized to be on the same scale as LIBERO.  The improvement is calculated as the percentage difference between MoDE's performance and the average performance of the baseline models (Diffusion Transformer and Diffusion CNN).  The final average represents the overall improvement achieved by MoDE over the second-best performing variant across all four benchmarks.
> <details>
> <summary>read the caption</summary>
> Table 5: Detailed Performance Improvement Analysis. CALVIN scores are normalized by dividing by 5 to align with LIBERO scale. Improvement calculated as: (MoDE - Avg. Baseline) / Avg. Baseline × 100. Final average is the mean of improvements across all four benchmarks compared to the second best Diffusion Policy variant on each one.
> </details>

{{< table-caption >}}
| | OpenVLA | | Octo Base | | MoDe (ours) | |
|---|---|---|---|---|---|---| 
| **Metric** | **Score** | **Rank** | **Score** | **Rank** | **Score** | **Rank** |
| Drawer Open | **16%** | **1** | 0% | 3 | 4.23% | 2 |
| Drawer Close | 20% | 2 | 2% | 3 | **34.92%** | **1** |
| Pick Can Horizontal | **71%** | **1** | 0% | 3 | 33.78% | 2 |
| Pick Can Vertical | 27% | 2 | 0% | 3 | **29.78%** | **1** |
| Pick Can Standing | **65%** | **1** | 0% | 3 | 36.44% | 2 |
| Move Near | **48%** | **1** | 3% | 3 | 30% | 2 |
| Drawer Open | 19% | 2 | 1% | 3 | **21.30%** | **1** |
| Drawer Close | 52% | 2 | 44% | 3 | **76.85%** | **1** |
| Pick Can Horizontal | **27%** | **1** | 21% | 3 | 22% | 2 |
| Pick Can Vertical | 3% | 3 | 21% | 2 | **40%** | **1** |
| Pick Can Standing | 19% | 2 | 9% | 3 | **35%** | **1** |
| Move Near | **46%** | **1** | 4% | 3 | 45.42% | 2 |
| Partial Put Spoon on Tablecloth | 4% | 3 | **35%** | **1** | 29.17% | 2 |
| Put Spoon on Tablecloth | 0% | 3 | 12% | **1** | **12.5%** | **1** |
| Partial Put Carrot on Plate | 33% | 2 | **53%** | **1** | 29.17% | 3 |
| Put Carrot on Plate | 0% | 3 | 8% | **1** | **8.33%** | 1 |
| Partial Stack Green Block on Yellow Block | 12% | 2 | **32%** | **1** | 8.33% | 3 |
| Stack Green Block on Yellow Block | 0% | 2 | 0% | 2 | 0% | 2 |
| Partial Put Eggplant in Basket | 8% | 3 | **67%** | **1** | 37.5% | 2 |
| Put Eggplant in Basket | 4% | 3 | **43%** | **1** | 8.33% | 2 |
| **Average** | 23.70% | 1.95 | 17.75% | 2.1 | **26.30%** | **1.65** |{{< /table-caption >}}
> 🔼 This table presents a thorough evaluation of MoDE, a novel diffusion policy, compared to two leading generalist policies, OpenVLA and Octo, on the SIMPLER benchmark.  SIMPLER offers real-to-sim tasks spanning diverse manipulation skills. The table details performance across specific tasks within the benchmark (e.g., drawer manipulation, object picking) showing score and rank for each model on each task. This comparison highlights MoDE's overall superior performance with limited compute, particularly on complex manipulation actions.
> <details>
> <summary>read the caption</summary>
> Table 6: Detailed comparison of MoDE against two sota Generalist Policies OpenVLA Kim et al. (2024) and Octo Octo Model Team et al. (2023) tested on all SIMPLER tasks with 2952 evals.
> </details>

{{< table-caption >}}
| Model | Block Push | Relay Kitchen | CAL ABC | CAL ABCD | L-10 | Average |
|---|---|---|---|---|---|---| 
| Dense T | 0.96±0.02 | 3.73±0.12 | **2.83±0.19** | 4.13±0.11 | 0.91±0.02 | 0.839±0.144 |
| Token-Router | 0.97±0.01 | **3.85±0.03** | 2.67±0.04 | 4.29±0.08 | 0.90±0.01 | 0.845±0.161 |
| σ_t-Router | *0.97±0.01* | 3.79±0.04 | *2.79±0.16* | **4.30±0.02** | **0.92±0.02** | **0.851±0.151** |{{< /table-caption >}}
> 🔼 This table compares the performance of different token routing strategies for the Mixture-of-Denoising-Experts (MoDE) policy across five benchmarks: Block Push, Relay Kitchen, CALVIN ABC, CALVIN ABCD, LIBERO-10.  Two routing strategies are evaluated: one based on token embeddings (Token-Router) and another based on noise level (στ-Router), along with a dense transformer baseline. The table presents average scores and standard deviations for each strategy across each benchmark, highlighting the best and second-best performing strategy with bold and cursive text respectively. CAL is used as an abbreviation for CALVIN.  The average performance is calculated by normalizing all scores and averaging them across all environments to determine the most effective routing strategy for MoDE across various tasks.
> <details>
> <summary>read the caption</summary>
> Table 7: Overview of the performance of all different token routing strategies used for MoDE across 5555 benchmarks. We mark the best result for each environment in bold and the second best in cursive. We use CAL to represent CALVIN. To average the results, we normalize all scores and compute the average over all environments.
> </details>

{{< table-caption >}}
| Method | Active Params (M) | Total Params (M) | GFLOPS | PrT | Avg. Length | SF-Ratio | Inf. Time [ms] |
|---|---|---|---|---|---|---|---|
| Diff-P-CNN | 321 | 321 | 1.28 | × | 1.35 | 1.05 | **11.7** |
| Diff-P-T | 194 | 194 | 2.16 | × | 1.13 | 0.53 | 16.2 |
| RoboFlamingo | 1000 | 1000 | 690 | ✓ | 2.47 | 0.004 | 65 |
| SuSIE | 860+ | 860+ | 60 | ✓ | 2.69 | 0.045 | 199 |
| GR-1 | **130** | **130** | 27.5 | ✓ | 3.06 | 0.11 | 12.6 |
| **MoDE (ours)** | 436 | 740 | 1.53 | ✓ | **4.01** | **2.6** | 12.2 |{{< /table-caption >}}
> 🔼 This table presents a comparison of various methods used in the CALVIN benchmark, including Diffusion Policy (CNN and Transformer variants), Robo Flamingo, SuSIE, GR-1, and the proposed MoDE method. It compares the total number of parameters, the number of active parameters, the average GFLOPS (billions of floating-point operations per second) required for inference, whether or not the method uses pretraining, the average rollout length achieved, a performance-to-computational-cost ratio, and the average inference time per action.  This comparison helps demonstrate the efficiency and performance advantages of MoDE over existing state-of-the-art methods.
> <details>
> <summary>read the caption</summary>
> Table 8: Comparison of total and active number of parameters of methods used in the CALVIN benchmark. Additional overview of average FLOPS required by the different methods together with their average performance on the ABC benchmark. SF-Ratio compares average rollout length with GFLOPS.
> </details>

{{< table-caption >}}
| | Block Push | Relay Kitchen |
|---|---|---| 
| C-BeT | 0.87±(0.07) | 3.09±(0.12) |
| VQ-BeT | 0.87±(0.02) | 3.78±(0.04) |
| BESO | 0.96±(0.02) | 3.73±(0.05) |
| **MoDE** | **0.97±(0.01)** | **3.79±(0.02)** |{{< /table-caption >}}
> 🔼 This table compares the performance of several state-of-the-art goal-conditioned policies, including Mixture-of-Denoising-Experts (MoDE), on two simulated robotics environments: Relay Kitchen and Block Push.  The policies are evaluated based on their ability to achieve specified goals, like manipulating objects in a virtual kitchen or pushing blocks to target locations. The results show that MoDE outperforms other approaches, including a dense transformer model and methods using discrete latent action representations.
> <details>
> <summary>read the caption</summary>
> Table 9: Comparison of the performance of different policies on the state-based goal-conditioned relay-kitchen and block-push environment averaged over 4444 seeds. MoDE outperforms the dense transformer variant BESO and other policy representations on all baselines.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.12953/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12953/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12953/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12953/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12953/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12953/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12953/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12953/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12953/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12953/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12953/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12953/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12953/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12953/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12953/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12953/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12953/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12953/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12953/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12953/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}