---
title: "Learning Real-World Action-Video Dynamics with Heterogeneous Masked Autoregression"
summary: "HMA: a novel approach for generating high-quality robotic videos 15x faster, enabling real-time policy evaluation and data augmentation for scaling robot learning."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Robotics", "🏢 MIT",]
showSummary: true
date: 2025-02-06
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.04296 {{< /keyword >}}
{{< keyword icon="writer" >}} Lirui Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-07 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.04296" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.04296" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.04296/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Scaling robot learning is hindered by the need for massive high-quality datasets and real-time, high-fidelity evaluation.  Current generative models often struggle with computational efficiency or fail to handle the diverse settings of real-world robotics.  Furthermore, existing methods for video generation can be computationally expensive, making real-time applications challenging.



The paper introduces Heterogeneous Masked Autoregression (HMA), a new approach that tackles these issues. **HMA uses heterogeneous pre-training** from diverse robotic embodiments, domains, and tasks to learn a generalizable action-video dynamic model.  **Masked autoregression** enables efficient video prediction, significantly improving speed and visual fidelity.  Experiments demonstrate that HMA achieves better visual fidelity and controllability than state-of-the-art models with a **15x speed improvement**, making real-time applications in robotics possible.  HMA can generate synthetic data and serve as a video simulator for efficient policy evaluation.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} HMA uses masked autoregression for efficient and high-fidelity video generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} HMA handles action heterogeneity across various robotic platforms through heterogeneous pre-training. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} HMA achieves 15x faster inference speed than previous methods, enabling real-time simulation and evaluation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses a critical bottleneck in robotics: the need for massive, high-quality datasets and real-time evaluation.  The proposed method, **Heterogeneous Masked Autoregression (HMA)**, offers a novel and efficient solution by leveraging masked autoregression and heterogeneous pre-training.  This opens new avenues for developing more general and efficient robotic video generation models, which has far-reaching implications for advancing robotics research.  The improved efficiency, **15x faster than previous methods**, makes real-time applications feasible.

------
#### Visual Insights



![](https://arxiv.org/html/2502.04296/x1.png)

> 🔼 The figure illustrates the architecture and workflow of the Heterogeneous Masked Autoregression (HMA) model.  HMA leverages a diverse dataset of over 3 million video trajectories from 40 different robot embodiments to learn a comprehensive action-video dynamics model. The pre-training phase employs masked autoregression to predict the next set of tokens (visual and action), effectively capturing the complex interactions between robot actions and resulting video observations.  Following pre-training, this versatile model finds applications in various robotics tasks:  generating realistic video simulations, evaluating robot policies (by simulating the consequences of different actions), creating synthetic training data, and even acting as a direct imitation policy.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Action-Video Dynamics Model from Heterogeneous Robot Interactions. HMA utilizes heterogeneous datasets comprising over 3 million trajectories (videos) from 40 distinct embodiments to pre-train a full dynamics model with next-set-of-token predictions using masked autoregression. After pre-training, the resulting action-video dynamics model is versatile, supporting applications such as video simulation, policy evaluation, synthetic data generation, and direct adoption as an imitation policy.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T1.1">
<tr class="ltx_tr" id="S5.T1.1.1">
<td class="ltx_td ltx_align_left" id="S5.T1.1.1.2" style="padding:0.8pt 5.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.2.1" style="font-size:80%;">Model</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.3" style="padding:0.8pt 5.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.3.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.4" style="padding:0.8pt 5.5pt;">
<span class="ltx_text ltx_font_bold" id="S5.T1.1.1.4.1" style="font-size:80%;">Parameters</span><span class="ltx_text" id="S5.T1.1.1.4.2" style="font-size:80%;"> (M)</span>
</td>
<td class="ltx_td ltx_align_left" id="S5.T1.1.1.1" style="padding:0.8pt 5.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.1" style="font-size:80%;">FPS <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.1.1.1.1.m1.1"><semantics id="S5.T1.1.1.1.1.m1.1a"><mo id="S5.T1.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.1.1.1.1.m1.1b"><ci id="S5.T1.1.1.1.1.m1.1.1.cmml" xref="S5.T1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.1.2.1" style="padding:0.8pt 5.5pt;"><span class="ltx_text" id="S5.T1.1.2.1.1" style="font-size:80%;">IRASim-XL</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.2.2" style="padding:0.8pt 5.5pt;"><span class="ltx_text" id="S5.T1.1.2.2.1" style="font-size:80%;">DiT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.2.3" style="padding:0.8pt 5.5pt;"><span class="ltx_text" id="S5.T1.1.2.3.1" style="font-size:80%;">679</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.1.2.4" style="padding:0.8pt 5.5pt;"><span class="ltx_text" id="S5.T1.1.2.4.1" style="font-size:80%;">0.28</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.3">
<td class="ltx_td ltx_align_left" id="S5.T1.1.3.1" style="padding:0.8pt 5.5pt;"><span class="ltx_text" id="S5.T1.1.3.1.1" style="font-size:80%;">IRASim-XL, amortized</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.3.2" style="padding:0.8pt 5.5pt;"><span class="ltx_text" id="S5.T1.1.3.2.1" style="font-size:80%;">DiT</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.3.3" style="padding:0.8pt 5.5pt;"><span class="ltx_text" id="S5.T1.1.3.3.1" style="font-size:80%;">679</span></td>
<td class="ltx_td ltx_align_left" id="S5.T1.1.3.4" style="padding:0.8pt 5.5pt;"><span class="ltx_text" id="S5.T1.1.3.4.1" style="font-size:80%;">0.58</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.1.4.1" style="padding:0.8pt 5.5pt;">
<span class="ltx_text ltx_font_typewriter" id="S5.T1.1.4.1.1" style="font-size:80%;">HMA</span><span class="ltx_text" id="S5.T1.1.4.1.2" style="font-size:80%;">-Base</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.4.2" style="padding:0.8pt 5.5pt;"><span class="ltx_text" id="S5.T1.1.4.2.1" style="font-size:80%;">MaskGIT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.4.3" style="padding:0.8pt 5.5pt;"><span class="ltx_text" id="S5.T1.1.4.3.1" style="font-size:80%;">44</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.1.4.4" style="padding:0.8pt 5.5pt;"><span class="ltx_text" id="S5.T1.1.4.4.1" style="font-size:80%;">22.72</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.5">
<td class="ltx_td ltx_align_left" id="S5.T1.1.5.1" style="padding:0.8pt 5.5pt;">
<span class="ltx_text ltx_font_typewriter" id="S5.T1.1.5.1.1" style="font-size:80%;">HMA</span><span class="ltx_text" id="S5.T1.1.5.1.2" style="font-size:80%;">-XL</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.5.2" style="padding:0.8pt 5.5pt;"><span class="ltx_text" id="S5.T1.1.5.2.1" style="font-size:80%;">MaskGIT</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.5.3" style="padding:0.8pt 5.5pt;"><span class="ltx_text" id="S5.T1.1.5.3.1" style="font-size:80%;">679</span></td>
<td class="ltx_td ltx_align_left" id="S5.T1.1.5.4" style="padding:0.8pt 5.5pt;"><span class="ltx_text" id="S5.T1.1.5.4.1" style="font-size:80%;">4.38</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.6">
<td class="ltx_td ltx_align_left" id="S5.T1.1.6.1" style="padding:0.8pt 5.5pt;">
<span class="ltx_text ltx_font_typewriter" id="S5.T1.1.6.1.1" style="font-size:80%;">HMA</span><span class="ltx_text" id="S5.T1.1.6.1.2" style="font-size:80%;">-Base</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.6.2" style="padding:0.8pt 5.5pt;"><span class="ltx_text" id="S5.T1.1.6.2.1" style="font-size:80%;">MAR</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.6.3" style="padding:0.8pt 5.5pt;"><span class="ltx_text" id="S5.T1.1.6.3.1" style="font-size:80%;">96</span></td>
<td class="ltx_td ltx_align_left" id="S5.T1.1.6.4" style="padding:0.8pt 5.5pt;"><span class="ltx_text" id="S5.T1.1.6.4.1" style="font-size:80%;">4.44</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.7">
<td class="ltx_td ltx_align_left ltx_border_b" id="S5.T1.1.7.1" style="padding:0.8pt 5.5pt;">
<span class="ltx_text ltx_font_typewriter" id="S5.T1.1.7.1.1" style="font-size:80%;">HMA</span><span class="ltx_text" id="S5.T1.1.7.1.2" style="font-size:80%;">-XL</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T1.1.7.2" style="padding:0.8pt 5.5pt;"><span class="ltx_text" id="S5.T1.1.7.2.1" style="font-size:80%;">MAR</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T1.1.7.3" style="padding:0.8pt 5.5pt;"><span class="ltx_text" id="S5.T1.1.7.3.1" style="font-size:80%;">741</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S5.T1.1.7.4" style="padding:0.8pt 5.5pt;"><span class="ltx_text" id="S5.T1.1.7.4.1" style="font-size:80%;">2.01</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares the inference speed of different models, highlighting the significant speed advantage of the proposed HMA model. It breaks down the inference speed (frames per second, FPS) for various model sizes (Base and XL) across different methods (MaskGIT and MAR). The table shows that HMA is substantially faster than a comparable model from the literature (IRASim-XL), particularly when using the MaskGIT method.  The differences in speed are attributed to HMA's architecture, which avoids repeated passes through the Transformer during generation, unlike diffusion-based models. The table also notes the parameter counts for each model and that all results were obtained using the same hardware configuration (RTX-4080 GPU).
> <details>
> <summary>read the caption</summary>
> Table 1: Inference Speed. We measure the per-frame inference speed across 16 frames for various model sizes. The Base model has a model size of around 30M and the XL model has a similar model size as IRASim-XL. The models all use 32-block transformers where the base model has dimensions 256 and the XL models have dimensions 768. Our fastest model of the same size is more than 15×\times× faster than [60] because HMA does not pass through the full Transformer multiple times (with diffusion modeling) to generate each frame. MAR incurs more parameters than MaskGIT [8] because of the diffusion heads [27]. The amortized result for [60] comes from averaging over multiple frames. The speeds are all measured on the same hardware setup with RTX-4080 GPU.
> </details>





### In-depth insights


#### HMA: A Novel Approach
HMA, as a novel approach, presents a significant advancement in robotic video modeling.  Its core innovation lies in **heterogeneous masked autoregression**, enabling the model to learn from diverse robotic datasets despite differences in action spaces and frequencies. This addresses a major bottleneck in scaling robot learning by generating high-fidelity, real-time video simulations from heterogeneous data.  The use of masked autoregression offers a significant speed advantage over diffusion-based methods, making real-time interaction feasible. **Post-training applications** are particularly noteworthy, demonstrating HMA's versatility in policy evaluation, data generation, and direct policy implementation.  While challenges remain in perfect controllability and handling extreme complexities, **HMA's scalability and efficiency** showcase its potential to transform robot learning and simulation.

#### Action Heterogeneity
The concept of 'Action Heterogeneity' in robotics highlights the **diverse nature of actions** across different robots.  Robots vary significantly in their physical capabilities, control mechanisms, and operational domains.  This diversity translates into **heterogeneous action spaces**, meaning robots may have different numbers of degrees of freedom, varying action frequencies, and use different control signals.  Addressing this heterogeneity is crucial for building general-purpose world models and policies.  **A unified framework** is needed to represent and handle the diverse action spaces, enabling the learning of models capable of simulating and generating actions for various robotic platforms.  This involves integrating action information into a shared latent space, allowing for effective transfer learning and seamless interaction across embodiments.  **Modularized architectures** are key, such as using separate encoder and decoder modules per robot while sharing a central processing unit that generalizes the dynamics. This approach maximizes adaptability while minimizing training data and computational overhead for each new robot.

#### Masked Autoregression
Masked autoregression, as applied in this research, is a powerful technique for modeling action-video dynamics.  **Its core strength lies in efficiently handling the complexities of sequential data**, such as those found in robotics videos where actions and observations are interlinked. By masking parts of the input sequence during training and predicting the masked portions, the model learns to capture temporal dependencies and generate high-quality predictions.  This approach is **particularly well-suited for real-time applications**, where computational efficiency is paramount. Furthermore, the use of masked autoregression allows for the integration of heterogeneous data, handling variations in action spaces and frequencies from different robots. This leads to more robust and generalizable models. **The combination of masked autoregression with heterogeneous data greatly enhances the ability to build efficient and versatile robotic video simulators**, supporting a wide range of applications like policy evaluation and synthetic data generation.

#### Scaling Behaviors
The section on "Scaling Behaviors" in the research paper is crucial for assessing the generalizability and practical applicability of the proposed Heterogeneous Masked Autoregression (HMA) model.  It investigates how the model's performance changes across various dimensions: **the number of datasets (embodiments), the size of the datasets (number of trajectories), and the model's complexity (number of parameters).**  Positive scaling trends across these dimensions indicate that HMA is robust and capable of handling increasingly diverse and large-scale data. The consistent performance gains as the number of datasets and trajectories increase highlight **the model's ability to learn generalizable representations from heterogeneous data**.  Furthermore, the improvements with increased model size suggest that scaling up the model's capacity can further enhance its performance, potentially achieving even higher fidelity and controllability.  These scaling experiments demonstrate not just the performance of HMA on a particular dataset, but also its potential for real-world applications where data diversity and scale are significant factors. **The results provide strong evidence that the HMA model is not overfitting to specific datasets**, but rather learning robust and transferable representations of action-video dynamics.

#### Future of HMA
The future of Heterogeneous Masked Autoregression (HMA) appears bright, given its demonstrated success in handling action-video dynamics.  **Real-time performance** is a significant achievement, opening doors for direct use in robotics, eliminating the bottleneck of slow simulation.  Further research should focus on improving the model's **controllability**, particularly addressing limitations observed with limited training data and complex tasks.  **Scaling to even larger datasets** and exploring diverse robotic applications remains key. Addressing limitations in modeling deformable objects and complex physics interactions would broaden the system's applicability.  Integrating HMA with advanced planning algorithms and exploring its potential for generating high-fidelity synthetic data for training complex robotic policies are also promising directions.  Finally, investigating the use of soft tokens beyond visual generation could significantly enhance the system’s overall capabilities and efficiency.  **Addressing these research opportunities would solidify HMA's position as a leading technology in robotics simulation and learning.**


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.04296/x2.png)

> 🔼 Figure 2 illustrates the versatility of masked autoregression in modeling robot dynamics. It shows how a single framework can address various robotics problems, such as policy learning (predicting future actions given past observations and actions), forward dynamics (predicting future observations given past observations and actions), passive dynamics (predicting future observations given only past observations), and full dynamics (jointly predicting future observations and actions). This unified approach allows the model to handle different tasks and scenarios in robotics through a common architecture.
> <details>
> <summary>read the caption</summary>
> Figure 2: Dynamics Model. Masked autoregression in the dynamics model generalizes multiple problem settings including policy learning, forward and passive dynamics, and full dynamics.
> </details>



![](https://arxiv.org/html/2502.04296/x3.png)

> 🔼 The figure illustrates the architecture of the Heterogeneous Masked Autoregression (HMA) model.  The model processes both video and action sequences from various robotic embodiments.  Each embodiment has a dedicated 'stem' (action encoder) and 'head' (action decoder), which map the embodiment-specific action data into a shared latent space. The core of the model is a spatial-temporal transformer ('trunk') that processes the shared latent representations to predict both future video frames and actions.  The spatial attention mechanism operates bi-directionally on masked and unmasked tokens for both video and action, while the temporal attention mechanism is causal (only considering past information). The modular design allows for easy adaptation to new embodiments by simply training new stem and head components without modifying the trunk.
> <details>
> <summary>read the caption</summary>
> Figure 3: Network Architecture. The HMA model architecture maps low-level video and action sequences across different embodiments into a shared latent space. For actions, embodiment projectors are activated based on the training sample. The spatial-temporal Transformer produces the output video and action tokens for future frames.
> </details>



![](https://arxiv.org/html/2502.04296/x4.png)

> 🔼 This figure demonstrates the capability of the Heterogeneous Masked Autoregression (HMA) model to generate high-quality and diverse videos.  The model is trained on a dataset containing videos from various robotic embodiments and heterogeneous action spaces. The left three columns showcase videos that are visually realistic and consistent with typical real-world interactions. In contrast, the right three columns display videos with more unexpected or creative actions, reflecting the model's capacity to produce diverse results. Each group of three images represents consecutive frames from a single video sequence generated by the model.
> <details>
> <summary>read the caption</summary>
> Figure 4: Pre-trained Video Model Generation. We show that a single unified HMA model can generate realistic (left 3 columns) and diverse (right 3 columns) videos across multiple embodiment datasets with heterogeneous action spaces. Each group shows three generated frames from a single sequence.
> </details>



![](https://arxiv.org/html/2502.04296/x5.png)

> 🔼 Figure 5 presents ablation studies on the Heterogeneous Masked Autoregression (HMA) model, specifically examining the effects of different pre-training settings and architectures on video generation performance. Part (a) compares the performance of action-conditioned models (forward and full dynamics) against passive video models, showing that incorporating action information significantly improves both visual fidelity (measured by perplexity) and controllability (measured by APSNR).  Part (b) analyzes various action-conditioning architectures within the HMA framework, including modulation, token concatenation, feature addition, and token cross-attention, to determine the optimal design for balancing performance and efficiency. The best performing model configuration is highlighted in purple.
> <details>
> <summary>read the caption</summary>
> Figure 5: Ablation on Pre-training Settings and Architecture. Under the pre-training setting with VQ tokens, we ablate the video generation performance (visual fidelity measured by perplexity and controllability measured by controllability). (a) We find action-conditioned models outperform passive video models. (b) We compare different action conditioning architectures in the masked autoregression framework. The purple color denotes the best model that we use by default.
> </details>



![](https://arxiv.org/html/2502.04296/x6.png)

> 🔼 This figure displays the results of experiments evaluating the scalability of the Heterogeneous Masked Autoregression (HMA) model.  Three separate experiments are shown, each exploring a different aspect of scalability:  1. **Scaling the Number of Datasets:** This shows how HMA performs as the number of different robotic datasets used for training increases.  More datasets mean more diverse robot embodiments, actions, and environments are included in the training, representing a greater degree of heterogeneity. 2. **Scaling the Number of Trajectories:** This assesses HMA's performance as the total number of training video trajectories increases.  More trajectories offer more data to train the model and potentially lead to better performance. 3. **Scaling Model Size:** This experiment examines how HMA behaves as the size and complexity of the model itself increase (number of parameters).  For each experiment, two key metrics are shown. Perplexity measures the fidelity of the generated videos (lower perplexity indicates higher fidelity), and ΔΔ PSNR (Delta PSNR) measures the controllability of the generated videos (lower ΔΔ PSNR suggests better controllability, indicating that the model's output is more consistent and less affected by random noise).  The results in the plots demonstrate that the performance of the HMA model improves with increased dataset diversity, more training data, and larger model size, thus showcasing its strong scaling properties.
> <details>
> <summary>read the caption</summary>
> Figure 6: Experiments on Scaling Behaviors of HMA. We observe positive trends in the scaling performance of heterogeneous video models across axes including the number of datasets, number of trajectories, and model sizes. The evaluation metrics on fidelity (perplexity) and controllability (ΔΔ\Deltaroman_ΔPSNR) are averaged across validation datasets.
> </details>



![](https://arxiv.org/html/2502.04296/x7.png)

> 🔼 This figure compares the visual quality of videos generated using different methods: VQ tokens (vector-quantized tokens, a discrete representation) and soft tokens (continuous representation), both within a masked autoregressive framework.  The comparison highlights that while diffusion-based models using soft tokens take longer to train (slower convergence), they produce significantly better visual results. This superior quality is evident both qualitatively (by visual inspection) and quantitatively (as measured by the Peak Signal-to-Noise Ratio, or PSNR). The improved visual fidelity from using soft tokens comes at the cost of increased training time.
> <details>
> <summary>read the caption</summary>
> Figure 7: Qualitative Comparisons Between Tokenizers and Models. Despite longer convergence time, diffusion-based methods (Eq. 3) on soft tokens generate better visual quality than on VQ tokens (Eq. 2), qualitatively and measured by PSNR.
> </details>



![](https://arxiv.org/html/2502.04296/x8.png)

> 🔼 Figure 8 showcases the model's capacity for generating physically realistic video sequences based on user-provided actions.  The top row demonstrates the model's handling of object permanence, a scenario where objects continue to exist even when not directly visible.  The bottom row depicts a block-pushing interaction, a more complex task requiring understanding of physics and object manipulation.  Importantly, both scenarios extend significantly beyond the model's training horizon (over 100 frames), and involve actions unseen during training, highlighting the model's generalization capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 8: Video Controllability. HMA can follow user action inputs to generate physically plausible object permanence (top row) and block pushing interactions (bottom row). These video predictions are both at out-of-distribution settings and at a much longer horizon than training (over 100 frames).
> </details>



![](https://arxiv.org/html/2502.04296/x9.png)

> 🔼 Figure 9 demonstrates the application of the Heterogeneous Masked Autoregression (HMA) model for policy evaluation. Unlike traditional simulators which primarily focus on successful policy executions, HMA learns from both successful and failed examples of robot actions and their corresponding video sequences.  This allows HMA to provide more realistic and comprehensive evaluations of policies, assessing their performance across a wider range of scenarios. The figure highlights that HMA's autoregressive prediction extends far beyond its training timeframe; at inference, it can predict 10 times longer sequences than those seen during training, further enhancing its utility for evaluating policy performance in complex, long-horizon robotic tasks.
> <details>
> <summary>read the caption</summary>
> Figure 9: Policy Evaluation with HMA. By learning the action-video dynamics over both successful and failed examples, HMA can be used to evaluate policies, similar to a traditional simulator [46]. The autoregressive horizon at inference time is 10 times more than the training time horizon.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T2.7">
<tr class="ltx_tr" id="S5.T2.7.7">
<td class="ltx_td ltx_border_r" id="S5.T2.7.7.8" style="padding:0.8pt 4.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.1" style="padding:0.8pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.1" style="font-size:80%;">PSNR <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.1.1.1.1.m1.1"><semantics id="S5.T2.1.1.1.1.m1.1a"><mo id="S5.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.1.1.1.1.m1.1b"><ci id="S5.T2.1.1.1.1.m1.1.1.cmml" xref="S5.T2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.2.2.2.1" style="font-size:80%;">SSIM <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.2.2.2.1.m1.1"><semantics id="S5.T2.2.2.2.1.m1.1a"><mo id="S5.T2.2.2.2.1.m1.1.1" stretchy="false" xref="S5.T2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.2.2.2.1.m1.1b"><ci id="S5.T2.2.2.2.1.m1.1.1.cmml" xref="S5.T2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.4.4.4" style="padding:0.8pt 4.0pt;">
<math alttext="\Delta" class="ltx_Math" display="inline" id="S5.T2.3.3.3.m1.1"><semantics id="S5.T2.3.3.3.m1.1a"><mi id="S5.T2.3.3.3.m1.1.1" mathsize="80%" mathvariant="normal" xref="S5.T2.3.3.3.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S5.T2.3.3.3.m1.1b"><ci id="S5.T2.3.3.3.m1.1.1.cmml" xref="S5.T2.3.3.3.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.3.3.3.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S5.T2.3.3.3.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S5.T2.4.4.4.1" style="font-size:80%;">PSNR <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.4.4.4.1.m1.1"><semantics id="S5.T2.4.4.4.1.m1.1a"><mo id="S5.T2.4.4.4.1.m1.1.1" stretchy="false" xref="S5.T2.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.4.4.4.1.m1.1b"><ci id="S5.T2.4.4.4.1.m1.1.1.cmml" xref="S5.T2.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.4.4.4.1.m1.1d">↑</annotation></semantics></math></span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.5.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.5.5.5.1" style="font-size:80%;">LPIPS <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.5.5.5.1.m1.1"><semantics id="S5.T2.5.5.5.1.m1.1a"><mo id="S5.T2.5.5.5.1.m1.1.1" stretchy="false" xref="S5.T2.5.5.5.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.5.5.5.1.m1.1b"><ci id="S5.T2.5.5.5.1.m1.1.1.cmml" xref="S5.T2.5.5.5.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.5.5.5.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.5.5.5.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.6.6" style="padding:0.8pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.6.1" style="font-size:80%;">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.6.6.6.1.m1.1"><semantics id="S5.T2.6.6.6.1.m1.1a"><mo id="S5.T2.6.6.6.1.m1.1.1" stretchy="false" xref="S5.T2.6.6.6.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.6.6.6.1.m1.1b"><ci id="S5.T2.6.6.6.1.m1.1.1.cmml" xref="S5.T2.6.6.6.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.6.6.6.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.6.6.6.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.7.7" style="padding:0.8pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.7.7.1" style="font-size:80%;">FVD <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.7.7.7.1.m1.1"><semantics id="S5.T2.7.7.7.1.m1.1a"><mo id="S5.T2.7.7.7.1.m1.1.1" stretchy="false" xref="S5.T2.7.7.7.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.7.7.7.1.m1.1b"><ci id="S5.T2.7.7.7.1.m1.1.1.cmml" xref="S5.T2.7.7.7.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.7.7.7.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.7.7.7.1.m1.1d">↓</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T2.7.8.1" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S5.T2.7.8.1.1" style="font-size:80%;">IRASim</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.8.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S5.T2.7.8.2.1" style="font-size:80%;">25.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.8.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S5.T2.7.8.3.1" style="font-size:80%;">0.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.8.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S5.T2.7.8.4.1" style="font-size:80%;">5.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.8.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S5.T2.7.8.5.1" style="font-size:80%;">0.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.8.6" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S5.T2.7.8.6.1" style="font-size:80%;">23.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.8.7" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S5.T2.7.8.7.1" style="font-size:80%;">152.20</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T2.7.9.1" style="padding:0.8pt 4.0pt;"><span class="ltx_text ltx_font_typewriter" id="S5.T2.7.9.1.1" style="font-size:80%;">HMA</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.9.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S5.T2.7.9.2.1" style="font-size:80%;">28.19</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.9.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S5.T2.7.9.3.1" style="font-size:80%;">0.83</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.9.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S5.T2.7.9.4.1" style="font-size:80%;">6.06</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.9.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S5.T2.7.9.5.1" style="font-size:80%;">0.07</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.9.6" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S5.T2.7.9.6.1" style="font-size:80%;">33.56</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.9.7" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S5.T2.7.9.7.1" style="font-size:80%;">111.52</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of the proposed Heterogeneous Masked Autoregression (HMA) model with IRASim, a state-of-the-art model for interactive robot simulation.  The comparison focuses on the Language Table benchmark [31], evaluating visual fidelity (PSNR, SSIM, LPIPS, FID, FVD), controllability (ΔPSNR), inference speed (FPS), and model size (Parameters).  It demonstrates that the HMA model achieves superior visual quality and controllability while being significantly faster and requiring fewer parameters than IRASim. The results are based on 200 held-out trajectories.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison with IRASim. In Language Table Benchmark [31], we show that a pre-trained HMA-based model (diffusion) is able to achieve better visual qualities and controllability than IRASim while maintaining faster speed and requiring less compute. The results are computed over 200 held-out trajectories.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T3.6">
<tr class="ltx_tr" id="S5.T3.5.5">
<td class="ltx_td ltx_border_r" id="S5.T3.5.5.6" style="padding:0.8pt 7.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.1" style="padding:0.8pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.1" style="font-size:80%;">PSNR <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.1.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.1.m1.1a"><mo id="S5.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.1.m1.1b"><ci id="S5.T3.1.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2" style="padding:0.8pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.2.2.1" style="font-size:80%;">Perplexity <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.2.2.2.1.m1.1"><semantics id="S5.T3.2.2.2.1.m1.1a"><mo id="S5.T3.2.2.2.1.m1.1.1" stretchy="false" xref="S5.T3.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.2.1.m1.1b"><ci id="S5.T3.2.2.2.1.m1.1.1.cmml" xref="S5.T3.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.4" style="padding:0.8pt 7.0pt;">
<math alttext="\Delta" class="ltx_Math" display="inline" id="S5.T3.3.3.3.m1.1"><semantics id="S5.T3.3.3.3.m1.1a"><mi id="S5.T3.3.3.3.m1.1.1" mathsize="80%" mathvariant="normal" xref="S5.T3.3.3.3.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S5.T3.3.3.3.m1.1b"><ci id="S5.T3.3.3.3.m1.1.1.cmml" xref="S5.T3.3.3.3.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.3.3.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.3.3.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.4.1" style="font-size:80%;"> PSNR <math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.4.4.4.1.m1.1"><semantics id="S5.T3.4.4.4.1.m1.1a"><mo id="S5.T3.4.4.4.1.m1.1.1" stretchy="false" xref="S5.T3.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.4.4.4.1.m1.1b"><ci id="S5.T3.4.4.4.1.m1.1.1.cmml" xref="S5.T3.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.4.4.4.1.m1.1d">↑</annotation></semantics></math></span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.5" style="padding:0.8pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.5.5.1" style="font-size:80%;">LPIPS <math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.5.5.5.1.m1.1"><semantics id="S5.T3.5.5.5.1.m1.1a"><mo id="S5.T3.5.5.5.1.m1.1.1" stretchy="false" xref="S5.T3.5.5.5.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.5.5.5.1.m1.1b"><ci id="S5.T3.5.5.5.1.m1.1.1.cmml" xref="S5.T3.5.5.5.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.5.5.5.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.5.5.5.1.m1.1d">↓</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T3.6.7.1" style="padding:0.8pt 7.0pt;"><span class="ltx_text ltx_font_typewriter" id="S5.T3.6.7.1.1" style="font-size:80%;">HMA</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.7.2" style="padding:0.8pt 7.0pt;"><span class="ltx_text" id="S5.T3.6.7.2.1" style="font-size:80%;">21.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.7.3" style="padding:0.8pt 7.0pt;"><span class="ltx_text" id="S5.T3.6.7.3.1" style="font-size:80%;">305.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.7.4" style="padding:0.8pt 7.0pt;"><span class="ltx_text" id="S5.T3.6.7.4.1" style="font-size:80%;">0.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.7.5" style="padding:0.8pt 7.0pt;"><span class="ltx_text" id="S5.T3.6.7.5.1" style="font-size:80%;">0.19</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.6.6.1" style="padding:0.8pt 7.0pt;">
<span class="ltx_text ltx_font_typewriter" id="S5.T3.6.6.1.1" style="font-size:80%;">HMA</span><span class="ltx_text" id="S5.T3.6.6.1.2" style="font-size:80%;"> </span><sup class="ltx_sup" id="S5.T3.6.6.1.3"><span class="ltx_text ltx_font_italic" id="S5.T3.6.6.1.3.1" style="font-size:80%;">+</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.2" style="padding:0.8pt 7.0pt;"><span class="ltx_text" id="S5.T3.6.6.2.1" style="font-size:80%;">22.04</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.3" style="padding:0.8pt 7.0pt;"><span class="ltx_text" id="S5.T3.6.6.3.1" style="font-size:80%;">189.83</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.4" style="padding:0.8pt 7.0pt;"><span class="ltx_text" id="S5.T3.6.6.4.1" style="font-size:80%;">0.06</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.5" style="padding:0.8pt 7.0pt;"><span class="ltx_text" id="S5.T3.6.6.5.1" style="font-size:80%;">0.17</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of fine-tuning the Heterogeneous Masked Autoregression (HMA) model on real-world data.  It compares the performance of two approaches: one where the model is fine-tuned using pre-trained weights (HMA+) and another where it's trained from scratch (HMA). The experiment uses a discrete loss function as the baseline for evaluation.  The metrics presented likely show improvements in visual fidelity (PSNR, Perplexity), and controllability (ΔPSNR, LPIPS) achieved by fine-tuning versus training from scratch.
> <details>
> <summary>read the caption</summary>
> Table 3: Real World Finetuning. HMA + denotes finetuned model based on pre-trained checkpoints while HMA trains from scratch on the finetuning data. This experiment uses the discrete loss baseline.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T4.7">
<tr class="ltx_tr" id="S5.T4.6.6">
<td class="ltx_td ltx_border_r" id="S5.T4.6.6.7" style="padding:0.8pt 7.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.1" style="padding:0.8pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.1" style="font-size:80%;">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.1.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.1.m1.1a"><mo id="S5.T4.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.1.m1.1b"><ci id="S5.T4.1.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2" style="padding:0.8pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.2.2.1" style="font-size:80%;">Perplexity<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.2.2.2.1.m1.1"><semantics id="S5.T4.2.2.2.1.m1.1a"><mo id="S5.T4.2.2.2.1.m1.1.1" stretchy="false" xref="S5.T4.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.1.m1.1b"><ci id="S5.T4.2.2.2.1.m1.1.1.cmml" xref="S5.T4.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.4" style="padding:0.8pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.4.4.2" style="font-size:80%;">PSNR<sup class="ltx_sup" id="S5.T4.4.4.4.2.1"><span class="ltx_text ltx_font_medium" id="S5.T4.4.4.4.2.1.1">∗</span></sup><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.4.4.4.2.m2.1"><semantics id="S5.T4.4.4.4.2.m2.1a"><mo id="S5.T4.4.4.4.2.m2.1.1" stretchy="false" xref="S5.T4.4.4.4.2.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.4.4.4.2.m2.1b"><ci id="S5.T4.4.4.4.2.m2.1.1.cmml" xref="S5.T4.4.4.4.2.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.4.4.4.2.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.4.4.4.2.m2.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.6" style="padding:0.8pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.6.6.6.2" style="font-size:80%;">Perplexity<sup class="ltx_sup" id="S5.T4.6.6.6.2.1"><span class="ltx_text ltx_font_medium" id="S5.T4.6.6.6.2.1.1">∗</span></sup><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.6.6.6.2.m2.1"><semantics id="S5.T4.6.6.6.2.m2.1a"><mo id="S5.T4.6.6.6.2.m2.1.1" stretchy="false" xref="S5.T4.6.6.6.2.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.6.6.6.2.m2.1b"><ci id="S5.T4.6.6.6.2.m2.1.1.cmml" xref="S5.T4.6.6.6.2.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.6.6.6.2.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.6.6.6.2.m2.1d">↓</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T4.7.8.1" style="padding:0.8pt 7.0pt;"><span class="ltx_text ltx_font_typewriter" id="S5.T4.7.8.1.1" style="font-size:80%;">HMA</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.8.2" style="padding:0.8pt 7.0pt;"><span class="ltx_text" id="S5.T4.7.8.2.1" style="font-size:80%;">24.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.8.3" style="padding:0.8pt 7.0pt;"><span class="ltx_text" id="S5.T4.7.8.3.1" style="font-size:80%;">20.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.8.4" style="padding:0.8pt 7.0pt;"><span class="ltx_text" id="S5.T4.7.8.4.1" style="font-size:80%;">19.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.8.5" style="padding:0.8pt 7.0pt;"><span class="ltx_text" id="S5.T4.7.8.5.1" style="font-size:80%;">1193.70</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.7.7.1" style="padding:0.8pt 7.0pt;">
<span class="ltx_text ltx_font_typewriter" id="S5.T4.7.7.1.1" style="font-size:80%;">HMA</span><span class="ltx_text" id="S5.T4.7.7.1.2" style="font-size:80%;"> </span><sup class="ltx_sup" id="S5.T4.7.7.1.3"><span class="ltx_text ltx_font_italic" id="S5.T4.7.7.1.3.1" style="font-size:80%;">+</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.7.2" style="padding:0.8pt 7.0pt;"><span class="ltx_text" id="S5.T4.7.7.2.1" style="font-size:80%;">25.11</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.7.3" style="padding:0.8pt 7.0pt;"><span class="ltx_text" id="S5.T4.7.7.3.1" style="font-size:80%;">11.82</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.7.4" style="padding:0.8pt 7.0pt;"><span class="ltx_text" id="S5.T4.7.7.4.1" style="font-size:80%;">20.20</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.7.5" style="padding:0.8pt 7.0pt;"><span class="ltx_text" id="S5.T4.7.7.5.1" style="font-size:80%;">103.01</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of two models in a simulation transfer learning scenario. The first model, referred to as 'HMA', is trained from scratch using a combination of cross-entropy and diffusion loss functions. The second model, denoted as 'HMA+', leverages pre-trained weights as a starting point before further fine-tuning with the same loss functions.  The results highlight the impact of transfer learning, showing how using pre-trained weights (HMA+) can improve performance, particularly in terms of PSNR (Peak Signal-to-Noise Ratio), a measure of image quality, and perplexity, which reflects how well the model predicts data. Lower perplexity values indicate better predictive performance.  The metrics PSNR* and Perplexity*, which reflect sensitivity to small changes in actions, also demonstrates the effect of using pre-trained weights.
> <details>
> <summary>read the caption</summary>
> Table 4: Simulation Transfer Learning. We show that pre-trained HMA can help with fine-tuning using cross-entropy losses and diffusion losses jointly. where HMA + denotes the finetuned model based on pre-trained checkpoints.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T5.2">
<tr class="ltx_tr" id="S5.T5.2.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T5.2.1.1" style="padding:0.8pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.1.1" style="font-size:80%;">Policy Evaluator</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.2" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="S5.T5.2.1.2.1" style="font-size:80%;">1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.3" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="S5.T5.2.1.3.1" style="font-size:80%;">2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.4" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="S5.T5.2.1.4.1" style="font-size:80%;">3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.5" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="S5.T5.2.1.5.1" style="font-size:80%;">4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T5.2.2.1" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="S5.T5.2.2.1.1" style="font-size:80%;">Ground Truth Simulator</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.2" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="S5.T5.2.2.2.1" style="font-size:80%;">0.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.3" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="S5.T5.2.2.3.1" style="font-size:80%;">0.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.4" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="S5.T5.2.2.4.1" style="font-size:80%;">0.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.5" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="S5.T5.2.2.5.1" style="font-size:80%;">1.00</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T5.2.3.1" style="padding:0.8pt 8.0pt;">
<span class="ltx_text ltx_font_typewriter" id="S5.T5.2.3.1.1" style="font-size:80%;">HMA</span><span class="ltx_text" id="S5.T5.2.3.1.2" style="font-size:80%;"> Simulator</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.3.2" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="S5.T5.2.3.2.1" style="font-size:80%;">0.43</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.3.3" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="S5.T5.2.3.3.1" style="font-size:80%;">0.56</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.3.4" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="S5.T5.2.3.4.1" style="font-size:80%;">0.66</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.3.5" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="S5.T5.2.3.5.1" style="font-size:80%;">0.73</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating four different robot control policies using both a ground truth simulator and a learned simulator (HMA).  The policies were trained with varying numbers of iterations, allowing for an assessment of how performance correlates across simulators.  The high Pearson correlation of 0.95 indicates a strong positive relationship between policy performance as measured by both simulators, suggesting that the learned simulator accurately reflects performance in the real world.
> <details>
> <summary>read the caption</summary>
> Table 5: Policy Evaluation Results Across 4 Different Policies. We observed positive correlations of the evaluation results for 4 different policies bewteen the ground truth and learned simulators. The Pearson ratio between evaluations is 0.95.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T6.2">
<tr class="ltx_tr" id="S5.T6.2.1">
<td class="ltx_td ltx_border_r" id="S5.T6.2.1.1" style="padding:0.8pt 4.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S5.T6.2.1.2.1" style="font-size:80%;">+0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S5.T6.2.1.3.1" style="font-size:80%;">+10</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S5.T6.2.1.4.1" style="font-size:80%;">+50</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S5.T6.2.1.5.1" style="font-size:80%;">+90</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.6" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S5.T6.2.1.6.1" style="font-size:80%;">original</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T6.2.2.1" style="padding:0.8pt 4.0pt;">
<span class="ltx_text" id="S5.T6.2.2.1.1" style="font-size:80%;">Success in </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.2.2.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.04296v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a><span class="ltx_text" id="S5.T6.2.2.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.2.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S5.T6.2.2.2.1" style="font-size:80%;">82%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.2.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S5.T6.2.2.3.1" style="font-size:80%;">90%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.2.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S5.T6.2.2.4.1" style="font-size:80%;">96%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.2.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S5.T6.2.2.5.1" style="font-size:80%;">100%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.2.6" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S5.T6.2.2.6.1" style="font-size:80%;">100%</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.2.3.1" style="padding:0.8pt 4.0pt;">
<span class="ltx_text" id="S5.T6.2.3.1.1" style="font-size:80%;">Validation Loss in </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.2.3.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.04296v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a><span class="ltx_text" id="S5.T6.2.3.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.3.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S5.T6.2.3.2.1" style="font-size:80%;">1.72</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.3.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S5.T6.2.3.3.1" style="font-size:80%;">1.16</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.3.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S5.T6.2.3.4.1" style="font-size:80%;">1.09</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.3.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S5.T6.2.3.5.1" style="font-size:80%;">0.88</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.3.6" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S5.T6.2.3.6.1" style="font-size:80%;">0.87</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table investigates the impact of synthetic data generated by the HMA model on policy learning.  It evaluates how adding varying amounts of synthetic data (from 10% to 90% ) to a small subset of real-world data (10 out of 100 real trajectories) affects policy performance.  The experiment uses two benchmarks: Robomimic (success rates are reported) and Language Table (validation losses are reported). The results show how well the HMA-generated data supplements the real data for training effective policies.
> <details>
> <summary>read the caption</summary>
> Table 6: Synthetic Data for Policy Learning. We evaluate the quality of generated synthetic data by adding different numbers of generated video trajectories in [32] and [31], from 10 to 100, to a fixed subset (10 trajectories) of the original data (100 trajectories). We then conduct policy training and evaluation and report the Robomimic success rates (top row) and Language Table validation losses (bottom row).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.04296/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04296/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04296/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04296/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04296/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04296/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04296/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04296/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04296/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04296/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04296/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}