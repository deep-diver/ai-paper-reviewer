---
title: "Continuous Speculative Decoding for Autoregressive Image Generation"
summary: "Researchers have developed Continuous Speculative Decoding, boosting autoregressive image generation speed by up to 2.33x while maintaining image quality."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 University of Chinese Academy of Sciences",]
showSummary: true
date: 2024-11-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2411.11925 {{< /keyword >}}
{{< keyword icon="writer" >}} Zili Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-11-20 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2411.11925" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2411.11925" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/continuous-speculative-decoding-for" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2411.11925/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Autoregressive image generation, while producing high-quality images, is computationally expensive. Existing speculative decoding techniques, effective for text models, hadn't been successfully applied to continuous-valued image generation models.  This limitation stems from the difficulty in handling continuous probability distributions and adapting the acceptance criteria. 

This research introduces Continuous Speculative Decoding, extending speculative decoding to the continuous space of autoregressive image generation.  This involves developing a tailored acceptance criterion for diffusion distributions, employing trajectory alignment to ensure consistent outputs, and using a novel sampling method to address resampling challenges. The results demonstrate a significant speedup (up to 2.33x) with maintained image quality.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Continuous Speculative Decoding accelerates autoregressive image generation significantly (up to 2.33x). {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method adapts speculative decoding to continuous-valued models, overcoming challenges related to probability distribution. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The approach maintains comparable image quality to standard methods, making it a practical solution. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because **it significantly accelerates autoregressive image generation**, a computationally expensive process.  Its method is broadly applicable, opening avenues for faster, more efficient AI image tools and boosting research in related areas. This speed improvement **enables real-time or near real-time image generation**, impacting various applications from virtual reality to medical imaging.

------
#### Visual Insights



![](https://arxiv.org/html/2411.11925/x2.png)

> 🔼 This figure displays a comparison of image generation speeds using different methods. Three sets of images are shown, each with a default autoregressive model and the proposed continuous speculative decoding method. The latter shows a significant speed-up (2.15x, 2.32x, and 2.26x faster) while preserving the original image quality. This demonstrates the effectiveness of the proposed approach for accelerating inference without sacrificing the quality of autoregressive image generation.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Continuous speculative decoding accelerates the inference speed while maintaining the original generation quality.
> </details>





{{< table-caption >}}
| $M_p$ | $M_q$ | $\gamma$ | $\alpha$ | Speedup ratio |  |  |  |  |
|---|---|---|---|---|---|---|---|---|
|  |  |  |  | bs=1 | bs=8 | bs=128 | bs=256 |
| MAR-L | MAR-B | 32 | 0.26 | **1.18 ×** | **1.21 ×** | **1.44 ×** | **1.49 ×** |
| MAR-L | MAR-B | 16 | 0.31 | 1.10 × | 1.17 × | 1.39 × | 1.42 × |
| MAR-L | MAR-B | 8 | 0.36 | 1.05 × | 1.12 × | 1.29 × | 1.32 × |
| MAR-L | MAR-B | 4 | 0.39 | 1.01 × | 1.00 × | 1.13 × | 1.15 × |
| MAR-H | MAR-B | 32 | 0.19 | **1.44 ×** | **1.61 ×** | **2.17 ×** | **2.33 ×** |
| MAR-H | MAR-L | 32 | 0.18 | 1.26 × | 1.34 × | 1.47 × | 1.53 × |
| MAR-H | MAR-B | 16 | 0.26 | 1.37 × | 1.51 × | 2.07 × | 2.20 × |
| MAR-H | MAR-L | 16 | 0.24 | 1.24 × | 1.29 × | 1.41 × | 1.46 × |
| MAR-H | MAR-B | 8 | 0.27 | 1.26 × | 1.44 × | 1.88 × | 1.96 × |
| MAR-H | MAR-L | 8 | 0.28 | 1.11 × | 1.21 × | 1.32 × | 1.33 × |
| MAR-H | MAR-B | 4 | 0.30 | 1.11 × | 1.20 × | 1.56 × | 1.62 × |
| MAR-H | MAR-L | 4 | 0.30 | 1.00 × | 1.03 × | 1.15 × | 1.18 × |{{< /table-caption >}}

> 🔼 This table presents the speedup achieved by the proposed continuous speculative decoding method compared to the original MAR model [21] under various experimental settings. It shows the speedup ratio for different combinations of model sizes (Mq and Mp), draft numbers (γ), and batch sizes (bs). The acceptance rate (α) is also given for each setting, indicating the proportion of draft tokens accepted by the target model.  The results demonstrate how the speedup varies across different model sizes and the balance between computation cost and accuracy.
> <details>
> <summary>read the caption</summary>
> Table 1: Results of speedup ratio on MAR [21] under different model size, draft number and batch size. The bs refers to batch size. The acceptance rate α𝛼\alphaitalic_α of each setting is also represented.
> </details>





### In-depth insights


#### Continuous Speculative Decoding
Continuous speculative decoding presents a novel approach to accelerate autoregressive image generation, addressing the computational bottleneck inherent in sequential decoding.  By extending speculative decoding from discrete token spaces to continuous domains, **this method significantly enhances inference speed**. The core idea involves a draft model generating a sequence of predictions, which are then verified by a more accurate target model.  A key innovation is the development of a tailored acceptance criterion that effectively handles the continuous probability distributions typical of diffusion-based image generation models. **Careful consideration of output distribution properties and a novel denoising trajectory alignment technique are crucial to maintaining the quality of generated images**.  Addressing the issue of low initial acceptance rates, token pre-filling methods enhance performance.  Furthermore, **the use of acceptance-rejection sampling skillfully circumvents complex integration challenges associated with resampling from the modified distribution, ensuring a computationally efficient process**.  The overall approach offers a **substantial improvement in inference speed with minimal impact on image quality**, making it a promising direction for optimizing autoregressive image generation models.

#### Denoising Trajectory Alignment
The concept of "Denoising Trajectory Alignment" in the context of continuous autoregressive image generation addresses a critical challenge: **inconsistency between the denoising trajectories of draft and target models.**  These models, used in speculative decoding for faster inference, generate images through a diffusion process.  Without alignment, their respective paths through the denoising process can diverge significantly, leading to **low acceptance rates** in the speculative decoding algorithm and hindering its effectiveness.  The solution proposes to **align the output distributions** by ensuring both models utilize the same random Gaussian noise at each step of the denoising process. This clever reparameterization forces the trajectories to converge, enhancing the consistency of probability density functions between the draft and target models. This alignment is crucial because it simplifies the calculation of the acceptance criterion for speculative decoding, directly impacting the efficiency of the speedup achieved. **This technique tackles a core limitation of applying speculative decoding to continuous models**, directly improving efficiency while largely preserving the generation quality.

#### Acceptance-Rejection Sampling
Acceptance-rejection sampling is a powerful Monte Carlo method used to generate random samples from a probability distribution.  Its core idea is straightforward: **generate samples from a simpler proposal distribution** and then **accept or reject them based on a carefully designed acceptance probability**. This probability is proportional to the ratio of the target distribution's probability density function (PDF) to that of the proposal distribution.  **The key to success lies in choosing an appropriate proposal distribution that is easy to sample from and whose PDF closely approximates or dominates the target distribution's PDF**.  This ensures a reasonable acceptance rate. If the target distribution has regions of very low probability, the algorithm might struggle to generate samples from those regions, as the acceptance probability will be low.  This process iterates until enough samples are generated.  The algorithm's efficiency depends critically on the choice of proposal distribution. A well-chosen proposal distribution leads to a high acceptance rate; otherwise, many samples might be rejected, resulting in slow performance. The technique is especially useful when direct sampling from the target distribution is computationally challenging or infeasible.  **The beauty lies in its simplicity and adaptability to various scenarios, but successful application hinges on smart proposal distribution selection.**

#### Ablation Study & Analysis
An ablation study systematically evaluates the contribution of individual components within a proposed model.  For a continuous speculative decoding model for autoregressive image generation, this would involve removing or modifying key aspects (e.g., denoising trajectory alignment, token pre-filling, acceptance-rejection sampling) and assessing the impact on performance metrics (speedup, FID, IS). **Analyzing the results reveals the relative importance and effectiveness of each component.**  For instance, if removing denoising trajectory alignment significantly reduces the acceptance rate, it demonstrates its critical role in ensuring output consistency between draft and target models. Similarly, observing the impact of varied pre-filling ratios helps understand its effect on early acceptance rates and overall inference speed. By carefully dissecting these results, the study can pinpoint crucial design choices, justifying model complexity, and highlighting the strengths and weaknesses of the proposed architecture. **It allows for optimization by identifying elements to further improve or refine.** A thorough analysis should also connect these findings with the theoretical underpinnings, clarifying if the observed behavior aligns with the model's mathematical justification.  **Ultimately, a comprehensive ablation study enhances the credibility and understanding of the model by providing evidence-based insights into its design and function.**

#### Future Work & Limitations
The research on continuous speculative decoding for autoregressive image generation presents exciting advancements, yet also reveals avenues for future exploration.  **Extending this method to even larger, more complex autoregressive models** is crucial. Current experiments focused on relatively small models, limiting the observed speedup. Scaling to models with billions of parameters could yield substantial performance gains.  Furthermore, **investigating the impact of different architectures and training methodologies** on the effectiveness of speculative decoding is warranted.  The current work primarily utilized a specific model; exploring its compatibility with other autoregressive architectures will validate its generalizability and robustness.  **Addressing the trade-off between speed and image quality** is another important direction. While the paper shows promising results in maintaining quality, optimizing the balance between speed and fidelity under various conditions requires further study.  The acceptance criterion, a key component of the algorithm, could be further refined.  Exploring alternative criteria or adaptive strategies that adjust the criterion based on the model's current state may lead to improved acceptance rates and faster inference. Finally, **a thorough analysis of the computational complexity** of the algorithm and identifying bottlenecks to enhance efficiency is needed. This includes examining the cost of the denoising trajectory alignment and token pre-filling processes.  Overall, future research should focus on scaling, generalizability, quality optimization, and computational efficiency to solidify the practical impact of this innovative technique.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2411.11925/x3.png)

> 🔼 This figure compares discrete and continuous speculative decoding methods.  Discrete methods easily calculate output probabilities and resample from adjusted distributions. However, continuous methods face the challenge of calculating probabilities in a continuous space and then sampling from modified distributions, which requires more complex calculations involving both draft and target model outputs.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Comparison between discrete- and continuous-valued speculative decoding. Discrete models can conveniently compute output probabilities and be sampled from modified distributions. In contrast, continuous models require determining how to compute probabilities, and sampling from modified distributions via draft and target output distributions is often more challenging.
> </details>



![](https://arxiv.org/html/2411.11925/x4.png)

> 🔼 This figure illustrates the continuous speculative decoding process. It uses a draft model to generate a sequence of tokens (1, 2, 3 being prefix tokens, and x being the token to verify). The target model then compares the probability densities of the draft and target models for token x. If the draft model's density is less than the target model's, the token is accepted; otherwise, it's rejected with a probability determined by the ratio of the densities. If rejected, a new token is sampled from a modified distribution using acceptance-rejection sampling, and the process continues until a token is accepted.
> <details>
> <summary>read the caption</summary>
> Figure 3:  The overview of our proposed continuous speculative decoding. Continuous speculative decoding leverages the diffusion model component of continuous AR models. Tokens 1∼3similar-to131\sim 31 ∼ 3 are prefix tokens, and token x𝑥xitalic_x is to be verified. Upon obtaining and comparing the probability density values from the draft and target model, if q⁢(x)<p⁢(x)𝑞𝑥𝑝𝑥q(x)<p(x)italic_q ( italic_x ) < italic_p ( italic_x ), x𝑥xitalic_x is accepted. Otherwise, x𝑥xitalic_x is rejected with probability 1−p⁢(x)q⁢(x)1𝑝𝑥𝑞𝑥1-\frac{p(x)}{q(x)}1 - divide start_ARG italic_p ( italic_x ) end_ARG start_ARG italic_q ( italic_x ) end_ARG, followed by sampling from the modified distribution via acceptance-rejection sampling to obtain x′superscript𝑥′x^{\prime}italic_x start_POSTSUPERSCRIPT ′ end_POSTSUPERSCRIPT.
> </details>



![](https://arxiv.org/html/2411.11925/x5.png)

> 🔼 The figure illustrates the concept of denoising trajectory alignment in the context of continuous autoregressive image generation.  The denoising process starts with a noise distribution and gradually refines it through a series of steps to generate the final data distribution. Each step in this process is represented as a point in a trajectory. The figure contrasts two scenarios: one where the trajectories generated by the draft and target models are aligned, resulting in similar output distributions; and another where the trajectories are not aligned, leading to different output distributions. This alignment is crucial for ensuring consistency between the draft and target models in speculative decoding, which improves the acceptance rate and efficiency of the method.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Illustration of denoising trajectory alignment. The denoising process maps the noise distribution to data distribution through gradual denoising. These denoising steps generate a trajectory. Aligned trajectories lead to similar output distribution, while unaligned one produces a more distinct distribution.
> </details>



![](https://arxiv.org/html/2411.11925/x6.png)

> 🔼 This figure illustrates the challenge of sampling from the modified distribution in continuous speculative decoding. The dashed lines represent the probability density functions (PDFs) of the draft and target models. The red area represents the modified distribution, obtained by taking the positive difference between the target and draft model PDFs.  The caption highlights that calculating the integral of this area is computationally complex due to the lack of an analytical solution, creating difficulty in directly sampling from this modified distribution.
> <details>
> <summary>read the caption</summary>
> Figure 5:  Illustration of the modified distribution (unnormalized), where the dashed lines represent the output distributions of the draft and target models, and the red area denotes the modified distribution. The integral of this area is hard to compute, and there is no analytical expression available, which complicates sampling.
> </details>



![](https://arxiv.org/html/2411.11925/x7.png)

> 🔼 This figure displays a set of images generated using the continuous speculative decoding method in conjunction with the MAR model.  It visually demonstrates the quality of images produced by this accelerated inference technique. The images cover a variety of subjects and styles to showcase the model's capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 6:  Qualitative Results. We show the images generated under continuous speculative decoding with MAR.
> </details>



![](https://arxiv.org/html/2411.11925/x8.png)

> 🔼 This figure displays a qualitative comparison of images generated using the continuous speculative decoding method described in the paper. It shows the impact of varying the draft length (represented by the Greek letter gamma, γ) on the quality of the generated images.  By comparing images generated with different γ values, the figure visually demonstrates how the length of the draft sequence affects the final output.  Different rows show different classes of images, and multiple columns within each row illustrate variations in the generated images with increasing draft length. This allows the reader to assess the trade-off between speed and quality achieved by using speculative decoding with varying lengths of draft sequences.
> <details>
> <summary>read the caption</summary>
> Figure 7:  Qualitative Comparison Results. We show the generated images using the algorithm at various draft length γ𝛾\gammaitalic_γ.
> </details>



![](https://arxiv.org/html/2411.11925/x9.png)

> 🔼 This figure shows the relationship between the number of draft tokens used in speculative decoding and the acceptance rate.  As the number of drafts increases, the acceptance rate decreases. This is because using more drafts increases the chance of generating tokens that differ significantly from the target model's predictions, which leads to more rejections during the verification step.
> <details>
> <summary>read the caption</summary>
> Figure 8:  Acceptance ratio under different number of drafts. Larger number of drafts leads to the decay of acceptance ratio.
> </details>



![](https://arxiv.org/html/2411.11925/x10.png)

> 🔼 This figure compares image generation results using only a draft model (left) versus results after verification by a target model (right). The regions where the draft model's tokens were rejected and replaced by the target model are highlighted.
> <details>
> <summary>read the caption</summary>
> Figure 9:  Comparison on pure draft (left) and verified (right) generation results. Regions of rejected tokens are roughly marked out.
> </details>



![](https://arxiv.org/html/2411.11925/x11.png)

> 🔼 This figure demonstrates the impact of denoising trajectory alignment on image generation quality. The top row shows images generated without alignment, exhibiting noticeable artifacts and deformations.  The bottom row presents images generated with the proposed denoising trajectory alignment technique. A comparison reveals that the aligned images display a significant reduction in artifacts and improved overall visual quality, highlighting the effectiveness of the alignment method in enhancing the consistency of the output distributions from the draft and target models.
> <details>
> <summary>read the caption</summary>
> Figure 10:  The examples without (upper) and with (lower) denoising trajectory alignment. After alignment, the generated images exhibit a reduction in deformations and artifacts, thereby achieving higher quality.
> </details>



![](https://arxiv.org/html/2411.11925/x12.png)

> 🔼 This figure visualizes the acceptance rate (α) at each step of the autoregressive generation process using continuous speculative decoding.  The x-axis represents the step number within the generation sequence. The y-axis represents the acceptance rate, which is the probability that a token generated by the draft model will be accepted by the target model.  Multiple lines are shown, each corresponding to a different pre-filling ratio (0%, 5%, 15%). Pre-filling refers to the process of using tokens from the target model to prime the initial stages of the draft model's generation. The acceptance rate is averaged over 1000 samples for each data point to ensure statistical significance.  The graph shows how the acceptance rate changes over the course of generation for various levels of pre-filling, demonstrating the impact of pre-filling on the overall efficiency of the continuous speculative decoding method.
> <details>
> <summary>read the caption</summary>
> Figure 11:  Per-step acceptance α𝛼\alphaitalic_α under different pre-filling ratios. Acceptance rate per step is averaged on 1000 samples.
> </details>



![](https://arxiv.org/html/2411.11925/x13.png)

> 🔼 This figure displays a comparison of image generation quality using different percentages of pre-filled tokens.  Pre-filling involves using tokens from the target model at the start of generation before the draft model begins. The images show how different levels of pre-filling (0%, 5%, and 15%) impact the final generated image's quality, demonstrating the effect of this technique on the overall visual fidelity and detail of the output.
> <details>
> <summary>read the caption</summary>
> Figure 12:  Comparing image generation quality under different token pre-filling portions.
> </details>



![](https://arxiv.org/html/2411.11925/x14.png)

> 🔼 This figure shows how classifier-free guidance (CFG) scale affects the acceptance rate in continuous speculative decoding.  The experiment varies both the CFG scale and the number of draft tokens used in the process.  The results illustrate a general trend: as the CFG scale increases, the acceptance rate decreases, regardless of the number of drafts. This suggests that stronger class guidance might introduce more inconsistencies between the draft and target models, leading to lower acceptance rates.
> <details>
> <summary>read the caption</summary>
> Figure 13:  CFG scale has has a significant impact on the acceptance rate under different number of drafts.
> </details>



![](https://arxiv.org/html/2411.11925/x15.png)

> 🔼 This figure shows how temperature, a hyperparameter in the diffusion process of the MAR model, affects the acceptance rate during the token generation process. The left side shows the results without classifier-free guidance (CFG), and the right side shows the results with CFG.  The number of drafts used was 8.  The graphs illustrate the relationship between temperature and acceptance rate, revealing how different temperatures influence the probability distribution of the final output and consequently, the likelihood of a token being accepted during speculative decoding.
> <details>
> <summary>read the caption</summary>
> Figure 14:  Temperature influence on the acceptance rate. Left: without CFG. Right: with CFG.
> </details>



![](https://arxiv.org/html/2411.11925/extracted/6006952/figures/more_accept.png)

> 🔼 This figure shows the number of times the rejection step is repeated during the acceptance-rejection sampling in the rejection phase of the algorithm. The x-axis represents the number of draft tokens used, while the y-axis represents the number of times the rejection step is executed.  The plot shows the relationship between the number of draft tokens and the number of rejections in the algorithm, illustrating how the efficiency of the sampling process changes as the number of draft tokens increases.
> <details>
> <summary>read the caption</summary>
> Figure 15:  Empirical rejection times in acceptance-rejection sampling algorithm of the rejection phase.
> </details>



![](https://arxiv.org/html/2411.11925/x16.png)

> 🔼 This figure visualizes the acceptance and rejection of tokens during the continuous speculative decoding process.  The heatmap shows which tokens were accepted (dark green) and rejected (light green) by the target model during inference. This provides a visual representation of the model's decision-making process in the speculative decoding framework, highlighting which parts of the image were more easily or difficultly generated.
> <details>
> <summary>read the caption</summary>
> Figure 16:  Visualizations of accepted token heatmap. Dark green: accepted. Light green: rejected.
> </details>



![](https://arxiv.org/html/2411.11925/extracted/6006952/figures/fox.png)

> 🔼 This figure compares image generation quality using the proposed continuous speculative decoding method with varying draft lengths (γ) against the baseline method of using only the target model.  Each row shows a category of images generated with different γ values.  The leftmost column represents the target model (vanilla) output, providing a reference for comparison. Subsequent columns illustrate the results using the continuous speculative decoding method with increasing values of γ, demonstrating the progression in image quality as more draft tokens are considered.
> <details>
> <summary>read the caption</summary>
> Figure 17:  Visual quality with increasing draft length γ𝛾\gammaitalic_γ compared with vanilla target model only generation. Best viewed zoom-in.
> </details>



![](https://arxiv.org/html/2411.11925/extracted/6006952/figures/balloon.png)

> 🔼 This figure visualizes sample images generated by the Continuous Speculative Decoding method with a draft length (γ) of 4.  The generated images are all classified as arctic foxes (class label 297 from the ImageNet dataset). The figure showcases the visual quality of images produced using this method with a short draft sequence, offering insight into the model's performance at different draft lengths and its ability to generate coherent and relevant images.
> <details>
> <summary>read the caption</summary>
> Figure 18:  Visualization examples under γ=4𝛾4\gamma=4italic_γ = 4. Class label: arctic fox (297).
> </details>



![](https://arxiv.org/html/2411.11925/extracted/6006952/figures/ice_cream.png)

> 🔼 This figure visualizes the results of image generation using the proposed continuous speculative decoding method.  Specifically, it shows a grid of images generated with a draft length (γ) of 8, all belonging to the 'balloon' class (class ID 417 from the ImageNet dataset). Each image represents a sample generated by the model, demonstrating the variety and quality of images produced under these settings. The purpose is to show the visual results of the continuous speculative decoding approach for image generation and to demonstrate that the generated images maintain quality despite the speedup gained from speculative decoding.
> <details>
> <summary>read the caption</summary>
> Figure 19:  Visualization examples under γ=8𝛾8\gamma=8italic_γ = 8. Class label: balloon (417).
> </details>



![](https://arxiv.org/html/2411.11925/extracted/6006952/figures/volcano.png)

> 🔼 This figure displays a set of images generated by the model, showcasing the variety and quality of ice cream images produced.  Each image is a different rendition of ice cream, demonstrating the model's capacity to generate diverse examples within a given class label. The images illustrate various types, presentations, and toppings of ice cream, highlighting the detailed and realistic generation capabilities of the model. The images were generated using a specific parameter setting (draft length (γ)=16), indicating that this parameter might affect the quality or diversity of the generated images.
> <details>
> <summary>read the caption</summary>
> Figure 20:  Visualization examples under γ=16𝛾16\gamma=16italic_γ = 16. Class label: ice cream (928).
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| $M_p$ | $M_q$ | w/o CFG |  | w/ CFG |  | 
|---|---|---|---|---|---| 
|  |  | FID ↓ | IS ↑ | FID ↓ | IS ↑ | 
| MAR-L | MAR-L | 2.60 | 221.4 | 1.78 | 296.0 | 
| MAR-L | MAR-B | 2.59 ± 0.04 | 218.4 ± 3.4 | 1.81 ± 0.05 | 303.7 ± 4.3 | 
| MAR-H | MAR-L | 2.35 | 227.8 | 1.55 | 303.7 | 
| MAR-H | MAR-B | 2.36 ± 0.05 | 228.5 ± 2.2 | 1.60 ± 0.05 | 301.6 ± 2.6 | 
| MAR-H | MAR-L | 2.34 ± 0.04 | 228.9 ± 2.8 | 1.57 ± 0.04 | 301.4 ± 2.5 |{{< /table-caption >}}
> 🔼 This table presents a comparison of Fréchet Inception Distance (FID) and Inception Score (IS) metrics for image generation on the ImageNet 256x256 dataset.  It compares the performance of the original autoregressive model (MAR) with the proposed continuous speculative decoding method. The comparison is done for both unconditional and conditional image generation, demonstrating the impact of speculative decoding on both generation quality and speed. The results show that continuous speculative decoding achieves significant speedup without significantly sacrificing generation quality, remaining within a reasonable performance range of the baseline MAR model.
> <details>
> <summary>read the caption</summary>
> Table 2: Evaluation of FID and IS comparison on ImageNet 256×256256256256\times 256256 × 256 unconditional and conditional generation. Continuous speculative decoding achieves acceleration while maintaining performance within a reasonable interval.
> </details>

{{< table-caption >}}
| $M_p$ | $M_q$ | $\gamma$ | $\alpha$ (w/o align) | $\alpha$ (w/ align) |
|---|---|---|---|---|
| MAR-L | MAR-B | 32 | 0.10 | **0.34** |
| MAR-L | MAR-B | 16 | 0.12 | **0.37** |
| MAR-L | MAR-B | 8 | 0.12 | **0.39** |
| MAR-L | MAR-B | 4 | 0.13 | **0.37** |
| MAR-H | MAR-B | 32 | 0.07 | **0.30** |
| MAR-H | MAR-L | 32 | 0.06 | **0.33** |
| MAR-H | MAR-B | 16 | 0.07 | **0.33** |
| MAR-H | MAR-L | 16 | 0.08 | **0.35** |
| MAR-H | MAR-B | 8 | 0.13 | **0.31** |
| MAR-H | MAR-L | 8 | 0.12 | **0.34** |
| MAR-H | MAR-B | 4 | 0.14 | **0.32** |
| MAR-H | MAR-L | 4 | 0.12 | **0.34** |{{< /table-caption >}}
> 🔼 This table presents an ablation study analyzing the effect of denoising trajectory alignment on the acceptance rate in continuous speculative decoding. It compares the acceptance rates achieved with and without trajectory alignment across various model configurations, differing in draft and target model sizes and the number of draft tokens.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study on the impact of acceptance rate with and without denoising trajectory alignment.
> </details>

{{< table-caption >}}
| $M_p$ | $M_q$ | $\gamma$ | $\alpha$/Speed |  |  |
|---|---|---|---|---|---| 
|  |  |  | $\alpha$/Speed | 0% | 5% | 15% |
| 0% | 5% | 15% |  MAR-L | MAR-B | 32 |
| MAR-L | MAR-B | 32 | 0.27/1.24 × | 0.34/1.22 × | **0.37**/1.21 × |
| MAR-L | MAR-B | 16 | 0.35/1.19 × | 0.37/1.19 × | **0.38**/1.17 × |
| MAR-L | MAR-B | 8 | 0.35/1.14 × | **0.39**/1.13 × | **0.39**/1.12 × |
| MAR-L | MAR-B | 4 | 0.32/1.04 × | 0.37/1.02 × | **0.39**/1.00 × |
| MAR-H | MAR-B | 32 | 0.25/1.63 × | 0.30/1.63 × | **0.33**/1.61 × |
| MAR-H | MAR-L | 32 | 0.24/1.36 × | **0.33**/1.35 × | 0.32/1.34 × |
| MAR-H | MAR-B | 16 | 0.32/1.53 × | 0.33/1.52 × | **0.34**/1.51 × |
| MAR-H | MAR-L | 16 | 0.34/1.32 × | **0.35**/1.29 × | **0.35**/1.29 × |
| MAR-H | MAR-B | 8 | 0.33/1.47 × | 0.31/1.47 × | **0.34**/1.44 × |
| MAR-H | MAR-L | 8 | 0.34/1.21 × | 0.34/1.21 × | **0.35**/1.21 × |
| MAR-H | MAR-B | 4 | 0.31/1.21 × | 0.32/1.21 × | **0.34**/1.20 × |
| MAR-H | MAR-L | 4 | 0.31/1.05 × | **0.34**/1.03 × | **0.34**/1.03 × |{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of the pre-filling ratio on the performance of continuous speculative decoding.  The study varies the percentage of tokens pre-filled from the target model (0%, 5%, and 15%) while keeping other experimental settings consistent with Table 1.  The results show the speedup achieved compared to the baseline and the acceptance rate (α).  The highest speedup for each setting is underlined and the highest acceptance rate is shown in bold. This allows for a direct comparison of speed and accuracy across different pre-filling strategies.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study on pre-filling ratio. The experimental configuration remains the same as Table 1. Underline indicates the highest speedup. Bold means the highest α𝛼\alphaitalic_α.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2411.11925/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11925/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11925/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11925/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11925/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11925/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11925/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11925/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11925/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11925/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11925/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11925/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11925/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11925/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11925/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11925/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11925/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11925/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}